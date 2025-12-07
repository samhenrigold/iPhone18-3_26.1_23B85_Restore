@interface EPCharacteristicReader
+ (id)stringForEPCharacteristicReaderState:(unint64_t)state;
- (EPCharacteristicReader)initWithDelegate:(id)delegate timeout:(double)timeout peripheral:(id)peripheral serviceUUID:(id)d characteristicUUID:(id)iD;
- (id)newDispatchTimerOfDuration:(double)duration withTimeoutBlock:(id)block;
- (void)_characteristicDiscoveryTimedOut;
- (void)_readFinishedWithError:(id)error withData:(id)data;
- (void)_readSequenceTimedOut;
- (void)_updateStateWithNewState:(unint64_t)state;
- (void)invalidate;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverServices:(id)services;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)read;
- (void)setState:(unint64_t)state;
- (void)update;
@end

@implementation EPCharacteristicReader

- (EPCharacteristicReader)initWithDelegate:(id)delegate timeout:(double)timeout peripheral:(id)peripheral serviceUUID:(id)d characteristicUUID:(id)iD
{
  delegateCopy = delegate;
  peripheralCopy = peripheral;
  dCopy = d;
  iDCopy = iD;
  v33.receiver = self;
  v33.super_class = EPCharacteristicReader;
  v16 = [(EPCharacteristicReader *)&v33 init];
  v17 = v16;
  if (v16)
  {
    v18 = sub_1000A98C0(v16);
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

    if (v19)
    {
      v21 = sub_1000A98C0(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        uUIDString = [iDCopy UUIDString];
        *buf = 134218242;
        v35 = v17;
        v36 = 2112;
        v37 = uUIDString;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "EPCharacteristicReader[%p]: init to read characteristic %@", buf, 0x16u);
      }
    }

    v17->_timeout = timeout;
    objc_storeWeak(&v17->_delegate, delegateCopy);
    v23 = +[EPFactory sharedFactory];
    agentManager = [v23 agentManager];
    v25 = [agentManager newCentralManagerWithDelegate:v17];
    central = v17->_central;
    v17->_central = v25;

    objc_storeStrong(&v17->_peripheral, peripheral);
    [peripheralCopy setDelegate:v17];
    objc_storeStrong(&v17->_serviceUUID, d);
    objc_storeStrong(&v17->_characteristicUUID, iD);
    v27 = +[NSMutableArray array];
    services = v17->_services;
    v17->_services = v27;

    v29 = +[EPFactory queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000AA2AC;
    block[3] = &unk_100175660;
    v32 = v17;
    dispatch_async(v29, block);
  }

  return v17;
}

- (id)newDispatchTimerOfDuration:(double)duration withTimeoutBlock:(id)block
{
  central = self->_central;
  blockCopy = block;
  resourceManager = [(EPResource *)central resourceManager];
  queue = [resourceManager queue];
  v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue);

  v10 = dispatch_time(0, (duration * 1000000000.0));
  dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_source_set_event_handler(v9, blockCopy);

  dispatch_resume(v9);
  return v9;
}

- (void)_readSequenceTimedOut
{
  v5 = NSLocalizedDescriptionKey;
  v6 = @"Timeout reading from Bluetooth characteristic";
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v4 = [NSError errorWithDomain:@"com.apple.nanoregistry.extensiblepair.read" code:555 userInfo:v3];

  [(EPCharacteristicReader *)self _readFinishedWithError:v4 withData:0];
}

- (void)_characteristicDiscoveryTimedOut
{
  v3 = sub_1000A98C0(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

  if (v4)
  {
    v6 = sub_1000A98C0(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100102798(self, v6);
    }
  }

  [(EPCharacteristicReader *)self _readFinishedWithError:0 withData:0];
}

- (void)_readFinishedWithError:(id)error withData:(id)data
{
  errorCopy = error;
  dataCopy = data;
  v8 = sub_1000A98C0(dataCopy);
  v9 = v8;
  if (!errorCopy)
  {
    v14 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v14)
    {
      v16 = sub_1000A98C0(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        selfCopy = self;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "EPCharacteristicReader[%p]: _readFinishedWithError no error", buf, 0xCu);
      }
    }

    ++self->_readAttemptCounter;
    self->_waitingForRead = 0;
    goto LABEL_13;
  }

  v10 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

  if (v10)
  {
    v12 = sub_1000A98C0(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100102810();
    }
  }

  readAttemptCounter = self->_readAttemptCounter;
  self->_readAttemptCounter = readAttemptCounter + 1;
  self->_waitingForRead = 0;
  if (readAttemptCounter >= 3)
  {
LABEL_13:
    readSequenceTimer = self->_readSequenceTimer;
    if (readSequenceTimer)
    {
      dispatch_source_cancel(readSequenceTimer);
      v18 = self->_readSequenceTimer;
      self->_readSequenceTimer = 0;
    }

    characteristicDiscoveryTimer = self->_characteristicDiscoveryTimer;
    if (characteristicDiscoveryTimer)
    {
      dispatch_source_cancel(characteristicDiscoveryTimer);
      v20 = self->_characteristicDiscoveryTimer;
      self->_characteristicDiscoveryTimer = 0;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    objc_storeWeak(&self->_delegate, 0);
    v22 = +[EPFactory queue];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000AA71C;
    v24[3] = &unk_1001756F8;
    v25 = errorCopy;
    v26 = WeakRetained;
    selfCopy2 = self;
    v28 = dataCopy;
    v23 = WeakRetained;
    dispatch_async(v22, v24);
  }
}

