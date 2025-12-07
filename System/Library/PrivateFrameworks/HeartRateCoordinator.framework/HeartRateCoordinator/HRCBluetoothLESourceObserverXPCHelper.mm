@interface HRCBluetoothLESourceObserverXPCHelper
- (HRCBluetoothLESourceObserverXPCHelperDelegate)delegate;
- (NSXPCConnection)connection;
- (void)connect;
- (void)disconnect;
- (void)handleSourceListUpdate:(id)update;
- (void)setupWithDelegate:(id)delegate onQueue:(id)queue;
- (void)updateProcessName:(id)name;
@end

@implementation HRCBluetoothLESourceObserverXPCHelper

- (void)connect
{
  v19[2] = *MEMORY[0x277D85DE8];
  v3 = hws_get_framework_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_2521DF000, v3, OS_LOG_TYPE_DEFAULT, "connecting to service", &buf, 2u);
  }

  v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.heartratecoordinatord.observer" options:0];
  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286469460];
  [v4 setRemoteObjectInterface:v5];

  v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2864689A0];
  [v4 setExportedInterface:v6];

  v7 = MEMORY[0x277CBEB98];
  v19[0] = objc_opt_class();
  v19[1] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v9 = [v7 setWithArray:v8];

  exportedInterface = [v4 exportedInterface];
  [exportedInterface setClasses:v9 forSelector:sel_handleSourceListUpdate_ argumentIndex:0 ofReply:0];

  [v4 setExportedObject:self];
  objc_initWeak(&buf, self);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __48__HRCBluetoothLESourceObserverXPCHelper_connect__block_invoke;
  v16[3] = &unk_2796FA868;
  objc_copyWeak(&v17, &buf);
  [v4 setInterruptionHandler:v16];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __48__HRCBluetoothLESourceObserverXPCHelper_connect__block_invoke_54;
  v14 = &unk_2796FA868;
  objc_copyWeak(&v15, &buf);
  [v4 setInvalidationHandler:&v11];
  objc_storeWeak(&self->_connection, v4);
  [v4 activate];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&buf);
}

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

- (HRCBluetoothLESourceObserverXPCHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setupWithDelegate:(id)delegate onQueue:(id)queue
{
  queueCopy = queue;
  objc_storeWeak(&self->_delegate, delegate);
  primaryQueue = self->_primaryQueue;
  self->_primaryQueue = queueCopy;
}

void __48__HRCBluetoothLESourceObserverXPCHelper_connect__block_invoke(uint64_t a1)
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
  block[2] = __48__HRCBluetoothLESourceObserverXPCHelper_connect__block_invoke_51;
  block[3] = &unk_2796FA868;
  objc_copyWeak(&v6, (a1 + 32));
  dispatch_async(v4, block);

  objc_destroyWeak(&v6);
}

void __48__HRCBluetoothLESourceObserverXPCHelper_connect__block_invoke_51(uint64_t a1)
{
  v2 = hws_get_framework_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2521DF000, v2, OS_LOG_TYPE_DEFAULT, "trying to re-establish connection", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [MEMORY[0x277CCAC38] processInfo];
  v5 = [v4 processName];
  [WeakRetained updateProcessName:v5];
}

void __48__HRCBluetoothLESourceObserverXPCHelper_connect__block_invoke_54(uint64_t a1)
{
  v2 = hws_get_framework_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_2521DF000, v2, OS_LOG_TYPE_INFO, "invalidation handler called", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setConnection:0];
}

- (void)updateProcessName:(id)name
{
  nameCopy = name;
  primaryQueue = [(HRCBluetoothLESourceObserverXPCHelper *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);

  connection = [(HRCBluetoothLESourceObserverXPCHelper *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy updateProcessName:nameCopy];
}

- (void)disconnect
{
  primaryQueue = [(HRCBluetoothLESourceObserverXPCHelper *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);

  connection = [(HRCBluetoothLESourceObserverXPCHelper *)self connection];
  [connection invalidate];

  [(HRCBluetoothLESourceObserverXPCHelper *)self setConnection:0];
}

- (void)handleSourceListUpdate:(id)update
{
  updateCopy = update;
  delegate = [(HRCBluetoothLESourceObserverXPCHelper *)self delegate];
  [delegate handleUpdatedSourceList:updateCopy];
}

@end