@interface WPContinuity
+ (int64_t)continuityTypeFromClientType:(unsigned __int8)type;
+ (unsigned)clientTypeFromContinuityType:(int64_t)type;
- (WPContinuity)init;
- (WPContinuity)initWithDelegate:(id)delegate queue:(id)queue;
- (WPContinuityDelegate)delegate;
- (void)advertisingFailedToStart:(id)start ofType:(unsigned __int8)type;
- (void)advertisingPendingOfType:(unsigned __int8)type;
- (void)advertisingStartedOfType:(unsigned __int8)type;
- (void)advertisingStoppedOfType:(unsigned __int8)type withError:(id)error;
- (void)bandwidthStateUpdated:(id)updated;
- (void)central:(id)central subscribed:(BOOL)subscribed toCharacteristic:(id)characteristic inService:(id)service;
- (void)connectToPeer:(id)peer;
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
- (void)peerTrackingAvailable;
- (void)peerTrackingFull;
- (void)populateClientGATT:(id)t;
- (void)receivedData:(id)data forCharacteristic:(id)characteristic inService:(id)service forPeripheral:(id)peripheral;
- (void)receivedData:(id)data fromEndpoint:(id)endpoint forPeripheral:(id)peripheral;
- (void)scanningFailedToStart:(id)start ofType:(unsigned __int8)type;
- (void)scanningStartedOfType:(unsigned __int8)type;
- (void)scanningStoppedOfType:(unsigned __int8)type;
- (void)sendData:(id)data toPeer:(id)peer;
- (void)sentData:(id)data forCharacteristic:(id)characteristic inService:(id)service forPeripheral:(id)peripheral withError:(id)error;
- (void)sentData:(id)data toEndpoint:(id)endpoint forPeripheral:(id)peripheral withError:(id)error;
- (void)startAdvertisingOfType:(int64_t)type withData:(id)data;
- (void)startScanningForType:(int64_t)type withData:(id)data mask:(id)mask peers:(id)peers boostedScan:(BOOL)scan;
- (void)startScanningForType:(int64_t)type withData:(id)data mask:(id)mask peers:(id)peers boostedScan:(BOOL)scan duplicates:(BOOL)duplicates;
- (void)startTrackingPeer:(id)peer forType:(int64_t)type;
- (void)startedTrackingPeer:(id)peer ofType:(unsigned __int8)type;
- (void)stateDidChange:(int64_t)change;
- (void)stopAdvertisingOfType:(int64_t)type;
- (void)stopScanningForType:(int64_t)type;
- (void)stopTrackingPeer:(id)peer forType:(int64_t)type;
- (void)stoppedTrackingPeer:(id)peer ofType:(unsigned __int8)type;
- (void)updateAdvertisingRequest:(id)request withUpdate:(id)update;
- (void)updateScanningRequest:(id)request withUpdate:(id)update;
- (void)updatedNotificationState:(BOOL)state forCharacteristic:(id)characteristic inService:(id)service withPeripheral:(id)peripheral;
@end

@implementation WPContinuity

- (WPContinuity)initWithDelegate:(id)delegate queue:(id)queue
{
  v23 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  queueCopy = queue;
  if (+[WPClient isHomePod])
  {
    if (WPLogInitOnce != -1)
    {
      [WPContinuity initWithDelegate:queue:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPContinuity initWithDelegate:queue:];
    }

    selfCopy = 0;
  }

  else
  {
    v18.receiver = self;
    v18.super_class = WPContinuity;
    v9 = [(WPClient *)&v18 initWithQueue:queueCopy machName:0];
    v10 = v9;
    if (v9)
    {
      objc_storeWeak(&v9->_delegate, delegateCopy);
      v10->_btBandwidthState = -1;
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      transfers = v10->_transfers;
      v10->_transfers = dictionary;

      [(WPClient *)v10 setConnectionUseCase:6];
      v17.receiver = v10;
      v17.super_class = WPContinuity;
      [(WPClient *)&v17 listenToBandwidthNotifications];
    }

    if (WPLogInitOnce != -1)
    {
      [WPContinuity initWithDelegate:queue:];
    }

    v13 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      delegate = [(WPContinuity *)v10 delegate];
      *buf = 134218240;
      v20 = v10;
      v21 = 2048;
      v22 = delegate;
      _os_log_impl(&dword_274327000, v14, OS_LOG_TYPE_DEFAULT, "Continuity initWithDelegate self: %p, delegate: %p", buf, 0x16u);
    }

    self = v10;
    selfCopy = self;
  }

  return selfCopy;
}

- (WPContinuity)init
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
    [WPContinuity invalidate];
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_274327000, v3, OS_LOG_TYPE_DEFAULT, "Continuity invalidate by client", buf, 2u);
  }

  [(WPContinuity *)self setDelegate:0];
  v5.receiver = self;
  v5.super_class = WPContinuity;
  [(WPClient *)&v5 unregisterEndpoint:@"wp.continuity"];
  v4.receiver = self;
  v4.super_class = WPContinuity;
  [(WPClient *)&v4 invalidate];
}

+ (unsigned)clientTypeFromContinuityType:(int64_t)type
{
  if (type >= 3)
  {
    v6 = [MEMORY[0x277CBEAD8] exceptionWithName:@"UnknownContinuityType" reason:@"The continuity type isn't valid" userInfo:{0, v3, v4}];
    objc_exception_throw(v6);
  }

  return type | 0xC;
}

+ (int64_t)continuityTypeFromClientType:(unsigned __int8)type
{
  if ((type - 12) >= 3)
  {
    v4 = MEMORY[0x277CBEAD8];
    type = [MEMORY[0x277CCACA8] stringWithFormat:@"The client type %ld isn't valid", type];
    v6 = [v4 exceptionWithName:@"UnknownClientType" reason:type userInfo:0];

    objc_exception_throw(v6);
  }

  return (type - 12);
}

- (void)populateClientGATT:(id)t
{
  tCopy = t;
  v6 = objc_opt_new();
  v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"8667556C-9A37-4C91-84ED-54EE27D90049"];
  [v6 setUuid:v4];

  [v6 setProperties:264];
  [v6 setPermissions:8];
  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"D0611E78-BBB4-4591-A5F8-487910AE4366"];
  tCopy[2](tCopy, v6, v5);
}

- (void)startAdvertisingOfType:(int64_t)type withData:(id)data
{
  v19[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v7 = dataCopy;
  if (dataCopy && [dataCopy length] && objc_msgSend(v7, "length") < 0x17)
  {
    v11 = [WPAdvertisingRequest requestForClientType:[WPContinuity clientTypeFromContinuityType:type]];
    [v11 setAdvertisingRate:48];
    [v11 setConnectable:1];
    [v11 setStopOnAdvertisingAddressChange:1];
    [v11 setAdvertisingData:v7];
    [v11 setUpdateTime:2.0];
    if (WPLogInitOnce != -1)
    {
      [WPContinuity startAdvertisingOfType:withData:];
    }

    v14 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = v11;
      _os_log_impl(&dword_274327000, v14, OS_LOG_TYPE_DEFAULT, "Continuity start advertising with data: %{public}@", buf, 0xCu);
    }

    v15.receiver = self;
    v15.super_class = WPContinuity;
    [(WPClient *)&v15 startAdvertising:v11];
  }

  else
  {
    v8 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA450];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bad data was provided: %@", v7];
    v19[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v11 = [v8 errorWithDomain:@"WPErrorDomain" code:8 userInfo:v10];

    delegate = [(WPContinuity *)self delegate];
    LOBYTE(v9) = objc_opt_respondsToSelector();

    if (v9)
    {
      delegate2 = [(WPContinuity *)self delegate];
      [delegate2 continuity:self didFailToStartAdvertisingOfType:type withError:v11];
    }
  }
}

