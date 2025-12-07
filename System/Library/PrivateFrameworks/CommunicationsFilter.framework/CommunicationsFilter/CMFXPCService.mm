@interface CMFXPCService
- (BOOL)_connect;
- (BOOL)_disconnect;
- (CMFXPCService)init;
- (id)sendSynchronousXPCRequest:(id)request;
- (void)_disconnected;
- (void)_sendXPCRequest:(id)request completionBlock:(id)block;
- (void)dealloc;
@end

@implementation CMFXPCService

- (CMFXPCService)init
{
  v6.receiver = self;
  v6.super_class = CMFXPCService;
  v2 = [(CMFXPCService *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.cmfxpcservice", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (void)dealloc
{
  connection = self->_connection;
  if (connection)
  {
    xpc_connection_cancel(connection);
    v4 = self->_connection;
    self->_connection = 0;
  }

  v5.receiver = self;
  v5.super_class = CMFXPCService;
  [(CMFXPCService *)&v5 dealloc];
}

- (id)sendSynchronousXPCRequest:(id)request
{
  requestCopy = request;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__CMFXPCService_sendSynchronousXPCRequest___block_invoke;
  v8[3] = &unk_278DE6E60;
  v8[4] = &v9;
  v5 = MEMORY[0x245D4C7E0](v8);
  self->_retries = 0;
  [(CMFXPCService *)self _sendXPCRequest:requestCopy completionBlock:v5];
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)_sendXPCRequest:(id)request completionBlock:(id)block
{
  requestCopy = request;
  blockCopy = block;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__CMFXPCService__sendXPCRequest_completionBlock___block_invoke;
  block[3] = &unk_278DE6E88;
  block[4] = self;
  v12 = requestCopy;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = requestCopy;
  dispatch_sync(queue, block);
}

void __49__CMFXPCService__sendXPCRequest_completionBlock___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (![*(a1 + 32) _connect])
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D191A8] code:-1 userInfo:0];
    v5 = 0;
    goto LABEL_22;
  }

  v2 = xpc_connection_send_message_with_reply_sync(*(*(a1 + 32) + 8), *(a1 + 40));
  v3 = MEMORY[0x245D4C900]();
  if (v3 != MEMORY[0x277D86480])
  {
    if (v3 == MEMORY[0x277D86468])
    {
      v8 = CMFDefaultLog(v3, v4);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 32);
        v17 = 134217984;
        v18 = v9;
        _os_log_impl(&dword_243BDE000, v8, OS_LOG_TYPE_DEFAULT, "Result back for request (%p)", &v17, 0xCu);
      }

      v6 = IMGetXPCCodableFromDictionaryWithStandardAllowlist();
      v5 = IMGetXPCDictionaryFromDictionary();
      v11 = CMFDefaultLog(v5, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v5 allKeys];
        v17 = 138412290;
        v18 = v12;
        _os_log_impl(&dword_243BDE000, v11, OS_LOG_TYPE_DEFAULT, "Response: %@", &v17, 0xCu);
      }

      v15 = CMFDefaultLog(v13, v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 134217984;
        v18 = v6;
        _os_log_impl(&dword_243BDE000, v15, OS_LOG_TYPE_DEFAULT, "Error: %p", &v17, 0xCu);
      }
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    goto LABEL_21;
  }

  if (v2 == MEMORY[0x277D863F8])
  {
    v7 = CMFDefaultLog(v3, v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __49__CMFXPCService__sendXPCRequest_completionBlock___block_invoke_cold_2(v7);
    }

    goto LABEL_19;
  }

  if (v2 == MEMORY[0x277D863F0])
  {
    v7 = CMFDefaultLog(v3, v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __49__CMFXPCService__sendXPCRequest_completionBlock___block_invoke_cold_1(v7);
    }

LABEL_19:
  }

  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D191A8] code:-1 userInfo:0];
  v5 = 0;
LABEL_21:

LABEL_22:
  v16 = *(a1 + 48);
  if (v16)
  {
    (*(v16 + 16))(v16, v5, v6);
  }
}

- (BOOL)_connect
{
  if (self->_connection)
  {
    return 1;
  }

  v10 = v2;
  v11 = v3;
  v6 = CMFDefaultLog(self, a2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_243BDE000, v6, OS_LOG_TYPE_DEFAULT, "Connecting to CMFSync Agent", v9, 2u);
  }

  v7 = IMXPCCreateConnectionForServiceWithQueue();
  connection = self->_connection;
  self->_connection = v7;

  IMXPCConfigureConnection();
  return self->_connection != 0;
}

uint64_t __25__CMFXPCService__connect__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = CMFDefaultLog(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_243BDE000, v3, OS_LOG_TYPE_DEFAULT, "com.apple.cmfsyncagent", v5, 2u);
  }

  return [*(a1 + 32) _disconnected];
}

- (BOOL)_disconnect
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__CMFXPCService__disconnect__block_invoke;
  block[3] = &unk_278DE6EB0;
  block[4] = self;
  dispatch_async(queue, block);
  return 1;
}

void __28__CMFXPCService__disconnect__block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 32) + 8))
  {
    v3 = CMFDefaultLog(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_243BDE000, v3, OS_LOG_TYPE_DEFAULT, "Forcing a disconnect, terminating connection", v6, 2u);
    }

    xpc_connection_cancel(*(*(a1 + 32) + 8));
    v4 = *(a1 + 32);
    v5 = *(v4 + 8);
    *(v4 + 8) = 0;
  }
}

- (void)_disconnected
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__CMFXPCService__disconnected__block_invoke;
  block[3] = &unk_278DE6EB0;
  block[4] = self;
  dispatch_async(queue, block);
}

void __30__CMFXPCService__disconnected__block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 32) + 8))
  {
    v3 = CMFDefaultLog(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_243BDE000, v3, OS_LOG_TYPE_DEFAULT, "Clearing out _connection, we're disconnected", v6, 2u);
    }

    xpc_connection_cancel(*(*(a1 + 32) + 8));
    v4 = *(a1 + 32);
    v5 = *(v4 + 8);
    *(v4 + 8) = 0;
  }
}

@end