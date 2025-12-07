@interface WPTransfer
- (WPTransfer)initWithDelegate:(id)delegate queue:(id)queue machName:(id)name options:(id)options;
- (WPTransferDelegate)delegate;
- (void)advertisingFailedToStart:(id)start ofType:(unsigned __int8)type;
- (void)central:(id)central subscribed:(BOOL)subscribed toCharacteristic:(id)characteristic inService:(id)service;
- (void)connectedDevice:(id)device withError:(id)error shouldDiscover:(BOOL)discover;
- (void)dealloc;
- (void)deviceDiscovered:(id)discovered;
- (void)disconnectedDevice:(id)device withError:(id)error;
- (void)discoveredCharacteristicsAndServices:(id)services forPeripheral:(id)peripheral;
- (void)ignoreDevice;
- (void)invalidate;
- (void)receivedData:(id)data;
- (void)receivedData:(id)data forCharacteristic:(id)characteristic inService:(id)service forPeripheral:(id)peripheral;
- (void)scanningFailedToStart:(id)start ofType:(unsigned __int8)type;
- (void)sentData:(id)data forCharacteristic:(id)characteristic inService:(id)service forPeripheral:(id)peripheral withError:(id)error;
- (void)startAdvertising;
- (void)startScan;
- (void)stateDidChange:(int64_t)change;
- (void)stopAdvertising;
- (void)stopScan;
- (void)transferFailed:(id)failed;
- (void)updatedNotificationState:(BOOL)state forCharacteristic:(id)characteristic inService:(id)service withPeripheral:(id)peripheral;
@end

@implementation WPTransfer

- (WPTransfer)initWithDelegate:(id)delegate queue:(id)queue machName:(id)name options:(id)options
{
  v32 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  nameCopy = name;
  optionsCopy = options;
  v25.receiver = self;
  v25.super_class = WPTransfer;
  v13 = [(WPClient *)&v25 initWithQueue:queue machName:nameCopy];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_delegate, delegateCopy);
    v14->_advertising = 0;
    v14->_scanning = 0;
    v14->_connectedToPeripheral = 0;
    v15 = [MEMORY[0x277CBEB58] set];
    ignoredDevices = v14->_ignoredDevices;
    v14->_ignoredDevices = v15;

    data = [MEMORY[0x277CBEB28] data];
    notificationData = v14->_notificationData;
    v14->_notificationData = data;

    v14->_sentEOM = 0;
    v14->_sendingTransferComplete = 0;
    integerValue = [optionsCopy objectForKeyedSubscript:@"WPTimeAfterUnlock"];
    v20 = integerValue;
    if (integerValue)
    {
      integerValue = [integerValue integerValue];
    }

    v14->_lockScanTimer = integerValue;
  }

  if (WPLogInitOnce != -1)
  {
    [WPTransfer initWithDelegate:queue:machName:options:];
  }

  v21 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v21;
    delegate = [(WPTransfer *)v14 delegate];
    *buf = 134218498;
    v27 = v14;
    v28 = 2114;
    v29 = nameCopy;
    v30 = 2048;
    v31 = delegate;
    _os_log_impl(&dword_274327000, v22, OS_LOG_TYPE_DEFAULT, "ATVSetup initWithDelegate self: %p with machName: %{public}@, delegate: %p", buf, 0x20u);
  }

  return v14;
}

- (void)invalidate
{
  if (WPLogInitOnce != -1)
  {
    [WPTransfer invalidate];
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_274327000, v3, OS_LOG_TYPE_DEFAULT, "ATVSetup invalidate", buf, 2u);
  }

  [(WPTransfer *)self setDelegate:0];
  v4.receiver = self;
  v4.super_class = WPTransfer;
  [(WPClient *)&v4 invalidate];
}

- (void)dealloc
{
  if (WPLogInitOnce != -1)
  {
    [WPTransfer dealloc];
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_274327000, v3, OS_LOG_TYPE_DEFAULT, "ATVSetup dealloc", buf, 2u);
  }

  [(WPTransfer *)self invalidate];
  v4.receiver = self;
  v4.super_class = WPTransfer;
  [(WPClient *)&v4 dealloc];
}

- (void)startScan
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138412290;
  v2 = @"ATVSetup can't start scanning for ATVSetup because it's already advertising";
  _os_log_error_impl(&dword_274327000, log, OS_LOG_TYPE_ERROR, "%@", &v1, 0xCu);
}

- (void)stopScan
{
  if (WPLogInitOnce != -1)
  {
    [WPTransfer stopScan];
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_274327000, v3, OS_LOG_TYPE_DEFAULT, "ATVSetup stop scanning for ATV Setup", buf, 2u);
  }

  v4 = objc_opt_new();
  [v4 setClientType:4];
  v5.receiver = self;
  v5.super_class = WPTransfer;
  [(WPClient *)&v5 stopScanning:v4];
  [(WPTransfer *)self setScanning:0];
}

- (void)startAdvertising
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138412290;
  v2 = @"ATVSetup advertising is not supported on this platform";
  _os_log_error_impl(&dword_274327000, log, OS_LOG_TYPE_ERROR, "%@", &v1, 0xCu);
}

- (void)stopAdvertising
{
  if (WPLogInitOnce != -1)
  {
    [WPTransfer stopAdvertising];
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_274327000, v3, OS_LOG_TYPE_DEFAULT, "ATVSetup stop advertising for ATV Setup", buf, 2u);
  }

  v4 = [WPAdvertisingRequest requestForClientType:4];
  v5.receiver = self;
  v5.super_class = WPTransfer;
  [(WPClient *)&v5 stopAdvertising:v4];
  [(WPTransfer *)self setAdvertising:0];
}