- (void)updateAdvertisingRequest:(id)request withUpdate:(id)update
{
  v10 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  updateCopy = update;
  [requestCopy setUpdateTime:0.0];
  [requestCopy setAdvertisingRate:290];
  if (WPLogInitOnce != -1)
  {
    [WPContinuity updateAdvertisingRequest:withUpdate:];
  }

  v7 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = requestCopy;
    _os_log_impl(&dword_274327000, v7, OS_LOG_TYPE_DEFAULT, "Continuity update advertising with data: %{public}@", &v8, 0xCu);
  }

  updateCopy[2](updateCopy, requestCopy);
}

- (void)stopAdvertisingOfType:(int64_t)type
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [WPContinuity clientTypeFromContinuityType:type];
  if (WPLogInitOnce != -1)
  {
    [WPContinuity stopAdvertisingOfType:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v9 = v4;
    _os_log_impl(&dword_274327000, v5, OS_LOG_TYPE_DEFAULT, "Continuity stop advertising of type: %d", buf, 8u);
  }

  v6 = [WPAdvertisingRequest requestForClientType:v4];
  v7.receiver = self;
  v7.super_class = WPContinuity;
  [(WPClient *)&v7 stopAdvertising:v6];
}

- (void)advertisingPendingOfType:(unsigned __int8)type
{
  typeCopy = type;
  v10 = *MEMORY[0x277D85DE8];
  delegate = [(WPContinuity *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    if (WPLogInitOnce != -1)
    {
      [WPContinuity advertisingPendingOfType:];
    }

    v7 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
    {
      v9[0] = 67109120;
      v9[1] = typeCopy;
      _os_log_impl(&dword_274327000, v7, OS_LOG_TYPE_INFO, "Continuity advertising pending of type: %d", v9, 8u);
    }

    delegate2 = [(WPContinuity *)self delegate];
    [delegate2 continuityPendingAdvertisingOfType:self advertisingType:{+[WPContinuity continuityTypeFromClientType:](WPContinuity, "continuityTypeFromClientType:", typeCopy)}];
  }
}

- (void)advertisingFailedToStart:(id)start ofType:(unsigned __int8)type
{
  typeCopy = type;
  startCopy = start;
  delegate = [(WPContinuity *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    if (WPLogInitOnce != -1)
    {
      [WPContinuity advertisingFailedToStart:ofType:];
    }

    v9 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [(WPContinuity *)typeCopy advertisingFailedToStart:v9 ofType:startCopy];
    }

    delegate2 = [(WPContinuity *)self delegate];
    [delegate2 continuity:self didFailToStartAdvertisingOfType:+[WPContinuity continuityTypeFromClientType:](WPContinuity withError:{"continuityTypeFromClientType:", typeCopy), startCopy}];
  }
}

- (void)advertisingStoppedOfType:(unsigned __int8)type withError:(id)error
{
  typeCopy = type;
  v20 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (WPLogInitOnce != -1)
  {
    [WPContinuity advertisingStoppedOfType:withError:];
  }

  v7 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134218242;
    v17 = typeCopy;
    v18 = 2112;
    v19 = errorCopy;
    _os_log_impl(&dword_274327000, v7, OS_LOG_TYPE_DEFAULT, "Continuity advertising stopped of type: %ld with error: %@", &v16, 0x16u);
  }

  if (errorCopy)
  {
    if ([errorCopy code] == 28)
    {
      delegate = [(WPContinuity *)self delegate];
      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        if (WPLogInitOnce != -1)
        {
          [WPContinuity advertisingStoppedOfType:withError:];
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
          _os_log_impl(&dword_274327000, v11, OS_LOG_TYPE_DEFAULT, "[Privacy] Continuity advertising stopped of type: %ld with error: %@", &v16, 0x16u);
        }

        delegate2 = [(WPContinuity *)self delegate];
        [delegate2 continuityDidStopAdvertisingOfType:self advertisingType:+[WPContinuity continuityTypeFromClientType:](WPContinuity withError:{"continuityTypeFromClientType:", typeCopy), errorCopy}];
        goto LABEL_15;
      }
    }
  }

  else
  {
    delegate3 = [(WPContinuity *)self delegate];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      delegate2 = [(WPContinuity *)self delegate];
      [delegate2 continuityDidStopAdvertisingOfType:self advertisingType:{+[WPContinuity continuityTypeFromClientType:](WPContinuity, "continuityTypeFromClientType:", typeCopy)}];
LABEL_15:
    }
  }
}

- (void)advertisingStartedOfType:(unsigned __int8)type
{
  typeCopy = type;
  delegate = [(WPContinuity *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    if (WPLogInitOnce != -1)
    {
      [WPContinuity advertisingStartedOfType:];
    }

    v7 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [(WPContinuity *)typeCopy advertisingStartedOfType:v7];
    }

    delegate2 = [(WPContinuity *)self delegate];
    [delegate2 continuityDidStartAdvertisingOfType:self advertisingType:{+[WPContinuity continuityTypeFromClientType:](WPContinuity, "continuityTypeFromClientType:", typeCopy)}];
  }
}

- (void)startScanningForType:(int64_t)type withData:(id)data mask:(id)mask peers:(id)peers boostedScan:(BOOL)scan
{
  scanCopy = scan;
  dataCopy = data;
  maskCopy = mask;
  peersCopy = peers;
  if (type == 2)
  {
    selfCopy3 = self;
    v15 = 2;
    goto LABEL_7;
  }

  if (type == 1)
  {
    selfCopy3 = self;
    v15 = 1;
LABEL_7:
    v16 = dataCopy;
    v17 = maskCopy;
    v18 = peersCopy;
    v19 = scanCopy;
    v20 = 0;
    goto LABEL_8;
  }

  if (type)
  {
    goto LABEL_9;
  }

  selfCopy3 = self;
  v15 = 0;
  v16 = dataCopy;
  v17 = maskCopy;
  v18 = peersCopy;
  v19 = scanCopy;
  v20 = 1;
LABEL_8:
  [(WPContinuity *)selfCopy3 startScanningForType:v15 withData:v16 mask:v17 peers:v18 boostedScan:v19 duplicates:v20];
LABEL_9:
}

