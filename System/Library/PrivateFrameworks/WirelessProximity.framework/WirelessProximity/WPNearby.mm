@interface WPNearby
+ (int64_t)nearbyTypeFromClientType:(unsigned __int8)type;
+ (unsigned)clientTypeFromNearbyType:(int64_t)type;
- (WPNearby)init;
- (WPNearby)initWithDelegate:(id)delegate queue:(id)queue;
- (WPNearbyDelegate)delegate;
- (void)advertisingFailedToStart:(id)start ofType:(unsigned __int8)type;
- (void)advertisingPendingOfType:(unsigned __int8)type;
- (void)advertisingStartedOfType:(unsigned __int8)type;
- (void)advertisingStoppedOfType:(unsigned __int8)type withError:(id)error;
- (void)bandwidthStateUpdated:(id)updated;
- (void)central:(id)central subscribed:(BOOL)subscribed toCharacteristic:(id)characteristic inService:(id)service;
- (void)clearDuplicatesForType:(int64_t)type;
- (void)connectToPeer:(id)peer withOptions:(id)options;
- (void)connectedDevice:(id)device withError:(id)error shouldDiscover:(BOOL)discover;
- (void)connectedDeviceOverLEPipe:(id)pipe;
- (void)deviceDiscovered:(id)discovered;
- (void)disconnectFromPeer:(id)peer;
- (void)disconnectedDevice:(id)device withError:(id)error;
- (void)disconnectedDeviceOverLEPipe:(id)pipe withError:(id)error;
- (void)discoveredCharacteristicsAndServices:(id)services forPeripheral:(id)peripheral;
- (void)failedToStartTrackingPeer:(id)peer error:(id)error;
- (void)foundPeer:(id)peer ofType:(unsigned __int8)type;
- (void)invalidate;
- (void)lostPeer:(id)peer ofType:(unsigned __int8)type;
- (void)populateClientGATT:(id)t;
- (void)receivedData:(id)data forCharacteristic:(id)characteristic inService:(id)service forPeripheral:(id)peripheral;
- (void)receivedData:(id)data fromEndpoint:(id)endpoint forPeripheral:(id)peripheral;
- (void)scanningFailedToStart:(id)start ofType:(unsigned __int8)type;
- (void)scanningStartedOfType:(unsigned __int8)type;
- (void)scanningStoppedOfType:(unsigned __int8)type;
- (void)sendData:(id)data toPeer:(id)peer;
- (void)sentData:(id)data forCharacteristic:(id)characteristic inService:(id)service forPeripheral:(id)peripheral withError:(id)error;
- (void)sentData:(id)data toEndpoint:(id)endpoint forPeripheral:(id)peripheral withError:(id)error;
- (void)startAdvertisingOfType:(int64_t)type data:(id)data priority:(int64_t)priority mode:(int64_t)mode options:(id)options;
- (void)startScanningForType:(int64_t)type data:(id)data mask:(id)mask peers:(id)peers scanMode:(int64_t)mode rssi:(id)rssi duplicates:(BOOL)duplicates scanCache:(BOOL)self0 useCaseList:(id)self1;
- (void)startTrackingPeer:(id)peer forType:(int64_t)type;
- (void)startedTrackingPeer:(id)peer ofType:(unsigned __int8)type;
- (void)stateDidChange:(int64_t)change;
- (void)stopAdvertisingOfType:(int64_t)type;
- (void)stopScanningForType:(int64_t)type;
- (void)stopTrackingPeer:(id)peer forType:(int64_t)type;
- (void)stoppedTrackingPeer:(id)peer ofType:(unsigned __int8)type;
- (void)updateAdvertisingRequest:(id)request withUpdate:(id)update;
- (void)updatedNotificationState:(BOOL)state forCharacteristic:(id)characteristic inService:(id)service withPeripheral:(id)peripheral;
@end

@implementation WPNearby

- (WPNearbyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (WPNearby)initWithDelegate:(id)delegate queue:(id)queue
{
  v22 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v17.receiver = self;
  v17.super_class = WPNearby;
  v7 = [(WPClient *)&v17 initWithQueue:queue machName:0];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, delegateCopy);
    v8->_btBandwidthState = -1;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    transfers = v8->_transfers;
    v8->_transfers = dictionary;

    leCapablePeers = v8->_leCapablePeers;
    v8->_leCapablePeers = 0;

    [(WPClient *)v8 setConnectionUseCase:8];
    v16.receiver = v8;
    v16.super_class = WPNearby;
    [(WPClient *)&v16 listenToBandwidthNotifications];
    v8->_nearbySignPostID = os_signpost_id_make_with_pointer(WiProxLog, v8);
  }

  if (WPLogInitOnce != -1)
  {
    [WPNearby initWithDelegate:queue:];
  }

  v12 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    delegate = [(WPNearby *)v8 delegate];
    *buf = 134218240;
    v19 = v8;
    v20 = 2048;
    v21 = delegate;
    _os_log_impl(&dword_274327000, v13, OS_LOG_TYPE_DEFAULT, "Nearby initWithDelegate self: %p, delegate: %p", buf, 0x16u);
  }

  return v8;
}

- (WPNearby)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE648];
  v5 = NSStringFromSelector(a2);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v3 raise:v4 format:{@"%@ is not a valid initializer for %@", v5, v7}];

  return 0;
}

+ (unsigned)clientTypeFromNearbyType:(int64_t)type
{
  if (type == 1)
  {
    return 16;
  }

  if (type)
  {
    v6 = [MEMORY[0x277CBEAD8] exceptionWithName:@"UnknownNearbyType" reason:@"The nearby type isn't valid" userInfo:{0, v3, v4}];
    objc_exception_throw(v6);
  }

  return 15;
}

+ (int64_t)nearbyTypeFromClientType:(unsigned __int8)type
{
  if (type == 16)
  {
    return 1;
  }

  if (type != 15)
  {
    v6 = [MEMORY[0x277CBEAD8] exceptionWithName:@"UnknownClientType" reason:@"The client type isn't valid" userInfo:{0, v3, v4}];
    objc_exception_throw(v6);
  }

  return 0;
}

- (void)invalidate
{
  if (WPLogInitOnce != -1)
  {
    [WPNearby invalidate];
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_274327000, v3, OS_LOG_TYPE_DEFAULT, "Nearby invalidate by client", buf, 2u);
  }

  [(WPNearby *)self setDelegate:0];
  v5.receiver = self;
  v5.super_class = WPNearby;
  [(WPClient *)&v5 unregisterEndpoint:@"wp.nearby"];
  v4.receiver = self;
  v4.super_class = WPNearby;
  [(WPClient *)&v4 invalidate];
}

- (void)populateClientGATT:(id)t
{
  tCopy = t;
  v6 = objc_opt_new();
  v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"AF0BADB1-5B99-43CD-917A-A77BC549E3CC"];
  [v6 setUuid:v4];

  [v6 setProperties:24];
  [v6 setPermissions:2];
  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"9FA480E0-4967-4542-9390-D343DC5D04AE"];
  tCopy[2](tCopy, v6, v5);
}

