@interface LAAssertionsProxy
- (id)_remoteObjectProxyWithErrorHandler:(id)handler;
- (void)dealloc;
- (void)dropTouchIdAssertionWithReason:(id)reason reply:(id)reply;
- (void)setConnection:(id)connection;
- (void)takeTouchIdAssertionWithReason:(id)reason reply:(id)reply;
@end

@implementation LAAssertionsProxy

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;

  v4.receiver = self;
  v4.super_class = LAAssertionsProxy;
  [(LAAssertionsProxy *)&v4 dealloc];
}

- (void)takeTouchIdAssertionWithReason:(id)reason reply:(id)reply
{
  replyCopy = reply;
  reasonCopy = reason;
  v8 = LA_LOG_0(reasonCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF403000, v8, OS_LOG_TYPE_INFO, "Will acquire TouchID assertion", buf, 2u);
  }

  if (replyCopy)
  {
    v9 = replyCopy;
  }

  else
  {
    v9 = &__block_literal_global_1;
  }

  v10 = MEMORY[0x1E12D4BC0](v9);

  v11 = [(LAAssertionsProxy *)self _remoteObjectProxyWithErrorHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__LAAssertionsProxy_takeTouchIdAssertionWithReason_reply___block_invoke_2;
  v13[3] = &unk_1E86B5D08;
  v14 = v10;
  v12 = v10;
  [v11 takeTouchIdAssertionWithReason:reasonCopy reply:v13];
}

void __58__LAAssertionsProxy_takeTouchIdAssertionWithReason_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LA_LOG_0(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __58__LAAssertionsProxy_takeTouchIdAssertionWithReason_reply___block_invoke_2_cold_1(v3, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&dword_1DF403000, v5, OS_LOG_TYPE_INFO, "Did acquire TouchID assertion", v12, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)dropTouchIdAssertionWithReason:(id)reason reply:(id)reply
{
  replyCopy = reply;
  reasonCopy = reason;
  v8 = LA_LOG_0(reasonCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF403000, v8, OS_LOG_TYPE_INFO, "Will remove TouchID assertion", buf, 2u);
  }

  if (replyCopy)
  {
    v9 = replyCopy;
  }

  else
  {
    v9 = &__block_literal_global_2;
  }

  v10 = MEMORY[0x1E12D4BC0](v9);

  v11 = [(LAAssertionsProxy *)self _remoteObjectProxyWithErrorHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__LAAssertionsProxy_dropTouchIdAssertionWithReason_reply___block_invoke_2;
  v13[3] = &unk_1E86B5D08;
  v14 = v10;
  v12 = v10;
  [v11 dropTouchIdAssertionWithReason:reasonCopy reply:v13];
}

void __58__LAAssertionsProxy_dropTouchIdAssertionWithReason_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LA_LOG_0(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __58__LAAssertionsProxy_dropTouchIdAssertionWithReason_reply___block_invoke_2_cold_1(v3, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&dword_1DF403000, v5, OS_LOG_TYPE_INFO, "Did remove TouchID assertion", v12, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (id)_remoteObjectProxyWithErrorHandler:(id)handler
{
  v16[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    [LAAssertionsProxy _remoteObjectProxyWithErrorHandler:];
  }

  v5 = handlerCopy;
  isConnected = [(LAAssertionsProxy *)self isConnected];
  if (isConnected)
  {
    connection = self->_connection;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __56__LAAssertionsProxy__remoteObjectProxyWithErrorHandler___block_invoke;
    v13[3] = &unk_1E86B5D08;
    v14 = v5;
    v8 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v13];
    v9 = v14;
  }

  else
  {
    v10 = LA_LOG_0(isConnected);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [LAAssertionsProxy _remoteObjectProxyWithErrorHandler:v10];
    }

    v15 = *MEMORY[0x1E696A278];
    v16[0] = @"Cannot perform operation while disconnected.";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v11 = [LAErrorHelper errorWithCode:-1000 userInfo:v9];
    (v5)[2](v5, v11);

    v8 = 0;
  }

  return v8;
}

void __56__LAAssertionsProxy__remoteObjectProxyWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = LA_LOG_0(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __56__LAAssertionsProxy__remoteObjectProxyWithErrorHandler___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = *(a1 + 32);
  v12 = *MEMORY[0x1E696AA08];
  v15[0] = *MEMORY[0x1E696A278];
  v15[1] = v12;
  v16[0] = @"Could not obtain remote Assertions proxy.";
  v16[1] = v3;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v14 = [LAErrorHelper errorWithCode:-1000 userInfo:v13];
  (*(v11 + 16))(v11, v14);
}

- (void)setConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5A7AB58];
  [(NSXPCConnection *)connectionCopy setRemoteObjectInterface:v5];

  if (self->_queue)
  {
    [(NSXPCConnection *)connectionCopy _setQueue:?];
  }

  [(NSXPCConnection *)connectionCopy setInterruptionHandler:&__block_literal_global_58];
  [(NSXPCConnection *)connectionCopy setInvalidationHandler:&__block_literal_global_61];
  [(NSXPCConnection *)connectionCopy resume];
  connection = self->_connection;
  if (connection)
  {
    [(NSXPCConnection *)connection invalidate];
    v7 = self->_connection;
    self->_connection = 0;
  }

  v8 = self->_connection;
  self->_connection = connectionCopy;
}

void __35__LAAssertionsProxy_setConnection___block_invoke(uint64_t a1)
{
  v1 = LA_LOG_0(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1DF403000, v1, OS_LOG_TYPE_DEFAULT, "Assertions XPC connection was interrupted.", v2, 2u);
  }
}

void __35__LAAssertionsProxy_setConnection___block_invoke_59(uint64_t a1)
{
  v1 = LA_LOG_0(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1DF403000, v1, OS_LOG_TYPE_DEFAULT, "Assertions XPC connection was invalidated.", v2, 2u);
  }
}

void __58__LAAssertionsProxy_takeTouchIdAssertionWithReason_reply___block_invoke_2_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_1DF403000, a2, a3, "Failed to acquire TouchID assertion: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __58__LAAssertionsProxy_dropTouchIdAssertionWithReason_reply___block_invoke_2_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_1DF403000, a2, a3, "Failed to remove TouchID assertion: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __56__LAAssertionsProxy__remoteObjectProxyWithErrorHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_1DF403000, a2, a3, "Could not obtain remote Assertions proxy: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end