@interface _CDXPCEventPublisher
+ (_CDXPCEventPublisher)eventPublisherWithStreamName:(const char *)name delegate:(id)delegate queue:(id)queue log:(id)log;
+ (_CDXPCEventPublisher)eventPublisherWithStreamName:(const char *)name delegate:(id)delegate queue:(id)queue log:(id)log os_variant_diagnostic_subsystem:(const char *)os_variant_diagnostic_subsystem;
- (_CDXPCEventPublisher)initWithStreamName:(id)name delegate:(id)delegate queue:(id)queue log:(id)log os_variant_diagnostic_subsystem:(const char *)os_variant_diagnostic_subsystem;
- (void)activatePublisherWithStreamName:(const char *)name;
- (void)addToken:(unint64_t)token descriptor:(id)descriptor userID:(unsigned int)d;
- (void)handleEventWithAction:(unsigned int)action token:(unint64_t)token descriptor:(id)descriptor;
- (void)removeToken:(unint64_t)token;
- (void)sendEvent:(id)event toSubscriber:(id)subscriber handler:(id)handler;
- (void)sendEvent:(id)event toSubscriber:(id)subscriber replyHandler:(id)handler;
@end

@implementation _CDXPCEventPublisher

+ (_CDXPCEventPublisher)eventPublisherWithStreamName:(const char *)name delegate:(id)delegate queue:(id)queue log:(id)log os_variant_diagnostic_subsystem:(const char *)os_variant_diagnostic_subsystem
{
  logCopy = log;
  queueCopy = queue;
  delegateCopy = delegate;
  v14 = objc_alloc(objc_opt_class());
  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:name];
  v16 = [v14 initWithStreamName:v15 delegate:delegateCopy queue:queueCopy log:logCopy os_variant_diagnostic_subsystem:os_variant_diagnostic_subsystem];

  [v16 activatePublisherWithStreamName:name];

  return v16;
}

+ (_CDXPCEventPublisher)eventPublisherWithStreamName:(const char *)name delegate:(id)delegate queue:(id)queue log:(id)log
{
  logCopy = log;
  queueCopy = queue;
  delegateCopy = delegate;
  v12 = objc_alloc(objc_opt_class());
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:name];
  v14 = [v12 initWithStreamName:v13 delegate:delegateCopy queue:queueCopy log:logCopy os_variant_diagnostic_subsystem:0];

  [v14 activatePublisherWithStreamName:name];

  return v14;
}

- (_CDXPCEventPublisher)initWithStreamName:(id)name delegate:(id)delegate queue:(id)queue log:(id)log os_variant_diagnostic_subsystem:(const char *)os_variant_diagnostic_subsystem
{
  nameCopy = name;
  delegateCopy = delegate;
  queueCopy = queue;
  logCopy = log;
  v22.receiver = self;
  v22.super_class = _CDXPCEventPublisher;
  v17 = [(_CDXPCEventPublisher *)&v22 init];
  if (v17)
  {
    v18 = objc_opt_new();
    pendingSendEvents = v17->_pendingSendEvents;
    v17->_pendingSendEvents = v18;

    objc_storeStrong(&v17->_streamName, name);
    objc_storeStrong(&v17->_delegate, delegate);
    objc_storeStrong(&v17->_queue, queue);
    objc_storeStrong(&v17->_log, log);
    v20 = "com.apple.CoreDuet";
    if (!os_variant_diagnostic_subsystem)
    {
      v20 = 0;
    }

    v17->_os_variant_diagnostic_subsystem = v20;
  }

  return v17;
}

- (void)activatePublisherWithStreamName:(const char *)name
{
  v5 = xpc_event_publisher_create();
  publisher = self->_publisher;
  self->_publisher = v5;

  if (self->_publisher)
  {
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __56___CDXPCEventPublisher_activatePublisherWithStreamName___block_invoke;
    v9[3] = &unk_1E7369EE8;
    objc_copyWeak(&v10, &location);
    v7 = MEMORY[0x193B00C50](v9);
    xpc_event_publisher_set_handler();
    xpc_event_publisher_set_error_handler();
    xpc_event_publisher_activate();

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      [(_CDXPCEventPublisher *)name activatePublisherWithStreamName:?];
    }
  }
}