- (void)startAdvertisingOfType:(int64_t)type data:(id)data priority:(int64_t)priority mode:(int64_t)mode options:(id)options
{
  v31[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  optionsCopy = options;
  if (dataCopy && [dataCopy length] < 0x17)
  {
    dataCopy = [WPAdvertisingRequest requestForClientType:[WPNearby clientTypeFromNearbyType:type]];
    [dataCopy setAdvertisingRate:mode];
    [dataCopy setConnectable:1];
    [dataCopy setStopOnAdvertisingAddressChange:1];
    [dataCopy setAdvertisingData:dataCopy];
    if (type == 1 && priority == 1)
    {
      [dataCopy changePriorityValue:1];
      [dataCopy setUpdateTime:5.0];
    }

    if (WPLogInitOnce != -1)
    {
      [WPNearby startAdvertisingOfType:data:priority:mode:options:];
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
      _os_log_impl(&dword_274327000, v20, OS_LOG_TYPE_DEFAULT, "Nearby start advertising with data: %{public}@ priority %ld mode %ld options %@", buf, 0x2Au);
    }

    v21.receiver = self;
    v21.super_class = WPNearby;
    [(WPClient *)&v21 startAdvertising:dataCopy];
  }

  else
  {
    dataCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Nearby can't start advertising of type: %ld because bad data: %@ was provided", type, dataCopy];
    if (WPLogInitOnce != -1)
    {
      [WPNearby startAdvertisingOfType:data:priority:mode:options:];
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

    delegate = [(WPNearby *)self delegate];
    LOBYTE(v16) = objc_opt_respondsToSelector();

    if (v16)
    {
      delegate2 = [(WPNearby *)self delegate];
      [delegate2 nearby:self didFailToStartAdvertisingOfType:type withError:v17];
    }
  }
}

- (void)updateAdvertisingRequest:(id)request withUpdate:(id)update
{
  v11 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  updateCopy = update;
  [requestCopy setUpdateTime:0.0];
  if ([requestCopy advertisingRate] == 432)
  {
    v7 = 432;
  }

  else
  {
    v7 = 290;
  }

  [requestCopy setAdvertisingRate:v7];
  if ([requestCopy clientType] == 16)
  {
    [requestCopy changePriorityValue:0];
  }

  if (WPLogInitOnce != -1)
  {
    [WPNearby updateAdvertisingRequest:withUpdate:];
  }

  v8 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = requestCopy;
    _os_log_impl(&dword_274327000, v8, OS_LOG_TYPE_DEFAULT, "Nearby update advertising with data: %{public}@", &v9, 0xCu);
  }

  updateCopy[2](updateCopy, requestCopy);
}

- (void)advertisingPendingOfType:(unsigned __int8)type
{
  typeCopy = type;
  v10 = *MEMORY[0x277D85DE8];
  delegate = [(WPNearby *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    if (WPLogInitOnce != -1)
    {
      [WPNearby advertisingPendingOfType:];
    }

    v7 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
    {
      v9[0] = 67109120;
      v9[1] = typeCopy;
      _os_log_impl(&dword_274327000, v7, OS_LOG_TYPE_INFO, "Nearby advertising pending of type: %d", v9, 8u);
    }

    delegate2 = [(WPNearby *)self delegate];
    [delegate2 nearby:self didDeferAdvertisingType:{+[WPNearby nearbyTypeFromClientType:](WPNearby, "nearbyTypeFromClientType:", typeCopy)}];
  }
}

- (void)advertisingStartedOfType:(unsigned __int8)type
{
  typeCopy = type;
  delegate = [(WPNearby *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    if (WPLogInitOnce != -1)
    {
      [WPNearby advertisingStartedOfType:];
    }

    v7 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [(WPNearby *)typeCopy advertisingStartedOfType:v7];
    }

    delegate2 = [(WPNearby *)self delegate];
    [delegate2 nearby:self didStartAdvertisingType:{+[WPNearby nearbyTypeFromClientType:](WPNearby, "nearbyTypeFromClientType:", typeCopy)}];
  }
}

- (void)advertisingFailedToStart:(id)start ofType:(unsigned __int8)type
{
  typeCopy = type;
  startCopy = start;
  delegate = [(WPNearby *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    if (WPLogInitOnce != -1)
    {
      [WPNearby advertisingFailedToStart:ofType:];
    }

    v9 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [(WPNearby *)typeCopy advertisingFailedToStart:v9 ofType:startCopy];
    }

    delegate2 = [(WPNearby *)self delegate];
    [delegate2 nearby:self didFailToStartAdvertisingOfType:+[WPNearby nearbyTypeFromClientType:](WPNearby withError:{"nearbyTypeFromClientType:", typeCopy), startCopy}];
  }
}

- (void)stopAdvertisingOfType:(int64_t)type
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [WPNearby clientTypeFromNearbyType:type];
  v5 = [WPAdvertisingRequest requestForClientType:v4];
  if (WPLogInitOnce != -1)
  {
    [WPNearby stopAdvertisingOfType:];
  }

  v6 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v9 = v4;
    _os_log_impl(&dword_274327000, v6, OS_LOG_TYPE_DEFAULT, "Nearby stop advertising of type: %d", buf, 8u);
  }

  v7.receiver = self;
  v7.super_class = WPNearby;
  [(WPClient *)&v7 stopAdvertising:v5];
}

- (void)advertisingStoppedOfType:(unsigned __int8)type withError:(id)error
{
  typeCopy = type;
  v20 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (WPLogInitOnce != -1)
  {
    [WPNearby advertisingStoppedOfType:withError:];
  }

  v7 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134218242;
    v17 = typeCopy;
    v18 = 2112;
    v19 = errorCopy;
    _os_log_impl(&dword_274327000, v7, OS_LOG_TYPE_DEFAULT, "Nearby advertising stopped of type: %ld with error: %@", &v16, 0x16u);
  }

  if (errorCopy)
  {
    if ([errorCopy code] == 28)
    {
      delegate = [(WPNearby *)self delegate];
      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        if (WPLogInitOnce != -1)
        {
          [WPNearby advertisingStoppedOfType:withError:];
        }

        v10 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          v11 = v10;
          localizedDescription = [errorCopy localizedDescription];
          v16 = 134218242;
          v17 = typeCopy;
          v18 = 2112;
          v19 = localizedDescription;
          _os_log_impl(&dword_274327000, v11, OS_LOG_TYPE_DEFAULT, "[Privacy] Nearby advertising stopped of type: %ld with error: %@", &v16, 0x16u);
        }

        delegate2 = [(WPNearby *)self delegate];
        [delegate2 nearby:self didStopAdvertisingType:+[WPNearby nearbyTypeFromClientType:](WPNearby withError:{"nearbyTypeFromClientType:", typeCopy), errorCopy}];
        goto LABEL_15;
      }
    }
  }

  else
  {
    delegate3 = [(WPNearby *)self delegate];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      delegate2 = [(WPNearby *)self delegate];
      [delegate2 nearby:self didStopAdvertisingType:{+[WPNearby nearbyTypeFromClientType:](WPNearby, "nearbyTypeFromClientType:", typeCopy)}];
LABEL_15:
    }
  }
}

