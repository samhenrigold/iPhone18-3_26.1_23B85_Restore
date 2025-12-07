@interface GCXPCEventPublisher
- (GCXPCEventPublisher)initWithStreamName:(id)name isStatefulEventPublisher:(BOOL)publisher;
- (void)handleEventWithAction:(unsigned int)action token:(unint64_t)token descriptor:(id)descriptor;
- (void)sendEvent:(id)event;
- (void)sendEvent:(id)event toSubscriber:(id)subscriber;
@end

@implementation GCXPCEventPublisher

- (GCXPCEventPublisher)initWithStreamName:(id)name isStatefulEventPublisher:(BOOL)publisher
{
  nameCopy = name;
  v25.receiver = self;
  v25.super_class = GCXPCEventPublisher;
  v8 = [(GCXPCEventPublisher *)&v25 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_streamName, name);
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create([(NSString *)v9->_streamName UTF8String], v10);
    queue = v9->_queue;
    v9->_queue = v11;

    [nameCopy UTF8String];
    v13 = xpc_event_publisher_create();
    publisher = v9->_publisher;
    v9->_publisher = v13;

    v15 = [MEMORY[0x1E695DFA8] set];
    tokens = v9->_tokens;
    v9->_tokens = v15;

    v9->_statefulEventPublisher = publisher;
    if (!publisher)
    {
      array = [MEMORY[0x1E695DF70] array];
      pendingSendEvents = v9->_pendingSendEvents;
      v9->_pendingSendEvents = array;
    }

    if (v9->_publisher)
    {
      objc_initWeak(&location, v9);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __67__GCXPCEventPublisher_initWithStreamName_isStatefulEventPublisher___block_invoke;
      aBlock[3] = &unk_1E841A320;
      objc_copyWeak(&v23, &location);
      v19 = _Block_copy(aBlock);
      xpc_event_publisher_set_handler();
      v21 = nameCopy;
      xpc_event_publisher_set_error_handler();
      xpc_event_publisher_activate();

      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
    }
  }

  return v9;
}

void __67__GCXPCEventPublisher_initWithStreamName_isStatefulEventPublisher___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleEventWithAction:a2 token:a3 descriptor:v7];
}

void __67__GCXPCEventPublisher_initWithStreamName_isStatefulEventPublisher___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (gc_isInternalBuild(a1, a2))
  {
    __67__GCXPCEventPublisher_initWithStreamName_isStatefulEventPublisher___block_invoke_2_cold_1(a1, a2);
  }
}

- (void)handleEventWithAction:(unsigned int)action token:(unint64_t)token descriptor:(id)descriptor
{
  v40 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  v10 = descriptorCopy;
  if (descriptorCopy)
  {
    v11 = MEMORY[0x1D38AD550](descriptorCopy);
    isInternalBuild = gc_isInternalBuild(v11, v12);
    if (!isInternalBuild)
    {
      if (!v11)
      {
        goto LABEL_7;
      }

      goto LABEL_4;
    }

    v25 = getGCLogger(isInternalBuild);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      streamName = self->_streamName;
      *buf = 138544130;
      v33 = streamName;
      v34 = 1024;
      actionCopy = action;
      v36 = 2048;
      tokenCopy = token;
      v38 = 2080;
      v39 = v11;
      _os_log_impl(&dword_1D2CD5000, v25, OS_LOG_TYPE_INFO, "XPC event publisher for stream %{public}@ received xpc event with action %d and token %llu: %s", buf, 0x26u);
    }

    if (v11)
    {
LABEL_4:
      free(v11);
    }
  }

  else
  {
    isInternalBuild = gc_isInternalBuild(0, v9);
    if (isInternalBuild)
    {
      [GCXPCEventPublisher handleEventWithAction:? token:? descriptor:?];
    }
  }

LABEL_7:
  if (action)
  {
    if (action == 1)
    {
      tokens = self->_tokens;
      v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:token];
      [(NSMutableSet *)tokens removeObject:v16];
      goto LABEL_27;
    }

    if (action == 2)
    {
      if (gc_isInternalBuild(isInternalBuild, v14))
      {
        [GCXPCEventPublisher handleEventWithAction:? token:? descriptor:?];
      }

      self->_receivedInitialBarrier = 1;
      if (self->_statefulEventPublisher && self->_stateEvent)
      {
        [(GCXPCEventPublisher *)self sendEvent:?];
        goto LABEL_28;
      }

      v20 = [(NSMutableArray *)self->_pendingSendEvents copy];
      [(NSMutableArray *)self->_pendingSendEvents removeAllObjects];
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v16 = v20;
      v21 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v28;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v28 != v23)
            {
              objc_enumerationMutation(v16);
            }

            [(GCXPCEventPublisher *)self sendEvent:*(*(&v27 + 1) + 8 * i), v27];
          }

          v22 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v22);
      }

LABEL_27:
    }
  }

  else
  {
    v17 = self->_tokens;
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:token];
    [(NSMutableSet *)v17 addObject:v18];

    if (self->_statefulEventPublisher)
    {
      stateEvent = self->_stateEvent;
      if (stateEvent)
      {
        v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:token];
        [(GCXPCEventPublisher *)self sendEvent:stateEvent toSubscriber:v16];
        goto LABEL_27;
      }
    }
  }