- (void)ignoreDevice
{
  v11 = *MEMORY[0x277D85DE8];
  currentPeripheralUUID = [(WPTransfer *)self currentPeripheralUUID];

  if (currentPeripheralUUID)
  {
    ignoredDevices = [(WPTransfer *)self ignoredDevices];
    currentPeripheralUUID2 = [(WPTransfer *)self currentPeripheralUUID];
    [ignoredDevices addObject:currentPeripheralUUID2];

    if (WPLogInitOnce != -1)
    {
      [WPTransfer ignoreDevice];
    }

    v6 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      currentPeripheralUUID3 = [(WPTransfer *)self currentPeripheralUUID];
      v9 = 138543362;
      v10 = currentPeripheralUUID3;
      _os_log_impl(&dword_274327000, v7, OS_LOG_TYPE_DEFAULT, "ATVSetup Ignoring device %{public}@", &v9, 0xCu);
    }
  }
}

- (void)advertisingFailedToStart:(id)start ofType:(unsigned __int8)type
{
  startCopy = start;
  if (WPLogInitOnce != -1)
  {
    [WPTransfer advertisingFailedToStart:ofType:];
  }

  v6 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [WPTransfer advertisingFailedToStart:v6 ofType:?];
  }

  [(WPTransfer *)self setAdvertising:0];
  delegate = [(WPTransfer *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(WPTransfer *)self delegate];
    [delegate2 transferDidFailToStartAdvertising:startCopy];
  }
}

- (void)scanningFailedToStart:(id)start ofType:(unsigned __int8)type
{
  startCopy = start;
  if (WPLogInitOnce != -1)
  {
    [WPTransfer scanningFailedToStart:ofType:];
  }

  v6 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [WPTransfer scanningFailedToStart:v6 ofType:?];
  }

  [(WPTransfer *)self setScanning:0];
  delegate = [(WPTransfer *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(WPTransfer *)self delegate];
    [delegate2 transferDidFailToStartScanning:startCopy];
  }
}

- (void)deviceDiscovered:(id)discovered
{
  v37 = *MEMORY[0x277D85DE8];
  discoveredCopy = discovered;
  v4 = [discoveredCopy objectForKeyedSubscript:@"kDeviceRSSI"];
  v5 = [discoveredCopy objectForKeyedSubscript:@"kDevicePeripheralUUID"];
  v6 = [discoveredCopy objectForKeyedSubscript:@"kDeviceName"];
  v7 = [discoveredCopy objectForKeyedSubscript:@"kDeviceAdvertisingData"];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v9 = [standardUserDefaults persistentDomainForName:@"com.apple.MobileBluetooth.debug"];
  v10 = [v9 objectForKeyedSubscript:@"WIPROX"];

  v11 = [v10 objectForKeyedSubscript:@"ATVCutoff"];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    if (WPLogInitOnce != -1)
    {
      [WPTransfer deviceDiscovered:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [WPTransfer startScan];
    }
  }

  else
  {
    v13 = &unk_28835C768;
  }

  integerValue = [v4 integerValue];
  if (integerValue >= [v13 integerValue] && objc_msgSend(v4, "integerValue") <= 0)
  {
    if (WPLogInitOnce != -1)
    {
      [WPTransfer deviceDiscovered:];
    }

    v15 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      v24 = v15;
      clientAsString = [(WPTransfer *)self clientAsString];
      *buf = 138412802;
      v32 = clientAsString;
      v33 = 2112;
      v34 = v6;
      v35 = 2112;
      v36 = v7;
      _os_log_debug_impl(&dword_274327000, v24, OS_LOG_TYPE_DEBUG, "ATVSetup %@ evaluating %@ (data: %@)", buf, 0x20u);
    }

    if ([v7 length])
    {
      v16 = v7;
      if (*([v7 bytes] + 4))
      {
        if (WPLogInitOnce != -1)
        {
          [WPTransfer deviceDiscovered:];
        }

        v17 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          v32 = v6;
          v33 = 2112;
          v34 = v4;
          v35 = 2112;
          v36 = v7;
          _os_log_debug_impl(&dword_274327000, v17, OS_LOG_TYPE_DEBUG, "ATVSetup Discovered %@ (%@), but advertising packet (%@) indicates it will use nearby info. Discontinuing legacy setup.", buf, 0x20u);
        }

        goto LABEL_9;
      }
    }

    ignoredDevices = [(WPTransfer *)self ignoredDevices];
    v19 = [ignoredDevices containsObject:v5];

    if (v19)
    {
      if (WPLogInitOnce != -1)
      {
        [WPTransfer deviceDiscovered:];
      }

      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
      {
        [WPTransfer deviceDiscovered:];
      }

      goto LABEL_9;
    }

    obj = [(WPTransfer *)self currentPeripheralUUID];
    objc_sync_enter(obj);
    currentPeripheralUUID = [(WPTransfer *)self currentPeripheralUUID];
    v21 = currentPeripheralUUID == 0;

    if (v21)
    {
      currentPeripheralUUID2 = [(WPTransfer *)self currentPeripheralUUID];
      v23 = [currentPeripheralUUID2 isEqual:v5];

      if (!v23)
      {
        if (WPLogInitOnce != -1)
        {
          [WPTransfer deviceDiscovered:];
        }

        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
        {
          [WPTransfer deviceDiscovered:];
        }

        [(WPTransfer *)self setCurrentPeripheralUUID:v5, obj];
        objc_sync_exit(obja);

        if (WPLogInitOnce != -1)
        {
          [WPTransfer deviceDiscovered:];
        }

        v26 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v32 = v6;
          v33 = 2114;
          v34 = v4;
          _os_log_impl(&dword_274327000, v26, OS_LOG_TYPE_DEFAULT, "ATVSetup trying to connect to %{public}@ (%{public}@)", buf, 0x16u);
        }

        v30.receiver = self;
        v30.super_class = WPTransfer;
        [(WPClient *)&v30 connectToPeer:v5];
        goto LABEL_9;
      }

      if (WPLogInitOnce != -1)
      {
        [WPTransfer deviceDiscovered:];
      }

      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        [WPTransfer deviceDiscovered:];
      }
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        [WPTransfer deviceDiscovered:];
      }

      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
      {
        [WPTransfer deviceDiscovered:];
      }
    }

    objc_sync_exit(obj);
  }

