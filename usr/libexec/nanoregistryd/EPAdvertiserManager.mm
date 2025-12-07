@interface EPAdvertiserManager
- (EPAdvertiserManager)init;
- (id)newAdvertiserWithDelegate:(id)delegate;
- (void)addCharacteristic:(id)characteristic encryptionRequired:(BOOL)required withReadHandler:(id)handler writeHandler:(id)writeHandler;
- (void)collection:(id)collection deviceDidAppear:(id)appear;
- (void)collection:(id)collection deviceDidDisappear:(id)disappear;
- (void)collection:(id)collection deviceInfoDidDealloc:(id)dealloc;
- (void)createResource;
- (void)destroyResource;
- (void)pairingAgent:(id)agent peerDidRequestPairing:(id)pairing type:(int64_t)type passkey:(id)passkey;
- (void)peripheralManager:(id)manager didAddService:(id)service error:(id)error;
- (void)peripheralManager:(id)manager didReceiveReadRequest:(id)request;
- (void)peripheralManager:(id)manager didReceiveWriteRequests:(id)requests;
- (void)peripheralManagerDidStartAdvertising:(id)advertising error:(id)error;
- (void)removeCharacteristic:(id)characteristic;
- (void)setAdvertisingRate:(unint64_t)rate;
- (void)setDontAdvertiseWithServiceUUID:(BOOL)d;
- (void)setName:(id)name;
- (void)setNotAvailableToPair:(BOOL)pair;
- (void)update;
@end

@implementation EPAdvertiserManager

- (void)addCharacteristic:(id)characteristic encryptionRequired:(BOOL)required withReadHandler:(id)handler writeHandler:(id)writeHandler
{
  requiredCopy = required;
  characteristicCopy = characteristic;
  writeHandlerCopy = writeHandler;
  handlerCopy = handler;
  v12 = objc_opt_new();
  [v12 setCharacteristicUUID:characteristicCopy];
  [v12 setEncryptionRequired:requiredCopy];
  [v12 setReadHandler:handlerCopy];

  [v12 setWriteHandler:writeHandlerCopy];
  v13 = [(NSMutableDictionary *)self->_characteristics objectForKeyedSubscript:characteristicCopy];
  if ([(EPResourceManager *)self referenceCounter])
  {
    if (v13)
    {
      characteristic = [v13 characteristic];
      characteristic2 = [v12 characteristic];
      if (([characteristic isEqual:characteristic2] & 1) == 0)
      {
        self->_shouldUpdateCharacteristics = 1;
      }
    }

    else
    {
      self->_shouldUpdateCharacteristics = 1;
    }
  }

  [(NSMutableDictionary *)self->_characteristics setObject:v12 forKeyedSubscript:characteristicCopy];
  if (self->_shouldUpdateCharacteristics)
  {
    [(EPAdvertiserManager *)self update];
  }
}

- (void)removeCharacteristic:(id)characteristic
{
  characteristics = self->_characteristics;
  characteristicCopy = characteristic;
  v8 = [(NSMutableDictionary *)characteristics objectForKeyedSubscript:characteristicCopy];
  [(NSMutableDictionary *)self->_characteristics removeObjectForKey:characteristicCopy];

  referenceCounter = [(EPResourceManager *)self referenceCounter];
  v7 = v8;
  if (referenceCounter && v8)
  {
    self->_shouldUpdateCharacteristics = 1;
    referenceCounter = [(EPAdvertiserManager *)self update];
    v7 = v8;
  }

  _objc_release_x1(referenceCounter, v7);
}

- (EPAdvertiserManager)init
{
  v3 = +[EPFactory queue];
  v13.receiver = self;
  v13.super_class = EPAdvertiserManager;
  v4 = [(EPResourceManager *)&v13 initWithQueue:v3];

  if (v4)
  {
    v5 = [[EPDeviceCollection alloc] initWithDelegate:v4];
    deviceCollection = v4->_deviceCollection;
    v4->_deviceCollection = v5;

    v7 = +[NSMutableDictionary dictionary];
    characteristics = v4->_characteristics;
    v4->_characteristics = v7;

    v4->_advertisingRate = 1;
    v9 = +[EPFactory queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000869E4;
    block[3] = &unk_100175660;
    v12 = v4;
    dispatch_async(v9, block);
  }

  return v4;
}

- (void)createResource
{
  v13.receiver = self;
  v13.super_class = EPAdvertiserManager;
  createResource = [(EPResourceManager *)&v13 createResource];
  v4 = sub_1000A98C0(createResource);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = sub_1000A98C0(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "EPAdvertiserManager: Create peripheral", v12, 2u);
    }
  }

  v8 = +[EPFactory sharedFactory];
  agentManager = [v8 agentManager];
  v10 = [agentManager newPeripheralManagerWithDelegate:self];
  peripheral = self->_peripheral;
  self->_peripheral = v10;

  [(EPAdvertiserManager *)self update];
}

