@interface NFMLeashManager
- (NFMLLeashBreakDelegate)leashDelegate;
- (NFMLeashManager)init;
- (void)beginMonitoringLeash;
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i;
- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManagerDidUpdateState:(id)state;
- (void)connect;
- (void)dealloc;
- (void)leashTest;
- (void)peripheralDidUpdateRSSI:(id)i error:(id)error;
- (void)scalablePipeManager:(id)manager didRegisterEndpoint:(id)endpoint error:(id)error;
- (void)scalablePipeManager:(id)manager didUnregisterEndpoint:(id)endpoint;
- (void)scalablePipeManager:(id)manager pipeDidConnect:(id)connect;
- (void)scalablePipeManager:(id)manager pipeDidDisconnect:(id)disconnect error:(id)error;
- (void)scalablePipeManagerDidUpdateState:(id)state;
- (void)setDelegate:(id)delegate queue:(id)queue;
- (void)setLeashIdentifier:(id)identifier;
- (void)setLeashMode:(int64_t)mode;
- (void)setProximityChangeHandler:(id)handler;
- (void)setServiceUUID:(id)d;
- (void)setTestMode:(BOOL)mode;
- (void)stopMonitoringLeash;
- (void)update:(id)update;
@end

@implementation NFMLeashManager

- (NFMLeashManager)init
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = nfm_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v14 = 67;
    v15 = 2080;
    v16 = "[NFMLeashManager init]";
    _os_log_impl(&dword_25B17F000, v3, OS_LOG_TYPE_DEFAULT, "%d %s", buf, 0x12u);
  }

  v12.receiver = self;
  v12.super_class = NFMLeashManager;
  v4 = [(NFMLeashManager *)&v12 init];
  if (v4)
  {
    v5 = dispatch_queue_create("NFMLeashManager-CentralManagerQueue", 0);
    centralQueue = v4->_centralQueue;
    v4->_centralQueue = v5;

    objc_storeStrong(&v4->_externalQueue, MEMORY[0x277D85CD0]);
    v4->_connected = 0;
    v4->_leashMode = -1;
    v7 = [@"E20A39F4-73F5-4BC4-A12F-17D1AD07A961" copy];
    serviceUUID = v4->_serviceUUID;
    v4->_serviceUUID = v7;

    v9 = [@"FMIP-Leash" copy];
    leashIdentifier = v4->_leashIdentifier;
    v4->_leashIdentifier = v9;
  }

  return v4;
}

- (void)setDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  centralQueue = self->_centralQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__NFMLeashManager_setDelegate_queue___block_invoke;
  block[3] = &unk_279933730;
  block[4] = self;
  v12 = queueCopy;
  v13 = delegateCopy;
  v9 = delegateCopy;
  v10 = queueCopy;
  dispatch_async(centralQueue, block);
}

id __37__NFMLeashManager_setDelegate_queue___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 120), *(a1 + 40));
  v2 = *(a1 + 48);
  v3 = (*(a1 + 32) + 104);

  return objc_storeWeak(v3, v2);
}

- (void)leashTest
{
  if (self->_proximityChangeHandler)
  {
    v3 = *&count + 0.08;
    if (*&count + 0.08 > 360.0)
    {
      v3 = 0.0;
    }

    count = *&v3;
    v4 = sin(v3);
    externalQueue = self->_externalQueue;
    v6[1] = 3221225472;
    v6[0] = MEMORY[0x277D85DD0];
    v6[2] = __28__NFMLeashManager_leashTest__block_invoke;
    v6[3] = &unk_279933758;
    v6[4] = self;
    *&v6[5] = v4 * 30.0 + -60.0;
    dispatch_async(externalQueue, v6);
  }
}

uint64_t __28__NFMLeashManager_leashTest__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(a1 + 40);
  v3.n128_f64[0] = v2 + (rand() % 50 - 25);
  v4 = *(v1 + 16);

  return v4(v1, v3);
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = nfm_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v6 = 110;
    v7 = 2080;
    v8 = "[NFMLeashManager dealloc]";
    _os_log_impl(&dword_25B17F000, v3, OS_LOG_TYPE_DEFAULT, "%d %s", buf, 0x12u);
  }

  v4.receiver = self;
  v4.super_class = NFMLeashManager;
  [(NFMLeashManager *)&v4 dealloc];
}

