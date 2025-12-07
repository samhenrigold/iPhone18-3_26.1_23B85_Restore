@interface WPTest
- (WPTest)init;
- (WPTest)initWithDelegate:(id)delegate queue:(id)queue;
- (WPTestDelegate)delegate;
- (void)advertisingFailedToStart:(id)start ofType:(unsigned __int8)type;
- (void)advertisingPendingOfType:(unsigned __int8)type;
- (void)advertisingStartedOfType:(unsigned __int8)type;
- (void)advertisingStoppedOfType:(unsigned __int8)type withError:(id)error;
- (void)central:(id)central subscribed:(BOOL)subscribed toCharacteristic:(id)characteristic inService:(id)service;
- (void)connectToPeer:(id)peer withOptions:(id)options;
- (void)connectedDevice:(id)device withError:(id)error shouldDiscover:(BOOL)discover;
- (void)connectedDeviceOverLEPipe:(id)pipe;
- (void)deviceDiscovered:(id)discovered;
- (void)disconnectFromPeer:(id)peer;
- (void)disconnectedDevice:(id)device withError:(id)error;
- (void)disconnectedDeviceOverLEPipe:(id)pipe withError:(id)error;
- (void)invalidate;
- (void)receivedData:(id)data forCharacteristic:(id)characteristic inService:(id)service forPeripheral:(id)peripheral;
- (void)receivedData:(id)data fromEndpoint:(id)endpoint forPeripheral:(id)peripheral;
- (void)scanningFailedToStart:(id)start ofType:(unsigned __int8)type;
- (void)scanningStartedOfType:(unsigned __int8)type;
- (void)scanningStoppedOfType:(unsigned __int8)type;
- (void)sendData:(id)data toPeer:(id)peer;
- (void)sentData:(id)data toEndpoint:(id)endpoint forPeripheral:(id)peripheral withError:(id)error;
- (void)startAdvertisingOfType:(unsigned __int8)type data:(id)data priority:(int64_t)priority mode:(int64_t)mode options:(id)options;
- (void)startScanningForType:(unsigned __int8)type data:(id)data mask:(id)mask peers:(id)peers scanMode:(int64_t)mode rssi:(id)rssi duplicates:(BOOL)duplicates scanCache:(BOOL)self0;
- (void)stateDidChange:(int64_t)change;
- (void)stopAdvertisingOfType:(unsigned __int8)type;
- (void)stopScanningForType:(unsigned __int8)type;
@end

@implementation WPTest

- (WPTest)initWithDelegate:(id)delegate queue:(id)queue
{
  v20 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v15.receiver = self;
  v15.super_class = WPTest;
  v7 = [(WPClient *)&v15 initWithQueue:queue machName:0];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, delegateCopy);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    transfers = v8->_transfers;
    v8->_transfers = dictionary;
  }

  if (WPLogInitOnce != -1)
  {
    [WPTest initWithDelegate:queue:];
  }

  v11 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    delegate = [(WPTest *)v8 delegate];
    *buf = 134218240;
    v17 = v8;
    v18 = 2048;
    v19 = delegate;
    _os_log_impl(&dword_274327000, v12, OS_LOG_TYPE_DEFAULT, "test initWithDelegate self: %p, delegate: %p", buf, 0x16u);
  }

  return v8;
}

- (WPTest)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE648];
  v5 = NSStringFromSelector(a2);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v3 raise:v4 format:{@"%@ is not a valid initializer for %@", v5, v7}];

  return 0;
}

- (void)invalidate
{
  if (WPLogInitOnce != -1)
  {
    [WPTest invalidate];
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_274327000, v3, OS_LOG_TYPE_DEFAULT, "test invalidate by client", buf, 2u);
  }

  [(WPTest *)self setDelegate:0];
  v5.receiver = self;
  v5.super_class = WPTest;
  [(WPClient *)&v5 unregisterEndpoint:@"wp.test"];
  v4.receiver = self;
  v4.super_class = WPTest;
  [(WPClient *)&v4 invalidate];
}

