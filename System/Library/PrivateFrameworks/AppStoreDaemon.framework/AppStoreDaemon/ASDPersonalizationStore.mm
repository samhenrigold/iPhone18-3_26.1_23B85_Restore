@interface ASDPersonalizationStore
+ (id)interface;
+ (id)sharedInstance;
- (ASDPersonalizationStore)init;
- (void)flushMetricsWithCompletionBlock:(id)block;
- (void)getAppEventsWithCompletionBlock:(id)block;
- (void)getClusterMappingsWithCompletionBlock:(id)block;
- (void)getGroupingToken:(id)token;
- (void)getTasteProfileToken:(id)token;
- (void)recordLaunchesWithCompletionBlock:(id)block;
- (void)recordMetricsWithCompletionBlock:(id)block;
- (void)reloadClusterMappingsWithCompletionBlock:(id)block;
- (void)reportAppEvent:(id)event completionBlock:(id)block;
- (void)resetActorIDWithCompletionBlock:(id)block;
- (void)resetMetricsWithCompletionBlock:(id)block;
- (void)sendMetricsWithCompletionBlock:(id)block;
- (void)setClusterMapping:(id)mapping completionBlock:(id)block;
- (void)setClusterMappings:(id)mappings completionBlock:(id)block;
- (void)tasteProfileFeatureEnabled:(id)enabled;
@end

@implementation ASDPersonalizationStore

+ (id)interface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F304A718];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_getClusterMappingsWithCompletionBlock_ argumentIndex:0 ofReply:1];

  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [v2 setClasses:v8 forSelector:sel_getAppEventsWithCompletionBlock_ argumentIndex:0 ofReply:1];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  [v2 setClasses:v11 forSelector:sel_setClusterMappings_completionBlock_ argumentIndex:0 ofReply:0];

  return v2;
}

- (ASDPersonalizationStore)init
{
  v3 = +[ASDServiceBroker defaultBroker];
  v4 = v3;
  if (self)
  {
    v7.receiver = self;
    v7.super_class = ASDPersonalizationStore;
    v5 = [(ASDPersonalizationStore *)&v7 init];
    self = v5;
    if (v5)
    {
      objc_storeStrong(&v5->_serviceBroker, v3);
    }
  }

  return self;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__ASDPersonalizationStore_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED90D640 != -1)
  {
    dispatch_once(&qword_1ED90D640, block);
  }

  v2 = _MergedGlobals_52;

  return v2;
}

uint64_t __41__ASDPersonalizationStore_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = _MergedGlobals_52;
  _MergedGlobals_52 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (void)flushMetricsWithCompletionBlock:(id)block
{
  v13 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = objc_opt_class();
    v6 = v12;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] flushMetricsWithCompletionBlock", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__ASDPersonalizationStore_flushMetricsWithCompletionBlock___block_invoke;
  v9[3] = &unk_1E7CDD6D0;
  v10 = blockCopy;
  v8 = blockCopy;
  [(ASDServiceBroker *)serviceBroker getPersonalizationServiceWithCompletionHandler:v9];
}

void __59__ASDPersonalizationStore_flushMetricsWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__ASDPersonalizationStore_flushMetricsWithCompletionBlock___block_invoke_2;
    v8[3] = &unk_1E7CDB730;
    v9 = *(a1 + 32);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v8];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __59__ASDPersonalizationStore_flushMetricsWithCompletionBlock___block_invoke_3;
    v6[3] = &unk_1E7CDB758;
    v7 = *(a1 + 32);
    [v4 flushMetricsWithCompletionBlock:v6];
  }

  else
  {
    v5 = *(*(a1 + 32) + 16);

    v5();
  }
}

- (void)getClusterMappingsWithCompletionBlock:(id)block
{
  v13 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = objc_opt_class();
    v6 = v12;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: getClusterMappingsWithCompletionBlock", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__ASDPersonalizationStore_getClusterMappingsWithCompletionBlock___block_invoke;
  v9[3] = &unk_1E7CDD6D0;
  v10 = blockCopy;
  v8 = blockCopy;
  [(ASDServiceBroker *)serviceBroker getPersonalizationServiceWithCompletionHandler:v9];
}

