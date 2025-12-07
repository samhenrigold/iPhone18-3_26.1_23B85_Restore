@interface STMTelemetryController
- (void)getTelemetry:(id)telemetry;
- (void)retrieveTelemetryWithCompletionHandler:(id)handler;
- (void)stopService;
@end

@implementation STMTelemetryController

- (void)getTelemetry:(id)telemetry
{
  telemetryCopy = telemetry;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__STMTelemetryController_getTelemetry___block_invoke;
  v6[3] = &unk_279D1D308;
  v7 = telemetryCopy;
  v5 = telemetryCopy;
  [(STMTelemetryController *)self retrieveTelemetryWithCompletionHandler:v6];
}

void __39__STMTelemetryController_getTelemetry___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = v5;
    if (!v5)
    {
      v9 = STStorageLog(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __39__STMTelemetryController_getTelemetry___block_invoke_cold_1(v6, v9);
      }

      v7 = *(a1 + 32);
      v8 = MEMORY[0x277CBEC10];
    }

    (*(v7 + 16))(v7, v8);
  }
}

- (void)retrieveTelemetryWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  connection = [(STMTelemetryController *)self connection];

  if (!connection)
  {
    v7 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.storagedatad" options:0];
    v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287C949F0];
    [v7 setRemoteObjectInterface:v8];

    [v7 resume];
    [(STMTelemetryController *)self setConnection:v7];
  }

  v9 = STStorageLog(v6);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_26BB8E000, v9, OS_LOG_TYPE_INFO, "Connecting to StorageDataService", buf, 2u);
  }

  connection2 = [(STMTelemetryController *)self connection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __65__STMTelemetryController_retrieveTelemetryWithCompletionHandler___block_invoke;
  v16[3] = &unk_279D1D330;
  v11 = handlerCopy;
  v17 = v11;
  v12 = [connection2 remoteObjectProxyWithErrorHandler:v16];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__STMTelemetryController_retrieveTelemetryWithCompletionHandler___block_invoke_5;
  v14[3] = &unk_279D1D358;
  v15 = v11;
  v13 = v11;
  [v12 storageInfoDict:v14];
}

void __65__STMTelemetryController_retrieveTelemetryWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = STStorageLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __65__STMTelemetryController_retrieveTelemetryWithCompletionHandler___block_invoke_cold_1(v3, v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)stopService
{
  connection = [(STMTelemetryController *)self connection];
  [connection invalidate];

  [(STMTelemetryController *)self setConnection:0];
}

void __39__STMTelemetryController_getTelemetry___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_26BB8E000, a2, OS_LOG_TYPE_ERROR, "Failed to retrieve storage telemetry: %@", &v2, 0xCu);
}

void __65__STMTelemetryController_retrieveTelemetryWithCompletionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_26BB8E000, a2, OS_LOG_TYPE_ERROR, "Error connecting to StorageDataService: %@", &v2, 0xCu);
}

@end