- (void)startAdvertisingOfType:(unsigned __int8)type data:(id)data priority:(int64_t)priority mode:(int64_t)mode options:(id)options
{
  typeCopy = type;
  v31[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  optionsCopy = options;
  if (dataCopy && [dataCopy length] < 0x17)
  {
    dataCopy = [WPAdvertisingRequest requestForClientType:typeCopy];
    [dataCopy setAdvertisingRate:mode];
    [dataCopy setConnectable:1];
    [dataCopy setAdvertisingData:dataCopy];
    if (priority == 1)
    {
      [dataCopy changePriorityValue:1];
    }

    if (WPLogInitOnce != -1)
    {
      [WPTest startAdvertisingOfType:data:priority:mode:options:];
    }

    v20 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      v23 = dataCopy;
      v24 = 2048;
      priorityCopy = priority;
      v26 = 2048;
      modeCopy = mode;
      v28 = 2112;
      v29 = optionsCopy;
      _os_log_impl(&dword_274327000, v20, OS_LOG_TYPE_DEFAULT, "test start advertising with data: %{public}@ priority %ld mode %ld options %@", buf, 0x2Au);
    }

    v21.receiver = self;
    v21.super_class = WPTest;
    [(WPClient *)&v21 startAdvertising:dataCopy];
  }

  else
  {
    dataCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"test can't start advertising of type: %ld because bad data: %@ was provided", typeCopy, dataCopy];
    if (WPLogInitOnce != -1)
    {
      [WPTest startAdvertisingOfType:data:priority:mode:options:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPTest startAdvertisingOfType:data:priority:mode:options:];
    }

    v15 = MEMORY[0x277CCA9B8];
    v30 = *MEMORY[0x277CCA450];
    v31[0] = dataCopy;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    v17 = [v15 errorWithDomain:@"WPErrorDomain" code:8 userInfo:v16];

    delegate = [(WPTest *)self delegate];
    LOBYTE(v16) = objc_opt_respondsToSelector();

    if (v16)
    {
      delegate2 = [(WPTest *)self delegate];
      [delegate2 test:self didFailToStartAdvertisingOfType:typeCopy withError:v17];
    }
  }
}

- (void)advertisingPendingOfType:(unsigned __int8)type
{
  typeCopy = type;
  v10 = *MEMORY[0x277D85DE8];
  delegate = [(WPTest *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    if (WPLogInitOnce != -1)
    {
      [WPTest advertisingPendingOfType:];
    }

    v7 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
    {
      v9[0] = 67109120;
      v9[1] = typeCopy;
      _os_log_impl(&dword_274327000, v7, OS_LOG_TYPE_INFO, "test advertising pending of type: %d", v9, 8u);
    }

    delegate2 = [(WPTest *)self delegate];
    [delegate2 test:self didDeferAdvertisingType:typeCopy];
  }
}

- (void)advertisingStartedOfType:(unsigned __int8)type
{
  typeCopy = type;
  delegate = [(WPTest *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    if (WPLogInitOnce != -1)
    {
      [WPTest advertisingStartedOfType:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [WPTest advertisingStartedOfType:];
    }

    delegate2 = [(WPTest *)self delegate];
    [delegate2 test:self didStartAdvertisingType:typeCopy];
  }
}

- (void)advertisingFailedToStart:(id)start ofType:(unsigned __int8)type
{
  typeCopy = type;
  startCopy = start;
  delegate = [(WPTest *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    if (WPLogInitOnce != -1)
    {
      [WPTest advertisingFailedToStart:ofType:];
    }

    v9 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [(WPTest *)typeCopy advertisingFailedToStart:v9 ofType:startCopy];
    }

    delegate2 = [(WPTest *)self delegate];
    [delegate2 test:self didFailToStartAdvertisingOfType:typeCopy withError:startCopy];
  }
}

- (void)stopAdvertisingOfType:(unsigned __int8)type
{
  typeCopy = type;
  v10 = *MEMORY[0x277D85DE8];
  v5 = [WPAdvertisingRequest requestForClientType:?];
  if (WPLogInitOnce != -1)
  {
    [WPTest stopAdvertisingOfType:];
  }

  v6 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v9 = typeCopy;
    _os_log_impl(&dword_274327000, v6, OS_LOG_TYPE_DEFAULT, "test stop advertising of type: %d", buf, 8u);
  }

  v7.receiver = self;
  v7.super_class = WPTest;
  [(WPClient *)&v7 stopAdvertising:v5];
}

- (void)advertisingStoppedOfType:(unsigned __int8)type withError:(id)error
{
  typeCopy = type;
  v23 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (WPLogInitOnce != -1)
  {
    [WPTest advertisingStoppedOfType:withError:];
  }

  v7 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    localizedDescription = [errorCopy localizedDescription];
    v19 = 134218242;
    v20 = typeCopy;
    v21 = 2112;
    v22 = localizedDescription;
    _os_log_impl(&dword_274327000, v8, OS_LOG_TYPE_DEFAULT, "test advertising stopped of type: %ld with error: %@", &v19, 0x16u);
  }

  if (errorCopy)
  {
    if ([errorCopy code] == 28)
    {
      delegate = [(WPTest *)self delegate];
      v11 = objc_opt_respondsToSelector();

      if (v11)
      {
        if (WPLogInitOnce != -1)
        {
          [WPTest advertisingStoppedOfType:withError:];
        }

        v12 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          v13 = v12;
          localizedDescription2 = [errorCopy localizedDescription];
          v19 = 134218242;
          v20 = typeCopy;
          v21 = 2112;
          v22 = localizedDescription2;
          _os_log_impl(&dword_274327000, v13, OS_LOG_TYPE_DEFAULT, "[Privacy] test advertising stopped of type: %ld with error: %@", &v19, 0x16u);
        }

        delegate2 = [(WPTest *)self delegate];
        [delegate2 test:self didStopAdvertisingType:typeCopy withError:errorCopy];
LABEL_19:
      }
    }
  }

  else
  {
    delegate3 = [(WPTest *)self delegate];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      if (WPLogInitOnce != -1)
      {
        [WPTest advertisingStoppedOfType:withError:];
      }

      v18 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
      {
        [WPTest advertisingStoppedOfType:typeCopy withError:v18];
      }

      delegate2 = [(WPTest *)self delegate];
      [delegate2 test:self didStopAdvertisingType:typeCopy];
      goto LABEL_19;
    }
  }
}

