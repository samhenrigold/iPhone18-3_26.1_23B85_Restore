@interface HDXPCEventPublisher
- (HDXPCEventPublisher)initWithStream:(const char *)stream entitlement:(const char *)entitlement;
- (void)_handleEventAction:(uint64_t)action token:(void *)token descriptor:;
- (void)_queue_addSubscriberForToken:(void *)token descriptor:;
- (void)_queue_removeSubscriberForToken:(uint64_t)token;
- (void)_queue_sendEventWithXPCObject:(uint64_t)object;
- (void)_queue_sendPendingEvents;
- (void)broadcastEvent:(id)event;
@end

@implementation HDXPCEventPublisher

- (HDXPCEventPublisher)initWithStream:(const char *)stream entitlement:(const char *)entitlement
{
  v21.receiver = self;
  v21.super_class = HDXPCEventPublisher;
  v5 = [(HDXPCEventPublisher *)&v21 init];
  if (v5)
  {
    v6 = HKCreateSerialDispatchQueue();
    queue = v5->_queue;
    v5->_queue = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingEvents = v5->_pendingEvents;
    v5->_pendingEvents = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingSubscribers = v5->_pendingSubscribers;
    v5->_pendingSubscribers = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    subscribers = v5->_subscribers;
    v5->_subscribers = v12;

    v5->_requiredEntitlement = entitlement;
    if ((HDIsUnitTesting(v14, v15) & 1) == 0)
    {
      v16 = xpc_event_publisher_create();
      publisher = v5->_publisher;
      v5->_publisher = v16;

      objc_initWeak(&location, v5);
      objc_copyWeak(&v19, &location);
      xpc_event_publisher_set_handler();
      xpc_event_publisher_set_error_handler();
      xpc_event_publisher_activate();
      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }
  }

  return v5;
}

void __50__HDXPCEventPublisher_initWithStream_entitlement___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(HDXPCEventPublisher *)WeakRetained _handleEventAction:v5 token:a3 descriptor:v7];
}

void __50__HDXPCEventPublisher_initWithStream_entitlement___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  _HKInitializeLogging();
  v3 = HKLogInfrastructure();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __50__HDXPCEventPublisher_initWithStream_entitlement___block_invoke_2_cold_1(v2, v3);
  }
}

void __59__HDXPCEventPublisher__handleEventAction_token_descriptor___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  if (v2 == 2)
  {
    v8 = *(a1 + 32);

    [(HDXPCEventPublisher *)v8 _queue_sendPendingEvents];
  }

  else if (v2 == 1)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 48);

    [(HDXPCEventPublisher *)v6 _queue_removeSubscriberForToken:v7];
  }

  else if (v2)
  {
    _HKInitializeLogging();
    v3 = HKLogInfrastructure();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 56);
      v5 = *(a1 + 48);
      v12[0] = 67109376;
      v12[1] = v4;
      v13 = 2048;
      v14 = v5;
      _os_log_impl(&dword_25156C000, v3, OS_LOG_TYPE_DEFAULT, "Unexpected XPC event action %d from %llu", v12, 0x12u);
    }
  }

  else
  {
    v10 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = *(a1 + 32);

    [(HDXPCEventPublisher *)v11 _queue_addSubscriberForToken:v9 descriptor:v10];
  }
}

