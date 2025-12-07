@interface ANTonePlayerService
- (ANTonePlayerService)init;
- (void)dealloc;
- (void)invalidate;
- (void)playTone:(unint64_t)tone audioSessionID:(unsigned int)d endpointUUID:(id)iD completionHandler:(id)handler;
@end

@implementation ANTonePlayerService

- (ANTonePlayerService)init
{
  v14 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = ANTonePlayerService;
  v2 = [(ANTonePlayerService *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v4 = ANLogHandleTonePlayerService(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v11 = &stru_2836DAA20;
      v12 = 2112;
      v13 = @"com.apple.announced.toneplayer";
      _os_log_impl(&dword_2237C8000, v4, OS_LOG_TYPE_DEFAULT, "%@Creating Connection to Service: %@", buf, 0x16u);
    }

    v5 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.announced.toneplayer" options:4096];
    connection = v3->_connection;
    v3->_connection = v5;

    v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2836E9568];
    [(NSXPCConnection *)v3->_connection setRemoteObjectInterface:v7];

    [(NSXPCConnection *)v3->_connection setExportedObject:v3];
    [(NSXPCConnection *)v3->_connection setInterruptionHandler:&__block_literal_global_11];
    [(NSXPCConnection *)v3->_connection setInvalidationHandler:&__block_literal_global_49];
    [(NSXPCConnection *)v3->_connection resume];
  }

  return v3;
}

void __27__ANTonePlayerService_init__block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = ANLogHandleTonePlayerService(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 138412290;
    v3 = &stru_2836DAA20;
    _os_log_impl(&dword_2237C8000, v1, OS_LOG_TYPE_DEFAULT, "%@Connection to Announced was interrupted", &v2, 0xCu);
  }
}

void __27__ANTonePlayerService_init__block_invoke_47(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = ANLogHandleTonePlayerService(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 138412290;
    v3 = &stru_2836DAA20;
    _os_log_impl(&dword_2237C8000, v1, OS_LOG_TYPE_DEFAULT, "%@Connection to Announced was invalidated", &v2, 0xCu);
  }
}

- (void)dealloc
{
  [(ANTonePlayerService *)self invalidate];
  v3.receiver = self;
  v3.super_class = ANTonePlayerService;
  [(ANTonePlayerService *)&v3 dealloc];
}

- (void)invalidate
{
  connection = [(ANTonePlayerService *)self connection];
  [connection invalidate];
}

- (void)playTone:(unint64_t)tone audioSessionID:(unsigned int)d endpointUUID:(id)iD completionHandler:(id)handler
{
  v7 = *&d;
  handlerCopy = handler;
  iDCopy = iD;
  connection = [(ANTonePlayerService *)self connection];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __78__ANTonePlayerService_playTone_audioSessionID_endpointUUID_completionHandler___block_invoke;
  v18[3] = &unk_2784E1F20;
  v13 = handlerCopy;
  v19 = v13;
  v14 = [connection remoteObjectProxyWithErrorHandler:v18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __78__ANTonePlayerService_playTone_audioSessionID_endpointUUID_completionHandler___block_invoke_53;
  v16[3] = &unk_2784E1F20;
  v17 = v13;
  v15 = v13;
  [v14 playTone:tone audioSessionID:v7 endpointUUID:iDCopy completionHandler:v16];
}

void __78__ANTonePlayerService_playTone_audioSessionID_endpointUUID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ANLogHandleTonePlayerService(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412802;
    v7 = &stru_2836DAA20;
    v8 = 2080;
    v9 = "[ANTonePlayerService playTone:audioSessionID:endpointUUID:completionHandler:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_2237C8000, v4, OS_LOG_TYPE_ERROR, "%@%s: %@", &v6, 0x20u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __78__ANTonePlayerService_playTone_audioSessionID_endpointUUID_completionHandler___block_invoke_53(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = ANLogHandleTonePlayerService(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412802;
      v8 = &stru_2836DAA20;
      v9 = 2080;
      v10 = "[ANTonePlayerService playTone:audioSessionID:endpointUUID:completionHandler:]_block_invoke";
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&dword_2237C8000, v5, OS_LOG_TYPE_ERROR, "%@%s: %@", &v7, 0x20u);
    }
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v4);
  }
}

@end