void __65__ASDPersonalizationStore_getClusterMappingsWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __65__ASDPersonalizationStore_getClusterMappingsWithCompletionBlock___block_invoke_2;
    v8[3] = &unk_1E7CDB730;
    v9 = *(a1 + 32);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v8];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __65__ASDPersonalizationStore_getClusterMappingsWithCompletionBlock___block_invoke_3;
    v6[3] = &unk_1E7CDB7A8;
    v7 = *(a1 + 32);
    [v4 getClusterMappingsWithCompletionBlock:v6];
  }

  else
  {
    v5 = *(*(a1 + 32) + 16);

    v5();
  }
}

- (void)getTasteProfileToken:(id)token
{
  v13 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = objc_opt_class();
    v6 = v12;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: getTasteProfileToken", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__ASDPersonalizationStore_getTasteProfileToken___block_invoke;
  v9[3] = &unk_1E7CDD6D0;
  v10 = tokenCopy;
  v8 = tokenCopy;
  [(ASDServiceBroker *)serviceBroker getPersonalizationServiceWithCompletionHandler:v9];
}

void __48__ASDPersonalizationStore_getTasteProfileToken___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __48__ASDPersonalizationStore_getTasteProfileToken___block_invoke_2;
    v8[3] = &unk_1E7CDB730;
    v9 = *(a1 + 32);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v8];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __48__ASDPersonalizationStore_getTasteProfileToken___block_invoke_3;
    v6[3] = &unk_1E7CDD6F8;
    v7 = *(a1 + 32);
    [v4 getGroupingToken:v6];
  }

  else
  {
    v5 = *(*(a1 + 32) + 16);

    v5();
  }
}

- (void)getGroupingToken:(id)token
{
  v13 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = objc_opt_class();
    v6 = v12;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: getGroupingToken", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__ASDPersonalizationStore_getGroupingToken___block_invoke;
  v9[3] = &unk_1E7CDD6D0;
  v10 = tokenCopy;
  v8 = tokenCopy;
  [(ASDServiceBroker *)serviceBroker getPersonalizationServiceWithCompletionHandler:v9];
}

void __44__ASDPersonalizationStore_getGroupingToken___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __44__ASDPersonalizationStore_getGroupingToken___block_invoke_2;
    v8[3] = &unk_1E7CDB730;
    v9 = *(a1 + 32);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v8];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __44__ASDPersonalizationStore_getGroupingToken___block_invoke_3;
    v6[3] = &unk_1E7CDD6F8;
    v7 = *(a1 + 32);
    [v4 getGroupingToken:v6];
  }

  else
  {
    v5 = *(*(a1 + 32) + 16);

    v5();
  }
}

- (void)getAppEventsWithCompletionBlock:(id)block
{
  v13 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = objc_opt_class();
    v6 = v12;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] getPersonalizationEventsWithCompletionBlock", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__ASDPersonalizationStore_getAppEventsWithCompletionBlock___block_invoke;
  v9[3] = &unk_1E7CDD6D0;
  v10 = blockCopy;
  v8 = blockCopy;
  [(ASDServiceBroker *)serviceBroker getPersonalizationServiceWithCompletionHandler:v9];
}

void __59__ASDPersonalizationStore_getAppEventsWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__ASDPersonalizationStore_getAppEventsWithCompletionBlock___block_invoke_2;
    v8[3] = &unk_1E7CDB730;
    v9 = *(a1 + 32);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v8];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __59__ASDPersonalizationStore_getAppEventsWithCompletionBlock___block_invoke_3;
    v6[3] = &unk_1E7CDB7A8;
    v7 = *(a1 + 32);
    [v4 getAppEventsWithCompletionBlock:v6];
  }

  else
  {
    v5 = *(*(a1 + 32) + 16);

    v5();
  }
}