- (void)handleEventWithAction:(unsigned int)action token:(unint64_t)token descriptor:(id)descriptor
{
  v36 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    if (descriptorCopy)
    {
      v10 = MEMORY[0x193B01150](descriptorCopy);
      v11 = self->_log;
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        if (!v10)
        {
          goto LABEL_7;
        }

        goto LABEL_5;
      }

      streamName = self->_streamName;
      *buf = 138544130;
      v33 = streamName;
      v34 = 1024;
      *v35 = action;
      *&v35[4] = 2048;
      *&v35[6] = token;
      *&v35[14] = 2080;
      *&v35[16] = v10;
      _os_log_debug_impl(&dword_191750000, v11, OS_LOG_TYPE_DEBUG, "Publisher for stream %{public}@ received xpc event with action %d and token %llu: %s", buf, 0x26u);
      if (v10)
      {
LABEL_5:
        free(v10);
      }
    }

    else
    {
      v26 = self->_streamName;
      *buf = 138543874;
      v33 = v26;
      v34 = 1024;
      *v35 = action;
      *&v35[4] = 2048;
      *&v35[6] = token;
      _os_log_debug_impl(&dword_191750000, log, OS_LOG_TYPE_DEBUG, "Publisher for stream %{public}@ received xpc event with action %d and token %llu", buf, 0x1Cu);
    }
  }

LABEL_7:
  if (action)
  {
    if (action == 1)
    {
      v21 = self->_log;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [_CDXPCEventPublisher handleEventWithAction:token token:v21 descriptor:?];
      }

      [(_CDXPCEventPublisher *)self removeToken:token];
    }

    else if (action == 2)
    {
      v12 = self->_log;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [_CDXPCEventPublisher handleEventWithAction:v12 token:? descriptor:?];
      }

      selfCopy = self;
      objc_sync_enter(selfCopy);
      pendingSendEvents = selfCopy->_pendingSendEvents;
      if (pendingSendEvents)
      {
        v15 = pendingSendEvents;
        v16 = selfCopy->_pendingSendEvents;
        selfCopy->_pendingSendEvents = 0;

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v17 = v15;
        v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v18)
        {
          v19 = *v28;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v28 != v19)
              {
                objc_enumerationMutation(v17);
              }

              (*(*(*(&v27 + 1) + 8 * i) + 16))(*(*(&v27 + 1) + 8 * i));
            }

            v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
          }

          while (v18);
        }
      }

      objc_sync_exit(selfCopy);
    }
  }

  else
  {
    v22 = getuid();
    v23 = self->_log;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v25 = self->_streamName;
      *buf = 138543874;
      v33 = v25;
      v34 = 2048;
      *v35 = v22;
      *&v35[8] = 2048;
      *&v35[10] = token;
      _os_log_debug_impl(&dword_191750000, v23, OS_LOG_TYPE_DEBUG, "Publisher for stream %{public}@ received new subscription for uid %lld with token %llu", buf, 0x20u);
    }

    [(_CDXPCEventPublisher *)self addToken:token descriptor:descriptorCopy userID:v22];
  }
}