- (void)setState:(unint64_t)state
{
  if (self->_state != state)
  {
    self->_state = state;
  }

  [(EPCharacteristicReader *)self _updateStateWithNewState:?];
}

- (void)_updateStateWithNewState:(unint64_t)state
{
  if (state <= 1)
  {
    if (state)
    {
      if (state != 1)
      {
        return;
      }

      if (!self->_readSequenceTimer)
      {
        timeout = self->_timeout;
        v35[0] = _NSConcreteStackBlock;
        v35[1] = 3221225472;
        v35[2] = sub_1000AABD0;
        v35[3] = &unk_100175660;
        v35[4] = self;
        v7 = [(EPCharacteristicReader *)self newDispatchTimerOfDuration:v35 withTimeoutBlock:timeout];
        readSequenceTimer = self->_readSequenceTimer;
        self->_readSequenceTimer = v7;
      }

      if (!self->_connector)
      {
        v9 = [(EPPeripheralObserver *)self->_peripheral newConnectorWithDelegate:self];
        connector = self->_connector;
        self->_connector = v9;
      }

      [(NSMutableArray *)self->_services removeAllObjects];
      characteristic = self->_characteristic;
      self->_characteristic = 0;
    }

    else
    {
      v29 = self->_readSequenceTimer;
      if (v29)
      {
        dispatch_source_cancel(v29);
        v30 = self->_readSequenceTimer;
        self->_readSequenceTimer = 0;
      }

      characteristicDiscoveryTimer = self->_characteristicDiscoveryTimer;
      if (characteristicDiscoveryTimer)
      {
        dispatch_source_cancel(characteristicDiscoveryTimer);
        v32 = self->_characteristicDiscoveryTimer;
        self->_characteristicDiscoveryTimer = 0;
      }

      [(NSMutableArray *)self->_services removeAllObjects];
      v33 = self->_characteristic;
      self->_characteristic = 0;

      characteristic = self->_connector;
      self->_connector = 0;
    }

    self->_waitingForRead = 0;
  }

  else
  {
    switch(state)
    {
      case 2uLL:
        if ([(EPResource *)self->_peripheral availability]== 1)
        {
          v12 = sub_1000A98C0(1);
          v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

          if (v13)
          {
            v15 = sub_1000A98C0(v14);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              uUIDString = [(CBUUID *)self->_serviceUUID UUIDString];
              *buf = 134218242;
              selfCopy2 = self;
              v39 = 2112;
              v40 = uUIDString;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "EPCharacteristicReader[%p]: Calling CoreBluetooth CBPeripheral discoverServices: %@", buf, 0x16u);
            }
          }

          peripheral = [(EPPeripheralObserver *)self->_peripheral peripheral];
          serviceUUID = self->_serviceUUID;
          v18 = [NSArray arrayWithObjects:&serviceUUID count:1];
          [peripheral discoverServices:v18];

          [(EPCharacteristicReader *)self setState:3];
        }

        break;
      case 4uLL:
        if ([(EPResource *)self->_peripheral availability]== 1)
        {
          if (!self->_characteristicDiscoveryTimer)
          {
            v34[0] = _NSConcreteStackBlock;
            v34[1] = 3221225472;
            v34[2] = sub_1000AAC14;
            v34[3] = &unk_100175660;
            v34[4] = self;
            v19 = [(EPCharacteristicReader *)self newDispatchTimerOfDuration:v34 withTimeoutBlock:1.5];
            v20 = self->_characteristicDiscoveryTimer;
            self->_characteristicDiscoveryTimer = v19;
          }

          firstObject = [(NSMutableArray *)self->_services firstObject];
          if (firstObject)
          {
            v22 = sub_1000A98C0([(NSMutableArray *)self->_services removeObjectAtIndex:0]);
            v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);

            if (v23)
            {
              v25 = sub_1000A98C0(v24);
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                uUIDString2 = [(CBUUID *)self->_characteristicUUID UUIDString];
                *buf = 134218498;
                selfCopy2 = self;
                v39 = 2112;
                v40 = uUIDString2;
                v41 = 2048;
                v42 = firstObject;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "EPCharacteristicReader[%p]: Calling CoreBluetooth CBPeripheral discoverCharacteristics: %@ service: %p", buf, 0x20u);
              }
            }

            peripheral2 = [(EPPeripheralObserver *)self->_peripheral peripheral];
            characteristicUUID = self->_characteristicUUID;
            v28 = [NSArray arrayWithObjects:&characteristicUUID count:1];
            [peripheral2 discoverCharacteristics:v28 forService:firstObject];

            [(EPCharacteristicReader *)self setState:5];
          }
        }

        break;
      case 6uLL:
        v4 = self->_characteristicDiscoveryTimer;
        if (v4)
        {
          dispatch_source_cancel(v4);
          v5 = self->_characteristicDiscoveryTimer;
          self->_characteristicDiscoveryTimer = 0;
        }

        if ([(EPResource *)self->_peripheral availability]== 1 && !self->_waitingForRead)
        {
          self->_waitingForRead = 1;

          [(EPCharacteristicReader *)self read];
        }

        break;
    }
  }
}

