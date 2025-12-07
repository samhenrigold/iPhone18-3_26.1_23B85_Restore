@interface CCSetChangeXPCNotifier
+ (id)sharedInstance;
- (CCSetChangeXPCNotifier)init;
- (void)_handlePublisherAction:(unsigned int)action token:(unint64_t)token descriptor:(id)descriptor;
- (void)notifyChangeToSet:(id)set;
@end

@implementation CCSetChangeXPCNotifier

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__CCSetChangeXPCNotifier_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance__pasOnceToken2_1 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken2_1, block);
  }

  v2 = sharedInstance__pasExprOnceResult_1;

  return v2;
}

void __40__CCSetChangeXPCNotifier_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_autoreleasePoolPush();
  objc_opt_class();
  v2 = objc_opt_new();
  v3 = sharedInstance__pasExprOnceResult_1;
  sharedInstance__pasExprOnceResult_1 = v2;

  objc_autoreleasePoolPop(v1);
}

- (CCSetChangeXPCNotifier)init
{
  v14.receiver = self;
  v14.super_class = CCSetChangeXPCNotifier;
  v2 = [(CCSetChangeXPCNotifier *)&v14 init];
  if (v2)
  {
    v3 = objc_opt_new();
    tokens = v2->_tokens;
    v2->_tokens = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.cascade.setChange.xpc.notifier", v5);
    queue = v2->_queue;
    v2->_queue = v6;

    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1B6DB2000, v8, OS_LOG_TYPE_DEFAULT, "CCSetChangeXPCNotifier setting up XPC event publisher", buf, 2u);
    }

    v9 = xpc_event_publisher_create();
    publisher = v2->_publisher;
    v2->_publisher = v9;

    objc_initWeak(buf, v2);
    objc_copyWeak(&v12, buf);
    xpc_event_publisher_set_handler();
    xpc_event_publisher_set_error_handler();
    xpc_event_publisher_activate();
    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }

  return v2;
}

void __30__CCSetChangeXPCNotifier_init__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePublisherAction:a2 token:a3 descriptor:v7];
}

void __30__CCSetChangeXPCNotifier_init__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = xpc_strerror();
  v4 = __biome_log_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __30__CCSetChangeXPCNotifier_init__block_invoke_2_cold_1(a2, v3, v4);
  }
}

- (void)_handlePublisherAction:(unsigned int)action token:(unint64_t)token descriptor:(id)descriptor
{
  v19 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (action == 2)
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_1B6DB2000, v11, OS_LOG_TYPE_DEFAULT, "CCSetChangeXPCNotifier _handlePublisherAction: initial barrier", &v17, 2u);
    }
  }

  else if (action == 1)
  {
    v12 = __biome_log_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:token];
      v17 = 138412290;
      v18 = v13;
      _os_log_impl(&dword_1B6DB2000, v12, OS_LOG_TYPE_DEFAULT, "CCSetChangeXPCNotifier removing listener with token: %@", &v17, 0xCu);
    }

    tokens = self->_tokens;
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:token];
    LOBYTE(tokens) = [(NSMutableArray *)tokens containsObject:v15];

    if (tokens)
    {
      v16 = self->_tokens;
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:token];
      [(NSMutableArray *)v16 removeObject:v11];
    }

    else
    {
      v11 = __biome_log_for_category();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [CCSetChangeXPCNotifier _handlePublisherAction:token token:v11 descriptor:?];
      }
    }
  }

  else
  {
    if (action)
    {
      return;
    }

    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:token];
      v17 = 138412290;
      v18 = v9;
      _os_log_impl(&dword_1B6DB2000, v8, OS_LOG_TYPE_DEFAULT, "CCSetChangeXPCNotifier adding listener with token: %@", &v17, 0xCu);
    }

    v10 = self->_tokens;
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:token];
    [(NSMutableArray *)v10 addObject:v11];
  }
}

- (void)notifyChangeToSet:(id)set
{
  setCopy = set;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__CCSetChangeXPCNotifier_notifyChangeToSet___block_invoke;
  v7[3] = &unk_1E7C8B0D0;
  v7[4] = self;
  v8 = setCopy;
  v6 = setCopy;
  dispatch_sync(queue, v7);
}

void __44__CCSetChangeXPCNotifier_notifyChangeToSet___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = *(*(a1 + 32) + 24);
  v3 = [v2 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v22;
    *&v4 = 138413058;
    v20 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v21 + 1) + 8 * v7);
        v9 = [*(a1 + 40) toXPCDictionary];
        v10 = __biome_log_for_category();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = objc_opt_class();
          v12 = *(a1 + 40);
          *buf = 138412546;
          v26 = v11;
          v27 = 2112;
          *v28 = v12;
          _os_log_impl(&dword_1B6DB2000, v10, OS_LOG_TYPE_DEFAULT, "%@ firing xpc_event for set: %@", buf, 0x16u);
        }

        [v8 unsignedLongValue];
        v13 = xpc_event_publisher_fire();
        if (v13)
        {
          v14 = v13;
          v15 = __biome_log_for_category();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = objc_opt_class();
            v17 = __error();
            v18 = strerror(*v17);
            v19 = *(a1 + 40);
            *buf = v20;
            v26 = v16;
            v27 = 1024;
            *v28 = v14;
            *&v28[4] = 2080;
            *&v28[6] = v18;
            v29 = 2112;
            v30 = v19;
            _os_log_error_impl(&dword_1B6DB2000, v15, OS_LOG_TYPE_ERROR, "%@ firing xpc_event returned %d with error %s for set: %@", buf, 0x26u);
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v2 countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v5);
  }
}

void __30__CCSetChangeXPCNotifier_init__block_invoke_2_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:a1];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_1B6DB2000, a3, OS_LOG_TYPE_ERROR, "CCSetChangeXPCNotifier XPC event publisher error: %@ %@", &v7, 0x16u);
}

- (void)_handlePublisherAction:(uint64_t)a1 token:(NSObject *)a2 descriptor:.cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a1];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1B6DB2000, a2, OS_LOG_TYPE_ERROR, "Unknown token to remove: %@", &v4, 0xCu);
}

@end