@interface CRVehiclePolicyMonitor
- (CRVehiclePolicyMonitor)initWithVehicleCertificateSerial:(id)serial;
- (CRVehiclePolicyMonitoring)delegate;
- (id)monitoringConnection;
- (void)dealloc;
- (void)startMonitoring;
- (void)stopMonitoring;
- (void)willDisableCertificateSerial:(id)serial reply:(id)reply;
- (void)willEnableCertificateSerial:(id)serial reply:(id)reply;
@end

@implementation CRVehiclePolicyMonitor

- (CRVehiclePolicyMonitor)initWithVehicleCertificateSerial:(id)serial
{
  serialCopy = serial;
  v9.receiver = self;
  v9.super_class = CRVehiclePolicyMonitor;
  v5 = [(CRVehiclePolicyMonitor *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(CRVehiclePolicyMonitor *)v5 setVehicleCertificateSerial:serialCopy];
    monitoringConnection = [(CRVehiclePolicyMonitor *)v6 monitoringConnection];
    [(CRVehiclePolicyMonitor *)v6 setServiceConnection:monitoringConnection];

    [(CRVehiclePolicyMonitor *)v6 setMonitoring:0];
  }

  return v6;
}

- (void)dealloc
{
  [(CRVehiclePolicyMonitor *)self stopMonitoring];
  v3.receiver = self;
  v3.super_class = CRVehiclePolicyMonitor;
  [(CRVehiclePolicyMonitor *)&v3 dealloc];
}

- (id)monitoringConnection
{
  v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.carkit.monitoring.service" options:4096];
  v4 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4803A68];
  [v3 setRemoteObjectInterface:v4];
  v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F47FA8D0];
  [v3 setExportedInterface:v5];
  [v3 setExportedObject:self];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__CRVehiclePolicyMonitor_monitoringConnection__block_invoke;
  v9[3] = &unk_1E82FBF70;
  v9[4] = self;
  v6 = CarGeneralLogging([v3 setInterruptionHandler:v9]);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1C81FC000, v6, OS_LOG_TYPE_DEFAULT, "Connecting to CarKit vehicle policy monitoring service.", v8, 2u);
  }

  [v3 resume];

  return v3;
}

void *__46__CRVehiclePolicyMonitor_monitoringConnection__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isMonitoring];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 startMonitoring];
  }

  return result;
}

- (void)startMonitoring
{
  [(CRVehiclePolicyMonitor *)self setMonitoring:1];
  vehicleCertificateSerial = [(CRVehiclePolicyMonitor *)self vehicleCertificateSerial];
  serviceConnection = [(CRVehiclePolicyMonitor *)self serviceConnection];
  v4 = [serviceConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_21];
  [v4 startMonitoringCertificateSerial:vehicleCertificateSerial reply:&__block_literal_global_35_0];
}

void __41__CRVehiclePolicyMonitor_startMonitoring__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CarGeneralLogging(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __41__CRVehiclePolicyMonitor_startMonitoring__block_invoke_cold_1(v2, v3);
  }
}

void __41__CRVehiclePolicyMonitor_startMonitoring__block_invoke_33(uint64_t a1)
{
  v1 = CarGeneralLogging(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1C81FC000, v1, OS_LOG_TYPE_DEFAULT, "started monitoring", v2, 2u);
  }
}

- (void)stopMonitoring
{
  [(CRVehiclePolicyMonitor *)self setMonitoring:0];
  vehicleCertificateSerial = [(CRVehiclePolicyMonitor *)self vehicleCertificateSerial];
  serviceConnection = [(CRVehiclePolicyMonitor *)self serviceConnection];
  v4 = [serviceConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_37_1];
  [v4 stopMonitoringCertificateSerial:vehicleCertificateSerial reply:&__block_literal_global_40_1];
}

void __40__CRVehiclePolicyMonitor_stopMonitoring__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CarGeneralLogging(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __41__CRVehiclePolicyMonitor_startMonitoring__block_invoke_cold_1(v2, v3);
  }
}

void __40__CRVehiclePolicyMonitor_stopMonitoring__block_invoke_38(uint64_t a1)
{
  v1 = CarGeneralLogging(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1C81FC000, v1, OS_LOG_TYPE_DEFAULT, "stopped monitoring", v2, 2u);
  }
}

- (void)willEnableCertificateSerial:(id)serial reply:(id)reply
{
  replyCopy = reply;
  serialCopy = serial;
  v8 = CarGeneralLogging(serialCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C81FC000, v8, OS_LOG_TYPE_DEFAULT, "client received willEnableCertificateSerial", buf, 2u);
  }

  vehicleCertificateSerial = [(CRVehiclePolicyMonitor *)self vehicleCertificateSerial];
  v10 = [vehicleCertificateSerial isEqualToData:serialCopy];

  if (v10)
  {
    delegate = [(CRVehiclePolicyMonitor *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      delegate2 = [(CRVehiclePolicyMonitor *)self delegate];
      [delegate2 willEnableVehicleTrackedByMonitor:self];
    }

    replyCopy[2](replyCopy);
  }

  else
  {
    v15 = CarGeneralLogging(v11);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_1C81FC000, v15, OS_LOG_TYPE_DEFAULT, "not monitoring this serial, ignoring", v16, 2u);
    }
  }
}

- (void)willDisableCertificateSerial:(id)serial reply:(id)reply
{
  replyCopy = reply;
  serialCopy = serial;
  v8 = CarGeneralLogging(serialCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C81FC000, v8, OS_LOG_TYPE_DEFAULT, "client received willDisableCertificateSerial", buf, 2u);
  }

  vehicleCertificateSerial = [(CRVehiclePolicyMonitor *)self vehicleCertificateSerial];
  v10 = [vehicleCertificateSerial isEqualToData:serialCopy];

  if (v10)
  {
    delegate = [(CRVehiclePolicyMonitor *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      delegate2 = [(CRVehiclePolicyMonitor *)self delegate];
      [delegate2 willDisableVehicleTrackedByMonitor:self];
    }

    replyCopy[2](replyCopy);
  }

  else
  {
    v15 = CarGeneralLogging(v11);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_1C81FC000, v15, OS_LOG_TYPE_DEFAULT, "not monitoring this serial, ignoring", v16, 2u);
    }
  }
}

- (CRVehiclePolicyMonitoring)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __41__CRVehiclePolicyMonitor_startMonitoring__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C81FC000, a2, OS_LOG_TYPE_ERROR, "failed to connect to monitoring service %@", &v2, 0xCu);
}

@end