- (void)sendEvent:(id)event toSubscriber:(id)subscriber handler:(id)handler
{
  v44 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  subscriberCopy = subscriber;
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_pendingSendEvents)
  {
    v12 = selfCopy->_log;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [_CDXPCCodecs messageTypeFromEvent:eventCopy];
      v14 = v13;
      v15 = @"unknown";
      if (v13)
      {
        v15 = v13;
      }

      *buf = 138412290;
      v37 = v15;
      _os_log_impl(&dword_191750000, v12, OS_LOG_TYPE_INFO, "Pending %@ sendEvent until barrier is received.", buf, 0xCu);
    }

    objc_initWeak(buf, selfCopy);
    pendingSendEvents = selfCopy->_pendingSendEvents;
    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = __55___CDXPCEventPublisher_sendEvent_toSubscriber_handler___block_invoke;
    v31 = &unk_1E73675A8;
    objc_copyWeak(&v35, buf);
    v32 = eventCopy;
    v33 = subscriberCopy;
    v34 = handlerCopy;
    v17 = MEMORY[0x193B00C50](&v28);
    [(NSMutableArray *)pendingSendEvents addObject:v17, v28, v29, v30, v31];

    objc_destroyWeak(&v35);
    objc_destroyWeak(buf);
    objc_sync_exit(selfCopy);
  }

  else
  {
    objc_sync_exit(selfCopy);

    if (os_log_type_enabled(selfCopy->_log, OS_LOG_TYPE_DEBUG))
    {
      if (os_variant_has_internal_diagnostics())
      {
        v18 = MEMORY[0x193B01150](eventCopy);
        log = selfCopy->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
        {
          streamName = selfCopy->_streamName;
          v25 = log;
          *buf = 138544130;
          v37 = streamName;
          v38 = 2114;
          v39 = subscriberCopy;
          v40 = 1024;
          count = xpc_dictionary_get_count(eventCopy);
          v42 = 2080;
          v43 = v18;
          _os_log_debug_impl(&dword_191750000, v25, OS_LOG_TYPE_DEBUG, "Sending event on stream %{public}@ to subscriber %{public}@ with %d keys: %s", buf, 0x26u);
        }

        if (v18)
        {
          free(v18);
        }
      }

      else
      {
        v20 = selfCopy->_log;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v26 = selfCopy->_streamName;
          v27 = v20;
          *buf = 138543874;
          v37 = v26;
          v38 = 2114;
          v39 = subscriberCopy;
          v40 = 1024;
          count = xpc_dictionary_get_count(eventCopy);
          _os_log_debug_impl(&dword_191750000, v27, OS_LOG_TYPE_DEBUG, "Sending event on stream %{public}@ to subscriber %{public}@ with %d keys", buf, 0x1Cu);
        }
      }
    }

    [subscriberCopy token];
    v21 = xpc_event_publisher_fire();
    if (v21)
    {
      v22 = selfCopy->_log;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [_CDXPCEventPublisher sendEvent:selfCopy toSubscriber:v22 handler:v21];
      }

      v23 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.coreduetd" code:3 userInfo:0];
      (*(handlerCopy + 2))(handlerCopy, v23);
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, 0);
    }
  }
}