- (void)destroyResource
{
  v17.receiver = self;
  v17.super_class = EPAdvertiserManager;
  [(EPResourceManager *)&v17 destroyResource];
  if (self->_isAdvertising)
  {
    self->_isAdvertising = 0;
  }

  availability = [(EPResource *)self->_peripheral availability];
  if (availability == 1)
  {
    v4 = sub_1000A98C0(1);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v7 = sub_1000A98C0(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Calling CoreBluetooth CBPeripheralManager stopAdvertising (resource not needed)", v16, 2u);
      }
    }

    manager = [(EPPeripheralManager *)self->_peripheral manager];
    [manager stopAdvertising];
  }

  v9 = sub_1000A98C0(availability);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v12 = sub_1000A98C0(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "EPAdvertiserManager: Destroy peripheral", v16, 2u);
    }
  }

  peripheral = self->_peripheral;
  self->_peripheral = 0;

  agent = self->_agent;
  self->_agent = 0;

  self->_waitingForServiceToBeAdded = 0;
  self->_serviceAdded = 0;
  key = self->_key;
  self->_key = 0;

  self->_waitingForAdvertisingToStart = 0;
  [(EPAdvertiserManager *)self update];
}

- (id)newAdvertiserWithDelegate:(id)delegate
{
  v4 = [(EPResourceManager *)self newResourceWithDelegate:delegate];
  v5 = +[EPFactory queue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100086D78;
  v10[3] = &unk_100175598;
  v10[4] = self;
  v6 = v4;
  v11 = v6;
  dispatch_async(v5, v10);

  v7 = v11;
  v8 = v6;

  return v8;
}

- (void)setName:(id)name
{
  nameCopy = name;
  name = self->_name;
  if (name != nameCopy)
  {
    v7 = nameCopy;
    name = [(NSString *)name isEqualToString:nameCopy];
    nameCopy = v7;
    if ((name & 1) == 0)
    {
      objc_storeStrong(&self->_name, name);
      name = [(EPAdvertiserManager *)self update];
      nameCopy = v7;
    }
  }

  _objc_release_x1(name, nameCopy);
}

- (void)setAdvertisingRate:(unint64_t)rate
{
  if (self->_advertisingRate != rate)
  {
    self->_advertisingRate = rate;
    [(EPAdvertiserManager *)self update];
  }
}

- (void)setNotAvailableToPair:(BOOL)pair
{
  pairCopy = pair;
  v5 = sub_1000A98C0(self);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = sub_1000A98C0(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v12 = pairCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Set not available to pair to: %{BOOL}d", buf, 8u);
    }
  }

  self->_notAvailableToPair = pairCopy;
  v9 = +[EPFactory queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000870A4;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_async(v9, block);
}

- (void)setDontAdvertiseWithServiceUUID:(BOOL)d
{
  self->_dontAdvertiseWithServiceUUID = d;
  v4 = +[EPFactory queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100087148;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)update
{
  if (self->_shouldUpdateCharacteristics)
  {
    self->_shouldUpdateCharacteristics = 0;
    self->_waitingForServiceToBeAdded = 0;
    self->_serviceAdded = 0;
    v3 = sub_1000A98C0([(EPResourceManager *)self setAvailability:0 withError:0]);
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v6 = sub_1000A98C0(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Calling CoreBluetooth CBPeripheralManager removeAllServices", buf, 2u);
      }
    }

    manager = [(EPPeripheralManager *)self->_peripheral manager];
    [manager removeAllServices];
  }

  activeAdvertisingName = self->_activeAdvertisingName;
  name = self->_name;
  if (activeAdvertisingName)
  {
    activeAdvertisingName = [(NSString *)activeAdvertisingName isEqual:name];
    if (!activeAdvertisingName)
    {
      goto LABEL_13;
    }

LABEL_11:
    if (self->_advertisingRate == self->_activeAdvertisingRate && self->_dontAdvertiseWithServiceUUID == self->_activeDontAdvertiseWithServiceUUID)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  if (!name)
  {
    goto LABEL_11;
  }

LABEL_13:
  objc_storeStrong(&self->_activeAdvertisingName, self->_name);
  self->_activeAdvertisingRate = self->_advertisingRate;
  self->_activeDontAdvertiseWithServiceUUID = self->_dontAdvertiseWithServiceUUID;
  if (self->_isAdvertising)
  {
    self->_isAdvertising = 0;
    self->_waitingForAdvertisingToStart = 0;
    activeAdvertisingName = [(EPResource *)self->_peripheral availability];
    if (activeAdvertisingName == 1)
    {
      v10 = sub_1000A98C0(1);
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

      if (v11)
      {
        v13 = sub_1000A98C0(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Calling CoreBluetooth CBPeripheralManager stopAdvertising (changing advertised name or advertising interval)", buf, 2u);
        }
      }

      [(EPResourceManager *)self setAvailability:0 withError:0];
      manager2 = [(EPPeripheralManager *)self->_peripheral manager];
      [manager2 stopAdvertising];
    }
  }

LABEL_20:
  if (!self->_peripheral || self->_notAvailableToPair)
  {
    v15 = sub_1000A98C0(activeAdvertisingName);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

    if (!v16)
    {
      goto LABEL_34;
    }

    v18 = sub_1000A98C0(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      notAvailableToPair = self->_notAvailableToPair;
      peripheral = self->_peripheral;
      *buf = 67109378;
      *v76 = notAvailableToPair;
      *&v76[4] = 2112;
      *&v76[6] = peripheral;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "EPAdvertiser: Skipping creation of new agent. _notAvailableToPair = %{BOOL}d _peripheral = %@", buf, 0x12u);
    }

    goto LABEL_33;
  }

  if (!self->_agent)
  {
    v24 = +[EPFactory sharedFactory];
    agentManager = [v24 agentManager];
    v26 = [agentManager newAgentWithDelegate:self fromCentral:0];
    agent = self->_agent;
    self->_agent = v26;

LABEL_30:
    goto LABEL_31;
  }

  v21 = sub_1000A98C0(activeAdvertisingName);
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

  if (v22)
  {
    v24 = sub_1000A98C0(v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "EPAdvertiser: Agent already created, skipping creating a new one", buf, 2u);
    }

    goto LABEL_30;
  }

LABEL_31:
  if (self->_key)
  {
    goto LABEL_34;
  }

  v18 = +[EPFactory sharedFactory];
  keyGeneratorManager = [v18 keyGeneratorManager];
  v29 = [keyGeneratorManager newGeneratorWithDelegate:self];
  key = self->_key;
  self->_key = v29;

LABEL_33:
LABEL_34:
  if ([(EPResource *)self->_peripheral availability]!= 1)
  {
    self->_waitingForAdvertisingToStart = 0;
    self->_isAdvertising = 0;
    self->_waitingForServiceToBeAdded = 0;
    self->_serviceAdded = 0;
    [(EPResourceManager *)self setAvailability:0 withError:0];
    return;
  }

  if (self->_notAvailableToPair || [(EPResource *)self->_agent availability]== 1 && (self->_notAvailableToPair || [(EPResource *)self->_key availability]== 1))
  {
    if (self->_serviceAdded)
    {
      goto LABEL_38;
    }

    if (!self->_waitingForServiceToBeAdded)
    {
      self->_waitingForServiceToBeAdded = 1;
      v38 = +[NSMutableArray array];
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      allValues = [(NSMutableDictionary *)self->_characteristics allValues];
      v40 = [allValues countByEnumeratingWithState:&v69 objects:v74 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v70;
        do
        {
          for (i = 0; i != v41; i = i + 1)
          {
            if (*v70 != v42)
            {
              objc_enumerationMutation(allValues);
            }

            characteristic = [*(*(&v69 + 1) + 8 * i) characteristic];
            if (characteristic)
            {
              [v38 addObject:characteristic];
            }
          }

          v41 = [allValues countByEnumeratingWithState:&v69 objects:v74 count:16];
        }

        while (v41);
      }

      if (!self->_notAvailableToPair)
      {
        v45 = [CBMutableCharacteristic alloc];
        v46 = [CBUUID UUIDWithString:@"5F6C6A23-8AC8-400E-810B-017134943460"];
        v47 = [v45 initWithType:v46 properties:26 value:0 permissions:3];

        [v38 addObject:v47];
      }

      v48 = [CBMutableService alloc];
      v49 = [CBUUID UUIDWithString:@"9AA4730F-B25C-4CC3-B821-C931559FC196"];
      v50 = [v48 initWithType:v49 primary:1];

      v51 = sub_1000A98C0([v50 setCharacteristics:v38]);
      v52 = os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);

      if (v52)
      {
        v54 = sub_1000A98C0(v53);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v76 = v50;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Calling CoreBluetooth CBPeripheralManager addService with %@", buf, 0xCu);
        }
      }

      manager3 = [(EPPeripheralManager *)self->_peripheral manager];
      [manager3 addService:v50];

      if (self->_serviceAdded)
      {
LABEL_38:
        if (!self->_isAdvertising && !self->_waitingForAdvertisingToStart)
        {
          self->_waitingForAdvertisingToStart = 1;
          name = [(EPAdvertiserManager *)self name];
          v32 = +[NSMutableDictionary dictionary];
          v33 = v32;
          if (name)
          {
            v32 = [v32 setObject:name forKeyedSubscript:CBAdvertisementDataLocalNameKey];
          }

          if (!self->_notAvailableToPair && !self->_dontAdvertiseWithServiceUUID)
          {
            v34 = [CBUUID UUIDWithString:@"9AA4730F-B25C-4CC3-B821-C931559FC196"];
            v73 = v34;
            v35 = [NSArray arrayWithObjects:&v73 count:1];
            [v33 setObject:v35 forKeyedSubscript:CBAdvertisementDataServiceUUIDsKey];
          }

          advertisingRate = self->_advertisingRate;
          if (advertisingRate == 3)
          {
            v37 = &off_100186EB0;
          }

          else
          {
            if (advertisingRate != 2)
            {
LABEL_72:
              v56 = sub_1000A98C0(v32);
              v57 = os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT);

              if (v57)
              {
                v59 = sub_1000A98C0(v58);
                if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Calling CoreBluetooth CBPeripheralManager stopAdvertising", buf, 2u);
                }
              }

              manager4 = [(EPPeripheralManager *)self->_peripheral manager];
              [manager4 stopAdvertising];

              v62 = sub_1000A98C0(v61);
              v63 = os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT);

              if (v63)
              {
                v65 = sub_1000A98C0(v64);
                if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  *v76 = v33;
                  _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "Calling CoreBluetooth CBPeripheralManager startAdvertising with parameters %@", buf, 0xCu);
                }
              }

              manager5 = [(EPPeripheralManager *)self->_peripheral manager];
              [manager5 startAdvertising:v33];

              goto LABEL_81;
            }

            v37 = &off_100186EC8;
          }

          v32 = [v33 setObject:v37 forKeyedSubscript:CBPeripheralManagerAdvertisingInterval];
          goto LABEL_72;
        }
      }
    }
  }

