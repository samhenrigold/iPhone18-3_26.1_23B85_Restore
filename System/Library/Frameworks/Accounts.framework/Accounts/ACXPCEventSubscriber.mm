@interface ACXPCEventSubscriber
+ (id)sharedSubscriber;
- (ACXPCEventSubscriber)init;
- (void)registerAccountChangeEventHandler:(id)handler;
@end

@implementation ACXPCEventSubscriber

+ (id)sharedSubscriber
{
  if (sharedSubscriber_onceToken != -1)
  {
    +[ACXPCEventSubscriber sharedSubscriber];
  }

  v3 = sharedSubscriber__sharedSubscriber;

  return v3;
}

void __40__ACXPCEventSubscriber_sharedSubscriber__block_invoke()
{
  if (!sharedSubscriber__sharedSubscriber)
  {
    sharedSubscriber__sharedSubscriber = objc_alloc_init(ACXPCEventSubscriber);

    MEMORY[0x1EEE66BB8]();
  }
}

- (ACXPCEventSubscriber)init
{
  v7.receiver = self;
  v7.super_class = ACXPCEventSubscriber;
  v2 = [(ACXPCEventSubscriber *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("ACXPCEventHandler", v3);
    replyQueue = v2->_replyQueue;
    v2->_replyQueue = v4;
  }

  return v2;
}

- (void)registerAccountChangeEventHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _ACLogSystem(handlerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ACXPCEventSubscriber registerAccountChangeEventHandler:];
  }

  replyQueue = self->_replyQueue;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __58__ACXPCEventSubscriber_registerAccountChangeEventHandler___block_invoke;
  handler[3] = &unk_1E7977528;
  v9 = handlerCopy;
  v7 = handlerCopy;
  xpc_set_event_stream_handler("com.apple.accounts.changes", replyQueue, handler);
}

void __58__ACXPCEventSubscriber_registerAccountChangeEventHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _ACLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __58__ACXPCEventSubscriber_registerAccountChangeEventHandler___block_invoke_cold_1();
  }

  if (MEMORY[0x1AC5B3F60](v3) == MEMORY[0x1E69E9E80])
  {
    string = xpc_dictionary_get_string(v3, "MessageType");
    if (string)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
      v7 = _ACLogSystem(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        __58__ACXPCEventSubscriber_registerAccountChangeEventHandler___block_invoke_cold_2();
      }

      if ([v6 isEqualToString:@"AccountChange"])
      {
        uint64 = xpc_dictionary_get_uint64(v3, "ChangeType");
        v9 = _ACLogSystem(uint64);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          __58__ACXPCEventSubscriber_registerAccountChangeEventHandler___block_invoke_cold_3();
        }

        length = 0;
        data = xpc_dictionary_get_data(v3, "AccountData", &length);
        if (data && length)
        {
          v11 = [MEMORY[0x1E695DEF0] dataWithBytes:data length:?];
          v14 = 0;
          v12 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v11 error:&v14];
          v13 = v14;
          if (v12)
          {
            (*(*(a1 + 32) + 16))();
          }
        }
      }
    }
  }
}

@end