- (void)startScanningForType:(unsigned __int8)type data:(id)data mask:(id)mask peers:(id)peers scanMode:(int64_t)mode rssi:(id)rssi duplicates:(BOOL)duplicates scanCache:(BOOL)self0
{
  typeCopy = type;
  v33[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  maskCopy = mask;
  peersCopy = peers;
  rssiCopy = rssi;
  v20 = [dataCopy length];
  v21 = [maskCopy length];
  if (v20 > 22 || v21 >= 23)
  {
    typeCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"test data (%ld bytes) or mask (%ld bytes) length is larger than the max length (22 bytes) for type: %ld", v20, v21, typeCopy];
    if (WPLogInitOnce != -1)
    {
      [WPTest startScanningForType:data:mask:peers:scanMode:rssi:duplicates:scanCache:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPTest startAdvertisingOfType:data:priority:mode:options:];
    }

    v24 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277CCA450];
    v33[0] = typeCopy;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v26 = [v24 errorWithDomain:@"WPErrorDomain" code:8 userInfo:v25];

    delegate = [(WPTest *)self delegate];
    LOBYTE(v25) = objc_opt_respondsToSelector();

    if (v25)
    {
      delegate2 = [(WPTest *)self delegate];
      [delegate2 test:self didFailToStartScanningForType:typeCopy withError:v26];
    }
  }

  else
  {
    switch(mode)
    {
      case 5:
        v22 = 966;
        break;
      case 40:
        v22 = 30;
        break;
      case 30:
        v22 = 40;
        break;
      default:
        v22 = 300;
        break;
    }

    v26 = objc_opt_new();
    [v26 setClientType:typeCopy];
    *buf = v22;
    *&buf[8] = xmmword_27435CF00;
    [v26 setScanningRates:buf];
    if (dataCopy)
    {
      [v26 setBlobValue:dataCopy];
    }

    if (maskCopy)
    {
      [v26 setMaskValue:maskCopy];
    }

    if (peersCopy)
    {
      [v26 setPeers:peersCopy];
    }

    if (rssiCopy)
    {
      [v26 setRssiThreshold:rssiCopy];
    }

    [v26 setScanCache:cache];
    [v26 setAllowDuplicates:duplicates];
    if (WPLogInitOnce != -1)
    {
      [WPTest startScanningForType:data:mask:peers:scanMode:rssi:duplicates:scanCache:];
    }

    v29 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v26;
      _os_log_impl(&dword_274327000, v29, OS_LOG_TYPE_DEFAULT, "test start scanning with data: %{public}@", buf, 0xCu);
    }

    v30.receiver = self;
    v30.super_class = WPTest;
    [(WPClient *)&v30 startScanning:v26];
  }
}

