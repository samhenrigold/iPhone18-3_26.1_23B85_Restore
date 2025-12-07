@interface EPPeripheralObserver
- (CBPeripheral)peripheral;
- (id)newConnectorWithDelegate:(id)delegate;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverServices:(id)services;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error;
@end

@implementation EPPeripheralObserver

- (CBPeripheral)peripheral
{
  resourceManager = [(EPResource *)self resourceManager];
  peripheral = [resourceManager peripheral];

  return peripheral;
}

- (id)newConnectorWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  resourceManager = [(EPResource *)self resourceManager];
  v6 = [resourceManager newConnectorWithDelegate:delegateCopy];

  return v6;
}

- (void)peripheral:(id)peripheral didDiscoverServices:(id)services
{
  peripheralCopy = peripheral;
  servicesCopy = services;
  ownerDelegate = [(EPResource *)self ownerDelegate];
  v9 = objc_opt_respondsToSelector();
  if (v9)
  {
    v10 = sub_1000A98C0(v9);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v13 = sub_1000A98C0(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = 138412546;
        v17 = v15;
        v18 = 2048;
        v19 = ownerDelegate;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Calling peripheral:didDiscoverServices: on %@[%p]", &v16, 0x16u);
      }
    }

    [ownerDelegate peripheral:peripheralCopy didDiscoverServices:servicesCopy];
  }
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  peripheralCopy = peripheral;
  serviceCopy = service;
  errorCopy = error;
  ownerDelegate = [(EPResource *)self ownerDelegate];
  v12 = objc_opt_respondsToSelector();
  if (v12)
  {
    v13 = sub_1000A98C0(v12);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

    if (v14)
    {
      v16 = sub_1000A98C0(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = 138412546;
        v20 = v18;
        v21 = 2048;
        v22 = ownerDelegate;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Calling peripheral:didDiscoverCharacteristicsForService:error: on %@[%p]", &v19, 0x16u);
      }
    }

    [ownerDelegate peripheral:peripheralCopy didDiscoverCharacteristicsForService:serviceCopy error:errorCopy];
  }
}

- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  ownerDelegate = [(EPResource *)self ownerDelegate];
  v12 = objc_opt_respondsToSelector();
  if (v12)
  {
    v13 = sub_1000A98C0(v12);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

    if (v14)
    {
      v16 = sub_1000A98C0(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = 138412546;
        v20 = v18;
        v21 = 2048;
        v22 = ownerDelegate;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Calling peripheral:didWriteValueForCharacteristic:error: on %@[%p]", &v19, 0x16u);
      }
    }

    [ownerDelegate peripheral:peripheralCopy didWriteValueForCharacteristic:characteristicCopy error:errorCopy];
  }
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  ownerDelegate = [(EPResource *)self ownerDelegate];
  v12 = objc_opt_respondsToSelector();
  if (v12)
  {
    v13 = sub_1000A98C0(v12);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

    if (v14)
    {
      v16 = sub_1000A98C0(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = 138412546;
        v20 = v18;
        v21 = 2048;
        v22 = ownerDelegate;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Calling peripheral:didUpdateValueForCharacteristic:error: on %@[%p]", &v19, 0x16u);
      }
    }

    [ownerDelegate peripheral:peripheralCopy didUpdateValueForCharacteristic:characteristicCopy error:errorCopy];
  }
}

@end