LABEL_9:
}

- (void)connectedDevice:(id)device withError:(id)error shouldDiscover:(BOOL)discover
{
  discoverCopy = discover;
  v24[1] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  errorCopy = error;
  currentPeripheralUUID = [(WPTransfer *)self currentPeripheralUUID];
  v11 = [deviceCopy isEqual:currentPeripheralUUID];

  if (v11)
  {
    if (discoverCopy)
    {
      if (WPLogInitOnce != -1)
      {
        [WPTransfer connectedDevice:withError:shouldDiscover:];
      }

      v12 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v20 = deviceCopy;
        _os_log_impl(&dword_274327000, v12, OS_LOG_TYPE_DEFAULT, "ATVSetup connected to device: %{public}@", buf, 0xCu);
      }

      v23 = @"2AE5F669-81BB-435F-961C-EADD8A30AF07";
      v13 = [MEMORY[0x277CBEB98] setWithObjects:{@"6C251515-F290-4F91-808C-5123A0CD02E9", 0}];
      v24[0] = v13;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];

      v18.receiver = self;
      v18.super_class = WPTransfer;
      [(WPClient *)&v18 discoverCharacteristicsAndServices:v14 forPeripheral:deviceCopy];
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        [WPTransfer connectedDevice:withError:shouldDiscover:];
      }

      v15 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
        localizedDescription = [errorCopy localizedDescription];
        *buf = 138543618;
        v20 = deviceCopy;
        v21 = 2114;
        v22 = localizedDescription;
        _os_log_impl(&dword_274327000, v16, OS_LOG_TYPE_DEFAULT, "ATVSetup connected to device: %{public}@ with error %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPTransfer connectedDevice:withError:shouldDiscover:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPTransfer connectedDevice:withError:shouldDiscover:];
    }
  }
}

- (void)disconnectedDevice:(id)device withError:(id)error
{
  v19 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  errorCopy = error;
  if (WPLogInitOnce != -1)
  {
    [WPTransfer disconnectedDevice:withError:];
  }

  v8 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    localizedDescription = [errorCopy localizedDescription];
    v15 = 138543618;
    v16 = deviceCopy;
    v17 = 2114;
    v18 = localizedDescription;
    _os_log_impl(&dword_274327000, v9, OS_LOG_TYPE_DEFAULT, "ATVSetup disconnected from device: %{public}@ with error: %{public}@", &v15, 0x16u);
  }

  if (errorCopy)
  {
    delegate = [(WPTransfer *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      delegate2 = [(WPTransfer *)self delegate];
      [delegate2 transferDidFailWithError:errorCopy];
    }
  }

  [(WPTransfer *)self setCurrentPeripheralUUID:0];
  [(WPTransfer *)self setConnectedToPeripheral:0];
  notificationData = [(WPTransfer *)self notificationData];
  [notificationData setLength:0];
}

- (void)discoveredCharacteristicsAndServices:(id)services forPeripheral:(id)peripheral
{
  v21 = *MEMORY[0x277D85DE8];
  servicesCopy = services;
  peripheralCopy = peripheral;
  currentPeripheralUUID = [(WPTransfer *)self currentPeripheralUUID];
  v9 = [peripheralCopy isEqual:currentPeripheralUUID];

  if (v9)
  {
    v10 = [servicesCopy objectForKeyedSubscript:@"2AE5F669-81BB-435F-961C-EADD8A30AF07"];
    if (v10)
    {
      [(WPTransfer *)self setConnectedToPeripheral:1];
      if (WPLogInitOnce != -1)
      {
        [WPTransfer discoveredCharacteristicsAndServices:forPeripheral:];
      }

      v11 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        *&buf[4] = servicesCopy;
        *&buf[12] = 2114;
        *&buf[14] = peripheralCopy;
        _os_log_impl(&dword_274327000, v11, OS_LOG_TYPE_DEFAULT, "ATVSetup discovered characteristics and services: %{public}@ for peripheral: %{public}@", buf, 0x16u);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v20 = 0;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __65__WPTransfer_discoveredCharacteristicsAndServices_forPeripheral___block_invoke_240;
      v17[3] = &unk_279ED7548;
      v17[4] = buf;
      [v10 enumerateObjectsUsingBlock:v17];
      if (*(*&buf[8] + 24) == 1)
      {
        if (WPLogInitOnce != -1)
        {
          [WPTransfer discoveredCharacteristicsAndServices:forPeripheral:];
        }

        v12 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          *v16 = 0;
          _os_log_impl(&dword_274327000, v12, OS_LOG_TYPE_DEFAULT, "ATVSetup subscribing to ATV setup characteristic", v16, 2u);
        }

        v15.receiver = self;
        v15.super_class = WPTransfer;
        [(WPClient *)&v15 shouldSubscribe:1 toPeer:peripheralCopy withCharacteristic:@"6C251515-F290-4F91-808C-5123A0CD02E9" inService:@"2AE5F669-81BB-435F-961C-EADD8A30AF07"];
      }

      else
      {
        if (WPLogInitOnce != -1)
        {
          [WPTransfer discoveredCharacteristicsAndServices:forPeripheral:];
        }

        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
        {
          [WPTransfer discoveredCharacteristicsAndServices:forPeripheral:];
        }

        v14.receiver = self;
        v14.super_class = WPTransfer;
        [(WPClient *)&v14 disconnectFromPeer:peripheralCopy];
      }

      _Block_object_dispose(buf, 8);
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        [WPTransfer discoveredCharacteristicsAndServices:forPeripheral:];
      }

      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        [WPTransfer discoveredCharacteristicsAndServices:forPeripheral:];
      }

      v18.receiver = self;
      v18.super_class = WPTransfer;
      [(WPClient *)&v18 disconnectFromPeer:peripheralCopy];
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPTransfer discoveredCharacteristicsAndServices:forPeripheral:];
    }

    v13 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [(WPTransfer *)v13 discoveredCharacteristicsAndServices:peripheralCopy forPeripheral:self];
    }
  }
}

