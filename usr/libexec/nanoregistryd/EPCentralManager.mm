@interface EPCentralManager
- (CBCentralManager)manager;
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i;
- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManager:(id)manager didUpdatePeripheralConnectionState:(id)state;
- (void)centralManagerDidUpdateState:(id)state;
@end

@implementation EPCentralManager

- (CBCentralManager)manager
{
  managerManager = [(EPCentralManager *)self managerManager];
  manager = [managerManager manager];

  return manager;
}

- (void)centralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  v5 = sub_1000A98C0(stateCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = sub_1000A98C0(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = +[EPPairingAgentManager stringFromCBManagerState:](EPPairingAgentManager, "stringFromCBManagerState:", [stateCopy state]);
      v19 = 134218242;
      selfCopy2 = self;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "EPCentralManagerManager[%p]: Received centralManagerDidUpdateState: with %@", &v19, 0x16u);
    }
  }

  ownerDelegate = [(EPResource *)self ownerDelegate];
  v11 = objc_opt_respondsToSelector();
  if (v11)
  {
    v12 = sub_1000A98C0(v11);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      v15 = sub_1000A98C0(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = +[EPPairingAgentManager stringFromCBManagerState:](EPPairingAgentManager, "stringFromCBManagerState:", [stateCopy state]);
        v19 = 134218754;
        selfCopy2 = self;
        v21 = 2112;
        v22 = v17;
        v23 = 2048;
        v24 = ownerDelegate;
        v25 = 2112;
        v26 = v18;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "EPCentralManagerManager[%p]: Calling centralManagerDidUpdateState: on %@[%p] with %@", &v19, 0x2Au);
      }
    }

    [ownerDelegate centralManagerDidUpdateState:stateCopy];
  }
}

- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  v8 = sub_1000A98C0(peripheralCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = sub_1000A98C0(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [peripheralCopy identifier];
      uUIDString = [identifier UUIDString];
      v24 = 134218242;
      selfCopy2 = self;
      v26 = 2112;
      v27 = uUIDString;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "EPCentralManagerManager[%p]: Received central:didConnectPeripheral: with peripheral %@", &v24, 0x16u);
    }
  }

  ownerDelegate = [(EPResource *)self ownerDelegate];
  v15 = objc_opt_respondsToSelector();
  if (v15)
  {
    v16 = sub_1000A98C0(v15);
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

    if (v17)
    {
      v19 = sub_1000A98C0(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        identifier2 = [peripheralCopy identifier];
        uUIDString2 = [identifier2 UUIDString];
        v24 = 134218754;
        selfCopy2 = self;
        v26 = 2112;
        v27 = v21;
        v28 = 2048;
        v29 = ownerDelegate;
        v30 = 2112;
        v31 = uUIDString2;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "EPCentralManagerManager[%p]: Calling central:didConnectPeripheral: on %@[%p] with peripheral %@", &v24, 0x2Au);
      }
    }

    [ownerDelegate centralManager:managerCopy didConnectPeripheral:peripheralCopy];
  }
}

- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  errorCopy = error;
  v11 = sub_1000A98C0(errorCopy);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v14 = sub_1000A98C0(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [peripheralCopy identifier];
      uUIDString = [identifier UUIDString];
      v27 = 134218498;
      selfCopy2 = self;
      v29 = 2112;
      v30 = uUIDString;
      v31 = 2112;
      v32 = errorCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "EPCentralManagerManager[%p]: Received central:didDisconnectPeripheral: with peripheral %@ with error %@", &v27, 0x20u);
    }
  }

  ownerDelegate = [(EPResource *)self ownerDelegate];
  v18 = objc_opt_respondsToSelector();
  if (v18)
  {
    v19 = sub_1000A98C0(v18);
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

    if (v20)
    {
      v22 = sub_1000A98C0(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        identifier2 = [peripheralCopy identifier];
        uUIDString2 = [identifier2 UUIDString];
        v27 = 134219010;
        selfCopy2 = self;
        v29 = 2112;
        v30 = v24;
        v31 = 2048;
        v32 = ownerDelegate;
        v33 = 2112;
        v34 = uUIDString2;
        v35 = 2112;
        v36 = errorCopy;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "EPCentralManagerManager[%p]: Calling central:didDisconnectPeripheral: on %@[%p] with peripheral %@ with error %@", &v27, 0x34u);
      }
    }

    [ownerDelegate centralManager:managerCopy didDisconnectPeripheral:peripheralCopy error:errorCopy];
  }
}