- (void)recordLaunchesWithCompletionBlock:(id)block
{
  v13 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = objc_opt_class();
    v6 = v12;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] recordLaunchesCompletionBlock", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__ASDPersonalizationStore_recordLaunchesWithCompletionBlock___block_invoke;
  v9[3] = &unk_1E7CDD6D0;
  v10 = blockCopy;
  v8 = blockCopy;
  [(ASDServiceBroker *)serviceBroker getPersonalizationServiceWithCompletionHandler:v9];
}

void __61__ASDPersonalizationStore_recordLaunchesWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __61__ASDPersonalizationStore_recordLaunchesWithCompletionBlock___block_invoke_2;
    v8[3] = &unk_1E7CDB730;
    v9 = *(a1 + 32);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v8];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __61__ASDPersonalizationStore_recordLaunchesWithCompletionBlock___block_invoke_3;
    v6[3] = &unk_1E7CDB758;
    v7 = *(a1 + 32);
    [v4 recordLaunchesWithCompletionBlock:v6];
  }

  else
  {
    v5 = *(*(a1 + 32) + 16);

    v5();
  }
}

- (void)recordMetricsWithCompletionBlock:(id)block
{
  v13 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = objc_opt_class();
    v6 = v12;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] recordMetricsWithCompletionBlock", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__ASDPersonalizationStore_recordMetricsWithCompletionBlock___block_invoke;
  v9[3] = &unk_1E7CDD6D0;
  v10 = blockCopy;
  v8 = blockCopy;
  [(ASDServiceBroker *)serviceBroker getPersonalizationServiceWithCompletionHandler:v9];
}

void __60__ASDPersonalizationStore_recordMetricsWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __60__ASDPersonalizationStore_recordMetricsWithCompletionBlock___block_invoke_2;
    v8[3] = &unk_1E7CDB730;
    v9 = *(a1 + 32);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v8];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __60__ASDPersonalizationStore_recordMetricsWithCompletionBlock___block_invoke_3;
    v6[3] = &unk_1E7CDB758;
    v7 = *(a1 + 32);
    [v4 recordMetricsWithCompletionBlock:v6];
  }

  else
  {
    v5 = *(*(a1 + 32) + 16);

    v5();
  }
}

- (void)reportAppEvent:(id)event completionBlock:(id)block
{
  v18 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  blockCopy = block;
  v8 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = objc_opt_class();
    v9 = v17;
    _os_log_impl(&dword_1B8220000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: reportAppEvent", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__ASDPersonalizationStore_reportAppEvent_completionBlock___block_invoke;
  v13[3] = &unk_1E7CDD720;
  v14 = eventCopy;
  v15 = blockCopy;
  v11 = eventCopy;
  v12 = blockCopy;
  [(ASDServiceBroker *)serviceBroker getPersonalizationServiceWithCompletionHandler:v13];
}

void __58__ASDPersonalizationStore_reportAppEvent_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__ASDPersonalizationStore_reportAppEvent_completionBlock___block_invoke_2;
    v9[3] = &unk_1E7CDB730;
    v10 = *(a1 + 40);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __58__ASDPersonalizationStore_reportAppEvent_completionBlock___block_invoke_3;
    v7[3] = &unk_1E7CDB758;
    v5 = *(a1 + 32);
    v8 = *(a1 + 40);
    [v4 reportAppEvent:v5 completionBlock:v7];
  }

  else
  {
    v6 = *(*(a1 + 40) + 16);

    v6();
  }
}

- (void)resetActorIDWithCompletionBlock:(id)block
{
  v13 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = objc_opt_class();
    v6 = v12;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] resetMetricsWithCompletionBlock", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__ASDPersonalizationStore_resetActorIDWithCompletionBlock___block_invoke;
  v9[3] = &unk_1E7CDD6D0;
  v10 = blockCopy;
  v8 = blockCopy;
  [(ASDServiceBroker *)serviceBroker getPersonalizationServiceWithCompletionHandler:v9];
}

