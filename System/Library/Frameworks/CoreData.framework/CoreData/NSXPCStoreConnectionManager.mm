@interface NSXPCStoreConnectionManager
- (id)initForStore:(id)store;
- (intptr_t)_checkinConnection:(intptr_t)result;
- (uint64_t)_checkoutConnection:(uint64_t)connection;
- (void)dealloc;
- (void)disconnectAllConnections:(uint64_t)connections;
- (void)sendMessageWithContext:(uint64_t)context;
@end

@implementation NSXPCStoreConnectionManager

- (id)initForStore:(id)store
{
  v20 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = NSXPCStoreConnectionManager;
  v4 = [(NSXPCStoreConnectionManager *)&v19 init];
  if (v4)
  {
    v5 = [objc_msgSend(store "URL")];
    objc_initWeak(&location, store);
    v6 = objc_msgSend_valueForKey_([store options]);
    v7 = +[(_PFTask *)0x1ED4BE000];
    v8 = 2;
    if (v7 >= 0x80000001)
    {
      v8 = 3;
    }

    if (v6)
    {
      integerValue = [v6 integerValue];
      if (integerValue <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = integerValue;
      }
    }

    v4->_maxConnections = v8;
    allConnections = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4->_allConnections = allConnections;
    if (v4->_maxConnections)
    {
      v11 = 0;
      do
      {
        v12 = [[NSXPCStoreConnection alloc] initForStore:store];
        if (v12)
        {
          [(NSMutableArray *)v4->_allConnections addObject:v12];
        }

        ++v11;
      }

      while (v11 < v4->_maxConnections);
      allConnections = v4->_allConnections;
    }

    if (![(NSMutableArray *)allConnections count])
    {
      v16 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [store URL]);
      v17 = [_NSCoreDataException exceptionWithName:4224 code:v16 reason:0 userInfo:?];
      objc_exception_throw(v17);
    }

    v13 = [(NSMutableArray *)v4->_allConnections mutableCopy];
    v4->_availableConnections = v13;
    v4->_connectionLock._os_unfair_lock_opaque = 0;
    v4->_poolCounter = dispatch_semaphore_create([(NSMutableArray *)v13 count]);
    v14 = [objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] store)];
    v4->_processingQueue = dispatch_queue_create(v14, MEMORY[0x1E69E96A8]);

    objc_destroyWeak(&location);
  }

  return v4;
}

- (void)dealloc
{
  p_processingQueue = &self->_processingQueue;
  processingQueue = self->_processingQueue;
  if (processingQueue)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__NSXPCStoreConnectionManager_dealloc__block_invoke;
    block[3] = &unk_1E6EC16F0;
    block[4] = self;
    dispatch_barrier_sync(processingQueue, block);
    poolCounter = self->_processingQueue;
LABEL_4:
    dispatch_release(poolCounter);
    *p_processingQueue = 0;
    goto LABEL_5;
  }

  p_processingQueue = &self->_poolCounter;
  poolCounter = self->_poolCounter;
  if (poolCounter)
  {
    goto LABEL_4;
  }

LABEL_5:
  v6.receiver = self;
  v6.super_class = NSXPCStoreConnectionManager;
  [(NSXPCStoreConnectionManager *)&v6 dealloc];
}

void __38__NSXPCStoreConnectionManager_dealloc__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = *(*(a1 + 32) + 16);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(NSXPCStoreConnection *)*(*(&v9 + 1) + 8 * i) disconnect];
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  *(*(a1 + 32) + 16) = 0;
  *(*(a1 + 32) + 8) = 0;
  v8 = *(*(a1 + 32) + 32);
  if (v8)
  {
    dispatch_release(v8);
    *(*(a1 + 32) + 32) = 0;
  }

  objc_autoreleasePoolPop(v2);
}

- (uint64_t)_checkoutConnection:(uint64_t)connection
{
  v18 = *MEMORY[0x1E69E9840];
  if (!connection)
  {
    return 0;
  }

  v4 = *(connection + 32);
  v5 = dispatch_time(0, 120000000000);
  v6 = dispatch_semaphore_wait(v4, v5);
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v8 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v10 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v8)
      {
        if (v10)
        {
          *buf = 134217984;
          v17 = v6;
LABEL_17:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error:  NSXPCStoreConnectionManager timed out waiting for a connection - %ld\n", buf, 0xCu);
        }
      }

      else if (v10)
      {
        *buf = 134217984;
        v17 = v6;
        goto LABEL_17;
      }
    }

    _NSCoreDataLog_console(1, " NSXPCStoreConnectionManager timed out waiting for a connection - %ld", v6);
    objc_autoreleasePoolPop(v7);
    return 0;
  }

  os_unfair_lock_lock_with_options();
  lastObject = [*(connection + 8) lastObject];
  v12 = lastObject;
  if (lastObject)
  {
    v13 = lastObject;
    v14 = v12;
    [*(connection + 8) removeObject:v12];
  }

  else
  {
    v14 = 0;
  }

  os_unfair_lock_unlock((connection + 40));
  if (a2)
  {
    [(NSXPCStoreConnection *)v14 reconnect];
  }

  return v14;
}

- (intptr_t)_checkinConnection:(intptr_t)result
{
  if (result && a2)
  {
    v3 = result;
    os_unfair_lock_lock_with_options();
    [*(v3 + 8) addObject:a2];

    os_unfair_lock_unlock((v3 + 40));
    v4 = *(v3 + 32);

    return dispatch_semaphore_signal(v4);
  }

  return result;
}

- (void)sendMessageWithContext:(uint64_t)context
{
  if (context)
  {
    if (a2)
    {
      v2 = *(context + 48);
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = __54__NSXPCStoreConnectionManager_sendMessageWithContext___block_invoke;
      v3[3] = &unk_1E6EC1600;
      v3[4] = context;
      v3[5] = a2;
      dispatch_sync(v2, v3);
    }
  }
}

