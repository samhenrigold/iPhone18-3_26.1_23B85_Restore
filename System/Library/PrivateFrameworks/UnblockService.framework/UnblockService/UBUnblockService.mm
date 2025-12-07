@interface UBUnblockService
+ (id)sharedInstance;
- (UBUnblockService)init;
- (id)_init;
- (id)handleReactiveRecoveryRequest:(id)request;
- (int)setupAndActivate:(unint64_t)activate;
- (void)dealloc;
- (void)handleIncomingMessage:(id)message;
- (void)init;
- (void)openListenerConnection;
@end

@implementation UBUnblockService

- (void)openListenerConnection
{
  if (self->_listenerConnection)
  {
    v2 = __error();
    v3 = *v2;
    v4 = _ublogt(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_270397000, v4, OS_LOG_TYPE_DEFAULT, "The listener connection to com.apple.unblock is already up and active.", buf, 2u);
    }

LABEL_12:

    *__error() = v3;
    return;
  }

  v6 = dispatch_workloop_create("com.apple.unblock.workloop");
  workloop = self->_workloop;
  self->_workloop = v6;

  v8 = self->_workloop;
  if (!v8)
  {
    v15 = __error();
    v3 = *v15;
    v4 = _ublogt(v15);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [UBUnblockService(XPCHandling) openListenerConnection];
    }

    goto LABEL_12;
  }

  mach_service = xpc_connection_create_mach_service("com.apple.unblock", v8, 1uLL);
  listenerConnection = self->_listenerConnection;
  self->_listenerConnection = mach_service;

  if (!self->_listenerConnection)
  {
    v16 = __error();
    v17 = *v16;
    v18 = _ublogt(v16);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [UBUnblockService(XPCHandling) openListenerConnection];
    }

    *__error() = v17;
    goto LABEL_16;
  }

  if (xpc_connection_set_peer_entitlement_matches_value_requirement())
  {
    v11 = __error();
    v12 = *v11;
    v13 = _ublogt(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [UBUnblockService(XPCHandling) openListenerConnection];
    }

    *__error() = v12;
    xpc_connection_cancel(self->_listenerConnection);
    v14 = self->_listenerConnection;
    self->_listenerConnection = 0;

LABEL_16:
    v19 = self->_workloop;
    self->_workloop = 0;

    return;
  }

  v20 = self->_listenerConnection;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __55__UBUnblockService_XPCHandling__openListenerConnection__block_invoke;
  handler[3] = &unk_279E02D88;
  handler[4] = self;
  xpc_connection_set_event_handler(v20, handler);
  v21 = __error();
  v22 = *v21;
  v23 = _ublogt(v21);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270397000, v23, OS_LOG_TYPE_DEFAULT, "Resuming com.apple.unblock listener connection", buf, 2u);
  }

  *__error() = v22;
  xpc_connection_resume(self->_listenerConnection);
}

- (id)handleReactiveRecoveryRequest:(id)request
{
  requestCopy = request;
  v4 = objc_autoreleasePoolPush();
  length = 0;
  data = xpc_dictionary_get_data(requestCopy, "UBStuckServicesDataKey", &length);
  if (data)
  {
    v6 = [MEMORY[0x277CBEA90] dataWithBytes:data length:length];
    v46 = 0;
    v7 = [MEMORY[0x277CCAAC8] unarchivedArrayOfObjectsOfClass:objc_opt_class() fromData:v6 error:&v46];
    v8 = v46;
    if (v8)
    {
      v9 = v8;
      v10 = __error();
      v11 = *v10;
      v12 = _ublogt(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [UBUnblockService(XPCHandling) handleReactiveRecoveryRequest:];
      }

      v13 = 0;
      *__error() = v11;
    }

    else
    {
      v45 = 0;
      v17 = xpc_dictionary_get_data(requestCopy, "UBStackshotDataKey", &v45);
      if (!v17)
      {
        v18 = __error();
        v19 = *v18;
        v20 = _ublogt(v18);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_270397000, v20, OS_LOG_TYPE_DEFAULT, "Received NULL stackshot data. A new live stackshot will be taken", buf, 2u);
        }

        *__error() = v19;
      }

      string = xpc_dictionary_get_string(requestCopy, "UBClientName");
      v22 = objc_alloc(MEMORY[0x277CCACA8]);
      v23 = v22;
      if (string)
      {
        v24 = [v22 initWithUTF8String:string];
      }

      else
      {
        v25 = xpc_dictionary_get_remote_connection(requestCopy);
        v24 = [v23 initWithFormat:@"pid [%d]", xpc_connection_get_pid(v25)];
      }

      v26 = [[UBUnblockReactiveRecovery alloc] initForStuckServices:v7 clientName:v24];
      v27 = v26;
      if (v17)
      {
        [v26 useStackshotBuffer:v17 size:v45];
      }

      v43 = 0;
      v28 = [v27 recover:0 error:&v43];
      v9 = v43;
      if (v28)
      {
        v42 = v9;
        v39 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v28 requiringSecureCoding:1 error:&v42];
        v29 = v42;

        if (v29)
        {
          bytes = v24;
          v30 = __error();
          v31 = *v30;
          v32 = _ublogt(v30);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            [UBUnblockService(XPCHandling) handleReactiveRecoveryRequest:];
          }

          v13 = 0;
          *__error() = v31;
          v24 = bytes;
        }

        else
        {
          reply = xpc_dictionary_create_reply(requestCopy);
          v13 = reply;
          if (reply)
          {
            xpc_dictionary_set_int64(reply, "UBResultKey", 0);
            xpc_dictionary_set_data(v13, "UBStuckServicesResultsDataKey", [v39 bytes], objc_msgSend(v39, "length"));
            v37 = v13;
          }
        }

        v9 = v29;
      }

      else
      {
        bytesa = v24;
        v33 = __error();
        v34 = *v33;
        v35 = _ublogt(v33);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          [UBUnblockService(XPCHandling) handleReactiveRecoveryRequest:];
        }

        v13 = 0;
        *__error() = v34;
        v24 = bytesa;
      }
    }
  }

  else
  {
    v14 = __error();
    v15 = *v14;
    v16 = _ublogt(v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [UBUnblockService(XPCHandling) handleReactiveRecoveryRequest:];
    }

    v13 = 0;
    *__error() = v15;
  }

  objc_autoreleasePoolPop(v4);

  return v13;
}