- (void)startScanningForType:(int64_t)type withData:(id)data mask:(id)mask peers:(id)peers boostedScan:(BOOL)scan duplicates:(BOOL)duplicates
{
  duplicatesCopy = duplicates;
  v35[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  maskCopy = mask;
  peersCopy = peers;
  v17 = [dataCopy length];
  v18 = [maskCopy length];
  if (v17 > 22 || v18 >= 23)
  {
    type = [MEMORY[0x277CCACA8] stringWithFormat:@"Continuity data (%ld bytes) or mask (%ld bytes) length is larger than the max length (22 bytes) for type: %ld", v17, v18, type];
    v23 = MEMORY[0x277CCA9B8];
    v34 = *MEMORY[0x277CCA450];
    v35[0] = type;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v25 = [v23 errorWithDomain:@"WPErrorDomain" code:8 userInfo:v24];

    delegate = [(WPContinuity *)self delegate];
    LOBYTE(v24) = objc_opt_respondsToSelector();

    if (v24)
    {
      delegate2 = [(WPContinuity *)self delegate];
      [delegate2 continuity:self didFailToStartScanningForType:type WithError:v25];
    }
  }

  else
  {
    v19 = objc_opt_new();
    type = v19;
    switch(type)
    {
      case 2:
        v21 = 14;
        if (!scan)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      case 1:
        v21 = 13;
        v22 = 300;
        v28 = 966;
LABEL_15:
        [type setClientType:v21];
        [type setAllowDuplicates:duplicatesCopy];
        *&buf = v22;
        *(&buf + 1) = v28;
        v33 = 30;
        [type setScanningRates:&buf];
        if (dataCopy)
        {
          [type setBlobValue:dataCopy];
        }

        if (maskCopy)
        {
          [type setMaskValue:maskCopy];
        }

        if (peersCopy)
        {
          [type setPeers:peersCopy];
        }

        if (WPLogInitOnce != -1)
        {
          [WPContinuity startScanningForType:withData:mask:peers:boostedScan:duplicates:];
        }

        v29 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = type;
          _os_log_impl(&dword_274327000, v29, OS_LOG_TYPE_DEFAULT, "Continuity start scanning with data: %{public}@", &buf, 0xCu);
        }

        v31.receiver = self;
        v31.super_class = WPContinuity;
        [(WPClient *)&v31 startScanning:type];
        goto LABEL_31;
      case 0:
        v21 = 12;
        if (!scan)
        {
LABEL_7:
          v22 = 300;
LABEL_14:
          v28 = 0xFFFFLL;
          goto LABEL_15;
        }

LABEL_13:
        [v19 setUpdateTime:4.0];
        v22 = 60;
        goto LABEL_14;
    }

    type2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown continuity client type %ld", type];
    if (WPLogInitOnce != -1)
    {
      [WPContinuity startScanningForType:withData:mask:peers:boostedScan:duplicates:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPTest startAdvertisingOfType:data:priority:mode:options:];
    }
  }

LABEL_31:
}

- (void)updateScanningRequest:(id)request withUpdate:(id)update
{
  v10 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  updateCopy = update;
  [requestCopy setUpdateTime:0.0];
  v8 = xmmword_27435CEA0;
  v9 = 30;
  [requestCopy setScanningRates:&v8];
  if (WPLogInitOnce != -1)
  {
    [WPContinuity updateScanningRequest:withUpdate:];
  }

  v7 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v8) = 138543362;
    *(&v8 + 4) = requestCopy;
    _os_log_impl(&dword_274327000, v7, OS_LOG_TYPE_DEFAULT, "Continuity update scanning request with data: %{public}@", &v8, 0xCu);
  }

  updateCopy[2](updateCopy, requestCopy);
}

- (void)stopScanningForType:(int64_t)type
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  [v5 setClientType:{+[WPContinuity clientTypeFromContinuityType:](WPContinuity, "clientTypeFromContinuityType:", type)}];
  if (WPLogInitOnce != -1)
  {
    [WPContinuity stopScanningForType:];
  }

  v6 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = v5;
    _os_log_impl(&dword_274327000, v6, OS_LOG_TYPE_DEFAULT, "Continuity stop scanning: %{public}@", buf, 0xCu);
  }

  v7.receiver = self;
  v7.super_class = WPContinuity;
  [(WPClient *)&v7 stopScanning:v5];
}

- (void)scanningStartedOfType:(unsigned __int8)type
{
  typeCopy = type;
  delegate = [(WPContinuity *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(WPContinuity *)self delegate];
    [delegate2 continuityDidStartScanningForType:self scanningType:{+[WPContinuity continuityTypeFromClientType:](WPContinuity, "continuityTypeFromClientType:", typeCopy)}];
  }
}

- (void)scanningStoppedOfType:(unsigned __int8)type
{
  typeCopy = type;
  delegate = [(WPContinuity *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(WPContinuity *)self delegate];
    [delegate2 continuityDidStopScanningForType:self scanningType:{+[WPContinuity continuityTypeFromClientType:](WPContinuity, "continuityTypeFromClientType:", typeCopy)}];
  }
}

- (void)scanningFailedToStart:(id)start ofType:(unsigned __int8)type
{
  typeCopy = type;
  startCopy = start;
  delegate = [(WPContinuity *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    if (WPLogInitOnce != -1)
    {
      [WPContinuity scanningFailedToStart:ofType:];
    }

    v9 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [(WPContinuity *)typeCopy scanningFailedToStart:v9 ofType:startCopy];
    }

    delegate2 = [(WPContinuity *)self delegate];
    [delegate2 continuity:self didFailToStartScanningForType:+[WPContinuity continuityTypeFromClientType:](WPContinuity WithError:{"continuityTypeFromClientType:", typeCopy), startCopy}];
  }
}

- (void)startTrackingPeer:(id)peer forType:(int64_t)type
{
  v13[1] = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  v7 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v13[0] = @"Continuity peer traking is unsupported";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v7 errorWithDomain:@"WPErrorDomain" code:17 userInfo:v8];

  delegate = [(WPContinuity *)self delegate];
  LOBYTE(v8) = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(WPContinuity *)self delegate];
    [delegate2 continuityDidStartTrackingPeer:self peer:peerCopy type:type error:v9];
  }
}