- (void)startScanningForType:(int64_t)type data:(id)data mask:(id)mask peers:(id)peers scanMode:(int64_t)mode rssi:(id)rssi duplicates:(BOOL)duplicates scanCache:(BOOL)self0 useCaseList:(id)self1
{
  v59[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  maskCopy = mask;
  peersCopy = peers;
  rssiCopy = rssi;
  listCopy = list;
  if (mode)
  {
    if (mode == 1)
    {
      modeCopy = 30;
    }

    else if (mode == 2)
    {
      modeCopy = 40;
    }

    else
    {
      modeCopy = mode;
    }
  }

  else
  {
    modeCopy = 10;
  }

  v23 = [dataCopy length];
  v24 = [maskCopy length];
  if (v23 <= 22 && v24 < 23)
  {
    v25 = objc_opt_new();
    v26 = v25;
    if (type != 1)
    {
      if (type)
      {
        v53 = [MEMORY[0x277CBEAD8] exceptionWithName:@"UnknownNearbyType" reason:@"The nearby type isn't valid" userInfo:0];
        objc_exception_throw(v53);
      }

      v27 = listCopy;
      v28 = peersCopy;
      switch(modeCopy)
      {
        case 40:
          v29 = 30;
          break;
        case 5:
          v29 = 966;
          break;
        case 30:
          v29 = 40;
          break;
        case 20:
          v29 = 60;
          break;
        default:
          v29 = 300;
          break;
      }

      [v25 setClientType:15];
      [v26 setNearbyScanMode:modeCopy];
      isBubbleTestClient = [(WPClient *)self isBubbleTestClient];
      v31 = 966;
      if (modeCopy == 40 && isBubbleTestClient)
      {
        [v26 setNearbyScanMode:40];
        v31 = 30;
        v29 = 30;
      }

LABEL_46:
      *&buf = v29;
      *(&buf + 1) = v31;
      v57 = 30;
      [v26 setScanningRates:&buf];
      if (dataCopy)
      {
        [v26 setBlobValue:dataCopy];
      }

      v43 = v28;
      if (maskCopy)
      {
        [v26 setMaskValue:maskCopy];
      }

      v44 = v27;
      if (v43)
      {
        [v26 setPeers:v43];
      }

      selfCopy = self;
      if (rssiCopy)
      {
        [v26 setRssiThreshold:rssiCopy];
      }

      [v26 setScanCache:cache];
      [v26 setAllowDuplicates:duplicates];
      if ([v44 count])
      {
        v47 = rssiCopy;
        v48 = v43;
        v49 = MEMORY[0x277CBEA60];
        allObjects = [v44 allObjects];
        v51 = [v49 arrayWithArray:allObjects];
        [v26 setUseCaseList:v51];

        v43 = v48;
        rssiCopy = v47;
      }

      if (WPLogInitOnce != -1)
      {
        [WPNearby startScanningForType:data:mask:peers:scanMode:rssi:duplicates:scanCache:useCaseList:];
      }

      v52 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v26;
        _os_log_impl(&dword_274327000, v52, OS_LOG_TYPE_DEFAULT, "Nearby start scanning with data: %{public}@", &buf, 0xCu);
      }

      v55.receiver = selfCopy;
      v55.super_class = WPNearby;
      [(WPClient *)&v55 startScanning:v26];
      goto LABEL_61;
    }

    v27 = listCopy;
    v28 = peersCopy;
    if (modeCopy > 29)
    {
      if (modeCopy == 40)
      {
        v29 = 30;
        goto LABEL_38;
      }

      if (modeCopy == 30)
      {
        v29 = 40;
        goto LABEL_38;
      }
    }

    else
    {
      if (modeCopy == 5)
      {
        v29 = 966;
        goto LABEL_38;
      }

      if (modeCopy == 20)
      {
        v29 = 60;
LABEL_38:
        [v25 setClientType:16];
        [v26 setNearbyScanMode:modeCopy];
        if (([v27 containsObject:&unk_28835C720] & 1) != 0 || objc_msgSend(v27, "containsObject:", &unk_28835C738))
        {
          if (WPLogInitOnce != -1)
          {
            [WPNearby startScanningForType:data:mask:peers:scanMode:rssi:duplicates:scanCache:useCaseList:];
          }

          v45 = WiProxLog;
          if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v27;
            _os_log_impl(&dword_274327000, v45, OS_LOG_TYPE_DEFAULT, "Nearby is asking for NearbyInfo EDT default camera or stream start scan %@", &buf, 0xCu);
          }

          v31 = 60;
        }

        else
        {
          v31 = 966;
        }

        goto LABEL_46;
      }
    }

    v29 = 300;
    goto LABEL_38;
  }

  selfCopy2 = self;
  v54 = maskCopy;
  type = [MEMORY[0x277CCACA8] stringWithFormat:@"Nearby data (%ld bytes) or mask (%ld bytes) length is larger than the max length (22 bytes) for type: %ld", v23, v24, type];
  v34 = dataCopy;
  v35 = rssiCopy;
  if (WPLogInitOnce != -1)
  {
    [WPNearby startScanningForType:data:mask:peers:scanMode:rssi:duplicates:scanCache:useCaseList:];
  }

  v36 = listCopy;
  v37 = peersCopy;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [WPTest startAdvertisingOfType:data:priority:mode:options:];
  }

  v38 = MEMORY[0x277CCA9B8];
  v58 = *MEMORY[0x277CCA450];
  v59[0] = type;
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:&v58 count:1];
  v26 = [v38 errorWithDomain:@"WPErrorDomain" code:8 userInfo:v39];

  delegate = [(WPNearby *)selfCopy2 delegate];
  v41 = objc_opt_respondsToSelector();

  if (v41)
  {
    delegate2 = [(WPNearby *)selfCopy2 delegate];
    [delegate2 nearby:selfCopy2 didFailToStartScanningForType:type withError:v26];
  }

  v43 = v37;
  rssiCopy = v35;
  v44 = v36;
  dataCopy = v34;
  maskCopy = v54;
LABEL_61:
}

- (void)scanningStartedOfType:(unsigned __int8)type
{
  typeCopy = type;
  delegate = [(WPNearby *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(WPNearby *)self delegate];
    [delegate2 nearby:self didStartScanningForType:{+[WPNearby nearbyTypeFromClientType:](WPNearby, "nearbyTypeFromClientType:", typeCopy)}];
  }
}

- (void)scanningFailedToStart:(id)start ofType:(unsigned __int8)type
{
  typeCopy = type;
  startCopy = start;
  delegate = [(WPNearby *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    if (WPLogInitOnce != -1)
    {
      [WPNearby scanningFailedToStart:ofType:];
    }

    v9 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [(WPNearby *)typeCopy scanningFailedToStart:v9 ofType:startCopy];
    }

    delegate2 = [(WPNearby *)self delegate];
    [delegate2 nearby:self didFailToStartScanningForType:+[WPNearby nearbyTypeFromClientType:](WPNearby withError:{"nearbyTypeFromClientType:", typeCopy), startCopy}];
  }
}

- (void)stopScanningForType:(int64_t)type
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  [v5 setClientType:{+[WPNearby clientTypeFromNearbyType:](WPNearby, "clientTypeFromNearbyType:", type)}];
  if (WPLogInitOnce != -1)
  {
    [WPNearby stopScanningForType:];
  }

  v6 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = v5;
    _os_log_impl(&dword_274327000, v6, OS_LOG_TYPE_DEFAULT, "Nearby stop scanning: %{public}@", buf, 0xCu);
  }

  v7.receiver = self;
  v7.super_class = WPNearby;
  [(WPClient *)&v7 stopScanning:v5];
}