LABEL_81:
  if (self->_notAvailableToPair)
  {
    v67 = self->_agent;
    self->_agent = 0;

    v68 = self->_key;
    self->_key = 0;
  }
}

- (void)peripheralManager:(id)manager didReceiveWriteRequests:(id)requests
{
  managerCopy = manager;
  requestsCopy = requests;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v7 = [requestsCopy countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v48;
    v38 = v43;
    *&v8 = 138543618;
    v37 = v8;
    v39 = *v48;
    v40 = requestsCopy;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v48 != v10)
        {
          objc_enumerationMutation(requestsCopy);
        }

        v12 = *(*(&v47 + 1) + 8 * i);
        characteristic = [v12 characteristic];
        uUID = [characteristic UUID];
        v15 = [CBUUID UUIDWithString:@"5F6C6A23-8AC8-400E-810B-017134943460"];
        v16 = [uUID isEqual:v15];

        if (v16)
        {
          v46[0] = _NSConcreteStackBlock;
          v46[1] = 3221225472;
          v46[2] = sub_100087F28;
          v46[3] = &unk_100175998;
          v46[4] = self;
          v46[5] = v12;
          v17 = sub_1000A98C0([(EPResourceManager *)self enumerateResourcesWithBlock:v46]);
          v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

          if (v18)
          {
            v20 = sub_1000A98C0(v19);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Calling CoreBluetooth CBPeripheralManager respondToRequest:withResult:", buf, 2u);
            }
          }

          [managerCopy respondToRequest:v12 withResult:0];
        }

        else
        {
          characteristics = self->_characteristics;
          characteristic2 = [v12 characteristic];
          uUID2 = [characteristic2 UUID];
          v24 = [(NSMutableDictionary *)characteristics objectForKeyedSubscript:uUID2];

          if (v24)
          {
            writeHandler = [v24 writeHandler];

            if (writeHandler)
            {
              v27 = sub_1000A98C0(v26);
              v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);

              if (v28)
              {
                v30 = sub_1000A98C0(v29);
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                {
                  characteristicUUID = [v24 characteristicUUID];
                  uUIDString = [characteristicUUID UUIDString];
                  value = [v12 value];
                  v34 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [value length]);
                  *buf = v37;
                  v52 = uUIDString;
                  v53 = 2114;
                  v54 = v34;
                  _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Calling writeHandler block for characteristic %{public}@ data.length=%{public}@", buf, 0x16u);
                }
              }

              writeHandler2 = [v24 writeHandler];
              value2 = [v12 value];
              v42[0] = _NSConcreteStackBlock;
              v42[1] = 3221225472;
              v43[0] = sub_100087FE4;
              v43[1] = &unk_100177410;
              v44 = managerCopy;
              v45 = v12;
              (writeHandler2)[2](writeHandler2, value2, v42);

              v10 = v39;
              requestsCopy = v40;
            }
          }
        }
      }

      v9 = [requestsCopy countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v9);
  }
}

