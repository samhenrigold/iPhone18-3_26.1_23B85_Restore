@interface SDProximityPairingBufferedScanner
- (BOOL)_updateCounterpart:(id)counterpart;
- (BOOL)pairingUpdatePairedInfo:(id)info fields:(id)fields bleDevice:(id)device;
- (BOOL)pairingUpdatePairedInfoMB:(id)b fields:(id)fields bleDevice:(id)device;
- (BOOL)sampleIsTooOld:(id)old;
- (SDProximityPairingBufferedScanner)initWithQueue:(id)queue;
- (id)modelWithProductID:(unsigned __int16)d;
- (id)pairingParsePayload:(id)payload identifier:(id)identifier bleDevice:(id)device peerInfo:(id)info;
- (int)_btSessionEnsureStarted;
- (unsigned)statusToHeadsetStatus:(unsigned __int8)status forProductID:(unsigned __int16)d;
- (void)_btSessionEnsureStopped;
- (void)_ensureCbDiscoveryStopped;
- (void)_ensureStarted;
- (void)_foundDevice:(id)device advertisementData:(id)data rssi:(int64_t)rssi fields:(id)fields;
- (void)_invalidate;
- (void)configureCBDiscoveryScreenOffPairing;
- (void)dealloc;
- (void)ensureStarted;
- (void)foundBufferedPairingDevices:(id)devices;
- (void)invalidate;
- (void)pairingParseAccessoryStatusPayloadPtr:(const char *)ptr end:(const char *)end fields:(id)fields;
- (void)parseStatus3:(unsigned __int8)status3 productID:(unsigned int)d caseLEDColor:(unsigned __int8 *)color caseLEDStatus:(char *)status;
- (void)proxPairingLoggerAndInvalidationHandler:(id)handler withLogLevel:(unsigned __int8)level andError:(id)error;
- (void)startCBDiscoveryScreenOffPairing;
- (void)turnOffScreenOffScanningIfNoAirPodsOntheAccount;
@end

@implementation SDProximityPairingBufferedScanner

- (void)ensureStarted
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017F38;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_ensureStarted
{
  if (!self->_cbDiscoveryScreenOffPairing)
  {
    v3 = sub_10002F024(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CBDiscoveryScreenOff starting", v4, 2u);
    }

    [(SDProximityPairingBufferedScanner *)self configureCBDiscoveryScreenOffPairing];
    [(SDProximityPairingBufferedScanner *)self startCBDiscoveryScreenOffPairing];
  }

  if ([(SDProximityPairingBufferedScanner *)self _btSessionUsable])
  {
    [(SDProximityPairingBufferedScanner *)self _btSessionEnsureStarted];
  }
}

- (int)_btSessionEnsureStarted
{
  if (self->_btStarted)
  {
    return 0;
  }

  v3 = sub_10002F024(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BTSession attach\n", v11, 2u);
  }

  *v11 = sub_1001FE53C;
  selfCopy = self;
  v5 = off_100972B68("SDProximityPairingBufferedScanner", v11, selfCopy, selfCopy->_dispatchQueue);
  if (v5)
  {
    v6 = v5;
    CFRelease(selfCopy);
    v8 = v6 + 310000;
    if (v6 != -310000)
    {
      v9 = sub_10002F024(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v13 = v6 + 310000;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "### BTSession attach failed: %d\n", buf, 8u);
      }
    }
  }

  else
  {
    v8 = 0;
    self->_btStarted = 1;
  }

  return v8;
}

- (void)configureCBDiscoveryScreenOffPairing
{
  cbDiscoveryScreenOffPairing = self->_cbDiscoveryScreenOffPairing;
  if (!cbDiscoveryScreenOffPairing)
  {
    v4 = objc_alloc_init(off_100972B60(0, a2));
    v5 = self->_cbDiscoveryScreenOffPairing;
    self->_cbDiscoveryScreenOffPairing = v4;

    cbDiscoveryScreenOffPairing = self->_cbDiscoveryScreenOffPairing;
  }

  [(CBDiscovery *)cbDiscoveryScreenOffPairing setDispatchQueue:self->_dispatchQueue];
  objc_initWeak(&location, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001FE8AC;
  v12[3] = &unk_1008D35E0;
  objc_copyWeak(&v13, &location);
  [(CBDiscovery *)self->_cbDiscoveryScreenOffPairing setDevicesBufferedHandler:v12];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001FE908;
  v10[3] = &unk_1008CDD98;
  objc_copyWeak(&v11, &location);
  [(CBDiscovery *)self->_cbDiscoveryScreenOffPairing setInvalidationHandler:v10];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001FE958;
  v8[3] = &unk_1008CDD98;
  objc_copyWeak(&v9, &location);
  [(CBDiscovery *)self->_cbDiscoveryScreenOffPairing setInterruptionHandler:v8];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001FE9A8;
  v6[3] = &unk_1008D2B80;
  objc_copyWeak(&v7, &location);
  [(CBDiscovery *)self->_cbDiscoveryScreenOffPairing setErrorHandler:v6];
  [(CBDiscovery *)self->_cbDiscoveryScreenOffPairing setDiscoveryFlags:0];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)startCBDiscoveryScreenOffPairing
{
  if (![(CBDiscovery *)self->_cbDiscoveryScreenOffPairing discoveryFlags])
  {
    [(CBDiscovery *)self->_cbDiscoveryScreenOffPairing setDiscoveryFlags:0x2000000];
    [(CBDiscovery *)self->_cbDiscoveryScreenOffPairing setDiscoveryFlags:[(CBDiscovery *)self->_cbDiscoveryScreenOffPairing discoveryFlags]| 0x800000];
  }

  [(CBDiscovery *)self->_cbDiscoveryScreenOffPairing removeAllDiscoveryTypes];
  [(CBDiscovery *)self->_cbDiscoveryScreenOffPairing addDiscoveryType:29];
  [(CBDiscovery *)self->_cbDiscoveryScreenOffPairing setBleScanRate:20];
  [(CBDiscovery *)self->_cbDiscoveryScreenOffPairing setBleScanRateScreenOff:20];
  v3 = sub_10002F024([(CBDiscovery *)self->_cbDiscoveryScreenOffPairing setLabel:@"Prox Pairing Screen Off Buffered Samples"]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Going to Activate scanner", buf, 2u);
  }

  objc_initWeak(buf, self);
  cbDiscoveryScreenOffPairing = self->_cbDiscoveryScreenOffPairing;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002F91C;
  v5[3] = &unk_1008D2B80;
  objc_copyWeak(&v6, buf);
  [(CBDiscovery *)cbDiscoveryScreenOffPairing activateWithCompletion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

- (SDProximityPairingBufferedScanner)initWithQueue:(id)queue
{
  queueCopy = queue;
  if (!queueCopy)
  {
    sub_100202AF4(a2, self);
  }

  v10.receiver = self;
  v10.super_class = SDProximityPairingBufferedScanner;
  v7 = [(SDProximityPairingBufferedScanner *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_dispatchQueue, queue);
  }

  return v8;
}

- (void)dealloc
{
  if (self->_btSession)
  {
    sub_100202B70();
    [(SDProximityPairingBufferedScanner *)v8 invalidate];
  }

  else
  {
    [(CBDiscovery *)self->_cbDiscoveryScreenOffPairing invalidate];
    cbDiscoveryScreenOffPairing = self->_cbDiscoveryScreenOffPairing;
    self->_cbDiscoveryScreenOffPairing = 0;

    devices = self->_devices;
    self->_devices = 0;

    bufferedDeviceFoundHandler = self->_bufferedDeviceFoundHandler;
    self->_bufferedDeviceFoundHandler = 0;

    dispatchQueue = self->_dispatchQueue;
    if (dispatchQueue)
    {
      self->_dispatchQueue = 0;
    }

    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    v10.receiver = self;
    v10.super_class = SDProximityPairingBufferedScanner;
    [(SDProximityPairingBufferedScanner *)&v10 dealloc];
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001FE188;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    v4 = sub_10002F024(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Invalidating\n", buf, 2u);
    }

    self->_invalidateCalled = 1;
    devices = self->_devices;
    self->_devices = 0;

    [(SDProximityPairingBufferedScanner *)self _btSessionEnsureStopped];
    v6 = sub_10002F024([(SDProximityPairingBufferedScanner *)self _ensureCbDiscoveryStopped]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Invalidated\n", v9, 2u);
    }

    bufferedDeviceFoundHandler = self->_bufferedDeviceFoundHandler;
    self->_bufferedDeviceFoundHandler = 0;

    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;
  }
}

- (void)_ensureCbDiscoveryStopped
{
  cbDiscoveryScreenOffPairing = self->_cbDiscoveryScreenOffPairing;
  if (cbDiscoveryScreenOffPairing)
  {
    [(CBDiscovery *)cbDiscoveryScreenOffPairing invalidate];
    v4 = self->_cbDiscoveryScreenOffPairing;
    self->_cbDiscoveryScreenOffPairing = 0;
  }
}

- (void)turnOffScreenOffScanningIfNoAirPodsOntheAccount
{
  selfCopy = self;
  [(NSMutableDictionary *)self->_devices removeAllObjects];
  devices = selfCopy->_devices;
  selfCopy->_devices = 0;

  cbDiscoveryScreenOffPairing = selfCopy->_cbDiscoveryScreenOffPairing;
  if (!cbDiscoveryScreenOffPairing)
  {
    return;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  discoveredDevices = [(CBDiscovery *)cbDiscoveryScreenOffPairing discoveredDevices];
  v6 = [discoveredDevices countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v19 = selfCopy;
    v20 = 0;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(discoveredDevices);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        productID = [v10 productID];
        if (productID - 8194 <= 0x26 && ((1 << (productID - 2)) & 0x6472863101) != 0)
        {
          productID2 = [v10 productID];
          if (productID2 != 8202 && productID2 != 8223)
          {
            v15 = sub_10002F024(productID2);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "CBDiscoveryScreenOff found AirPods on account", buf, 2u);
            }

            v20 = 1;
          }
        }
      }

      v7 = [discoveredDevices countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);

    selfCopy = v19;
    if (v20)
    {
      v17 = sub_10002F024(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "CBDiscoveryScreenOff screen off scan enabled", buf, 2u);
      }

      return;
    }
  }

  else
  {
  }

  v18 = sub_10002F024(v16);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "CBDiscoveryScreenOff being invalidated because device has no paired AirPods", buf, 2u);
  }

  [(SDProximityPairingBufferedScanner *)selfCopy _ensureCbDiscoveryStopped];
}