void __65__WPTransfer_discoveredCharacteristicsAndServices_forPeripheral___block_invoke_240(uint64_t a1, void *a2, _BYTE *a3)
{
  if ([a2 isEqualToString:@"6C251515-F290-4F91-808C-5123A0CD02E9"])
  {
    if (WPLogInitOnce != -1)
    {
      __65__WPTransfer_discoveredCharacteristicsAndServices_forPeripheral___block_invoke_240_cold_1();
    }

    v5 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_274327000, v5, OS_LOG_TYPE_DEFAULT, "ATVSetup found our characteristic, subsribe to it.", v6, 2u);
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }
}

- (void)receivedData:(id)data forCharacteristic:(id)characteristic inService:(id)service forPeripheral:(id)peripheral
{
  v45 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  characteristicCopy = characteristic;
  serviceCopy = service;
  peripheralCopy = peripheral;
  uUIDString = [peripheralCopy UUIDString];
  currentPeripheralUUID = [(WPTransfer *)self currentPeripheralUUID];
  uUIDString2 = [currentPeripheralUUID UUIDString];
  if ([uUIDString isEqualToString:uUIDString2])
  {
  }

  else
  {
    scanning = [(WPTransfer *)self scanning];

    if (scanning)
    {
      if (WPLogInitOnce != -1)
      {
        [WPTransfer receivedData:forCharacteristic:inService:forPeripheral:];
      }

      v18 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        [WPTransfer receivedData:peripheralCopy forCharacteristic:v18 inService:self forPeripheral:?];
      }

      goto LABEL_46;
    }
  }

  if ([characteristicCopy isEqualToString:@"6C251515-F290-4F91-808C-5123A0CD02E9"])
  {
    if ([serviceCopy isEqualToString:@"2AE5F669-81BB-435F-961C-EADD8A30AF07"])
    {
      v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:dataCopy encoding:4];
      if (WPLogInitOnce != -1)
      {
        [WPTransfer receivedData:forCharacteristic:inService:forPeripheral:];
      }

      v20 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v20;
        notificationData = [(WPTransfer *)self notificationData];
        *buf = 138543874;
        v40 = dataCopy;
        v41 = 2114;
        v42 = peripheralCopy;
        v43 = 2114;
        v44 = notificationData;
        _os_log_impl(&dword_274327000, v21, OS_LOG_TYPE_DEFAULT, "ATVSetup received data: %{public}@ from device: %{public}@, existing data: %{public}@", buf, 0x20u);
      }

      if ([v19 isEqualToString:@"EOM"])
      {
        notificationData2 = [(WPTransfer *)self notificationData];
        v24 = [notificationData2 length];

        if (v24)
        {
          notificationData3 = [(WPTransfer *)self notificationData];
          [(WPTransfer *)self receivedData:notificationData3];
        }

        notificationData4 = [(WPTransfer *)self notificationData];
        [notificationData4 setLength:0];
      }

      else if ([v19 isEqualToString:@"COMPLETE"])
      {
        if (WPLogInitOnce != -1)
        {
          [WPTransfer receivedData:forCharacteristic:inService:forPeripheral:];
        }

        v27 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_274327000, v27, OS_LOG_TYPE_DEFAULT, "ATVSetup COMPLETE", buf, 2u);
        }

        notificationData5 = [(WPTransfer *)self notificationData];
        [notificationData5 setLength:0];

        if ([(WPTransfer *)self scanning])
        {
          v36.receiver = self;
          v36.super_class = WPTransfer;
          [(WPClient *)&v36 disconnectFromPeer:peripheralCopy];
        }

        else
        {
          if (WPLogInitOnce != -1)
          {
            [WPTransfer receivedData:forCharacteristic:inService:forPeripheral:];
          }

          v32 = WiProxLog;
          if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_274327000, v32, OS_LOG_TYPE_DEFAULT, "ATVSetup - We are peripheral, wait for central to get disconnected", buf, 2u);
          }

          [(WPTransfer *)self setUnsubscribeComing:1];
        }
      }

      else
      {
        if ([v19 isEqualToString:@"FAIL"])
        {
          v37 = *MEMORY[0x277CCA450];
          v38 = @"Received transfer fail message from the other side";
          v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
          v30 = [MEMORY[0x277CCA9B8] errorWithDomain:@"WPErrorDomain" code:23 userInfo:v29];
          [(WPTransfer *)self transferFailed:v30];
          notificationData6 = [(WPTransfer *)self notificationData];
          [notificationData6 setLength:0];
        }

        else
        {
          notificationData7 = [(WPTransfer *)self notificationData];
          [notificationData7 appendData:dataCopy];

          if (WPLogInitOnce != -1)
          {
            [WPTransfer receivedData:forCharacteristic:inService:forPeripheral:];
          }

          v34 = WiProxLog;
          if (!os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_45;
          }

          v29 = v34;
          notificationData8 = [(WPTransfer *)self notificationData];
          *buf = 138543618;
          v40 = dataCopy;
          v41 = 2114;
          v42 = notificationData8;
          _os_log_impl(&dword_274327000, v29, OS_LOG_TYPE_DEFAULT, "ATVSetup got new data %{public}@, data is now %{public}@", buf, 0x16u);
        }
      }