- (void)scanningStartedOfType:(unsigned __int8)type
{
  typeCopy = type;
  delegate = [(WPTest *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    if (WPLogInitOnce != -1)
    {
      [WPTest scanningStartedOfType:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [WPTest scanningStartedOfType:];
    }

    delegate2 = [(WPTest *)self delegate];
    [delegate2 test:self didStartScanningForType:typeCopy];
  }
}

- (void)scanningFailedToStart:(id)start ofType:(unsigned __int8)type
{
  typeCopy = type;
  startCopy = start;
  delegate = [(WPTest *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    if (WPLogInitOnce != -1)
    {
      [WPTest scanningFailedToStart:ofType:];
    }

    v9 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [(WPTest *)typeCopy scanningFailedToStart:v9 ofType:startCopy];
    }

    delegate2 = [(WPTest *)self delegate];
    [delegate2 test:self didFailToStartScanningForType:typeCopy withError:startCopy];
  }
}

- (void)stopScanningForType:(unsigned __int8)type
{
  typeCopy = type;
  v10 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  [v5 setClientType:typeCopy];
  if (WPLogInitOnce != -1)
  {
    [WPTest stopScanningForType:];
  }

  v6 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = v5;
    _os_log_impl(&dword_274327000, v6, OS_LOG_TYPE_DEFAULT, "test stop scanning: %{public}@", buf, 0xCu);
  }

  v7.receiver = self;
  v7.super_class = WPTest;
  [(WPClient *)&v7 stopScanning:v5];
}

- (void)scanningStoppedOfType:(unsigned __int8)type
{
  typeCopy = type;
  delegate = [(WPTest *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    if (WPLogInitOnce != -1)
    {
      [WPTest scanningStoppedOfType:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [WPTest scanningStoppedOfType:];
    }

    delegate2 = [(WPTest *)self delegate];
    [delegate2 test:self didStopScanningForType:typeCopy];
  }
}

- (void)deviceDiscovered:(id)discovered
{
  v27[6] = *MEMORY[0x277D85DE8];
  discoveredCopy = discovered;
  v5 = [discoveredCopy objectForKeyedSubscript:@"kDevicePeripheralUUID"];
  v6 = [discoveredCopy objectForKeyedSubscript:@"kDeviceType"];
  integerValue = [v6 integerValue];

  v8 = [discoveredCopy objectForKeyedSubscript:@"kDeviceAdvertisingData"];
  v9 = [v8 subdataWithRange:{4, objc_msgSend(v8, "length") - 4}];

  if (v5)
  {
    delegate = [(WPTest *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v25 = integerValue;
      v12 = [discoveredCopy objectForKeyedSubscript:@"kDeviceAddress"];
      v13 = [discoveredCopy objectForKeyedSubscript:@"kDeviceManufacturerData"];
      v14 = [discoveredCopy objectForKeyedSubscript:@"kDevicePaired"];
      v26[0] = @"address";
      data = v12;
      if (!v12)
      {
        data = [MEMORY[0x277CBEA90] data];
      }

      v27[0] = data;
      v27[1] = v13;
      v26[1] = @"data";
      v26[2] = @"paired";
      v16 = MEMORY[0x277CBEC28];
      if (v14)
      {
        v16 = v14;
      }

      v27[2] = v16;
      v26[3] = @"rssi";
      v17 = [discoveredCopy objectForKeyedSubscript:{@"kDeviceRSSI", data}];
      v27[3] = v17;
      v26[4] = @"channel";
      [discoveredCopy objectForKeyedSubscript:@"kDeviceChannel"];
      v18 = v24 = v13;
      v27[4] = v18;
      v26[5] = @"time";
      v19 = [discoveredCopy objectForKeyedSubscript:@"kDeviceTime"];
      v27[5] = v19;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:6];

      if (!v12)
      {
      }

      delegate2 = [(WPTest *)self delegate];
      [delegate2 test:self didDiscoverType:v25 withData:v9 fromPeer:v5 peerInfo:v20];
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPTest deviceDiscovered:];
    }

    v22 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPTest deviceDiscovered:v22];
    }
  }
}

- (void)connectToPeer:(id)peer withOptions:(id)options
{
  v37[1] = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  optionsCopy = options;
  if (!peerCopy)
  {
    if (WPLogInitOnce != -1)
    {
      [WPTest connectToPeer:withOptions:];
    }

    v9 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [(WPTest *)v9 connectToPeer:v10 withOptions:v11, v12, v13, v14, v15, v16];
    }

    v17 = MEMORY[0x277CCA9B8];
    v36 = *MEMORY[0x277CCA450];
    v37[0] = @"test no peer was provided!";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    v19 = [v17 errorWithDomain:@"WPErrorDomain" code:6 userInfo:v18];

    delegate = [(WPTest *)self delegate];
    LOBYTE(v18) = objc_opt_respondsToSelector();

    if ((v18 & 1) == 0)
    {
      goto LABEL_21;
    }

    delegate2 = [(WPTest *)self delegate];
    [delegate2 test:self didConnectToPeer:0 transport:0 error:v19];
LABEL_20:

LABEL_21:
    goto LABEL_22;
  }

  if ([(WPClient *)self state]!= 3)
  {
    v22 = MEMORY[0x277CCACA8];
    uUIDString = [peerCopy UUIDString];
    v24 = [WPClient stateAsString:[(WPClient *)self state]];
    v19 = [v22 stringWithFormat:@"Can't connect to peer %@ when state is %@", uUIDString, v24];

    if (WPLogInitOnce != -1)
    {
      [WPTest connectToPeer:withOptions:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPTest startAdvertisingOfType:data:priority:mode:options:];
    }

    v25 = MEMORY[0x277CCA9B8];
    v34 = *MEMORY[0x277CCA450];
    v35 = v19;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    delegate2 = [v25 errorWithDomain:@"WPErrorDomain" code:1 userInfo:v26];

    delegate3 = [(WPTest *)self delegate];
    LOBYTE(v26) = objc_opt_respondsToSelector();

    if (v26)
    {
      delegate4 = [(WPTest *)self delegate];
      [delegate4 test:self didConnectToPeer:peerCopy transport:0 error:delegate2];
    }

    goto LABEL_20;
  }

  if (WPLogInitOnce != -1)
  {
    [WPTest connectToPeer:withOptions:];
  }

  v8 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v31 = peerCopy;
    v32 = 2112;
    v33 = optionsCopy;
    _os_log_impl(&dword_274327000, v8, OS_LOG_TYPE_DEFAULT, "test connect to peer  %{public}@ with options %@", buf, 0x16u);
  }

  v29.receiver = self;
  v29.super_class = WPTest;
  [(WPClient *)&v29 connectToPeer:peerCopy withOptions:optionsCopy];