- (void)_btSessionEnsureStopped
{
  p_btSession = &self->_btSession;
  if (self->_btSession)
  {
    v4 = sub_10002F024(self);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BTSession detach\n", v5, 2u);
    }

    off_100972B70(p_btSession);
    *p_btSession = 0;
  }

  self->_btStarted = 0;
}

- (void)proxPairingLoggerAndInvalidationHandler:(id)handler withLogLevel:(unsigned __int8)level andError:(id)error
{
  handlerCopy = handler;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v11 = sub_10002F024(v10);
  if (os_log_type_enabled(v11, level))
  {
    v14 = 138412546;
    v15 = handlerCopy;
    v16 = 2112;
    v17 = errorCopy;
    _os_log_impl(&_mh_execute_header, v11, level, "CBDiscoveryScreenOff handler called: %@ with error: %@", &v14, 0x16u);
  }

  v12 = [handlerCopy isEqualToString:@"ActivateWithCompletion Handler"];
  if ((v12 & 1) == 0)
  {
    v13 = sub_10002F024(v12);
    if (os_log_type_enabled(v13, level))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v13, level, "CBDiscoveryScreenOff Invalidating failed CBDiscovery object", &v14, 2u);
    }

    [(SDProximityPairingBufferedScanner *)self _ensureCbDiscoveryStopped];
  }
}

- (BOOL)sampleIsTooOld:(id)old
{
  oldCopy = old;
  v4 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW) / 1000000000.0;
  bleAdvertisementTimestampMachContinuous = [oldCopy bleAdvertisementTimestampMachContinuous];

  return bleAdvertisementTimestampMachContinuous / 1000000.0 < v4 + -5.0;
}

- (void)foundBufferedPairingDevices:(id)devices
{
  devicesCopy = devices;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v5 = [devicesCopy countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v40;
    v36 = WPPairingKeyDeviceAddress;
    v35 = WPPairingKeyAdvertisingChannel;
    *&v6 = 138412290;
    v33 = v6;
    v9 = &NSURLAuthenticationMethodServerTrust_ptr;
    v34 = devicesCopy;
    v37 = *v40;
    do
    {
      v10 = 0;
      v38 = v7;
      do
      {
        if (*v40 != v8)
        {
          objc_enumerationMutation(devicesCopy);
        }

        v11 = *(*(&v39 + 1) + 8 * v10);
        if (([v11 discoveryFlags] & 0x1C080) != 0)
        {
          if (-[SDProximityPairingBufferedScanner isAirPods:](self, "isAirPods:", [v11 productID]))
          {
            v12 = [(SDProximityPairingBufferedScanner *)self sampleIsTooOld:v11];
            if ((v12 & 1) == 0)
            {
              v13 = sub_10002F024(v12);
              if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
              {
                *buf = v33;
                v44 = v11;
                _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "CBDiscoveryScreenOff handling buffered device: %@", buf, 0xCu);
              }

              v15 = sub_10002F024(v14);
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                identifier = [v11 identifier];
                bleAppleManufacturerData = [v11 bleAppleManufacturerData];
                *buf = 138412546;
                v44 = identifier;
                v45 = 2112;
                v46 = bleAppleManufacturerData;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "CBDiscoveryScreenOff handling buffered device: %@ with Apple payload: <%@>", buf, 0x16u);
              }

              v18 = [NSUUID alloc];
              identifier2 = [v11 identifier];
              v20 = [v18 initWithUUIDString:identifier2];

              v21 = objc_alloc_init(NSMutableDictionary);
              btAddressData = [v11 btAddressData];
              [v21 setObject:btAddressData forKeyedSubscript:v36];

              v23 = [v9[258] numberWithInt:{objc_msgSend(v11, "bleChannel")}];
              [v21 setObject:v23 forKeyedSubscript:v35];

              v24 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:v20];
              bleAppleManufacturerData2 = [v11 bleAppleManufacturerData];
              v26 = [(SDProximityPairingBufferedScanner *)self pairingParsePayload:bleAppleManufacturerData2 identifier:v20 bleDevice:v24 peerInfo:v21];

              if (v26)
              {
                v28 = [v9[258] numberWithDouble:{objc_msgSend(v11, "bleAdvertisementTimestampMachContinuous") / 1000000.0}];
                [v26 setObject:v28 forKeyedSubscript:@"sampleTimestamp"];

                v29 = [v9[258] numberWithInt:{objc_msgSend(v11, "bleChannel")}];
                if (v29)
                {
                  [v26 setObject:v29 forKeyedSubscript:@"ch"];
                }

                bleRSSI = [v11 bleRSSI];
                bleAppleManufacturerData3 = [v11 bleAppleManufacturerData];
                [(SDProximityPairingBufferedScanner *)self _foundDevice:v20 advertisementData:bleAppleManufacturerData3 rssi:bleRSSI fields:v26];

                devicesCopy = v34;
              }

              else
              {
                v29 = sub_10002F024(v27);
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
                {
                  bleAppleManufacturerData4 = [v11 bleAppleManufacturerData];
                  *buf = 138412546;
                  v44 = bleAppleManufacturerData4;
                  v45 = 2112;
                  v46 = v20;
                  _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "pairingParsePayload failed to parse Pairing payload: <%@> for device: %@", buf, 0x16u);
                }
              }

              v8 = v37;
              v7 = v38;
              v9 = &NSURLAuthenticationMethodServerTrust_ptr;
            }
          }
        }

        v10 = v10 + 1;
      }

      while (v7 != v10);
      v7 = [devicesCopy countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v7);
  }
}

- (unsigned)statusToHeadsetStatus:(unsigned __int8)status forProductID:(unsigned __int16)d
{
  statusCopy = status;
  v5 = [[SFHeadphoneProduct alloc] initWithProductID:d];
  v6 = +[SFHeadphoneProduct airPodsMax];

  if (v5 == v6)
  {
    v12 = dword_1007F5300[(statusCopy >> 5) & 3];
  }

  else
  {
    v7 = statusCopy & 1;
    v8 = (statusCopy >> 1) & 3;
    v9 = v7 | 2;
    if (v8 != 2)
    {
      v9 = statusCopy & 1 | 8;
    }

    if (v8)
    {
      v7 |= 4u;
    }

    if (((statusCopy >> 1) & 3) > 1)
    {
      v7 = v9;
    }

    v10 = (statusCopy >> 3) & 3;
    v11 = v7 | 0x10;
    if (v10 != 2)
    {
      v11 = v7 | 0x40;
    }

    if (v10)
    {
      v7 |= 0x20u;
    }

    if (((statusCopy >> 3) & 3) > 1)
    {
      v7 = v11;
    }

    v12 = (4 * statusCopy) & 0x180 ^ 0x100 | v7;
  }

  if ((statusCopy & 0x80u) == 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = v12 | 0x200;
  }

  return v13;
}