void __59__ASDPersonalizationStore_resetActorIDWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__ASDPersonalizationStore_resetActorIDWithCompletionBlock___block_invoke_2;
    v8[3] = &unk_1E7CDB730;
    v9 = *(a1 + 32);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v8];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __59__ASDPersonalizationStore_resetActorIDWithCompletionBlock___block_invoke_3;
    v6[3] = &unk_1E7CDB758;
    v7 = *(a1 + 32);
    [v4 resetActorIDWithCompletionBlock:v6];
  }

  else
  {
    v5 = *(*(a1 + 32) + 16);

    v5();
  }
}

- (void)reloadClusterMappingsWithCompletionBlock:(id)block
{
  v13 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = objc_opt_class();
    v6 = v12;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: resetMetricsWithCompletionBlock", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__ASDPersonalizationStore_reloadClusterMappingsWithCompletionBlock___block_invoke;
  v9[3] = &unk_1E7CDD6D0;
  v10 = blockCopy;
  v8 = blockCopy;
  [(ASDServiceBroker *)serviceBroker getPersonalizationServiceWithCompletionHandler:v9];
}

void __68__ASDPersonalizationStore_reloadClusterMappingsWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __68__ASDPersonalizationStore_reloadClusterMappingsWithCompletionBlock___block_invoke_2;
    v8[3] = &unk_1E7CDB730;
    v9 = *(a1 + 32);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v8];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __68__ASDPersonalizationStore_reloadClusterMappingsWithCompletionBlock___block_invoke_3;
    v6[3] = &unk_1E7CDB758;
    v7 = *(a1 + 32);
    [v4 reloadClusterMappingsWithCompletionBlock:v6];
  }

  else
  {
    v5 = *(*(a1 + 32) + 16);

    v5();
  }
}

- (void)resetMetricsWithCompletionBlock:(id)block
{
  v13 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = objc_opt_class();
    v6 = v12;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] resetMetricsWithCompletionBlock", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__ASDPersonalizationStore_resetMetricsWithCompletionBlock___block_invoke;
  v9[3] = &unk_1E7CDD6D0;
  v10 = blockCopy;
  v8 = blockCopy;
  [(ASDServiceBroker *)serviceBroker getPersonalizationServiceWithCompletionHandler:v9];
}

void __59__ASDPersonalizationStore_resetMetricsWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__ASDPersonalizationStore_resetMetricsWithCompletionBlock___block_invoke_2;
    v8[3] = &unk_1E7CDB730;
    v9 = *(a1 + 32);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v8];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __59__ASDPersonalizationStore_resetMetricsWithCompletionBlock___block_invoke_3;
    v6[3] = &unk_1E7CDB758;
    v7 = *(a1 + 32);
    [v4 resetMetricsWithCompletionBlock:v6];
  }

  else
  {
    v5 = *(*(a1 + 32) + 16);

    v5();
  }
}

- (void)sendMetricsWithCompletionBlock:(id)block
{
  v13 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = objc_opt_class();
    v6 = v12;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] sendMetricsWithCompletionBlock", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__ASDPersonalizationStore_sendMetricsWithCompletionBlock___block_invoke;
  v9[3] = &unk_1E7CDD6D0;
  v10 = blockCopy;
  v8 = blockCopy;
  [(ASDServiceBroker *)serviceBroker getPersonalizationServiceWithCompletionHandler:v9];
}

void __58__ASDPersonalizationStore_sendMetricsWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__ASDPersonalizationStore_sendMetricsWithCompletionBlock___block_invoke_2;
    v8[3] = &unk_1E7CDB730;
    v9 = *(a1 + 32);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v8];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __58__ASDPersonalizationStore_sendMetricsWithCompletionBlock___block_invoke_3;
    v6[3] = &unk_1E7CDB758;
    v7 = *(a1 + 32);
    [v4 sendMetricsWithCompletionBlock:v6];
  }

  else
  {
    v5 = *(*(a1 + 32) + 16);

    v5();
  }
}