- (void)read
{
  v3 = sub_1000A98C0(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = sub_1000A98C0(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      characteristic = self->_characteristic;
      v9 = 134218242;
      selfCopy = self;
      v11 = 2112;
      v12 = characteristic;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "EPCharacteristicReader[%p]: Calling CoreBluetooth CBPeripheral readValueForCharacteristic: for characteristic %@", &v9, 0x16u);
    }
  }

  peripheral = [(EPPeripheralObserver *)self->_peripheral peripheral];
  [peripheral readValueForCharacteristic:self->_characteristic];
}

- (void)invalidate
{
  v3 = sub_1000A98C0(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = sub_1000A98C0(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "EPCharacteristicReader[%p]: invalidate call", &v7, 0xCu);
    }
  }

  self->_invalidated = 1;
  [(EPCharacteristicReader *)self update];
}

- (void)update
{
  if (self->_invalidated)
  {
    goto LABEL_2;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (!WeakRetained)
  {
    if (!self->_invalidated)
    {
      v3 = 0;
LABEL_11:
      [(EPCharacteristicReader *)self _readFinishedWithError:v3 withData:0];
      [(EPCharacteristicReader *)self setState:0];
      [(EPResource *)self->_central invalidate];
      central = self->_central;
      self->_central = 0;

      [(EPResource *)self->_peripheral invalidate];
      peripheral = self->_peripheral;
      self->_peripheral = 0;

      [(EPResource *)self->_connector invalidate];
      connector = self->_connector;
      self->_connector = 0;

      return;
    }

LABEL_2:
    v3 = objc_loadWeakRetained(&self->_delegate);

    if (v3)
    {
      v13 = NSLocalizedDescriptionKey;
      v14 = @"Reader invalidated";
      v4 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      v3 = [NSError errorWithDomain:@"com.apple.nanoregistry.extensiblepair.read" code:666 userInfo:v4];
    }

    goto LABEL_11;
  }

  if ([(EPResource *)self->_central availability]!= 1)
  {
    if (![(EPCharacteristicReader *)self state])
    {
      return;
    }

    selfCopy5 = self;
    v9 = 0;
    goto LABEL_23;
  }

  availability = [(EPResource *)self->_connector availability];
  state = [(EPCharacteristicReader *)self state];
  if (availability != 1)
  {
    if (state == 1)
    {
      return;
    }

LABEL_16:
    selfCopy5 = self;
    v9 = 1;
    goto LABEL_23;
  }

  if (state != 1)
  {
    if ([(EPCharacteristicReader *)self state]== 3)
    {
      if (![(NSMutableArray *)self->_services count])
      {
        return;
      }

      selfCopy5 = self;
      v9 = 4;
      goto LABEL_23;
    }

    if ([(EPCharacteristicReader *)self state]== 5)
    {
      if (!self->_characteristic)
      {
        return;
      }

      [(NSMutableArray *)self->_services removeAllObjects];
      selfCopy5 = self;
      v9 = 6;
      goto LABEL_23;
    }

    if ([(EPCharacteristicReader *)self state])
    {
      return;
    }

    goto LABEL_16;
  }

  selfCopy5 = self;
  v9 = 2;
LABEL_23:

  [(EPCharacteristicReader *)selfCopy5 setState:v9];
}

- (void)peripheral:(id)peripheral didDiscoverServices:(id)services
{
  peripheralCopy = peripheral;
  identifier = [peripheralCopy identifier];
  peripheral = [(EPPeripheralObserver *)self->_peripheral peripheral];
  identifier2 = [peripheral identifier];
  v10 = [identifier isEqual:identifier2];

  if (v10 && [(EPCharacteristicReader *)self state]== 3)
  {
    if (services)
    {
      [(EPCharacteristicReader *)self setState:1];
LABEL_37:
      [(EPCharacteristicReader *)self update];
      goto LABEL_38;
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    services = [peripheralCopy services];
    v12 = [services countByEnumeratingWithState:&v49 objects:v60 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v50;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v50 != v14)
          {
            objc_enumerationMutation(services);
          }

          v16 = *(*(&v49 + 1) + 8 * i);
          uUID = [v16 UUID];
          v18 = [uUID isEqual:self->_serviceUUID];

          if (v18)
          {
            [(NSMutableArray *)self->_services addObject:v16];
          }
        }

        v13 = [services countByEnumeratingWithState:&v49 objects:v60 count:16];
      }

      while (v13);
    }

    v19 = [(NSMutableArray *)self->_services count];
    if (v19)
    {
      v20 = sub_1000A98C0(v19);
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

      if (!v21)
      {
        goto LABEL_37;
      }

      v23 = sub_1000A98C0(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        selfCopy3 = self;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "EPCharacteristicReader[%p]: Found service", buf, 0xCu);
      }
    }

    else
    {
      v23 = objc_alloc_init(NSMutableArray);
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v44 = peripheralCopy;
      services2 = [peripheralCopy services];
      v25 = [services2 countByEnumeratingWithState:&v45 objects:v59 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v46;
        do
        {
          for (j = 0; j != v26; j = j + 1)
          {
            if (*v46 != v27)
            {
              objc_enumerationMutation(services2);
            }

            v29 = *(*(&v45 + 1) + 8 * j);
            uUID2 = [(CBUUID *)v29 UUID];
            uUIDString = [uUID2 UUIDString];

            if (uUIDString)
            {
              [v23 addObject:uUIDString];
            }

            else
            {
              v33 = sub_1000A98C0(v32);
              v34 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);

              if (v34)
              {
                v36 = sub_1000A98C0(v35);
                if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218242;
                  selfCopy3 = self;
                  v55 = 2112;
                  v56 = v29;
                  _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "EPCharacteristicReader[%p]: CBService %@ has nil UUID", buf, 0x16u);
                }
              }
            }
          }

          v26 = [services2 countByEnumeratingWithState:&v45 objects:v59 count:16];
        }

        while (v26);
      }

      v38 = sub_1000A98C0(v37);
      v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);

      peripheralCopy = v44;
      if (v39)
      {
        v41 = sub_1000A98C0(v40);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          serviceUUID = self->_serviceUUID;
          v43 = [v23 componentsJoinedByString:@", "];
          *buf = 134218498;
          selfCopy3 = self;
          v55 = 2114;
          v56 = serviceUUID;
          v57 = 2112;
          v58 = v43;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "EPCharacteristicReader[%p]: Did not find service %{public}@, services device has: [%@]", buf, 0x20u);
        }
      }

      [(EPCharacteristicReader *)self _readFinishedWithError:0 withData:0];
    }

    goto LABEL_37;
  }