LABEL_22:
}

- (void)connectedDevice:(id)device withError:(id)error shouldDiscover:(BOOL)discover
{
  discoverCopy = discover;
  v19 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  errorCopy = error;
  if (discoverCopy)
  {
    if (WPLogInitOnce != -1)
    {
      [WPTest connectedDevice:withError:shouldDiscover:];
    }

    v10 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = deviceCopy;
      _os_log_impl(&dword_274327000, v10, OS_LOG_TYPE_DEFAULT, "Test connected to device: %{public}@ over GATT", &v15, 0xCu);
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPTest connectedDevice:withError:shouldDiscover:];
    }

    v11 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412546;
      v16 = deviceCopy;
      v17 = 2114;
      v18 = errorCopy;
      _os_log_impl(&dword_274327000, v11, OS_LOG_TYPE_DEFAULT, "Test sending didConnectToPeer %@ with error %{public}@", &v15, 0x16u);
    }

    delegate = [(WPTest *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      delegate2 = [(WPTest *)self delegate];
      [delegate2 test:self didConnectToPeer:deviceCopy transport:1 error:errorCopy];
    }
  }
}

- (void)connectedDeviceOverLEPipe:(id)pipe
{
  v11 = *MEMORY[0x277D85DE8];
  pipeCopy = pipe;
  if (WPLogInitOnce != -1)
  {
    [WPTest connectedDeviceOverLEPipe:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = pipeCopy;
    _os_log_impl(&dword_274327000, v5, OS_LOG_TYPE_DEFAULT, "test sending didConnectToPeer %@ over LEPipe", &v9, 0xCu);
  }

  delegate = [(WPTest *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(WPTest *)self delegate];
    [delegate2 test:self didConnectToPeer:pipeCopy transport:2 error:0];
  }
}

- (void)sendData:(id)data toPeer:(id)peer
{
  v44[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  peerCopy = peer;
  v8 = peerCopy;
  if (!dataCopy)
  {
    v19 = MEMORY[0x277CCACA8];
    uUIDString = [peerCopy UUIDString];
    60000 = [v19 stringWithFormat:@"test no data was provided for peer: %@", uUIDString];

    if (WPLogInitOnce != -1)
    {
      [WPTest sendData:toPeer:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPTest startAdvertisingOfType:data:priority:mode:options:];
    }

    v21 = MEMORY[0x277CCA9B8];
    v43 = *MEMORY[0x277CCA450];
    v44[0] = 60000;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:&v43 count:1];
    delegate5 = [v21 errorWithDomain:@"WPErrorDomain" code:8 userInfo:v22];

    delegate = [(WPTest *)self delegate];
    LOBYTE(v22) = objc_opt_respondsToSelector();

    if ((v22 & 1) == 0)
    {
      goto LABEL_28;
    }

    delegate2 = [(WPTest *)self delegate];
    v16 = delegate2;
    selfCopy2 = self;
    v18 = 0;
    goto LABEL_16;
  }

  if (peerCopy)
  {
    v9 = [dataCopy length];
    if ((v9 - 60001) > 0xFFFFFFFFFFFF159FLL)
    {
      v38 = v9;
      60000 = [MEMORY[0x277CBEB28] dataWithBytes:&v38 length:2];
      [60000 appendData:dataCopy];
      delegate5 = objc_opt_new();
      [delegate5 setData:60000];
      v35 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"AF0BADB1-5B99-43CD-917A-A77BC549E3CC"];
      [delegate5 setUuid:v35];

      [delegate5 setWriteType:0];
      if (WPLogInitOnce != -1)
      {
        [WPTest sendData:toPeer:];
      }

      v36 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
      {
        [(WPTest *)v36 sendData:60000 toPeer:v8];
      }

      v37.receiver = self;
      v37.super_class = WPTest;
      [(WPClient *)&v37 sendDataToCharacteristic:delegate5 inService:@"9FA480E0-4967-4542-9390-D343DC5D04AE" forPeer:v8];
      goto LABEL_28;
    }

    60000 = [MEMORY[0x277CCACA8] stringWithFormat:@"test data length is invalid %ld (max: %lu)", v9, 60000];
    if (WPLogInitOnce != -1)
    {
      [WPTest sendData:toPeer:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPTest startAdvertisingOfType:data:priority:mode:options:];
    }

    v11 = MEMORY[0x277CCA9B8];
    v39 = *MEMORY[0x277CCA450];
    v40 = 60000;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    delegate5 = [v11 errorWithDomain:@"WPErrorDomain" code:8 userInfo:v12];

    delegate3 = [(WPTest *)self delegate];
    LOBYTE(v12) = objc_opt_respondsToSelector();

    if ((v12 & 1) == 0)
    {
LABEL_28:

      goto LABEL_29;
    }

    delegate2 = [(WPTest *)self delegate];
    v16 = delegate2;
    selfCopy2 = self;
    v18 = dataCopy;
LABEL_16:
    [delegate2 test:selfCopy2 didSendData:v18 toPeer:v8 error:delegate5];

    goto LABEL_28;
  }

  if (WPLogInitOnce != -1)
  {
    [WPTest sendData:toPeer:];
  }

  v24 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [(WPTest *)v24 sendData:v25 toPeer:v26, v27, v28, v29, v30, v31];
  }

  v32 = MEMORY[0x277CCA9B8];
  v41 = *MEMORY[0x277CCA450];
  v42 = @"test no peer was provided";
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
  60000 = [v32 errorWithDomain:@"WPErrorDomain" code:8 userInfo:v33];

  delegate4 = [(WPTest *)self delegate];
  LOBYTE(v33) = objc_opt_respondsToSelector();

  if (v33)
  {
    delegate5 = [(WPTest *)self delegate];
    [delegate5 test:self didSendData:dataCopy toPeer:0 error:60000];
    goto LABEL_28;
  }