- (void)sendEvent:(id)event toSubscriber:(id)subscriber replyHandler:(id)handler
{
  v42[2] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  subscriberCopy = subscriber;
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_pendingSendEvents)
  {
    v12 = selfCopy->_log;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [_CDXPCCodecs messageTypeFromEvent:eventCopy];
      v14 = v13;
      v15 = @"unknown";
      if (v13)
      {
        v15 = v13;
      }

      *buf = 138412290;
      v38 = v15;
      _os_log_impl(&dword_191750000, v12, OS_LOG_TYPE_DEFAULT, "Pending %@ sendEvent until barrier is received.", buf, 0xCu);
    }

    objc_initWeak(buf, selfCopy);
    pendingSendEvents = selfCopy->_pendingSendEvents;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __60___CDXPCEventPublisher_sendEvent_toSubscriber_replyHandler___block_invoke;
    v32[3] = &unk_1E73675A8;
    objc_copyWeak(&v36, buf);
    v33 = eventCopy;
    v34 = subscriberCopy;
    v35 = handlerCopy;
    v17 = MEMORY[0x193B00C50](v32);
    [(NSMutableArray *)pendingSendEvents addObject:v17];

    objc_destroyWeak(&v36);
    objc_destroyWeak(buf);
    objc_sync_exit(selfCopy);
  }

  else
  {
    objc_sync_exit(selfCopy);

    if (os_log_type_enabled(selfCopy->_log, OS_LOG_TYPE_DEBUG))
    {
      if (os_variant_has_internal_diagnostics())
      {
        v18 = MEMORY[0x193B01150](eventCopy);
        log = selfCopy->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
        {
          streamName = selfCopy->_streamName;
          v29 = log;
          *buf = 138544130;
          v38 = streamName;
          v39 = 2114;
          v40 = subscriberCopy;
          v41 = 1024;
          LODWORD(v42[0]) = xpc_dictionary_get_count(eventCopy);
          WORD2(v42[0]) = 2080;
          *(v42 + 6) = v18;
          _os_log_debug_impl(&dword_191750000, v29, OS_LOG_TYPE_DEBUG, "Sending event on stream %{public}@ to subscriber %{public}@ with %d keys: %s", buf, 0x26u);
        }

        if (v18)
        {
          free(v18);
        }
      }

      else
      {
        v20 = selfCopy->_log;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v30 = selfCopy->_streamName;
          v31 = v20;
          *buf = 138543874;
          v38 = v30;
          v39 = 2114;
          v40 = subscriberCopy;
          v41 = 1024;
          LODWORD(v42[0]) = xpc_dictionary_get_count(eventCopy);
          _os_log_debug_impl(&dword_191750000, v31, OS_LOG_TYPE_DEBUG, "Sending event on stream %{public}@ to subscriber %{public}@ with %d keys", buf, 0x1Cu);
        }
      }
    }

    [subscriberCopy token];
    v21 = subscriberCopy;
    v22 = handlerCopy;
    if (xpc_event_publisher_fire_with_reply())
    {
      v23 = selfCopy->_log;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v25 = selfCopy->_streamName;
        v26 = v23;
        v27 = xpc_strerror();
        *buf = 138543874;
        v38 = v25;
        v39 = 2112;
        v40 = v21;
        v41 = 2080;
        v42[0] = v27;
        _os_log_error_impl(&dword_191750000, v26, OS_LOG_TYPE_ERROR, "Failed to send event on stream %{public}@ to subscriber %@: %s", buf, 0x20u);
      }

      v24 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.coreduetd" code:3 userInfo:0];
      v22[2](v22, 0, v24);
    }
  }
}

- (void)addToken:(unint64_t)token descriptor:(id)descriptor userID:(unsigned int)d
{
  if (self->_delegate)
  {
    v5 = *&d;
    descriptorCopy = descriptor;
    v9 = [[_CDXPCEventSubscriber alloc] initWithToken:token descriptor:descriptorCopy userID:v5 streamName:self->_streamName];

    queue = self->_queue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __51___CDXPCEventPublisher_addToken_descriptor_userID___block_invoke;
    v12[3] = &unk_1E7367710;
    v12[4] = self;
    v13 = v9;
    v11 = v9;
    dispatch_async(queue, v12);
  }
}

- (void)removeToken:(unint64_t)token
{
  if (self->_delegate)
  {
    queue = self->_queue;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __36___CDXPCEventPublisher_removeToken___block_invoke;
    v4[3] = &unk_1E7368B18;
    v4[4] = self;
    v4[5] = token;
    dispatch_async(queue, v4);
  }
}

- (void)activatePublisherWithStreamName:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136446210;
  v3 = a1;
  _os_log_error_impl(&dword_191750000, a2, OS_LOG_TYPE_ERROR, "Failed to create publisher for stream %{public}s", &v2, 0xCu);
}

- (void)handleEventWithAction:(uint64_t)a1 token:(uint64_t)a2 descriptor:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v4 = 138543618;
  v5 = v3;
  v6 = 2048;
  v7 = a2;
  _os_log_debug_impl(&dword_191750000, log, OS_LOG_TYPE_DEBUG, "Publisher for stream %{public}@ removing subscription with token %llu", &v4, 0x16u);
}

- (void)handleEventWithAction:(uint64_t)a1 token:(NSObject *)a2 descriptor:.cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&dword_191750000, a2, OS_LOG_TYPE_DEBUG, "Publisher for stream %{public}@ received initial barrier", &v3, 0xCu);
}

- (void)sendEvent:(uint64_t)a1 toSubscriber:(void *)a2 handler:(uint64_t)a3 .cold.1(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = a2;
  xpc_strerror();
  OUTLINED_FUNCTION_0_27();
  _os_log_error_impl(&dword_191750000, v3, OS_LOG_TYPE_ERROR, "Failed to send event to stream %{public}@: %s", v4, 0x16u);
}

@end