LABEL_45:

      goto LABEL_46;
    }

    if (WPLogInitOnce != -1)
    {
      [WPTransfer receivedData:forCharacteristic:inService:forPeripheral:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPTransfer receivedData:forCharacteristic:inService:forPeripheral:];
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPTransfer receivedData:forCharacteristic:inService:forPeripheral:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPTransfer receivedData:forCharacteristic:inService:forPeripheral:];
    }
  }

LABEL_46:
}

- (void)receivedData:(id)data
{
  v46[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  delegate = [(WPTransfer *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(WPTransfer *)self delegate];
    v8 = [delegate2 transferDidReceiveData:dataCopy];

    if (v8)
    {
      if ([v8 length] < 0xEA61)
      {
        if (![v8 length])
        {
          if (WPLogInitOnce != -1)
          {
            [WPTransfer receivedData:];
          }

          v33 = WiProxLog;
          if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
          {
            [WPTransfer receivedData:v33];
          }

          v12 = MEMORY[0x277CCA9B8];
          v43 = *MEMORY[0x277CCA450];
          v44 = @"Data too short to send";
          v13 = MEMORY[0x277CBEAC0];
          v14 = &v44;
          v15 = &v43;
          goto LABEL_51;
        }
      }

      else
      {
        if (WPLogInitOnce != -1)
        {
          [WPTransfer receivedData:];
        }

        v9 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
        {
          [WPTransfer receivedData:v9];
        }

        delegate3 = [(WPTransfer *)self delegate];
        v11 = objc_opt_respondsToSelector();

        if (v11)
        {
          v12 = MEMORY[0x277CCA9B8];
          v45 = *MEMORY[0x277CCA450];
          v46[0] = @"Data too long to send";
          v13 = MEMORY[0x277CBEAC0];
          v14 = v46;
          v15 = &v45;
LABEL_51:
          v34 = [v13 dictionaryWithObjects:v14 forKeys:v15 count:1];
          v35 = [v12 errorWithDomain:@"WPErrorDomain" code:23 userInfo:v34];

          delegate4 = [(WPTransfer *)self delegate];
          [delegate4 transferDidFailWithError:v35];

          goto LABEL_52;
        }
      }

      if (WPLogInitOnce != -1)
      {
        [WPTransfer receivedData:];
      }

      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
      {
        [WPTransfer receivedData:];
      }

      [(WPTransfer *)self setSentEOM:0];
      v17 = objc_opt_new();
      v25 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"6C251515-F290-4F91-808C-5123A0CD02E9"];
      [v17 setUuid:v25];

      [v17 setData:v8];
      currentPeripheralUUID = [(WPTransfer *)self currentPeripheralUUID];

      if (currentPeripheralUUID)
      {
        currentPeripheralUUID2 = [(WPTransfer *)self currentPeripheralUUID];
        [(WPClient *)&v40 sendDataToCharacteristic:v17 inService:@"2AE5F669-81BB-435F-961C-EADD8A30AF07" forPeer:currentPeripheralUUID2, v37.receiver, v37.super_class, v38.receiver, v38.super_class, v39.receiver, v39.super_class, self, WPTransfer];
      }

      else
      {
        currentPeripheralUUID2 = [(WPTransfer *)self currentlySubscribedCentral];
        [(WPClient *)&v39 sendDataToCharacteristic:v17 inService:@"2AE5F669-81BB-435F-961C-EADD8A30AF07" forPeer:currentPeripheralUUID2, v37.receiver, v37.super_class, v38.receiver, v38.super_class, self, WPTransfer, v40.receiver, v40.super_class];
      }
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        [WPTransfer receivedData:];
      }

      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        [WPTransfer receivedData:];
      }

      v17 = objc_opt_new();
      v18 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"6C251515-F290-4F91-808C-5123A0CD02E9"];
      [v17 setUuid:v18];

      v19 = [@"COMPLETE" dataUsingEncoding:4];
      [v17 setData:v19];

      if ([(WPTransfer *)self advertiserConnected]&& ([(WPTransfer *)self currentlySubscribedCentral], v20 = objc_claimAutoreleasedReturnValue(), v20, v20))
      {
        if (WPLogInitOnce != -1)
        {
          [WPTransfer receivedData:];
        }

        v21 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          v22 = v21;
          currentlySubscribedCentral = [(WPTransfer *)self currentlySubscribedCentral];
          *buf = 138543362;
          v42 = currentlySubscribedCentral;
          _os_log_impl(&dword_274327000, v22, OS_LOG_TYPE_DEFAULT, "ATVSetup Peripheral sending transfer complete to Central: %{public}@", buf, 0xCu);
        }

        [v17 setProperties:1];
        currentPeripheralUUID2 = [(WPTransfer *)self currentlySubscribedCentral];
        [(WPClient *)&v38 sendDataToCharacteristic:v17 inService:@"2AE5F669-81BB-435F-961C-EADD8A30AF07" forPeer:currentPeripheralUUID2, v37.receiver, v37.super_class, self, WPTransfer, v39.receiver, v39.super_class, v40.receiver, v40.super_class];
      }

      else
      {
        if (![(WPTransfer *)self connectedToPeripheral]|| ([(WPTransfer *)self currentPeripheralUUID], v27 = objc_claimAutoreleasedReturnValue(), v27, !v27))
        {
          if (WPLogInitOnce != -1)
          {
            [WPTransfer receivedData:];
          }

          v32 = WiProxLog;
          if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
          {
            [(WPTransfer *)v32 receivedData:?];
          }

          goto LABEL_45;
        }

        if (WPLogInitOnce != -1)
        {
          [WPTransfer receivedData:];
        }

        v28 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          v29 = v28;
          currentPeripheralUUID3 = [(WPTransfer *)self currentPeripheralUUID];
          uUIDString = [currentPeripheralUUID3 UUIDString];
          *buf = 138543362;
          v42 = uUIDString;
          _os_log_impl(&dword_274327000, v29, OS_LOG_TYPE_DEFAULT, "ATVSetup Central sending transfer complete to Peripheral: %{public}@", buf, 0xCu);
        }

        [v17 setProperties:0];
        [(WPTransfer *)self setSendingTransferComplete:1];
        currentPeripheralUUID2 = [(WPTransfer *)self currentPeripheralUUID];
        [(WPClient *)&v37 sendDataToCharacteristic:v17 inService:@"2AE5F669-81BB-435F-961C-EADD8A30AF07" forPeer:currentPeripheralUUID2, self, WPTransfer, v38.receiver, v38.super_class, v39.receiver, v39.super_class, v40.receiver, v40.super_class];
      }
    }

