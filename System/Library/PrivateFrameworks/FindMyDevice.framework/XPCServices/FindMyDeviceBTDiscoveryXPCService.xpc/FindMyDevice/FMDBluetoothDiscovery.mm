@interface FMDBluetoothDiscovery
- (BOOL)_isDiscoveryActive;
- (FMDBluetoothDiscovery)init;
- (id)discoveredDevices;
- (void)dealloc;
- (void)finishDiscoveringWithError:(id)error;
- (void)processDeviceInformation:(id)information lost:(BOOL)lost;
- (void)startBLEDiscovery;
- (void)stopBLEDiscovery;
- (void)stopDiscovery;
@end

@implementation FMDBluetoothDiscovery

- (FMDBluetoothDiscovery)init
{
  v5.receiver = self;
  v5.super_class = FMDBluetoothDiscovery;
  v2 = [(FMDBluetoothDiscovery *)&v5 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    [(FMDBluetoothDiscovery *)v2 setDevicesByIdentifier:v3];
  }

  return v2;
}

- (void)dealloc
{
  [(FMDBluetoothDiscovery *)self stopBLEDiscovery];
  [(FMDBluetoothDiscovery *)self finishDiscoveringWithError:0];
  v3.receiver = self;
  v3.super_class = FMDBluetoothDiscovery;
  [(FMDBluetoothDiscovery *)&v3 dealloc];
}

- (BOOL)_isDiscoveryActive
{
  deviceDiscovery = [(FMDBluetoothDiscovery *)self deviceDiscovery];
  v3 = deviceDiscovery != 0;

  return v3;
}

- (id)discoveredDevices
{
  devicesByIdentifier = [(FMDBluetoothDiscovery *)self devicesByIdentifier];
  allValues = [devicesByIdentifier allValues];

  return allValues;
}

- (void)stopDiscovery
{
  if ([(FMDBluetoothDiscovery *)self _isDiscoveryActive])
  {
    [(FMDBluetoothDiscovery *)self stopBLEDiscovery];

    [(FMDBluetoothDiscovery *)self finishDiscoveringWithError:0];
  }
}

- (void)startBLEDiscovery
{
  deviceDiscovery = [(FMDBluetoothDiscovery *)self deviceDiscovery];

  v5 = sub_1000012D0(v4);
  v6 = v5;
  if (deviceDiscovery)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_10000409C();
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FMDBluetoothDiscovery starting BLE Scanning", buf, 2u);
    }

    v7 = +[FMDSFDeviceDiscoveryFactory deviceDiscovery];
    [(FMDBluetoothDiscovery *)self setDeviceDiscovery:v7];

    deviceDiscovery2 = [(FMDBluetoothDiscovery *)self deviceDiscovery];
    [deviceDiscovery2 setChangeFlags:1];

    deviceDiscovery3 = [(FMDBluetoothDiscovery *)self deviceDiscovery];
    [deviceDiscovery3 setDiscoveryFlags:2];

    deviceDiscovery4 = [(FMDBluetoothDiscovery *)self deviceDiscovery];
    [deviceDiscovery4 setRssiThreshold:-120];

    deviceDiscovery5 = [(FMDBluetoothDiscovery *)self deviceDiscovery];
    [deviceDiscovery5 setScanRate:20];

    deviceDiscovery6 = [(FMDBluetoothDiscovery *)self deviceDiscovery];
    [deviceDiscovery6 setOverrideScreenOff:1];

    objc_initWeak(buf, self);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000033F8;
    v23[3] = &unk_10000CEF8;
    objc_copyWeak(&v24, buf);
    deviceDiscovery7 = [(FMDBluetoothDiscovery *)self deviceDiscovery];
    [deviceDiscovery7 setDeviceFoundHandler:v23];

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100003470;
    v21[3] = &unk_10000CF20;
    objc_copyWeak(&v22, buf);
    deviceDiscovery8 = [(FMDBluetoothDiscovery *)self deviceDiscovery];
    [deviceDiscovery8 setDeviceChangedHandler:v21];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000034E8;
    v19[3] = &unk_10000CEF8;
    objc_copyWeak(&v20, buf);
    deviceDiscovery9 = [(FMDBluetoothDiscovery *)self deviceDiscovery];
    [deviceDiscovery9 setDeviceLostHandler:v19];

    deviceDiscovery10 = [(FMDBluetoothDiscovery *)self deviceDiscovery];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100003560;
    v17[3] = &unk_10000C468;
    objc_copyWeak(&v18, buf);
    [deviceDiscovery10 activateWithCompletion:v17];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }
}

- (void)stopBLEDiscovery
{
  v3 = sub_1000012D0(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100004218();
  }

  deviceDiscovery = [(FMDBluetoothDiscovery *)self deviceDiscovery];
  [deviceDiscovery invalidate];

  [(FMDBluetoothDiscovery *)self setDeviceDiscovery:0];
  devicesByIdentifier = [(FMDBluetoothDiscovery *)self devicesByIdentifier];
  v6 = [devicesByIdentifier copy];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100003718;
  v8[3] = &unk_10000CF48;
  v8[4] = self;
  [v6 enumerateKeysAndObjectsUsingBlock:v8];
  devicesByIdentifier2 = [(FMDBluetoothDiscovery *)self devicesByIdentifier];
  [devicesByIdentifier2 removeAllObjects];
}

- (void)finishDiscoveringWithError:(id)error
{
  errorCopy = error;
  didEndDiscovery = [(FMDBluetoothDiscovery *)self didEndDiscovery];
  v5 = didEndDiscovery;
  if (didEndDiscovery)
  {
    (*(didEndDiscovery + 16))(didEndDiscovery, errorCopy);
  }
}