uint64_t __54__NSXPCStoreConnectionManager_sendMessageWithContext___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v3 = [(NSXPCStoreConnectionManager *)*(a1 + 32) _checkoutConnection:?];
  if (v3)
  {
    v4 = v3;
    [(NSXPCStoreConnection *)v3 sendMessageWithContext:?];
    v5 = *(a1 + 40);
    if (!v5 || !*(v5 + 24))
    {
      [(NSXPCStoreConnection *)v4 disconnect];
    }

    goto LABEL_16;
  }

  v6 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog >= 1)
  {
    if (_pflogging_catastrophic_mode)
    {
      LogStream = _PFLogGetLogStream(1);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
LABEL_18:
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: manager sendMessageWithContext: unable to checkout connection.\n", buf, 2u);
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(1);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        goto LABEL_18;
      }
    }
  }

  _NSCoreDataLog_console(1, "manager sendMessageWithContext: unable to checkout connection.");
  objc_autoreleasePoolPop(v6);
  v9 = *(a1 + 40);
  if (v9)
  {
    objc_setProperty_nonatomic(v9, v8, 0, 24);
  }

  v10 = objc_alloc(MEMORY[0x1E696ABC0]);
  v12 = [v10 initWithDomain:*MEMORY[0x1E696A250] code:4099 userInfo:0];
  v13 = *(a1 + 40);
  if (v13)
  {
    objc_setProperty_nonatomic(v13, v11, v12, 32);
  }

  v4 = 0;
LABEL_16:
  [(NSXPCStoreConnectionManager *)*(a1 + 32) _checkinConnection:v4];
  return [v2 drain];
}

- (void)disconnectAllConnections:(uint64_t)connections
{
  if (connections)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x3052000000;
    v9 = __Block_byref_object_copy__38;
    v10 = __Block_byref_object_dispose__38;
    v11 = 0;
    v2 = *(connections + 48);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__NSXPCStoreConnectionManager_disconnectAllConnections___block_invoke;
    block[3] = &unk_1E6EC4868;
    v5 = a2;
    block[4] = connections;
    block[5] = &v6;
    dispatch_barrier_sync(v2, block);
    v3 = v7[5];
    if (v3)
    {
      objc_exception_throw(v3);
    }

    _Block_object_dispose(&v6, 8);
  }
}

uint64_t __56__NSXPCStoreConnectionManager_disconnectAllConnections___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v3 = [MEMORY[0x1E695DF70] array];
  os_unfair_lock_lock_with_options();
  v4 = [*(*(a1 + 32) + 16) count];
  os_unfair_lock_unlock((*(a1 + 32) + 40));
  if (v4)
  {
    for (i = 0; i < v4; ++i)
    {
      v6 = [(NSXPCStoreConnectionManager *)*(a1 + 32) _checkoutConnection:?];
      if (v6)
      {
        [v3 addObject:v6];
      }

      else
      {
        os_unfair_lock_lock_with_options();
        v4 = [*(*(a1 + 32) + 16) count];
        os_unfair_lock_unlock((*(a1 + 32) + 40));
      }
    }
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = [v3 countByEnumeratingWithState:&v35 objects:v42 count:16];
  if (v7)
  {
    v8 = *v36;
    do
    {
      for (j = 0; j != v7; ++j)
      {
        if (*v36 != v8)
        {
          objc_enumerationMutation(v3);
        }

        [(NSXPCStoreConnection *)*(*(&v35 + 1) + 8 * j) performAndWait:?];
      }

      v7 = [v3 countByEnumeratingWithState:&v35 objects:v42 count:16];
    }

    while (v7);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = [v3 countByEnumeratingWithState:&v31 objects:v41 count:16];
  if (v10)
  {
    v11 = *v32;
    do
    {
      for (k = 0; k != v10; ++k)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(v3);
        }

        v13 = *(*(&v31 + 1) + 8 * k);
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __56__NSXPCStoreConnectionManager_disconnectAllConnections___block_invoke_3;
        v30[3] = &unk_1E6EC16F0;
        v30[4] = v13;
        [(NSXPCStoreConnection *)v13 performAndWait:v30];
      }

      v10 = [v3 countByEnumeratingWithState:&v31 objects:v41 count:16];
    }

    while (v10);
  }

  if (*(a1 + 48) == 1)
  {
    v28 = 0uLL;
    v29 = 0uLL;
    v26 = 0uLL;
    v27 = 0uLL;
    v14 = [v3 countByEnumeratingWithState:&v26 objects:v40 count:16];
    if (v14)
    {
      v15 = *v27;
      do
      {
        for (m = 0; m != v14; ++m)
        {
          if (*v27 != v15)
          {
            objc_enumerationMutation(v3);
          }

          [(NSXPCStoreConnectionManager *)*(a1 + 32) _checkinConnection:?];
        }

        v14 = [v3 countByEnumeratingWithState:&v26 objects:v40 count:16];
      }

      while (v14);
    }
  }

  else
  {
    v24 = 0uLL;
    v25 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v17 = [v3 countByEnumeratingWithState:&v22 objects:v39 count:16];
    if (v17)
    {
      v18 = *v23;
      do
      {
        for (n = 0; n != v17; ++n)
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(v3);
          }

          v20 = *(*(&v22 + 1) + 8 * n);
          if (v20)
          {
            dispatch_semaphore_signal(*(*(a1 + 32) + 32));
          }
        }

        v17 = [v3 countByEnumeratingWithState:&v22 objects:v39 count:16];
      }

      while (v17);
    }
  }

  [v3 removeAllObjects];
  return [v2 drain];
}

@end