LABEL_45:
LABEL_52:

    goto LABEL_53;
  }

  if (WPLogInitOnce != -1)
  {
    [WPTransfer receivedData:];
  }

  v16 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [WPTransfer receivedData:v16];
  }

LABEL_53:
}

- (void)sentData:(id)data forCharacteristic:(id)characteristic inService:(id)service forPeripheral:(id)peripheral withError:(id)error
{
  v37 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  peripheralCopy = peripheral;
  if ([characteristic isEqualToString:@"6C251515-F290-4F91-808C-5123A0CD02E9"])
  {
    if ([serviceCopy isEqualToString:@"2AE5F669-81BB-435F-961C-EADD8A30AF07"])
    {
      if ([(WPTransfer *)self sendingTransferComplete])
      {
        if (WPLogInitOnce != -1)
        {
          [WPTransfer sentData:forCharacteristic:inService:forPeripheral:withError:];
        }

        v12 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_274327000, v12, OS_LOG_TYPE_DEFAULT, "ATVSetup transfer is completed, disconnect", buf, 2u);
        }

        [(WPTransfer *)self setSendingTransferComplete:0];
        v28.receiver = self;
        v28.super_class = WPTransfer;
        [(WPClient *)&v28 shouldSubscribe:0 toPeer:peripheralCopy withCharacteristic:@"6C251515-F290-4F91-808C-5123A0CD02E9" inService:@"2AE5F669-81BB-435F-961C-EADD8A30AF07"];
        v27.receiver = self;
        v27.super_class = WPTransfer;
        [(WPClient *)&v27 disconnectFromPeer:peripheralCopy];
      }

      else if ([(WPTransfer *)self sentEOM])
      {
        if (WPLogInitOnce != -1)
        {
          [WPTransfer sentData:forCharacteristic:inService:forPeripheral:withError:];
        }

        v13 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_274327000, v13, OS_LOG_TYPE_DEFAULT, "ATVSetup already sent EOM, return", buf, 2u);
        }
      }

      else
      {
        [(WPTransfer *)self setSentEOM:1];
        v14 = objc_opt_new();
        v15 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"6C251515-F290-4F91-808C-5123A0CD02E9"];
        [v14 setUuid:v15];

        v16 = [@"EOM" dataUsingEncoding:4];
        [v14 setData:v16];

        if (WPLogInitOnce != -1)
        {
          [WPTransfer sentData:forCharacteristic:inService:forPeripheral:withError:];
        }

        v17 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          v18 = v17;
          data = [v14 data];
          currentPeripheralUUID = [(WPTransfer *)self currentPeripheralUUID];
          uUIDString = [currentPeripheralUUID UUIDString];
          currentlySubscribedCentral = [(WPTransfer *)self currentlySubscribedCentral];
          *buf = 138544130;
          v30 = data;
          v31 = 2114;
          v32 = uUIDString;
          v33 = 2114;
          v34 = currentlySubscribedCentral;
          v35 = 2048;
          selfCopy = self;
          _os_log_impl(&dword_274327000, v18, OS_LOG_TYPE_DEFAULT, "ATVSetup send data: %{public}@, peripheral: %{public}@, central: %{public}@, self: %p", buf, 0x2Au);
        }

        currentPeripheralUUID2 = [(WPTransfer *)self currentPeripheralUUID];

        if (currentPeripheralUUID2)
        {
          currentPeripheralUUID3 = [(WPTransfer *)self currentPeripheralUUID];
          [(WPClient *)&v26 sendDataToCharacteristic:v14 inService:@"2AE5F669-81BB-435F-961C-EADD8A30AF07" forPeer:currentPeripheralUUID3, v25.receiver, v25.super_class, self, WPTransfer];
        }

        else
        {
          currentPeripheralUUID3 = [(WPTransfer *)self currentlySubscribedCentral];
          [(WPClient *)&v25 sendDataToCharacteristic:v14 inService:@"2AE5F669-81BB-435F-961C-EADD8A30AF07" forPeer:currentPeripheralUUID3, self, WPTransfer, v26.receiver, v26.super_class];
        }
      }
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        [WPTransfer sentData:forCharacteristic:inService:forPeripheral:withError:];
      }

      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        [WPTransfer receivedData:forCharacteristic:inService:forPeripheral:];
      }
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPTransfer sentData:forCharacteristic:inService:forPeripheral:withError:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPTransfer receivedData:forCharacteristic:inService:forPeripheral:];
    }
  }
}