- (id)modelWithProductID:(unsigned __int16)d
{
  dCopy = d;
  v4 = [[SFHeadphoneProduct alloc] initWithProductID:d];
  v5 = v4;
  if (v4)
  {
    bluetoothModel = [v4 bluetoothModel];
LABEL_3:
    v7 = bluetoothModel;
    goto LABEL_4;
  }

  if (dCopy <= 788)
  {
    switch(dCopy)
    {
      case 0x266:
        v7 = @"ATVRemote1,1";
        break;
      case 0x26D:
        v7 = @"ATVRemote1,2";
        break;
      case 0x314:
        v7 = @"ATVRemote1,3";
        break;
      default:
LABEL_19:
        bluetoothModel = [NSString stringWithFormat:@"Device1, %u", dCopy];
        goto LABEL_3;
    }
  }

  else
  {
    v7 = @"AirPods1,1";
    switch(dCopy)
    {
      case 8194:
        break;
      case 8195:
        v7 = @"PowerBeats3,1";
        break;
      case 8196:
      case 8199:
      case 8200:
      case 8209:
      case 8210:
      case 8211:
      case 8212:
      case 8213:
      case 8214:
      case 8216:
      case 8217:
      case 8219:
      case 8220:
      case 8221:
      case 8222:
      case 8223:
      case 8224:
      case 8225:
      case 8226:
      case 8227:
      case 8228:
        goto LABEL_19;
      case 8197:
        v7 = @"BeatsX1,1";
        break;
      case 8198:
        v7 = @"BeatsSolo3,1";
        break;
      case 8201:
        v7 = @"BeatsStudio3,2";
        break;
      case 8202:
        v7 = @"Device1,8202";
        break;
      case 8203:
        v7 = @"PowerbeatsPro1,1";
        break;
      case 8204:
        v7 = @"BeatsSoloPro1,1";
        break;
      case 8205:
        v7 = @"Powerbeats4,1";
        break;
      case 8206:
        v7 = @"AirPodsPro1,1";
        break;
      case 8207:
        v7 = @"AirPods1,3";
        break;
      case 8208:
        v7 = @"Device1,8208";
        break;
      case 8215:
        v7 = @"BeatsStudioPro1,1";
        break;
      case 8218:
        v7 = @"Device1,8218";
        break;
      case 8229:
        v7 = @"Device1,8229";
        break;
      default:
        if (dCopy == 789)
        {
          v7 = @"ATVRemote1,4";
        }

        else
        {
          if (dCopy != 21760)
          {
            goto LABEL_19;
          }

          v7 = @"Device1,21760";
        }

        break;
    }
  }

LABEL_4:

  return v7;
}

- (void)parseStatus3:(unsigned __int8)status3 productID:(unsigned int)d caseLEDColor:(unsigned __int8 *)color caseLEDStatus:(char *)status
{
  status3Copy = status3;
  v13 = [[SFHeadphoneProduct alloc] initWithProductID:*&d];
  if ([v13 isBeatsProductWithCase])
  {
    v9 = (status3Copy >> 4) & 3;
    if (v9 == 2)
    {
      LOBYTE(v9) = 1;
    }

    else
    {
      LOBYTE(v9) = 2 * (v9 != 1);
    }

    if (status3Copy >= 0x40)
    {
      LOBYTE(v10) = 4 * ((status3Copy & 0xC0) == 64);
    }

    else
    {
      LOBYTE(v10) = 3;
    }

    v11 = v13;
  }

  else
  {
    v12 = +[SFHeadphoneProduct airPodsMax];

    v10 = (status3Copy >> 5) & 3;
    v11 = v13;
    v9 = status3Copy >> 7;
    if (v13 == v12)
    {
      LOBYTE(v9) = (status3Copy & 0x10) != 0;
    }
  }

  *color = v10;
  *status = v9;
}

- (BOOL)pairingUpdatePairedInfoMB:(id)b fields:(id)fields bleDevice:(id)device
{
  bCopy = b;
  fieldsCopy = fields;
  deviceCopy = device;
  paired = [deviceCopy paired];
  v12 = paired;
  if (!deviceCopy || (Current = CFAbsoluteTimeGetCurrent(), paired = [deviceCopy pairCheckTime], Current - v14 > 1.0))
  {
    if (self->_btSession)
    {
      v53[0] = 0;
      v53[1] = 0;
      v37 = 0;
      [bCopy getUUIDBytes:v53];
      v15 = off_100972B78(self->_btSession, v53, &v37);
      v16 = v15 == 0;
      if (!v15)
      {
        memset(v52, 0, sizeof(v52));
        v51 = 0u;
        v50 = 0u;
        v49 = 0u;
        v48 = 0u;
        v47 = 0u;
        v46 = 0u;
        v45 = 0u;
        v44 = 0u;
        v43 = 0u;
        v42 = 0u;
        v41 = 0u;
        v40 = 0u;
        memset(v38, 0, sizeof(v38));
        v35 = 0;
        v34 = 0;
        memset(buf, 0, sizeof(buf));
        if (!off_100972B80(v37, buf, 248) && buf[0])
        {
          v17 = [NSString stringWithUTF8String:buf];
          [fieldsCopy setObject:v17 forKeyedSubscript:@"name"];
        }

        v36 = 0;
        if (off_100972B88(v37, &v36))
        {
          v12 = v12;
        }

        else
        {
          v12 = v36 != 0;
        }

        v18 = [NSNumber numberWithBool:v12];
        [fieldsCopy setObject:v18 forKeyedSubscript:@"paired"];

        v33 = 0;
        off_100972B90(v37, &v33);
        [deviceCopy setTempPaired:v33 != 0];
        v32 = 0;
        if (off_100972B98(v37, &v32))
        {
          v32 = 0;
        }

        else if (v32)
        {
          v20 = [NSNumber numberWithUnsignedInt:?];
          [fieldsCopy setObject:v20 forKeyedSubscript:@"CnSv"];
        }

        bluetoothAddress = [deviceCopy bluetoothAddress];
        if (bluetoothAddress)
        {
          [fieldsCopy setObject:bluetoothAddress forKeyedSubscript:@"publicAddress"];
        }

        else
        {
          LOBYTE(v38[0]) = 0;
          if (!off_100972BA0(v37, v38, 32) && LOBYTE(v38[0]) && !off_100972BA8(v38, &v34))
          {
            v31 = [NSData dataWithBytes:&v34 length:6];
            [fieldsCopy setObject:v31 forKeyedSubscript:@"publicAddress"];
          }
        }
      }

      v22 = sub_10002F024(v15);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v23 = [fieldsCopy objectForKeyedSubscript:@"name"];
        v24 = v23;
        v25 = "no";
        *&buf[4] = v53;
        *buf = 136315650;
        if (v12)
        {
          v25 = "yes";
        }

        *&buf[12] = 2112;
        *&buf[14] = v23;
        *&buf[22] = 2080;
        *&buf[24] = v25;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "Updated paired info for %s: Name '%@', Paired %s\n", buf, 0x20u);
      }

      if (deviceCopy)
      {
LABEL_29:
        [deviceCopy setPairCheckTime:CFAbsoluteTimeGetCurrent()];
      }
    }

    else
    {
      if (self->_btStarted)
      {
        v19 = sub_10002F024(paired);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = bCopy;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "### No BTSession to look up device %@\n", buf, 0xCu);
        }
      }

      v16 = 0;
      if (deviceCopy)
      {
        goto LABEL_29;
      }
    }

    if (v16)
    {
      goto LABEL_38;
    }
  }

  bluetoothAddress2 = [deviceCopy bluetoothAddress];
  if (bluetoothAddress2)
  {
    [fieldsCopy setObject:bluetoothAddress2 forKeyedSubscript:@"publicAddress"];
  }

  if ([deviceCopy connectedServices])
  {
    v27 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [deviceCopy connectedServices]);
    [fieldsCopy setObject:v27 forKeyedSubscript:@"CnSv"];
  }

  name = [deviceCopy name];

  if (name)
  {
    [fieldsCopy setObject:name forKeyedSubscript:@"name"];
  }

  v29 = [NSNumber numberWithBool:v12];
  [fieldsCopy setObject:v29 forKeyedSubscript:@"paired"];

LABEL_38:
  return v12;
}

