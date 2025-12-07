@interface MCMCommand
+ (Class)incomingMessageClass;
+ (id)relayToPrivilegedDaemonMessage:(id)message context:(id)context;
+ (unint64_t)command;
- (MCMCommand)initWithContext:(id)context resultPromise:(id)promise;
- (MCMCommand)initWithMessage:(id)message context:(id)context reply:(id)reply;
- (void)execute;
- (void)recordWarning:(id)warning;
@end

@implementation MCMCommand

- (void)recordWarning:(id)warning
{
  warningCopy = warning;
  warnings = [(MCMCommand *)self warnings];
  [warnings addObject:warningCopy];
}

- (void)execute
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = NSStringFromSelector(a2);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v2 raise:v3 format:{@"%@ was called on the base class %@", v4, v6}];

  __break(1u);
}

- (MCMCommand)initWithMessage:(id)message context:(id)context reply:(id)reply
{
  messageCopy = message;
  replyCopy = reply;
  contextCopy = context;
  resultPromise = [replyCopy resultPromise];
  v12 = [(MCMCommand *)self initWithContext:contextCopy resultPromise:resultPromise];

  if (v12)
  {
    objc_storeStrong(&v12->_reply, reply);
    warnings = v12->_warnings;
    warnings = [messageCopy warnings];
    [(NSMutableArray *)warnings addObjectsFromArray:warnings];
  }

  return v12;
}

- (MCMCommand)initWithContext:(id)context resultPromise:(id)promise
{
  v15 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  promiseCopy = promise;
  v14.receiver = self;
  v14.super_class = MCMCommand;
  v9 = [(MCMCommand *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, context);
    warnings = [promiseCopy warnings];
    warnings = v10->_warnings;
    v10->_warnings = warnings;

    objc_storeStrong(&v10->_resultPromise, promise);
  }

  return v10;
}

+ (id)relayToPrivilegedDaemonMessage:(id)message context:(id)context
{
  v17 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  contextCopy = context;
  container_xpc_set_use_shared_connection();
  clientIdentity = [contextCopy clientIdentity];

  [clientIdentity createLibsystemClient];
  v8 = container_client_copy_encoded_xpc_object();
  if (v8)
  {
    xpcObject = [messageCopy xpcObject];
    xpc_dictionary_set_value(xpcObject, "ProxyForClient", v8);

    *buf = 0;
    xpcObject2 = [messageCopy xpcObject];
    v11 = container_xpc_send_sync_message();

    if (v11)
    {
      v12 = [[MCMResultRelay alloc] initWithXPCReplyFromRelay:v11];
    }

    else
    {
      v14 = [[MCMError alloc] initWithLibsystemError:*buf];
      v12 = [(MCMResultBase *)[MCMResultRelay alloc] initWithError:v14];
    }

    container_error_free();
  }

  else
  {
    v11 = [[MCMError alloc] initWithErrorType:1 category:2];
    v12 = [[MCMResultBase alloc] initWithError:v11];
    v13 = container_log_handle_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = 1;
      _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, "Could not serialize client for proxy; error = %llu", buf, 0xCu);
    }
  }

  container_free_client();

  return v12;
}

+ (Class)incomingMessageClass
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = NSStringFromSelector(a2);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v2 raise:v3 format:{@"%@ was called on the base class %@", v4, v6}];

  __break(1u);
  return result;
}

+ (unint64_t)command
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = NSStringFromSelector(a2);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v2 raise:v3 format:{@"%@ was called on the base class %@", v4, v6}];

  __break(1u);
  return result;
}

@end