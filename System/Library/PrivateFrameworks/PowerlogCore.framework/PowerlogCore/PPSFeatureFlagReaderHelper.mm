@interface PPSFeatureFlagReaderHelper
- (id)createXPCConnection;
- (id)getFeatureFlags;
- (void)closeXPCConnection;
- (void)getFeatureFlags;
@end

@implementation PPSFeatureFlagReaderHelper

- (id)getFeatureFlags
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = logPPSFeatureFlagReaderHelper(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PPSFeatureFlagReaderHelper getFeatureFlags];
  }

  date = [MEMORY[0x1E695DF00] date];
  createXPCConnection = [(PPSFeatureFlagReaderHelper *)self createXPCConnection];
  v15 = 0;
  v16[0] = &v15;
  v16[1] = 0x3032000000;
  v16[2] = __Block_byref_object_copy__7;
  v16[3] = __Block_byref_object_dispose__7;
  v17 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __45__PPSFeatureFlagReaderHelper_getFeatureFlags__block_invoke;
  v14[3] = &unk_1E8519EF0;
  v14[4] = &v15;
  v6 = logPPSFeatureFlagReaderHelper([createXPCConnection getFeatureFlags:v14]);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(PPSFeatureFlagReaderHelper *)v16 getFeatureFlags];
  }

  [(PPSFeatureFlagReaderHelper *)self closeXPCConnection];
  date2 = [MEMORY[0x1E695DF00] date];
  v8 = [date2 timeIntervalSinceDate:date];
  v10 = v9;
  v11 = logPPSFeatureFlagReaderHelper(v8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v19 = v10;
    v20 = 2112;
    v21 = date;
    v22 = 2112;
    v23 = date2;
    _os_log_debug_impl(&dword_1D8611000, v11, OS_LOG_TYPE_DEBUG, "[PPSFeatureFlagReader] Time for getting getFeatureFlags reading to run: %f, %@, %@", buf, 0x20u);
  }

  v12 = *(v16[0] + 40);
  _Block_object_dispose(&v15, 8);

  return v12;
}

- (id)createXPCConnection
{
  v3 = logPPSFeatureFlagReaderHelper(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PPSFeatureFlagReaderHelper createXPCConnection];
  }

  v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.PPSFeatureFlagReader"];
  connectionToServer = self->_connectionToServer;
  self->_connectionToServer = v4;

  v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F54328C8];
  [(NSXPCConnection *)self->_connectionToServer setRemoteObjectInterface:v6];

  [(NSXPCConnection *)self->_connectionToServer setInterruptionHandler:&__block_literal_global_9];
  [(NSXPCConnection *)self->_connectionToServer setInvalidationHandler:&__block_literal_global_12];
  v7 = logPPSFeatureFlagReaderHelper([(NSXPCConnection *)self->_connectionToServer resume]);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PPSFeatureFlagReaderHelper createXPCConnection];
  }

  v8 = [(NSXPCConnection *)self->_connectionToServer synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_16_0];

  return v8;
}

void __49__PPSFeatureFlagReaderHelper_createXPCConnection__block_invoke(uint64_t a1)
{
  v1 = logPPSFeatureFlagReaderHelper(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __49__PPSFeatureFlagReaderHelper_createXPCConnection__block_invoke_cold_1();
  }
}

void __49__PPSFeatureFlagReaderHelper_createXPCConnection__block_invoke_10(uint64_t a1)
{
  v1 = logPPSFeatureFlagReaderHelper(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __49__PPSFeatureFlagReaderHelper_createXPCConnection__block_invoke_10_cold_1();
  }
}

void __49__PPSFeatureFlagReaderHelper_createXPCConnection__block_invoke_13(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = logPPSFeatureFlagReaderHelper(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __49__PPSFeatureFlagReaderHelper_createXPCConnection__block_invoke_13_cold_1(v2, v3);
  }
}

- (void)closeXPCConnection
{
  v3 = logPPSFeatureFlagReaderHelper(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PPSFeatureFlagReaderHelper closeXPCConnection];
  }

  [(NSXPCConnection *)self->_connectionToServer invalidate];
}

- (void)getFeatureFlags
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(*self + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_1D8611000, a2, OS_LOG_TYPE_DEBUG, "[PPSFeatureFlagReader] getFeatureFlags result: %@", &v3, 0xCu);
}

void __49__PPSFeatureFlagReaderHelper_createXPCConnection__block_invoke_13_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 description];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1D8611000, a2, OS_LOG_TYPE_ERROR, "os_log_debug Connection error happened %@", &v4, 0xCu);
}

@end