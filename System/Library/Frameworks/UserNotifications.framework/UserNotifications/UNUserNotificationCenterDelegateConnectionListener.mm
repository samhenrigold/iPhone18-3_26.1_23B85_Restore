@interface UNUserNotificationCenterDelegateConnectionListener
+ (id)sharedInstance;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (UNUserNotificationCenterDelegateConnectionListener)init;
- (void)_queue_didChangeSettings:(id)settings forBundleIdentifier:(id)identifier;
- (void)_queue_didOpenApplicationForResponse:(id)response forBundleIdentifier:(id)identifier;
- (void)_queue_didReceiveNotificationResponse:(id)response forBundleIdentifier:(id)identifier withCompletionHandler:(id)handler;
- (void)_queue_ensureListenerForBundleIdentifier:(id)identifier;
- (void)_queue_invalidateListenerForBundleIdentifier:(id)identifier;
- (void)_queue_setDelegate:(id)delegate forBundleIdentifier:(id)identifier;
- (void)didChangeSettings:(id)settings forBundleIdentifier:(id)identifier;
- (void)didOpenApplicationForResponse:(id)response forBundleIdentifier:(id)identifier;
- (void)didReceiveNotificationResponse:(id)response forBundleIdentifier:(id)identifier withCompletionHandler:(id)handler;
- (void)setDelegate:(id)delegate forBundleIdentifier:(id)identifier;
@end

@implementation UNUserNotificationCenterDelegateConnectionListener

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[UNUserNotificationCenterDelegateConnectionListener sharedInstance];
  }

  v3 = sharedInstance___sharedInstance;

  return v3;
}

uint64_t __68__UNUserNotificationCenterDelegateConnectionListener_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstance = objc_alloc_init(UNUserNotificationCenterDelegateConnectionListener);

  return MEMORY[0x1EEE66BB8]();
}

- (UNUserNotificationCenterDelegateConnectionListener)init
{
  v14.receiver = self;
  v14.super_class = UNUserNotificationCenterDelegateConnectionListener;
  v2 = [(UNUserNotificationCenterDelegateConnectionListener *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    listenerByBundleIdentifier = v2->_listenerByBundleIdentifier;
    v2->_listenerByBundleIdentifier = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    delegateByBundleIdentifier = v2->_delegateByBundleIdentifier;
    v2->_delegateByBundleIdentifier = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.usernotifications.DelegateConnectionListener", v7);
    queue = v2->_queue;
    v2->_queue = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.usernotifications.DelegateConnectionListener.call-out", v10);
    callOutQueue = v2->_callOutQueue;
    v2->_callOutQueue = v11;
  }

  return v2;
}

- (void)setDelegate:(id)delegate forBundleIdentifier:(id)identifier
{
  delegateCopy = delegate;
  identifierCopy = identifier;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__UNUserNotificationCenterDelegateConnectionListener_setDelegate_forBundleIdentifier___block_invoke;
  block[3] = &unk_1E7CFF870;
  block[4] = self;
  v12 = delegateCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = delegateCopy;
  dispatch_async(queue, block);
}

- (void)didReceiveNotificationResponse:(id)response forBundleIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  responseCopy = response;
  identifierCopy = identifier;
  handlerCopy = handler;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __127__UNUserNotificationCenterDelegateConnectionListener_didReceiveNotificationResponse_forBundleIdentifier_withCompletionHandler___block_invoke;
  v15[3] = &unk_1E7CFF898;
  v15[4] = self;
  v16 = responseCopy;
  v17 = identifierCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = identifierCopy;
  v14 = responseCopy;
  dispatch_async(queue, v15);
}

- (void)didChangeSettings:(id)settings forBundleIdentifier:(id)identifier
{
  settingsCopy = settings;
  identifierCopy = identifier;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92__UNUserNotificationCenterDelegateConnectionListener_didChangeSettings_forBundleIdentifier___block_invoke;
  block[3] = &unk_1E7CFF870;
  block[4] = self;
  v12 = settingsCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = settingsCopy;
  dispatch_async(queue, block);
}

- (void)didOpenApplicationForResponse:(id)response forBundleIdentifier:(id)identifier
{
  responseCopy = response;
  identifierCopy = identifier;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __104__UNUserNotificationCenterDelegateConnectionListener_didOpenApplicationForResponse_forBundleIdentifier___block_invoke;
  block[3] = &unk_1E7CFF870;
  block[4] = self;
  v12 = responseCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = responseCopy;
  dispatch_async(queue, block);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = +[UNUserNotificationCenterDelegateService serverInterface];
  [connectionCopy setExportedInterface:v6];

  [connectionCopy setExportedObject:self];
  [connectionCopy setInterruptionHandler:&__block_literal_global_6];
  [connectionCopy setInvalidationHandler:&__block_literal_global_9];
  [connectionCopy resume];

  return 1;
}

void __89__UNUserNotificationCenterDelegateConnectionListener_listener_shouldAcceptNewConnection___block_invoke()
{
  v0 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B85E3000, v0, OS_LOG_TYPE_DEFAULT, "delegate connection interrupted", v1, 2u);
  }
}

void __89__UNUserNotificationCenterDelegateConnectionListener_listener_shouldAcceptNewConnection___block_invoke_7()
{
  v0 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B85E3000, v0, OS_LOG_TYPE_DEFAULT, "delegate connection invalidated", v1, 2u);
  }
}