LABEL_38:
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  serviceCopy = service;
  errorCopy = error;
  identifier = [peripheral identifier];
  peripheral = [(EPPeripheralObserver *)self->_peripheral peripheral];
  identifier2 = [peripheral identifier];
  v13 = [identifier isEqual:identifier2];

  if (v13)
  {
    v15 = sub_1000A98C0(v14);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

    if (v16)
    {
      v18 = sub_1000A98C0(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        selfCopy4 = self;
        v46 = 2112;
        v47 = errorCopy;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "EPCharacteristicReader[%p]: CoreBluetooth CBPeripheralDelegate peripheral:didDiscoverCharacteristicsForService with error %@", buf, 0x16u);
      }
    }

    if ([(EPCharacteristicReader *)self state]== 5)
    {
      if (errorCopy)
      {
        selfCopy5 = self;
        v20 = 1;
      }

      else
      {
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        characteristics = [serviceCopy characteristics];
        v22 = [characteristics countByEnumeratingWithState:&v39 objects:v43 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v40;
          while (2)
          {
            for (i = 0; i != v23; i = i + 1)
            {
              if (*v40 != v24)
              {
                objc_enumerationMutation(characteristics);
              }

              v26 = *(*(&v39 + 1) + 8 * i);
              uUID = [v26 UUID];
              v28 = [uUID isEqual:self->_characteristicUUID];

              if (v28)
              {
                objc_storeStrong(&self->_characteristic, v26);
                goto LABEL_22;
              }
            }

            v23 = [characteristics countByEnumeratingWithState:&v39 objects:v43 count:16];
            if (v23)
            {
              continue;
            }

            break;
          }
        }

LABEL_22:

        if (self->_characteristic)
        {
          v30 = sub_1000A98C0(v29);
          v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);

          if (v31)
          {
            v33 = sub_1000A98C0(v32);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218240;
              selfCopy4 = self;
              v46 = 2048;
              v47 = serviceCopy;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "EPCharacteristicReader[%p]: Found characteristic on service %p", buf, 0x16u);
            }
          }

          goto LABEL_10;
        }

        v34 = [(NSMutableArray *)self->_services count];
        if (!v34)
        {
LABEL_10:
          [(EPCharacteristicReader *)self update];
          goto LABEL_11;
        }

        v35 = sub_1000A98C0(v34);
        v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);

        if (v36)
        {
          v38 = sub_1000A98C0(v37);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218240;
            selfCopy4 = self;
            v46 = 2048;
            v47 = serviceCopy;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "EPCharacteristicReader[%p]: Did not find characteristic on service %p, yet", buf, 0x16u);
          }
        }

        selfCopy5 = self;
        v20 = 4;
      }

      [(EPCharacteristicReader *)selfCopy5 setState:v20];
      goto LABEL_10;
    }
  }