LABEL_28:
}

- (void)sendEvent:(id)event
{
  eventCopy = event;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__GCXPCEventPublisher_sendEvent___block_invoke;
  v7[3] = &unk_1E8418C50;
  v7[4] = self;
  v8 = eventCopy;
  v6 = eventCopy;
  dispatch_async(queue, v7);
}

void __33__GCXPCEventPublisher_sendEvent___block_invoke(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a1 + 32;
  v3 = *(a1 + 32);
  if (*(v3 + 8) == 1)
  {
    objc_storeStrong((v3 + 48), *(a1 + 40));
    v3 = *(a1 + 32);
  }

  v5 = *(v3 + 9);
  isInternalBuild = gc_isInternalBuild(a1, a2);
  if (v5 == 1)
  {
    if (isInternalBuild)
    {
      __33__GCXPCEventPublisher_sendEvent___block_invoke_cold_2(v4);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = *(*v4 + 56);
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        v11 = 0;
        do
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * v11);
          [v12 unsignedLongLongValue];
          v13 = xpc_event_publisher_fire();
          if (v13)
          {
            v15 = gc_isInternalBuild(v13, v14);
            if (v15)
            {
              v16 = getGCLogger(v15);
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                v19 = *(*v4 + 24);
                v17 = xpc_strerror();
                *buf = 138543874;
                v25 = v19;
                v26 = 2112;
                v27 = v12;
                v28 = 2080;
                v29 = v17;
                _os_log_error_impl(&dword_1D2CD5000, v16, OS_LOG_TYPE_ERROR, "Failed to send event to XPC event stream %{public}@ for token %@: %s", buf, 0x20u);
              }
            }
          }

          ++v11;
        }

        while (v9 != v11);
        v18 = [v7 countByEnumeratingWithState:&v20 objects:v30 count:16];
        v9 = v18;
      }

      while (v18);
    }
  }

  else
  {
    if (isInternalBuild)
    {
      __33__GCXPCEventPublisher_sendEvent___block_invoke_cold_1(a1);
    }

    if ((*(*v4 + 8) & 1) == 0)
    {
      [*(*v4 + 40) addObject:*(a1 + 40)];
    }
  }
}

- (void)sendEvent:(id)event toSubscriber:(id)subscriber
{
  eventCopy = event;
  subscriberCopy = subscriber;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__GCXPCEventPublisher_sendEvent_toSubscriber___block_invoke;
  block[3] = &unk_1E8419BC0;
  block[4] = self;
  v12 = eventCopy;
  v13 = subscriberCopy;
  v9 = subscriberCopy;
  v10 = eventCopy;
  dispatch_async(queue, block);
}

void __46__GCXPCEventPublisher_sendEvent_toSubscriber___block_invoke(uint64_t result, uint64_t a2)
{
  v2 = result + 32;
  if (*(*(result + 32) + 9) == 1)
  {
    if (gc_isInternalBuild(result, a2))
    {
      __46__GCXPCEventPublisher_sendEvent_toSubscriber___block_invoke_cold_1(v2);
    }

    v5 = *(result + 48);
    v4 = (result + 48);
    [v5 unsignedLongLongValue];
    v6 = xpc_event_publisher_fire();
    if (v6)
    {
      v8 = v6;
      if (gc_isInternalBuild(v6, v7))
      {
        __46__GCXPCEventPublisher_sendEvent_toSubscriber___block_invoke_cold_2(v2, v4, v8);
      }
    }
  }
}

void __67__GCXPCEventPublisher_initWithStreamName_isStatefulEventPublisher___block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = 138543618;
    v6 = v4;
    v7 = 2080;
    v8 = xpc_strerror();
    _os_log_error_impl(&dword_1D2CD5000, v3, OS_LOG_TYPE_ERROR, "Unexpected error from XPC event publisher for stream %{public}@: %s", &v5, 0x16u);
  }
}

- (void)handleEventWithAction:(uint64_t)a1 token:descriptor:.cold.1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 0x1Cu);
  }
}

- (void)handleEventWithAction:(uint64_t)a1 token:descriptor:.cold.2(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void __33__GCXPCEventPublisher_sendEvent___block_invoke_cold_1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void __33__GCXPCEventPublisher_sendEvent___block_invoke_cold_2(uint64_t a1)
{
  v3 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v3))
  {
    [*(*a1 + 56) count];
    OUTLINED_FUNCTION_1();
    _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
  }
}

void __46__GCXPCEventPublisher_sendEvent_toSubscriber___block_invoke_cold_1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 0x20u);
  }
}

void __46__GCXPCEventPublisher_sendEvent_toSubscriber___block_invoke_cold_2(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = getGCLogger(a1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = *(*a1 + 24);
    v7 = *a2;
    v8 = 138543874;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2080;
    v13 = xpc_strerror();
    _os_log_error_impl(&dword_1D2CD5000, v5, OS_LOG_TYPE_ERROR, "Failed to send event to XPC event stream %{public}@ for token %@: %s", &v8, 0x20u);
  }
}

@end