- (void)startedTrackingPeer:(id)peer ofType:(unsigned __int8)type
{
  typeCopy = type;
  peerCopy = peer;
  delegate = [(WPContinuity *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [WPContinuity continuityTypeFromClientType:typeCopy];
    delegate2 = [(WPContinuity *)self delegate];
    [delegate2 continuityDidStartTrackingPeer:self peer:peerCopy type:v8 error:0];
  }
}

- (void)failedToStartTrackingPeer:(id)peer error:(id)error
{
  v24 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  errorCopy = error;
  delegate = [(WPContinuity *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = +[WPContinuity continuityTypeFromClientType:](WPContinuity, "continuityTypeFromClientType:", [peerCopy clientType]);
    peerUUID = [peerCopy peerUUID];
    if (WPLogInitOnce != -1)
    {
      [WPContinuity failedToStartTrackingPeer:error:];
    }

    v12 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      v14 = v12;
      uUIDString = [peerUUID UUIDString];
      clientType = [peerCopy clientType];
      localizedDescription = [errorCopy localizedDescription];
      v18 = 138412802;
      v19 = uUIDString;
      v20 = 1024;
      v21 = clientType;
      v22 = 2112;
      v23 = localizedDescription;
      _os_log_error_impl(&dword_274327000, v14, OS_LOG_TYPE_ERROR, "Continuity failed to start tracking peer: %@ of type: %d with error: %@", &v18, 0x1Cu);
    }

    delegate2 = [(WPContinuity *)self delegate];
    [delegate2 continuityDidStartTrackingPeer:self peer:peerUUID type:v10 error:errorCopy];
  }
}

- (void)stopTrackingPeer:(id)peer forType:(int64_t)type
{
  peerCopy = peer;
  delegate = [(WPContinuity *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(WPContinuity *)self delegate];
    [delegate2 continuityDidStopTrackingPeer:self peer:peerCopy type:type];
  }
}

- (void)stoppedTrackingPeer:(id)peer ofType:(unsigned __int8)type
{
  typeCopy = type;
  peerCopy = peer;
  delegate = [(WPContinuity *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [WPContinuity continuityTypeFromClientType:typeCopy];
    delegate2 = [(WPContinuity *)self delegate];
    [delegate2 continuityDidStopTrackingPeer:self peer:peerCopy type:v8];
  }
}

- (void)foundPeer:(id)peer ofType:(unsigned __int8)type
{
  typeCopy = type;
  peerCopy = peer;
  delegate = [(WPContinuity *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [WPContinuity continuityTypeFromClientType:typeCopy];
    delegate2 = [(WPContinuity *)self delegate];
    [delegate2 continuity:self didFindPeer:peerCopy type:v8];
  }
}

- (void)lostPeer:(id)peer ofType:(unsigned __int8)type
{
  typeCopy = type;
  peerCopy = peer;
  delegate = [(WPContinuity *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [WPContinuity continuityTypeFromClientType:typeCopy];
    delegate2 = [(WPContinuity *)self delegate];
    [delegate2 continuity:self didLosePeer:peerCopy type:v8];
  }
}

- (void)deviceDiscovered:(id)discovered
{
  discoveredCopy = discovered;
  v5 = [discoveredCopy objectForKeyedSubscript:@"kDevicePeripheralUUID"];
  v6 = [discoveredCopy objectForKeyedSubscript:@"kDeviceType"];
  integerValue = [v6 integerValue];

  v8 = [discoveredCopy objectForKeyedSubscript:@"kDeviceAdvertisingData"];

  v9 = [v8 subdataWithRange:{4, objc_msgSend(v8, "length") - 4}];

  v10 = [WPContinuity continuityTypeFromClientType:integerValue];
  if (v5)
  {
    v11 = v10;
    delegate = [(WPContinuity *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      delegate2 = [(WPContinuity *)self delegate];
      [delegate2 continuity:self didDiscoverType:v11 withData:v9 fromPeer:v5];
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPContinuity deviceDiscovered:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPContinuity deviceDiscovered:];
    }
  }
}

- (void)connectToPeer:(id)peer
{
  v34[1] = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  if (!peerCopy)
  {
    if (WPLogInitOnce != -1)
    {
      [WPContinuity connectToPeer:];
    }

    v8 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [(WPContinuity *)v8 connectToPeer:v9, v10, v11, v12, v13, v14, v15];
    }

    v16 = MEMORY[0x277CCA9B8];
    v33 = *MEMORY[0x277CCA450];
    v34[0] = @"Continuity no peer was provided!";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v18 = [v16 errorWithDomain:@"WPErrorDomain" code:5 userInfo:v17];

    delegate = [(WPContinuity *)self delegate];
    LOBYTE(v17) = objc_opt_respondsToSelector();

    if ((v17 & 1) == 0)
    {
      goto LABEL_21;
    }

    delegate2 = [(WPContinuity *)self delegate];
    [delegate2 continuity:self didConnectToPeer:0 error:v18];
LABEL_20:

LABEL_21:
    goto LABEL_22;
  }

  if ([(WPClient *)self state]!= 3)
  {
    v21 = MEMORY[0x277CCACA8];
    uUIDString = [peerCopy UUIDString];
    v23 = [WPClient stateAsString:[(WPClient *)self state]];
    v18 = [v21 stringWithFormat:@"Can't connect to peer %@ when state is %@", uUIDString, v23];

    if (WPLogInitOnce != -1)
    {
      [WPContinuity connectToPeer:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPTest startAdvertisingOfType:data:priority:mode:options:];
    }

    v24 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA450];
    v32 = v18;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    delegate2 = [v24 errorWithDomain:@"WPErrorDomain" code:1 userInfo:v25];

    delegate3 = [(WPContinuity *)self delegate];
    LOBYTE(v25) = objc_opt_respondsToSelector();

    if (v25)
    {
      delegate4 = [(WPContinuity *)self delegate];
      [delegate4 continuity:self didConnectToPeer:peerCopy error:delegate2];
    }

    goto LABEL_20;
  }

  if (WPLogInitOnce != -1)
  {
    [WPContinuity connectToPeer:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    uUIDString2 = [peerCopy UUIDString];
    *buf = 138543362;
    v30 = uUIDString2;
    _os_log_impl(&dword_274327000, v6, OS_LOG_TYPE_DEFAULT, "Continuity connect to peer: %{public}@", buf, 0xCu);
  }

  v28.receiver = self;
  v28.super_class = WPContinuity;
  [(WPClient *)&v28 connectToPeer:peerCopy];
LABEL_22:
}

- (void)connectedDevice:(id)device withError:(id)error shouldDiscover:(BOOL)discover
{
  discoverCopy = discover;
  v24[1] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  errorCopy = error;
  if (discoverCopy)
  {
    if (WPLogInitOnce != -1)
    {
      [WPContinuity connectedDevice:withError:shouldDiscover:];
    }

    v10 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      uUIDString = [deviceCopy UUIDString];
      *buf = 138543362;
      v20 = uUIDString;
      _os_log_impl(&dword_274327000, v11, OS_LOG_TYPE_DEFAULT, "Continuity connected to device: %{public}@", buf, 0xCu);
    }

    v23 = @"D0611E78-BBB4-4591-A5F8-487910AE4366";
    v13 = [MEMORY[0x277CBEB98] setWithObjects:{@"8667556C-9A37-4C91-84ED-54EE27D90049", 0}];
    v24[0] = v13;
    delegate2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];

    v18.receiver = self;
    v18.super_class = WPContinuity;
    [(WPClient *)&v18 discoverCharacteristicsAndServices:delegate2 forPeripheral:deviceCopy];
    goto LABEL_13;
  }

  if (WPLogInitOnce != -1)
  {
    [WPContinuity connectedDevice:withError:shouldDiscover:];
  }

  v15 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v20 = deviceCopy;
    v21 = 2114;
    v22 = errorCopy;
    _os_log_impl(&dword_274327000, v15, OS_LOG_TYPE_DEFAULT, "Continuity sending didConnectToPeer %@ with error %{public}@", buf, 0x16u);
  }

  delegate = [(WPContinuity *)self delegate];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    delegate2 = [(WPContinuity *)self delegate];
    [delegate2 continuity:self didConnectToPeer:deviceCopy error:errorCopy];
LABEL_13:
  }
}

