@interface CryptexEventSubscriber
+ (NSMutableDictionary)subscribers;
+ (OS_dispatch_queue)streamQueue;
+ (void)attachToStream:(id)stream withRegistration:(id)registration;
+ (void)detachFromStream:(id)stream;
+ (void)initializeEventStream;
- (CryptexEventSubscriber)initWithFlags:(unint64_t)flags name:(id)name;
- (id)_handleXPCEvent:(id)event;
- (id)registerForEvents:(unint64_t)events onQueue:(id)queue withCompletion:(id)completion;
- (void)cancel;
- (void)dealloc;
- (void)handleXPCEvent:(id)event;
@end

@implementation CryptexEventSubscriber

+ (OS_dispatch_queue)streamQueue
{
  if (streamQueue_onceToken != -1)
  {
    +[CryptexEventSubscriber streamQueue];
  }

  v3 = _streamQueue;

  return v3;
}

uint64_t __37__CryptexEventSubscriber_streamQueue__block_invoke()
{
  _streamQueue = dispatch_queue_create("com.apple.security.libcryptex.com.apple.security.cryptex.events", 0);

  return MEMORY[0x2A1C71028]();
}

+ (NSMutableDictionary)subscribers
{
  if (subscribers_onceToken != -1)
  {
    +[CryptexEventSubscriber subscribers];
  }

  v2 = +[CryptexEventSubscriber streamQueue];
  dispatch_assert_queue_V2(v2);

  v3 = _subscribers;

  return v3;
}

uint64_t __37__CryptexEventSubscriber_subscribers__block_invoke()
{
  _subscribers = objc_alloc_init(MEMORY[0x29EDB8E00]);

  return MEMORY[0x2A1C71028]();
}

+ (void)initializeEventStream
{
  if (initializeEventStream_onceToken != -1)
  {
    +[CryptexEventSubscriber initializeEventStream];
  }
}

void __47__CryptexEventSubscriber_initializeEventStream__block_invoke()
{
  v0 = +[CryptexEventSubscriber streamQueue];
  xpc_set_event_stream_handler("com.apple.security.cryptex.events", v0, &__block_literal_global_14);
}

void __47__CryptexEventSubscriber_initializeEventStream__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *MEMORY[0x29EDCA9D8];
  v3 = a2;
  string = xpc_dictionary_get_string(v3, v2);
  v5 = +[CryptexEventSubscriber subscribers];
  v6 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:string];
  v7 = [v5 objectForKeyedSubscript:v6];

  [v7 handleXPCEvent:v3];
}

+ (void)attachToStream:(id)stream withRegistration:(id)registration
{
  streamCopy = stream;
  registrationCopy = registration;
  +[CryptexEventSubscriber initializeEventStream];
  v7 = +[CryptexEventSubscriber streamQueue];
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __58__CryptexEventSubscriber_attachToStream_withRegistration___block_invoke;
  v10[3] = &unk_29EEA7660;
  v11 = streamCopy;
  v12 = registrationCopy;
  v8 = registrationCopy;
  v9 = streamCopy;
  dispatch_async(v7, v10);
}

void __58__CryptexEventSubscriber_attachToStream_withRegistration___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[CryptexEventSubscriber subscribers];
  v4 = [*(a1 + 32) xpcEventName];
  [v3 setObject:v2 forKeyedSubscript:v4];

  v6 = [*(a1 + 32) xpcEventName];
  v5 = v6;
  [v6 UTF8String];
  xpc_set_event();
}

+ (void)detachFromStream:(id)stream
{
  streamCopy = stream;
  +[CryptexEventSubscriber initializeEventStream];
  v4 = +[CryptexEventSubscriber streamQueue];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __43__CryptexEventSubscriber_detachFromStream___block_invoke;
  block[3] = &unk_29EEA7688;
  v7 = streamCopy;
  v5 = streamCopy;
  dispatch_async(v4, block);
}

void __43__CryptexEventSubscriber_detachFromStream___block_invoke(uint64_t a1)
{
  v2 = +[CryptexEventSubscriber subscribers];
  v3 = [*(a1 + 32) xpcEventName];
  [v2 removeObjectForKey:v3];

  v5 = [*(a1 + 32) xpcEventName];
  v4 = v5;
  [v5 UTF8String];
  xpc_set_event();
}