- (void)peripheralManager:(id)manager didReceiveReadRequest:(id)request
{
  managerCopy = manager;
  requestCopy = request;
  characteristic = [requestCopy characteristic];
  uUID = [characteristic UUID];
  v10 = [CBUUID UUIDWithString:@"5F6C6A23-8AC8-400E-810B-017134943460"];
  v11 = [uUID isEqual:v10];

  if (v11)
  {
    v12 = self->_switchModeData;
    if (v12)
    {
      v13 = -[NSData subdataWithRange:](v12, "subdataWithRange:", [requestCopy offset], -[NSData length](v12, "length") - objc_msgSend(requestCopy, "offset"));
      [requestCopy setValue:v13];

      v14 = 0;
    }

    else
    {
      v14 = 6;
    }

    [managerCopy respondToRequest:requestCopy withResult:v14];
  }

  else
  {
    characteristics = self->_characteristics;
    characteristic2 = [requestCopy characteristic];
    uUID2 = [characteristic2 UUID];
    v12 = [(NSMutableDictionary *)characteristics objectForKeyedSubscript:uUID2];

    if (v12)
    {
      readHandler = [(NSData *)v12 readHandler];

      if (readHandler)
      {
        v20 = sub_1000A98C0(v19);
        v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

        if (v21)
        {
          v23 = sub_1000A98C0(v22);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            characteristicUUID = [(NSData *)v12 characteristicUUID];
            uUIDString = [characteristicUUID UUIDString];
            *buf = 138543362;
            v31 = uUIDString;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Calling readHandler block for characteristic %{public}@", buf, 0xCu);
          }
        }

        readHandler2 = [(NSData *)v12 readHandler];
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_1000883C0;
        v27[3] = &unk_100178598;
        v28 = requestCopy;
        v29 = managerCopy;
        (readHandler2)[2](readHandler2, v27);
      }
    }
  }
}