- (void)scanningStoppedOfType:(unsigned __int8)type
{
  typeCopy = type;
  delegate = [(WPNearby *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(WPNearby *)self delegate];
    [delegate2 nearby:self didStopScanningForType:{+[WPNearby nearbyTypeFromClientType:](WPNearby, "nearbyTypeFromClientType:", typeCopy)}];
  }
}

- (void)clearDuplicatesForType:(int64_t)type
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  [v5 setClientType:{+[WPNearby clientTypeFromNearbyType:](WPNearby, "clientTypeFromNearbyType:", type)}];
  if (WPLogInitOnce != -1)
  {
    [WPNearby clearDuplicatesForType:];
  }

  v6 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    typeCopy = type;
    _os_log_impl(&dword_274327000, v6, OS_LOG_TYPE_DEFAULT, "Nearby clear duplicate filter cache type %ld", buf, 0xCu);
  }

  v7.receiver = self;
  v7.super_class = WPNearby;
  [(WPClient *)&v7 clearDuplicateFilterCache:v5];
}

- (void)deviceDiscovered:(id)discovered
{
  v47[6] = *MEMORY[0x277D85DE8];
  discoveredCopy = discovered;
  v5 = [discoveredCopy objectForKeyedSubscript:@"kDevicePeripheralUUID"];
  v6 = [discoveredCopy objectForKeyedSubscript:@"kDeviceType"];
  integerValue = [v6 integerValue];

  v8 = [discoveredCopy objectForKeyedSubscript:@"kDeviceAdvertisingData"];
  v9 = [v8 subdataWithRange:{4, objc_msgSend(v8, "length") - 4}];

  v10 = [WPNearby nearbyTypeFromClientType:integerValue];
  if (v5)
  {
    v11 = v10;
    delegate = [(WPNearby *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v38 = v9;
      v39 = v11;
      v14 = [discoveredCopy objectForKeyedSubscript:@"kDeviceAddress"];
      v15 = [discoveredCopy objectForKeyedSubscript:@"kDeviceManufacturerData"];
      v16 = [discoveredCopy objectForKeyedSubscript:@"kDevicePaired"];
      v46[0] = @"WPNearbyKeyDeviceAddress";
      data = v14;
      if (!v14)
      {
        data = [MEMORY[0x277CBEA90] data];
      }

      v47[0] = data;
      v47[1] = v15;
      v37 = v15;
      v46[1] = @"WPNearbyKeyManufacturerData";
      v46[2] = @"WPNearbyKeyPaired";
      v18 = MEMORY[0x277CBEC28];
      if (v16)
      {
        v18 = v16;
      }

      v47[2] = v18;
      v46[3] = @"WPNearbyKeyRSSI";
      v19 = [discoveredCopy objectForKeyedSubscript:@"kDeviceRSSI"];
      v47[3] = v19;
      v46[4] = @"kDeviceChannel";
      v20 = [discoveredCopy objectForKeyedSubscript:?];
      v47[4] = v20;
      v46[5] = @"WPNearbyKeyDeviceTime";
      v21 = [discoveredCopy objectForKeyedSubscript:@"kDeviceTime"];
      v47[5] = v21;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:6];

      if (!v14)
      {
      }

      if (WPLogInitOnce != -1)
      {
        [WPNearby deviceDiscovered:];
      }

      v23 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
      {
        *buf = 134218498;
        v41 = v39;
        v42 = 2112;
        v43 = v5;
        v44 = 2112;
        v45 = v22;
        _os_log_impl(&dword_274327000, v23, OS_LOG_TYPE_INFO, "Nearby didDiscoverType %ld UUID %@ info %@", buf, 0x20u);
      }

      delegate2 = [(WPNearby *)self delegate];
      v9 = v38;
      [delegate2 nearby:self didDiscoverType:v39 withData:v38 fromPeer:v5 peerInfo:v22];
    }

    else
    {
      delegate3 = [(WPNearby *)self delegate];
      v34 = objc_opt_respondsToSelector();

      if (v34)
      {
        if (WPLogInitOnce != -1)
        {
          [WPNearby deviceDiscovered:];
        }

        v35 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
        {
          *buf = 134218242;
          v41 = v11;
          v42 = 2112;
          v43 = v5;
          _os_log_impl(&dword_274327000, v35, OS_LOG_TYPE_INFO, "Nearby didDiscoverType %ld UUID %@", buf, 0x16u);
        }

        delegate4 = [(WPNearby *)self delegate];
        [delegate4 nearby:self didDiscoverType:v11 withData:v9 fromPeer:v5];
      }
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPNearby deviceDiscovered:];
    }

    v25 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [(WPNearby *)v25 deviceDiscovered:v26, v27, v28, v29, v30, v31, v32];
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
      [WPNearby connectToPeer:withOptions:];
    }

    v9 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [(WPNearby *)v9 connectToPeer:v10 withOptions:v11, v12, v13, v14, v15, v16];
    }

    v17 = MEMORY[0x277CCA9B8];
    v36 = *MEMORY[0x277CCA450];
    v37[0] = @"Nearby no peer was provided!";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    v19 = [v17 errorWithDomain:@"WPErrorDomain" code:6 userInfo:v18];

    delegate = [(WPNearby *)self delegate];
    LOBYTE(v18) = objc_opt_respondsToSelector();

    if ((v18 & 1) == 0)
    {
      goto LABEL_21;
    }

    delegate2 = [(WPNearby *)self delegate];
    [delegate2 nearby:self didConnectToPeer:0 transport:0 error:v19];
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
      [WPNearby connectToPeer:withOptions:];
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

    delegate3 = [(WPNearby *)self delegate];
    LOBYTE(v26) = objc_opt_respondsToSelector();

    if (v26)
    {
      delegate4 = [(WPNearby *)self delegate];
      [delegate4 nearby:self didConnectToPeer:peerCopy transport:0 error:delegate2];
    }

    goto LABEL_20;
  }

  if (WPLogInitOnce != -1)
  {
    [WPNearby connectToPeer:withOptions:];
  }

  v8 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v31 = peerCopy;
    v32 = 2112;
    v33 = optionsCopy;
    _os_log_impl(&dword_274327000, v8, OS_LOG_TYPE_DEFAULT, "Nearby connect to peer  %{public}@ with options %@", buf, 0x16u);
  }

  v29.receiver = self;
  v29.super_class = WPNearby;
  [(WPClient *)&v29 connectToPeer:peerCopy withOptions:optionsCopy];
LABEL_22:
}