- (void)setLeashMode:(int64_t)mode
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = nfm_log(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    v9 = 138;
    v10 = 2080;
    v11 = "[NFMLeashManager setLeashMode:]";
    v12 = 2048;
    modeCopy = mode;
    _os_log_impl(&dword_25B17F000, v5, OS_LOG_TYPE_DEFAULT, "%d %s - leashMode: %ld", buf, 0x1Cu);
  }

  centralQueue = self->_centralQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__NFMLeashManager_setLeashMode___block_invoke;
  v7[3] = &unk_279933758;
  v7[4] = self;
  v7[5] = mode;
  dispatch_async(centralQueue, v7);
}

- (void)setLeashIdentifier:(id)identifier
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = nfm_log(identifierCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    v11 = 147;
    v12 = 2080;
    v13 = "[NFMLeashManager setLeashIdentifier:]";
    v14 = 2112;
    v15 = identifierCopy;
    _os_log_impl(&dword_25B17F000, v5, OS_LOG_TYPE_DEFAULT, "%d %s - leashIdentifier: %@", buf, 0x1Cu);
  }

  centralQueue = self->_centralQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__NFMLeashManager_setLeashIdentifier___block_invoke;
  v8[3] = &unk_279933780;
  v8[4] = self;
  v9 = identifierCopy;
  v7 = identifierCopy;
  dispatch_async(centralQueue, v8);
}

- (void)setServiceUUID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = nfm_log(dCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    v12 = 156;
    v13 = 2080;
    v14 = "[NFMLeashManager setServiceUUID:]";
    v15 = 2112;
    v16 = dCopy;
    _os_log_impl(&dword_25B17F000, v5, OS_LOG_TYPE_DEFAULT, "%d %s - serviceUUID: %@", buf, 0x1Cu);
  }

  centralQueue = self->_centralQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __34__NFMLeashManager_setServiceUUID___block_invoke;
  v8[3] = &unk_279933780;
  v9 = dCopy;
  selfCopy = self;
  v7 = dCopy;
  dispatch_async(centralQueue, v8);
}

void __34__NFMLeashManager_setServiceUUID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v4 = *(a1 + 40);
    v3 = a1 + 40;
    if (*(v4 + 40) == v2)
    {
      return;
    }

    v5 = [v2 copy];
    v6 = 1;
  }

  else
  {
    v5 = [@"E20A39F4-73F5-4BC4-A12F-17D1AD07A961" copy];
    v6 = 0;
    v3 = a1 + 40;
  }

  v7 = *(*v3 + 40);
  *(*v3 + 40) = v5;

  *(*v3 + 26) = v6;
}

- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i
{
  v32 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  peripheralCopy = peripheral;
  dataCopy = data;
  iCopy = i;
  v14 = nfm_log(iCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v21[0] = 67110402;
    v21[1] = 171;
    v22 = 2080;
    v23 = "[NFMLeashManager centralManager:didDiscoverPeripheral:advertisementData:RSSI:]";
    v24 = 2112;
    v25 = managerCopy;
    v26 = 2112;
    v27 = peripheralCopy;
    v28 = 2112;
    v29 = dataCopy;
    v30 = 2112;
    v31 = iCopy;
    _os_log_impl(&dword_25B17F000, v14, OS_LOG_TYPE_DEFAULT, "%d %s - central: (%@); peripheral: (%@); data: (%@), rssi: (%@)", v21, 0x3Au);
  }

  v15 = [dataCopy objectForKey:*MEMORY[0x277CBDD30]];
  firstObject = [v15 firstObject];

  uUIDString = [firstObject UUIDString];
  v18 = [uUIDString isEqualToString:self->_serviceUUID];

  if (v18)
  {
    v19 = [peripheralCopy copy];
    discoveredPeripheral = self->_discoveredPeripheral;
    self->_discoveredPeripheral = v19;

    [(CBCentralManager *)self->_centralManager connectPeripheral:self->_discoveredPeripheral options:0];
  }
}

- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error
{
  v16 = *MEMORY[0x277D85DE8];
  peripheralCopy = peripheral;
  errorCopy = error;
  v8 = nfm_log(errorCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109890;
    v9[1] = 184;
    v10 = 2080;
    v11 = "[NFMLeashManager centralManager:didFailToConnectPeripheral:error:]";
    v12 = 2112;
    v13 = peripheralCopy;
    v14 = 2112;
    v15 = errorCopy;
    _os_log_impl(&dword_25B17F000, v8, OS_LOG_TYPE_DEFAULT, "%d %s -- %@ / %@", v9, 0x26u);
  }
}