- (void)peripheralManagerDidStartAdvertising:(id)advertising error:(id)error
{
  errorCopy = error;
  v6 = sub_1000A98C0(errorCopy);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v9 = sub_1000A98C0(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CoreBluetooth sent peripheralManagerDidStartAdvertising notification", v15, 2u);
    }
  }

  if (!errorCopy)
  {
    goto LABEL_8;
  }

  domain = [errorCopy domain];
  if (([domain isEqualToString:CBErrorDomain] & 1) == 0)
  {

    goto LABEL_10;
  }

  code = [errorCopy code];

  if (code != 9)
  {
LABEL_10:
    selfCopy2 = self;
    v13 = 2;
    v14 = errorCopy;
    goto LABEL_11;
  }

LABEL_8:
  self->_isAdvertising = 1;
  self->_waitingForAdvertisingToStart = 0;
  selfCopy2 = self;
  v13 = 1;
  v14 = 0;
LABEL_11:
  [(EPResourceManager *)selfCopy2 setAvailability:v13 withError:v14];
  [(EPAdvertiserManager *)self update];
}

- (void)peripheralManager:(id)manager didAddService:(id)service error:(id)error
{
  serviceCopy = service;
  errorCopy = error;
  uUID = [serviceCopy UUID];
  v10 = [CBUUID UUIDWithString:@"9AA4730F-B25C-4CC3-B821-C931559FC196"];
  v11 = [uUID isEqual:v10];

  if (v11)
  {
    if (errorCopy)
    {
      v13 = sub_1000A98C0(v12);
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);

      if (v14)
      {
        v16 = sub_1000A98C0(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_1001015E4(serviceCopy, errorCopy, v16);
        }
      }
    }

    else
    {
      self->_serviceAdded = 1;
      self->_waitingForServiceToBeAdded = 0;
      [(EPAdvertiserManager *)self update];
    }
  }
}