- (void)connectedDevice:(id)device withError:(id)error shouldDiscover:(BOOL)discover
{
  discoverCopy = discover;
  v22[1] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  errorCopy = error;
  if (discoverCopy)
  {
    if (WPLogInitOnce != -1)
    {
      [WPNearby connectedDevice:withError:shouldDiscover:];
    }

    v10 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = deviceCopy;
      _os_log_impl(&dword_274327000, v10, OS_LOG_TYPE_DEFAULT, "Nearby connected to device: %{public}@ over GATT", buf, 0xCu);
    }

    v21 = @"9FA480E0-4967-4542-9390-D343DC5D04AE";
    v11 = [MEMORY[0x277CBEB98] setWithObjects:{@"AF0BADB1-5B99-43CD-917A-A77BC549E3CC", 0}];
    v22[0] = v11;
    delegate2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];

    v16.receiver = self;
    v16.super_class = WPNearby;
    [(WPClient *)&v16 discoverCharacteristicsAndServices:delegate2 forPeripheral:deviceCopy];
    goto LABEL_13;
  }

  if (WPLogInitOnce != -1)
  {
    [WPNearby connectedDevice:withError:shouldDiscover:];
  }

  v13 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = deviceCopy;
    v19 = 2114;
    v20 = errorCopy;
    _os_log_impl(&dword_274327000, v13, OS_LOG_TYPE_DEFAULT, "Nearby sending didConnectToPeer %@ with error %{public}@", buf, 0x16u);
  }

  delegate = [(WPNearby *)self delegate];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    delegate2 = [(WPNearby *)self delegate];
    [delegate2 nearby:self didConnectToPeer:deviceCopy transport:1 error:errorCopy];
LABEL_13:
  }
}

- (void)connectedDeviceOverLEPipe:(id)pipe
{
  v11 = *MEMORY[0x277D85DE8];
  pipeCopy = pipe;
  if (WPLogInitOnce != -1)
  {
    [WPNearby connectedDeviceOverLEPipe:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = pipeCopy;
    _os_log_impl(&dword_274327000, v5, OS_LOG_TYPE_DEFAULT, "Nearby sending didConnectToPeer %@ over LEPipe", &v9, 0xCu);
  }

  delegate = [(WPNearby *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(WPNearby *)self delegate];
    [delegate2 nearby:self didConnectToPeer:pipeCopy transport:2 error:0];
  }
}

- (void)discoveredCharacteristicsAndServices:(id)services forPeripheral:(id)peripheral
{
  v34 = *MEMORY[0x277D85DE8];
  servicesCopy = services;
  peripheralCopy = peripheral;
  v8 = [servicesCopy objectForKeyedSubscript:@"9FA480E0-4967-4542-9390-D343DC5D04AE"];
  if (v8)
  {
    if (WPLogInitOnce != -1)
    {
      [WPNearby discoveredCharacteristicsAndServices:forPeripheral:];
    }

    v9 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = servicesCopy;
      *&buf[12] = 2114;
      *&buf[14] = peripheralCopy;
      _os_log_impl(&dword_274327000, v9, OS_LOG_TYPE_DEFAULT, "Nearby discovered characteristics and services: %{public}@ for peripheral: %{public}@", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v33 = 0;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __63__WPNearby_discoveredCharacteristicsAndServices_forPeripheral___block_invoke_321;
    v30[3] = &unk_279ED7548;
    v30[4] = buf;
    [v8 enumerateObjectsUsingBlock:v30];
    if (*(*&buf[8] + 24) == 1)
    {
      if (WPLogInitOnce != -1)
      {
        [WPNearby discoveredCharacteristicsAndServices:forPeripheral:];
      }

      v10 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        *v29 = 0;
        _os_log_impl(&dword_274327000, v10, OS_LOG_TYPE_DEFAULT, "Nearby subscribing to characteristic", v29, 2u);
      }

      v28.receiver = self;
      v28.super_class = WPNearby;
      [(WPClient *)&v28 shouldSubscribe:1 toPeer:peripheralCopy withCharacteristic:@"AF0BADB1-5B99-43CD-917A-A77BC549E3CC" inService:@"9FA480E0-4967-4542-9390-D343DC5D04AE"];
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        [WPNearby discoveredCharacteristicsAndServices:forPeripheral:];
      }

      v19 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        [(WPNearby *)v19 discoveredCharacteristicsAndServices:v20 forPeripheral:v21, v22, v23, v24, v25, v26];
      }

      v27.receiver = self;
      v27.super_class = WPNearby;
      [(WPClient *)&v27 disconnectFromPeer:peripheralCopy];
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPNearby discoveredCharacteristicsAndServices:forPeripheral:];
    }

    v11 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [(WPNearby *)v11 discoveredCharacteristicsAndServices:v12 forPeripheral:v13, v14, v15, v16, v17, v18];
    }

    v31.receiver = self;
    v31.super_class = WPNearby;
    [(WPClient *)&v31 disconnectFromPeer:peripheralCopy];
  }
}

void *__63__WPNearby_discoveredCharacteristicsAndServices_forPeripheral___block_invoke_321(uint64_t a1, void *a2)
{
  result = [a2 isEqualToString:@"AF0BADB1-5B99-43CD-917A-A77BC549E3CC"];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

- (void)updatedNotificationState:(BOOL)state forCharacteristic:(id)characteristic inService:(id)service withPeripheral:(id)peripheral
{
  stateCopy = state;
  v37[1] = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  serviceCopy = service;
  peripheralCopy = peripheral;
  if (!stateCopy)
  {
    if (WPLogInitOnce != -1)
    {
      [WPNearby updatedNotificationState:forCharacteristic:inService:withPeripheral:];
    }

    v17 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [(WPNearby *)v17 updatedNotificationState:v18 forCharacteristic:v19 inService:v20 withPeripheral:v21, v22, v23, v24];
    }

    v25 = MEMORY[0x277CCA9B8];
    v34 = *MEMORY[0x277CCA450];
    v35 = @"Nearby notification is disabled";
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    serviceCopy = [v25 errorWithDomain:@"WPErrorDomain" code:22 userInfo:v26];

    delegate = [(WPNearby *)self delegate];
    LOBYTE(v26) = objc_opt_respondsToSelector();

    if ((v26 & 1) == 0)
    {
      goto LABEL_23;
    }

    delegate2 = [(WPNearby *)self delegate];
    [delegate2 nearby:self didConnectToPeer:peripheralCopy transport:1 error:serviceCopy];
    goto LABEL_22;
  }

  if (![characteristicCopy isEqualToString:@"AF0BADB1-5B99-43CD-917A-A77BC549E3CC"] || !objc_msgSend(serviceCopy, "isEqualToString:", @"9FA480E0-4967-4542-9390-D343DC5D04AE"))
  {
    serviceCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Nearby service or characteristic is not found, received notification for characteristic: %@, service: %@", characteristicCopy, serviceCopy];
    if (WPLogInitOnce != -1)
    {
      [WPNearby updatedNotificationState:forCharacteristic:inService:withPeripheral:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPNearby updatedNotificationState:forCharacteristic:inService:withPeripheral:];
    }

    v29 = MEMORY[0x277CCA9B8];
    v36 = *MEMORY[0x277CCA450];
    v37[0] = serviceCopy;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    delegate2 = [v29 errorWithDomain:@"WPErrorDomain" code:20 userInfo:v30];

    delegate3 = [(WPNearby *)self delegate];
    LOBYTE(v30) = objc_opt_respondsToSelector();

    if (v30)
    {
      delegate4 = [(WPNearby *)self delegate];
      [delegate4 nearby:self didConnectToPeer:peripheralCopy transport:1 error:delegate2];
    }

LABEL_22:

    goto LABEL_23;
  }

  if (WPLogInitOnce != -1)
  {
    [WPNearby updatedNotificationState:forCharacteristic:inService:withPeripheral:];
  }

  v13 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_274327000, v13, OS_LOG_TYPE_DEFAULT, "Nearby notification is enabled, send Central didConnect", buf, 2u);
  }

  delegate5 = [(WPNearby *)self delegate];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    serviceCopy = [(WPNearby *)self delegate];
    [serviceCopy nearby:self didConnectToPeer:peripheralCopy transport:1 error:0];
