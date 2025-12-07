@interface DNDSXPCEventPublisher
- (DNDSXPCEventPublisher)initWithStream:(const char *)stream;
- (void)_handleEventAction:(unsigned int)action token:(unint64_t)token descriptor:(id)descriptor;
- (void)_queue_addSubscriberForToken:(unint64_t)token descriptor:(id)descriptor;
- (void)_queue_removeSubscriberForToken:(unint64_t)token;
- (void)_queue_sendEventWithXPCObject:(id)object;
- (void)_queue_sendPendingEvents;
- (void)broadcastEvent:(id)event;
@end

@implementation DNDSXPCEventPublisher

- (DNDSXPCEventPublisher)initWithStream:(const char *)stream
{
  v15.receiver = self;
  v15.super_class = DNDSXPCEventPublisher;
  v3 = [(DNDSXPCEventPublisher *)&v15 init];
  if (v3)
  {
    Serial = BSDispatchQueueCreateSerial();
    queue = v3->_queue;
    v3->_queue = Serial;

    v6 = xpc_event_publisher_create();
    publisher = v3->_publisher;
    v3->_publisher = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingEvents = v3->_pendingEvents;
    v3->_pendingEvents = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    subscribers = v3->_subscribers;
    v3->_subscribers = v10;

    objc_initWeak(&location, v3);
    objc_copyWeak(&v13, &location);
    xpc_event_publisher_set_handler();
    xpc_event_publisher_set_error_handler();
    xpc_event_publisher_activate();
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __40__DNDSXPCEventPublisher_initWithStream___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleEventAction:a2 token:a3 descriptor:v7];
}

void __40__DNDSXPCEventPublisher_initWithStream___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = DNDSLogXPCEventPublisher;
  if (os_log_type_enabled(DNDSLogXPCEventPublisher, OS_LOG_TYPE_ERROR))
  {
    __40__DNDSXPCEventPublisher_initWithStream___block_invoke_2_cold_1(v2, v3);
  }
}

- (void)_handleEventAction:(unsigned int)action token:(unint64_t)token descriptor:(id)descriptor
{
  v22 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  v9 = DNDSLogXPCEventPublisher;
  if (os_log_type_enabled(DNDSLogXPCEventPublisher, OS_LOG_TYPE_INFO))
  {
    *buf = 138543874;
    selfCopy = self;
    v18 = 1024;
    actionCopy = action;
    v20 = 2048;
    tokenCopy = token;
    _os_log_impl(&dword_24912E000, v9, OS_LOG_TYPE_INFO, "%{public}@: Handling XPC event action %d for %llu", buf, 0x1Cu);
  }

  queue = self->_queue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__DNDSXPCEventPublisher__handleEventAction_token_descriptor___block_invoke;
  v12[3] = &unk_278F8B6F0;
  actionCopy2 = action;
  v13 = descriptorCopy;
  tokenCopy2 = token;
  v12[4] = self;
  v11 = descriptorCopy;
  dispatch_async(queue, v12);
}

void __61__DNDSXPCEventPublisher__handleEventAction_token_descriptor___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  if (v2 == 2)
  {
    v8 = *(a1 + 32);

    [v8 _queue_sendPendingEvents];
  }

  else if (v2 == 1)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 48);

    [v6 _queue_removeSubscriberForToken:v7];
  }

  else if (v2)
  {
    v9 = DNDSLogXPCEventPublisher;
    if (os_log_type_enabled(DNDSLogXPCEventPublisher, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 56);
      v11 = *(a1 + 48);
      v12[0] = 67109376;
      v12[1] = v10;
      v13 = 2048;
      v14 = v11;
      _os_log_impl(&dword_24912E000, v9, OS_LOG_TYPE_DEFAULT, "Unexpected XPC event action %d from %llu", v12, 0x12u);
    }
  }

  else
  {
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);
    v5 = *(a1 + 32);

    [v5 _queue_addSubscriberForToken:v3 descriptor:v4];
  }
}