- (void)collection:(id)collection deviceDidAppear:(id)appear
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008881C;
  v8[3] = &unk_100175998;
  collectionCopy = collection;
  appearCopy = appear;
  v6 = appearCopy;
  v7 = collectionCopy;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v8];
}

- (void)collection:(id)collection deviceDidDisappear:(id)disappear
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000888E4;
  v8[3] = &unk_100175998;
  collectionCopy = collection;
  disappearCopy = disappear;
  v6 = disappearCopy;
  v7 = collectionCopy;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v8];
}

- (void)collection:(id)collection deviceInfoDidDealloc:(id)dealloc
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000889AC;
  v8[3] = &unk_100175998;
  collectionCopy = collection;
  deallocCopy = dealloc;
  v6 = deallocCopy;
  v7 = collectionCopy;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v8];
}

- (void)pairingAgent:(id)agent peerDidRequestPairing:(id)pairing type:(int64_t)type passkey:(id)passkey
{
  agentCopy = agent;
  pairingCopy = pairing;
  passkeyCopy = passkey;
  identifier = [pairingCopy identifier];
  devicesDictionary = [(EPAdvertiserManager *)self devicesDictionary];
  v15 = [devicesDictionary objectForKeyedSubscript:identifier];

  if (!v15)
  {
    v15 = [(EPDeviceCollection *)self->_deviceCollection newDeviceWithPeer:pairingCopy];
    v16 = sub_1000A98C0(v15);
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

    if (v17)
    {
      v19 = sub_1000A98C0(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v22 = [EPDevice stringFromCBPairingType:type];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v24 = @"CBCentral";
        *buf = 138413570;
        v31 = 2048;
        v30 = v21;
        if (isKindOfClass)
        {
          v24 = @"CBPeripheral";
        }

        v32 = v15;
        v33 = 2112;
        v34 = pairingCopy;
        v35 = 2112;
        v36 = v22;
        v37 = 2112;
        v38 = passkeyCopy;
        v39 = 2112;
        v40 = v24;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "EPAdvertiserManager Calling pairingAgent:peerDidRequestPairing:type:passkey: on %@[%p] with peer %@ type=%@ passkey=%@ peer=%@ on newly created device", buf, 0x3Eu);
      }
    }
  }

  [v15 pairingAgent:agentCopy peerDidRequestPairing:pairingCopy type:type passkey:passkeyCopy];
  v25 = +[EPFactory queue];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100088C4C;
  v27[3] = &unk_100175598;
  v27[4] = self;
  v28 = v15;
  v26 = v15;
  dispatch_async(v25, v27);
}

@end