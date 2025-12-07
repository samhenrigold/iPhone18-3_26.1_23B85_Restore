@interface SSPreorderManager
- (NSArray)itemKinds;
- (NSArray)preorders;
- (SSPreorderManager)initWithItemKinds:(id)kinds;
- (void)_connectAsObserver;
- (void)_handleMessage:(id)message fromServerConnection:(id)connection;
- (void)_registerAsObserver;
- (void)_sendMessageToObservers:(SEL)observers;
- (void)addObserver:(id)observer;
- (void)cancelPreorders:(id)preorders withCompletionBlock:(id)block;
- (void)dealloc;
- (void)reloadFromServer;
- (void)removeObserver:(id)observer;
@end

@implementation SSPreorderManager

- (SSPreorderManager)initWithItemKinds:(id)kinds
{
  v7.receiver = self;
  v7.super_class = SSPreorderManager;
  v4 = [(SSPreorderManager *)&v7 init];
  if (v4)
  {
    v4->_dispatchQueue = dispatch_queue_create("com.apple.StoreServices.SSPreorderManager", 0);
    v4->_observerQueue = dispatch_queue_create("com.apple.StoreServices.SSPreorderManager.observerQueue", 0);
    v4->_itemKinds = [kinds copy];
    v4->_observers = CFArrayCreateMutable(0, 0, 0);
    [(SSPreorderManager *)v4 _connectAsObserver];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v4, __DaemonLaunchNotification_1, @"com.apple.iTunesStore.daemon.launched", 0, CFNotificationSuspensionBehaviorCoalesce);
  }

  return v4;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.iTunesStore.daemon.launched", 0);
  dispatch_release(self->_dispatchQueue);
  dispatch_release(self->_observerQueue);
  [(SSXPCConnection *)self->_observerConnection setMessageBlock:0];

  CFRelease(self->_observers);
  v4.receiver = self;
  v4.super_class = SSPreorderManager;
  [(SSPreorderManager *)&v4 dealloc];
}

- (void)addObserver:(id)observer
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__SSPreorderManager_addObserver___block_invoke;
  v4[3] = &unk_1E84AC458;
  v4[4] = self;
  v4[5] = observer;
  dispatch_sync(dispatchQueue, v4);
}

- (void)cancelPreorders:(id)preorders withCompletionBlock:(id)block
{
  v36 = *MEMORY[0x1E69E9840];
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
      v34 = 136446210;
      v35 = "[SSPreorderManager cancelPreorders:withCompletionBlock:]";
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
  xpc_dictionary_set_int64(v21, "0", 35);
  v22 = xpc_array_create(0, 0);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v23 = [preorders countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v30;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v30 != v25)
        {
          objc_enumerationMutation(preorders);
        }

        xpc_array_set_int64(v22, 0xFFFFFFFFFFFFFFFFLL, [*(*(&v29 + 1) + 8 * i) persistentIdentifier]);
      }

      v24 = [preorders countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v24);
  }

  xpc_dictionary_set_value(v21, "1", v22);
  xpc_release(v22);
  connection = self->_connection;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __57__SSPreorderManager_cancelPreorders_withCompletionBlock___block_invoke;
  v28[3] = &unk_1E84AC7E0;
  v28[4] = block;
  [(SSXPCConnection *)connection sendMessage:v21 withReply:v28];
  xpc_release(v21);
}

void __57__SSPreorderManager_cancelPreorders_withCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2 && MEMORY[0x1DA6E0380](a2) == MEMORY[0x1E69E9E80] && xpc_dictionary_get_BOOL(a2, "0"))
  {
    v4 = 0;
  }

  else
  {
    v4 = SSError(@"SSErrorDomain", 100, 0, 0);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    global_queue = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __57__SSPreorderManager_cancelPreorders_withCompletionBlock___block_invoke_2;
    v7[3] = &unk_1E84AC738;
    v7[4] = v4;
    v7[5] = v5;
    dispatch_async(global_queue, v7);
  }
}

- (NSArray)itemKinds
{
  v2 = self->_itemKinds;

  return v2;
}

- (NSArray)preorders
{
  v26 = *MEMORY[0x1E69E9840];
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
      LODWORD(v21) = 136446210;
      *(&v21 + 4) = "[SSPreorderManager preorders]";
      if (v8)
      {
        v9 = v8;
        v10 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:4];
        free(v9);
        SSFileLog(v3, @"%@", v11, v12, v13, v14, v15, v16, v10);
      }
    }
  }

  *&v21 = 0;
  *(&v21 + 1) = &v21;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy__36;
  v24 = __Block_byref_object_dispose__36;
  v25 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__SSPreorderManager_preorders__block_invoke;
  block[3] = &unk_1E84AF0E0;
  block[4] = self;
  block[5] = &v21;
  dispatch_sync(dispatchQueue, block);
  v18 = *(*(&v21 + 1) + 40);
  _Block_object_dispose(&v21, 8);
  return v18;
}

id __30__SSPreorderManager_preorders__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v4, "0", 34);
    v5 = dispatch_semaphore_create(0);
    v6 = *(*(a1 + 32) + 8);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __30__SSPreorderManager_preorders__block_invoke_2;
    v8[3] = &unk_1E84B0BE8;
    v8[4] = v3;
    v8[5] = v5;
    [v6 sendMessage:v4 withReply:v8];
    dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v5);
    xpc_release(v4);
    *(*(a1 + 32) + 56) = [v3 copy];

    v2 = *(*(a1 + 32) + 56);
  }

  result = v2;
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