- (void)connectedDeviceOverLEPipe:(id)pipe
{
  v11 = *MEMORY[0x277D85DE8];
  pipeCopy = pipe;
  if (WPLogInitOnce != -1)
  {
    [WPContinuity connectedDeviceOverLEPipe:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = pipeCopy;
    _os_log_impl(&dword_274327000, v5, OS_LOG_TYPE_DEFAULT, "Continuity sending didConnectToPeer %@ over LEPipe", &v9, 0xCu);
  }

  delegate = [(WPContinuity *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(WPContinuity *)self delegate];
    [delegate2 continuity:self didConnectToPeer:pipeCopy error:0];
  }
}

- (void)discoveredCharacteristicsAndServices:(id)services forPeripheral:(id)peripheral
{
  v20 = *MEMORY[0x277D85DE8];
  servicesCopy = services;
  peripheralCopy = peripheral;
  v8 = [servicesCopy objectForKeyedSubscript:@"D0611E78-BBB4-4591-A5F8-487910AE4366"];
  if (v8)
  {
    if (WPLogInitOnce != -1)
    {
      [WPContinuity discoveredCharacteristicsAndServices:forPeripheral:];
    }

    v9 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      uUIDString = [peripheralCopy UUIDString];
      *buf = 138543618;
      *&buf[4] = servicesCopy;
      *&buf[12] = 2114;
      *&buf[14] = uUIDString;
      _os_log_impl(&dword_274327000, v10, OS_LOG_TYPE_DEFAULT, "Continuity discovered characteristics and services: %{public}@ for peripheral: %{public}@", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v19 = 0;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __67__WPContinuity_discoveredCharacteristicsAndServices_forPeripheral___block_invoke_295;
    v16[3] = &unk_279ED7548;
    v16[4] = buf;
    [v8 enumerateObjectsUsingBlock:v16];
    if (*(*&buf[8] + 24) == 1)
    {
      if (WPLogInitOnce != -1)
      {
        [WPContinuity discoveredCharacteristicsAndServices:forPeripheral:];
      }

      v12 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&dword_274327000, v12, OS_LOG_TYPE_DEFAULT, "Continuity subscribing to characteristic", v15, 2u);
      }

      v14.receiver = self;
      v14.super_class = WPContinuity;
      [(WPClient *)&v14 shouldSubscribe:1 toPeer:peripheralCopy withCharacteristic:@"8667556C-9A37-4C91-84ED-54EE27D90049" inService:@"D0611E78-BBB4-4591-A5F8-487910AE4366"];
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        [WPContinuity discoveredCharacteristicsAndServices:forPeripheral:];
      }

      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        [WPContinuity discoveredCharacteristicsAndServices:forPeripheral:];
      }

      v13.receiver = self;
      v13.super_class = WPContinuity;
      [(WPClient *)&v13 disconnectFromPeer:peripheralCopy];
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPContinuity discoveredCharacteristicsAndServices:forPeripheral:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPContinuity discoveredCharacteristicsAndServices:forPeripheral:];
    }

    v17.receiver = self;
    v17.super_class = WPContinuity;
    [(WPClient *)&v17 disconnectFromPeer:peripheralCopy];
  }
}

void __67__WPContinuity_discoveredCharacteristicsAndServices_forPeripheral___block_invoke_295(uint64_t a1, void *a2, _BYTE *a3)
{
  if ([a2 isEqualToString:@"8667556C-9A37-4C91-84ED-54EE27D90049"])
  {
    if (WPLogInitOnce != -1)
    {
      __67__WPContinuity_discoveredCharacteristicsAndServices_forPeripheral___block_invoke_295_cold_1();
    }

    v5 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_274327000, v5, OS_LOG_TYPE_INFO, "Continuity found our characteristic", v6, 2u);
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }
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
      [WPContinuity updatedNotificationState:forCharacteristic:inService:withPeripheral:];
    }

    v17 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [(WPContinuity *)v17 updatedNotificationState:v18 forCharacteristic:v19 inService:v20 withPeripheral:v21, v22, v23, v24];
    }

    v25 = MEMORY[0x277CCA9B8];
    v34 = *MEMORY[0x277CCA450];
    v35 = @"Continuity notification is disabled";
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    serviceCopy = [v25 errorWithDomain:@"WPErrorDomain" code:22 userInfo:v26];

    delegate = [(WPContinuity *)self delegate];
    LOBYTE(v26) = objc_opt_respondsToSelector();

    if ((v26 & 1) == 0)
    {
      goto LABEL_23;
    }

    delegate2 = [(WPContinuity *)self delegate];
    [delegate2 continuity:self didConnectToPeer:peripheralCopy error:serviceCopy];
    goto LABEL_22;
  }

  if (![characteristicCopy isEqualToString:@"8667556C-9A37-4C91-84ED-54EE27D90049"] || !objc_msgSend(serviceCopy, "isEqualToString:", @"D0611E78-BBB4-4591-A5F8-487910AE4366"))
  {
    serviceCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Continuity service or characteristic is not found, received notification for characteristic: %@, service: %@", characteristicCopy, serviceCopy];
    if (WPLogInitOnce != -1)
    {
      [WPContinuity updatedNotificationState:forCharacteristic:inService:withPeripheral:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPContinuity updatedNotificationState:forCharacteristic:inService:withPeripheral:];
    }

    v29 = MEMORY[0x277CCA9B8];
    v36 = *MEMORY[0x277CCA450];
    v37[0] = serviceCopy;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    delegate2 = [v29 errorWithDomain:@"WPErrorDomain" code:20 userInfo:v30];

    delegate3 = [(WPContinuity *)self delegate];
    LOBYTE(v30) = objc_opt_respondsToSelector();

    if (v30)
    {
      delegate4 = [(WPContinuity *)self delegate];
      [delegate4 continuity:self didConnectToPeer:peripheralCopy error:delegate2];
    }

LABEL_22:

LABEL_23:
    goto LABEL_24;
  }

  delegate5 = [(WPContinuity *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    if (WPLogInitOnce != -1)
    {
      [WPContinuity updatedNotificationState:forCharacteristic:inService:withPeripheral:];
    }

    v15 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_274327000, v15, OS_LOG_TYPE_DEFAULT, "Continuity notification is enabled, send Central didConnect", buf, 2u);
    }

    serviceCopy = [(WPContinuity *)self delegate];
    [serviceCopy continuity:self didConnectToPeer:peripheralCopy error:0];
    goto LABEL_23;
  }

LABEL_24:
}

