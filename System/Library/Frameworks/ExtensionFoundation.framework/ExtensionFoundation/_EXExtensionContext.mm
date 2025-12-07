@interface _EXExtensionContext
- (BOOL)shouldAcceptXPCConnection:(id)connection;
- (_EXExtensionContext)init;
- (id)makeXPCConnectionWithError:(id *)error;
- (void)completeRequestReturningItems:(id)items completionHandler:(id)handler;
- (void)completeRequestWithHandler:(id)handler;
- (void)invalidate;
@end

@implementation _EXExtensionContext

- (_EXExtensionContext)init
{
  v3.receiver = self;
  v3.super_class = _EXExtensionContext;
  return [(_EXExtensionContext *)&v3 init];
}

- (BOOL)shouldAcceptXPCConnection:(id)connection
{
  v3 = _EXDefaultLog(connection);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v7 = 136315906;
    v8 = "/Library/Caches/com.apple.xbs/Sources/ExtensionFoundation/ExtensionFoundation/Source/NSExtension/NSExtensionSupport/EXExtensionContext.m";
    v9 = 1024;
    v10 = 24;
    v11 = 2080;
    v12 = "[_EXExtensionContext shouldAcceptXPCConnection:]";
    v13 = 2112;
    v14 = v5;
  }

  __break(1u);
  return result;
}

- (id)makeXPCConnectionWithError:(id *)error
{
  internalImplementation = [(_EXExtensionContext *)self internalImplementation];
  v5 = [internalImplementation makeXPCConnectionWithError:error];

  return v5;
}

- (void)invalidate
{
  internalImplementation = [(_EXExtensionContext *)self internalImplementation];
  [internalImplementation invalidate];
}

- (void)completeRequestWithHandler:(id)handler
{
  handlerCopy = handler;
  [(_EXExtensionContext *)self invalidate];
  handlerCopy[2](handlerCopy, 1);
}

- (void)completeRequestReturningItems:(id)items completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [items count];
  if (v7)
  {
    v8 = _EXDefaultLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [_EXExtensionContext completeRequestReturningItems:v8 completionHandler:?];
    }

    [(_EXExtensionContext *)self invalidate];
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    [(_EXExtensionContext *)self invalidate];
    handlerCopy[2](handlerCopy, 1);
  }
}

- (void)completeRequestReturningItems:(os_log_t)log completionHandler:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136446210;
  v2 = "[_EXExtensionContext completeRequestReturningItems:completionHandler:]";
  _os_log_fault_impl(&dword_1847D1000, log, OS_LOG_TYPE_FAULT, "'%{public}s' called with items. This is not supported!", &v1, 0xCu);
}

@end