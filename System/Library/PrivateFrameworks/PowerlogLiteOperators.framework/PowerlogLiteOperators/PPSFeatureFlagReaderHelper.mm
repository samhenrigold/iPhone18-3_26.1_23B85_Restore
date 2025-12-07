@interface PPSFeatureFlagReaderHelper
- (id)createXPCConnection;
- (id)getFeatureFlags;
- (void)closeXPCConnection;
@end

@implementation PPSFeatureFlagReaderHelper

- (id)getFeatureFlags
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = logPPSFeatureFlagReaderHelper();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "[PPSFeatureFlagReader] getFeatureFlags called", buf, 2u);
  }

  date = [MEMORY[0x277CBEAA8] date];
  createXPCConnection = [(PPSFeatureFlagReaderHelper *)self createXPCConnection];
  *buf = 0;
  v16 = buf;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__5;
  v19 = __Block_byref_object_dispose__5;
  v20 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __45__PPSFeatureFlagReaderHelper_getFeatureFlags__block_invoke;
  v14[3] = &unk_27825BB18;
  v14[4] = buf;
  [createXPCConnection getFeatureFlags:v14];
  v6 = logPPSFeatureFlagReaderHelper();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(v16 + 5);
    *v21 = 138412290;
    v22 = v13;
    _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "[PPSFeatureFlagReader] getFeatureFlags result: %@", v21, 0xCu);
  }

  [(PPSFeatureFlagReaderHelper *)self closeXPCConnection];
  date2 = [MEMORY[0x277CBEAA8] date];
  [date2 timeIntervalSinceDate:date];
  v9 = v8;
  v10 = logPPSFeatureFlagReaderHelper();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *v21 = 134218498;
    v22 = v9;
    v23 = 2112;
    v24 = date;
    v25 = 2112;
    v26 = date2;
    _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "[PPSFeatureFlagReader] Time for getting getFeatureFlags reading to run: %f, %@, %@", v21, 0x20u);
  }

  v11 = *(v16 + 5);
  _Block_object_dispose(buf, 8);

  return v11;
}

- (id)createXPCConnection
{
  v3 = logPPSFeatureFlagReaderHelper();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "[PPSFeatureFlagReader] establishing a connection", buf, 2u);
  }

  v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.PPSFeatureFlagReader"];
  connectionToServer = self->_connectionToServer;
  self->_connectionToServer = v4;

  v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_282C83050];
  [(NSXPCConnection *)self->_connectionToServer setRemoteObjectInterface:v6];

  [(NSXPCConnection *)self->_connectionToServer setInterruptionHandler:&__block_literal_global_9];
  [(NSXPCConnection *)self->_connectionToServer setInvalidationHandler:&__block_literal_global_12];
  [(NSXPCConnection *)self->_connectionToServer resume];
  v7 = logPPSFeatureFlagReaderHelper();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *v10 = 0;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "[PPSFeatureFlagReader] Spinning up xpc svc", v10, 2u);
  }

  v8 = [(NSXPCConnection *)self->_connectionToServer synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_16];

  return v8;
}

void __49__PPSFeatureFlagReaderHelper_createXPCConnection__block_invoke()
{
  v0 = logPPSFeatureFlagReaderHelper();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_21A4C6000, v0, OS_LOG_TYPE_ERROR, "[PPSFeatureFlagReader] Connection was interrupted.", v1, 2u);
  }
}

void __49__PPSFeatureFlagReaderHelper_createXPCConnection__block_invoke_10()
{
  v0 = logPPSFeatureFlagReaderHelper();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_21A4C6000, v0, OS_LOG_TYPE_ERROR, "[PPSFeatureFlagReader] Invalid connection handler is happening.", v1, 2u);
  }
}

void __49__PPSFeatureFlagReaderHelper_createXPCConnection__block_invoke_13(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = logPPSFeatureFlagReaderHelper();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [v2 description];
    v5 = 138412290;
    v6 = v4;
    _os_log_error_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_ERROR, "os_log_debug Connection error happened %@", &v5, 0xCu);
  }
}

- (void)closeXPCConnection
{
  v3 = logPPSFeatureFlagReaderHelper();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "[PPSFeatureFlagReader] getFeatureFlags Connection Closed", v4, 2u);
  }

  [(NSXPCConnection *)self->_connectionToServer invalidate];
}

@end