- (void)beginMonitoringLeash
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = nfm_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v7 = 189;
    v8 = 2080;
    v9 = "[NFMLeashManager beginMonitoringLeash]";
    _os_log_impl(&dword_25B17F000, v3, OS_LOG_TYPE_DEFAULT, "%d %s", buf, 0x12u);
  }

  centralQueue = self->_centralQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__NFMLeashManager_beginMonitoringLeash__block_invoke;
  block[3] = &unk_2799337A8;
  block[4] = self;
  dispatch_async(centralQueue, block);
}

void __39__NFMLeashManager_beginMonitoringLeash__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (!v1[1])
  {
    __39__NFMLeashManager_beginMonitoringLeash__block_invoke_cold_1();
  }

  if (!v1[7])
  {
    v3 = [objc_alloc(MEMORY[0x277CBE088]) initWithDelegate:*(a1 + 32) queue:*(*(a1 + 32) + 16)];
    v4 = *(a1 + 32);
    v5 = *(v4 + 56);
    *(v4 + 56) = v3;

    v1 = *(a1 + 32);
  }

  if (!v1[9])
  {
    v6 = [objc_alloc(MEMORY[0x277CBDFF8]) initWithDelegate:*(a1 + 32) queue:*(*(a1 + 32) + 16)];
    v7 = *(a1 + 32);
    v8 = *(v7 + 72);
    *(v7 + 72) = v6;
  }

  v9 = nfm_log(a1);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = v10[6];
    v12 = v10[7];
    v13 = v10[9];
    v14 = v10[4];
    v15[1] = 202;
    v16 = 2080;
    v15[0] = 67110402;
    v17 = "[NFMLeashManager beginMonitoringLeash]_block_invoke";
    v18 = 2112;
    v19 = v11;
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = v13;
    v24 = 2048;
    v25 = v14;
    _os_log_impl(&dword_25B17F000, v9, OS_LOG_TYPE_DEFAULT, "%d %s - _leashIdentifier (%@); _pipeManager (%@); _centralManager (%@); _leashMode (%ld)", v15, 0x3Au);
  }
}

- (void)stopMonitoringLeash
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = nfm_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v7 = 208;
    v8 = 2080;
    v9 = "[NFMLeashManager stopMonitoringLeash]";
    _os_log_impl(&dword_25B17F000, v3, OS_LOG_TYPE_DEFAULT, "%d %s", buf, 0x12u);
  }

  centralQueue = self->_centralQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__NFMLeashManager_stopMonitoringLeash__block_invoke;
  block[3] = &unk_2799337A8;
  block[4] = self;
  dispatch_async(centralQueue, block);
}

void __38__NFMLeashManager_stopMonitoringLeash__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  if (v3)
  {
    v4 = [v3 state];
    v2 = *(a1 + 32);
    if (v4 == 2)
    {
      [*(v2 + 72) cancelPeripheralConnection:*(v2 + 80)];
      v2 = *(a1 + 32);
    }
  }

  [*(v2 + 56) unregisterEndpoint:*(v2 + 48)];
  v5 = *(a1 + 32);
  v6 = *(v5 + 56);
  *(v5 + 56) = 0;

  *(*(a1 + 32) + 96) = 0;
  [*(*(a1 + 32) + 72) setDelegate:0];
  v7 = *(a1 + 32);
  v8 = *(v7 + 72);
  *(v7 + 72) = 0;

  [*(*(a1 + 32) + 80) setDelegate:0];
  v9 = *(a1 + 32);
  v10 = *(v9 + 80);
  *(v9 + 80) = 0;

  v11 = *(a1 + 32);
  v12 = *(v11 + 112);
  if (v12)
  {
    dispatch_source_cancel(v12);
    v13 = *(a1 + 32);
    v14 = *(v13 + 112);
    *(v13 + 112) = 0;

    v11 = *(a1 + 32);
  }

  *(v11 + 25) = 0;
}

- (void)setProximityChangeHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = nfm_log(handlerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x25F8637B0](handlerCopy);
    *buf = 67109634;
    v12 = 236;
    v13 = 2080;
    v14 = "[NFMLeashManager setProximityChangeHandler:]";
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_25B17F000, v5, OS_LOG_TYPE_DEFAULT, "%d %s - handler: (%@)", buf, 0x1Cu);
  }

  centralQueue = self->_centralQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__NFMLeashManager_setProximityChangeHandler___block_invoke;
  v9[3] = &unk_2799337D0;
  v9[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(centralQueue, v9);
}

