@interface EPCentralManagerManager
+ (id)stringForCBPeripheralState:(int64_t)state;
- (EPCentralManagerManager)init;
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i;
- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManager:(id)manager didUpdatePeripheralConnectionState:(id)state;
- (void)centralManagerDidUpdateState:(id)state;
- (void)createResource;
- (void)destroyResource;
@end

@implementation EPCentralManagerManager

- (EPCentralManagerManager)init
{
  v3 = +[EPFactory queue];
  v6.receiver = self;
  v6.super_class = EPCentralManagerManager;
  v4 = [(EPResourceManager *)&v6 initWithQueue:v3];

  return v4;
}

- (void)createResource
{
  v14.receiver = self;
  v14.super_class = EPCentralManagerManager;
  [(EPResourceManager *)&v14 createResource];
  v3 = [CBCentralManager alloc];
  queue = [(EPResourceManager *)self queue];
  v5 = [v3 initWithDelegate:self queue:queue];
  manager = self->_manager;
  self->_manager = v5;

  v8 = sub_1000A98C0(v7);
  LODWORD(queue) = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (queue)
  {
    v10 = sub_1000A98C0(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_manager;
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 134218754;
      selfCopy = self;
      v17 = 2048;
      v18 = v11;
      v19 = 2112;
      v20 = v13;
      v21 = 2048;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "EPCentralManagerManager[%p]: Init CBCentralManager %p with delgate %@[%p]", buf, 0x2Au);
    }
  }
}

- (void)destroyResource
{
  v10.receiver = self;
  v10.super_class = EPCentralManagerManager;
  destroyResource = [(EPResourceManager *)&v10 destroyResource];
  v4 = sub_1000A98C0(destroyResource);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = sub_1000A98C0(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      manager = self->_manager;
      *buf = 134218240;
      selfCopy = self;
      v13 = 2048;
      v14 = manager;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "EPCentralManagerManager[%p]: Nilling CBCentralManager %p", buf, 0x16u);
    }
  }

  v9 = self->_manager;
  self->_manager = 0;
}

- (void)centralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  state = [stateCopy state];
  v6 = 0;
  if (state <= 3)
  {
    if (state == 2)
    {
      v16 = NSLocalizedDescriptionKey;
      v17 = @"Bluetooth is not supported";
      v8 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      v9 = 3;
    }

    else
    {
      v7 = 0;
      if (state != 3)
      {
        goto LABEL_12;
      }

      v14 = NSLocalizedDescriptionKey;
      v15 = @"Bluetooth is unauthorized";
      v8 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v9 = 4;
    }

    v7 = [NSError errorWithDomain:@"com.apple.extensiblepair.corebluetooth.centralmanager" code:v9 userInfo:v8];

    v6 = 2;
    goto LABEL_12;
  }

  if (state == 4)
  {
    v18 = NSLocalizedDescriptionKey;
    v19 = @"Bluetooth is powered off";
    v10 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v6 = 2;
    v7 = [NSError errorWithDomain:@"com.apple.extensiblepair.corebluetooth.centralmanager" code:2 userInfo:v10];
  }

  else if (state == 10 || (v7 = 0, state == 5))
  {
    v7 = 0;
    v6 = 1;
  }

LABEL_12:
  [(EPResourceManager *)self setAvailability:v6 withError:v7];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10008DBD8;
  v12[3] = &unk_1001785C0;
  v13 = stateCopy;
  v11 = stateCopy;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v12];
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
      *buf = 134218242;
      selfCopy = self;
      v21 = 2112;
      v22 = uUIDString;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "EPCentralManagerManager[%p]: received centralManager:didConnectPeripheral: from CoreBluetooth for peripheral %@", buf, 0x16u);
    }
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10008DD78;
  v16[3] = &unk_100175998;
  v17 = managerCopy;
  v18 = peripheralCopy;
  v14 = peripheralCopy;
  v15 = managerCopy;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v16];
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
      *buf = 134218242;
      selfCopy = self;
      v26 = 2112;
      v27 = uUIDString;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "EPCentralManagerManager[%p]: received centralManager:didDisconnectPeripheral: from CoreBluetooth for peripheral %@", buf, 0x16u);
    }
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10008DF44;
  v20[3] = &unk_1001759C0;
  v21 = managerCopy;
  v22 = peripheralCopy;
  v23 = errorCopy;
  v17 = errorCopy;
  v18 = peripheralCopy;
  v19 = managerCopy;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v20];
}

+ (id)stringForCBPeripheralState:(int64_t)state
{
  if (state > 3)
  {
    return 0;
  }

  else
  {
    return off_100178698[state];
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
      v14 = [objc_opt_class() stringForCBPeripheralState:{objc_msgSend(stateCopy, "state")}];
      *buf = 134218498;
      selfCopy = self;
      v22 = 2112;
      v23 = uUIDString;
      v24 = 2112;
      v25 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "EPCentralManagerManager[%p]: received centralManager:didUpdatePeripheralConnectionState: from CoreBluetooth for peripheral %@ to connectivity state %@", buf, 0x20u);
    }
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10008E144;
  v17[3] = &unk_100175998;
  v18 = managerCopy;
  v19 = stateCopy;
  v15 = stateCopy;
  v16 = managerCopy;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v17];
}

- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10008E230;
  v11[3] = &unk_1001759C0;
  managerCopy = manager;
  peripheralCopy = peripheral;
  errorCopy = error;
  v8 = errorCopy;
  v9 = peripheralCopy;
  v10 = managerCopy;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v11];
}

- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10008E348;
  v14[3] = &unk_100178678;
  managerCopy = manager;
  peripheralCopy = peripheral;
  dataCopy = data;
  iCopy = i;
  v10 = iCopy;
  v11 = dataCopy;
  v12 = peripheralCopy;
  v13 = managerCopy;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v14];
}

@end