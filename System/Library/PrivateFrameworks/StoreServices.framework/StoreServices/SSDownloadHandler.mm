@interface SSDownloadHandler
- (BOOL)_sendAuthenticationSessionWithMessage:(id)message;
- (BOOL)_sendSessionCancelWithMessage:(id)message;
- (BOOL)_sendSessionHandleWithMessage:(id)message;
- (BOOL)_sendSessionPauseWithMessage:(id)message;
- (BOOL)sessionsNeedPowerAssertion;
- (BOOL)sessionsShouldBlockOtherDownloads;
- (NSArray)downloadPhasesToIgnore;
- (SSDownloadHandler)init;
- (SSDownloadHandlerDelegate)delegate;
- (id)_controlConnection;
- (id)_newSessionWithMessage:(id)message;
- (id)description;
- (void)_connectToDaemon;
- (void)_handleMessage:(id)message fromServerConnection:(id)connection;
- (void)_sendDisconnectMessage;
- (void)_setValue:(id)value forProperty:(const char *)property;
- (void)dealloc;
- (void)resetDisavowedSessions;
- (void)setDelegate:(id)delegate;
- (void)setDownloadPhasesToIgnore:(id)ignore;
- (void)setSessionsNeedPowerAssertion:(BOOL)assertion;
- (void)setSessionsShouldBlockOtherDownloads:(BOOL)downloads;
@end

@implementation SSDownloadHandler

- (SSDownloadHandler)init
{
  v11.receiver = self;
  v11.super_class = SSDownloadHandler;
  v2 = [(SSDownloadHandler *)&v11 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_sessionsNeedPowerAssertion = 257;
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.storeservices.SSDownloadHandler.%p", v2];
    v3->_dispatchQueue = dispatch_queue_create([v4 UTF8String], 0);

    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.storeservices.SSDownloadHandler.delegate.%p", v3];
    v3->_delegateQueue = dispatch_queue_create([v5 UTF8String], 0);

    v6 = CFUUIDCreate(0);
    v3->_handlerID = *&CFUUIDGetUUIDBytes(v6);
    CFRelease(v6);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, __DaemonLaunchNotification_0, @"com.apple.iTunesStore.daemon.launched", 0, CFNotificationSuspensionBehaviorCoalesce);
    dispatchQueue = v3->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __25__SSDownloadHandler_init__block_invoke;
    block[3] = &unk_1E84AC408;
    block[4] = v3;
    dispatch_async(dispatchQueue, block);
  }

  return v3;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.iTunesStore.daemon.launched", 0);
  delegateQueue = self->_delegateQueue;
  if (delegateQueue)
  {
    dispatch_release(delegateQueue);
  }

  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __28__SSDownloadHandler_dealloc__block_invoke;
    block[3] = &unk_1E84AC408;
    block[4] = self;
    dispatch_sync(dispatchQueue, block);
    dispatch_release(self->_dispatchQueue);
  }

  v6.receiver = self;
  v6.super_class = SSDownloadHandler;
  [(SSDownloadHandler *)&v6 dealloc];
}

void __28__SSDownloadHandler_dealloc__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 56) setMessageBlock:0];

  v2 = *(*(a1 + 32) + 8);
}

- (SSDownloadHandlerDelegate)delegate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__33;
  v10 = __Block_byref_object_dispose__33;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__SSDownloadHandler_delegate__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __29__SSDownloadHandler_delegate__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 16);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (NSArray)downloadPhasesToIgnore
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__33;
  v10 = __Block_byref_object_dispose__33;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__SSDownloadHandler_downloadPhasesToIgnore__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __43__SSDownloadHandler_downloadPhasesToIgnore__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 40);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)resetDisavowedSessions
{
  v20 = *MEMORY[0x1E69E9840];
  if (SSIsInternalBuild(self, a2) && _os_feature_enabled_impl())
  {
    v3 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v3)
    {
      v3 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      v5 = shouldLog | 2;
    }

    else
    {
      v5 = shouldLog;
    }

    oSLogObject = [v3 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
    {
      v7 = v5;
    }

    else
    {
      v7 = v5 & 2;
    }

    if (v7)
    {
      v18 = 136446210;
      v19 = "[SSDownloadHandler resetDisavowedSessions]";
      if (v8)
      {
        v9 = v8;
        v10 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:4];
        free(v9);
        SSFileLog(v3, @"%@", v11, v12, v13, v14, v15, v16, v10);
      }
    }
  }

  v17 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v17, "0", 40);
  xpc_dictionary_set_int64(v17, "1", self->_handlerID);
  [(SSXPCConnection *)self->_controlConnection sendMessage:v17];
  xpc_release(v17);
}