- (void)disconnectFromPeer:(id)peer
{
  v25[1] = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  if (peerCopy)
  {
    if (WPLogInitOnce != -1)
    {
      [WPContinuity disconnectFromPeer:];
    }

    v5 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      uUIDString = [peerCopy UUIDString];
      *buf = 138543362;
      v23 = uUIDString;
      _os_log_impl(&dword_274327000, v6, OS_LOG_TYPE_DEFAULT, "Continuity disconnect from peer: %{public}@", buf, 0xCu);
    }

    v21.receiver = self;
    v21.super_class = WPContinuity;
    [(WPClient *)&v21 disconnectFromPeer:peerCopy];
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPContinuity disconnectFromPeer:];
    }

    v8 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [(WPContinuity *)v8 disconnectFromPeer:v9, v10, v11, v12, v13, v14, v15];
    }

    v16 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    v25[0] = @"Continuity peer is null";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v18 = [v16 errorWithDomain:@"WPErrorDomain" code:7 userInfo:v17];

    delegate = [(WPContinuity *)self delegate];
    LOBYTE(v17) = objc_opt_respondsToSelector();

    if (v17)
    {
      delegate2 = [(WPContinuity *)self delegate];
      [delegate2 continuity:self didDisconnectFromPeer:0 error:v18];
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
    v11 = [v8 stringWithFormat:@"Continuity peer: %@ is disconnected with error: %@", uUIDString, localizedDescription];

    if (WPLogInitOnce != -1)
    {
      [WPContinuity disconnectedDevice:withError:];
    }

    v12 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v20 = v11;
      _os_log_impl(&dword_274327000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ - send didDisconnect", buf, 0xCu);
    }
  }

  transfers = [(WPContinuity *)self transfers];
  v14 = [transfers objectForKeyedSubscript:deviceCopy];

  if (v14)
  {
    [v14 resetTransfer];
  }

  delegate = [(WPContinuity *)self delegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    if (WPLogInitOnce != -1)
    {
      [WPContinuity disconnectedDevice:withError:];
    }

    v17 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = deviceCopy;
      v21 = 2112;
      v22 = errorCopy;
      _os_log_impl(&dword_274327000, v17, OS_LOG_TYPE_DEFAULT, "Continuity sending didDisconnectFromPeer %@ with error %@", buf, 0x16u);
    }

    delegate2 = [(WPContinuity *)self delegate];
    [delegate2 continuity:self didDisconnectFromPeer:deviceCopy error:errorCopy];
  }
}

- (void)disconnectedDeviceOverLEPipe:(id)pipe withError:(id)error
{
  v13 = *MEMORY[0x277D85DE8];
  pipeCopy = pipe;
  errorCopy = error;
  if (WPLogInitOnce != -1)
  {
    [WPContinuity disconnectedDeviceOverLEPipe:withError:];
  }

  v8 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = pipeCopy;
    v11 = 2112;
    v12 = errorCopy;
    _os_log_impl(&dword_274327000, v8, OS_LOG_TYPE_DEFAULT, "Continuity disconnected %@ over LE pipe with error %@", &v9, 0x16u);
  }

  [(WPContinuity *)self disconnectedDevice:pipeCopy withError:errorCopy];
}

- (void)sendData:(id)data toPeer:(id)peer
{
  v59[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  peerCopy = peer;
  v8 = peerCopy;
  if (!dataCopy)
  {
    v23 = MEMORY[0x277CCACA8];
    uUIDString = [peerCopy UUIDString];
    60000 = [v23 stringWithFormat:@"Continuity no data was provided for peer: %@", uUIDString];

    if (WPLogInitOnce != -1)
    {
      [WPContinuity sendData:toPeer:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPTest startAdvertisingOfType:data:priority:mode:options:];
    }

    v25 = MEMORY[0x277CCA9B8];
    v58 = *MEMORY[0x277CCA450];
    v59[0] = 60000;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:&v58 count:1];
    delegate5 = [v25 errorWithDomain:@"WPErrorDomain" code:8 userInfo:v26];

    delegate = [(WPContinuity *)self delegate];
    LOBYTE(v26) = objc_opt_respondsToSelector();

    if ((v26 & 1) == 0)
    {
      goto LABEL_32;
    }

    delegate2 = [(WPContinuity *)self delegate];
    v20 = delegate2;
    selfCopy2 = self;
    v22 = 0;
    goto LABEL_20;
  }

  if (peerCopy)
  {
    if (WPLogInitOnce != -1)
    {
      [WPContinuity sendData:toPeer:];
    }

    v9 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [dataCopy length];
      uUIDString2 = [v8 UUIDString];
      *buf = 134218498;
      v51 = v11;
      v52 = 2112;
      v53 = dataCopy;
      v54 = 2112;
      v55 = uUIDString2;
      _os_log_impl(&dword_274327000, v10, OS_LOG_TYPE_DEFAULT, "Continuity send data: (%lu) %@ to peer: %@", buf, 0x20u);
    }

    v13 = [dataCopy length];
    if ((v13 - 60001) > 0xFFFFFFFFFFFF159FLL)
    {
      v47 = v13;
      60000 = [MEMORY[0x277CBEB28] dataWithBytes:&v47 length:2];
      [60000 appendData:dataCopy];
      delegate5 = objc_opt_new();
      [delegate5 setData:60000];
      v39 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"8667556C-9A37-4C91-84ED-54EE27D90049"];
      [delegate5 setUuid:v39];

      [delegate5 setWriteType:0];
      if (WPLogInitOnce != -1)
      {
        [WPContinuity sendData:toPeer:];
      }

      v40 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v41 = v40;
        data = [delegate5 data];
        v43 = [data length];
        data2 = [delegate5 data];
        uUIDString3 = [v8 UUIDString];
        *buf = 134218498;
        v51 = v43;
        v52 = 2112;
        v53 = data2;
        v54 = 2112;
        v55 = uUIDString3;
        _os_log_impl(&dword_274327000, v41, OS_LOG_TYPE_DEFAULT, "Continuity send data to characteristic: (%lu) %@ to peer: %@", buf, 0x20u);
      }

      v46.receiver = self;
      v46.super_class = WPContinuity;
      [(WPClient *)&v46 sendDataToCharacteristic:delegate5 inService:@"D0611E78-BBB4-4591-A5F8-487910AE4366" forPeer:v8];
      goto LABEL_32;
    }

    60000 = [MEMORY[0x277CCACA8] stringWithFormat:@"Continuity data length is invalid %ld (max: %lu)", v13, 60000];
    if (WPLogInitOnce != -1)
    {
      [WPContinuity sendData:toPeer:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPTest startAdvertisingOfType:data:priority:mode:options:];
    }

    v15 = MEMORY[0x277CCA9B8];
    v48 = *MEMORY[0x277CCA450];
    v49 = 60000;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    delegate5 = [v15 errorWithDomain:@"WPErrorDomain" code:8 userInfo:v16];

    delegate3 = [(WPContinuity *)self delegate];
    LOBYTE(v16) = objc_opt_respondsToSelector();

    if ((v16 & 1) == 0)
    {
LABEL_32:

      goto LABEL_33;
    }

    delegate2 = [(WPContinuity *)self delegate];
    v20 = delegate2;
    selfCopy2 = self;
    v22 = dataCopy;