- (void)processDeviceInformation:(id)information lost:(BOOL)lost
{
  lostCopy = lost;
  informationCopy = information;
  v7 = objc_autoreleasePoolPush();
  _isDiscoveryActive = [(FMDBluetoothDiscovery *)self _isDiscoveryActive];
  if (_isDiscoveryActive)
  {
    bleDevice = [informationCopy bleDevice];
    bluetoothAddress = [bleDevice bluetoothAddress];
    fm_MACAddressString = [bluetoothAddress fm_MACAddressString];

    if (!fm_MACAddressString)
    {
      v13 = sub_1000012D0(v12);
      if (os_log_type_enabled(&v13->super, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &v13->super, OS_LOG_TYPE_DEFAULT, "FMDBluetoothDiscovery failed to get bluetooth address.", buf, 2u);
      }

      goto LABEL_39;
    }

    v13 = [[FMDBLEBeaconIdentifier alloc] initWithBLEDevice:bleDevice other:0];
    isValid = [(FMDBLEBeaconIdentifier *)v13 isValid];
    v15 = isValid;
    v16 = sub_1000012D0(isValid);
    didLoseDevice2 = v16;
    if ((v15 & 1) == 0)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        sub_100004280();
      }

      goto LABEL_38;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      bluetoothAddress2 = [bleDevice bluetoothAddress];
      advertisementFields = [bleDevice advertisementFields];
      *buf = 138413058;
      v47 = bluetoothAddress2;
      v48 = 2112;
      v49 = v13;
      v50 = 2112;
      v51 = advertisementFields;
      v52 = 2048;
      rssi = [bleDevice rssi];
      _os_log_impl(&_mh_execute_header, didLoseDevice2, OS_LOG_TYPE_DEFAULT, "FMDBluetoothDiscovery : %@ %@ %@ %li", buf, 0x2Au);
    }

    v21 = sub_1000012D0(v20);
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (lostCopy)
    {
      if (v22)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "FMDBluetoothDiscovery lost beacon", buf, 2u);
      }

      devicesByIdentifier = [(FMDBluetoothDiscovery *)self devicesByIdentifier];
      [devicesByIdentifier removeObjectForKey:v13];

      didLoseDevice = [(FMDBluetoothDiscovery *)self didLoseDevice];

      if (!didLoseDevice)
      {
        goto LABEL_39;
      }

      v26 = sub_1000012D0(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "FMDBluetoothDiscovery updating the callee with lost btle beacons", buf, 2u);
      }

      didLoseDevice2 = [(FMDBluetoothDiscovery *)self didLoseDevice];
      (*(didLoseDevice2 + 16))(didLoseDevice2, bleDevice);
    }

    else
    {
      if (v22)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "FMDBluetoothDiscovery found change in beacon", buf, 2u);
      }

      devicesByIdentifier2 = [(FMDBluetoothDiscovery *)self devicesByIdentifier];
      didLoseDevice2 = [devicesByIdentifier2 objectForKeyedSubscript:v13];

      if (didLoseDevice2)
      {
        rssi2 = [bleDevice rssi];
        rssi3 = [didLoseDevice2 rssi];
        if (rssi2 - rssi3 >= 0)
        {
          v31 = rssi2 - rssi3;
        }

        else
        {
          v31 = rssi3 - rssi2;
        }

        v32 = sub_1000012D0(rssi3);
        v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
        if (v31 < 0x15)
        {
          if (v33)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "FMDBluetoothDiscovery checking change in advertisement packet", buf, 2u);
          }

          advertisementFields2 = [bleDevice advertisementFields];
          v35 = [advertisementFields2 objectForKeyedSubscript:@"hsStatus"];
          unsignedIntValue = [v35 unsignedIntValue];

          advertisementFields3 = [didLoseDevice2 advertisementFields];
          v37 = [advertisementFields3 objectForKeyedSubscript:@"hsStatus"];
          unsignedIntValue2 = [v37 unsignedIntValue];

          if (unsignedIntValue == unsignedIntValue2)
          {
            goto LABEL_38;
          }
        }

        else
        {
          if (v33)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "FMDBluetoothDiscovery found rssi change was significant", buf, 2u);
          }
        }
      }

      v39 = sub_1000012D0(v28);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        sub_1000042B4();
      }

      devicesByIdentifier3 = [(FMDBluetoothDiscovery *)self devicesByIdentifier];
      [devicesByIdentifier3 setObject:bleDevice forKeyedSubscript:v13];

      didDiscoverDevice = [(FMDBluetoothDiscovery *)self didDiscoverDevice];

      if (didDiscoverDevice)
      {
        v43 = sub_1000012D0(v42);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "FMDBluetoothDiscovery updating the callee with btle beacons", buf, 2u);
        }

        didDiscoverDevice2 = [(FMDBluetoothDiscovery *)self didDiscoverDevice];
        (didDiscoverDevice2)[2](didDiscoverDevice2, bleDevice);
      }
    }

LABEL_38:

LABEL_39:
    goto LABEL_40;
  }

  bleDevice = sub_1000012D0(_isDiscoveryActive);
  if (os_log_type_enabled(bleDevice, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, bleDevice, OS_LOG_TYPE_DEFAULT, "FMDBluetoothDiscovery is no longer active. Ignoring device.", buf, 2u);
  }

LABEL_40:

  objc_autoreleasePoolPop(v7);
}

@end