- (BOOL)sessionsNeedPowerAssertion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__SSDownloadHandler_sessionsNeedPowerAssertion__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)sessionsShouldBlockOtherDownloads
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__SSDownloadHandler_sessionsShouldBlockOtherDownloads__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setDelegate:(id)delegate
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__SSDownloadHandler_setDelegate___block_invoke;
  v4[3] = &unk_1E84AC458;
  v4[4] = self;
  v4[5] = delegate;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setDownloadPhasesToIgnore:(id)ignore
{
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__SSDownloadHandler_setDownloadPhasesToIgnore___block_invoke;
  v8[3] = &unk_1E84AC458;
  v8[4] = self;
  v8[5] = ignore;
  dispatch_sync(dispatchQueue, v8);
  if (ignore)
  {
    v6 = SSXPCCreateXPCObjectFromCFObject(ignore);
  }

  else
  {
    v6 = xpc_null_create();
  }

  v7 = v6;
  [(SSDownloadHandler *)self _setValue:v6 forProperty:"1"];
  xpc_release(v7);
}

void *__47__SSDownloadHandler_setDownloadPhasesToIgnore___block_invoke(void *result)
{
  v1 = *(result[4] + 40);
  if (v1 != result[5])
  {
    v2 = result;

    result = [v2[5] copy];
    *(v2[4] + 40) = result;
  }

  return result;
}

- (void)setSessionsNeedPowerAssertion:(BOOL)assertion
{
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__SSDownloadHandler_setSessionsNeedPowerAssertion___block_invoke;
  v7[3] = &unk_1E84AD498;
  v7[4] = self;
  assertionCopy = assertion;
  dispatch_sync(dispatchQueue, v7);
  v6 = xpc_BOOL_create(assertion);
  [(SSDownloadHandler *)self _setValue:v6 forProperty:"0"];
  xpc_release(v6);
}

- (void)setSessionsShouldBlockOtherDownloads:(BOOL)downloads
{
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__SSDownloadHandler_setSessionsShouldBlockOtherDownloads___block_invoke;
  v7[3] = &unk_1E84AD498;
  v7[4] = self;
  downloadsCopy = downloads;
  dispatch_sync(dispatchQueue, v7);
  v6 = xpc_BOOL_create(downloads);
  [(SSDownloadHandler *)self _setValue:v6 forProperty:"2"];
  xpc_release(v6);
}

- (id)description
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__33;
  v10 = __Block_byref_object_dispose__33;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__SSDownloadHandler_description__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__32__SSDownloadHandler_description__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4.receiver = *(a1 + 32);
  v4.super_class = SSDownloadHandler;
  result = [v2 initWithFormat:@"%@: Blocks: %d, Ignores: (%@)", objc_msgSendSuper2(&v4, sel_description), *(*(a1 + 32) + 65), *(*(a1 + 32) + 40)];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_connectToDaemon
{
  v44 = *MEMORY[0x1E69E9840];
  if (SSIsInternalBuild(self, a2) && _os_feature_enabled_impl())
  {
    v3 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v3)
    {
      v3 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      v5 = shouldLog | 2;
    }

    else
    {
      v5 = shouldLog;
    }

    oSLogObject = [v3 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
    {
      v7 = v5;
    }

    else
    {
      v7 = v5 & 2;
    }

    if (v7)
    {
      v40 = 136446210;
      v41 = "[SSDownloadHandler _connectToDaemon]";
      if (v8)
      {
        v9 = v8;
        v10 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:4];
        free(v9);
        SSFileLog(v3, @"%@", v11, v12, v13, v14, v15, v16, v10);
      }
    }
  }

  v17 = [SSWeakReference weakReferenceWithObject:self];
  if (!self->_controlConnection)
  {
    v18 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
    self->_controlConnection = v18;
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __37__SSDownloadHandler__connectToDaemon__block_invoke;
    v39[3] = &unk_1E84AC408;
    v39[4] = v17;
    [(SSXPCConnection *)v18 setDisconnectBlock:v39];
  }

  if (!self->_observerConnection)
  {
    v19 = objc_alloc_init(SSXPCConnection);
    self->_observerConnection = v19;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __37__SSDownloadHandler__connectToDaemon__block_invoke_2;
    v38[3] = &unk_1E84B0848;
    v38[4] = v17;
    [(SSXPCConnection *)v19 setMessageBlock:v38];
  }

  v20 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v20)
  {
    v20 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v20 shouldLog];
  if ([v20 shouldLogToDisk])
  {
    LODWORD(v22) = shouldLog2 | 2;
  }

  else
  {
    LODWORD(v22) = shouldLog2;
  }

  oSLogObject2 = [v20 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
  {
    v22 = v22;
  }

  else
  {
    v22 &= 2u;
  }

  if (v22)
  {
    v24 = objc_opt_class();
    handlerID = self->_handlerID;
    v40 = 138412546;
    v41 = v24;
    v42 = 2048;
    v43 = handlerID;
    LODWORD(v37) = 22;
    v26 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 1, "%@: Connecting download handler: %lld", &v40, v37);
    if (v26)
    {
      v27 = v26;
      v28 = [MEMORY[0x1E696AEC0] stringWithCString:v26 encoding:4];
      free(v27);
      SSFileLog(v20, @"%@", v29, v30, v31, v32, v33, v34, v28);
    }
  }

  v35 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v35, "0", 3);
  xpc_dictionary_set_int64(v35, "1", self->_handlerID);
  xpc_dictionary_set_BOOL(v35, "3", self->_sessionsShouldBlockOtherDownloads);
  SSXPCDictionarySetCFObject(v35, "4", self->_downloadPhasesToIgnore);
  xpc_dictionary_set_BOOL(v35, "5", self->_sessionsNeedPowerAssertion);
  createXPCEndpoint = [(SSXPCConnection *)self->_observerConnection createXPCEndpoint];
  xpc_dictionary_set_value(v35, "2", createXPCEndpoint);
  xpc_release(createXPCEndpoint);
  [(SSXPCConnection *)self->_controlConnection sendMessage:v35];
  xpc_release(v35);
}