LABEL_23:
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
    60000 = [v19 stringWithFormat:@"Nearby no data was provided for peer: %@", uUIDString];

    if (WPLogInitOnce != -1)
    {
      [WPNearby sendData:toPeer:];
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

    delegate = [(WPNearby *)self delegate];
    LOBYTE(v22) = objc_opt_respondsToSelector();

    if ((v22 & 1) == 0)
    {
      goto LABEL_28;
    }

    delegate2 = [(WPNearby *)self delegate];
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
        [WPNearby sendData:toPeer:];
      }

      v36 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
      {
        [(WPNearby *)v36 sendData:60000 toPeer:v8];
      }

      v37.receiver = self;
      v37.super_class = WPNearby;
      [(WPClient *)&v37 sendDataToCharacteristic:delegate5 inService:@"9FA480E0-4967-4542-9390-D343DC5D04AE" forPeer:v8];
      goto LABEL_28;
    }

    60000 = [MEMORY[0x277CCACA8] stringWithFormat:@"Nearby data length is invalid %ld (max: %lu)", v9, 60000];
    if (WPLogInitOnce != -1)
    {
      [WPNearby sendData:toPeer:];
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

    delegate3 = [(WPNearby *)self delegate];
    LOBYTE(v12) = objc_opt_respondsToSelector();

    if ((v12 & 1) == 0)
    {
LABEL_28:

      goto LABEL_29;
    }

    delegate2 = [(WPNearby *)self delegate];
    v16 = delegate2;
    selfCopy2 = self;
    v18 = dataCopy;
LABEL_16:
    [delegate2 nearby:selfCopy2 didSendData:v18 toPeer:v8 error:delegate5];

    goto LABEL_28;
  }

  if (WPLogInitOnce != -1)
  {
    [WPNearby sendData:toPeer:];
  }

  v24 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [(WPNearby *)v24 sendData:v25 toPeer:v26, v27, v28, v29, v30, v31];
  }

  v32 = MEMORY[0x277CCA9B8];
  v41 = *MEMORY[0x277CCA450];
  v42 = @"Nearby no peer was provided";
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
  60000 = [v32 errorWithDomain:@"WPErrorDomain" code:8 userInfo:v33];

  delegate4 = [(WPNearby *)self delegate];
  LOBYTE(v33) = objc_opt_respondsToSelector();

  if (v33)
  {
    delegate5 = [(WPNearby *)self delegate];
    [delegate5 nearby:self didSendData:dataCopy toPeer:0 error:60000];
    goto LABEL_28;
  }

LABEL_29:
}

- (void)sentData:(id)data forCharacteristic:(id)characteristic inService:(id)service forPeripheral:(id)peripheral withError:(id)error
{
  v36 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  characteristicCopy = characteristic;
  serviceCopy = service;
  peripheralCopy = peripheral;
  errorCopy = error;
  if ([characteristicCopy isEqualToString:@"AF0BADB1-5B99-43CD-917A-A77BC549E3CC"] && objc_msgSend(serviceCopy, "isEqualToString:", @"9FA480E0-4967-4542-9390-D343DC5D04AE"))
  {
    if (WPLogInitOnce != -1)
    {
      [WPNearby sentData:forCharacteristic:inService:forPeripheral:withError:];
    }

    v17 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      localizedDescription = [errorCopy localizedDescription];
      v28 = 138412290;
      v29 = localizedDescription;
      _os_log_impl(&dword_274327000, v18, OS_LOG_TYPE_DEFAULT, "Nearby didSendData over GATT with error %@", &v28, 0xCu);
    }

    delegate = [(WPNearby *)self delegate];
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      if ([dataCopy length] >= 2)
      {
        v22 = [dataCopy subdataWithRange:{2, objc_msgSend(dataCopy, "length") - 2}];

        dataCopy = v22;
      }

      delegate2 = [(WPNearby *)self delegate];
      [delegate2 nearby:self didSendData:dataCopy toPeer:peripheralCopy error:errorCopy];
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPNearby sentData:forCharacteristic:inService:forPeripheral:withError:];
    }

    v24 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      v25 = v24;
      uUIDString = [peripheralCopy UUIDString];
      localizedDescription2 = [errorCopy localizedDescription];
      v28 = 138413058;
      v29 = characteristicCopy;
      v30 = 2112;
      v31 = serviceCopy;
      v32 = 2112;
      v33 = uUIDString;
      v34 = 2112;
      v35 = localizedDescription2;
      _os_log_error_impl(&dword_274327000, v25, OS_LOG_TYPE_ERROR, "Nearby Sent data to a characteristic: %@ or service: %@ to peer: %@ with error: %@ that isn't of type Nearby", &v28, 0x2Au);
    }
  }
}

- (void)sentData:(id)data toEndpoint:(id)endpoint forPeripheral:(id)peripheral withError:(id)error
{
  v30 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  endpointCopy = endpoint;
  peripheralCopy = peripheral;
  errorCopy = error;
  if (!endpointCopy || ([endpointCopy isEqualToString:@"nearby"] & 1) != 0 || objc_msgSend(endpointCopy, "isEqualToString:", @"wp.nearby"))
  {
    if (WPLogInitOnce != -1)
    {
      [WPNearby sentData:toEndpoint:forPeripheral:withError:];
    }

    v14 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v24 = 134217984;
      v25 = [dataCopy length];
      _os_log_impl(&dword_274327000, v15, OS_LOG_TYPE_DEFAULT, "WPPM: Nearby didSendData over LE pipe: %lu", &v24, 0xCu);
    }

    delegate = [(WPNearby *)self delegate];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      if ([dataCopy length] >= 2)
      {
        v18 = [dataCopy subdataWithRange:{2, objc_msgSend(dataCopy, "length") - 2}];

        dataCopy = v18;
      }

      delegate2 = [(WPNearby *)self delegate];
      [delegate2 nearby:self didSendData:dataCopy toPeer:peripheralCopy error:errorCopy];
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPNearby sentData:toEndpoint:forPeripheral:withError:];
    }

    v20 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      v21 = v20;
      uUIDString = [peripheralCopy UUIDString];
      localizedDescription = [errorCopy localizedDescription];
      v24 = 138412802;
      v25 = endpointCopy;
      v26 = 2112;
      v27 = uUIDString;
      v28 = 2112;
      v29 = localizedDescription;
      _os_log_error_impl(&dword_274327000, v21, OS_LOG_TYPE_ERROR, "Nearby Sent data to a endpoint: %@ to peer: %@ with error: %@ that isn't of type Nearby", &v24, 0x20u);
    }
  }
}