void __63__HDXPCEventPublisher__queue_addSubscriberForToken_descriptor___block_invoke(void *a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogInfrastructure();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);

  if (v5)
  {
    v6 = HKLogInfrastructure();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = a1[6];
      *buf = 134217984;
      *&buf[4] = v7;
      _os_log_impl(&dword_25156C000, v6, OS_LOG_TYPE_INFO, "Received XPC event reply from %llu", buf, 0xCu);
    }
  }

  v8 = a1 + 6;
  v9 = *(a1[4] + 32);
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[6]];
  LOBYTE(v9) = [v9 containsObject:v10];

  if (v9)
  {
    v11 = *(a1[4] + 32);
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[6]];
    [v11 removeObject:v12];

    v13 = MEMORY[0x25307B1F0](v3);
    if (v13 != MEMORY[0x277D86468])
    {
      v14 = v13;
      v15 = MEMORY[0x277D86480];
      _HKInitializeLogging();
      v16 = HKLogInfrastructure();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
      if (v14 == v15)
      {
        if (v17)
        {
          __63__HDXPCEventPublisher__queue_addSubscriberForToken_descriptor___block_invoke_cold_3(v8, v3);
        }
      }

      else if (v17)
      {
        __63__HDXPCEventPublisher__queue_addSubscriberForToken_descriptor___block_invoke_cold_2(v8, v14);
      }

LABEL_19:

      goto LABEL_27;
    }

    *buf = 0u;
    v36 = 0u;
    xpc_dictionary_get_audit_token();
    v20 = xpc_copy_code_signing_identity_for_token();
    v21 = xpc_copy_entitlement_for_token();
    v22 = v21;
    if (v21)
    {
      if (xpc_BOOL_get_value(v21))
      {
        v23 = [MEMORY[0x277CBEAC0] hd_dictionaryFromXPCObject:a1[5]];
        v24 = *(a1[4] + 40);
        v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[6]];
        [v24 setObject:v23 forKeyedSubscript:v25];

        _HKInitializeLogging();
        v26 = HKLogInfrastructure();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = *v8;
          v31 = 136315394;
          v32 = v20;
          v33 = 2048;
          v34 = v27;
          v28 = "Registered XPC event subscriber %s:%llu";
LABEL_25:
          _os_log_impl(&dword_25156C000, v26, OS_LOG_TYPE_DEFAULT, v28, &v31, 0x16u);
          goto LABEL_26;
        }

        goto LABEL_26;
      }
    }

    else
    {
      _HKInitializeLogging();
      v29 = HKLogInfrastructure();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        __63__HDXPCEventPublisher__queue_addSubscriberForToken_descriptor___block_invoke_cold_4(v20, v8, v29);
      }
    }

    _HKInitializeLogging();
    v26 = HKLogInfrastructure();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *v8;
      v31 = 136315394;
      v32 = v20;
      v33 = 2048;
      v34 = v30;
      v28 = "XPC event client %s:%llu is not entitled for subscription";
      goto LABEL_25;
    }

LABEL_26:

    free(v20);
    goto LABEL_27;
  }

  _HKInitializeLogging();
  v18 = HKLogInfrastructure();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);

  if (v19)
  {
    v16 = HKLogInfrastructure();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      __63__HDXPCEventPublisher__queue_addSubscriberForToken_descriptor___block_invoke_cold_1(a1 + 6, v16);
    }

    goto LABEL_19;
  }

LABEL_27:
}

- (void)broadcastEvent:(id)event
{
  eventCopy = event;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__HDXPCEventPublisher_broadcastEvent___block_invoke;
  v7[3] = &unk_2796BDA28;
  v8 = eventCopy;
  selfCopy = self;
  v6 = eventCopy;
  dispatch_sync(queue, v7);
}

void __38__HDXPCEventPublisher_broadcastEvent___block_invoke(uint64_t a1)
{
  xpc_dictionary_set_BOOL(*(a1 + 32), *MEMORY[0x277CCCF80], 1);
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v2 + 24))
  {
    v4 = *(v2 + 24);

    [v4 addObject:v3];
  }

  else
  {
    v5 = *(a1 + 32);

    [(HDXPCEventPublisher *)v2 _queue_sendEventWithXPCObject:v5];
  }
}

- (void)_handleEventAction:(uint64_t)action token:(void *)token descriptor:
{
  v22 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  if (self)
  {
    _HKInitializeLogging();
    v8 = HKLogInfrastructure();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);

    if (v9)
    {
      v10 = HKLogInfrastructure();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138543874;
        selfCopy = self;
        v18 = 1024;
        v19 = a2;
        v20 = 2048;
        actionCopy = action;
        _os_log_impl(&dword_25156C000, v10, OS_LOG_TYPE_INFO, "%{public}@: Handling XPC event action %d for %llu", buf, 0x1Cu);
      }
    }

    v11 = *(self + 8);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __59__HDXPCEventPublisher__handleEventAction_token_descriptor___block_invoke;
    v12[3] = &unk_2796BDB30;
    v15 = a2;
    v12[4] = self;
    actionCopy2 = action;
    v13 = tokenCopy;
    dispatch_async(v11, v12);
  }
}

