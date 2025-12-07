@interface BiometricKitXPCClientConnection
+ (id)connectionWithDeviceType:(int64_t)type;
- (BOOL)addClient:(id)client;
- (BOOL)removeClient:(id)client;
- (BiometricKitXPCClientConnection)initWithDeviceType:(int64_t)type;
- (NSXPCConnection)xpcConnection;
- (id)client:(unint64_t)client;
- (void)dealloc;
- (void)enrollFeedback:(id)feedback client:(unint64_t)client;
- (void)enrollResult:(id)result details:(id)details client:(unint64_t)client;
- (void)enrollUpdate:(id)update client:(unint64_t)client;
- (void)homeButtonPressed:(unint64_t)pressed;
- (void)matchResult:(id)result details:(id)details client:(unint64_t)client;
- (void)statusMessage:(unsigned int)message client:(unint64_t)client;
- (void)statusMessage:(unsigned int)message details:(id)details client:(unint64_t)client;
- (void)taskResumeStatus:(int)status client:(unint64_t)client;
- (void)templateUpdate:(id)update details:(id)details client:(unint64_t)client;
- (void)touchIDButtonPressed:(BOOL)pressed client:(unint64_t)client;
- (void)xpcConnection;
@end

@implementation BiometricKitXPCClientConnection

- (NSXPCConnection)xpcConnection
{
  v63 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  xpcConnection = selfCopy->_xpcConnection;
  if (xpcConnection && !selfCopy->_invalidated)
  {
LABEL_15:
    v41 = xpcConnection;
    goto LABEL_22;
  }

  objc_initWeak(&location, selfCopy);
  deviceType = selfCopy->_deviceType;
  if (deviceType == 1)
  {
    v5 = @"com.apple.biometrickitd";
  }

  else
  {
    if (deviceType != 2)
    {
      if (__osLog)
      {
        v42 = __osLog;
      }

      else
      {
        v42 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v54 = "0";
        v55 = 2048;
        v56 = 0;
        v57 = 2080;
        v58 = &unk_1C82F52EE;
        v59 = 2080;
        v60 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BiometricKitXPCClient.m";
        v61 = 1024;
        v62 = 163;
        _os_log_impl(&dword_1C82AD000, v42, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
      }

      goto LABEL_21;
    }

    v5 = @"com.apple.pearld";
  }

  v6 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:v5 options:0];
  v7 = selfCopy->_xpcConnection;
  selfCopy->_xpcConnection = v6;

  if (selfCopy->_xpcConnection)
  {
    v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4808A40];
    [(NSXPCConnection *)selfCopy->_xpcConnection setRemoteObjectInterface:v8];

    remoteObjectInterface = [(NSXPCConnection *)selfCopy->_xpcConnection remoteObjectInterface];
    v10 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    [remoteObjectInterface setClasses:v10 forSelector:sel_getIdentityFromUUID_client_replyBlock_ argumentIndex:0 ofReply:1];

    remoteObjectInterface2 = [(NSXPCConnection *)selfCopy->_xpcConnection remoteObjectInterface];
    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    [remoteObjectInterface2 setClasses:v14 forSelector:sel_identities_client_replyBlock_ argumentIndex:0 ofReply:1];

    remoteObjectInterface3 = [(NSXPCConnection *)selfCopy->_xpcConnection remoteObjectInterface];
    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = [v16 setWithObjects:{v17, v18, v19, objc_opt_class(), 0}];
    [remoteObjectInterface3 setClasses:v20 forSelector:sel_getLastMatchEvent_replyBlock_ argumentIndex:1 ofReply:1];

    remoteObjectInterface4 = [(NSXPCConnection *)selfCopy->_xpcConnection remoteObjectInterface];
    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    [remoteObjectInterface4 setClasses:v24 forSelector:sel_getPreferencesValueForKey_client_replyBlock_ argumentIndex:1 ofReply:1];

    remoteObjectInterface5 = [(NSXPCConnection *)selfCopy->_xpcConnection remoteObjectInterface];
    v26 = MEMORY[0x1E695DFD8];
    v27 = objc_opt_class();
    v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
    [remoteObjectInterface5 setClasses:v28 forSelector:sel_listAccessories_replyBlock_ argumentIndex:1 ofReply:1];

    v29 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4803D08];
    [(NSXPCConnection *)selfCopy->_xpcConnection setExportedInterface:v29];

    [(NSXPCConnection *)selfCopy->_xpcConnection setExportedObject:selfCopy];
    exportedInterface = [(NSXPCConnection *)selfCopy->_xpcConnection exportedInterface];
    v31 = MEMORY[0x1E695DFD8];
    v32 = objc_opt_class();
    v33 = objc_opt_class();
    v34 = objc_opt_class();
    v35 = objc_opt_class();
    v36 = objc_opt_class();
    v37 = [v31 setWithObjects:{v32, v33, v34, v35, v36, objc_opt_class(), 0}];
    [exportedInterface setClasses:v37 forSelector:sel_statusMessage_details_client_ argumentIndex:1 ofReply:0];

    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __48__BiometricKitXPCClientConnection_xpcConnection__block_invoke;
    v50[3] = &unk_1E8303C80;
    objc_copyWeak(&v51, &location);
    [(NSXPCConnection *)selfCopy->_xpcConnection setInterruptionHandler:v50];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __48__BiometricKitXPCClientConnection_xpcConnection__block_invoke_228;
    v48[3] = &unk_1E8303CA8;
    objc_copyWeak(&v49, &location);
    v48[4] = selfCopy;
    [(NSXPCConnection *)selfCopy->_xpcConnection setInvalidationHandler:v48];
    if (!selfCopy->_serverStartedNotificationToken)
    {
      v38 = dispatch_get_global_queue(0, 0);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __48__BiometricKitXPCClientConnection_xpcConnection__block_invoke_230;
      handler[3] = &unk_1E8303CD0;
      objc_copyWeak(&v47, &location);
      notify_register_dispatch("com.apple.BiometricKit.serverStarted", &selfCopy->_serverStartedNotificationToken, v38, handler);

      objc_destroyWeak(&v47);
    }

    if (selfCopy->_invalidated)
    {
      selfCopy->_invalidated = 0;
      v39 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __48__BiometricKitXPCClientConnection_xpcConnection__block_invoke_232;
      block[3] = &unk_1E8303C80;
      objc_copyWeak(&v45, &location);
      dispatch_async(v39, block);

      objc_destroyWeak(&v45);
    }

    if (xpc_user_sessions_enabled())
    {
      xpc_user_sessions_get_foreground_uid();
      _xpcConnection = [(NSXPCConnection *)selfCopy->_xpcConnection _xpcConnection];
      xpc_connection_set_target_user_session_uid();
    }

    [(NSXPCConnection *)selfCopy->_xpcConnection resume];
    objc_destroyWeak(&v49);
    objc_destroyWeak(&v51);
    objc_destroyWeak(&location);
    xpcConnection = selfCopy->_xpcConnection;
    goto LABEL_15;
  }

  [BiometricKitXPCClientConnection xpcConnection];