uint64_t __37__SSDownloadHandler__connectToDaemon__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) object];

  return [v1 _sendDisconnectMessage];
}

uint64_t __37__SSDownloadHandler__connectToDaemon__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) object];

  return [v5 _handleMessage:a2 fromServerConnection:a3];
}

- (id)_controlConnection
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__33;
  v10 = __Block_byref_object_dispose__33;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__SSDownloadHandler__controlConnection__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __39__SSDownloadHandler__controlConnection__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 8);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_handleMessage:(id)message fromServerConnection:(id)connection
{
  xpc_retain(message);
  xpc_retain(connection);
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__SSDownloadHandler__handleMessage_fromServerConnection___block_invoke;
  block[3] = &unk_1E84AD640;
  block[4] = message;
  block[5] = self;
  block[6] = connection;
  dispatch_async(dispatchQueue, block);
}

void __57__SSDownloadHandler__handleMessage_fromServerConnection___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  int64 = xpc_dictionary_get_int64(*(a1 + 32), "0");
  v3 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    LODWORD(v5) = v4 | 2;
  }

  else
  {
    LODWORD(v5) = v4;
  }

  v6 = [v3 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (v5)
  {
    v7 = objc_opt_class();
    v8 = *(*(a1 + 40) + 48);
    v25 = 138412802;
    v26 = v7;
    v27 = 2048;
    v28 = v8;
    v29 = 2048;
    v30 = int64;
    v9 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_1D48BA000, v6, 1, "%@: Received message: (%lld, %lld)", &v25, 32);
    if (v9)
    {
      v10 = v9;
      v11 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:4];
      free(v10);
      SSFileLog(v3, @"%@", v12, v13, v14, v15, v16, v17, v11);
    }
  }

  if ((int64 - 1000) <= 5 && ((1 << (int64 + 24)) & 0x27) != 0)
  {
    xpc_retain(*(a1 + 32));
    xpc_retain(*(a1 + 48));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    v20 = *(*(a1 + 40) + 24);
    block[2] = __57__SSDownloadHandler__handleMessage_fromServerConnection___block_invoke_27;
    block[3] = &unk_1E84B0870;
    block[4] = v18;
    v24 = int64;
    v23 = v19;
    dispatch_async(v20, block);
  }

  else if (int64)
  {
    reply = xpc_dictionary_create_reply(*(a1 + 32));
    xpc_connection_send_message(*(a1 + 48), reply);
    xpc_release(reply);
  }

  xpc_release(*(a1 + 32));
  xpc_release(*(a1 + 48));
}

