@interface HKXPCEventObserver
+ (void)_registerEventHandler:(id)handler forStream:(const char *)stream;
+ (void)_subscribeToStream:(const char *)stream clientIdentifier:(const char *)identifier;
+ (void)setAuthorizationStreamEventHandler:(id)handler;
+ (void)subscribeToAuthorizationStreamWithIdentifier:(const char *)identifier;
@end

@implementation HKXPCEventObserver

+ (void)setAuthorizationStreamEventHandler:(id)handler
{
  handlerCopy = handler;
  if (atomic_exchange(_hasRegisteredAuthorizationHandler, 1u))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HKXPCEventObserver.m" lineNumber:30 description:@"This method can only be called once during the lifetime of a process"];
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__HKXPCEventObserver_setAuthorizationStreamEventHandler___block_invoke;
  v9[3] = &unk_1E7381F68;
  v10 = handlerCopy;
  v7 = HKAuthorizationEventStream;
  v8 = handlerCopy;
  [HKXPCEventObserver _registerEventHandler:v9 forStream:v7];
}

uint64_t __57__HKXPCEventObserver_setAuthorizationStreamEventHandler___block_invoke(uint64_t a1, xpc_object_t xdict)
{
  xpc_dictionary_get_string(xdict, HKAuthorizationEventBundleIdentifierKey);
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

+ (void)subscribeToAuthorizationStreamWithIdentifier:(const char *)identifier
{
  v4 = atomic_load(_hasRegisteredAuthorizationHandler);
  if ((v4 & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HKXPCEventObserver.m" lineNumber:42 description:@"This method may not be called until a handler block is registered"];
  }

  v8 = HKAuthorizationEventStream;

  [HKXPCEventObserver _subscribeToStream:v8 clientIdentifier:identifier];
}

+ (void)_registerEventHandler:(id)handler forStream:(const char *)stream
{
  handlerCopy = handler;
  v7 = HKCreateSerialDispatchQueue(self, @"eventQueue");
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__HKXPCEventObserver__registerEventHandler_forStream___block_invoke;
  v9[3] = &unk_1E7381F90;
  v10 = handlerCopy;
  streamCopy = stream;
  v8 = handlerCopy;
  xpc_set_event_stream_handler(stream, v7, v9);
}

void __54__HKXPCEventObserver__registerEventHandler_forStream___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  _HKInitializeLogging(v3, v4);
  v7 = HKLogInfrastructure(v5, v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);

  if (v8)
  {
    v11 = HKLogInfrastructure(v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 40);
      v26 = 136315138;
      v27 = v12;
      _os_log_impl(&dword_19197B000, v11, OS_LOG_TYPE_INFO, "Received XPC event for %s", &v26, 0xCu);
    }
  }

  v13 = MEMORY[0x193B04A90](v3);
  if (v13 != MEMORY[0x1E69E9E80])
  {
    v15 = v13;
    v16 = MEMORY[0x1E69E9E98];
    _HKInitializeLogging(v13, v14);
    reply = HKLogInfrastructure(v17, v18);
    v20 = os_log_type_enabled(reply, OS_LOG_TYPE_ERROR);
    if (v15 == v16)
    {
      if (v20)
      {
        __54__HKXPCEventObserver__registerEventHandler_forStream___block_invoke_cold_2(v3);
      }
    }

    else if (v20)
    {
      __54__HKXPCEventObserver__registerEventHandler_forStream___block_invoke_cold_1(v15);
    }

LABEL_18:

    goto LABEL_19;
  }

  if (!xpc_dictionary_get_BOOL(v3, HKXPCEventSendToClientKey))
  {
    reply = xpc_dictionary_create_reply(v3);
    if (reply)
    {
      xpc_dictionary_send_reply();
    }

    else
    {
      v21 = MEMORY[0x193B04A30](v3);
      _HKInitializeLogging(v21, v22);
      v25 = HKLogInfrastructure(v23, v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        __54__HKXPCEventObserver__registerEventHandler_forStream___block_invoke_cold_3(v21, v25);
      }

      free(v21);
    }

    goto LABEL_18;
  }

  (*(*(a1 + 32) + 16))();
LABEL_19:
}

+ (void)_subscribeToStream:(const char *)stream clientIdentifier:(const char *)identifier
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_set_event();
}

void __54__HKXPCEventObserver__registerEventHandler_forStream___block_invoke_cold_1(const _xpc_type_s *a1)
{
  LODWORD(v7) = 136315138;
  *(&v7 + 4) = xpc_type_get_name(a1);
  OUTLINED_FUNCTION_0_23(&dword_19197B000, v1, v2, "XPC events subscriber received event of unexpected type %s", v3, v4, v5, v6, v7, DWORD2(v7));
}

void __54__HKXPCEventObserver__registerEventHandler_forStream___block_invoke_cold_2(void *a1)
{
  LODWORD(v7) = 136315138;
  *(&v7 + 4) = xpc_dictionary_get_string(a1, *MEMORY[0x1E69E9E28]);
  OUTLINED_FUNCTION_0_23(&dword_19197B000, v1, v2, "XPC events subscriber received error: %s", v3, v4, v5, v6, v7, DWORD2(v7));
}

void __54__HKXPCEventObserver__registerEventHandler_forStream___block_invoke_cold_3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = a1;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "Failed to create reply for XPC event: %s", &v2, 0xCu);
}

@end