- (void)_queue_setDelegate:(id)delegate forBundleIdentifier:(id)identifier
{
  delegateCopy = delegate;
  queue = self->_queue;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(queue);
  delegateByBundleIdentifier = self->_delegateByBundleIdentifier;
  if (delegateCopy)
  {
    [(NSMutableDictionary *)delegateByBundleIdentifier setObject:delegateCopy forKey:identifierCopy];
    [(UNUserNotificationCenterDelegateConnectionListener *)self _queue_ensureListenerForBundleIdentifier:identifierCopy];
  }

  else
  {
    [(NSMutableDictionary *)delegateByBundleIdentifier removeObjectForKey:identifierCopy];
    [(UNUserNotificationCenterDelegateConnectionListener *)self _queue_invalidateListenerForBundleIdentifier:identifierCopy];
  }
}

- (void)_queue_ensureListenerForBundleIdentifier:(id)identifier
{
  v10 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(NSMutableDictionary *)self->_listenerByBundleIdentifier objectForKey:identifierCopy];
  if (!v5)
  {
    v6 = UNLogConnections;
    if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = identifierCopy;
      _os_log_impl(&dword_1B85E3000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Listening for connections to delegate", &v8, 0xCu);
    }

    v7 = [UNUserNotificationCenterDelegateService serviceNameForBundleIdentifier:identifierCopy];
    v5 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:v7];
    [v5 setDelegate:self];
    [(NSMutableDictionary *)self->_listenerByBundleIdentifier setObject:v5 forKey:identifierCopy];
    [v5 resume];
  }
}

- (void)_queue_invalidateListenerForBundleIdentifier:(id)identifier
{
  v9 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(NSMutableDictionary *)self->_listenerByBundleIdentifier objectForKey:identifierCopy];
  if (v5)
  {
    v6 = UNLogConnections;
    if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = identifierCopy;
      _os_log_impl(&dword_1B85E3000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Invalidating listener for delegate", &v7, 0xCu);
    }

    [v5 invalidate];
    [(NSMutableDictionary *)self->_listenerByBundleIdentifier removeObjectForKey:identifierCopy];
  }
}

- (void)_queue_didReceiveNotificationResponse:(id)response forBundleIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  v33 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  identifierCopy = identifier;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_queue);
  v11 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    actionIdentifier = [responseCopy actionIdentifier];
    notification = [responseCopy notification];
    request = [notification request];
    identifier = [request identifier];
    un_logDigest = [identifier un_logDigest];
    *buf = 138543874;
    v28 = identifierCopy;
    v29 = 2114;
    v30 = actionIdentifier;
    v31 = 2114;
    v32 = un_logDigest;
    _os_log_impl(&dword_1B85E3000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received action %{public}@ response for notification %{public}@", buf, 0x20u);
  }

  v18 = [(NSMutableDictionary *)self->_delegateByBundleIdentifier objectForKey:identifierCopy];
  callOutQueue = self->_callOutQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __134__UNUserNotificationCenterDelegateConnectionListener__queue_didReceiveNotificationResponse_forBundleIdentifier_withCompletionHandler___block_invoke;
  block[3] = &unk_1E7CFF8E8;
  v24 = v18;
  v25 = responseCopy;
  v26 = handlerCopy;
  v20 = handlerCopy;
  v21 = responseCopy;
  v22 = v18;
  dispatch_async(callOutQueue, block);
}

void __134__UNUserNotificationCenterDelegateConnectionListener__queue_didReceiveNotificationResponse_forBundleIdentifier_withCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __134__UNUserNotificationCenterDelegateConnectionListener__queue_didReceiveNotificationResponse_forBundleIdentifier_withCompletionHandler___block_invoke_2;
  v3[3] = &unk_1E7CFF8C0;
  v4 = *(a1 + 48);
  [v1 didReceiveNotificationResponse:v2 withCompletionHandler:v3];
}

uint64_t __134__UNUserNotificationCenterDelegateConnectionListener__queue_didReceiveNotificationResponse_forBundleIdentifier_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)_queue_didChangeSettings:(id)settings forBundleIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_queue);
  v8 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v17 = identifierCopy;
    v18 = 2114;
    v19 = settingsCopy;
    _os_log_impl(&dword_1B85E3000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] changed settings %{public}@", buf, 0x16u);
  }

  v9 = [(NSMutableDictionary *)self->_delegateByBundleIdentifier objectForKey:identifierCopy];
  callOutQueue = self->_callOutQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __99__UNUserNotificationCenterDelegateConnectionListener__queue_didChangeSettings_forBundleIdentifier___block_invoke;
  v13[3] = &unk_1E7CFF910;
  v14 = v9;
  v15 = settingsCopy;
  v11 = settingsCopy;
  v12 = v9;
  dispatch_async(callOutQueue, v13);
}

- (void)_queue_didOpenApplicationForResponse:(id)response forBundleIdentifier:(id)identifier
{
  v28 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_queue);
  v8 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    actionIdentifier = [responseCopy actionIdentifier];
    notification = [responseCopy notification];
    request = [notification request];
    identifier = [request identifier];
    un_logDigest = [identifier un_logDigest];
    *buf = 138543874;
    v23 = identifierCopy;
    v24 = 2114;
    v25 = actionIdentifier;
    v26 = 2114;
    v27 = un_logDigest;
    _os_log_impl(&dword_1B85E3000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Did open application for action %{public}@ response for notification %{public}@", buf, 0x20u);
  }

  v15 = [(NSMutableDictionary *)self->_delegateByBundleIdentifier objectForKey:identifierCopy];
  callOutQueue = self->_callOutQueue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __111__UNUserNotificationCenterDelegateConnectionListener__queue_didOpenApplicationForResponse_forBundleIdentifier___block_invoke;
  v19[3] = &unk_1E7CFF910;
  v20 = v15;
  v21 = responseCopy;
  v17 = responseCopy;
  v18 = v15;
  dispatch_async(callOutQueue, v19);
}

@end