LABEL_11:
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  identifier = [peripheralCopy identifier];
  peripheral = [(EPPeripheralObserver *)self->_peripheral peripheral];
  identifier2 = [peripheral identifier];
  if (([identifier isEqual:identifier2] & 1) == 0)
  {

    goto LABEL_11;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (!WeakRetained || [(EPCharacteristicReader *)self state]!= 6)
  {
    goto LABEL_13;
  }

  identifier = [characteristicCopy UUID];
  peripheral = [(CBCharacteristic *)self->_characteristic UUID];
  if (([identifier isEqual:peripheral] & 1) == 0)
  {
LABEL_11:

LABEL_12:
    goto LABEL_13;
  }

  identifier3 = [peripheralCopy identifier];
  peripheral2 = [(EPPeripheralObserver *)self->_peripheral peripheral];
  identifier4 = [peripheral2 identifier];
  v18 = [identifier3 isEqual:identifier4];

  if (v18)
  {
    v20 = sub_1000A98C0(v19);
    v21 = v20;
    if (errorCopy)
    {
      v22 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);

      if (v22)
      {
        v24 = sub_1000A98C0(v23);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_100102878();
        }

LABEL_17:
      }
    }

    else
    {
      v25 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

      if (v25)
      {
        v24 = sub_1000A98C0(v26);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          value = [characteristicCopy value];
          v28 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [value length]);
          v31 = 134218242;
          selfCopy = self;
          v33 = 2112;
          v34 = v28;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "EPCharacteristicReader[%p]: CoreBluetooth CBPeripheralDelegate peripheral:didUpdateValueForCharacteristic with no error length = %@", &v31, 0x16u);
        }

        goto LABEL_17;
      }
    }

    domain = [errorCopy domain];
    if ([domain isEqual:CBATTErrorDomain])
    {
      code = [errorCopy code];

      if (code == 241)
      {
        [(EPCharacteristicReader *)self setState:1];
        [(EPCharacteristicReader *)self update];
        goto LABEL_13;
      }
    }

    else
    {
    }

    identifier = [characteristicCopy value];
    [(EPCharacteristicReader *)self _readFinishedWithError:errorCopy withData:identifier];
    goto LABEL_12;
  }

LABEL_13:
}

+ (id)stringForEPCharacteristicReaderState:(unint64_t)state
{
  if (state > 6)
  {
    return @"EPCharacteristicReaderState unknown";
  }

  else
  {
    return *(&off_1001789E8 + state);
  }
}

@end