void __57__SSDownloadHandler__handleMessage_fromServerConnection___block_invoke_27(uint64_t a1)
{
  reply = xpc_dictionary_create_reply(*(a1 + 32));
  v3 = 0;
  v4 = *(a1 + 56);
  if (v4 > 1001)
  {
    if (v4 == 1002)
    {
      v5 = [*(a1 + 40) _sendSessionPauseWithMessage:*(a1 + 32)];
    }

    else
    {
      if (v4 != 1005)
      {
        goto LABEL_11;
      }

      v5 = [*(a1 + 40) _sendAuthenticationSessionWithMessage:*(a1 + 32)];
    }
  }

  else if (v4 == 1000)
  {
    v5 = [*(a1 + 40) _sendSessionHandleWithMessage:*(a1 + 32)];
  }

  else
  {
    if (v4 != 1001)
    {
      goto LABEL_11;
    }

    v5 = [*(a1 + 40) _sendSessionCancelWithMessage:*(a1 + 32)];
  }

  v3 = v5;
LABEL_11:
  xpc_dictionary_set_BOOL(reply, "0", v3);
  xpc_connection_send_message(*(a1 + 48), reply);
  xpc_release(reply);
  xpc_release(*(a1 + 32));
  v6 = *(a1 + 48);

  xpc_release(v6);
}

- (id)_newSessionWithMessage:(id)message
{
  v5 = [SSDownloadHandlerSession alloc];
  _controlConnection = [(SSDownloadHandler *)self _controlConnection];

  return [(SSDownloadHandlerSession *)v5 _initWithMessage:message controlConnection:_controlConnection];
}

- (BOOL)_sendAuthenticationSessionWithMessage:(id)message
{
  delegate = [(SSDownloadHandler *)self delegate];
  v6 = objc_opt_respondsToSelector();
  if (v6)
  {
    v7 = [(SSDownloadSession *)[SSDownloadAuthenticationSession alloc] _initWithMessage:message controlConnection:[(SSDownloadHandler *)self _controlConnection]];
    selfCopy = self;
    [(SSDownloadHandlerDelegate *)delegate downloadHandler:self handleAuthenticationSession:v7];
  }

  return v6 & 1;
}

- (void)_sendDisconnectMessage
{
  delegate = [(SSDownloadHandler *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    selfCopy = self;

    [(SSDownloadHandlerDelegate *)delegate downloadHandlerDidDisconnect:self];
  }
}

- (BOOL)_sendSessionCancelWithMessage:(id)message
{
  delegate = [(SSDownloadHandler *)self delegate];
  v6 = objc_opt_respondsToSelector();
  if (v6)
  {
    v7 = [(SSDownloadHandler *)self _newSessionWithMessage:message];
    selfCopy = self;
    [(SSDownloadHandlerDelegate *)delegate downloadHandler:self cancelSession:v7];
  }

  return v6 & 1;
}

- (BOOL)_sendSessionHandleWithMessage:(id)message
{
  delegate = [(SSDownloadHandler *)self delegate];
  v6 = objc_opt_respondsToSelector();
  if (v6)
  {
    v7 = [(SSDownloadHandler *)self _newSessionWithMessage:message];
    selfCopy = self;
    [(SSDownloadHandlerDelegate *)delegate downloadHandler:self handleSession:v7];
  }

  return v6 & 1;
}

- (BOOL)_sendSessionPauseWithMessage:(id)message
{
  delegate = [(SSDownloadHandler *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v6 = [(SSDownloadHandler *)self _newSessionWithMessage:message];
  selfCopy = self;
  v8 = [(SSDownloadHandlerDelegate *)delegate downloadHandler:self pauseSession:v6];

  return v8;
}

- (void)_setValue:(id)value forProperty:(const char *)property
{
  v25 = *MEMORY[0x1E69E9840];
  if (SSIsInternalBuild(self, a2) && _os_feature_enabled_impl())
  {
    v7 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = shouldLog | 2;
    }

    else
    {
      v9 = shouldLog;
    }

    oSLogObject = [v7 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
    {
      v11 = v9;
    }

    else
    {
      v11 = v9 & 2;
    }

    if (v11)
    {
      v23 = 136446210;
      v24 = "[SSDownloadHandler _setValue:forProperty:]";
      if (v12)
      {
        v13 = v12;
        v14 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:4];
        free(v13);
        SSFileLog(v7, @"%@", v15, v16, v17, v18, v19, v20, v14);
      }
    }
  }

  v21 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v21, "0", 31);
  xpc_dictionary_set_int64(v21, "1", self->_handlerID);
  v22 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_value(v22, property, value);
  xpc_dictionary_set_value(v21, "2", v22);
  xpc_release(v22);
  [(SSXPCConnection *)self->_controlConnection sendMessage:v21];
  xpc_release(v21);
}

@end