- (void)receivedData:(id)data forCharacteristic:(id)characteristic inService:(id)service forPeripheral:(id)peripheral
{
  v30 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  characteristicCopy = characteristic;
  serviceCopy = service;
  peripheralCopy = peripheral;
  if (!(characteristicCopy | serviceCopy) || [characteristicCopy isEqualToString:@"AF0BADB1-5B99-43CD-917A-A77BC549E3CC"] && objc_msgSend(serviceCopy, "isEqualToString:", @"9FA480E0-4967-4542-9390-D343DC5D04AE"))
  {
    transfers = [(WPNearby *)self transfers];
    v15 = [transfers objectForKeyedSubscript:peripheralCopy];

    if (!v15)
    {
      v16 = [[WPDataTransfer alloc] initDataTransferForPeer:peripheralCopy];
      transfers2 = [(WPNearby *)self transfers];
      [transfers2 setObject:v16 forKeyedSubscript:peripheralCopy];

      transfers3 = [(WPNearby *)self transfers];
      v15 = [transfers3 objectForKeyedSubscript:peripheralCopy];
    }

    if (WPLogInitOnce != -1)
    {
      [WPNearby receivedData:forCharacteristic:inService:forPeripheral:];
    }

    v19 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [WPNearby receivedData:dataCopy forCharacteristic:v19 inService:peripheralCopy forPeripheral:?];
    }

    if ([v15 addNewData:dataCopy])
    {
      kdebug_trace();
      if (WPLogInitOnce != -1)
      {
        [WPNearby receivedData:forCharacteristic:inService:forPeripheral:];
      }

      v20 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v20;
        currentReceivedData = [v15 currentReceivedData];
        v28 = 134217984;
        v29 = [currentReceivedData length];
        _os_log_impl(&dword_274327000, v21, OS_LOG_TYPE_DEFAULT, "WPPM: Nearby didReceiveData data of length %ld", &v28, 0xCu);
      }

      delegate = [(WPNearby *)self delegate];
      v24 = objc_opt_respondsToSelector();

      if (v24)
      {
        delegate2 = [(WPNearby *)self delegate];
        currentReceivedData2 = [v15 currentReceivedData];
        v27 = [currentReceivedData2 copy];
        [delegate2 nearby:self didReceiveData:v27 fromPeer:peripheralCopy];
      }

      [v15 resetTransfer];
    }
  }
}

- (void)receivedData:(id)data fromEndpoint:(id)endpoint forPeripheral:(id)peripheral
{
  dataCopy = data;
  endpointCopy = endpoint;
  peripheralCopy = peripheral;
  v11 = WiProxLog;
  v12 = v11;
  nearbySignPostID = self->_nearbySignPostID;
  if (nearbySignPostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *v14 = 0;
    _os_signpost_emit_with_name_impl(&dword_274327000, v12, OS_SIGNPOST_EVENT, nearbySignPostID, "WPNearby receivedData:fromEndpoint:forPeripheral", &unk_2743626BF, v14, 2u);
  }

  if (([endpointCopy isEqualToString:@"wp.nearby"] & 1) != 0 || objc_msgSend(endpointCopy, "isEqualToString:", @"nearby"))
  {
    [(WPNearby *)self receivedData:dataCopy forCharacteristic:0 inService:0 forPeripheral:peripheralCopy];
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
        [WPNearby central:subscribed:toCharacteristic:inService:];
      }

      v13 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138543362;
        v19 = centralCopy;
        _os_log_impl(&dword_274327000, v13, OS_LOG_TYPE_DEFAULT, "Nearby central connected to our device %{public}@, send Peripheral didConnect", &v18, 0xCu);
      }

      delegate = [(WPNearby *)self delegate];
      v15 = objc_opt_respondsToSelector();

      if (v15)
      {
        delegate2 = [(WPNearby *)self delegate];
        [delegate2 nearby:self didConnectToPeer:centralCopy transport:1 error:0];
      }
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        [WPNearby central:subscribed:toCharacteristic:inService:];
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
      [WPNearby central:subscribed:toCharacteristic:inService:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPNearby central:subscribed:toCharacteristic:inService:];
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
      [WPNearby disconnectFromPeer:];
    }

    v5 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = peerCopy;
      _os_log_impl(&dword_274327000, v5, OS_LOG_TYPE_DEFAULT, "Nearby disconnect from peer: %{public}@", buf, 0xCu);
    }

    v19.receiver = self;
    v19.super_class = WPNearby;
    [(WPClient *)&v19 disconnectFromPeer:peerCopy];
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPNearby disconnectFromPeer:];
    }

    v6 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [(WPNearby *)v6 disconnectFromPeer:v7, v8, v9, v10, v11, v12, v13];
    }

    v14 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277CCA450];
    v23[0] = @"Nearby peer is null";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v16 = [v14 errorWithDomain:@"WPErrorDomain" code:7 userInfo:v15];

    delegate = [(WPNearby *)self delegate];
    LOBYTE(v15) = objc_opt_respondsToSelector();

    if (v15)
    {
      delegate2 = [(WPNearby *)self delegate];
      [delegate2 nearby:self didDisconnectFromPeer:0 error:v16];
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
    v11 = [v8 stringWithFormat:@"Nearby peer: %@ is disconnected with error: %@", uUIDString, localizedDescription];

    if (WPLogInitOnce != -1)
    {
      [WPNearby disconnectedDevice:withError:];
    }

    v12 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v20 = v11;
      _os_log_impl(&dword_274327000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ - send didDisconnect", buf, 0xCu);
    }
  }

  transfers = [(WPNearby *)self transfers];
  v14 = [transfers objectForKeyedSubscript:deviceCopy];

  if (v14)
  {
    [v14 resetTransfer];
  }

  delegate = [(WPNearby *)self delegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    if (WPLogInitOnce != -1)
    {
      [WPNearby disconnectedDevice:withError:];
    }

    v17 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = deviceCopy;
      v21 = 2112;
      v22 = errorCopy;
      _os_log_impl(&dword_274327000, v17, OS_LOG_TYPE_DEFAULT, "Nearby sending didDisconnectFromPeer %@ with error %@", buf, 0x16u);
    }

    delegate2 = [(WPNearby *)self delegate];
    [delegate2 nearby:self didDisconnectFromPeer:deviceCopy error:errorCopy];
  }
}

- (void)disconnectedDeviceOverLEPipe:(id)pipe withError:(id)error
{
  v13 = *MEMORY[0x277D85DE8];
  pipeCopy = pipe;
  errorCopy = error;
  if (WPLogInitOnce != -1)
  {
    [WPNearby disconnectedDeviceOverLEPipe:withError:];
  }

  v8 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = pipeCopy;
    v11 = 2112;
    v12 = errorCopy;
    _os_log_impl(&dword_274327000, v8, OS_LOG_TYPE_DEFAULT, "Nearby disconnected %@ over LE pipe with error %@", &v9, 0x16u);
  }

  [(WPNearby *)self disconnectedDevice:pipeCopy withError:errorCopy];
}

- (void)startTrackingPeer:(id)peer forType:(int64_t)type
{
  v13[1] = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  v7 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v13[0] = @"Nearby peer traking is unsupported";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v7 errorWithDomain:@"WPErrorDomain" code:17 userInfo:v8];

  delegate = [(WPNearby *)self delegate];
  LOBYTE(v8) = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(WPNearby *)self delegate];
    [delegate2 nearby:self didStartTrackingPeer:peerCopy type:type error:v9];
  }
}