- (void)setClusterMapping:(id)mapping completionBlock:(id)block
{
  v18 = *MEMORY[0x1E69E9840];
  mappingCopy = mapping;
  blockCopy = block;
  v8 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = objc_opt_class();
    v9 = v17;
    _os_log_impl(&dword_1B8220000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: setClusterMapping", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__ASDPersonalizationStore_setClusterMapping_completionBlock___block_invoke;
  v13[3] = &unk_1E7CDD720;
  v14 = mappingCopy;
  v15 = blockCopy;
  v11 = mappingCopy;
  v12 = blockCopy;
  [(ASDServiceBroker *)serviceBroker getPersonalizationServiceWithCompletionHandler:v13];
}

void __61__ASDPersonalizationStore_setClusterMapping_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __61__ASDPersonalizationStore_setClusterMapping_completionBlock___block_invoke_2;
    v9[3] = &unk_1E7CDB730;
    v10 = *(a1 + 40);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61__ASDPersonalizationStore_setClusterMapping_completionBlock___block_invoke_3;
    v7[3] = &unk_1E7CDB758;
    v5 = *(a1 + 32);
    v8 = *(a1 + 40);
    [v4 setClusterMapping:v5 completionBlock:v7];
  }

  else
  {
    v6 = *(*(a1 + 40) + 16);

    v6();
  }
}

- (void)setClusterMappings:(id)mappings completionBlock:(id)block
{
  v18 = *MEMORY[0x1E69E9840];
  mappingsCopy = mappings;
  blockCopy = block;
  v8 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = objc_opt_class();
    v9 = v17;
    _os_log_impl(&dword_1B8220000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: setClusterMappings", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__ASDPersonalizationStore_setClusterMappings_completionBlock___block_invoke;
  v13[3] = &unk_1E7CDD720;
  v14 = mappingsCopy;
  v15 = blockCopy;
  v11 = mappingsCopy;
  v12 = blockCopy;
  [(ASDServiceBroker *)serviceBroker getPersonalizationServiceWithCompletionHandler:v13];
}

void __62__ASDPersonalizationStore_setClusterMappings_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __62__ASDPersonalizationStore_setClusterMappings_completionBlock___block_invoke_2;
    v9[3] = &unk_1E7CDB730;
    v10 = *(a1 + 40);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __62__ASDPersonalizationStore_setClusterMappings_completionBlock___block_invoke_3;
    v7[3] = &unk_1E7CDB758;
    v5 = *(a1 + 32);
    v8 = *(a1 + 40);
    [v4 setClusterMappings:v5 completionBlock:v7];
  }

  else
  {
    v6 = *(*(a1 + 40) + 16);

    v6();
  }
}

- (void)tasteProfileFeatureEnabled:(id)enabled
{
  v13 = *MEMORY[0x1E69E9840];
  enabledCopy = enabled;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = objc_opt_class();
    v6 = v12;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Taste profile enabled", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__ASDPersonalizationStore_tasteProfileFeatureEnabled___block_invoke;
  v9[3] = &unk_1E7CDD6D0;
  v10 = enabledCopy;
  v8 = enabledCopy;
  [(ASDServiceBroker *)serviceBroker getPersonalizationServiceWithCompletionHandler:v9];
}

void __54__ASDPersonalizationStore_tasteProfileFeatureEnabled___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__ASDPersonalizationStore_tasteProfileFeatureEnabled___block_invoke_2;
    v8[3] = &unk_1E7CDB730;
    v9 = *(a1 + 32);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v8];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __54__ASDPersonalizationStore_tasteProfileFeatureEnabled___block_invoke_3;
    v6[3] = &unk_1E7CDB758;
    v7 = *(a1 + 32);
    [v4 tasteProfileFeatureEnabledWithCompletionBlock:v6];
  }

  else
  {
    v5 = *(*(a1 + 32) + 16);

    v5();
  }
}

@end