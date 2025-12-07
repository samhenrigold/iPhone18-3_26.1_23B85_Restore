@interface BLEMIDILocalPeripheral
- (BLEMIDILocalPeripheral)init;
- (BLEMIDILocalPeripheral)initWithDriver:(MIDIDriverInterface *)driver;
- (BLEMIDILocalPeripheral)peripheralWithUUID:(id)d;
- (BOOL)isAlreadyConnectedAsPeripheral:(id)peripheral;
- (id)connectedCentralUUID;
- (id)subscribedCentral;
- (void)activateConnectedUUID;
- (void)activateUUID:(id)d;
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManagerDidUpdateState:(id)state;
- (void)checkAddMIDIService;
- (void)connectDevice:(unsigned int)device;
- (void)dealloc;
- (void)disconnectDevice:(unsigned int)device;
- (void)enqueue:(id)enqueue;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverServices:(id)services;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheralManager:(id)manager _didReceiveWriteRequests:(id)requests;
- (void)peripheralManager:(id)manager central:(id)central didSubscribeToCharacteristic:(id)characteristic;
- (void)peripheralManager:(id)manager central:(id)central didUnsubscribeFromCharacteristic:(id)characteristic;
- (void)peripheralManager:(id)manager didAddService:(id)service error:(id)error;
- (void)peripheralManager:(id)manager didReceiveReadRequest:(id)request;
- (void)peripheralManagerDidStartAdvertising:(id)advertising error:(id)error;
- (void)peripheralManagerDidUpdateState:(id)state;
- (void)peripheralManagerIsReadyToUpdateSubscribers:(id)subscribers;
- (void)removeMIDIService;
- (void)resetDevice:(unsigned int)device;
- (void)sendIfReady;
@end

@implementation BLEMIDILocalPeripheral

- (BLEMIDILocalPeripheral)init
{
  sub_8EB0(self, a2);
  v2 = qword_1D978;
  if (os_log_type_enabled(qword_1D978, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "BTLEMIDILocalPeripheral.mm";
    v6 = 1024;
    v7 = 38;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: Do not use init. Use initWithDriver instead.", &v4, 0x12u);
  }

  return 0;
}

- (BLEMIDILocalPeripheral)initWithDriver:(MIDIDriverInterface *)driver
{
  v8.receiver = self;
  v8.super_class = BLEMIDILocalPeripheral;
  v4 = [(BLEMIDILocalPeripheral *)&v8 init];
  if (v4)
  {
    v4->peripheralManager = [[CBPeripheralManager alloc] initWithDelegate:v4 queue:0 options:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", 0), CBPeripheralManagerOptionShowPowerAlertKey, 0)}];
    v5 = [CBCentralManager alloc];
    v6 = [NSNumber numberWithBool:0];
    v4->centralManager = [v5 initWithDelegate:v4 queue:0 options:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", v6, CBCentralManagerOptionReceiveSystemEvents, +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", 0), CBCentralManagerOptionShowPowerAlertKey, 0)}];
    v4->driver = driver;
    v4->commandQueue = dispatch_queue_create("BLEMIDILocalPeripheral_CommandQueue", 0);
    v4->outgoingPackets = [[NSMutableArray alloc] initWithCapacity:0];
    v4->readyToSend = 1;
  }

  return v4;
}

- (void)dealloc
{
  dispatch_release(self->commandQueue);

  [(CBCentralManager *)self->centralManager setDelegate:0];
  [(CBPeripheralManager *)self->peripheralManager setDelegate:0];

  v3.receiver = self;
  v3.super_class = BLEMIDILocalPeripheral;
  [(BLEMIDILocalPeripheral *)&v3 dealloc];
}

- (id)subscribedCentral
{
  result = self->midiChar;
  if (result)
  {
    if ([objc_msgSend(result "subscribedCentrals")] == &dword_0 + 1)
    {
      subscribedCentrals = [(CBMutableCharacteristic *)self->midiChar subscribedCentrals];

      return [(NSArray *)subscribedCentrals objectAtIndex:0];
    }

    else
    {
      return self->connectedCentral;
    }
  }

  return result;
}

- (id)connectedCentralUUID
{
  v2 = [-[BLEMIDILocalPeripheral subscribedCentral](self "subscribedCentral")];

  return [v2 UUIDString];
}

- (void)activateConnectedUUID
{
  subscribedCentral = [(BLEMIDILocalPeripheral *)self subscribedCentral];
  if (subscribedCentral)
  {
    v4 = [objc_msgSend(subscribedCentral "identifier")];

    [(BLEMIDILocalPeripheral *)self activateUUID:v4];
  }
}