- (void)_queue_addSubscriberForToken:(void *)token descriptor:
{
  tokenCopy = token;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 8));
    v6 = *(self + 32);
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
    [v6 addObject:v7];

    v8 = xpc_dictionary_create(0, 0, 0);
    v9 = tokenCopy;
    xpc_event_publisher_fire_with_reply();
  }
}

- (void)_queue_removeSubscriberForToken:(uint64_t)token
{
  v11 = *MEMORY[0x277D85DE8];
  if (token)
  {
    dispatch_assert_queue_V2(*(token + 8));
    v4 = *(token + 32);
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
    [v4 removeObject:v5];

    v6 = *(token + 40);
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
    [v6 removeObjectForKey:v7];

    _HKInitializeLogging();
    v8 = HKLogInfrastructure();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = a2;
      _os_log_impl(&dword_25156C000, v8, OS_LOG_TYPE_DEFAULT, "Removed XPC event subscriber %llu", &v9, 0xCu);
    }
  }
}

- (void)_queue_sendPendingEvents
{
  v14 = *MEMORY[0x277D85DE8];
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 8));
    v2 = *(self + 24);
    v3 = *(self + 24);
    *(self + 24) = 0;

    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [(HDXPCEventPublisher *)self _queue_sendEventWithXPCObject:?];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)_queue_sendEventWithXPCObject:(uint64_t)object
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (object)
  {
    dispatch_assert_queue_V2(*(object + 8));
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    allKeys = [*(object + 40) allKeys];
    v5 = [allKeys countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (!v5)
    {
      goto LABEL_17;
    }

    v7 = v5;
    v8 = *v20;
    *&v6 = 134218240;
    v18 = v6;
    while (1)
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        [v10 intValue];
        v11 = xpc_event_publisher_fire();
        _HKInitializeLogging();
        v12 = HKLogInfrastructure();
        v13 = v12;
        if (v11)
        {
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            intValue = [v10 intValue];
            *buf = v18;
            v24 = intValue;
            v25 = 1024;
            v26 = v11;
            _os_log_error_impl(&dword_25156C000, v13, OS_LOG_TYPE_ERROR, "Failed to publish XPC event for %ld with error: %d", buf, 0x12u);
          }

LABEL_10:

          goto LABEL_11;
        }

        v14 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);

        if (v14)
        {
          v13 = HKLogInfrastructure();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            intValue2 = [v10 intValue];
            *buf = 134217984;
            v24 = intValue2;
            _os_log_impl(&dword_25156C000, v13, OS_LOG_TYPE_INFO, "Published XPC event for %ld", buf, 0xCu);
          }

          goto LABEL_10;
        }

LABEL_11:
        ++v9;
      }

      while (v7 != v9);
      v17 = [allKeys countByEnumeratingWithState:&v19 objects:v27 count:16];
      v7 = v17;
      if (!v17)
      {
LABEL_17:

        break;
      }
    }
  }
}

void __50__HDXPCEventPublisher_initWithStream_entitlement___block_invoke_2_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_25156C000, a2, OS_LOG_TYPE_ERROR, "Received XPC event error %d", v2, 8u);
}

void __63__HDXPCEventPublisher__queue_addSubscriberForToken_descriptor___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_debug_impl(&dword_25156C000, a2, OS_LOG_TYPE_DEBUG, "XPC event client %llu unsubscribed before replying to ping", &v3, 0xCu);
}

void __63__HDXPCEventPublisher__queue_addSubscriberForToken_descriptor___block_invoke_cold_2(int a1, xpc_type_t type)
{
  xpc_type_get_name(type);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_25156C000, v2, v3, "XPC event client %llu replied with unexpected type %s", v4, v5, v6, v7);
}

void __63__HDXPCEventPublisher__queue_addSubscriberForToken_descriptor___block_invoke_cold_3(int a1, xpc_object_t xdict)
{
  xpc_dictionary_get_string(xdict, *MEMORY[0x277D86400]);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_25156C000, v2, v3, "XPC event client %llu replied with error: %s", v4, v5, v6, v7);
}

void __63__HDXPCEventPublisher__queue_addSubscriberForToken_descriptor___block_invoke_cold_4(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = 136315394;
  v5 = a1;
  v6 = 2048;
  v7 = v3;
  _os_log_error_impl(&dword_25156C000, log, OS_LOG_TYPE_ERROR, "XPC event entitlement not found for %s:%llu", &v4, 0x16u);
}

@end