- (void)_queue_addSubscriberForToken:(unint64_t)token descriptor:(id)descriptor
{
  v14 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  dispatch_assert_queue_V2(self->_queue);
  if (!descriptorCopy || MEMORY[0x24C1F4080](descriptorCopy) != MEMORY[0x277D86468])
  {
LABEL_3:
    v7 = 0;
    goto LABEL_4;
  }

  v7 = _CFXPCCreateCFObjectFromXPCObject();
  if (!v7)
  {
    v11 = DNDSLogXPCEventPublisher;
    if (os_log_type_enabled(DNDSLogXPCEventPublisher, OS_LOG_TYPE_ERROR))
    {
      [DNDSXPCEventPublisher _queue_addSubscriberForToken:v11 descriptor:?];
    }

    goto LABEL_3;
  }

LABEL_4:
  subscribers = self->_subscribers;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:token];
  [(NSMutableDictionary *)subscribers setObject:v7 forKeyedSubscript:v9];

  v10 = DNDSLogXPCEventPublisher;
  if (os_log_type_enabled(DNDSLogXPCEventPublisher, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    tokenCopy = token;
    _os_log_impl(&dword_24912E000, v10, OS_LOG_TYPE_DEFAULT, "Registered XPC event subscriber %llu", &v12, 0xCu);
  }
}

- (void)_queue_removeSubscriberForToken:(unint64_t)token
{
  v10 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  subscribers = self->_subscribers;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:token];
  [(NSMutableDictionary *)subscribers removeObjectForKey:v6];

  v7 = DNDSLogXPCEventPublisher;
  if (os_log_type_enabled(DNDSLogXPCEventPublisher, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    tokenCopy = token;
    _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, "Removed XPC event subscriber %llu", &v8, 0xCu);
  }
}

- (void)_queue_sendPendingEvents
{
  v15 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = self->_pendingEvents;
  pendingEvents = self->_pendingEvents;
  self->_pendingEvents = 0;

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v3;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(DNDSXPCEventPublisher *)self _queue_sendEventWithXPCObject:*(*(&v10 + 1) + 8 * v9++), v10];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_queue_sendEventWithXPCObject:(id)object
{
  v29 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  dispatch_assert_queue_V2(self->_queue);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  allKeys = [(NSMutableDictionary *)self->_subscribers allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v21;
    *&v7 = 134218240;
    v19 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        [v11 intValue];
        v12 = xpc_event_publisher_fire();
        v13 = DNDSLogXPCEventPublisher;
        if (v12)
        {
          v14 = v12;
          if (os_log_type_enabled(DNDSLogXPCEventPublisher, OS_LOG_TYPE_ERROR))
          {
            v15 = v13;
            intValue = [v11 intValue];
            *buf = v19;
            v25 = intValue;
            v26 = 1024;
            v27 = v14;
            _os_log_error_impl(&dword_24912E000, v15, OS_LOG_TYPE_ERROR, "Failed to publish XPC event for %ld with error: %d", buf, 0x12u);
          }
        }

        else if (os_log_type_enabled(DNDSLogXPCEventPublisher, OS_LOG_TYPE_INFO))
        {
          v17 = v13;
          intValue2 = [v11 intValue];
          *buf = 134217984;
          v25 = intValue2;
          _os_log_impl(&dword_24912E000, v17, OS_LOG_TYPE_INFO, "Published XPC event for %ld", buf, 0xCu);
        }
      }

      v8 = [allKeys countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v8);
  }
}

- (void)broadcastEvent:(id)event
{
  eventCopy = event;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__DNDSXPCEventPublisher_broadcastEvent___block_invoke;
  v7[3] = &unk_278F89F48;
  v7[4] = self;
  v8 = eventCopy;
  v6 = eventCopy;
  dispatch_sync(queue, v7);
}

uint64_t __40__DNDSXPCEventPublisher_broadcastEvent___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2[3])
  {
    return [v2[3] addObject:v3];
  }

  else
  {
    return [v2 _queue_sendEventWithXPCObject:v3];
  }
}

void __40__DNDSXPCEventPublisher_initWithStream___block_invoke_2_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_24912E000, a2, OS_LOG_TYPE_ERROR, "Received XPC event error %d", v2, 8u);
}

@end