LABEL_29:
}

- (void)sentData:(id)data toEndpoint:(id)endpoint forPeripheral:(id)peripheral withError:(id)error
{
  v29 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  endpointCopy = endpoint;
  peripheralCopy = peripheral;
  errorCopy = error;
  if (endpointCopy && ![endpointCopy isEqualToString:@"wp.test"])
  {
    if (WPLogInitOnce != -1)
    {
      [WPTest sentData:toEndpoint:forPeripheral:withError:];
    }

    v19 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      v20 = v19;
      uUIDString = [peripheralCopy UUIDString];
      localizedDescription = [errorCopy localizedDescription];
      v23 = 138412802;
      v24 = endpointCopy;
      v25 = 2112;
      v26 = uUIDString;
      v27 = 2112;
      v28 = localizedDescription;
      _os_log_error_impl(&dword_274327000, v20, OS_LOG_TYPE_ERROR, "test Sent data to a endpoint: %@ to peer: %@ with error: %@ that isn't of type test", &v23, 0x20u);
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPTest sentData:toEndpoint:forPeripheral:withError:];
    }

    v14 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_274327000, v14, OS_LOG_TYPE_DEFAULT, "test didSendData over LE pipe", &v23, 2u);
    }

    delegate = [(WPTest *)self delegate];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      if ([dataCopy length] >= 2)
      {
        v17 = [dataCopy subdataWithRange:{2, objc_msgSend(dataCopy, "length") - 2}];

        dataCopy = v17;
      }

      delegate2 = [(WPTest *)self delegate];
      [delegate2 test:self didSendData:dataCopy toPeer:peripheralCopy error:errorCopy];
    }
  }
}

- (void)receivedData:(id)data forCharacteristic:(id)characteristic inService:(id)service forPeripheral:(id)peripheral
{
  v28 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  peripheralCopy = peripheral;
  if (!(characteristic | service))
  {
    transfers = [(WPTest *)self transfers];
    v13 = [transfers objectForKeyedSubscript:peripheralCopy];

    if (!v13)
    {
      v14 = [[WPDataTransfer alloc] initDataTransferForPeer:peripheralCopy];
      transfers2 = [(WPTest *)self transfers];
      [transfers2 setObject:v14 forKeyedSubscript:peripheralCopy];

      transfers3 = [(WPTest *)self transfers];
      v13 = [transfers3 objectForKeyedSubscript:peripheralCopy];
    }

    if (WPLogInitOnce != -1)
    {
      [WPTest receivedData:forCharacteristic:inService:forPeripheral:];
    }

    v17 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [WPTest receivedData:dataCopy forCharacteristic:v17 inService:peripheralCopy forPeripheral:?];
    }

    if ([v13 addNewData:dataCopy])
    {
      kdebug_trace();
      if (WPLogInitOnce != -1)
      {
        [WPTest receivedData:forCharacteristic:inService:forPeripheral:];
      }

      v18 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
      {
        v19 = v18;
        currentReceivedData = [v13 currentReceivedData];
        v26 = 134217984;
        v27 = [currentReceivedData length];
        _os_log_impl(&dword_274327000, v19, OS_LOG_TYPE_INFO, "Test END receiving data of length %ld", &v26, 0xCu);
      }

      delegate = [(WPTest *)self delegate];
      v22 = objc_opt_respondsToSelector();

      if (v22)
      {
        delegate2 = [(WPTest *)self delegate];
        currentReceivedData2 = [v13 currentReceivedData];
        v25 = [currentReceivedData2 copy];
        [delegate2 test:self didReceiveData:v25 fromPeer:peripheralCopy];
      }

      [v13 resetTransfer];
    }
  }
}