LABEL_21:
  objc_destroyWeak(&location);
  v41 = 0;
LABEL_22:
  objc_sync_exit(selfCopy);

  return v41;
}

+ (id)connectionWithDeviceType:(int64_t)type
{
  v19 = *MEMORY[0x1E69E9840];
  if (type == 2)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __60__BiometricKitXPCClientConnection_connectionWithDeviceType___block_invoke_2;
    v7[3] = &__block_descriptor_40_e5_v8__0l;
    v7[4] = self;
    if (connectionWithDeviceType__once_1 != -1)
    {
      dispatch_once(&connectionWithDeviceType__once_1, v7);
    }

    v3 = connectionWithDeviceType__pearlConnection;
    goto LABEL_9;
  }

  if (type == 1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__BiometricKitXPCClientConnection_connectionWithDeviceType___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    if (connectionWithDeviceType__once != -1)
    {
      dispatch_once(&connectionWithDeviceType__once, block);
    }

    v3 = connectionWithDeviceType__touchIdConnection;
LABEL_9:
    v4 = v3;
    goto LABEL_16;
  }

  if (__osLog)
  {
    v5 = __osLog;
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316162;
    v10 = "0";
    v11 = 2048;
    v12 = 0;
    v13 = 2080;
    v14 = &unk_1C82F52EE;
    v15 = 2080;
    v16 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BiometricKitXPCClient.m";
    v17 = 1024;
    v18 = 90;
    _os_log_impl(&dword_1C82AD000, v5, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
  }

  v4 = 0;
LABEL_16:

  return v4;
}