void *__45__NFMLeashManager_setProximityChangeHandler___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v3 + 8) != result)
  {
    *(*(a1 + 32) + 8) = [result copy];

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (void)update:(id)update
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = nfm_log(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    peripheral = self->_peripheral;
    v6[0] = 67109634;
    v6[1] = 249;
    v7 = 2080;
    v8 = "[NFMLeashManager update:]";
    v9 = 2112;
    v10 = peripheral;
    _os_log_impl(&dword_25B17F000, v4, OS_LOG_TYPE_DEFAULT, "%d %s - _peripheral: (%@)", v6, 0x1Cu);
  }

  [(CBPeripheral *)self->_peripheral readRSSI];
}

- (void)peripheralDidUpdateRSSI:(id)i error:(id)error
{
  v23 = *MEMORY[0x277D85DE8];
  iCopy = i;
  errorCopy = error;
  v8 = nfm_log(errorCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109890;
    v18 = 256;
    v19 = 2080;
    v20 = "[NFMLeashManager peripheralDidUpdateRSSI:error:]";
    v21 = 2112;
    *v22 = iCopy;
    *&v22[8] = 2112;
    *&v22[10] = errorCopy;
    _os_log_impl(&dword_25B17F000, v8, OS_LOG_TYPE_DEFAULT, "%d %s - peripheral (%@); error (%@)", buf, 0x26u);
  }

  if (self->_proximityChangeHandler)
  {
    if (self->_connected)
    {
      rSSI = [(CBPeripheral *)self->_peripheral RSSI];
      [rSSI floatValue];
      v12 = v11;
    }

    else
    {
      v12 = 2.22507386e-308;
    }

    v13 = nfm_log(v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      connected = self->_connected;
      *buf = 67109890;
      v18 = 259;
      v19 = 2080;
      v20 = "[NFMLeashManager peripheralDidUpdateRSSI:error:]";
      v21 = 1024;
      *v22 = connected;
      *&v22[4] = 2048;
      *&v22[6] = v12;
      _os_log_impl(&dword_25B17F000, v13, OS_LOG_TYPE_DEFAULT, "%d %s - _connected (%d); rssi (%f)", buf, 0x22u);
    }

    externalQueue = self->_externalQueue;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __49__NFMLeashManager_peripheralDidUpdateRSSI_error___block_invoke;
    v16[3] = &unk_279933758;
    v16[4] = self;
    *&v16[5] = v12;
    dispatch_async(externalQueue, v16);
  }
}

- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral
{
  v25 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  peripheralCopy = peripheral;
  v8 = nfm_log(peripheralCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109890;
    v18 = 268;
    v19 = 2080;
    v20 = "[NFMLeashManager centralManager:didConnectPeripheral:]";
    v21 = 2112;
    v22 = *&managerCopy;
    v23 = 2112;
    v24 = peripheralCopy;
    _os_log_impl(&dword_25B17F000, v8, OS_LOG_TYPE_DEFAULT, "%d %s - central (%@); peripheral (%@)", buf, 0x26u);
  }

  [(CBPeripheral *)self->_peripheral setDelegate:0];
  objc_storeStrong(&self->_peripheral, peripheral);
  [(CBPeripheral *)self->_peripheral setDelegate:self];
  self->_connected = 1;
  [(CBPeripheral *)self->_peripheral readRSSI];
  v9 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_centralQueue);
  leashDispatchSourceTimer = self->_leashDispatchSourceTimer;
  self->_leashDispatchSourceTimer = v9;

  v12 = self->_leashMode - 1;
  v13 = 8.0;
  if (v12 <= 2)
  {
    v13 = dbl_25B18B328[v12];
  }

  v14 = nfm_log(v11);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    v18 = 132;
    v19 = 2080;
    v20 = "HeatBeatTimeForMode";
    v21 = 2048;
    v22 = v13;
    _os_log_impl(&dword_25B17F000, v14, OS_LOG_TYPE_DEFAULT, "%d %s - heartBeatTime: %f", buf, 0x1Cu);
  }

  dispatch_source_set_timer(self->_leashDispatchSourceTimer, 0, (v13 * 1000000000.0), (v13 * 1000000000.0) / 0xAuLL);
  v15 = self->_leashDispatchSourceTimer;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __55__NFMLeashManager_centralManager_didConnectPeripheral___block_invoke;
  handler[3] = &unk_2799337A8;
  handler[4] = self;
  dispatch_source_set_event_handler(v15, handler);
  dispatch_resume(self->_leashDispatchSourceTimer);
}