intptr_t __30__SSPreorderManager_preorders__block_invoke_2(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "0");
  if (value)
  {
    v4 = value;
    if (MEMORY[0x1DA6E0380]() == MEMORY[0x1E69E9E50])
    {
      count = xpc_array_get_count(v4);
      if (count >= 1)
      {
        v6 = count;
        for (i = 0; i != v6; ++i)
        {
          v8 = [[SSPreorder alloc] initWithXPCEncoding:xpc_array_get_value(v4, i)];
          [*(a1 + 32) addObject:v8];
        }
      }
    }
  }

  v9 = *(a1 + 40);

  return dispatch_semaphore_signal(v9);
}

- (void)reloadFromServer
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
      v19 = "[SSPreorderManager reloadFromServer]";
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
  xpc_dictionary_set_int64(v17, "0", 36);
  [(SSXPCConnection *)self->_connection sendMessage:v17];
  xpc_release(v17);
}

- (void)removeObserver:(id)observer
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__SSPreorderManager_removeObserver___block_invoke;
  v4[3] = &unk_1E84AC458;
  v4[4] = self;
  v4[5] = observer;
  dispatch_sync(dispatchQueue, v4);
}

void __36__SSPreorderManager_removeObserver___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v7.length = CFArrayGetCount(v2);
  v7.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v2, v7, *(a1 + 40));
  if (FirstIndexOfValue != -1)
  {
    v4 = FirstIndexOfValue;
    v5 = *(*(a1 + 32) + 48);

    CFArrayRemoveValueAtIndex(v5, v4);
  }
}

- (void)_connectAsObserver
{
  self->_connection = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3052000000;
  v5[3] = __Block_byref_object_copy__36;
  v5[4] = __Block_byref_object_dispose__36;
  v5[5] = self;
  v3 = objc_alloc_init(SSXPCConnection);
  self->_observerConnection = v3;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__SSPreorderManager__connectAsObserver__block_invoke;
  v4[3] = &unk_1E84B0C10;
  v4[4] = self;
  v4[5] = v5;
  [(SSXPCConnection *)v3 setMessageBlock:v4];
  [(SSPreorderManager *)self _registerAsObserver];
  _Block_object_dispose(v5, 8);
}

void __39__SSPreorderManager__connectAsObserver__block_invoke(uint64_t a1, xpc_object_t object, void *a3)
{
  xpc_retain(object);
  xpc_retain(a3);
  v6 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__SSPreorderManager__connectAsObserver__block_invoke_2;
  block[3] = &unk_1E84ADF80;
  v7 = *(a1 + 40);
  block[5] = a3;
  block[6] = v7;
  block[4] = object;
  dispatch_async(v6, block);
}

void __39__SSPreorderManager__connectAsObserver__block_invoke_2(uint64_t a1)
{
  [*(*(*(a1 + 48) + 8) + 40) _handleMessage:*(a1 + 32) fromServerConnection:*(a1 + 40)];
  xpc_release(*(a1 + 32));
  v2 = *(a1 + 40);

  xpc_release(v2);
}

- (void)_handleMessage:(id)message fromServerConnection:(id)connection
{
  int64 = xpc_dictionary_get_int64(message, "0");
  if (int64)
  {
    v8 = int64;
    reply = xpc_dictionary_create_reply(message);
    xpc_connection_send_message(connection, reply);
    xpc_release(reply);
    if (v8 == 1007)
    {

      self->_preorders = 0;

      [(SSPreorderManager *)self _sendMessageToObservers:sel_preorderManagerPreordersDidChange_];
    }
  }
}

- (void)_registerAsObserver
{
  v22 = *MEMORY[0x1E69E9840];
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
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v7 = v5;
    }

    else
    {
      v7 = v5 & 2;
    }

    if (v7)
    {
      v20 = 136446210;
      v21 = "[SSPreorderManager _registerAsObserver]";
      if (v8)
      {
        v9 = v8;
        v10 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:4];
        free(v9);
        SSFileLog(v3, @"%@", v11, v12, v13, v14, v15, v16, v10);
      }
    }
  }

  createXPCEndpoint = [(SSXPCConnection *)self->_observerConnection createXPCEndpoint];
  if (createXPCEndpoint)
  {
    v18 = createXPCEndpoint;
    v19 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v19, "0", 33);
    SSXPCDictionarySetCFObject(v19, "1", self->_itemKinds);
    xpc_dictionary_set_value(v19, "2", v18);
    [(SSXPCConnection *)self->_connection sendMessage:v19];
    xpc_release(v19);
    xpc_release(v18);
  }
}

- (void)_sendMessageToObservers:(SEL)observers
{
  if (self->_observers)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    Count = CFArrayGetCount(self->_observers);
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        [v5 addObject:{CFArrayGetValueAtIndex(self->_observers, i)}];
      }

      observerQueue = self->_observerQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __45__SSPreorderManager__sendMessageToObservers___block_invoke;
      block[3] = &unk_1E84AF158;
      block[4] = self;
      block[5] = v5;
      block[6] = observers;
      dispatch_async(observerQueue, block);
    }
  }
}

void *__45__SSPreorderManager__sendMessageToObservers___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(a1 + 40);
  result = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 performSelector:*(a1 + 48) withObject:*(a1 + 32)];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      result = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

@end