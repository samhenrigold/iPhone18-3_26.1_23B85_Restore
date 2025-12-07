@interface AAAccountUserNotificationPublisher
- (AAAccountUserNotificationPublisher)initWithDaemonXPCEndpoint:(id)endpoint;
- (void)postAccountUserNotificationWith:(id)with completion:(id)completion;
@end

@implementation AAAccountUserNotificationPublisher

- (AAAccountUserNotificationPublisher)initWithDaemonXPCEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v9.receiver = self;
  v9.super_class = AAAccountUserNotificationPublisher;
  v5 = [(AAAccountUserNotificationPublisher *)&v9 init];
  if (v5)
  {
    v6 = [[AAAccountUserNotificationDaemonConnection alloc] initWithListenerEndpoint:endpointCopy];
    daemonConnection = v5->_daemonConnection;
    v5->_daemonConnection = v6;
  }

  return v5;
}

- (void)postAccountUserNotificationWith:(id)with completion:(id)completion
{
  withCopy = with;
  completionCopy = completion;
  v8 = +[AAPreferences shouldEnableAccountUserNotifications];
  if (v8)
  {
    *buf = 0;
    v23 = buf;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__0;
    v26 = __Block_byref_object_dispose__0;
    selfCopy = self;
    v27 = selfCopy;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __81__AAAccountUserNotificationPublisher_postAccountUserNotificationWith_completion___block_invoke;
    aBlock[3] = &unk_1E7C9B050;
    v21 = buf;
    v20 = completionCopy;
    v10 = _Block_copy(aBlock);
    daemonConnection = selfCopy->_daemonConnection;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __81__AAAccountUserNotificationPublisher_postAccountUserNotificationWith_completion___block_invoke_30;
    v17[3] = &unk_1E7C9B078;
    v12 = v10;
    v18 = v12;
    v13 = [(AAAccountUserNotificationDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:v17];
    v14 = _AALogSystem(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "Calling daemon service to publish account user notification.", v16, 2u);
    }

    [v13 postAccountUserNotificationWith:withCopy completion:v12];
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v15 = _AALogSystem(v8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "Account user notification feature not enabled.", buf, 2u);
    }
  }
}

void __81__AAAccountUserNotificationPublisher_postAccountUserNotificationWith_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v7 = _AALogSystem(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "Local completion called after post account notification", v9, 2u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }
}

void __81__AAAccountUserNotificationPublisher_postAccountUserNotificationWith_completion___block_invoke_30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __81__AAAccountUserNotificationPublisher_postAccountUserNotificationWith_completion___block_invoke_30_cold_1(v3, v4);
  }

  (*(*(a1 + 32) + 16))();
}

void __81__AAAccountUserNotificationPublisher_postAccountUserNotificationWith_completion___block_invoke_30_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_ERROR, "AppleAccount daemon connection for publishing account user notification encountered error: %@", &v2, 0xCu);
}

@end