void __60__BiometricKitXPCClientConnection_connectionWithDeviceType___block_invoke(uint64_t a1)
{
  if (isTouchIDPlatform())
  {
    v4.receiver = *(a1 + 32);
    v4.super_class = &OBJC_METACLASS___BiometricKitXPCClientConnection;
    v2 = [objc_msgSendSuper2(&v4 allocWithZone_];
    v3 = connectionWithDeviceType__touchIdConnection;
    connectionWithDeviceType__touchIdConnection = v2;
  }
}

void __60__BiometricKitXPCClientConnection_connectionWithDeviceType___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (isFaceIDPlatform(a1, a2))
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = &OBJC_METACLASS___BiometricKitXPCClientConnection;
    v3 = [objc_msgSendSuper2(&v5 allocWithZone_];
    v4 = connectionWithDeviceType__pearlConnection;
    connectionWithDeviceType__pearlConnection = v3;
  }
}

- (BiometricKitXPCClientConnection)initWithDeviceType:(int64_t)type
{
  selfCopy = self;
  v25 = *MEMORY[0x1E69E9840];
  if ((type - 1) > 1)
  {
    if (__osLog)
    {
      v12 = __osLog;
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v16 = "0";
      v17 = 2048;
      v18 = 0;
      v19 = 2080;
      v20 = &unk_1C82F52EE;
      v21 = 2080;
      v22 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BiometricKitXPCClient.m";
      v23 = 1024;
      v24 = 113;
      _os_log_impl(&dword_1C82AD000, v12, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }

    v11 = 0;
  }

  else
  {
    self->_deviceType = type;
    v14.receiver = self;
    v14.super_class = BiometricKitXPCClientConnection;
    v4 = [(BiometricKitXPCClientConnection *)&v14 init];
    if (v4)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
      clients = v4->_clients;
      v4->_clients = v5;

      v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v8 = dispatch_queue_create("com.apple.BiometricKitXPCClientConnection.dispatch", v7);
      queue = v4->_queue;
      v4->_queue = v8;

      xpcConnection = [(BiometricKitXPCClientConnection *)v4 xpcConnection];

      if (!xpcConnection)
      {
        [BiometricKitXPCClientConnection initWithDeviceType:];
      }
    }

    else
    {
      [BiometricKitXPCClientConnection initWithDeviceType:];
    }

    selfCopy = v4;
    v11 = selfCopy;
  }

  return v11;
}

- (void)dealloc
{
  serverStartedNotificationToken = self->_serverStartedNotificationToken;
  if (serverStartedNotificationToken)
  {
    notify_cancel(serverStartedNotificationToken);
  }

  v4.receiver = self;
  v4.super_class = BiometricKitXPCClientConnection;
  [(BiometricKitXPCClientConnection *)&v4 dealloc];
}

void __48__BiometricKitXPCClientConnection_xpcConnection__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (__osLog)
  {
    v2 = __osLog;
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C82AD000, v2, OS_LOG_TYPE_DEFAULT, "BiometricKitXPCClient::xpcConnection interrupted\n", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    objc_sync_enter(v5);
    [v5[5] allValues];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v6 = v11 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v10 objects:v15 count:16];
    if (v7)
    {
      v8 = *v11;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v10 + 1) + 8 * i) interruptConnection];
        }

        v7 = [v6 countByEnumeratingWithState:&v10 objects:v15 count:16];
      }

      while (v7);
    }

    objc_sync_exit(v5);
  }
}

void __48__BiometricKitXPCClientConnection_xpcConnection__block_invoke_228(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (__osLog)
  {
    v2 = __osLog;
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C82AD000, v2, OS_LOG_TYPE_DEFAULT, "BiometricKitXPCClient::xpcConnection invalidated\n", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    objc_sync_enter(v5);
    *(*(a1 + 32) + 24) = 1;
    [v5[5] allValues];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v6 = v11 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v10 objects:v15 count:16];
    if (v7)
    {
      v8 = *v11;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v10 + 1) + 8 * i) interruptConnection];
        }

        v7 = [v6 countByEnumeratingWithState:&v10 objects:v15 count:16];
      }

      while (v7);
    }

    objc_sync_exit(v5);
  }
}