uint64_t __55__NFMLeashManager_centralManager_didConnectPeripheral___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = nfm_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 80);
    v5[0] = 67109634;
    v5[1] = 284;
    v6 = 2080;
    v7 = "[NFMLeashManager centralManager:didConnectPeripheral:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_25B17F000, v2, OS_LOG_TYPE_DEFAULT, "%d %s - _peripheral: (%@)", v5, 0x1Cu);
  }

  return [*(*(a1 + 32) + 80) readRSSI];
}

- (void)connect
{
  if (self->_peripheral)
  {
    centralManager = self->_centralManager;

    [CBCentralManager connectPeripheral:"connectPeripheral:options:" options:?];
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v5 = nfm_log(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_25B17F000, v5, OS_LOG_TYPE_DEFAULT, "Warning: Tried to connect with nil peripheral", v6, 2u);
    }
  }
}

- (void)centralManagerDidUpdateState:(id)state
{
  v20 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v5 = nfm_log(stateCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109890;
    v13 = 303;
    v14 = 2080;
    v15 = "[NFMLeashManager centralManagerDidUpdateState:]";
    v16 = 2112;
    v17 = stateCopy;
    v18 = 2048;
    state = [stateCopy state];
    _os_log_impl(&dword_25B17F000, v5, OS_LOG_TYPE_DEFAULT, "%d %s - central (%@); state (%ld)", buf, 0x26u);
  }

  if ([stateCopy state] == 5)
  {
    centralPhase = self->_centralPhase;
    if (centralPhase == 1)
    {
      v7 = nfm_log(5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B17F000, v7, OS_LOG_TYPE_DEFAULT, "Start Scanning", buf, 2u);
      }

      centralManager = self->_centralManager;
      v9 = [MEMORY[0x277CBE0A0] UUIDWithString:self->_serviceUUID];
      v11 = v9;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
      [(CBCentralManager *)centralManager scanForPeripheralsWithServices:v10 options:0];
    }

    else if (centralPhase == 2)
    {
      [(NFMLeashManager *)self connect];
    }
  }
}

- (void)setTestMode:(BOOL)mode
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = nfm_log(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v10 = 324;
    v11 = 2080;
    v12 = "[NFMLeashManager setTestMode:]";
    _os_log_impl(&dword_25B17F000, v5, OS_LOG_TYPE_DEFAULT, "%d %s", buf, 0x12u);
  }

  centralQueue = self->_centralQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31__NFMLeashManager_setTestMode___block_invoke;
  v7[3] = &unk_2799337F8;
  v7[4] = self;
  modeCopy = mode;
  dispatch_async(centralQueue, v7);
}

void __31__NFMLeashManager_setTestMode___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 24) = *(a1 + 40);
  v3 = *(a1 + 32);
  if (*(v3 + 24) == 1)
  {
    handler[7] = v1;
    handler[8] = v2;
    v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v3 + 16));
    dispatch_source_set_timer(v5, 0, 0x5F5E100uLL, 0x989680uLL);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __31__NFMLeashManager_setTestMode___block_invoke_2;
    handler[3] = &unk_2799337A8;
    handler[4] = *(a1 + 32);
    dispatch_source_set_event_handler(v5, handler);
    dispatch_resume(v5);
  }
}

- (void)scalablePipeManagerDidUpdateState:(id)state
{
  v13 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v5 = nfm_log(stateCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109890;
    v6[1] = 349;
    v7 = 2080;
    v8 = "[NFMLeashManager scalablePipeManagerDidUpdateState:]";
    v9 = 2112;
    v10 = stateCopy;
    v11 = 2048;
    state = [stateCopy state];
    _os_log_impl(&dword_25B17F000, v5, OS_LOG_TYPE_DEFAULT, "%d %s - pipeManager: (%@); state: %ld", v6, 0x26u);
  }

  if ([stateCopy state] == 5)
  {
    [(CBScalablePipeManager *)self->_pipeManager registerEndpoint:self->_leashIdentifier type:1 priority:2];
  }
}

