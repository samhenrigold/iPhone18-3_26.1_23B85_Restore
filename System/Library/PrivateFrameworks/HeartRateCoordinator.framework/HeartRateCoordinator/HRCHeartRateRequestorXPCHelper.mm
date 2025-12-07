@interface HRCHeartRateRequestorXPCHelper
- (HRCXPCConnectionHelperDelegate)delegate;
- (NSXPCConnection)connection;
- (void)connect;
- (void)handleHeartRateData:(id)data;
- (void)invalidateConnection;
- (void)requestOpportunisticUpdates:(BOOL)updates;
- (void)requestStreamingMode:(unint64_t)mode;
- (void)setUserWorkoutActivityType:(unint64_t)type locationType:(int64_t)locationType;
- (void)setupWithDelegate:(id)delegate onQueue:(id)queue;
- (void)updateProcessName:(id)name;
@end

@implementation HRCHeartRateRequestorXPCHelper

- (void)setupWithDelegate:(id)delegate onQueue:(id)queue
{
  queueCopy = queue;
  objc_storeWeak(&self->_delegate, delegate);
  primaryQueue = self->_primaryQueue;
  self->_primaryQueue = queueCopy;
}

- (void)connect
{
  primaryQueue = [(HRCHeartRateRequestorXPCHelper *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);

  v5 = hws_get_framework_log(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_2521DF000, v5, OS_LOG_TYPE_DEFAULT, "connecting to service", buf, 2u);
  }

  v6 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.heartratecoordinatord.requestor" options:0];
  v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2864694C0];
  [v6 setRemoteObjectInterface:v7];

  v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286469040];
  [v6 setExportedInterface:v8];

  [v6 setExportedObject:self];
  objc_initWeak(buf, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __41__HRCHeartRateRequestorXPCHelper_connect__block_invoke;
  v9[3] = &unk_2796FA868;
  objc_copyWeak(&v10, buf);
  [v6 setInterruptionHandler:v9];
  [v6 setInvalidationHandler:&__block_literal_global_0];
  objc_storeWeak(&self->_connection, v6);
  [v6 activate];
  [(HRCHeartRateRequestorXPCHelper *)self setConnected:1];
  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __41__HRCHeartRateRequestorXPCHelper_connect__block_invoke(uint64_t a1)
{
  v2 = hws_get_framework_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    __48__HRCBluetoothLESourceObserverXPCHelper_connect__block_invoke_cold_1(v2);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained primaryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__HRCHeartRateRequestorXPCHelper_connect__block_invoke_54;
  block[3] = &unk_2796FA868;
  objc_copyWeak(&v6, (a1 + 32));
  dispatch_async(v4, block);

  objc_destroyWeak(&v6);
}

void __41__HRCHeartRateRequestorXPCHelper_connect__block_invoke_54(uint64_t a1)
{
  v2 = hws_get_framework_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2521DF000, v2, OS_LOG_TYPE_DEFAULT, "trying to re-establish connection", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained delegate];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__HRCHeartRateRequestorXPCHelper_connect__block_invoke_55;
  v5[3] = &unk_2796FA900;
  objc_copyWeak(&v6, (a1 + 32));
  [v4 refreshRequiredWithCompletionHandler:v5];

  objc_destroyWeak(&v6);
}

void __41__HRCHeartRateRequestorXPCHelper_connect__block_invoke_55(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateProcessName:v11];

  v13 = objc_loadWeakRetained((a1 + 32));
  [v13 requestStreamingMode:a3];

  v14 = objc_loadWeakRetained((a1 + 32));
  [v14 requestOpportunisticUpdates:a4];

  if (a5)
  {
    v15 = objc_loadWeakRetained((a1 + 32));
    [v15 setUserWorkoutActivityType:a5 locationType:a6];
  }
}

void __41__HRCHeartRateRequestorXPCHelper_connect__block_invoke_2(uint64_t a1)
{
  v1 = hws_get_framework_log(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    __41__HRCHeartRateRequestorXPCHelper_connect__block_invoke_2_cold_1(v1);
  }
}

- (void)updateProcessName:(id)name
{
  nameCopy = name;
  primaryQueue = [(HRCHeartRateRequestorXPCHelper *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);

  connection = [(HRCHeartRateRequestorXPCHelper *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy updateProcessName:nameCopy];
}

- (void)requestStreamingMode:(unint64_t)mode
{
  primaryQueue = [(HRCHeartRateRequestorXPCHelper *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);

  connection = [(HRCHeartRateRequestorXPCHelper *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy requestStreamingMode:mode];
}

- (void)requestOpportunisticUpdates:(BOOL)updates
{
  updatesCopy = updates;
  primaryQueue = [(HRCHeartRateRequestorXPCHelper *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);

  connection = [(HRCHeartRateRequestorXPCHelper *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy requestOpportunisticUpdates:updatesCopy];
}

- (void)setUserWorkoutActivityType:(unint64_t)type locationType:(int64_t)locationType
{
  primaryQueue = [(HRCHeartRateRequestorXPCHelper *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);

  connection = [(HRCHeartRateRequestorXPCHelper *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy setUserWorkoutActivityType:type locationType:locationType];
}

- (void)invalidateConnection
{
  primaryQueue = [(HRCHeartRateRequestorXPCHelper *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);

  connection = [(HRCHeartRateRequestorXPCHelper *)self connection];
  if (connection)
  {
  }

  else
  {
    connected = [(HRCHeartRateRequestorXPCHelper *)self connected];
    if ((connected & 1) == 0)
    {
      return;
    }
  }

  v6 = hws_get_framework_log(connected);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_2521DF000, v6, OS_LOG_TYPE_DEFAULT, "closing connection to server", v8, 2u);
  }

  connection2 = [(HRCHeartRateRequestorXPCHelper *)self connection];
  [connection2 invalidate];

  [(HRCHeartRateRequestorXPCHelper *)self setConnection:0];
  [(HRCHeartRateRequestorXPCHelper *)self setConnected:0];
}

- (void)handleHeartRateData:(id)data
{
  dataCopy = data;
  delegate = [(HRCHeartRateRequestorXPCHelper *)self delegate];
  [delegate handleHeartRateData:dataCopy];
}

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

- (HRCXPCConnectionHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end