void __48__BiometricKitXPCClientConnection_xpcConnection__block_invoke_230(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  if (__osLog)
  {
    v3 = __osLog;
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C82AD000, v3, OS_LOG_TYPE_DEFAULT, "BiometricKitXPCClient::xpcConnection processing kBiometricKitServerStartedNotification\n", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
    objc_sync_enter(v6);
    v7 = [v6[5] allValues];
    objc_sync_exit(v6);

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v9)
    {
      v10 = *v13;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v12 + 1) + 8 * i) initializeConnection];
        }

        v9 = [v8 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v9);
    }
  }

  objc_autoreleasePoolPop(v2);
}

void __48__BiometricKitXPCClientConnection_xpcConnection__block_invoke_232(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    objc_sync_enter(v5);
    v6 = [v5[5] allValues];
    objc_sync_exit(v5);

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v8)
    {
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v11 + 1) + 8 * v10++) initializeConnection];
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }

  objc_autoreleasePoolPop(v2);
}

- (BOOL)addClient:(id)client
{
  clientCopy = client;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  clients = selfCopy->_clients;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(clientCopy, "clientID")}];
  v8 = [(NSMutableDictionary *)clients objectForKey:v7];

  if (v8)
  {
    [BiometricKitXPCClientConnection addClient:];
  }

  else
  {
    v9 = selfCopy->_clients;
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(clientCopy, "clientID")}];
    [(NSMutableDictionary *)v9 setObject:clientCopy forKey:v10];
  }

  objc_sync_exit(selfCopy);

  return v8 == 0;
}

- (BOOL)removeClient:(id)client
{
  clientCopy = client;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  clients = selfCopy->_clients;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(clientCopy, "clientID")}];
  v8 = [(NSMutableDictionary *)clients objectForKey:v7];

  if (v8)
  {
    v9 = selfCopy->_clients;
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(clientCopy, "clientID")}];
    [(NSMutableDictionary *)v9 removeObjectForKey:v10];
  }

  else
  {
    [BiometricKitXPCClientConnection removeClient:];
  }

  objc_sync_exit(selfCopy);

  return v8 != 0;
}

- (id)client:(unint64_t)client
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  clients = selfCopy->_clients;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:client];
  v7 = [(NSMutableDictionary *)clients objectForKey:v6];

  objc_sync_exit(selfCopy);

  return v7;
}

- (void)enrollResult:(id)result details:(id)details client:(unint64_t)client
{
  resultCopy = result;
  detailsCopy = details;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__BiometricKitXPCClientConnection_enrollResult_details_client___block_invoke;
  v13[3] = &unk_1E8303CF8;
  v13[4] = self;
  v14 = resultCopy;
  v15 = detailsCopy;
  clientCopy = client;
  v11 = detailsCopy;
  v12 = resultCopy;
  dispatch_async(queue, v13);
}

void __63__BiometricKitXPCClientConnection_enrollResult_details_client___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) client:*(a1 + 56)];
  v2 = [v3 delegate];
  [v2 enrollResult:*(a1 + 40) details:*(a1 + 48) client:*(a1 + 56)];
}

- (void)enrollUpdate:(id)update client:(unint64_t)client
{
  updateCopy = update;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__BiometricKitXPCClientConnection_enrollUpdate_client___block_invoke;
  block[3] = &unk_1E8303D20;
  v10 = updateCopy;
  clientCopy = client;
  block[4] = self;
  v8 = updateCopy;
  dispatch_async(queue, block);
}

void __55__BiometricKitXPCClientConnection_enrollUpdate_client___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) client:*(a1 + 48)];
  v2 = [v3 delegate];
  [v2 enrollUpdate:*(a1 + 40) client:*(a1 + 48)];
}

- (void)enrollFeedback:(id)feedback client:(unint64_t)client
{
  feedbackCopy = feedback;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__BiometricKitXPCClientConnection_enrollFeedback_client___block_invoke;
  block[3] = &unk_1E8303D20;
  v9 = feedbackCopy;
  clientCopy = client;
  block[4] = self;
  v7 = feedbackCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __57__BiometricKitXPCClientConnection_enrollFeedback_client___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) client:*(a1 + 48)];
  v2 = [v3 delegate];
  [v2 enrollFeedback:*(a1 + 40) client:*(a1 + 48)];
}