- (CryptexEventSubscriber)initWithFlags:(unint64_t)flags name:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    v14.receiver = self;
    v14.super_class = CryptexEventSubscriber;
    v8 = [(CryptexEventSubscriber *)&v14 init];
    if (v8)
    {
      v9 = os_log_create("com.apple.libcryptex", "event_subscriber");
      log = v8->_log;
      v8->_log = v9;

      v8->_flags = flags;
      v8->_active = 0;
      queue = v8->_queue;
      v8->_queue = 0;

      objc_storeStrong(&v8->_xpcEventName, name);
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)registerForEvents:(unint64_t)events onQueue:(id)queue withCompletion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v10 = xpc_dictionary_create(0, 0, 0);
  if (queueCopy)
  {
    if (completionCopy)
    {
      [(CryptexEventSubscriber *)self setCallback:completionCopy];
      v11 = dispatch_queue_attr_make_initially_inactive(0);
      v12 = dispatch_queue_create("com.apple.security.libcryptex.event_subscriber", v11);

      [(CryptexEventSubscriber *)self setQueue:v12];
      queue = [(CryptexEventSubscriber *)self queue];
      dispatch_set_target_queue(queue, queueCopy);

      queue2 = [(CryptexEventSubscriber *)self queue];
      dispatch_activate(queue2);

      [(CryptexEventSubscriber *)self setActive:1];
      v15 = cryptex_event_mask_ext_to_int(events);
      xpc_dictionary_set_uint64(v10, "CryptexEventMask", v15);
      v16 = getprogname();
      xpc_dictionary_set_string(v10, "CryptexEventClientName", v16);
      [CryptexEventSubscriber attachToStream:self withRegistration:v10];
      v17 = 0;
      goto LABEL_19;
    }

    v22 = [(CryptexEventSubscriber *)self log];

    if (v22)
    {
      v23 = [(CryptexEventSubscriber *)self log];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = 3;
      }

      else
      {
        v24 = 2;
      }

      v28[0] = 0;
      v21 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &dword_2986C0000, v23, 16, "Invalid callback", v28, 2);
    }

    else
    {
      v27[0] = 0;
      v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Invalid callback", v27, 2);
    }

    Error = createError("[CryptexEventSubscriber registerForEvents:onQueue:withCompletion:]", "event.m", 125, "com.apple.security.cryptex", 3, 0, v21);
  }

  else
  {
    v18 = [(CryptexEventSubscriber *)self log];

    if (v18)
    {
      v19 = [(CryptexEventSubscriber *)self log];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = 3;
      }

      else
      {
        v20 = 2;
      }

      v30[0] = 0;
      v21 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &dword_2986C0000, v19, 16, "Invalid queue", v30, 2);
    }

    else
    {
      v29[0] = 0;
      v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Invalid queue", v29, 2);
    }

    Error = createError("[CryptexEventSubscriber registerForEvents:onQueue:withCompletion:]", "event.m", 118, "com.apple.security.cryptex", 3, 0, v21);
  }

  v17 = Error;
  free(v21);
LABEL_19:

  return v17;
}

- (void)cancel
{
  queue = [(CryptexEventSubscriber *)self queue];
  v4 = queue;
  if (queue)
  {
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = __32__CryptexEventSubscriber_cancel__block_invoke;
    block[3] = &unk_29EEA7688;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

void __32__CryptexEventSubscriber_cancel__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) callback];
  if ([*(a1 + 32) active])
  {
    [*(a1 + 32) setActive:0];
    [*(a1 + 32) setCallback:0];
    [*(a1 + 32) setQueue:0];
    [CryptexEventSubscriber detachFromStream:*(a1 + 32)];
    if (v2)
    {
      (*(v2 + 2))(v2, 0, 0, 0);
    }
  }
}

- (void)dealloc
{
  [(CryptexEventSubscriber *)self cancel];
  v3.receiver = self;
  v3.super_class = CryptexEventSubscriber;
  [(CryptexEventSubscriber *)&v3 dealloc];
}