- (void)startedTrackingPeer:(id)peer ofType:(unsigned __int8)type
{
  typeCopy = type;
  peerCopy = peer;
  delegate = [(WPNearby *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(WPNearby *)self delegate];
    [delegate2 nearby:self didStartTrackingPeer:peerCopy type:+[WPNearby nearbyTypeFromClientType:](WPNearby error:{"nearbyTypeFromClientType:", typeCopy), 0}];
  }
}

- (void)failedToStartTrackingPeer:(id)peer error:(id)error
{
  peerCopy = peer;
  errorCopy = error;
  if (WPLogInitOnce != -1)
  {
    [WPNearby failedToStartTrackingPeer:error:];
  }

  v8 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [(WPNearby *)peerCopy failedToStartTrackingPeer:v8 error:errorCopy];
  }

  delegate = [(WPNearby *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = +[WPNearby nearbyTypeFromClientType:](WPNearby, "nearbyTypeFromClientType:", [peerCopy clientType]);
    peerUUID = [peerCopy peerUUID];
    delegate2 = [(WPNearby *)self delegate];
    [delegate2 nearby:self didStartTrackingPeer:peerUUID type:v11 error:errorCopy];
  }
}

- (void)stopTrackingPeer:(id)peer forType:(int64_t)type
{
  peerCopy = peer;
  delegate = [(WPNearby *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(WPNearby *)self delegate];
    [delegate2 nearby:self didStopTrackingPeer:peerCopy type:type];
  }
}

- (void)stoppedTrackingPeer:(id)peer ofType:(unsigned __int8)type
{
  typeCopy = type;
  peerCopy = peer;
  delegate = [(WPNearby *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(WPNearby *)self delegate];
    [delegate2 nearby:self didStopTrackingPeer:peerCopy type:{+[WPNearby nearbyTypeFromClientType:](WPNearby, "nearbyTypeFromClientType:", typeCopy)}];
  }
}

- (void)foundPeer:(id)peer ofType:(unsigned __int8)type
{
  typeCopy = type;
  peerCopy = peer;
  delegate = [(WPNearby *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [WPNearby nearbyTypeFromClientType:typeCopy];
    delegate2 = [(WPNearby *)self delegate];
    [delegate2 nearby:self didFindPeer:peerCopy type:v8];
  }
}

- (void)lostPeer:(id)peer ofType:(unsigned __int8)type
{
  typeCopy = type;
  peerCopy = peer;
  delegate = [(WPNearby *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [WPNearby nearbyTypeFromClientType:typeCopy];
    delegate2 = [(WPNearby *)self delegate];
    [delegate2 nearby:self didLosePeer:peerCopy type:v8];
  }
}

- (void)bandwidthStateUpdated:(id)updated
{
  v4 = [updated integerValue] < 2;
  btBandwidthState = [(WPNearby *)self btBandwidthState];
  [(WPNearby *)self setBtBandwidthState:v4];
  if ([(WPNearby *)self btBandwidthState]!= btBandwidthState)
  {
    delegate = [(WPNearby *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate2 = [(WPNearby *)self delegate];
      [delegate2 nearbyDidChangeBluetoothBandwidthState:self];
    }
  }
}

- (void)stateDidChange:(int64_t)change
{
  v21 = *MEMORY[0x277D85DE8];
  state = [(WPClient *)self state];
  v14.receiver = self;
  v14.super_class = WPNearby;
  [(WPClient *)&v14 stateDidChange:change];
  if (WPLogInitOnce != -1)
  {
    [WPNearby stateDidChange:];
  }

  v6 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    state2 = [(WPClient *)self state];
    *buf = 134218496;
    changeCopy = change;
    v17 = 2048;
    v18 = state;
    v19 = 2048;
    v20 = state2;
    _os_log_impl(&dword_274327000, v7, OS_LOG_TYPE_DEFAULT, "Nearby stateDidChange: %ld, old %ld, pipe state %ld", buf, 0x20u);
  }

  if ([(WPClient *)self state]!= state)
  {
    if ([(WPClient *)self state]== 3)
    {
      v13.receiver = self;
      v13.super_class = WPNearby;
      [(WPClient *)&v13 registerEndpoint:@"wp.nearby" requireAck:1 requireEncryption:0];
    }

    else
    {
      v12.receiver = self;
      v12.super_class = WPNearby;
      [(WPClient *)&v12 unregisterEndpoint:@"wp.nearby"];
    }

    delegate = [(WPNearby *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      delegate2 = [(WPNearby *)self delegate];
      [delegate2 nearbyDidUpdateState:self];
    }
  }
}

- (void)advertisingStartedOfType:(unsigned __int8)a1 .cold.2(unsigned __int8 a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&dword_274327000, a2, OS_LOG_TYPE_DEBUG, "Nearby advertising started of type: %d", v2, 8u);
}

- (void)advertisingFailedToStart:(void *)a3 ofType:.cold.2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 localizedDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5(&dword_274327000, v6, v7, "Nearby advertising failed to start of type: %d with error: %@", v8, v9, v10, v11);
}

- (void)scanningFailedToStart:(void *)a3 ofType:.cold.2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 localizedDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5(&dword_274327000, v6, v7, "Nearby failed to start scanning of type: %d with error: %@", v8, v9, v10, v11);
}

- (void)connectToPeer:(uint64_t)a3 withOptions:(uint64_t)a4 .cold.5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"Nearby no peer was provided!";
  OUTLINED_FUNCTION_0_0(&dword_274327000, a1, a3, "%@ - send didConnect", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)updatedNotificationState:(uint64_t)a3 forCharacteristic:(uint64_t)a4 inService:(uint64_t)a5 withPeripheral:(uint64_t)a6 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"Nearby notification is disabled";
  OUTLINED_FUNCTION_0_0(&dword_274327000, a1, a3, "Nearby send Central didConnect with error: %@", a5, a6, a7, a8, v8, DWORD2(v8));
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
  OUTLINED_FUNCTION_6(&dword_274327000, v8, v9, "Nearby send data size %lu: %@ peer: %@", v10, v11, v12, v13, *v14, *&v14[8], *&v14[16], v7);
}

- (void)sendData:(uint64_t)a3 toPeer:(uint64_t)a4 .cold.6(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"Nearby no peer was provided";
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
  OUTLINED_FUNCTION_6(&dword_274327000, v6, v7, "Nearby received data %@ of length %ld from peer %@", v8, v9, v10, v11, *v12, *&v12[8], *&v12[16], a3);
}

- (void)central:subscribed:toCharacteristic:inService:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_274327000, v1, OS_LOG_TYPE_ERROR, "Nearby received subscription notification of characteristic: %@, service: %@ is not of type Nearby", v2, 0x16u);
}

- (void)disconnectFromPeer:(uint64_t)a3 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"Nearby peer is null";
  OUTLINED_FUNCTION_0_0(&dword_274327000, a1, a3, "%@ - sending didDisconnect", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)failedToStartTrackingPeer:(void *)a3 error:.cold.2(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 localizedDescription];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_274327000, v5, OS_LOG_TYPE_ERROR, "Nearby failed to start tracking peer: %@ with error: %@", &v7, 0x16u);
}

@end