- (void)handleIncomingMessage:(id)message
{
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  v6 = __error();
  v7 = *v6;
  v8 = _ublogt(v6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [UBUnblockService(XPCHandling) handleIncomingMessage:];
  }

  *__error() = v7;
  if (xpc_dictionary_get_uint64(messageCopy, "UBRequestKey") == 1)
  {
    if (self->_options)
    {
      v13 = __error();
      v14 = *v13;
      v15 = _ublogt(v13);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [UBUnblockService(XPCHandling) handleIncomingMessage:];
      }

      *__error() = v14;
    }

    else
    {
      reply = [(UBUnblockService *)self handleReactiveRecoveryRequest:messageCopy];
      if (reply)
      {
LABEL_14:
        v16 = xpc_dictionary_get_remote_connection(messageCopy);
        xpc_connection_send_message(v16, reply);

        goto LABEL_15;
      }
    }

    reply = xpc_dictionary_create_reply(messageCopy);
    xpc_dictionary_set_int64(reply, "UBResultKey", -1);
    goto LABEL_14;
  }

  v10 = __error();
  v11 = *v10;
  v12 = _ublogt(v10);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [UBUnblockService(XPCHandling) handleIncomingMessage:];
  }

  *__error() = v11;
LABEL_15:
  objc_autoreleasePoolPop(v5);
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[UBUnblockService sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

- (id)_init
{
  v7.receiver = self;
  v7.super_class = UBUnblockService;
  v2 = [(UBUnblockService *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    listenerConnection = v2->_listenerConnection;
    v2->_listenerConnection = 0;

    workloop = v3->_workloop;
    v3->_workloop = 0;
  }

  return v3;
}

- (UBUnblockService)init
{
  v3 = __error();
  v4 = *v3;
  v5 = _ublogt(v3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [UBUnblockService init];
  }

  *__error() = v4;
  return 0;
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_lock);
  listenerConnection = self->_listenerConnection;
  if (listenerConnection)
  {
    v4 = __error();
    v5 = *v4;
    v6 = _ublogt(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_270397000, v6, OS_LOG_TYPE_DEFAULT, "Canceling com.apple.unblock listener xpc connection.", buf, 2u);
    }

    *__error() = v5;
    xpc_connection_cancel(self->_listenerConnection);
    listenerConnection = self->_listenerConnection;
  }

  self->_listenerConnection = 0;

  workloop = self->_workloop;
  self->_workloop = 0;

  os_unfair_lock_unlock(&self->_lock);
  v8.receiver = self;
  v8.super_class = UBUnblockService;
  [(UBUnblockService *)&v8 dealloc];
}

- (int)setupAndActivate:(unint64_t)activate
{
  os_unfair_lock_lock(&self->_lock);
  self->_options = activate;
  [(UBUnblockService *)self openListenerConnection];
  listenerConnection = self->_listenerConnection;
  os_unfair_lock_unlock(&self->_lock);
  if (listenerConnection)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

- (void)init
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end