- (void)centralManager:(id)manager didUpdatePeripheralConnectionState:(id)state
{
  managerCopy = manager;
  stateCopy = state;
  v8 = sub_1000A98C0(stateCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = sub_1000A98C0(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [stateCopy identifier];
      uUIDString = [identifier UUIDString];
      v24 = 134218242;
      selfCopy2 = self;
      v26 = 2112;
      v27 = uUIDString;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "EPCentralManagerManager[%p]: Received central:didUpdatePeripheralConnectionState: with peripheral %@", &v24, 0x16u);
    }
  }

  ownerDelegate = [(EPResource *)self ownerDelegate];
  v15 = objc_opt_respondsToSelector();
  if (v15)
  {
    v16 = sub_1000A98C0(v15);
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

    if (v17)
    {
      v19 = sub_1000A98C0(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        identifier2 = [stateCopy identifier];
        uUIDString2 = [identifier2 UUIDString];
        v24 = 134218754;
        selfCopy2 = self;
        v26 = 2112;
        v27 = v21;
        v28 = 2048;
        v29 = ownerDelegate;
        v30 = 2112;
        v31 = uUIDString2;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "EPCentralManagerManager[%p]: Calling central:didUpdatePeripheralConnectionState: on %@[%p] with peripheral %@", &v24, 0x2Au);
      }
    }

    [ownerDelegate centralManager:managerCopy didUpdatePeripheralConnectionState:stateCopy];
  }
}

- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  errorCopy = error;
  v11 = sub_1000A98C0(errorCopy);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v14 = sub_1000A98C0(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [peripheralCopy identifier];
      uUIDString = [identifier UUIDString];
      v31 = 134218498;
      selfCopy3 = self;
      v33 = 2112;
      v34 = uUIDString;
      v35 = 2112;
      v36 = errorCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "EPCentralManagerManager[%p]: Received central:didFailToConnectPeripheral: with peripheral %@ with error %@", &v31, 0x20u);
    }
  }

  ownerDelegate = [(EPResource *)self ownerDelegate];
  v18 = objc_opt_respondsToSelector();
  if (v18)
  {
    v19 = sub_1000A98C0(v18);
    v20 = v19;
    if (errorCopy)
    {
      v21 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);

      if (v21)
      {
        v23 = sub_1000A98C0(v22);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = objc_opt_class();
          v25 = NSStringFromClass(v24);
          identifier2 = [peripheralCopy identifier];
          uUIDString2 = [identifier2 UUIDString];
          v31 = 134219010;
          selfCopy3 = self;
          v33 = 2112;
          v34 = v25;
          v35 = 2048;
          v36 = ownerDelegate;
          v37 = 2112;
          v38 = uUIDString2;
          v39 = 2112;
          v40 = errorCopy;
          _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "EPCentralManagerManager[%p]: Calling central:didFailToConnectPeripheral: on %@[%p] with peripheral %@ with error %@", &v31, 0x34u);
LABEL_13:

          goto LABEL_14;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v28 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

      if (v28)
      {
        v23 = sub_1000A98C0(v29);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v30 = objc_opt_class();
          v25 = NSStringFromClass(v30);
          identifier2 = [peripheralCopy identifier];
          uUIDString2 = [identifier2 UUIDString];
          v31 = 134218754;
          selfCopy3 = self;
          v33 = 2112;
          v34 = v25;
          v35 = 2048;
          v36 = ownerDelegate;
          v37 = 2112;
          v38 = uUIDString2;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "EPCentralManagerManager[%p]: Calling central:didFailToConnectPeripheral: on %@[%p] with peripheral %@ with no error", &v31, 0x2Au);
          goto LABEL_13;
        }

LABEL_14:
      }
    }

    [ownerDelegate centralManager:managerCopy didFailToConnectPeripheral:peripheralCopy error:errorCopy];
  }
}

- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  dataCopy = data;
  iCopy = i;
  ownerDelegate = [(EPResource *)self ownerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [ownerDelegate centralManager:managerCopy didDiscoverPeripheral:peripheralCopy advertisementData:dataCopy RSSI:iCopy];
  }
}

@end