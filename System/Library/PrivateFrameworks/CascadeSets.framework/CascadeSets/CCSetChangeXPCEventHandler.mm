@interface CCSetChangeXPCEventHandler
+ (id)sharedInstance;
- (CCSetChangeXPCEventHandler)init;
- (void)_handleXPCEvent:(id)event;
- (void)_setupEventHandlingWithListener:(id)listener;
- (void)addListener:(id)listener;
- (void)removeListener:(id)listener;
@end

@implementation CCSetChangeXPCEventHandler

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__CCSetChangeXPCEventHandler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance__pasOnceToken2_2 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken2_2, block);
  }

  v2 = sharedInstance__pasExprOnceResult_2;

  return v2;
}

void __44__CCSetChangeXPCEventHandler_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_autoreleasePoolPush();
  objc_opt_class();
  v2 = objc_opt_new();
  v3 = sharedInstance__pasExprOnceResult_2;
  sharedInstance__pasExprOnceResult_2 = v2;

  objc_autoreleasePoolPop(v1);
}

- (CCSetChangeXPCEventHandler)init
{
  v8.receiver = self;
  v8.super_class = CCSetChangeXPCEventHandler;
  v2 = [(CCSetChangeXPCEventHandler *)&v8 init];
  if (v2)
  {
    v3 = kCCSetChangeXPCEventStream;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create(v3, v4);
    queue = v2->_queue;
    v2->_queue = v5;
  }

  return v2;
}

- (void)_setupEventHandlingWithListener:(id)listener
{
  v16 = *MEMORY[0x1E69E9840];
  listenerCopy = listener;
  queue = [(CCSetChangeXPCEventHandler *)self queue];
  dispatch_assert_queue_V2(queue);

  listeners = self->_listeners;
  if (listeners)
  {
    [(NSMutableArray *)listeners addObject:listenerCopy];
  }

  else
  {
    v7 = objc_opt_new();
    v8 = self->_listeners;
    self->_listeners = v7;

    [(NSMutableArray *)self->_listeners addObject:listenerCopy];
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = objc_opt_class();
      _os_log_impl(&dword_1B6DB2000, v9, OS_LOG_TYPE_DEFAULT, "%@ setting up xpc_event handling", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v10 = kCCSetChangeXPCEventStream;
    queue = self->_queue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __62__CCSetChangeXPCEventHandler__setupEventHandlingWithListener___block_invoke;
    handler[3] = &unk_1E7C8BDD0;
    objc_copyWeak(&v13, buf);
    xpc_set_event_stream_handler(v10, queue, handler);
    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }
}

void __62__CCSetChangeXPCEventHandler__setupEventHandlingWithListener___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleXPCEvent:v3];
}

- (void)_handleXPCEvent:(id)event
{
  v42 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  queue = [(CCSetChangeXPCEventHandler *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{xpc_dictionary_get_string(eventCopy, *MEMORY[0x1E69E9E40])}];
  v36 = 0;
  v26 = eventCopy;
  v7 = [CCSet setFromXPCDictionary:eventCopy error:&v36];
  v8 = v36;
  v9 = __biome_log_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = v8;
    }

    *buf = 138412290;
    v38 = v10;
    _os_log_impl(&dword_1B6DB2000, v9, OS_LOG_TYPE_DEFAULT, "Received xpc_event for set: %@", buf, 0xCu);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  listeners = [(CCSetChangeXPCEventHandler *)self listeners];
  v12 = [listeners countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v33;
    do
    {
      v15 = 0;
      do
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(listeners);
        }

        v16 = *(*(&v32 + 1) + 8 * v15);
        identifier = [v16 identifier];
        v18 = [identifier isEqual:v6];

        if (v18)
        {
          if (([v16 handlesUpdateForSet:v7] & 1) == 0)
          {
            v21 = __biome_log_for_category();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v38 = v7;
              _os_log_debug_impl(&dword_1B6DB2000, v21, OS_LOG_TYPE_DEBUG, "Current process does not have read-only or greater access to set: %@, skipping set change update", buf, 0xCu);
            }

            goto LABEL_17;
          }

          handlerBlock = [v16 handlerBlock];

          if (handlerBlock)
          {
            queue2 = [v16 queue];
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __46__CCSetChangeXPCEventHandler__handleXPCEvent___block_invoke;
            block[3] = &unk_1E7C8BE20;
            v29 = v7;
            v30 = v16;
            v31 = v8;
            dispatch_async(queue2, block);

            goto LABEL_18;
          }

          batchHandlerBlock = [v16 batchHandlerBlock];

          if (batchHandlerBlock)
          {
            if (v8)
            {
              v21 = __biome_log_for_category();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v38 = v6;
                v39 = 2112;
                v40 = v8;
                _os_log_error_impl(&dword_1B6DB2000, v21, OS_LOG_TYPE_ERROR, "Unable to decode a set from XPC event for listener: %@ with error: %@.", buf, 0x16u);
              }

LABEL_17:

              goto LABEL_18;
            }

            setChangeQueue = [v16 setChangeQueue];
            [setChangeQueue enqueue:v7];

            queue3 = [v16 queue];
            v27[0] = MEMORY[0x1E69E9820];
            v27[1] = 3221225472;
            v27[2] = __46__CCSetChangeXPCEventHandler__handleXPCEvent___block_invoke_11;
            v27[3] = &unk_1E7C8BE70;
            v27[4] = v16;
            dispatch_async(queue3, v27);
          }
        }