LABEL_20:
    [delegate2 continuity:selfCopy2 didSendData:v22 toPeer:v8 error:delegate5];

    goto LABEL_32;
  }

  if (WPLogInitOnce != -1)
  {
    [WPContinuity sendData:toPeer:];
  }

  v28 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [(WPContinuity *)v28 sendData:v29 toPeer:v30, v31, v32, v33, v34, v35];
  }

  v36 = MEMORY[0x277CCA9B8];
  v56 = *MEMORY[0x277CCA450];
  v57 = @"Continuity no peer was provided";
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
  60000 = [v36 errorWithDomain:@"WPErrorDomain" code:8 userInfo:v37];

  delegate4 = [(WPContinuity *)self delegate];
  LOBYTE(v37) = objc_opt_respondsToSelector();

  if (v37)
  {
    delegate5 = [(WPContinuity *)self delegate];
    [delegate5 continuity:self didSendData:dataCopy toPeer:0 error:60000];
    goto LABEL_32;
  }

LABEL_33:
}

- (void)sentData:(id)data forCharacteristic:(id)characteristic inService:(id)service forPeripheral:(id)peripheral withError:(id)error
{
  v36 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  characteristicCopy = characteristic;
  serviceCopy = service;
  peripheralCopy = peripheral;
  errorCopy = error;
  if ([characteristicCopy isEqualToString:@"8667556C-9A37-4C91-84ED-54EE27D90049"] && objc_msgSend(serviceCopy, "isEqualToString:", @"D0611E78-BBB4-4591-A5F8-487910AE4366"))
  {
    if (WPLogInitOnce != -1)
    {
      [WPContinuity sentData:forCharacteristic:inService:forPeripheral:withError:];
    }

    v17 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      localizedDescription = [errorCopy localizedDescription];
      v28 = 138412290;
      v29 = localizedDescription;
      _os_log_impl(&dword_274327000, v18, OS_LOG_TYPE_DEFAULT, "Continuity didSendData over GATT with error %@", &v28, 0xCu);
    }

    delegate = [(WPContinuity *)self delegate];
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      if ([dataCopy length] >= 2)
      {
        v22 = [dataCopy subdataWithRange:{2, objc_msgSend(dataCopy, "length") - 2}];

        dataCopy = v22;
      }

      delegate2 = [(WPContinuity *)self delegate];
      [delegate2 continuity:self didSendData:dataCopy toPeer:peripheralCopy error:errorCopy];
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPContinuity sentData:forCharacteristic:inService:forPeripheral:withError:];
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
      _os_log_error_impl(&dword_274327000, v25, OS_LOG_TYPE_ERROR, "Continuity sent data to a characteristic: %@ or service: %@ to peer: %@ with error: %@ that isn't of type Continuity", &v28, 0x2Au);
    }
  }
}

- (void)sentData:(id)data toEndpoint:(id)endpoint forPeripheral:(id)peripheral withError:(id)error
{
  v26 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  endpointCopy = endpoint;
  peripheralCopy = peripheral;
  errorCopy = error;
  if (!endpointCopy || [endpointCopy isEqualToString:@"wp.continuity"])
  {
    if (WPLogInitOnce != -1)
    {
      [WPContinuity sentData:toEndpoint:forPeripheral:withError:];
    }

    v14 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = [dataCopy length];
      localizedDescription = [errorCopy localizedDescription];
      v22 = 134218242;
      v23 = v16;
      v24 = 2112;
      v25 = localizedDescription;
      _os_log_impl(&dword_274327000, v15, OS_LOG_TYPE_DEFAULT, "WPPM: Continuity didSendData %lu over LE pipe with error %@", &v22, 0x16u);
    }

    delegate = [(WPContinuity *)self delegate];
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      if ([dataCopy length] >= 2)
      {
        v20 = [dataCopy subdataWithRange:{2, objc_msgSend(dataCopy, "length") - 2}];

        dataCopy = v20;
      }

      delegate2 = [(WPContinuity *)self delegate];
      [delegate2 continuity:self didSendData:dataCopy toPeer:peripheralCopy error:errorCopy];
    }
  }
}

- (void)receivedData:(id)data forCharacteristic:(id)characteristic inService:(id)service forPeripheral:(id)peripheral
{
  v38 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  characteristicCopy = characteristic;
  serviceCopy = service;
  peripheralCopy = peripheral;
  if (!(characteristicCopy | serviceCopy) || [characteristicCopy isEqualToString:@"8667556C-9A37-4C91-84ED-54EE27D90049"] && objc_msgSend(serviceCopy, "isEqualToString:", @"D0611E78-BBB4-4591-A5F8-487910AE4366"))
  {
    transfers = [(WPContinuity *)self transfers];
    v15 = [transfers objectForKeyedSubscript:peripheralCopy];

    if (!v15)
    {
      v16 = [[WPDataTransfer alloc] initDataTransferForPeer:peripheralCopy];
      transfers2 = [(WPContinuity *)self transfers];
      [transfers2 setObject:v16 forKeyedSubscript:peripheralCopy];

      transfers3 = [(WPContinuity *)self transfers];
      v15 = [transfers3 objectForKeyedSubscript:peripheralCopy];
    }

    if (WPLogInitOnce != -1)
    {
      [WPContinuity receivedData:forCharacteristic:inService:forPeripheral:];
    }

    v19 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      v21 = [dataCopy length];
      uUIDString = [peripheralCopy UUIDString];
      v32 = 134218498;
      v33 = v21;
      v34 = 2112;
      v35 = dataCopy;
      v36 = 2112;
      v37 = uUIDString;
      _os_log_impl(&dword_274327000, v20, OS_LOG_TYPE_DEFAULT, "Continuity received data (%ld) %@ from peer %@", &v32, 0x20u);
    }

    if ([v15 addNewData:dataCopy])
    {
      kdebug_trace();
      if (WPLogInitOnce != -1)
      {
        [WPContinuity receivedData:forCharacteristic:inService:forPeripheral:];
      }

      v23 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v23;
        currentReceivedData = [v15 currentReceivedData];
        v26 = [currentReceivedData length];
        v32 = 134217984;
        v33 = v26;
        _os_log_impl(&dword_274327000, v24, OS_LOG_TYPE_DEFAULT, "WPPM: Continuity didReceiveData data of length %ld", &v32, 0xCu);
      }

      delegate = [(WPContinuity *)self delegate];
      v28 = objc_opt_respondsToSelector();

      if (v28)
      {
        delegate2 = [(WPContinuity *)self delegate];
        currentReceivedData2 = [v15 currentReceivedData];
        v31 = [currentReceivedData2 copy];
        [delegate2 continuity:self didReceiveData:v31 fromPeer:peripheralCopy];
      }

      [v15 resetTransfer];
    }
  }
}