- (void)receivedData:(id)data fromEndpoint:(id)endpoint forPeripheral:(id)peripheral
{
  dataCopy = data;
  peripheralCopy = peripheral;
  if ([endpoint isEqualToString:@"wp.test"])
  {
    [(WPTest *)self receivedData:dataCopy forCharacteristic:0 inService:0 forPeripheral:peripheralCopy];
  }
}

- (void)central:(id)central subscribed:(BOOL)subscribed toCharacteristic:(id)characteristic inService:(id)service
{
  subscribedCopy = subscribed;
  v20 = *MEMORY[0x277D85DE8];
  centralCopy = central;
  characteristicCopy = characteristic;
  serviceCopy = service;
  if ([characteristicCopy isEqualToString:@"AF0BADB1-5B99-43CD-917A-A77BC549E3CC"] && (objc_msgSend(serviceCopy, "isEqualToString:", @"9FA480E0-4967-4542-9390-D343DC5D04AE") & 1) != 0)
  {
    if (subscribedCopy)
    {
      if (WPLogInitOnce != -1)
      {
        [WPTest central:subscribed:toCharacteristic:inService:];
      }

      v13 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138543362;
        v19 = centralCopy;
        _os_log_impl(&dword_274327000, v13, OS_LOG_TYPE_DEFAULT, "test central connected to our device %{public}@, send Peripheral didConnect", &v18, 0xCu);
      }

      delegate = [(WPTest *)self delegate];
      v15 = objc_opt_respondsToSelector();

      if (v15)
      {
        delegate2 = [(WPTest *)self delegate];
        [delegate2 test:self didConnectToPeer:centralCopy transport:1 error:0];
      }
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        [WPTest central:subscribed:toCharacteristic:inService:];
      }

      v17 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_274327000, v17, OS_LOG_TYPE_DEFAULT, "Saw unsubscribe...disconnection pending", &v18, 2u);
      }
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPTest central:subscribed:toCharacteristic:inService:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPTest central:subscribed:toCharacteristic:inService:];
    }
  }
}

- (void)disconnectFromPeer:(id)peer
{
  v23[1] = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  if (peerCopy)
  {
    if (WPLogInitOnce != -1)
    {
      [WPTest disconnectFromPeer:];
    }

    v5 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = peerCopy;
      _os_log_impl(&dword_274327000, v5, OS_LOG_TYPE_DEFAULT, "test disconnect from peer: %{public}@", buf, 0xCu);
    }

    v19.receiver = self;
    v19.super_class = WPTest;
    [(WPClient *)&v19 disconnectFromPeer:peerCopy];
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPTest disconnectFromPeer:];
    }

    v6 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [(WPTest *)v6 disconnectFromPeer:v7, v8, v9, v10, v11, v12, v13];
    }

    v14 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277CCA450];
    v23[0] = @"test peer is null";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v16 = [v14 errorWithDomain:@"WPErrorDomain" code:7 userInfo:v15];

    delegate = [(WPTest *)self delegate];
    LOBYTE(v15) = objc_opt_respondsToSelector();

    if (v15)
    {
      delegate2 = [(WPTest *)self delegate];
      [delegate2 test:self didDisconnectFromPeer:0 error:v16];
    }
  }
}

- (void)disconnectedDevice:(id)device withError:(id)error
{
  v23 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  errorCopy = error;
  if (errorCopy)
  {
    v8 = MEMORY[0x277CCACA8];
    uUIDString = [deviceCopy UUIDString];
    localizedDescription = [errorCopy localizedDescription];
    v11 = [v8 stringWithFormat:@"test peer: %@ is disconnected with error: %@", uUIDString, localizedDescription];

    if (WPLogInitOnce != -1)
    {
      [WPTest disconnectedDevice:withError:];
    }

    v12 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v20 = v11;
      _os_log_impl(&dword_274327000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ - send didDisconnect", buf, 0xCu);
    }
  }

  transfers = [(WPTest *)self transfers];
  v14 = [transfers objectForKeyedSubscript:deviceCopy];

  if (v14)
  {
    [v14 resetTransfer];
  }

  delegate = [(WPTest *)self delegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    if (WPLogInitOnce != -1)
    {
      [WPTest disconnectedDevice:withError:];
    }

    v17 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = deviceCopy;
      v21 = 2112;
      v22 = errorCopy;
      _os_log_impl(&dword_274327000, v17, OS_LOG_TYPE_DEFAULT, "test sending didDisconnectFromPeer %@ with error %@", buf, 0x16u);
    }

    delegate2 = [(WPTest *)self delegate];
    [delegate2 test:self didDisconnectFromPeer:deviceCopy error:errorCopy];
  }
}