- (BOOL)pairingUpdatePairedInfo:(id)info fields:(id)fields bleDevice:(id)device
{
  infoCopy = info;
  fieldsCopy = fields;
  deviceCopy = device;
  if ([(SDProximityPairingBufferedScanner *)self _btSessionUsable])
  {
    v11 = [(SDProximityPairingBufferedScanner *)self pairingUpdatePairedInfoMB:infoCopy fields:fieldsCopy bleDevice:deviceCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)pairingParseAccessoryStatusPayloadPtr:(const char *)ptr end:(const char *)end fields:(id)fields
{
  fieldsCopy = fields;
  if (end - ptr < 1 || ((v9 = *ptr, v8 = ptr + 1, +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", v9 & 7), v10 = objc_claimAutoreleasedReturnValue(), [fieldsCopy setObject:v10 forKeyedSubscript:@"locP"], v10, (v9 & 4) != 0) ? (v11 = &__kCFBooleanTrue) : (v11 = &__kCFBooleanFalse), objc_msgSend(fieldsCopy, "setObject:forKeyedSubscript:", v11, @"lc"), end - v8 < 1))
  {
    LOBYTE(v12) = 0;
    goto LABEL_11;
  }

  v12 = *v8;
  if (v12 != 254)
  {
    if (v12 == 255)
    {
      goto LABEL_20;
    }

    if ((v12 & 0x80) != 0)
    {
      v13 = 2;
LABEL_12:
      v14 = v12 & 0x7F;
      if (v14 >= 0x64)
      {
        v14 = 100;
      }

      v15 = v14 / 100.0;
      goto LABEL_15;
    }

LABEL_11:
    v13 = 1;
    goto LABEL_12;
  }

  v15 = 0.8;
  v13 = 2;
LABEL_15:
  v16 = objc_alloc_init(SFBatteryInfo);
  v17 = v16;
  v18 = 1.0;
  if (v15 <= 1.0)
  {
    v18 = v15;
  }

  if (v18 < 0.0001)
  {
    v18 = 0.0001;
  }

  [v16 setBatteryLevel:v18];
  [v17 setBatteryState:v13];
  [v17 setBatteryType:1];
  v20 = v17;
  v19 = [NSArray arrayWithObjects:&v20 count:1];
  [fieldsCopy setObject:v19 forKeyedSubscript:@"batteryInfo"];

LABEL_20:
}

- (void)_foundDevice:(id)device advertisementData:(id)data rssi:(int64_t)rssi fields:(id)fields
{
  deviceCopy = device;
  dataCopy = data;
  fieldsCopy = fields;
  if ((rssi - 20) >= 0x6B)
  {
    rssiCopy = rssi;
  }

  else
  {
    rssiCopy = rssi - 126;
  }

  if ((rssiCopy - 1) >= 0xFFFFFFFFFFFFFFA5)
  {
    v14 = rssiCopy;
  }

  else
  {
    v14 = 0;
  }

  v63 = 0;
  v15 = [gSFNearbyAgent idsDeviceForBluetoothDeviceID:deviceCopy conflictDetected:&v63];
  v16 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:deviceCopy];
  if (v16)
  {
    v17 = v16;
    if (v15)
    {
      uniqueIDOverride = [v15 uniqueIDOverride];
      if (uniqueIDOverride)
      {
        [fieldsCopy setObject:uniqueIDOverride forKeyedSubscript:@"idsID"];
      }

      v19 = v14;
      v20 = [NSNumber numberWithBool:v63];
      [fieldsCopy setObject:v20 forKeyedSubscript:@"idsIDCD"];
    }

    else
    {
      v19 = v14;
      uniqueIDOverride = 0;
    }

    v35 = objc_msgSend_advertisementFields(v17);
    CFStringGetTypeID();
    v36 = CFDictionaryGetTypedValue();

    if (uniqueIDOverride)
    {
      [v36 isEqual:uniqueIDOverride];
    }

    v60 = v36;
    v61 = uniqueIDOverride;
    CFStringGetTypeID();
    v37 = CFDictionaryGetTypedValue();
    modelIdentifier = v37;
    if (v15)
    {
      if (!v37)
      {
        modelIdentifier = [v15 modelIdentifier];
        if (modelIdentifier)
        {
          [fieldsCopy setObject:modelIdentifier forKeyedSubscript:@"model"];
        }
      }
    }

    v62 = deviceCopy;
    v39 = objc_msgSend_advertisementFields(v17);
    CFStringGetTypeID();
    v40 = CFDictionaryGetTypedValue();

    if (modelIdentifier)
    {
      [v40 isEqual:modelIdentifier];
    }

    [v17 setLastSeen:CFAbsoluteTimeGetCurrent()];
    advertisementData = [v17 advertisementData];
    v42 = [advertisementData isEqual:dataCopy];

    if ((v42 & 1) == 0)
    {
      [v17 setAdvertisementData:dataCopy];
    }

    Int64Ranged = CFDictionaryGetInt64Ranged();
    if ([v17 connectedServices] != Int64Ranged)
    {
      [v17 setConnectedServices:Int64Ranged];
    }

    v59 = modelIdentifier;
    if (v19)
    {
      [v17 updateRSSI:v19];
    }

    v44 = v15;
    bluetoothAddress = [v17 bluetoothAddress];
    if (!bluetoothAddress)
    {
      CFDataGetTypeID();
      bluetoothAddress = CFDictionaryGetTypedValue();
      if (bluetoothAddress)
      {
        [v17 setBluetoothAddress:bluetoothAddress];
      }
    }

    v46 = v40;
    selfCopy = self;
    CFStringGetTypeID();
    v48 = CFDictionaryGetTypedValue();
    name = v48;
    v50 = dataCopy;
    if (v44 && !v48)
    {
      name = [v44 name];
    }

    if (name)
    {
      name2 = [v17 name];
      v52 = [name2 isEqual:name];

      if ((v52 & 1) == 0)
      {
        [v17 setName:name];
      }
    }

    Int64 = CFDictionaryGetInt64();
    if (v44)
    {
      [fieldsCopy setObject:&__kCFBooleanTrue forKeyedSubscript:@"paired"];
    }

    if (![v17 paired] || Int64)
    {
      dataCopy = v50;
      if (([v17 paired] & 1) == 0 && Int64)
      {
        [v17 setPaired:1];
      }
    }

    else
    {
      [fieldsCopy setObject:&__kCFBooleanTrue forKeyedSubscript:@"paired"];
      dataCopy = v50;
    }

    counterpartIdentifier = [v17 counterpartIdentifier];
    if (counterpartIdentifier)
    {

      if (!fieldsCopy)
      {
LABEL_69:
        sub_100200404(v55, v17);
        v57 = sub_10002F024(v56);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v65 = v17;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "Updated %@\n", buf, 0xCu);
        }

        bufferedDeviceFoundHandler = selfCopy->_bufferedDeviceFoundHandler;
        if (bufferedDeviceFoundHandler)
        {
          bufferedDeviceFoundHandler[2](bufferedDeviceFoundHandler, v17);
        }

        name3 = v61;
        deviceCopy = v62;
        v15 = v44;
        goto LABEL_74;
      }
    }

    else
    {
      v55 = [(SDProximityPairingBufferedScanner *)selfCopy _updateCounterpart:v17];
      if (!fieldsCopy)
      {
        goto LABEL_69;
      }
    }

    v55 = [v17 setAdvertisementFields:fieldsCopy];
    goto LABEL_69;
  }

  v21 = CFDictionaryGetInt64();
  CFStringGetTypeID();
  v22 = CFDictionaryGetTypedValue();
  name3 = v22;
  if (v15)
  {
    if (!v22)
    {
      name3 = [v15 name];
    }

    CFStringGetTypeID();
    v24 = CFDictionaryGetTypedValue();
    if (v24 || ([v15 modelIdentifier], (v24 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v25 = v24;
      [fieldsCopy setObject:v24 forKeyedSubscript:@"model"];
    }

    selfCopy2 = self;
    v27 = dataCopy;
    uniqueIDOverride2 = [v15 uniqueIDOverride];
    if (uniqueIDOverride2)
    {
      [fieldsCopy setObject:uniqueIDOverride2 forKeyedSubscript:@"idsID"];
    }

    v29 = [NSNumber numberWithBool:v63];
    [fieldsCopy setObject:v29 forKeyedSubscript:@"idsIDCD"];

    [fieldsCopy setObject:&__kCFBooleanTrue forKeyedSubscript:@"paired"];
    dataCopy = v27;
    self = selfCopy2;
  }

  else
  {
    if (!v21)
    {
      goto LABEL_22;
    }

    uniqueIDOverride2 = sub_10002F024(v22);
    if (os_log_type_enabled(uniqueIDOverride2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v65 = deviceCopy;
      _os_log_impl(&_mh_execute_header, uniqueIDOverride2, OS_LOG_TYPE_ERROR, "### No IDS device found for paired ID %@\n", buf, 0xCu);
    }
  }

  v21 = 1;
LABEL_22:
  v17 = objc_alloc_init(SFBLEDevice);
  [v17 setAdvertisementData:dataCopy];
  if (fieldsCopy)
  {
    [v17 setAdvertisementFields:fieldsCopy];
  }

  CFDataGetTypeID();
  [v17 setBluetoothAddress:CFDictionaryGetTypedValue()];
  [v17 setConnectedServices:CFDictionaryGetInt64Ranged()];
  [v17 setFoundTicks:mach_absolute_time()];
  [v17 setIdentifier:deviceCopy];
  [v17 setLastSeen:CFAbsoluteTimeGetCurrent()];
  if (name3)
  {
    [v17 setName:name3];
  }

  [v17 setPaired:v21];
  if (v14)
  {
    [v17 updateRSSI:v14];
  }

  sub_100200404([(SDProximityPairingBufferedScanner *)self _updateCounterpart:v17], v17);
  devices = self->_devices;
  if (!devices)
  {
    v31 = objc_alloc_init(NSMutableDictionary);
    v32 = self->_devices;
    self->_devices = v31;

    devices = self->_devices;
  }

  v33 = sub_10002F024([(NSMutableDictionary *)devices setObject:v17 forKeyedSubscript:deviceCopy]);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v65 = v17;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Found %@\n", buf, 0xCu);
  }

  v34 = self->_bufferedDeviceFoundHandler;
  if (v34)
  {
    v34[2](v34, v17);
  }

LABEL_74:
}

- (id)pairingParsePayload:(id)payload identifier:(id)identifier bleDevice:(id)device peerInfo:(id)info
{
  identifierCopy = identifier;
  deviceCopy = device;
  infoCopy = info;
  payloadCopy = payload;
  payloadCopy2 = payload;
  bytes = [payloadCopy2 bytes];
  v15 = [payloadCopy2 length];

  v16 = objc_alloc_init(NSMutableDictionary);
  if (v15 >= 7)
  {
    v17 = bytes[4];
    v18 = *(bytes + 5);
    hasSplitBattery = 1;
    v19 = (v18 - 8194) > 0xD || ((1 << (v18 - 2)) & 0x3001) == 0;
    if (v19)
    {
      v30 = [[SFHeadphoneProduct alloc] initWithProductID:v18];
      [v30 isAirPods];

      sub_100200BA4();
      if (v19)
      {
        hasSplitBattery = 1;
      }

      else
      {
        v31 = [[SFHeadphoneProduct alloc] initWithProductID:v18];
        hasSplitBattery = [v31 hasSplitBattery];
      }
    }

    v288 = [[SFHeadphoneProduct alloc] initWithProductID:v18];
    v20 = [NSNumber numberWithUnsignedChar:v17];
    sub_100035E1C();

    if (!v17 && v15 == 14)
    {
      v21 = [NSNumber numberWithUnsignedInt:[(SDProximityPairingBufferedScanner *)self statusToHeadsetStatus:bytes[7] forProductID:v18]];
      sub_100021F1C();

      v22 = [(SDProximityPairingBufferedScanner *)self modelWithProductID:v18];
      sub_100021F1C();

      v23 = [NSNumber numberWithUnsignedShort:v18];
      sub_100021F1C();

      v24 = [NSData dataWithBytes:bytes + 8 length:6];
      sub_100021F1C();

      [v16 setObject:&__kCFBooleanTrue forKeyedSubscript:@"ns"];
LABEL_298:
      v25 = v16;
      goto LABEL_299;
    }

    v25 = 0;
    v281 = &bytes[v15];
    switch(v17)
    {
      case 0:
      case 7:
        v279 = deviceCopy;
        v280 = infoCopy;
        if (v17)
        {
          if (v15 < 0xD)
          {
            goto LABEL_301;
          }

          v274 = bytes[7];
          v270 = bytes[8];
          v26 = bytes + 12;
          v27 = bytes[11];
          if (v17 == 7)
          {
            v28 = 0;
            v29 = 0;
            goto LABEL_40;
          }
        }

        else
        {
          if (v15 < 0x13)
          {
LABEL_302:
            v25 = 0;
            infoCopy = v280;
            goto LABEL_299;
          }

          v274 = bytes[13];
          v270 = bytes[14];
          v26 = bytes + 18;
          v27 = bytes[17];
        }

        v29 = *v26;
        v28 = 1;
LABEL_40:
        sub_100200BA4();
        v277 = identifierCopy;
        v260 = v67;
        v265 = v68;
        v268 = v69;
        if (v19)
        {
          hasSplitCaseColors = 1;
        }

        else
        {
          v70 = v27;
          v71 = v66;
          v72 = [[SFHeadphoneProduct alloc] initWithProductID:v18];
          hasSplitCaseColors = [v72 hasSplitCaseColors];

          v66 = v71;
          v27 = v70;
        }

        if ((v28 & hasSplitCaseColors) == 1)
        {
          if (v281 - v66 < 1)
          {
            v262 = v66;
            v74 = 0;
          }

          else
          {
            v262 = v66 + 1;
            v74 = *v66 >> 5;
          }

          v92 = v29 >> 4;
          v93 = [NSNumber numberWithUnsignedChar:v29 & 0xF];
          sub_100200B44();

          v94 = [NSNumber numberWithUnsignedChar:v92];
          sub_100200B44();

          v95 = [NSNumber numberWithUnsignedChar:v74];
          [sub_100019E60() setObject:? forKeyedSubscript:?];
        }

        else
        {
          v262 = v66;
          v75 = +[SFHeadphoneProduct airPodsMax];

          if (v288 == v75)
          {
            [NSNumber numberWithInt:v29 & 0x1F];
          }

          else
          {
            [NSNumber numberWithUnsignedChar:v29];
          }
          v95 = ;
          [sub_100019E60() setObject:? forKeyedSubscript:?];
        }

        v96 = [(SDProximityPairingBufferedScanner *)self statusToHeadsetStatus:v274 forProductID:v18];
        if (v270 == 255)
        {
          v273 = 0;
        }

        else
        {
          sub_100200B7C();
          v97 = sub_100200B6C();
          v99 = v98 < 0;
          v100 = 1;
          if (v99)
          {
            v100 = 2;
          }

          v273 = v100;
        }

        v101 = v265;
        if (v268 == 255)
        {
          v269 = 0;
        }

        else
        {
          sub_100200B7C();
          v97 = sub_100200B6C();
          v99 = v102 < 0;
          v103 = 1;
          if (v99)
          {
            v103 = 2;
          }

          v269 = v103;
        }

        if (v101 == 255)
        {
          v105 = 0;
        }

        else
        {
          v97 = sub_100200B6C();
          if (v104 >= 0)
          {
            v105 = 1;
          }

          else
          {
            v105 = 2;
          }
        }

        if (v18 - 8194) < 0xE && ((0x3201u >> (v18 - 2)))
        {
          hasLid = 1;
        }

        else
        {
          v107 = [[SFHeadphoneProduct alloc] initWithProductID:v18];
          hasLid = [v107 hasLid];
        }

        if ((v27 & 0x80u) == 0)
        {
          v108 = 1;
        }

        else
        {
          v108 = hasLid;
        }

        if (v108)
        {
          v109 = v96;
        }

        else
        {
          v109 = v96 | 0x400;
        }

        v110 = [NSNumber numberWithUnsignedInt:v109, v97];
        [v16 setObject:v110 forKeyedSubscript:@"hsStatus"];

        if ((hasLid & ((v27 & 8) >> 3)) != 0)
        {
          v111 = &__kCFBooleanTrue;
        }

        else
        {
          v111 = &__kCFBooleanFalse;
        }

        [v16 setObject:v111 forKeyedSubscript:@"lc"];
        v112 = [NSNumber numberWithInt:v27 & 7];
        if ((v109 & 0x100) != 0)
        {
          [sub_100019E60() setObject:? forKeyedSubscript:?];

          v116 = objc_msgSend_advertisementFields(v279);
          v114 = [v116 objectForKeyedSubscript:@"locS"];

          v115 = v105;
          if (!v114)
          {
            goto LABEL_107;
          }
        }

        else
        {
          [sub_100019E60() setObject:? forKeyedSubscript:?];

          v113 = objc_msgSend_advertisementFields(v279);
          v114 = [v113 objectForKeyedSubscript:@"locP"];

          v115 = v105;
          if (!v114)
          {
            goto LABEL_107;
          }
        }

        [sub_100019E60() setObject:? forKeyedSubscript:?];
LABEL_107:
        identifierCopy = v277;
        infoCopy = v280;

        sub_100200B90();
        [SDProximityPairingBufferedScanner parseStatus3:"parseStatus3:productID:caseLEDColor:caseLEDStatus:" productID:v27 caseLEDColor:v18 caseLEDStatus:?];
        v117 = +[SFHeadphoneProduct airPodsMax];

        if (v288 == v117)
        {
          0x1F = [NSNumber numberWithInt:v274 & 0x1F];
          sub_100035E1C();
          v119 = v269;
        }

        else
        {
          v118 = v18 == 8207 || v18 == 8194;
          v119 = v269;
          if (!v118)
          {
LABEL_116:
            if ([v288 supportsDigitalEngraving] && v281 - v262 >= 17)
            {
              v121 = [NSData dataWithBytes:v262 length:17];
              sub_100035E1C();
            }

            v122 = [NSNumber numberWithUnsignedChar:buf[0]];
            sub_100035E1C();

            v123 = [NSNumber numberWithUnsignedChar:v290];
            sub_100035E1C();

            v124 = [(SDProximityPairingBufferedScanner *)self modelWithProductID:v18];
            sub_100035E1C();

            v125 = [NSNumber numberWithUnsignedShort:v18];
            sub_100035E1C();

            [v16 setObject:&__kCFBooleanTrue forKeyedSubscript:@"ns"];
            if (v17)
            {
              [v280 objectForKeyedSubscript:WPPairingKeyDeviceAddress];
            }

            else
            {
              [NSData dataWithBytes:v260 length:6];
            }
            v126 = ;
            v127 = v273;
            sub_100021F1C();

            v40 = objc_alloc_init(NSMutableArray);
            if (!hasSplitBattery)
            {
              v128 = objc_alloc_init(SFBatteryInfo);
              v132 = sub_100008A24();
              v133 = sub_100019D28(v132, 0.0001);
              [v134 setBatteryLevel:v133];
              [v128 setBatteryState:v273];
              [v128 setBatteryType:4];
              goto LABEL_138;
            }

            if (v115)
            {
              v128 = objc_alloc_init(SFBatteryInfo);
              v129 = sub_100023FB4();
              v130 = sub_100019D28(v129, 0.0001);
              [v131 setBatteryLevel:v130];
              [v128 setBatteryState:v115];
              [v128 setBatteryType:1];
              [v40 addObject:v128];
              if (!(v273 | v119))
              {
                LOBYTE(v109) = 0x80;
                v127 = 2;
                v119 = 2;
                goto LABEL_129;
              }
            }

            else
            {
              v128 = 0;
            }

            if (!v273)
            {
LABEL_133:
              if (!v119)
              {
                goto LABEL_139;
              }

              v138 = objc_alloc_init(SFBatteryInfo);

              v139 = sub_10002A838();
              [v138 setBatteryLevel:{sub_100019D28(v139, 0.0001)}];
              [v138 setBatteryState:v119];
              if ((v109 & 0x80) != 0)
              {
                v140 = 3;
              }

              else
              {
                v140 = 2;
              }

              [v138 setBatteryType:v140];
              v128 = v138;
LABEL_138:
              [v40 addObject:v128];
LABEL_139:
              deviceCopy = v279;
              sub_100021F1C();

LABEL_140:
              goto LABEL_298;
            }

LABEL_129:
            v135 = objc_alloc_init(SFBatteryInfo);

            v136 = sub_100008A24();
            [v135 setBatteryLevel:{sub_100019D28(v136, 0.0001)}];
            [v135 setBatteryState:v127];
            if ((v109 & 0x80) != 0)
            {
              v137 = 2;
            }

            else
            {
              v137 = 3;
            }

            [v135 setBatteryType:v137];
            [v40 addObject:v135];
            v128 = v135;
            goto LABEL_133;
          }

          0x1F = [NSNumber numberWithInt:(v27 >> 4) & 1];
          sub_100035E1C();
        }

        goto LABEL_116;
      case 1:
        if (v15 < 0xA)
        {
          goto LABEL_301;
        }

        v49 = bytes[7];
        v266 = bytes[9];
        v258 = bytes[8];
        if (v15 == 26)
        {
          v50 = deviceCopy;
          v51 = identifierCopy;
          v271 = 0;
          v261 = 0;
          v263 = 0;
          v52 = (bytes + 10);
          v53 = (bytes + 11);
          v54 = (bytes + 12);
          v55 = (bytes + 13);
          v255 = (bytes + 14);
          v256 = 0;
          v254 = (bytes + 17);
        }

        else
        {
          if (v15 < 0x17)
          {
            goto LABEL_301;
          }

          v50 = deviceCopy;
          v51 = identifierCopy;
          v271 = bytes[10];
          v52 = (bytes + 13);
          LODWORD(v256) = bytes[11];
          HIDWORD(v256) = bytes[12];
          v53 = (bytes + 14);
          v54 = (bytes + 15);
          v55 = (bytes + 16);
          v254 = (bytes + 20);
          v255 = (bytes + 17);
          v261 = bytes[23];
          v263 = bytes[24];
        }

        v76 = *v55;
        v77 = *v54;
        v78 = *v53;
        v283 = *v52;
        v253 = v49;
        v276 = [SDProximityPairingBufferedScanner statusToHeadsetStatus:"statusToHeadsetStatus:forProductID:" forProductID:?];
        if ([(SDProximityPairingBufferedScanner *)self pairingUpdatePairedInfo:v51 fields:v16 bleDevice:v50])
        {
          if (v15 == 26 || !sub_1001FFBA8(v18))
          {
            v252 = 0;
          }

          else
          {
            if ((v283 & 0x20) != 0)
            {
              v80 = 2;
            }

            else
            {
              v80 = 1;
            }

            v252 = v80;
          }

          if (v78 == -1)
          {
            *(&v259 + 1) = 0;
          }

          else
          {
            v177 = v78 & 0x7F;
            if (v177 >= 0x64)
            {
              v177 = 100;
            }

            v79 = sub_100200B5C(v177);
            v178 = 1;
            if (v78 < 0)
            {
              v178 = 2;
            }

            *(&v259 + 1) = v178;
          }

          identifierCopy = v51;
          if (v77 == -1)
          {
            *&v259 = 0;
          }

          else
          {
            v191 = v77 & 0x7F;
            if (v191 >= 0x64)
            {
              v191 = 100;
            }

            v79 = sub_100200B5C(v191);
            v192 = 1;
            if (v77 < 0)
            {
              v192 = 2;
            }

            *&v259 = v192;
          }

          deviceCopy = v50;
          if (v76 == -1)
          {
            v257 = 0;
          }

          else
          {
            v193 = v76 & 0x7F;
            if (v193 >= 0x64)
            {
              v193 = 100;
            }

            v79 = sub_100200B5C(v193);
            v194 = 1;
            if (v76 < 0)
            {
              v194 = 2;
            }

            v257 = v194;
          }

          v190 = &NSURLAuthenticationMethodServerTrust_ptr;
          v195 = [NSNumber numberWithUnsignedChar:v79];
          sub_100200B44();

          v196 = [NSNumber numberWithInteger:v283 & 3];
          sub_100200B44();

          v197 = [NSData dataWithBytes:v254 length:3];
          sub_100035E1C();

          v198 = [NSData dataWithBytes:v255 length:3];
          sub_100035E1C();

          [v16 setObject:&__kCFBooleanTrue forKeyedSubscript:@"paired"];
          v199 = [NSNumber numberWithUnsignedChar:v252];
          sub_100035E1C();

          selfCopy2 = self;
        }

        else
        {
          v90 = v258;
          v91 = v266;
          if ((v258 & 0xF) == 0xF)
          {
            *(&v259 + 1) = 0;
          }

          else
          {
            sub_100200B38();
            if (v152)
            {
              v179 = v180;
            }

            sub_10002FCE0(v179);
            v181 = 1;
            if ((v91 & 0x10) != 0)
            {
              v181 = 2;
            }

            *(&v259 + 1) = v181;
          }

          identifierCopy = v51;
          deviceCopy = v50;
          selfCopy2 = self;
          if (v90 >> 4 == 15)
          {
            *&v259 = 0;
          }

          else
          {
            sub_100200B38();
            if (v152)
            {
              v183 = v184;
            }

            sub_10002FCE0(v183);
            v185 = 1;
            if ((v91 & 0x20) != 0)
            {
              v185 = 2;
            }

            *&v259 = v185;
          }

          if ((v91 & 0xF) == 0xF)
          {
            v257 = 0;
          }

          else
          {
            sub_100200B38();
            if (v152)
            {
              v186 = v187;
            }

            sub_10002FCE0(v186);
            v189 = 1;
            if ((v188 & 0x40) != 0)
            {
              v189 = 2;
            }

            v257 = v189;
          }

          v190 = &NSURLAuthenticationMethodServerTrust_ptr;
        }

        v200 = [(SDProximityPairingBufferedScanner *)selfCopy2 modelWithProductID:v18];
        sub_100035E1C();

        v201 = [v190[258] numberWithUnsignedShort:v18];
        sub_100035E1C();

        if (v15 == 26)
        {
          goto LABEL_265;
        }

        sub_100200B90();
        [SDProximityPairingBufferedScanner parseStatus3:selfCopy2 productID:"parseStatus3:productID:caseLEDColor:caseLEDStatus:" caseLEDColor:v271 caseLEDStatus:v18];
        sub_100200BA4();
        if (v19 || (v202 = [[SFHeadphoneProduct alloc] initWithProductID:v18], v203 = objc_msgSend(v202, "hasSplitCaseColors"), v202, v203))
        {
          v204 = [v190[258] numberWithUnsignedChar:v256 & 0xF];
          sub_100200B44();

          v205 = [v190[258] numberWithUnsignedChar:v256 >> 4];
          sub_100035E1C();

          v206 = [v190[258] numberWithUnsignedChar:HIDWORD(v256) >> 5];
        }

        else
        {
          v207 = +[SFHeadphoneProduct airPodsMax];

          v208 = v190[258];
          if (v288 == v207)
          {
            [v208 numberWithInt:v256 & 0x1F];
          }

          else
          {
            [v208 numberWithUnsignedChar:v256];
          }
          v206 = ;
        }

        sub_100035E1C();

        v209 = +[SFHeadphoneProduct airPodsMax];

        if (v288 == v209)
        {
          v211 = v253 & 0x1F;
        }

        else
        {
          if (v18 != 8207)
          {
            sub_100200BA4();
            if (v19 || v18 == 8206)
            {
              goto LABEL_249;
            }

            if (v18 != 8194)
            {
LABEL_250:
              v214 = [[SFHeadphoneProduct alloc] initWithProductID:v18];
              hasLid2 = [v214 hasLid];

LABEL_251:
              if ((v271 & 0x80u) == 0)
              {
                v215 = 1;
              }

              else
              {
                v215 = hasLid2;
              }

              v216 = v276;
              if (!v215)
              {
                v216 = v276 | 0x400;
              }

              v217 = [v190[258] numberWithInt:v271 & 7];
              v276 = v216;
              if ((v216 & 0x100) != 0)
              {
                [sub_100019E60() setObject:? forKeyedSubscript:?];

                v220 = objc_msgSend_advertisementFields(deviceCopy);
                v219 = [v220 objectForKeyedSubscript:@"locS"];

                if (v219)
                {
LABEL_260:
                  [sub_100019E60() setObject:? forKeyedSubscript:?];
                }
              }

              else
              {
                [sub_100019E60() setObject:? forKeyedSubscript:?];

                v218 = objc_msgSend_advertisementFields(deviceCopy);
                v219 = [v218 objectForKeyedSubscript:@"locP"];

                if (v219)
                {
                  goto LABEL_260;
                }
              }

              if ((hasLid2 & ((v271 & 8) >> 3)) != 0)
              {
                v221 = &__kCFBooleanTrue;
              }

              else
              {
                v221 = &__kCFBooleanFalse;
              }

              [v16 setObject:v221 forKeyedSubscript:@"lc"];
              v222 = [v190[258] numberWithUnsignedChar:buf[0]];
              sub_100021F1C();

              v223 = [v190[258] numberWithUnsignedChar:v290];
              sub_100021F1C();

LABEL_265:
              v224 = v276;
              v225 = [v190[258] numberWithUnsignedInt:v276];
              sub_100021F1C();

              if ((v266 & 0x80) != 0)
              {
                v226 = [v190[258] numberWithUnsignedInt:2048];
                sub_100021F1C();
              }

              v287 = objc_alloc_init(NSMutableArray);
              v227 = v259;
              if (!hasSplitBattery)
              {
                if (!*(&v259 + 1))
                {
                  v229 = 0;
                  goto LABEL_286;
                }

                v229 = objc_alloc_init(SFBatteryInfo);
                v233 = sub_100008A24();
                v234 = sub_100019D28(v233, 0.0001);
                [v235 setBatteryLevel:v234];
                [v229 setBatteryState:*(&v259 + 1)];
                [v229 setBatteryType:4];
                goto LABEL_284;
              }

              v228 = *(&v259 + 1);
              if (v257)
              {
                v229 = objc_alloc_init(SFBatteryInfo);
                v230 = sub_100023FB4();
                v231 = sub_100019D28(v230, 0.0001);
                [v232 setBatteryLevel:v231];
                [v229 setBatteryState:v257];
                [v229 setBatteryType:1];
                [v287 addObject:v229];
                if (v259 == 0)
                {
                  v224 = 0x80;
                  v227 = 2;
                  v228 = 2;
                  goto LABEL_275;
                }
              }

              else
              {
                v229 = 0;
              }

              if (!*(&v259 + 1))
              {
LABEL_279:
                if (!v227)
                {
LABEL_286:
                  v242 = +[SFHeadphoneProduct airPodsMax];

                  if (v288 == v242)
                  {
                    if ((v256 & 0x1000000000) != 0)
                    {
                      v243 = &__kCFBooleanTrue;
                    }

                    else
                    {
                      v243 = &__kCFBooleanFalse;
                    }

                    [v16 setObject:v243 forKeyedSubscript:@"usbAudioConnected"];
                  }

                  [v16 setObject:v287 forKeyedSubscript:@"batteryInfo"];
                  if ((v283 & 0x40) != 0)
                  {
                    v244 = &__kCFBooleanTrue;
                  }

                  else
                  {
                    v244 = &__kCFBooleanFalse;
                  }

                  [v16 setObject:v244 forKeyedSubscript:@"srConnected"];
                  v245 = [v190[258] numberWithInt:v261 & 0xF];
                  [sub_100019E60() setObject:? forKeyedSubscript:?];

                  v246 = [v190[258] numberWithInt:v261 >> 4];
                  [sub_100019E60() setObject:? forKeyedSubscript:?];

                  v247 = [v190[258] numberWithInt:v263 & 3];
                  [sub_100019E60() setObject:? forKeyedSubscript:?];

                  v248 = [v190[258] numberWithInt:(v263 >> 2) & 3];
                  [sub_100019E60() setObject:? forKeyedSubscript:?];

                  if ((v263 & 0x10) != 0)
                  {
                    v249 = &__kCFBooleanTrue;
                  }

                  else
                  {
                    v249 = &__kCFBooleanFalse;
                  }

                  [v16 setObject:v249 forKeyedSubscript:@"primaryiCloudSignIn"];

                  goto LABEL_298;
                }

                v239 = objc_alloc_init(SFBatteryInfo);

                v240 = sub_10002A838();
                [v239 setBatteryLevel:{sub_100019D28(v240, 0.0001)}];
                [v239 setBatteryState:v227];
                if (v224 < 0)
                {
                  v241 = 3;
                }

                else
                {
                  v241 = 2;
                }

                [v239 setBatteryType:v241];
                v229 = v239;
LABEL_284:
                [v287 addObject:v229];
                goto LABEL_286;
              }

LABEL_275:
              v236 = objc_alloc_init(SFBatteryInfo);

              v237 = sub_100008A24();
              [v236 setBatteryLevel:{sub_100019D28(v237, 0.0001)}];
              [v236 setBatteryState:v228];
              if (v224 < 0)
              {
                v238 = 2;
              }

              else
              {
                v238 = 3;
              }

              [v236 setBatteryType:v238];
              [v287 addObject:v236];
              v229 = v236;
              goto LABEL_279;
            }
          }

          v211 = (v271 >> 4) & 1;
        }

        v212 = [v190[258] numberWithInt:v211];
        [sub_100019E60() setObject:? forKeyedSubscript:?];

        if (v18 - 8194) < 0xE && ((0x3201u >> (v18 - 2)))
        {
LABEL_249:
          hasLid2 = 1;
          goto LABEL_251;
        }

        goto LABEL_250;
      case 4:
        v280 = infoCopy;
        if (v15 < 0x1B)
        {
          goto LABEL_302;
        }

        v56 = bytes[7];
        v275 = bytes[8];
        v282 = bytes[9];
        v57 = bytes[10];
        v58 = bytes[11];
        v272 = bytes[12];
        *buf = *(bytes + 13);
        LOWORD(v293) = *(bytes + 17);
        v290 = *(bytes + 19);
        v291 = *(bytes + 23);
        v264 = v56;
        v267 = *(bytes + 25);
        v59 = [SDProximityPairingBufferedScanner statusToHeadsetStatus:"statusToHeadsetStatus:forProductID:" forProductID:?];
        v60 = [NSNumber numberWithUnsignedChar:v58];
        sub_100200B44();

        v61 = [NSNumber numberWithUnsignedInt:v59];
        sub_100200B44();

        if ((v57 & 8) != 0)
        {
          v62 = &__kCFBooleanTrue;
        }

        else
        {
          v62 = &__kCFBooleanFalse;
        }

        [v16 setObject:v62 forKeyedSubscript:@"lc"];
        v63 = [NSNumber numberWithInt:v57 & 7];
        v285 = v59;
        if ((v59 & 0x100) != 0)
        {
          sub_100200B44();

          v81 = objc_msgSend_advertisementFields(deviceCopy);
          v65 = [v81 objectForKeyedSubscript:@"locS"];

          if (!v65)
          {
            goto LABEL_59;
          }
        }

        else
        {
          sub_100200B44();

          v64 = objc_msgSend_advertisementFields(deviceCopy);
          v65 = [v64 objectForKeyedSubscript:@"locP"];

          if (!v65)
          {
            goto LABEL_59;
          }
        }

        sub_100200B44();
LABEL_59:
        v278 = identifierCopy;

        v289 = 0;
        [(SDProximityPairingBufferedScanner *)self parseStatus3:v57 productID:v18 caseLEDColor:&v289 + 1 caseLEDStatus:&v289];
        isAirPodsPro = [v288 isAirPodsPro];
        v83 = +[SFHeadphoneProduct airPods];
        if ([v83 productID] == v18)
        {
          v84 = 1;
        }

        else
        {
          +[SFHeadphoneProduct airPodsSecondGeneration];
          v86 = v85 = deviceCopy;
          v84 = ([v86 productID] == v18) | isAirPodsPro;

          deviceCopy = v85;
        }

        v87 = +[SFHeadphoneProduct airPodsMax];

        if (v288 == v87)
        {
          0x1F2 = [NSNumber numberWithInt:v264 & 0x1F];
        }

        else
        {
          if ((v84 & 1) == 0)
          {
            goto LABEL_143;
          }

          if (isAirPodsPro)
          {
            v88 = (v57 >> 4) & 1 | 2;
          }

          else
          {
            v88 = (v57 >> 4) & 1;
          }

          0x1F2 = [NSNumber numberWithUnsignedChar:v88];
        }

        sub_100035E1C();

LABEL_143:
        v141 = [NSNumber numberWithUnsignedChar:HIBYTE(v289)];
        sub_100035E1C();

        v142 = [NSNumber numberWithUnsignedChar:v289];
        sub_100035E1C();

        v143 = [(SDProximityPairingBufferedScanner *)self modelWithProductID:v18];
        sub_100035E1C();

        v144 = [NSNumber numberWithUnsignedShort:v18];
        sub_100035E1C();

        v145 = [NSNumber numberWithUnsignedShort:v267];
        sub_100035E1C();

        v146 = [NSData dataWithBytes:buf length:6];
        sub_100035E1C();

        v147 = [NSData dataWithBytes:&v290 length:6];
        sub_100035E1C();

        if (v272)
        {
          [v16 setObject:&__kCFBooleanTrue forKeyedSubscript:@"notMyCase"];
        }

        identifierCopy = v278;
        [(SDProximityPairingBufferedScanner *)self pairingUpdatePairedInfo:v278 fields:v16 bleDevice:deviceCopy];
        v148 = objc_alloc_init(NSMutableArray);
        if ((v282 & 0xF) == 0xF)
        {
          v149 = 0;
        }

        else
        {
          sub_100200B38();
          if (v152)
          {
            v150 = v151;
          }

          sub_10002FCE0(v150);
          if ((v153 & 0x40) != 0)
          {
            v149 = 2;
          }

          else
          {
            v149 = 1;
          }
        }

        v154 = v275;
        if ((v275 & 0xF) == 0xF)
        {
          v155 = 0;
        }

        else
        {
          sub_100200B38();
          if (v152)
          {
            v156 = v157;
          }

          sub_10002FCE0(v156);
          if ((v158 & 0x10) != 0)
          {
            v155 = 2;
          }

          else
          {
            v155 = 1;
          }
        }

        if (v154 >> 4 == 15)
        {
          v159 = 0;
        }

        else
        {
          sub_100200B38();
          if (v152)
          {
            v160 = v161;
          }

          sub_10002FCE0(v160);
          if ((v162 & 0x20) != 0)
          {
            v159 = 2;
          }

          else
          {
            v159 = 1;
          }
        }

        if (v149)
        {
          v163 = objc_alloc_init(SFBatteryInfo);
          v164 = sub_100023FB4();
          v165 = sub_100019D28(v164, 0.0001);
          [v166 setBatteryLevel:v165];
          [v163 setBatteryState:v149];
          [v163 setBatteryType:1];
          [v148 addObject:v163];
          if (!(v159 | v155))
          {
            v285 = 0x80;
            v155 = 2;
            v159 = 2;
          }
        }

        if (v155)
        {
          v167 = objc_alloc_init(SFBatteryInfo);
          v168 = sub_10002A838();
          v169 = sub_100019D28(v168, 0.0001);
          [v170 setBatteryLevel:v169];
          [v167 setBatteryState:v155];
          if (v285 < 0)
          {
            v171 = 2;
          }

          else
          {
            v171 = 3;
          }

          [v167 setBatteryType:v171];
          [v148 addObject:v167];
        }

        if (v159)
        {
          v172 = objc_alloc_init(SFBatteryInfo);
          v173 = sub_100008A24();
          v174 = sub_100019D28(v173, 0.0001);
          [v175 setBatteryLevel:v174];
          [v172 setBatteryState:v159];
          if (v285 < 0)
          {
            v176 = 3;
          }

          else
          {
            v176 = 2;
          }

          [v172 setBatteryType:v176];
          [v148 addObject:v172];
        }

        sub_100035E1C();

        infoCopy = v280;
        goto LABEL_298;
      case 5:
      case 9:
        v32 = bytes + 7;
        v33 = [NSNumber numberWithUnsignedShort:v18];
        sub_100021F1C();

        v34 = [(SDProximityPairingBufferedScanner *)self modelWithProductID:v18];
        sub_100021F1C();

        if (v15 != 7)
        {
          v32 = bytes + 8;
          v35 = [NSNumber numberWithUnsignedChar:bytes[7]];
          sub_100021F1C();
        }

        if (v281 - v32 < 1)
        {
          goto LABEL_298;
        }

        v36 = *v32;
        v37 = [NSNumber numberWithInt:v36 & 3];
        sub_100021F1C();

        v38 = [NSNumber numberWithInt:(v36 >> 2) & 3];
        sub_100021F1C();

        if (&v281[~v32] < 1)
        {
          goto LABEL_298;
        }

        v39 = [NSNumber numberWithUnsignedChar:v32[1]];
        sub_100021F1C();

        if (v281 - v32 - 2 < 18)
        {
          goto LABEL_298;
        }

        v40 = [NSData dataWithBytes:v32 + 3 length:18];
        sub_100021F1C();
        goto LABEL_140;
      case 6:
        v41 = (bytes + 7);
        Int64 = CFDictionaryGetInt64();
        [(SDProximityPairingBufferedScanner *)self pairingUpdatePairedInfo:identifierCopy fields:v16 bleDevice:deviceCopy];
        if (Int64)
        {
          v43 = [(SDProximityPairingBufferedScanner *)self modelWithProductID:v18];
          sub_100021F1C();

          v44 = [NSNumber numberWithUnsignedShort:v18];
          sub_100021F1C();

          v45 = [infoCopy objectForKeyedSubscript:WPPairingKeyDeviceAddress];
          sub_100021F1C();

          v46 = [NSNumber numberWithBool:1];
          sub_100021F1C();

          v48 = sub_10002F024(v47);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v293 = v16;
            _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "AccessoryStatus found: %@\n", buf, 0xCu);
          }

          [(SDProximityPairingBufferedScanner *)self pairingParseAccessoryStatusPayloadPtr:v41 end:v281 fields:v16];
        }

        goto LABEL_298;
      default:
        goto LABEL_299;
    }
  }

  v288 = 0;
LABEL_301:
  v25 = 0;
LABEL_299:
  v250 = v25;

  return v25;
}

- (BOOL)_updateCounterpart:(id)counterpart
{
  counterpartCopy = counterpart;
  bluetoothAddress = [counterpartCopy bluetoothAddress];
  if (bluetoothAddress)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = self->_devices;
    v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:*(*(&v17 + 1) + 8 * i), v17];
          v12 = v11;
          if (v11 == counterpartCopy)
          {
            bluetoothAddress2 = 0;
          }

          else
          {
            bluetoothAddress2 = [v11 bluetoothAddress];
            if ([bluetoothAddress2 isEqual:bluetoothAddress])
            {
              identifier = [v12 identifier];
              [counterpartCopy setCounterpartIdentifier:identifier];

              v15 = 1;
              goto LABEL_14;
            }
          }
        }

        v8 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    v15 = 0;
LABEL_14:
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end