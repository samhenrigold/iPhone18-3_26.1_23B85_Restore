@interface PerfPowerServicesReaderHelper
- (id)createXPCConnection;
- (id)postDataRequest:(id)request outError:(id *)error;
@end

@implementation PerfPowerServicesReaderHelper

- (id)createXPCConnection
{
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.PerfPowerTelemetryReaderService"];
  connectionToServer = self->_connectionToServer;
  self->_connectionToServer = v3;

  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287034B10];
  [(NSXPCConnection *)self->_connectionToServer setRemoteObjectInterface:v5];

  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
  v11 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  remoteObjectInterface = [(NSXPCConnection *)self->_connectionToServer remoteObjectInterface];
  [remoteObjectInterface setClasses:v10 forSelector:sel_dataForRequest_withReply_ argumentIndex:0 ofReply:1];

  remoteObjectInterface2 = [(NSXPCConnection *)self->_connectionToServer remoteObjectInterface];
  [remoteObjectInterface2 setClasses:v11 forSelector:sel_dataForRequest_withReply_ argumentIndex:1 ofReply:1];

  [(NSXPCConnection *)self->_connectionToServer setInterruptionHandler:&__block_literal_global_10];
  [(NSXPCConnection *)self->_connectionToServer setInvalidationHandler:&__block_literal_global_16];
  v14 = logHandle([(NSXPCConnection *)self->_connectionToServer resume]);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E225000, v14, OS_LOG_TYPE_INFO, "Spinning up XPC service", buf, 2u);
  }

  v15 = [(NSXPCConnection *)self->_connectionToServer synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_20];

  return v15;
}

void __52__PerfPowerServicesReaderHelper_createXPCConnection__block_invoke_14(uint64_t a1)
{
  v1 = logHandle(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    __52__PerfPowerServicesReaderHelper_createXPCConnection__block_invoke_14_cold_1(v1);
  }
}

- (id)postDataRequest:(id)request outError:(id *)error
{
  requestCopy = request;
  if (requestCopy)
  {
    createXPCConnection = [(PerfPowerServicesReaderHelper *)self createXPCConnection];
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__6;
    v21 = __Block_byref_object_dispose__6;
    v22 = 0;
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__6;
    v15 = __Block_byref_object_dispose__6;
    v16 = 0;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __58__PerfPowerServicesReaderHelper_postDataRequest_outError___block_invoke;
    v10[3] = &unk_279A11938;
    v10[4] = &v11;
    v10[5] = &v17;
    [createXPCConnection dataForRequest:requestCopy withReply:v10];
    *error = v12[5];
    [(PerfPowerServicesReaderHelper *)self closeXPCConnection];
    v8 = v18[5];
    _Block_object_dispose(&v11, 8);

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    createXPCConnection = logHandle(0);
    if (os_log_type_enabled(createXPCConnection, OS_LOG_TYPE_DEBUG))
    {
      [PerfPowerServicesReaderHelper postDataRequest:createXPCConnection outError:?];
    }

    v8 = 0;
  }

  return v8;
}

void __58__PerfPowerServicesReaderHelper_postDataRequest_outError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = logHandle(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __58__PerfPowerServicesReaderHelper_postDataRequest_outError___block_invoke_cold_1(v7, v8);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

void __52__PerfPowerServicesReaderHelper_createXPCConnection__block_invoke(uint64_t a1)
{
  v1 = logHandle(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __52__PerfPowerServicesReaderHelper_createXPCConnection__block_invoke_cold_1(v1);
  }
}

void __52__PerfPowerServicesReaderHelper_createXPCConnection__block_invoke_17(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = logHandle(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __52__PerfPowerServicesReaderHelper_createXPCConnection__block_invoke_17_cold_1(v2, v3);
  }
}

- (void)postDataRequest:(os_log_t)log outError:.cold.1(os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136315394;
  v2 = "[PerfPowerServicesReaderHelper postDataRequest:outError:]";
  v3 = 2112;
  v4 = @"Empty request";
  _os_log_debug_impl(&dword_25E225000, log, OS_LOG_TYPE_DEBUG, "(%s) %@", &v1, 0x16u);
}

void __58__PerfPowerServicesReaderHelper_postDataRequest_outError___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v4 = 136315394;
  v5 = "[PerfPowerServicesReaderHelper postDataRequest:outError:]_block_invoke";
  v6 = 2112;
  v7 = v3;
  _os_log_debug_impl(&dword_25E225000, a2, OS_LOG_TYPE_DEBUG, "(%s) Error while processing request: %@", &v4, 0x16u);
}

void __52__PerfPowerServicesReaderHelper_createXPCConnection__block_invoke_17_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 description];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_25E225000, a2, OS_LOG_TYPE_ERROR, "Connection error: %@", &v4, 0xCu);
}

@end