- (void)activateUUID:(id)d
{
  v5 = +[BLEMIDIAccessor localPeripheral];
  str = 0;
  HIDWORD(obj) = 0;
  if (!v5)
  {
    if (!self->connectedCentral)
    {
      subscribedCentral = [(BLEMIDILocalPeripheral *)self subscribedCentral];
      if (!subscribedCentral)
      {
        sub_8EB0(0, v13);
        v17 = qword_1D978;
        if (!os_log_type_enabled(qword_1D978, OS_LOG_TYPE_ERROR))
        {
          return;
        }

        *buf = 136315650;
        v43 = "BTLEMIDILocalPeripheral.mm";
        v44 = 1024;
        v45 = 160;
        v46 = 2112;
        *v47 = d;
        v18 = "%25s:%-5d Received a request to activate connected central with UUID %@, but there is no subscribed central.";
        v19 = v17;
        v20 = 28;
        goto LABEL_34;
      }

      self->connectedCentral = subscribedCentral;
    }

    v14 = [BLEMIDIAccessor midiDeviceForUUID:d isLocalPeripheral:1 isRemotePeripheral:0];
    if (v14)
    {
      if (([BLEMIDIAccessor deviceIsOnline:v14]& 1) != 0)
      {
        return;
      }

LABEL_16:
      [(BLEMIDILocalPeripheral *)self connectDevice:v14, obj];
      return;
    }

    v15 = [BLEMIDIAccessor midiDeviceForUUID:d];
    LODWORD(obj) = v15;
    if (v15)
    {
      v14 = v15;
      [(BLEMIDILocalPeripheral *)self resetDevice:v15];
      goto LABEL_16;
    }

    sub_8EB0(v15, v16);
    v21 = qword_1D978;
    if (os_log_type_enabled(qword_1D978, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v43 = "BTLEMIDILocalPeripheral.mm";
      v44 = 1024;
      v45 = 180;
      v46 = 2112;
      *v47 = d;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "%25s:%-5d Received a request to activate connected central with UUID %@. This will create a new MIDI device.", buf, 0x1Cu);
    }

    driver = self->driver;
    v23 = sub_F738();
    v24 = sub_F720();
    v25 = sub_F72C();
    v26 = MIDIDeviceCreate(driver, v23, v24, v25, &obj);
    v27 = v26;
    sub_8EB0(v26, v28);
    v29 = qword_1D978;
    if (v27)
    {
      if (!os_log_type_enabled(qword_1D978, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      *buf = 136315650;
      v43 = "BTLEMIDILocalPeripheral.mm";
      v44 = 1024;
      v45 = 184;
      v46 = 1024;
      *v47 = v27;
      v18 = "%25s:%-5d ERROR: %d creating local peripheral device.";
      v19 = v29;
    }

    else
    {
      if (os_log_type_enabled(qword_1D978, OS_LOG_TYPE_INFO))
      {
        connectedCentral = self->connectedCentral;
        *buf = 136315906;
        v43 = "BTLEMIDILocalPeripheral.mm";
        v44 = 1024;
        v45 = 188;
        v46 = 1024;
        *v47 = obj;
        *&v47[4] = 2112;
        *&v47[6] = connectedCentral;
        _os_log_impl(&dword_0, v29, OS_LOG_TYPE_INFO, "%25s:%-5d Remote central device connected with MIDIDeviceRef %u, %@", buf, 0x22u);
      }

      MIDIObjectSetStringProperty(obj, @"BLE MIDI Device UUID", d);
      v31 = [(BLEMIDILocalPeripheral *)self peripheralWithUUID:d];
      if (v31)
      {
        v32 = v31;
        v33 = v31;
        self->connectedPeripheral = v33;
        sub_8EB0(v33, v34);
        v35 = qword_1D978;
        if (os_log_type_enabled(qword_1D978, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v43 = "BTLEMIDILocalPeripheral.mm";
          v44 = 1024;
          v45 = 196;
          v46 = 2112;
          *v47 = d;
          _os_log_impl(&dword_0, v35, OS_LOG_TYPE_INFO, "%25s:%-5d [device info] connectPeripheral: UUID %@", buf, 0x1Cu);
        }

        [(CBCentralManager *)self->centralManager connectPeripheral:v32 options:0, obj];
      }

      v36 = MIDISetupAddDevice(obj);
      if (!v36)
      {
        v14 = obj;
        goto LABEL_16;
      }

      v38 = v36;
      sub_8EB0(v36, v37);
      v39 = qword_1D978;
      if (!os_log_type_enabled(qword_1D978, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      *buf = 136315650;
      v43 = "BTLEMIDILocalPeripheral.mm";
      v44 = 1024;
      v45 = 202;
      v46 = 1024;
      *v47 = v38;
      v18 = "%25s:%-5d ERROR: %d adding remote central device";
      v19 = v39;
    }

    v20 = 24;
LABEL_34:
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, v18, buf, v20);
    return;
  }

  v7 = v5;
  sub_8EB0(v5, v6);
  v8 = qword_1D978;
  if (os_log_type_enabled(qword_1D978, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v43 = "BTLEMIDILocalPeripheral.mm";
    v44 = 1024;
    v45 = 145;
    v46 = 2112;
    *v47 = d;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Received a request to activate connected central with UUID %@, but there is an online local peripheral. Please file a bug report for CoreMIDI.", buf, 0x1Cu);
  }

  MIDIObjectGetStringProperty(v7, @"BLE MIDI Device UUID", &str);
  IntegerProperty = MIDIObjectGetIntegerProperty(v7, kMIDIPropertyOffline, &obj + 1);
  if (str)
  {
    sub_8EB0(IntegerProperty, v10);
    v11 = qword_1D978;
    if (os_log_type_enabled(qword_1D978, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v43 = "BTLEMIDILocalPeripheral.mm";
      v44 = 1024;
      v45 = 149;
      v46 = 2112;
      *v47 = str;
      *&v47[8] = 1024;
      *&v47[10] = HIDWORD(obj);
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Local peripheral UUID: %@ Offline: %d", buf, 0x22u);
    }

    CFRelease(str);
  }
}

- (void)connectDevice:(unsigned int)device
{
  if (self->connectedCentral)
  {
    v3 = *&device;
    MIDIObjectSetIntegerProperty(device, @"MIDI Local Peripheral", 1);
    MIDIObjectSetIntegerProperty(v3, @"MIDI Remote Peripheral", 0);
    MIDIObjectSetIntegerProperty(v3, @"MIDI Input Supported", 1);
    MIDIObjectSetIntegerProperty(v3, @"MIDI Output Supported", 1);
    MIDIObjectSetIntegerProperty(v3, kMIDIPropertyOffline, 1);
    Entity = MIDIDeviceGetEntity(v3, 0);
    newEntity = Entity;
    if (Entity)
    {
      MIDIEntityAddOrRemoveEndpoints(Entity, 1uLL, 1uLL);
    }

    else
    {
      v7 = sub_F744();
      MIDIDeviceAddEntity(v3, v7, 1u, 1uLL, 1uLL, &newEntity);
    }

    bleDevice = self->bleDevice;
    if (bleDevice)
    {

      self->bleDevice = 0;
    }

    v9 = [[BLEMIDIDevice alloc] initWithPeripheral:0 mtu:[(CBCentral *)self->connectedCentral maximumUpdateValueLength]- 3];
    self->bleDevice = v9;
    [(BLEMIDIDevice *)v9 setDev:v3];
    [(BLEMIDIDevice *)self->bleDevice setUsage:1];
    [(BLEMIDIDevice *)self->bleDevice setPeripheral:0];
    -[BLEMIDIDevice setUuid:](self->bleDevice, "setUuid:", [-[CBCentral identifier](self->connectedCentral "identifier")]);
    v10 = [(BLEMIDIDevice *)self->bleDevice setInEndpoint:MIDIEntityGetSource(newEntity, 0)];
    sub_8EB0(v10, v11);
    v12 = qword_1D978;
    if (os_log_type_enabled(qword_1D978, OS_LOG_TYPE_DEBUG))
    {
      inEndpoint = [(BLEMIDIDevice *)self->bleDevice inEndpoint];
      *buf = 136315650;
      v25 = "BTLEMIDILocalPeripheral.mm";
      v26 = 1024;
      v27 = 250;
      v28 = 1024;
      v29 = inEndpoint;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Local peripheral inEndpoint = %u", buf, 0x18u);
    }

    v14 = [(BLEMIDIDevice *)self->bleDevice setOutEndpoint:MIDIEntityGetDestination(newEntity, 0)];
    sub_8EB0(v14, v15);
    v16 = qword_1D978;
    if (os_log_type_enabled(qword_1D978, OS_LOG_TYPE_DEBUG))
    {
      outEndpoint = [(BLEMIDIDevice *)self->bleDevice outEndpoint];
      *buf = 136315650;
      v25 = "BTLEMIDILocalPeripheral.mm";
      v26 = 1024;
      v27 = 252;
      v28 = 1024;
      v29 = outEndpoint;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d Local peripheral outEndpoint = %u", buf, 0x18u);
    }

    if ([(BLEMIDIDevice *)self->bleDevice inEndpoint])
    {
      MIDIEndpointSetRefCons([(BLEMIDIDevice *)self->bleDevice inEndpoint], 0, self->midiChar);
      if ([(BLEMIDIDevice *)self->bleDevice dataReceiver])
      {
        [(BLEMIDIDevice *)self->bleDevice setDataReceiver:0];
      }

      [(BLEMIDIDevice *)self->bleDevice setDataReceiver:[[BLEMIDIDataReceiver alloc] initWithEndpoint:[(BLEMIDIDevice *)self->bleDevice inEndpoint] owner:self->driver]];
    }

    if ([(BLEMIDIDevice *)self->bleDevice outEndpoint])
    {
      MIDIEndpointSetRefCons([(BLEMIDIDevice *)self->bleDevice outEndpoint], 0, self->midiChar);
    }

    driver = self->driver;
    v19 = (driver - 1);
    v20 = *(driver + 23);
    if (v20)
    {
      MIDIObjectSetStringProperty(v20, @"Last Connected Central UUID", [(BLEMIDIDevice *)self->bleDevice uuid]);
    }

    v21 = sub_F790(v19, [-[CBCentral identifier](self->connectedCentral "identifier")]);
    if (v21)
    {
      v22 = v21;
      if (([(__CFString *)v21 isEqualToString:&stru_18AF0]& 1) == 0)
      {
        MIDIObjectSetStringProperty(v3, kMIDIPropertyName, v22);
      }
    }

    MIDIObjectSetIntegerProperty([(BLEMIDIDevice *)self->bleDevice dev], kMIDIPropertyOffline, 0);
  }

  else
  {
    sub_8EB0(self, a2);
    v6 = qword_1D978;
    if (os_log_type_enabled(qword_1D978, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v25 = "BTLEMIDILocalPeripheral.mm";
      v26 = 1024;
      v27 = 213;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "%25s:%-5d Unable to locate the connected central. Was didSubscribeToCharacteristic called?", buf, 0x12u);
    }
  }
}

- (void)disconnectDevice:(unsigned int)device
{
  v3 = *&device;
  MIDIObjectSetIntegerProperty(device, kMIDIPropertyOffline, 1);
  driver = self->driver;
  v6 = [BLEMIDIAccessor uuidForMIDIDevice:v3];
  sub_D928((driver + 15), 0);
  sub_F750((driver - 1), v6);

  self->bleDevice = 0;
}

- (void)checkAddMIDIService
{
  if (!self->midiServiceAdded)
  {
    isLECapableHardware = [(BLEMIDILocalPeripheral *)self isLECapableHardware];
    if (isLECapableHardware)
    {
      sub_8EB0(isLECapableHardware, v4);
      v5 = qword_1D978;
      if (os_log_type_enabled(qword_1D978, OS_LOG_TYPE_INFO))
      {
        *buf = 136315906;
        v12 = "BTLEMIDILocalPeripheral.mm";
        v13 = 1024;
        v14 = 302;
        v15 = 2080;
        v16 = "03B80E5A-EDE8-4B33-A751-6CE34EC4C700";
        v17 = 2080;
        v18 = "7772E5DB-3868-4112-A1A9-F2669D106BF3";
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%25s:%-5d Driver adding MIDI Service %s with MIDI I/O characteristic %s to the peripheral manager.", buf, 0x26u);
      }

      v6 = [CBUUID UUIDWithString:@"03B80E5A-EDE8-4B33-A751-6CE34EC4C700"];
      v7 = [CBUUID UUIDWithString:@"7772E5DB-3868-4112-A1A9-F2669D106BF3"];
      self->midiService = [[CBMutableService alloc] initWithType:v6 primary:1];
      v8 = [[CBMutableCharacteristic alloc] initWithType:v7 properties:262 value:0 permissions:12];
      self->midiChar = v8;
      midiService = self->midiService;
      v10 = v8;
      [(CBMutableService *)midiService setCharacteristics:[NSArray arrayWithObjects:&v10 count:1]];
      [(CBPeripheralManager *)self->peripheralManager addService:self->midiService];
    }
  }
}

- (void)removeMIDIService
{
  if (self->midiService)
  {
    [(CBPeripheralManager *)self->peripheralManager removeService:?];

    self->midiChar = 0;
    self->midiService = 0;
    self->midiServiceAdded = 0;
  }
}

- (void)resetDevice:(unsigned int)device
{
  MIDIObjectSetIntegerProperty(device, @"MIDI Remote Peripheral", 0);
  MIDIObjectSetIntegerProperty(device, @"MIDI Local Peripheral", 1);
  MIDIObjectSetIntegerProperty(device, @"MIDI Input Supported", 1);

  MIDIObjectSetIntegerProperty(device, @"MIDI Output Supported", 1);
}

- (void)peripheralManagerDidUpdateState:(id)state
{
  isLECapableHardware = [(BLEMIDILocalPeripheral *)self isLECapableHardware];
  if (self->leCapable != isLECapableHardware)
  {
    v6 = isLECapableHardware;
    sub_8EB0(isLECapableHardware, v5);
    v7 = qword_1D978;
    if (os_log_type_enabled(qword_1D978, OS_LOG_TYPE_INFO))
    {
      v8 = "NO";
      leCapable = self->leCapable;
      v14 = "BTLEMIDILocalPeripheral.mm";
      v15 = 1024;
      v16 = 358;
      if (leCapable)
      {
        v10 = "YES";
      }

      else
      {
        v10 = "NO";
      }

      v13 = 136315906;
      if (v6)
      {
        v8 = "YES";
      }

      v17 = 2080;
      v18 = v10;
      v19 = 2080;
      v20 = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "%25s:%-5d Peripheral Manager LE Available State: %s -> %s", &v13, 0x26u);
    }

    self->leCapable = v6;
    if (v6)
    {
      [(BLEMIDILocalPeripheral *)self checkAddMIDIService];
      [(BLEMIDILocalPeripheral *)self activateConnectedUUID];
    }

    else if ([(CBPeripheralManager *)self->peripheralManager state]== &dword_0 + 1)
    {
      sub_8EB0(1, v11);
      v12 = qword_1D978;
      if (os_log_type_enabled(qword_1D978, OS_LOG_TYPE_INFO))
      {
        v13 = 136315394;
        v14 = "BTLEMIDILocalPeripheral.mm";
        v15 = 1024;
        v16 = 366;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "%25s:%-5d CBManagerStateResetting received. The MIDI service has been removed by CoreBluetooth.", &v13, 0x12u);
      }

      self->midiServiceAdded = 0;
    }
  }
}

- (void)peripheralManagerDidStartAdvertising:(id)advertising error:(id)error
{
  if (error)
  {
    sub_8EB0(self, a2);
    v5 = qword_1D978;
    if (os_log_type_enabled(qword_1D978, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315650;
      v7 = "BTLEMIDILocalPeripheral.mm";
      v8 = 1024;
      v9 = 375;
      v10 = 2112;
      errorCopy = error;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d %@", &v6, 0x1Cu);
    }
  }
}

- (void)peripheralManager:(id)manager didAddService:(id)service error:(id)error
{
  sub_8EB0(self, a2);
  v8 = qword_1D978;
  if (error)
  {
    if (os_log_type_enabled(qword_1D978, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315650;
      v10 = "BTLEMIDILocalPeripheral.mm";
      v11 = 1024;
      v12 = 381;
      v13 = 2112;
      serviceCopy = error;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Error publishing service: %@", &v9, 0x1Cu);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1D978, OS_LOG_TYPE_INFO))
    {
      v9 = 136315650;
      v10 = "BTLEMIDILocalPeripheral.mm";
      v11 = 1024;
      v12 = 383;
      v13 = 2112;
      serviceCopy = service;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "%25s:%-5d Added service: %@", &v9, 0x1Cu);
    }

    self->midiServiceAdded = 1;
  }
}

- (void)peripheralManager:(id)manager central:(id)central didSubscribeToCharacteristic:(id)characteristic
{
  sub_8EB0(self, a2);
  v8 = qword_1D978;
  if (os_log_type_enabled(qword_1D978, OS_LOG_TYPE_INFO))
  {
    v12 = 136315906;
    v13 = "BTLEMIDILocalPeripheral.mm";
    v14 = 1024;
    v15 = 390;
    v16 = 2112;
    centralCopy2 = central;
    v18 = 2112;
    characteristicCopy = characteristic;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "%25s:%-5d %@ subscribed to MIDI characteristic %@. This will bring the device online.", &v12, 0x26u);
  }

  v9 = -[BLEMIDILocalPeripheral isAlreadyConnectedAsPeripheral:](self, "isAlreadyConnectedAsPeripheral:", [objc_msgSend(central "identifier")]);
  if (v9)
  {
    sub_8EB0(v9, v10);
    v11 = qword_1D978;
    if (os_log_type_enabled(qword_1D978, OS_LOG_TYPE_INFO))
    {
      v12 = 136315650;
      v13 = "BTLEMIDILocalPeripheral.mm";
      v14 = 1024;
      v15 = 393;
      v16 = 2112;
      centralCopy2 = central;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "%25s:%-5d %@ is already connected as a peripheral to this central. It will now be disconnected to reverse roles.", &v12, 0x1Cu);
    }

    sub_F538((self->driver - 1), [objc_msgSend(central "identifier")]);
    usleep(0xC350u);
  }

  self->connectedCentral = central;
  -[BLEMIDILocalPeripheral activateUUID:](self, "activateUUID:", [objc_msgSend(central "identifier")]);
}

- (void)peripheralManager:(id)manager central:(id)central didUnsubscribeFromCharacteristic:(id)characteristic
{
  sub_8EB0(self, a2);
  v8 = qword_1D978;
  if (os_log_type_enabled(qword_1D978, OS_LOG_TYPE_INFO))
  {
    v13 = 136315906;
    v14 = "BTLEMIDILocalPeripheral.mm";
    v15 = 1024;
    v16 = 405;
    v17 = 2112;
    centralCopy = central;
    v19 = 2112;
    characteristicCopy = characteristic;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "%25s:%-5d %@ unsubscribed from MIDI characteristic %@. This will take the device offline.", &v13, 0x26u);
  }

  v9 = +[BLEMIDIAccessor midiDeviceForUUID:isLocalPeripheral:isRemotePeripheral:](BLEMIDIAccessor, "midiDeviceForUUID:isLocalPeripheral:isRemotePeripheral:", [objc_msgSend(central "identifier")], 1, 0);
  if (v9)
  {
    v11 = v9;

    self->connectedCentral = 0;
    [(BLEMIDILocalPeripheral *)self disconnectDevice:v11];
  }

  else
  {
    sub_8EB0(v9, v10);
    v12 = qword_1D978;
    if (os_log_type_enabled(qword_1D978, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "BTLEMIDILocalPeripheral.mm";
      v15 = 1024;
      v16 = 408;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: A central attempted to unsubscribe from a characteristic on a nonexistent MIDI device.", &v13, 0x12u);
    }
  }
}

- (void)peripheralManager:(id)manager didReceiveReadRequest:(id)request
{
  sub_8EB0(self, a2);
  v6 = qword_1D978;
  if (os_log_type_enabled(qword_1D978, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "BTLEMIDILocalPeripheral.mm";
    v9 = 1024;
    v10 = 418;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "%25s:%-5d peripheralManager:didReceiveReadRequest: returning CBATTErrorSuccess.", &v7, 0x12u);
  }

  [manager respondToRequest:request withResult:0];
}

- (void)peripheralManager:(id)manager _didReceiveWriteRequests:(id)requests
{
  requestsCopy = requests;
  v7 = [requests count];
  if (v7)
  {
    v9 = v7;
    v10 = 0;
    v11 = &CFBooleanGetTypeID_ptr;
    v12 = @"7772E5DB-3868-4112-A1A9-F2669D106BF3";
    *&v8 = 136315906;
    v27 = v8;
    v28 = v7;
    do
    {
      v13 = [requestsCopy objectAtIndex:{v10, v27}];
      if ([objc_msgSend(objc_msgSend(v13 "characteristic")])
      {
        value = [v13 value];
        dataReceiver = [(BLEMIDIDevice *)self->bleDevice dataReceiver];
        if (dataReceiver && value)
        {
          sub_8EB0(dataReceiver, v16);
          v17 = qword_1D978;
          if (os_log_type_enabled(qword_1D978, OS_LOG_TYPE_DEBUG))
          {
            v18 = requestsCopy;
            v19 = v12;
            v20 = v11;
            managerCopy = manager;
            nowInMS = [(BLEMIDIDataReceiver *)[(BLEMIDIDevice *)self->bleDevice dataReceiver] nowInMS];
            v23 = [value length];
            *buf = v27;
            v30 = "BTLEMIDILocalPeripheral.mm";
            v31 = 1024;
            v32 = 448;
            v33 = 2048;
            v34 = nowInMS;
            manager = managerCopy;
            v11 = v20;
            v12 = v19;
            requestsCopy = v18;
            v9 = v28;
            v35 = 2048;
            v36 = v23;
            _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d %llu ms: Received value of length %lu", buf, 0x26u);
          }

          [(BLEMIDIDataReceiver *)[(BLEMIDIDevice *)self->bleDevice dataReceiver] unpackValue:value];
        }

        peripheralManager = self->peripheralManager;
        v25 = v13;
        v26 = 0;
      }

      else
      {
        peripheralManager = manager;
        v25 = v13;
        v26 = 10;
      }

      [peripheralManager respondToRequest:v25 withResult:v26];
      ++v10;
    }

    while (v9 != v10);
  }
}

- (void)peripheralManagerIsReadyToUpdateSubscribers:(id)subscribers
{
  self->readyToSend = 1;
  commandQueue = self->commandQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A8CC;
  block[3] = &unk_18858;
  block[4] = self;
  dispatch_sync(commandQueue, block);
}

- (void)centralManagerDidUpdateState:(id)state
{
  isLECapableHardware = [(BLEMIDILocalPeripheral *)self isLECapableHardware];
  if (self->leCapable != isLECapableHardware)
  {
    self->leCapable = isLECapableHardware;
  }
}

- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral
{
  if (self->centralManager == manager)
  {
    sub_8EB0(self, a2);
    v6 = qword_1D978;
    if (os_log_type_enabled(qword_1D978, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v12 = "BTLEMIDILocalPeripheral.mm";
      v13 = 1024;
      v14 = 505;
      v15 = 2112;
      peripheralCopy = peripheral;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "%25s:%-5d [device info] didConnectPeripheral: %@", buf, 0x1Cu);
    }

    v7 = [objc_msgSend(objc_msgSend(peripheral "identifier")];
    if ((v7 & 1) == 0)
    {
      sub_8EB0(v7, v8);
      v9 = qword_1D978;
      if (os_log_type_enabled(qword_1D978, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v12 = "BTLEMIDILocalPeripheral.mm";
        v13 = 1024;
        v14 = 508;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: This central is only allowed to connect to a previously connected central.", buf, 0x12u);
      }

      [(CBCentralManager *)self->centralManager cancelPeripheralConnection:peripheral];
    }

    [peripheral setDelegate:self];
    v10 = [CBUUID UUIDWithString:@"180A"];
    [peripheral discoverServices:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v10, 1)}];
  }
}

- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error
{
  if (self->centralManager == manager)
  {
    sub_8EB0(self, a2);
    v8 = qword_1D978;
    if (os_log_type_enabled(qword_1D978, OS_LOG_TYPE_INFO))
    {
      v9 = 136315906;
      v10 = "BTLEMIDILocalPeripheral.mm";
      v11 = 1024;
      v12 = 526;
      v13 = 2112;
      peripheralCopy = peripheral;
      v15 = 2112;
      errorCopy = error;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "%25s:%-5d [device info] didDisconnectPeripheral: %@ error: %@", &v9, 0x26u);
    }

    self->connectedPeripheral = 0;
    *&self->centralManufacturerOutstanding = 0;
  }
}

- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error
{
  if (self->centralManager == manager)
  {
    sub_8EB0(self, a2);
    v7 = qword_1D978;
    if (os_log_type_enabled(qword_1D978, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315906;
      v9 = "BTLEMIDILocalPeripheral.mm";
      v10 = 1024;
      v11 = 541;
      v12 = 2112;
      peripheralCopy = peripheral;
      v14 = 2112;
      errorCopy = error;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: Failed to connect to peripheral: %@ with error: %@", &v8, 0x26u);
    }

    if (peripheral)
    {
      [peripheral setDelegate:0];
    }
  }
}

- (void)peripheral:(id)peripheral didDiscoverServices:(id)services
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  services = [peripheral services];
  v7 = [services countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = v7;
  selfCopy = self;
  v9 = 0;
  v10 = *v15;
  do
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v15 != v10)
      {
        objc_enumerationMutation(services);
      }

      v12 = *(*(&v14 + 1) + 8 * i);
      if ([objc_msgSend(v12 "UUID")])
      {
        [peripheral discoverCharacteristics:0 forService:v12];
        v9 = 1;
      }
    }

    v8 = [services countByEnumeratingWithState:&v14 objects:v18 count:16];
  }

  while (v8);
  self = selfCopy;
  if ((v9 & 1) == 0)
  {
LABEL_11:
    [(CBCentralManager *)self->centralManager cancelPeripheralConnection:peripheral];
  }
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  if (![objc_msgSend(service "UUID")])
  {
    goto LABEL_13;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [service characteristics];
  v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v20;
  selfCopy = self;
  p_centralModelOutstanding = &self->centralModelOutstanding;
  p_centralManufacturerOutstanding = &self->centralManufacturerOutstanding;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v20 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v19 + 1) + 8 * i);
      v15 = p_centralManufacturerOutstanding;
      if (([objc_msgSend(v14 "UUID")] & 1) == 0)
      {
        v15 = p_centralModelOutstanding;
        if (![objc_msgSend(v14 "UUID")])
        {
          continue;
        }
      }

      [peripheral readValueForCharacteristic:v14];
      v10 = 1;
      *v15 = 1;
    }

    v9 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v9);
  self = selfCopy;
  if ((v10 & 1) == 0)
  {
LABEL_13:
    [(CBCentralManager *)self->centralManager cancelPeripheralConnection:peripheral];
  }
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  if ([objc_msgSend(characteristic "UUID")])
  {
    v8 = [[NSString alloc] initWithData:objc_msgSend(characteristic encoding:{"value"), 4}];
    v9 = +[BLEMIDIAccessor localPeripheral];
    if (v9)
    {
      MIDIObjectSetStringProperty(v9, kMIDIPropertyManufacturer, v8);
    }

    v10 = 91;
LABEL_9:
    *(&self->super.isa + v10) = 0;
    goto LABEL_10;
  }

  if ([objc_msgSend(characteristic "UUID")])
  {
    v11 = [[NSString alloc] initWithData:objc_msgSend(characteristic encoding:{"value"), 4}];
    v12 = +[BLEMIDIAccessor localPeripheral];
    if (v12)
    {
      MIDIObjectSetStringProperty(v12, kMIDIPropertyModel, v11);
    }

    v10 = 92;
    goto LABEL_9;
  }