- (void)scalablePipeManager:(id)manager didRegisterEndpoint:(id)endpoint error:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  endpointCopy = endpoint;
  errorCopy = error;
  v10 = nfm_log(errorCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67110146;
    v11[1] = 357;
    v12 = 2080;
    v13 = "[NFMLeashManager scalablePipeManager:didRegisterEndpoint:error:]";
    v14 = 2112;
    v15 = managerCopy;
    v16 = 2112;
    v17 = endpointCopy;
    v18 = 2112;
    v19 = errorCopy;
    _os_log_impl(&dword_25B17F000, v10, OS_LOG_TYPE_DEFAULT, "%d %s - pipeManager: (%@); identifier (%@); error: (%@)", v11, 0x30u);
  }
}

- (void)scalablePipeManager:(id)manager didUnregisterEndpoint:(id)endpoint
{
  v15 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  endpointCopy = endpoint;
  v7 = nfm_log(endpointCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109890;
    v8[1] = 362;
    v9 = 2080;
    v10 = "[NFMLeashManager scalablePipeManager:didUnregisterEndpoint:]";
    v11 = 2112;
    v12 = managerCopy;
    v13 = 2112;
    v14 = endpointCopy;
    _os_log_impl(&dword_25B17F000, v7, OS_LOG_TYPE_DEFAULT, "%d %s - pipeManager: (%@); identifier (%@)", v8, 0x26u);
  }
}

- (void)scalablePipeManager:(id)manager pipeDidConnect:(id)connect
{
  v27 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  connectCopy = connect;
  v8 = nfm_log(connectCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109890;
    v20 = 367;
    v21 = 2080;
    v22 = "[NFMLeashManager scalablePipeManager:pipeDidConnect:]";
    v23 = 2112;
    v24 = managerCopy;
    v25 = 2112;
    v26 = connectCopy;
    _os_log_impl(&dword_25B17F000, v8, OS_LOG_TYPE_DEFAULT, "%d %s - pipeManager: (%@); pipe (%@)", buf, 0x26u);
  }

  objc_storeStrong(&self->_pipe, connect);
  central = [(CBScalablePipe *)self->_pipe central];
  identifier = [central identifier];
  centralManager = self->_centralManager;
  v18 = identifier;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
  v13 = [(CBCentralManager *)centralManager retrievePeripheralsWithIdentifiers:v12];

  if ([v13 count])
  {
    firstObject = [v13 firstObject];
    peripheral = self->_peripheral;
    self->_peripheral = firstObject;

    [(CBCentralManager *)self->_centralManager connectPeripheral:self->_peripheral options:0];
  }

  self->_connected = 1;
  externalQueue = self->_externalQueue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __54__NFMLeashManager_scalablePipeManager_pipeDidConnect___block_invoke;
  v17[3] = &unk_2799337A8;
  v17[4] = self;
  dispatch_async(externalQueue, v17);
}

void __54__NFMLeashManager_scalablePipeManager_pipeDidConnect___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = nfm_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109378;
    v4[1] = 383;
    v5 = 2080;
    v6 = "[NFMLeashManager scalablePipeManager:pipeDidConnect:]_block_invoke";
    _os_log_impl(&dword_25B17F000, v2, OS_LOG_TYPE_DEFAULT, "%d %s - Leashed", v4, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 104));
  [WeakRetained leashed];
}

- (void)scalablePipeManager:(id)manager pipeDidDisconnect:(id)disconnect error:(id)error
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = nfm_log(self);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v11 = 390;
    v12 = 2080;
    v13 = "[NFMLeashManager scalablePipeManager:pipeDidDisconnect:error:]";
    _os_log_impl(&dword_25B17F000, v6, OS_LOG_TYPE_DEFAULT, "%d %s", buf, 0x12u);
  }

  pipe = self->_pipe;
  self->_pipe = 0;

  self->_connected = 0;
  externalQueue = self->_externalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__NFMLeashManager_scalablePipeManager_pipeDidDisconnect_error___block_invoke;
  block[3] = &unk_2799337A8;
  block[4] = self;
  dispatch_async(externalQueue, block);
}

void __63__NFMLeashManager_scalablePipeManager_pipeDidDisconnect_error___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = nfm_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109378;
    v4[1] = 396;
    v5 = 2080;
    v6 = "[NFMLeashManager scalablePipeManager:pipeDidDisconnect:error:]_block_invoke";
    _os_log_impl(&dword_25B17F000, v2, OS_LOG_TYPE_DEFAULT, "%d %s - Leash broke", v4, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 104));
  [WeakRetained leashBroke];
}

- (NFMLLeashBreakDelegate)leashDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_leashDelegate);

  return WeakRetained;
}

@end