@interface SSDistributedNotificationCenter
- (NSString)namedPort;
- (SSDistributedNotificationCenter)initWithNamedPort:(id)port;
- (id)addObserverForName:(id)name queue:(id)queue usingBlock:(id)block;
- (void)_distributedNotificationMessage:(id)message connection:(id)connection;
- (void)_sendRegistrationMessage:(int64_t)message name:(id)name;
- (void)dealloc;
- (void)removeObserver:(id)observer;
@end

@implementation SSDistributedNotificationCenter

- (SSDistributedNotificationCenter)initWithNamedPort:(id)port
{
  v24 = *MEMORY[0x1E69E9840];
  if (SSIsInternalBuild(self, a2) && _os_feature_enabled_impl())
  {
    v5 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    oSLogObject = [v5 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
    {
      v9 = v7;
    }

    else
    {
      v9 = v7 & 2;
    }

    if (v9)
    {
      v22 = 136446210;
      v23 = "[SSDistributedNotificationCenter initWithNamedPort:]";
      if (v10)
      {
        v11 = v10;
        v12 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:4];
        free(v11);
        SSFileLog(v5, @"%@", v13, v14, v15, v16, v17, v18, v12);
      }
    }
  }

  if ([port length])
  {
    v21.receiver = self;
    v21.super_class = SSDistributedNotificationCenter;
    v19 = [(SSDistributedNotificationCenter *)&v21 init];
    if (v19)
    {
      v19->_dispatchQueue = dispatch_queue_create("com.apple.StoreServices.SSDistributedNotificationCenter", 0);
      v19->_observers = objc_alloc_init(MEMORY[0x1E695DF70]);
      v19->_portName = [port copy];
    }
  }

  else
  {

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Invalid port name"];
    return 0;
  }

  return v19;
}

- (void)dealloc
{
  [(SSXPCServer *)self->_server removeObserver:self selector:sel__distributedNotificationMessage_connection_ forMessage:1009];

  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
  }

  v4.receiver = self;
  v4.super_class = SSDistributedNotificationCenter;
  [(SSDistributedNotificationCenter *)&v4 dealloc];
}

- (id)addObserverForName:(id)name queue:(id)queue usingBlock:(id)block
{
  v30 = *MEMORY[0x1E69E9840];
  if (SSIsInternalBuild(self, a2) && _os_feature_enabled_impl())
  {
    v9 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = shouldLog | 2;
    }

    else
    {
      v11 = shouldLog;
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
    {
      v13 = v11;
    }

    else
    {
      v13 = v11 & 2;
    }

    if (v13)
    {
      LODWORD(v27) = 136446210;
      *(&v27 + 4) = "[SSDistributedNotificationCenter addObserverForName:queue:usingBlock:]";
      if (v14)
      {
        v15 = v14;
        v16 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:4];
        free(v15);
        SSFileLog(v9, @"%@", v17, v18, v19, v20, v21, v22, v16);
      }
    }
  }

  if (![name length])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Invalid name"];
LABEL_21:
    v23 = 0;
    return v23;
  }

  if (!block)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Invalid block"];
    goto LABEL_21;
  }

  *&v27 = 0;
  *(&v27 + 1) = &v27;
  v28 = 0x2020000000;
  v29 = 1;
  v23 = [[SSDistributedNotificationCenterObserver alloc] initWithName:name queue:queue block:block];
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__SSDistributedNotificationCenter_addObserverForName_queue_usingBlock___block_invoke;
  block[3] = &unk_1E84B0DA0;
  block[4] = self;
  block[5] = name;
  block[6] = v23;
  block[7] = &v27;
  dispatch_sync(dispatchQueue, block);
  if (*(*(&v27 + 1) + 24) == 1)
  {
    [(SSDistributedNotificationCenter *)self _sendRegistrationMessage:42 name:name];
  }

  _Block_object_dispose(&v27, 8);
  return v23;
}

