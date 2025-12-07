@interface WFPersonalHotspotStateMonitor
- (WFPersonalHotspotStateMonitor)init;
- (int64_t)clientConnections;
- (void)_runManagerCallbackThread;
- (void)_spawnManagerCallbackThread;
- (void)asyncMISDiscoveryState:(id)state;
- (void)dealloc;
- (void)setMISDiscoveryState:(BOOL)state immediateDisable:(BOOL)disable;
@end

@implementation WFPersonalHotspotStateMonitor

- (WFPersonalHotspotStateMonitor)init
{
  v17 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = WFPersonalHotspotStateMonitor;
  v2 = [(WFPersonalHotspotStateMonitor *)&v14 init];
  v3 = dispatch_queue_create("com.apple.wifikit.personal-hotspot", 0);
  internalQueue = v2->_internalQueue;
  v2->_internalQueue = v3;

  v5 = v2->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__WFPersonalHotspotStateMonitor_init__block_invoke;
  block[3] = &unk_279EBCFE0;
  v6 = v2;
  v13 = v6;
  dispatch_async(v5, block);
  v7 = WFLogForCategory(4uLL);
  v8 = OSLogForWFLogLevel(3uLL);
  v9 = v8;
  if (WFCurrentLogLevel(v8, v10) >= 3 && v7 && os_log_type_enabled(v7, v9))
  {
    *buf = 136315138;
    v16 = "[WFPersonalHotspotStateMonitor init]";
    _os_log_impl(&dword_273ECD000, v7, v9, "%s", buf, 0xCu);
  }

  return v6;
}

void __37__WFPersonalHotspotStateMonitor_init__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _spawnManagerCallbackThread];
  v2 = [WFClient alloc];
  v6 = [*(a1 + 32) callbackRunLoop];
  v3 = [(WFClient *)v2 initWithCallbackRunLoop:v6];
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  *(v4 + 8) = v3;
}

- (void)dealloc
{
  callbackThread = [(WFPersonalHotspotStateMonitor *)self callbackThread];
  [callbackThread cancel];

  v4.receiver = self;
  v4.super_class = WFPersonalHotspotStateMonitor;
  [(WFPersonalHotspotStateMonitor *)&v4 dealloc];
}

- (int64_t)clientConnections
{
  result = _NETRBClientCreate(MEMORY[0x277D85CD0], &__block_literal_global_8, 0);
  v5 = 0;
  if (result)
  {
    v3 = result;
    v4 = 0;
    _NETRBClientGetHostCount(result, &v4, &v5);
    _NETRBClientDestroy(v3);
    return v5;
  }

  return result;
}

- (void)_spawnManagerCallbackThread
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CCACC8]) initWithTarget:self selector:sel__runManagerCallbackThread object:0];
  [v3 start];
  v4 = WFLogForCategory(4uLL);
  v5 = OSLogForWFLogLevel(3uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) >= 3 && v4 && os_log_type_enabled(v4, v6))
  {
    v8 = 136315394;
    v9 = "[WFPersonalHotspotStateMonitor _spawnManagerCallbackThread]";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_273ECD000, v4, v6, "%s: thread %@", &v8, 0x16u);
  }

  [(WFPersonalHotspotStateMonitor *)self setCallbackThread:v3];
  [(WFPersonalHotspotStateMonitor *)self performSelector:sel_class onThread:v3 withObject:0 waitUntilDone:1];
}

- (void)_runManagerCallbackThread
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  [currentThread setName:@"WFPersonalHotspotStateMonitor callback thread"];

  self->_callbackRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
  port = [MEMORY[0x277CBEB00] port];
  currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
  [port scheduleInRunLoop:currentRunLoop forMode:*MEMORY[0x277CBE738]];

  objc_autoreleasePoolPop(v3);
  v7 = WFLogForCategory(4uLL);
  v8 = OSLogForWFLogLevel(3uLL);
  v9 = v8;
  if (WFCurrentLogLevel(v8, v10) >= 3 && v7 && os_log_type_enabled(v7, v9))
  {
    callbackRunLoop = self->_callbackRunLoop;
    v13 = 136315394;
    v14 = "[WFPersonalHotspotStateMonitor _runManagerCallbackThread]";
    v15 = 2112;
    v16 = callbackRunLoop;
    _os_log_impl(&dword_273ECD000, v7, v9, "%s: runLoop %@", &v13, 0x16u);
  }

  currentRunLoop2 = [MEMORY[0x277CBEB88] currentRunLoop];
  [currentRunLoop2 run];
}

- (void)setMISDiscoveryState:(BOOL)state immediateDisable:(BOOL)disable
{
  disableCopy = disable;
  stateCopy = state;
  v22 = *MEMORY[0x277D85DE8];
  v7 = WFLogForCategory(4uLL);
  v8 = OSLogForWFLogLevel(3uLL);
  v9 = v8;
  if (WFCurrentLogLevel(v8, v10) >= 3 && v7 && os_log_type_enabled(v7, v9))
  {
    *buf = 136315650;
    v17 = "[WFPersonalHotspotStateMonitor setMISDiscoveryState:immediateDisable:]";
    v18 = 1024;
    v19 = stateCopy;
    v20 = 1024;
    v21 = disableCopy;
    _os_log_impl(&dword_273ECD000, v7, v9, "%s: state %d immediateDisable: %d", buf, 0x18u);
  }

  objc_initWeak(buf, self);
  internalQueue = self->_internalQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__WFPersonalHotspotStateMonitor_setMISDiscoveryState_immediateDisable___block_invoke;
  v12[3] = &unk_279EBE3C0;
  objc_copyWeak(&v13, buf);
  v14 = stateCopy;
  v15 = disableCopy;
  dispatch_async(internalQueue, v12);
  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

void __71__WFPersonalHotspotStateMonitor_setMISDiscoveryState_immediateDisable___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained client];
  [v3 setMISDiscoveryState:*(a1 + 40) immediateDisable:*(a1 + 41)];

  if (objc_opt_class())
  {
    v4 = [MEMORY[0x277CFA238] sharedInstance];
    [v4 reloadControlsForExtension:@"com.apple.WiFiKit.PersonalHotspotControl" kind:@"PersonalHotspotControl" reason:@"Connectivity module triggered MIS state change"];
  }
}

- (void)asyncMISDiscoveryState:(id)state
{
  stateCopy = state;
  if (stateCopy)
  {
    objc_initWeak(&location, self);
    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__WFPersonalHotspotStateMonitor_asyncMISDiscoveryState___block_invoke;
    block[3] = &unk_279EBDF78;
    objc_copyWeak(&v8, &location);
    v7 = stateCopy;
    dispatch_async(internalQueue, block);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __56__WFPersonalHotspotStateMonitor_asyncMISDiscoveryState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained client];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__WFPersonalHotspotStateMonitor_asyncMISDiscoveryState___block_invoke_2;
  v4[3] = &unk_279EBE3E8;
  v5 = *(a1 + 32);
  [v3 asyncMISDiscoveryState:v4];
}

uint64_t __56__WFPersonalHotspotStateMonitor_asyncMISDiscoveryState___block_invoke_2(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(4uLL);
  v5 = OSLogForWFLogLevel(3uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) >= 3 && v4 && os_log_type_enabled(v4, v6))
  {
    v9 = 136315394;
    v10 = "[WFPersonalHotspotStateMonitor asyncMISDiscoveryState:]_block_invoke_2";
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&dword_273ECD000, v4, v6, "%s: MIS discovery state: %d", &v9, 0x12u);
  }

  return (*(*(a1 + 32) + 16))();
}

@end