LABEL_18:
        ++v15;
      }

      while (v13 != v15);
      v25 = [listeners countByEnumeratingWithState:&v32 objects:v41 count:16];
      v13 = v25;
    }

    while (v25);
  }
}

void __46__CCSetChangeXPCEventHandler__handleXPCEvent___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E698E9D0];
  v3 = [*(a1 + 32) personaIdentifier];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__CCSetChangeXPCEventHandler__handleXPCEvent___block_invoke_2;
  v7[3] = &unk_1E7C8BDF8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = v4;
  v9 = v5;
  v10 = v6;
  [v2 runAsPersonaIdentifier:v3 block:v7];
}

void __46__CCSetChangeXPCEventHandler__handleXPCEvent___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 code] == 1)
  {
    v4 = __biome_log_for_category();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __46__CCSetChangeXPCEventHandler__handleXPCEvent___block_invoke_2_cold_1(a1, v3, v4);
    }
  }

  else
  {
    v4 = [*(a1 + 40) handlerBlock];
    (*(v4 + 16))(v4, *(a1 + 32), *(a1 + 48));
  }
}

void __46__CCSetChangeXPCEventHandler__handleXPCEvent___block_invoke_11(uint64_t a1)
{
  v2 = [*(a1 + 32) setChangeQueue];
  v3 = [v2 dequeueAll];

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__CCSetChangeXPCEventHandler__handleXPCEvent___block_invoke_2_13;
  v4[3] = &unk_1E7C8BE48;
  v4[4] = *(a1 + 32);
  [CCSetChangeQueue groupSetsByPersonaIdentifier:v3 enumerateGroupsUsingBlock:v4];
}

void __46__CCSetChangeXPCEventHandler__handleXPCEvent___block_invoke_2_13(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x1E698E9D0];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__CCSetChangeXPCEventHandler__handleXPCEvent___block_invoke_3;
  v10[3] = &unk_1E7C8BDF8;
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 32);
  v8 = v6;
  v9 = v5;
  [v7 runAsPersonaIdentifier:v9 block:v10];
}

void __46__CCSetChangeXPCEventHandler__handleXPCEvent___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 code] == 1)
  {
    v4 = __biome_log_for_category();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __46__CCSetChangeXPCEventHandler__handleXPCEvent___block_invoke_3_cold_1(a1, v3, v4);
    }
  }

  else
  {
    v4 = [*(a1 + 48) batchHandlerBlock];
    (*(v4 + 16))(v4, *(a1 + 40));
  }
}

- (void)addListener:(id)listener
{
  listenerCopy = listener;
  queue = [(CCSetChangeXPCEventHandler *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__CCSetChangeXPCEventHandler_addListener___block_invoke;
  v7[3] = &unk_1E7C8B0D0;
  v7[4] = self;
  v8 = listenerCopy;
  v6 = listenerCopy;
  dispatch_sync(queue, v7);
}

uint64_t __42__CCSetChangeXPCEventHandler_addListener___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = __biome_log_for_category();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1B6DB2000, v2, OS_LOG_TYPE_DEFAULT, "%@ adding listener: %@", &v6, 0x16u);
  }

  return [*(a1 + 32) _setupEventHandlingWithListener:*(a1 + 40)];
}

- (void)removeListener:(id)listener
{
  listenerCopy = listener;
  queue = [(CCSetChangeXPCEventHandler *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__CCSetChangeXPCEventHandler_removeListener___block_invoke;
  v7[3] = &unk_1E7C8B0D0;
  v7[4] = self;
  v8 = listenerCopy;
  v6 = listenerCopy;
  dispatch_sync(queue, v7);
}

void __45__CCSetChangeXPCEventHandler_removeListener___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = __biome_log_for_category();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1B6DB2000, v2, OS_LOG_TYPE_DEFAULT, "%@ removing listener: %@", &v6, 0x16u);
  }

  v5 = [*(a1 + 32) listeners];
  [v5 removeObject:*(a1 + 40)];
}

void __46__CCSetChangeXPCEventHandler__handleXPCEvent___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = [*(a1 + 32) personaIdentifier];
  v7 = *(a1 + 32);
  v8 = 138412802;
  v9 = v6;
  v10 = 2112;
  v11 = v7;
  v12 = 2112;
  v13 = a2;
  _os_log_error_impl(&dword_1B6DB2000, a3, OS_LOG_TYPE_ERROR, "Failed to assume persona %@ for set change event from set %@ with error %@, not invoking client block", &v8, 0x20u);
}

void __46__CCSetChangeXPCEventHandler__handleXPCEvent___block_invoke_3_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = 138412802;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_1B6DB2000, log, OS_LOG_TYPE_ERROR, "Failed to assume persona %@ for set change event from set %@ with error %@, not invoking batch block", &v5, 0x20u);
}

@end