- (void)updatedNotificationState:(BOOL)state forCharacteristic:(id)characteristic inService:(id)service withPeripheral:(id)peripheral
{
  stateCopy = state;
  v18 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  serviceCopy = service;
  peripheralCopy = peripheral;
  if (stateCopy)
  {
    if (WPLogInitOnce != -1)
    {
      [WPTransfer updatedNotificationState:forCharacteristic:inService:withPeripheral:];
    }

    v13 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543618;
      v15 = characteristicCopy;
      v16 = 2114;
      v17 = serviceCopy;
      _os_log_impl(&dword_274327000, v13, OS_LOG_TYPE_DEFAULT, "ATVSetup subscribed to characteristic %{public}@ for service %{public}@", &v14, 0x16u);
    }

    [(WPTransfer *)self receivedData:0];
  }
}

- (void)transferFailed:(id)failed
{
  failedCopy = failed;
  if (WPLogInitOnce != -1)
  {
    [WPTransfer transferFailed:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [WPTransfer transferFailed:v5];
  }

  delegate = [(WPTransfer *)self delegate];
  if (delegate)
  {
    v7 = delegate;
    delegate2 = [(WPTransfer *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      delegate3 = [(WPTransfer *)self delegate];
      [delegate3 transferDidFailWithError:failedCopy];
    }
  }
}

- (void)central:(id)central subscribed:(BOOL)subscribed toCharacteristic:(id)characteristic inService:(id)service
{
  subscribedCopy = subscribed;
  v46 = *MEMORY[0x277D85DE8];
  centralCopy = central;
  characteristicCopy = characteristic;
  serviceCopy = service;
  if (subscribedCopy)
  {
    currentlySubscribedCentral = [(WPTransfer *)self currentlySubscribedCentral];
    v14 = currentlySubscribedCentral;
    if (currentlySubscribedCentral == centralCopy)
    {
    }

    else
    {
      currentlySubscribedCentral2 = [(WPTransfer *)self currentlySubscribedCentral];

      if (currentlySubscribedCentral2)
      {
        if (WPLogInitOnce != -1)
        {
          [WPTransfer central:subscribed:toCharacteristic:inService:];
        }

        v16 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v16;
          currentlySubscribedCentral3 = [(WPTransfer *)self currentlySubscribedCentral];
          *buf = 138543618;
          v43 = centralCopy;
          v44 = 2114;
          v45 = currentlySubscribedCentral3;
          _os_log_impl(&dword_274327000, v17, OS_LOG_TYPE_DEFAULT, "ATVSetup central %{public}@ has subscribed, but %{public}@ is already subscribed.  Sending back invalid connection message", buf, 0x16u);
        }

        v19 = objc_alloc_init(WPCharacteristic);
        v20 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:characteristicCopy];
        [(WPCharacteristic *)v19 setUuid:v20];

        v21 = [@"INV_CONNECTION" dataUsingEncoding:4];
        [(WPCharacteristic *)v19 setData:v21];

        currentlySubscribedCentral4 = [(WPTransfer *)self currentlySubscribedCentral];
        [(WPClient *)self sendDataToCharacteristic:v19 inService:serviceCopy forPeer:currentlySubscribedCentral4];

        goto LABEL_45;
      }
    }

    if (WPLogInitOnce != -1)
    {
      [WPTransfer central:subscribed:toCharacteristic:inService:];
    }

    v32 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v43 = centralCopy;
      _os_log_impl(&dword_274327000, v32, OS_LOG_TYPE_DEFAULT, "ATVSetup Central %{public}@ subscribed to ATVSetup characteristic", buf, 0xCu);
    }

    [(WPTransfer *)self setCurrentlySubscribedCentral:centralCopy];
    if (WPLogInitOnce != -1)
    {
      [WPTransfer central:subscribed:toCharacteristic:inService:];
    }

    v33 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_274327000, v33, OS_LOG_TYPE_DEFAULT, "ATVSetup Client subscribed - transfer beginning", buf, 2u);
    }

    selfCopy2 = self;
    v35 = 1;