- (void)receivedData:(id)data fromEndpoint:(id)endpoint forPeripheral:(id)peripheral
{
  v14 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  peripheralCopy = peripheral;
  if ([endpoint isEqualToString:@"wp.continuity"])
  {
    if (WPLogInitOnce != -1)
    {
      [WPContinuity receivedData:fromEndpoint:forPeripheral:];
    }

    v10 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = 134217984;
      v13 = [dataCopy length];
      _os_log_impl(&dword_274327000, v11, OS_LOG_TYPE_DEFAULT, "Continuity received data over LE pipe %ld", &v12, 0xCu);
    }

    [(WPContinuity *)self receivedData:dataCopy forCharacteristic:0 inService:0 forPeripheral:peripheralCopy];
  }
}

- (void)central:(id)central subscribed:(BOOL)subscribed toCharacteristic:(id)characteristic inService:(id)service
{
  subscribedCopy = subscribed;
  v23 = *MEMORY[0x277D85DE8];
  centralCopy = central;
  characteristicCopy = characteristic;
  serviceCopy = service;
  if ([characteristicCopy isEqualToString:@"8667556C-9A37-4C91-84ED-54EE27D90049"] && (objc_msgSend(serviceCopy, "isEqualToString:", @"D0611E78-BBB4-4591-A5F8-487910AE4366") & 1) != 0)
  {
    if (subscribedCopy)
    {
      delegate = [(WPContinuity *)self delegate];
      v14 = objc_opt_respondsToSelector();

      if (v14)
      {
        delegate2 = [(WPContinuity *)self delegate];
        [delegate2 continuity:self didConnectToPeer:centralCopy error:0];

        if (WPLogInitOnce != -1)
        {
          [WPContinuity central:subscribed:toCharacteristic:inService:];
        }

        v16 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 138543362;
          v22 = centralCopy;
          v17 = "Continuity central connected to our device %{public}@, send Peripheral didConnect";
          v18 = v16;
          v19 = 12;
LABEL_18:
          _os_log_impl(&dword_274327000, v18, OS_LOG_TYPE_DEFAULT, v17, &v21, v19);
        }
      }
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        [WPContinuity central:subscribed:toCharacteristic:inService:];
      }

      v20 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        v17 = "Saw unsubscribe...disconnection pending";
        v18 = v20;
        v19 = 2;
        goto LABEL_18;
      }
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPContinuity central:subscribed:toCharacteristic:inService:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPContinuity central:subscribed:toCharacteristic:inService:];
    }
  }
}

- (void)bandwidthStateUpdated:(id)updated
{
  v4 = [updated integerValue] < 2;
  btBandwidthState = [(WPContinuity *)self btBandwidthState];
  [(WPContinuity *)self setBtBandwidthState:v4];
  if ([(WPContinuity *)self btBandwidthState]!= btBandwidthState)
  {
    delegate = [(WPContinuity *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate2 = [(WPContinuity *)self delegate];
      [delegate2 continuityDidChangeBluetoothBandwidthState:self];
    }
  }
}

- (void)stateDidChange:(int64_t)change
{
  v21 = *MEMORY[0x277D85DE8];
  state = [(WPClient *)self state];
  v14.receiver = self;
  v14.super_class = WPContinuity;
  [(WPClient *)&v14 stateDidChange:change];
  if (WPLogInitOnce != -1)
  {
    [WPContinuity stateDidChange:];
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
    _os_log_impl(&dword_274327000, v7, OS_LOG_TYPE_DEFAULT, "Continuity stateDidChange: %ld, old %ld, pipe state %ld", buf, 0x20u);
  }

  if ([(WPClient *)self state]!= state)
  {
    if ([(WPClient *)self state]== 3)
    {
      v13.receiver = self;
      v13.super_class = WPContinuity;
      [(WPClient *)&v13 registerEndpoint:@"wp.continuity" requireAck:1 requireEncryption:1];
    }

    else
    {
      v12.receiver = self;
      v12.super_class = WPContinuity;
      [(WPClient *)&v12 unregisterEndpoint:@"wp.continuity"];
    }

    delegate = [(WPContinuity *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      delegate2 = [(WPContinuity *)self delegate];
      [delegate2 continuityDidUpdateState:self];
    }
  }
}

- (void)peerTrackingFull
{
  v8.receiver = self;
  v8.super_class = WPContinuity;
  [(WPClient *)&v8 peerTrackingFull];
  delegate = [(WPContinuity *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(WPContinuity *)self delegate];
    [delegate2 continuity:self peerTrackingAvailable:0];

    if (WPLogInitOnce != -1)
    {
      [WPContinuity peerTrackingFull];
    }

    v6 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_274327000, v6, OS_LOG_TYPE_INFO, "Continuity peer tracking is full", v7, 2u);
    }
  }
}

- (void)peerTrackingAvailable
{
  v6.receiver = self;
  v6.super_class = WPContinuity;
  [(WPClient *)&v6 peerTrackingAvailable];
  delegate = [(WPContinuity *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(WPContinuity *)self delegate];
    [delegate2 continuity:self peerTrackingAvailable:1];
  }
}

- (WPContinuityDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithDelegate:queue:.cold.3()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)advertisingFailedToStart:(void *)a3 ofType:.cold.2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 localizedDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5(&dword_274327000, v6, v7, "Continuity advertising failed to start of type: %d with error: %@", v8, v9, v10, v11);
}

- (void)advertisingStartedOfType:(unsigned __int8)a1 .cold.2(unsigned __int8 a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&dword_274327000, a2, OS_LOG_TYPE_DEBUG, "Continuity advertising started of type: %d", v2, 8u);
}

- (void)scanningFailedToStart:(void *)a3 ofType:.cold.2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 localizedDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5(&dword_274327000, v6, v7, "Continuity failed to start scanning of type: %d with error: %@", v8, v9, v10, v11);
}

- (void)deviceDiscovered:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)connectToPeer:(uint64_t)a3 .cold.5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"Continuity no peer was provided!";
  OUTLINED_FUNCTION_0_0(&dword_274327000, a1, a3, "%@ - send didConnect", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)discoveredCharacteristicsAndServices:forPeripheral:.cold.3()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)discoveredCharacteristicsAndServices:forPeripheral:.cold.6()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updatedNotificationState:(uint64_t)a3 forCharacteristic:(uint64_t)a4 inService:(uint64_t)a5 withPeripheral:(uint64_t)a6 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"Continuity notification is disabled";
  OUTLINED_FUNCTION_0_0(&dword_274327000, a1, a3, "Continuity send Central didConnect with error: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)disconnectFromPeer:(uint64_t)a3 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"Continuity peer is null";
  OUTLINED_FUNCTION_0_0(&dword_274327000, a1, a3, "%@ - sending didDisconnect", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)sendData:(uint64_t)a3 toPeer:(uint64_t)a4 .cold.6(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"Continuity no peer was provided";
  OUTLINED_FUNCTION_0_0(&dword_274327000, a1, a3, "%@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)central:subscribed:toCharacteristic:inService:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_274327000, v1, OS_LOG_TYPE_ERROR, "Continuity received subscription notification of characteristic: %@, service: %@ is not of type Continuity", v2, 0x16u);
}

@end