LABEL_10:
  if (!self->centralManufacturerOutstanding && !self->centralModelOutstanding)
  {
    centralManager = self->centralManager;

    [(CBCentralManager *)centralManager cancelPeripheralConnection:peripheral];
  }
}

- (void)enqueue:(id)enqueue
{
  if (enqueue)
  {
    commandQueue = self->commandQueue;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_B204;
    v4[3] = &unk_18880;
    v4[4] = self;
    v4[5] = enqueue;
    dispatch_sync(commandQueue, v4);
  }
}

- (void)sendIfReady
{
  v3 = objc_alloc_init(NSAutoreleasePool);
  if (self->readyToSend)
  {
    v4 = 0;
    driver = self->driver;
    do
    {
      if (![(NSMutableArray *)self->outgoingPackets count])
      {
        break;
      }

      if (v4 >= 0x64)
      {
        [v3 drain];
        v3 = objc_alloc_init(NSAutoreleasePool);
        v4 = 0;
      }

      else
      {
        ++v4;
      }

      v6 = [(CBPeripheralManager *)self->peripheralManager updateValue:[(NSMutableArray *)self->outgoingPackets objectAtIndex:0] forCharacteristic:self->midiChar onSubscribedCentrals:0];
      self->readyToSend = v6;
      if (!v6)
      {
        break;
      }

      [(NSMutableArray *)self->outgoingPackets removeObjectAtIndex:0];
      [-[MIDIDriverInterface bleDevice](driver[14] "bleDevice")];
    }

    while (self->readyToSend);
  }

  [v3 drain];
}

- (BOOL)isAlreadyConnectedAsPeripheral:(id)peripheral
{
  v3 = [BLEMIDIAccessor midiDeviceForUUID:peripheral isLocalPeripheral:0 isRemotePeripheral:1];
  if (v3)
  {

    LOBYTE(v3) = [BLEMIDIAccessor deviceIsOnline:v3];
  }

  return v3;
}

- (BLEMIDILocalPeripheral)peripheralWithUUID:(id)d
{
  v4 = [[NSUUID alloc] initWithUUIDString:d];
  centralManager = self->centralManager;
  v8 = v4;
  result = [(CBCentralManager *)centralManager retrievePeripheralsWithIdentifiers:[NSArray arrayWithObjects:&v8 count:1]];
  if (result)
  {
    v7 = result;
    if ([(BLEMIDILocalPeripheral *)result count]== &dword_0 + 1)
    {
      return [(BLEMIDILocalPeripheral *)v7 objectAtIndex:0];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

@end