- (id)_handleXPCEvent:(id)event
{
  v37 = *MEMORY[0x29EDCA608];
  eventCopy = event;
  v33 = 0;
  v34 = 0;
  length = 0;
  queue = [(CryptexEventSubscriber *)self queue];
  dispatch_assert_queue_V2(queue);

  if (![(CryptexEventSubscriber *)self active])
  {
    v11 = 0;
    v12 = 0;
    goto LABEL_35;
  }

  callback = [(CryptexEventSubscriber *)self callback];

  if (!callback)
  {
    v13 = [(CryptexEventSubscriber *)self log];

    if (v13)
    {
      v14 = [(CryptexEventSubscriber *)self log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = 3;
      }

      else
      {
        v15 = 2;
      }

      LOWORD(v35) = 0;
      v10 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &dword_2986C0000, v14, 16, "Subscriber has invalid callback.", &v35, 2);
    }

    else
    {
      LOWORD(v35) = 0;
      v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Subscriber has invalid callback.", &v35, 2);
    }

    Error = createError("[CryptexEventSubscriber _handleXPCEvent:]", "event.m", 201, "com.apple.security.cryptex", 3, 0, v10);
    goto LABEL_34;
  }

  if (_xpc_dictionary_try_get_uint64(eventCopy, "CRYPTEX_EVENT_TYPE", &v34))
  {
    v7 = [(CryptexEventSubscriber *)self log];

    if (v7)
    {
      v8 = [(CryptexEventSubscriber *)self log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      v35 = 136315138;
      v36 = "CRYPTEX_EVENT_TYPE";
      v10 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_2986C0000, v8, 16, "Event missing key '%s'", &v35);
    }

    else
    {
      v35 = 136315138;
      v36 = "CRYPTEX_EVENT_TYPE";
      v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Event missing key '%s'", &v35);
    }

    Error = createError("[CryptexEventSubscriber _handleXPCEvent:]", "event.m", 210, "com.apple.security.cryptex", 3, 0, v10);
LABEL_34:
    v12 = Error;
    free(v10);
    v11 = 0;
    goto LABEL_35;
  }

  if (_xpc_dictionary_try_get_string(eventCopy, "CRYPTEX_EVENT_CRYPTEX_NAME", &v33))
  {
    v16 = [(CryptexEventSubscriber *)self log];

    if (v16)
    {
      v17 = [(CryptexEventSubscriber *)self log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = 3;
      }

      else
      {
        v18 = 2;
      }

      v35 = 136315138;
      v36 = "CRYPTEX_EVENT_CRYPTEX_NAME";
      v10 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &dword_2986C0000, v17, 16, "Event missing key '%s'", &v35);
    }

    else
    {
      v35 = 136315138;
      v36 = "CRYPTEX_EVENT_CRYPTEX_NAME";
      v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Event missing key '%s'", &v35);
    }

    Error = createError("[CryptexEventSubscriber _handleXPCEvent:]", "event.m", 219, "com.apple.security.cryptex", 3, 0, v10);
    goto LABEL_34;
  }

  data = xpc_dictionary_get_data(eventCopy, "CRYPTEX_EVENT_INFO", &length);
  if (!data)
  {
    v11 = 0;
    v12 = 0;
    goto LABEL_39;
  }

  v21 = MEMORY[0x29EDBA0C0];
  v22 = [MEMORY[0x29EDB8DA0] dataWithBytes:data length:length];
  v31 = 0;
  v11 = [v21 propertyListWithData:v22 options:0 format:0 error:&v31];
  v12 = v31;

  if (v11)
  {
LABEL_39:
    v28 = cryptex_event_type_int_to_ext(v34);
    callback2 = [(CryptexEventSubscriber *)self callback];
    (callback2)[2](callback2, v28, v33, v11);

    goto LABEL_35;
  }

  v23 = [(CryptexEventSubscriber *)self log];

  if (v23)
  {
    v24 = [(CryptexEventSubscriber *)self log];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = 3;
    }

    else
    {
      v25 = 2;
    }

    LOWORD(v35) = 0;
    v26 = _os_log_send_and_compose_impl(v25, 0, 0, 0, &dword_2986C0000, v24, 16, "Failed to parse property list", &v35, 2);
  }

  else
  {
    LOWORD(v35) = 0;
    v26 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Failed to parse property list", &v35, 2);
  }

  v30 = createError("[CryptexEventSubscriber _handleXPCEvent:]", "event.m", 232, "com.apple.security.cryptex", 3, v12, v26);
  free(v26);

  v11 = 0;
  v12 = v30;
LABEL_35:

  return v12;
}

- (void)handleXPCEvent:(id)event
{
  eventCopy = event;
  queue = [(CryptexEventSubscriber *)self queue];
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __41__CryptexEventSubscriber_handleXPCEvent___block_invoke;
  v7[3] = &unk_29EEA7660;
  v7[4] = self;
  v8 = eventCopy;
  v6 = eventCopy;
  dispatch_async(queue, v7);
}

void __41__CryptexEventSubscriber_handleXPCEvent___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = [*(a1 + 32) _handleXPCEvent:*(a1 + 40)];
  if (v2)
  {
    v3 = *__error();
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v5 = 138543618;
      v6 = v2;
      v7 = 1024;
      v8 = 72;
      _os_log_impl(&dword_2986C0000, v4, OS_LOG_TYPE_FAULT, "Failed to handle XPC event: %{public}@: %{darwin.errno}d", &v5, 0x12u);
    }

    *__error() = v3;
  }
}

@end