- (void)disconnectedDeviceOverLEPipe:(id)pipe withError:(id)error
{
  v13 = *MEMORY[0x277D85DE8];
  pipeCopy = pipe;
  errorCopy = error;
  if (WPLogInitOnce != -1)
  {
    [WPTest disconnectedDeviceOverLEPipe:withError:];
  }

  v8 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = pipeCopy;
    v11 = 2112;
    v12 = errorCopy;
    _os_log_impl(&dword_274327000, v8, OS_LOG_TYPE_DEFAULT, "test disconnected %@ over LE pipe with error %@", &v9, 0x16u);
  }

  [(WPTest *)self disconnectedDevice:pipeCopy withError:errorCopy];
}

- (void)stateDidChange:(int64_t)change
{
  state = [(WPClient *)self state];
  v11.receiver = self;
  v11.super_class = WPTest;
  [(WPClient *)&v11 stateDidChange:change];
  if ([(WPClient *)self state]!= state)
  {
    if ([(WPClient *)self state]== 3)
    {
      v10.receiver = self;
      v10.super_class = WPTest;
      [(WPClient *)&v10 registerEndpoint:@"wp.test" requireAck:1 requireEncryption:0];
    }

    else
    {
      v9.receiver = self;
      v9.super_class = WPTest;
      [(WPClient *)&v9 unregisterEndpoint:@"wp.test"];
    }

    delegate = [(WPTest *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate2 = [(WPTest *)self delegate];
      [delegate2 testDidUpdateState:self];
    }
  }
}

- (WPTestDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)advertisingFailedToStart:(void *)a3 ofType:.cold.2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 localizedDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5(&dword_274327000, v6, v7, "test advertising failed to start of type: %d with error: %@", v8, v9, v10, v11);
}

- (void)advertisingStoppedOfType:(unsigned __int8)a1 withError:(NSObject *)a2 .cold.4(unsigned __int8 a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_274327000, a2, OS_LOG_TYPE_DEBUG, "test advertising stopped of type: %ld", &v2, 0xCu);
}

- (void)scanningFailedToStart:(void *)a3 ofType:.cold.2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 localizedDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5(&dword_274327000, v6, v7, "test failed to start scanning of type: %d with error: %@", v8, v9, v10, v11);
}

- (void)connectToPeer:(uint64_t)a3 withOptions:(uint64_t)a4 .cold.5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"test no peer was provided!";
  OUTLINED_FUNCTION_0_0(&dword_274327000, a1, a3, "%@ - send didConnect", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)sendData:(void *)a3 toPeer:.cold.2(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = [a2 length];
  v7 = [a3 UUIDString];
  *v14 = 134218498;
  *&v14[4] = v6;
  *&v14[12] = 2112;
  *&v14[14] = a2;
  *&v14[22] = 2112;
  OUTLINED_FUNCTION_6(&dword_274327000, v8, v9, "test send data size %lu: %@ peer: %@", v10, v11, v12, v13, *v14, *&v14[8], *&v14[16], v7);
}

- (void)sendData:(uint64_t)a3 toPeer:(uint64_t)a4 .cold.6(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"test no peer was provided";
  OUTLINED_FUNCTION_0_0(&dword_274327000, a1, a3, "%@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)receivedData:(uint64_t)a3 forCharacteristic:inService:forPeripheral:.cold.2(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  *v12 = 138412802;
  *&v12[4] = a1;
  *&v12[12] = 2048;
  *&v12[14] = [a1 length];
  *&v12[22] = 2112;
  OUTLINED_FUNCTION_6(&dword_274327000, v6, v7, "Test received data %@ of length %ld from peer %@", v8, v9, v10, v11, *v12, *&v12[8], *&v12[16], a3);
}

- (void)central:subscribed:toCharacteristic:inService:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_274327000, v1, OS_LOG_TYPE_ERROR, "test received subscription notification of characteristic: %@, service: %@ is not of type test", v2, 0x16u);
}

- (void)disconnectFromPeer:(uint64_t)a3 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"test peer is null";
  OUTLINED_FUNCTION_0_0(&dword_274327000, a1, a3, "%@ - sending didDisconnect", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end