uint64_t __71__SSDistributedNotificationCenter_addObserverForName_queue_usingBlock___block_invoke(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if (!*(v2 + 32))
  {
    *(a1[4] + 32) = [[SSXPCServer alloc] initWithServiceName:*(a1[4] + 24) entitlement:0 queue:*(a1[4] + 8)];
    [*(a1[4] + 32) addObserver:a1[4] selector:sel__distributedNotificationMessage_connection_ forMessage:1009];
    v2 = a1[4];
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = *(v2 + 16);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([objc_msgSend(*(*(&v9 + 1) + 8 * i) "name")])
        {
          *(*(a1[7] + 8) + 24) = 0;
          return [*(a1[4] + 16) addObject:a1[6]];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  return [*(a1[4] + 16) addObject:a1[6]];
}

- (NSString)namedPort
{
  v2 = self->_portName;

  return v2;
}

- (void)removeObserver:(id)observer
{
  v30 = *MEMORY[0x1E69E9840];
  if (SSIsInternalBuild(self, a2) && _os_feature_enabled_impl())
  {
    v5 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    oSLogObject = [v5 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
    {
      v9 = v7;
    }

    else
    {
      v9 = v7 & 2;
    }

    if (v9)
    {
      LODWORD(v25) = 136446210;
      *(&v25 + 4) = "[SSDistributedNotificationCenter removeObserver:]";
      if (v10)
      {
        v11 = v10;
        v12 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:4];
        free(v11);
        SSFileLog(v5, @"%@", v13, v14, v15, v16, v17, v18, v12);
      }
    }
  }

  *&v25 = 0;
  *(&v25 + 1) = &v25;
  v26 = 0x3052000000;
  v27 = __Block_byref_object_copy__38;
  v28 = __Block_byref_object_dispose__38;
  v29 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__SSDistributedNotificationCenter_removeObserver___block_invoke;
  block[3] = &unk_1E84B0DC8;
  block[4] = self;
  block[5] = observer;
  block[6] = &v25;
  block[7] = &v21;
  dispatch_sync(dispatchQueue, block);
  if (*(v22 + 24) == 1)
  {
    [(SSDistributedNotificationCenter *)self _sendRegistrationMessage:43 name:*(*(&v25 + 1) + 40)];
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
}

void *__50__SSDistributedNotificationCenter_removeObserver___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  result = [*(*(a1 + 32) + 16) indexOfObjectIdenticalTo:*(a1 + 40)];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = result;
    *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 40) name];
    [*(*(a1 + 32) + 16) removeObjectAtIndex:v3];
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v4 = *(*(a1 + 32) + 16);
    result = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (result)
    {
      v5 = result;
      v6 = *v9;
      while (2)
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v4);
          }

          result = [objc_msgSend(*(*(&v8 + 1) + 8 * v7) "name")];
          if (result)
          {
            *(*(*(a1 + 56) + 8) + 24) = 0;
            return result;
          }

          v7 = v7 + 1;
        }

        while (v5 != v7);
        result = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
        v5 = result;
        if (result)
        {
          continue;
        }

        break;
      }
    }
  }

  return result;
}

- (void)_distributedNotificationMessage:(id)message connection:(id)connection
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = objc_opt_class();
  v7 = SSXPCDictionaryCopyCFObjectWithClass(message, "1", v6);
  if ([(__CFDate *)v7 length])
  {
    selfCopy = self;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    observers = self->_observers;
    v10 = [(NSMutableArray *)observers countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(observers);
          }

          v14 = *(*(&v16 + 1) + 8 * i);
          if ([objc_msgSend(v14 "name")])
          {
            global_queue = [v14 dispatchQueue];
            if (global_queue || (global_queue = dispatch_get_global_queue(0, 0)) != 0)
            {
              dispatch_async(global_queue, [v14 block]);
            }
          }
        }

        v11 = [(NSMutableArray *)observers countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }
  }
}

- (void)_sendRegistrationMessage:(int64_t)message name:(id)name
{
  v7 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v8, "0", message);
  SSXPCDictionarySetCFObject(v8, "1", self->_portName);
  SSXPCDictionarySetCFObject(v8, "2", name);
  v9 = dispatch_semaphore_create(0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__SSDistributedNotificationCenter__sendRegistrationMessage_name___block_invoke;
  v10[3] = &unk_1E84AF2C8;
  v10[4] = v9;
  [(SSXPCConnection *)v7 sendMessage:v8 withReply:v10];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v9);
  xpc_release(v8);
}

@end