- (void)matchResult:(id)result details:(id)details client:(unint64_t)client
{
  resultCopy = result;
  detailsCopy = details;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__BiometricKitXPCClientConnection_matchResult_details_client___block_invoke;
  v13[3] = &unk_1E8303CF8;
  v13[4] = self;
  v14 = resultCopy;
  v15 = detailsCopy;
  clientCopy = client;
  v11 = detailsCopy;
  v12 = resultCopy;
  dispatch_async(queue, v13);
}

void __62__BiometricKitXPCClientConnection_matchResult_details_client___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) client:*(a1 + 56)];
  v2 = [v3 delegate];
  [v2 matchResult:*(a1 + 40) details:*(a1 + 48) client:*(a1 + 56)];
}

- (void)statusMessage:(unsigned int)message client:(unint64_t)client
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__BiometricKitXPCClientConnection_statusMessage_client___block_invoke;
  block[3] = &unk_1E8303D48;
  block[4] = self;
  block[5] = client;
  messageCopy = message;
  dispatch_async(queue, block);
}

void __56__BiometricKitXPCClientConnection_statusMessage_client___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) client:*(a1 + 40)];
  v2 = [v3 delegate];
  [v2 statusMessage:*(a1 + 48) client:*(a1 + 40)];
}

- (void)statusMessage:(unsigned int)message details:(id)details client:(unint64_t)client
{
  detailsCopy = details;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__BiometricKitXPCClientConnection_statusMessage_details_client___block_invoke;
  v11[3] = &unk_1E8303D70;
  v12 = detailsCopy;
  clientCopy = client;
  messageCopy = message;
  v11[4] = self;
  v10 = detailsCopy;
  dispatch_async(queue, v11);
}

void __64__BiometricKitXPCClientConnection_statusMessage_details_client___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) client:*(a1 + 48)];
  v2 = [v3 delegate];
  [v2 statusMessage:*(a1 + 56) details:*(a1 + 40) client:*(a1 + 48)];
}

- (void)homeButtonPressed:(unint64_t)pressed
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__BiometricKitXPCClientConnection_homeButtonPressed___block_invoke;
  v4[3] = &unk_1E8303D98;
  v4[4] = self;
  v4[5] = pressed;
  dispatch_async(queue, v4);
}

void __53__BiometricKitXPCClientConnection_homeButtonPressed___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) client:*(a1 + 40)];
  v2 = [v3 delegate];
  [v2 homeButtonPressed:*(a1 + 40)];
}

- (void)touchIDButtonPressed:(BOOL)pressed client:(unint64_t)client
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__BiometricKitXPCClientConnection_touchIDButtonPressed_client___block_invoke;
  block[3] = &unk_1E8303DC0;
  block[4] = self;
  block[5] = client;
  pressedCopy = pressed;
  dispatch_async(queue, block);
}

void __63__BiometricKitXPCClientConnection_touchIDButtonPressed_client___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) client:*(a1 + 40)];
  v2 = [v3 delegate];
  [v2 touchIDButtonPressed:*(a1 + 48) client:*(a1 + 40)];
}

- (void)templateUpdate:(id)update details:(id)details client:(unint64_t)client
{
  updateCopy = update;
  detailsCopy = details;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__BiometricKitXPCClientConnection_templateUpdate_details_client___block_invoke;
  v13[3] = &unk_1E8303CF8;
  v13[4] = self;
  v14 = updateCopy;
  v15 = detailsCopy;
  clientCopy = client;
  v11 = detailsCopy;
  v12 = updateCopy;
  dispatch_async(queue, v13);
}

void __65__BiometricKitXPCClientConnection_templateUpdate_details_client___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) client:*(a1 + 56)];
  v2 = [v3 delegate];
  [v2 templateUpdate:*(a1 + 40) details:*(a1 + 48) client:*(a1 + 56)];
}

- (void)taskResumeStatus:(int)status client:(unint64_t)client
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__BiometricKitXPCClientConnection_taskResumeStatus_client___block_invoke;
  block[3] = &unk_1E8303D48;
  block[4] = self;
  block[5] = client;
  statusCopy = status;
  dispatch_async(queue, block);
}

void __59__BiometricKitXPCClientConnection_taskResumeStatus_client___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) client:*(a1 + 40)];
  v2 = [v3 delegate];
  [v2 taskResumeStatus:*(a1 + 48) client:*(a1 + 40)];
}

- (void)initWithDeviceType:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)initWithDeviceType:.cold.2()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)xpcConnection
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)addClient:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)removeClient:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

@end