LABEL_44:
    [(WPTransfer *)selfCopy2 setAdvertiserConnected:v35];
    goto LABEL_45;
  }

  if (WPLogInitOnce != -1)
  {
    [WPTransfer central:subscribed:toCharacteristic:inService:];
  }

  v23 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v43 = centralCopy;
    _os_log_impl(&dword_274327000, v23, OS_LOG_TYPE_DEFAULT, "ATVSetup Central %{public}@ unsubscribed from ATVSetup characteristic", buf, 0xCu);
  }

  currentlySubscribedCentral5 = [(WPTransfer *)self currentlySubscribedCentral];
  v25 = [currentlySubscribedCentral5 isEqual:centralCopy];

  if (v25)
  {
    [(WPTransfer *)self setCurrentlySubscribedCentral:0];
    notificationData = [(WPTransfer *)self notificationData];
    [notificationData setLength:0];

    if ([(WPTransfer *)self advertising])
    {
      if (WPLogInitOnce != -1)
      {
        [WPTransfer central:subscribed:toCharacteristic:inService:];
      }

      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
      {
        [WPTransfer central:subscribed:toCharacteristic:inService:];
      }

      [(WPTransfer *)self startAdvertising];
    }

    if (WPLogInitOnce != -1)
    {
      [WPTransfer central:subscribed:toCharacteristic:inService:];
    }

    v27 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_274327000, v27, OS_LOG_TYPE_DEFAULT, "ATVSetup client unsubscribed - we're done with this transaction", buf, 2u);
    }

    if ([(WPTransfer *)self unsubscribeComing])
    {
      delegate = [(WPTransfer *)self delegate];
      v29 = objc_opt_respondsToSelector();

      if (v29)
      {
        delegate2 = [(WPTransfer *)self delegate];
        [delegate2 transferComplete];
      }

      [(WPTransfer *)self setUnsubscribeComing:0];
    }

    else
    {
      v36 = MEMORY[0x277CCA9B8];
      v40 = *MEMORY[0x277CCA450];
      v41 = @"Client unsubscribed before the transfer was complete";
      v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      v38 = [v36 errorWithDomain:@"WPErrorDomain" code:23 userInfo:v37];

      delegate3 = [(WPTransfer *)self delegate];
      [delegate3 transferDidFailWithError:v38];
    }

    selfCopy2 = self;
    v35 = 0;
    goto LABEL_44;
  }

  if (WPLogInitOnce != -1)
  {
    [WPTransfer central:subscribed:toCharacteristic:inService:];
  }

  v31 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPTransfer central:centralCopy subscribed:v31 toCharacteristic:self inService:?];
  }

LABEL_45:
}

- (void)stateDidChange:(int64_t)change
{
  state = [(WPClient *)self state];
  v12.receiver = self;
  v12.super_class = WPTransfer;
  [(WPClient *)&v12 stateDidChange:change];
  if (state != change)
  {
    delegate = [(WPTransfer *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate2 = [(WPTransfer *)self delegate];
      [delegate2 transferDidUpdateAdvertiserState:self];
    }

    delegate3 = [(WPTransfer *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      delegate4 = [(WPTransfer *)self delegate];
      [delegate4 transferDidUpdateScannerState:self];
    }
  }
}

- (WPTransferDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)advertisingFailedToStart:(void *)a1 ofType:.cold.2(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_6_0() localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)scanningFailedToStart:(void *)a1 ofType:.cold.2(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_6_0() localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)deviceDiscovered:.cold.6()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)deviceDiscovered:.cold.8()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)deviceDiscovered:.cold.11()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_274327000, v1, OS_LOG_TYPE_ERROR, "ATVSetup redundant code hit. Discovered %@ (%@) but already trying to connect to it", v2, 0x16u);
}

- (void)deviceDiscovered:.cold.13()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_274327000, v1, OS_LOG_TYPE_DEBUG, "ATVSetup Discovered %@ (%@) but it's in the list of ignored devices", v2, 0x16u);
}

- (void)discoveredCharacteristicsAndServices:(void *)a3 forPeripheral:.cold.2(void *a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 UUIDString];
  v7 = [a3 currentPeripheralUUID];
  v8 = [v7 UUIDString];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(&dword_274327000, v5, OS_LOG_TYPE_ERROR, "ATVSetup being told we've connected to a device %@ that we didn't request to connect to, ignoring - current peripheral %@", v9, 0x16u);
}

- (void)receivedData:(void *)a3 forCharacteristic:inService:forPeripheral:.cold.2(uint64_t a1, void *a2, void *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [a3 currentPeripheralUUID];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(&dword_274327000, v4, OS_LOG_TYPE_ERROR, "ATVSetup data updated for a peripheral %@ we're not interested in %@", v6, 0x16u);
}

- (void)receivedData:(void *)a1 .cold.2(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_6_0() delegate];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)receivedData:(void *)a1 .cold.4(void *a1)
{
  v2 = a1;
  [OUTLINED_FUNCTION_6_0() length];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)receivedData:(void *)a1 .cold.6(void *a1)
{
  v2 = a1;
  [OUTLINED_FUNCTION_6_0() length];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)receivedData:.cold.8()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)receivedData:(void *)a1 .cold.14(void *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 currentlySubscribedCentral];
  v5 = [a2 currentPeripheralUUID];
  v6 = 138413058;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  v10 = 1024;
  v11 = [a2 connectedToPeripheral];
  v12 = 1024;
  v13 = [a2 advertiserConnected];
  _os_log_error_impl(&dword_274327000, v3, OS_LOG_TYPE_ERROR, "ATVSetup Error: Trying to close a transfer on a WPTransfer object that is neither advertising:%@ or scanning:%@ or connected:%d, advconnected: %d", &v6, 0x22u);
}

- (void)transferFailed:(void *)a1 .cold.2(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_6_0() localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)central:(void *)a3 subscribed:toCharacteristic:inService:.cold.3(uint64_t a1, void *a2, void *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [a3 currentlySubscribedCentral];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(&dword_274327000, v4, OS_LOG_TYPE_DEBUG, "ATVSetup Warning: Central %@ did unsubscribe.  currentlySubscribedCentral is %@", v6, 0x16u);
}

- (void)central:subscribed:toCharacteristic:inService:.cold.5()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end