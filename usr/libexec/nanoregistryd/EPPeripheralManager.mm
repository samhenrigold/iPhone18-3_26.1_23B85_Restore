@interface EPPeripheralManager
- (CBPeripheralManager)manager;
- (void)peripheralManager:(id)manager central:(id)central didSubscribeToCharacteristic:(id)characteristic;
- (void)peripheralManager:(id)manager central:(id)central didUnsubscribeFromCharacteristic:(id)characteristic;
- (void)peripheralManager:(id)manager didAddService:(id)service error:(id)error;
- (void)peripheralManager:(id)manager didReceiveReadRequest:(id)request;
- (void)peripheralManager:(id)manager didReceiveWriteRequests:(id)requests;
- (void)peripheralManagerDidStartAdvertising:(id)advertising error:(id)error;
- (void)peripheralManagerDidUpdateState:(id)state;
- (void)peripheralManagerIsReadyToUpdateSubscribers:(id)subscribers;
@end

@implementation EPPeripheralManager

- (CBPeripheralManager)manager
{
  managerManager = [(EPPeripheralManager *)self managerManager];
  manager = [managerManager manager];

  return manager;
}

- (void)peripheralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  ownerDelegate = [(EPResource *)self ownerDelegate];
  v6 = objc_opt_respondsToSelector();
  if (v6)
  {
    v7 = sub_1000A98C0(v6);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      v10 = sub_1000A98C0(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = +[EPPairingAgentManager stringFromCBManagerState:](EPPairingAgentManager, "stringFromCBManagerState:", [stateCopy state]);
        v14 = 138412802;
        v15 = v12;
        v16 = 2048;
        v17 = ownerDelegate;
        v18 = 2112;
        v19 = v13;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Calling peripheralManagerDidUpdateState: on %@[%p] with %@", &v14, 0x20u);
      }
    }

    [ownerDelegate peripheralManagerDidUpdateState:stateCopy];
  }
}

- (void)peripheralManager:(id)manager didAddService:(id)service error:(id)error
{
  managerCopy = manager;
  serviceCopy = service;
  errorCopy = error;
  ownerDelegate = [(EPResource *)self ownerDelegate];
  v12 = objc_opt_respondsToSelector();
  if (v12)
  {
    v13 = sub_1000A98C0(v12);
    v14 = v13;
    if (errorCopy)
    {
      v15 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);

      if (v15)
      {
        v17 = sub_1000A98C0(v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = objc_opt_class();
          v19 = NSStringFromClass(v18);
          uUID = [serviceCopy UUID];
          uUIDString = [uUID UUIDString];
          v25 = 138413058;
          v26 = v19;
          v27 = 2048;
          v28 = ownerDelegate;
          v29 = 2112;
          v30 = uUIDString;
          v31 = 2112;
          v32 = errorCopy;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Calling peripheralManager:didAddService:error: on %@[%p] for service %@ with error %@", &v25, 0x2Au);
LABEL_9:

          goto LABEL_10;
        }

        goto LABEL_10;
      }
    }

    else
    {
      v22 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

      if (v22)
      {
        v17 = sub_1000A98C0(v23);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v24 = objc_opt_class();
          v19 = NSStringFromClass(v24);
          uUID = [serviceCopy UUID];
          uUIDString = [uUID UUIDString];
          v25 = 138412802;
          v26 = v19;
          v27 = 2048;
          v28 = ownerDelegate;
          v29 = 2112;
          v30 = uUIDString;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Calling peripheralManager:didAddService:error: on %@[%p] for service %@ with no error", &v25, 0x20u);
          goto LABEL_9;
        }

LABEL_10:
      }
    }

    [ownerDelegate peripheralManager:managerCopy didAddService:serviceCopy error:errorCopy];
  }
}

- (void)peripheralManager:(id)manager didReceiveReadRequest:(id)request
{
  managerCopy = manager;
  requestCopy = request;
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
        characteristic = [requestCopy characteristic];
        uUID = [characteristic UUID];
        uUIDString = [uUID UUIDString];
        v19 = 138412802;
        v20 = v15;
        v21 = 2048;
        v22 = ownerDelegate;
        v23 = 2112;
        v24 = uUIDString;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Calling peripheralManager:didReceiveReadRequest: on %@[%p] for characteristic %@", &v19, 0x20u);
      }
    }

    [ownerDelegate peripheralManager:managerCopy didReceiveReadRequest:requestCopy];
  }
}

- (void)peripheralManager:(id)manager didReceiveWriteRequests:(id)requests
{
  managerCopy = manager;
  requestsCopy = requests;
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
        firstObject = [requestsCopy firstObject];
        characteristic = [firstObject characteristic];
        uUID = [characteristic UUID];
        uUIDString = [uUID UUIDString];
        v20 = 138412802;
        v21 = v15;
        v22 = 2048;
        v23 = ownerDelegate;
        v24 = 2112;
        v25 = uUIDString;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Calling peripheralManager:didReceiveWriteRequests: on %@[%p] for characteristic %@", &v20, 0x20u);
      }
    }

    [ownerDelegate peripheralManager:managerCopy didReceiveWriteRequests:requestsCopy];
  }
}

- (void)peripheralManagerDidStartAdvertising:(id)advertising error:(id)error
{
  advertisingCopy = advertising;
  errorCopy = error;
  ownerDelegate = [(EPResource *)self ownerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [ownerDelegate peripheralManagerDidStartAdvertising:advertisingCopy error:errorCopy];
  }
}

- (void)peripheralManagerIsReadyToUpdateSubscribers:(id)subscribers
{
  subscribersCopy = subscribers;
  ownerDelegate = [(EPResource *)self ownerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [ownerDelegate peripheralManagerIsReadyToUpdateSubscribers:subscribersCopy];
  }
}

- (void)peripheralManager:(id)manager central:(id)central didSubscribeToCharacteristic:(id)characteristic
{
  managerCopy = manager;
  centralCopy = central;
  characteristicCopy = characteristic;
  ownerDelegate = [(EPResource *)self ownerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [ownerDelegate peripheralManager:managerCopy central:centralCopy didSubscribeToCharacteristic:characteristicCopy];
  }
}

- (void)peripheralManager:(id)manager central:(id)central didUnsubscribeFromCharacteristic:(id)characteristic
{
  managerCopy = manager;
  centralCopy = central;
  characteristicCopy = characteristic;
  ownerDelegate = [(EPResource *)self ownerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [ownerDelegate peripheralManager:managerCopy central:centralCopy didUnsubscribeFromCharacteristic:characteristicCopy];
  }
}

@end