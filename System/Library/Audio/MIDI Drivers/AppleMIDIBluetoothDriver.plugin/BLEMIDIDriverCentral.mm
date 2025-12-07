@interface BLEMIDIDriverCentral
- (BLEMIDIDriverCentral)init;
- (BLEMIDIDriverCentral)initWithDriver:(MIDIDriverInterface *)driver;
- (BOOL)isAlreadyConnectedAsCentral:(id)central;
- (BOOL)verifyBLEDevice:(id)device;
- (id)deviceForEP:(unsigned int)p;
- (id)deviceForMIDIDevice:(unsigned int)device;
- (id)deviceForPeripheral:(id)peripheral;
- (id)deviceForUUID:(id)d;
- (id)midiCharacteristicForPeripheral:(id)peripheral;
- (id)peripheralWithUUID:(id)d;
- (id)validatePeripheral:(void *)peripheral;
- (id)verifyUUIDDiscovery:(id)discovery;
- (unsigned)createDevice:(id)device;
- (void)activateConnectedUUIDs;
- (void)activateUUID:(id)d withName:(id)name;
- (void)cancelAllConnections;
- (void)cancelConnectionForPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManager:(id)manager didUpdateConnectionParameters:(id)parameters interval:(id)interval latency:(id)latency supervisionTimeout:(id)timeout;
- (void)centralManagerDidUpdateState:(id)state;
- (void)checkChangeDeviceName:(unsigned int)name withName:(id)withName;
- (void)connectDevice:(unsigned int)device withMTU:(unsigned int)u;
- (void)dealloc;
- (void)disconnectDevice:(unsigned int)device;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverServices:(id)services;
- (void)peripheral:(id)peripheral didModifyServices:(id)services;
- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error;
- (void)removeDeviceForPeripheral:(id)peripheral;
- (void)removeDeviceForUUID:(id)d;
- (void)resetAllConnectedDevices;
- (void)resetDevice:(unsigned int)device;
- (void)startScan;
- (void)xpcReceiveUUID:(id)d withName:(id)name;
@end

@implementation BLEMIDIDriverCentral

- (BLEMIDIDriverCentral)init
{
  sub_4A64(self, a2);
  v2 = qword_1D968;
  if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "BTLEMIDIDriverCentral.mm";
    v6 = 1024;
    v7 = 40;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: Do not use init. Use initWitDriver instead.", &v4, 0x12u);
  }

  return 0;
}

- (BLEMIDIDriverCentral)initWithDriver:(MIDIDriverInterface *)driver
{
  v8.receiver = self;
  v8.super_class = BLEMIDIDriverCentral;
  v4 = [(BLEMIDIDriverCentral *)&v8 init];
  if (v4)
  {
    v5 = [CBCentralManager alloc];
    v6 = [NSNumber numberWithBool:1];
    v4->centralManager = [v5 initWithDelegate:v4 queue:0 options:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", v6, CBCentralManagerOptionReceiveSystemEvents, +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", 0), CBCentralManagerOptionShowPowerAlertKey, 0)}];
    v4->connectedDevices = [[NSMutableArray alloc] initWithCapacity:0];
    v4->connectedPeripherals = [[NSMutableArray alloc] initWithCapacity:0];
    v4->peripheralsToConnect = [[NSMutableArray alloc] initWithCapacity:0];
    v4->xpcUUIDs = [[NSMutableArray alloc] initWithCapacity:0];
    v4->xpcNames = [[NSMutableArray alloc] initWithCapacity:0];
    v4->driver = driver;
    v4->connectionIntervalNanos = 11250000;
  }

  return v4;
}

- (void)dealloc
{
  [(CBCentralManager *)self->centralManager setDelegate:0];

  self->centralManager = 0;
  v3.receiver = self;
  v3.super_class = BLEMIDIDriverCentral;
  [(BLEMIDIDriverCentral *)&v3 dealloc];
}

- (void)startScan
{
  sub_4A64(self, a2);
  v3 = qword_1D968;
  if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v6 = "BTLEMIDIDriverCentral.mm";
    v7 = 1024;
    v8 = 117;
    v9 = 2080;
    v10 = "03B80E5A-EDE8-4B33-A751-6CE34EC4C700";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "%25s:%-5d Driver scanning for service %s", buf, 0x1Cu);
  }

  v4 = [CBUUID UUIDWithString:@"03B80E5A-EDE8-4B33-A751-6CE34EC4C700"];
  [(CBCentralManager *)self->centralManager scanForPeripheralsWithServices:[NSArray options:"arrayWithObjects:count:" arrayWithObjects:1 count:?], 0];
}

- (void)activateConnectedUUIDs
{
  v3 = objc_opt_new();
  centralManager = self->centralManager;
  v27 = [CBUUID UUIDWithString:@"03B80E5A-EDE8-4B33-A751-6CE34EC4C700"];
  v5 = [(CBCentralManager *)centralManager retrieveConnectedPeripheralsWithServices:[NSArray arrayWithObjects:&v27 count:1]];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        if (!+[BLEMIDIAccessor midiDeviceForUUID:isLocalPeripheral:isRemotePeripheral:](BLEMIDIAccessor, "midiDeviceForUUID:isLocalPeripheral:isRemotePeripheral:", [objc_msgSend(v10 "identifier")], 1, 0))
        {
          [v3 addObject:{objc_msgSend(objc_msgSend(v10, "identifier"), "UUIDString")}];
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = [v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v3);
        }

        v15 = *(*(&v17 + 1) + 8 * j);
        if ([(NSMutableArray *)self->xpcUUIDs containsObject:v15])
        {
          v16 = [(NSMutableArray *)self->xpcNames objectAtIndex:[(NSMutableArray *)self->xpcUUIDs indexOfObject:v15]];
        }

        else
        {
          v16 = 0;
        }

        [(BLEMIDIDriverCentral *)self activateUUID:v15 withName:v16];
      }

      v12 = [v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v12);
  }

  [(NSMutableArray *)self->xpcUUIDs removeAllObjects];
  [(NSMutableArray *)self->xpcNames removeAllObjects];
}

- (void)activateUUID:(id)d withName:(id)name
{
  sub_4A64(self, a2);
  v7 = qword_1D968;
  if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v54 = "BTLEMIDIDriverCentral.mm";
    v55 = 1024;
    v56 = 162;
    v57 = 2112;
    dCopy7 = d;
    v59 = 2112;
    nameCopy = name;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "%25s:%-5d activateUUID: %@ withName: %@", buf, 0x26u);
  }

  v8 = [BLEMIDIAccessor midiDeviceForUUID:d isLocalPeripheral:0 isRemotePeripheral:1];
  sub_4A64(v8, v9);
  v10 = qword_1D968;
  v11 = os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v11)
    {
      *buf = 136315650;
      v54 = "BTLEMIDIDriverCentral.mm";
      v55 = 1024;
      v56 = 165;
      v57 = 1024;
      LODWORD(dCopy7) = v8;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "%25s:%-5d found device: %d", buf, 0x18u);
    }

    [(BLEMIDIDriverCentral *)self checkChangeDeviceName:v8 withName:name];
    if (([BLEMIDIAccessor deviceIsOnline:v8]& 1) != 0)
    {
      return;
    }

    goto LABEL_14;
  }

  if (v11)
  {
    *buf = 136315394;
    v54 = "BTLEMIDIDriverCentral.mm";
    v55 = 1024;
    v56 = 170;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "%25s:%-5d No remote device found. Checking local devices ...", buf, 0x12u);
  }

  v8 = [BLEMIDIAccessor midiDeviceForUUID:d];
  sub_4A64(v8, v12);
  v13 = qword_1D968;
  v14 = os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v14)
    {
      *buf = 136315650;
      v54 = "BTLEMIDIDriverCentral.mm";
      v55 = 1024;
      v56 = 173;
      v57 = 1024;
      LODWORD(dCopy7) = v8;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "%25s:%-5d Resetting local device: %d", buf, 0x18u);
    }

    [(BLEMIDIDriverCentral *)self resetDevice:v8];
LABEL_14:
    [(BLEMIDIDriverCentral *)self checkChangeDeviceName:v8 withName:name];
    v15 = [(BLEMIDIDriverCentral *)self verifyUUIDDiscovery:d];
    if (v15)
    {
      v17 = v15;
      -[BLEMIDIDriverCentral connectDevice:withMTU:](self, "connectDevice:withMTU:", v8, [v15 mtuLength] - 3);
LABEL_16:
      [(CBCentralManager *)self->centralManager setDesiredConnectionLatency:-12 forPeripheral:v17];
      return;
    }

    sub_4A64(0, v16);
    v18 = qword_1D968;
    if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v54 = "BTLEMIDIDriverCentral.mm";
      v55 = 1024;
      v56 = 182;
      v57 = 2112;
      dCopy7 = d;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "%25s:%-5d Will perform discovery for UUID %@", buf, 0x1Cu);
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    connectedPeripherals = self->connectedPeripherals;
    v20 = [(NSMutableArray *)connectedPeripherals countByEnumeratingWithState:&v46 objects:v52 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v47;
LABEL_21:
      v23 = 0;
      while (1)
      {
        if (*v47 != v22)
        {
          objc_enumerationMutation(connectedPeripherals);
        }

        v24 = *(*(&v46 + 1) + 8 * v23);
        v25 = [objc_msgSend(objc_msgSend(v24 "identifier")];
        if (v25)
        {
          break;
        }

        if (v21 == ++v23)
        {
          v21 = [(NSMutableArray *)connectedPeripherals countByEnumeratingWithState:&v46 objects:v52 count:16];
          if (v21)
          {
            goto LABEL_21;
          }

          goto LABEL_39;
        }
      }

      sub_4A64(v25, v26);
      v33 = qword_1D968;
      if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v54 = "BTLEMIDIDriverCentral.mm";
        v55 = 1024;
        v56 = 188;
        _os_log_impl(&dword_0, v33, OS_LOG_TYPE_INFO, "%25s:%-5d Peripheral is already in connectedPeripherals", buf, 0x12u);
      }

      if (!v24)
      {
        goto LABEL_39;
      }

      state = [v24 state];
      if (state == &dword_0 + 2)
      {
        goto LABEL_39;
      }

      sub_4A64(state, v35);
      v43 = qword_1D968;
      if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v54 = "BTLEMIDIDriverCentral.mm";
        v55 = 1024;
        v56 = 194;
        v57 = 2112;
        dCopy7 = v24;
        _os_log_impl(&dword_0, v43, OS_LOG_TYPE_INFO, "%25s:%-5d %@ needs to be reconnected.", buf, 0x1Cu);
      }

      v38 = v24;
      v36 = [(NSMutableArray *)self->connectedPeripherals removeObject:v24];
      if (v38)
      {
        goto LABEL_40;
      }
    }

    else
    {
LABEL_39:
      v36 = [(BLEMIDIDriverCentral *)self peripheralWithUUID:d];
      v38 = v36;
      if (v36)
      {
LABEL_40:
        [(NSMutableArray *)self->peripheralsToConnect addObject:v38];

        sub_4A64(v39, v40);
        v41 = qword_1D968;
        if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v54 = "BTLEMIDIDriverCentral.mm";
          v55 = 1024;
          v56 = 204;
          v57 = 2112;
          dCopy7 = d;
          _os_log_impl(&dword_0, v41, OS_LOG_TYPE_INFO, "%25s:%-5d connectPeripheral: UUID %@ (MIDI low latency)", buf, 0x1Cu);
        }

        centralManager = self->centralManager;
        v50 = CBConnectPeripheralOptionConnectionUseCase;
        v51 = &off_18EA8;
        [(CBCentralManager *)centralManager connectPeripheral:v38 options:[NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1]];
        return;
      }
    }

    sub_4A64(v36, v37);
    v44 = qword_1D968;
    if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v54 = "BTLEMIDIDriverCentral.mm";
      v55 = 1024;
      v56 = 207;
      v57 = 2112;
      dCopy7 = d;
      _os_log_impl(&dword_0, v44, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: Found the device, but couldn't locate a peripheral with UUID %@", buf, 0x1Cu);
    }

    return;
  }

  if (v14)
  {
    *buf = 136315650;
    v54 = "BTLEMIDIDriverCentral.mm";
    v55 = 1024;
    v56 = 222;
    v57 = 2112;
    dCopy7 = d;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "%25s:%-5d Creating a new MIDI device for peripheral with UUID %@.", buf, 0x1Cu);
  }

  v27 = [(BLEMIDIDriverCentral *)self createDevice:d];
  if (v27)
  {
    [(BLEMIDIDriverCentral *)self checkChangeDeviceName:v27 withName:name];
    v17 = [(BLEMIDIDriverCentral *)self peripheralWithUUID:d];
    if (v17)
    {
      [(NSMutableArray *)self->peripheralsToConnect addObject:v17];

      sub_4A64(v29, v30);
      v31 = qword_1D968;
      if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v54 = "BTLEMIDIDriverCentral.mm";
        v55 = 1024;
        v56 = 232;
        v57 = 2112;
        dCopy7 = d;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_INFO, "%25s:%-5d connectPeripheral: UUID %@ (MIDI low latency)", buf, 0x1Cu);
      }

      v32 = +[NSMutableDictionary dictionary];
      [v32 setObject:&off_18EA8 forKey:CBConnectPeripheralOptionConnectionUseCase];
      [(CBCentralManager *)self->centralManager connectPeripheral:v17 options:v32];
    }

    else
    {
      sub_4A64(0, v28);
      v45 = qword_1D968;
      if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v54 = "BTLEMIDIDriverCentral.mm";
        v55 = 1024;
        v56 = 237;
        v57 = 2112;
        dCopy7 = d;
        _os_log_impl(&dword_0, v45, OS_LOG_TYPE_INFO, "%25s:%-5d WARNING: Created a device, but couldn't locate a peripheral with UUID %@", buf, 0x1Cu);
      }
    }

    goto LABEL_16;
  }
}

- (void)cancelAllConnections
{
  centralManager = self->centralManager;
  v13 = [CBUUID UUIDWithString:@"03B80E5A-EDE8-4B33-A751-6CE34EC4C700"];
  v4 = [(CBCentralManager *)centralManager retrieveConnectedPeripheralsWithServices:[NSArray arrayWithObjects:&v13 count:1]];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [(BLEMIDIDriverCentral *)self cancelConnectionForPeripheral:*(*(&v8 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)checkChangeDeviceName:(unsigned int)name withName:(id)withName
{
  if (name)
  {
    if (withName)
    {
      MIDIObjectSetStringProperty(name, kMIDIPropertyName, withName);
    }
  }
}

- (unsigned)createDevice:(id)device
{
  outDevice = 0;
  driver = self->driver;
  v5 = sub_F714();
  v6 = sub_F720();
  v7 = sub_F72C();
  v8 = MIDIDeviceCreate(driver, v5, v6, v7, &outDevice);
  if (v8)
  {
    v10 = v8;
    sub_4A64(v8, v9);
    v11 = qword_1D968;
    result = os_log_type_enabled(qword_1D968, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 136315650;
      v18 = "BTLEMIDIDriverCentral.mm";
      v19 = 1024;
      v20 = 271;
      v21 = 1024;
      LODWORD(deviceCopy) = v10;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: MIDIDeviceCreate failed with error %d", buf, 0x18u);
      return 0;
    }
  }

  else
  {
    MIDIObjectSetIntegerProperty(outDevice, @"MIDI Input Supported", 0);
    MIDIObjectSetIntegerProperty(outDevice, @"MIDI Output Supported", 0);
    MIDIObjectSetStringProperty(outDevice, @"BLE MIDI Device UUID", device);
    MIDIObjectSetIntegerProperty(outDevice, @"MIDI Local Peripheral", 0);
    MIDIObjectSetIntegerProperty(outDevice, @"MIDI Remote Peripheral", 1);
    MIDIObjectSetIntegerProperty(outDevice, kMIDIPropertyOffline, 1);
    v13 = MIDISetupAddDevice(outDevice);
    sub_4A64(v13, v14);
    v15 = qword_1D968;
    if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v18 = "BTLEMIDIDriverCentral.mm";
      v19 = 1024;
      v20 = 290;
      v21 = 2112;
      deviceCopy = device;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "%25s:%-5d Created device with Bluetooth UUID %@", buf, 0x1Cu);
    }

    return outDevice;
  }

  return result;
}

- (void)connectDevice:(unsigned int)device withMTU:(unsigned int)u
{
  LODWORD(v4) = u;
  v5 = *&device;
  v7 = [BLEMIDIAccessor uuidForMIDIDevice:?];
  v8 = [(BLEMIDIDriverCentral *)self peripheralWithUUID:v7];
  v9 = [(NSMutableArray *)self->connectedPeripherals containsObject:v8];
  if ((v9 & 1) == 0)
  {
    sub_4A64(v9, v10);
    v19 = qword_1D968;
    if (!os_log_type_enabled(qword_1D968, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136315650;
    v34 = "BTLEMIDIDriverCentral.mm";
    v35 = 1024;
    v36 = 302;
    v37 = 2112;
    v38 = v7;
    v20 = "%25s:%-5d ERROR: Can't call connectDevice on on MIDIDevice with UUID %@ because the peripheral is not connected.";
    v21 = v19;
    v22 = OS_LOG_TYPE_ERROR;
LABEL_12:
    _os_log_impl(&dword_0, v21, v22, v20, buf, 0x1Cu);
    return;
  }

  if (!v8)
  {
    sub_4A64(v9, v10);
    v23 = qword_1D968;
    if (!os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 136315650;
    v34 = "BTLEMIDIDriverCentral.mm";
    v35 = 1024;
    v36 = 377;
    v37 = 2112;
    v38 = v7;
    v20 = "%25s:%-5d connectDevice peripheral with UUID %@ not found!";
    v21 = v23;
    v22 = OS_LOG_TYPE_INFO;
    goto LABEL_12;
  }

  v11 = [(BLEMIDIDriverCentral *)self midiCharacteristicForPeripheral:v8];
  v13 = v11;
  if (v11)
  {
    properties = [v11 properties];
    sub_4A64(properties, v15);
    v16 = qword_1D968;
    v11 = os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO);
    if (v11)
    {
      *buf = 136315906;
      v34 = "BTLEMIDIDriverCentral.mm";
      v35 = 1024;
      v36 = 313;
      v37 = 2112;
      v38 = v8;
      v39 = 2048;
      v40 = properties;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "%25s:%-5d Found a MIDI I/O characteristic for peripheral: %@, props: 0x%lX)", buf, 0x26u);
    }

    v17 = (properties >> 4) & 1;
    v18 = (properties >> 2) & 1;
    if (v17 | v18)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  sub_4A64(v11, v12);
  v24 = qword_1D968;
  if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v34 = "BTLEMIDIDriverCentral.mm";
    v35 = 1024;
    v36 = 320;
    v37 = 2112;
    v38 = v7;
    _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "%25s:%-5d Could not locate a usable MIDI I/O characteristic on peripheral with UUID %@. Canceling connection.", buf, 0x1Cu);
  }

  [(BLEMIDIDriverCentral *)self cancelConnectionForPeripheral:v8];
LABEL_17:
  MIDIObjectSetIntegerProperty(v5, @"MIDI Output Supported", v17);
  MIDIObjectSetIntegerProperty(v5, @"MIDI Input Supported", v18);
  v25 = [(BLEMIDIDriverCentral *)self deviceForPeripheral:v8];
  if (v25)
  {
    [(NSMutableArray *)self->connectedDevices removeObject:v25];
  }

  if (v4)
  {
    v4 = v4;
  }

  else
  {
    v4 = 20;
  }

  v26 = [[BLEMIDIDevice alloc] initWithPeripheral:v8 mtu:v4];
  [(BLEMIDIDevice *)v26 setDev:v5];
  [(BLEMIDIDevice *)v26 setUuid:v7];
  [(BLEMIDIDevice *)v26 setPeripheral:v8];
  [(BLEMIDIDevice *)v26 setUsage:0];
  [(NSMutableArray *)self->connectedDevices addObject:v26];
  Entity = MIDIDeviceGetEntity(v5, 0);
  newEntity = Entity;
  if (Entity)
  {
    MIDIEntityAddOrRemoveEndpoints(Entity, v17, v18);
  }

  else
  {
    v28 = sub_F744();
    v29 = MIDIDeviceAddEntity(v5, v28, 1u, v17, v18, &newEntity);
    if (v29)
    {
      sub_4A64(v29, v30);
      v31 = qword_1D968;
      if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v34 = "BTLEMIDIDriverCentral.mm";
        v35 = 1024;
        v36 = 345;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "%25s:%-5d Unable to create an entity for this MIDI device. Please try again.", buf, 0x12u);
      }

      [(BLEMIDIDevice *)v26 setDev:0];
      [(BLEMIDIDriverCentral *)self cancelConnectionForPeripheral:v8];
    }
  }

  if (v17)
  {
    [(BLEMIDIDevice *)v26 setOutEndpoint:MIDIEntityGetSource(newEntity, 0)];
    [(BLEMIDIDevice *)v26 setDataReceiver:[[BLEMIDIDataReceiver alloc] initWithEndpoint:[(BLEMIDIDevice *)v26 outEndpoint] owner:self->driver]];
    [v8 setNotifyValue:1 forCharacteristic:v13];
  }

  if (v18)
  {
    [(BLEMIDIDevice *)v26 setInEndpoint:MIDIEntityGetDestination(newEntity, 0)];
    MIDIEndpointSetRefCons([(BLEMIDIDevice *)v26 inEndpoint], v8, v13);
  }

  if ([+[BLEMIDIAccessor nameForMIDIDevice:](BLEMIDIAccessor nameForMIDIDevice:{v5), "isEqualToString:", sub_F714()}] && objc_msgSend(v8, "name") && (objc_msgSend(objc_msgSend(v8, "name"), "isEqualToString:", &stru_18AF0) & 1) == 0)
  {
    MIDIObjectSetStringProperty(v5, kMIDIPropertyName, [v8 name]);
  }

  MIDIObjectSetIntegerProperty(v5, kMIDIPropertyOffline, 0);
}

- (void)disconnectDevice:(unsigned int)device
{
  if (!device)
  {
    sub_4A64(self, a2);
    v8 = qword_1D968;
    if (!os_log_type_enabled(qword_1D968, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v13 = 136315394;
    v14 = "BTLEMIDIDriverCentral.mm";
    v15 = 1024;
    v16 = 384;
    v9 = "%25s:%-5d Called disconnectDevice with a 0 MIDIDeviceRef. Please file a bug report for CoreMIDI.";
    v10 = v8;
    v11 = OS_LOG_TYPE_ERROR;
LABEL_10:
    _os_log_impl(&dword_0, v10, v11, v9, &v13, 0x12u);
    return;
  }

  v4 = [(BLEMIDIDriverCentral *)self deviceForMIDIDevice:?];
  if (!v4)
  {
    sub_4A64(0, v5);
    v12 = qword_1D968;
    if (!os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v13 = 136315394;
    v14 = "BTLEMIDIDriverCentral.mm";
    v15 = 1024;
    v16 = 394;
    v9 = "%25s:%-5d The central doesn't know anything about this device (was connectDevice called?).";
    v10 = v12;
    v11 = OS_LOG_TYPE_INFO;
    goto LABEL_10;
  }

  v6 = v4;
  MIDIObjectSetIntegerProperty([v4 dev], kMIDIPropertyOffline, 1);
  peripheral = [v6 peripheral];

  [(BLEMIDIDriverCentral *)self removeDeviceForPeripheral:peripheral];
}

- (void)resetDevice:(unsigned int)device
{
  MIDIObjectSetIntegerProperty(device, @"MIDI Remote Peripheral", 1);
  MIDIObjectSetIntegerProperty(device, @"MIDI Local Peripheral", 0);
  MIDIObjectSetIntegerProperty(device, @"MIDI Input Supported", 0);

  MIDIObjectSetIntegerProperty(device, @"MIDI Output Supported", 0);
}

- (id)verifyUUIDDiscovery:(id)discovery
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  connectedPeripherals = self->connectedPeripherals;
  v5 = [(NSMutableArray *)connectedPeripherals countByEnumeratingWithState:&v15 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(connectedPeripherals);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if ([objc_msgSend(objc_msgSend(v9 "identifier")])
        {
          if (v9 && [v9 state] == &dword_0 + 2)
          {
            sub_4A64(2, v10);
            v11 = qword_1D968;
            if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_DEBUG))
            {
              services = [v9 services];
              *buf = 136315906;
              v21 = "BTLEMIDIDriverCentral.mm";
              v22 = 1024;
              v23 = 423;
              v24 = 2112;
              v25 = v9;
              v26 = 2112;
              v27 = services;
              _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d Attempting to verify discovery for %@, services = %@", buf, 0x26u);
            }

            memset(v14, 0, sizeof(v14));
            if ([objc_msgSend(v9 services])
            {
              [objc_msgSend(**(&v14[0] + 1) "UUID")];
            }
          }

          return 0;
        }
      }

      v6 = [(NSMutableArray *)connectedPeripherals countByEnumeratingWithState:&v15 objects:v28 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

- (id)validatePeripheral:(void *)peripheral
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  connectedPeripherals = self->connectedPeripherals;
  result = [(NSMutableArray *)connectedPeripherals countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v10;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v10 != v7)
      {
        objc_enumerationMutation(connectedPeripherals);
      }

      result = *(*(&v9 + 1) + 8 * v8);
      if (result == peripheral)
      {
        break;
      }

      if (v6 == ++v8)
      {
        result = [(NSMutableArray *)connectedPeripherals countByEnumeratingWithState:&v9 objects:v13 count:16];
        v6 = result;
        if (result)
        {
          goto LABEL_3;
        }

        return result;
      }
    }
  }

  return result;
}

- (BOOL)verifyBLEDevice:(id)device
{
  uuid = [(BLEMIDIDriverCentral *)self deviceForPeripheral:[(BLEMIDIDriverCentral *)self peripheralWithUUID:device]];
  if (uuid)
  {
    v4 = uuid;
    LODWORD(uuid) = [uuid dev];
    if (uuid)
    {
      uuid = [v4 uuid];
      if (uuid)
      {
        if ([v4 usage])
        {
          LOBYTE(uuid) = 0;
        }

        else
        {
          *outValue = 0;
          MIDIObjectGetIntegerProperty([v4 dev], @"MIDI Output Supported", outValue);
          MIDIObjectGetIntegerProperty([v4 dev], @"MIDI Input Supported", &outValue[1]);
          if (!outValue[0] || (LODWORD(uuid) = [v4 outEndpoint], uuid) && (uuid = objc_msgSend(v4, "dataReceiver")) != 0)
          {
            if (!outValue[1] || (LODWORD(uuid) = [v4 inEndpoint], uuid))
            {
              LOBYTE(uuid) = 1;
            }
          }
        }
      }
    }
  }

  return uuid;
}

- (id)midiCharacteristicForPeripheral:(id)peripheral
{
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  services = [peripheral services];
  v4 = [services countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = *v26;
  v7 = @"03B80E5A-EDE8-4B33-A751-6CE34EC4C700";
  while (2)
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v26 != v6)
      {
        objc_enumerationMutation(services);
      }

      v9 = *(*(&v25 + 1) + 8 * i);
      if ([objc_msgSend(objc_msgSend(v9 "UUID")])
      {
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        characteristics = [v9 characteristics];
        v11 = [characteristics countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v22;
          v20 = v5;
LABEL_9:
          v14 = services;
          v15 = v6;
          v16 = v7;
          v17 = 0;
          while (1)
          {
            if (*v22 != v13)
            {
              objc_enumerationMutation(characteristics);
            }

            v18 = *(*(&v21 + 1) + 8 * v17);
            if ([objc_msgSend(objc_msgSend(v18 "UUID")])
            {
              return v18;
            }

            if (v12 == ++v17)
            {
              v12 = [characteristics countByEnumeratingWithState:&v21 objects:v29 count:16];
              v7 = v16;
              v6 = v15;
              services = v14;
              v5 = v20;
              if (v12)
              {
                goto LABEL_9;
              }

              break;
            }
          }
        }
      }
    }

    v5 = [services countByEnumeratingWithState:&v25 objects:v30 count:16];
    v18 = 0;
    if (v5)
    {
      continue;
    }

    return v18;
  }
}

- (void)cancelConnectionForPeripheral:(id)peripheral
{
  v5 = [(BLEMIDIDriverCentral *)self midiCharacteristicForPeripheral:?];
  if (v5 && (v6 = v5, ([v5 properties] & 0x10) != 0))
  {

    [peripheral setNotifyValue:0 forCharacteristic:v6];
  }

  else
  {
    centralManager = self->centralManager;

    [(CBCentralManager *)centralManager cancelPeripheralConnection:peripheral];
  }
}

- (void)xpcReceiveUUID:(id)d withName:(id)name
{
  v7 = [(NSMutableArray *)self->xpcUUIDs containsObject:?];
  if (v7)
  {
    sub_4A64(v7, v8);
    v9 = qword_1D968;
    if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315906;
      v11 = "BTLEMIDIDriverCentral.mm";
      v12 = 1024;
      v13 = 516;
      v14 = 2112;
      dCopy = d;
      v16 = 2112;
      nameCopy = name;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d xpcReceiveUUID:%@ withName:%@ already contains UUID (skipping)", &v10, 0x26u);
    }
  }

  else
  {
    [(NSMutableArray *)self->xpcUUIDs addObject:d];
    [(NSMutableArray *)self->xpcNames addObject:name];
    if ([(BLEMIDIDriverCentral *)self isLECapableHardware])
    {

      [(BLEMIDIDriverCentral *)self activateConnectedUUIDs];
    }
  }
}

- (void)centralManagerDidUpdateState:(id)state
{
  isLECapableHardware = [(BLEMIDIDriverCentral *)self isLECapableHardware];
  if (self->leCapable != isLECapableHardware)
  {
    v7 = isLECapableHardware;
    sub_4A64(isLECapableHardware, v6);
    v8 = qword_1D968;
    if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
    {
      v9 = "NO";
      leCapable = self->leCapable;
      *&v15[4] = "BTLEMIDIDriverCentral.mm";
      *&v15[12] = 1024;
      *&v15[14] = 529;
      if (leCapable)
      {
        v11 = "YES";
      }

      else
      {
        v11 = "NO";
      }

      *v15 = 136315906;
      if (v7)
      {
        v9 = "YES";
      }

      *&v15[18] = 2080;
      *&v15[20] = v11;
      v16 = 2080;
      v17 = v9;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "%25s:%-5d Central Manager LE Available State: %s -> %s", v15, 0x26u);
    }

    self->leCapable = v7;
    if (v7)
    {
      [(BLEMIDIDriverCentral *)self activateConnectedUUIDs];
    }

    else
    {
      state = [state state];
      if (state == (&dword_0 + 1) || (state = [state state], state == &dword_4))
      {
        sub_4A64(state, v13);
        v14 = qword_1D968;
        if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
        {
          *v15 = 136315394;
          *&v15[4] = "BTLEMIDIDriverCentral.mm";
          *&v15[12] = 1024;
          *&v15[14] = 537;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "%25s:%-5d   Setting all BLE MIDI devices to offline.", v15, 0x12u);
        }

        [(BLEMIDIDriverCentral *)self resetAllConnectedDevices:*v15];
      }
    }
  }
}

- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral
{
  if (self->centralManager == manager)
  {
    sub_4A64(self, a2);
    v7 = qword_1D968;
    if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
    {
      *buf = 136315906;
      v13 = "BTLEMIDIDriverCentral.mm";
      v14 = 1024;
      v15 = 568;
      v16 = 2112;
      managerCopy = manager;
      v18 = 2112;
      peripheralCopy = peripheral;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "%25s:%-5d centralManager: %@ didConnectPeripheral: %@", buf, 0x26u);
    }

    [(NSMutableArray *)self->connectedPeripherals addObject:peripheral];
    [(NSMutableArray *)self->peripheralsToConnect removeObject:peripheral];
    v8 = -[BLEMIDIDriverCentral isAlreadyConnectedAsCentral:](self, "isAlreadyConnectedAsCentral:", [objc_msgSend(peripheral "identifier")]);
    if (v8)
    {
      sub_4A64(v8, v9);
      v10 = qword_1D968;
      if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v13 = "BTLEMIDIDriverCentral.mm";
        v14 = 1024;
        v15 = 574;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "%25s:%-5d Already connected as central. Canceling this connection.", buf, 0x12u);
      }

      [(BLEMIDIDriverCentral *)self cancelConnectionForPeripheral:peripheral];
    }

    [peripheral setDelegate:self];
    v11[1] = [CBUUID UUIDWithString:@"180A", [CBUUID UUIDWithString:@"03B80E5A-EDE8-4B33-A751-6CE34EC4C700"]];
    [peripheral discoverServices:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v11, 2)}];
  }
}

- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error
{
  if (self->centralManager == manager)
  {
    sub_4A64(self, a2);
    v9 = qword_1D968;
    if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
    {
      v10 = 136316162;
      v11 = "BTLEMIDIDriverCentral.mm";
      v12 = 1024;
      v13 = 592;
      v14 = 2112;
      managerCopy = manager;
      v16 = 2112;
      peripheralCopy = peripheral;
      v18 = 2112;
      errorCopy = error;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%25s:%-5d centralManager: %@ didDisconnectPeripheral: %@ error: %@", &v10, 0x30u);
    }

    sub_D928((self->driver + 15), peripheral);
    [(NSMutableArray *)self->connectedPeripherals removeObject:peripheral];
    [peripheral setDelegate:0];
    -[BLEMIDIDriverCentral disconnectDevice:](self, "disconnectDevice:", +[BLEMIDIAccessor midiDeviceForUUID:](BLEMIDIAccessor, "midiDeviceForUUID:", [objc_msgSend(peripheral "identifier")]));
  }
}

- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error
{
  if (self->centralManager == manager)
  {
    sub_4A64(self, a2);
    v8 = qword_1D968;
    if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315906;
      v10 = "BTLEMIDIDriverCentral.mm";
      v11 = 1024;
      v12 = 607;
      v13 = 2112;
      peripheralCopy = peripheral;
      v15 = 2112;
      errorCopy = error;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: Failed to connect to peripheral: %@ with error = %@", &v9, 0x26u);
    }

    [(NSMutableArray *)self->peripheralsToConnect removeObject:peripheral];
    if (peripheral)
    {
      [peripheral setDelegate:0];
    }
  }
}

- (void)centralManager:(id)manager didUpdateConnectionParameters:(id)parameters interval:(id)interval latency:(id)latency supervisionTimeout:(id)timeout
{
  if (self->centralManager == manager)
  {
    v9 = [(BLEMIDIDriverCentral *)self deviceForPeripheral:parameters];
    if (v9)
    {
      sub_4A64(v9, v10);
      v11 = qword_1D968;
      if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
      {
        [interval doubleValue];
        v18 = 136315650;
        v19 = "BTLEMIDIDriverCentral.mm";
        v20 = 1024;
        v21 = 623;
        v22 = 2048;
        v23 = v12;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "%25s:%-5d Updated connection parameters: interval = %f ms", &v18, 0x1Cu);
      }

      doubleValue = [interval doubleValue];
      v15 = (v14 * 1000000.0);
      sub_4A64(doubleValue, v16);
      v17 = qword_1D968;
      if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
      {
        v18 = 136315650;
        v19 = "BTLEMIDIDriverCentral.mm";
        v20 = 1024;
        v21 = 626;
        v22 = 2048;
        v23 = v15;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "%25s:%-5d Changing connection interval = %llu ns", &v18, 0x1Cu);
      }

      *(self->driver + 32) = v15;
    }
  }
}

- (void)peripheral:(id)peripheral didDiscoverServices:(id)services
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [peripheral services];
  v7 = [obj countByEnumeratingWithState:&v22 objects:v34 count:16];
  if (!v7)
  {
    goto LABEL_17;
  }

  v9 = v7;
  servicesCopy = services;
  selfCopy = self;
  v10 = 0;
  v20 = 0;
  v11 = *v23;
  do
  {
    v12 = 0;
    do
    {
      if (*v23 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v22 + 1) + 8 * v12);
      if ([objc_msgSend(v13 UUID])
      {
        [peripheral discoverCharacteristics:0 forService:v13];
        v20 = 1;
      }

      v14 = [objc_msgSend(v13 "UUID")];
      if (v14)
      {
        sub_4A64(v14, v15);
        v16 = qword_1D968;
        if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v27 = "BTLEMIDIDriverCentral.mm";
          v28 = 1024;
          v29 = 656;
          v30 = 2112;
          peripheralCopy2 = peripheral;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d Discovered device information service for peripheral: %@", buf, 0x1Cu);
        }

        v10 = v13;
      }

      v12 = v12 + 1;
    }

    while (v9 != v12);
    v7 = [obj countByEnumeratingWithState:&v22 objects:v34 count:16];
    v9 = v7;
  }

  while (v7);
  services = servicesCopy;
  self = selfCopy;
  if (v20)
  {
    if (v10)
    {
      [peripheral discoverCharacteristics:0 forService:v10];
    }
  }

  else
  {
LABEL_17:
    sub_4A64(v7, v8);
    v17 = qword_1D968;
    if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
    {
      *buf = 136315906;
      v27 = "BTLEMIDIDriverCentral.mm";
      v28 = 1024;
      v29 = 660;
      v30 = 2112;
      peripheralCopy2 = peripheral;
      v32 = 2112;
      servicesCopy2 = services;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "%25s:%-5d MIDI service not discovered on peripheral: %@ (error: %@). Disconnecting ...", buf, 0x26u);
    }

    [(CBCentralManager *)self->centralManager cancelPeripheralConnection:peripheral];
  }
}

- (void)peripheral:(id)peripheral didModifyServices:(id)services
{
  if ([(BLEMIDIDriverCentral *)self deviceForPeripheral:?])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [services countByEnumeratingWithState:&v14 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(services);
          }

          v11 = [objc_msgSend(*(*(&v14 + 1) + 8 * i) "UUID")];
          if (v11)
          {
            sub_4A64(v11, v12);
            v13 = qword_1D968;
            if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
            {
              *buf = 136315650;
              v19 = "BTLEMIDIDriverCentral.mm";
              v20 = 1024;
              v21 = 674;
              v22 = 2112;
              peripheralCopy = peripheral;
              _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "%25s:%-5d NOTICE: %@ has invalidated the MIDI service. Disconnecting ...", buf, 0x1Cu);
            }

            [(CBCentralManager *)self->centralManager cancelPeripheralConnection:peripheral];
            return;
          }
        }

        v8 = [services countByEnumeratingWithState:&v14 objects:v24 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  if (![objc_msgSend(service "UUID")])
  {
    if (![objc_msgSend(service "UUID")])
    {
      return;
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    characteristics = [service characteristics];
    v18 = [characteristics countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (!v18)
    {
      return;
    }

    v20 = v18;
    v21 = *v44;
    *&v19 = 136315650;
    v42 = v19;
LABEL_16:
    v22 = 0;
    while (1)
    {
      if (*v44 != v21)
      {
        objc_enumerationMutation(characteristics);
      }

      v23 = *(*(&v43 + 1) + 8 * v22);
      if (![objc_msgSend(v23 UUID])
      {
        break;
      }

      v24 = [peripheral readValueForCharacteristic:v23];
      sub_4A64(v24, v25);
      v26 = qword_1D968;
      if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_DEBUG))
      {
        *buf = v42;
        v53 = "BTLEMIDIDriverCentral.mm";
        v54 = 1024;
        v55 = 737;
        v56 = 2112;
        *v57 = peripheral;
        v27 = v26;
        v28 = "%25s:%-5d Discovered manufacturer name for %@";
LABEL_25:
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEBUG, v28, buf, 0x1Cu);
      }

LABEL_26:
      if (v20 == ++v22)
      {
        v20 = [characteristics countByEnumeratingWithState:&v43 objects:v51 count:16];
        if (!v20)
        {
          return;
        }

        goto LABEL_16;
      }
    }

    if (![objc_msgSend(v23 "UUID")])
    {
      goto LABEL_26;
    }

    v29 = [peripheral readValueForCharacteristic:v23];
    sub_4A64(v29, v30);
    v31 = qword_1D968;
    if (!os_log_type_enabled(qword_1D968, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_26;
    }

    *buf = v42;
    v53 = "BTLEMIDIDriverCentral.mm";
    v54 = 1024;
    v55 = 741;
    v56 = 2112;
    *v57 = peripheral;
    v27 = v31;
    v28 = "%25s:%-5d Discovered model number for %@";
    goto LABEL_25;
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  characteristics2 = [service characteristics];
  v9 = [characteristics2 countByEnumeratingWithState:&v47 objects:v58 count:16];
  if (!v9)
  {
    goto LABEL_10;
  }

  v11 = v9;
  v12 = *v48;
  while (2)
  {
    v13 = 0;
    do
    {
      if (*v48 != v12)
      {
        objc_enumerationMutation(characteristics2);
      }

      v14 = [objc_msgSend(*(*(&v47 + 1) + 8 * v13) "UUID")];
      if (v14)
      {
        sub_4A64(v14, v15);
        v32 = qword_1D968;
        if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v53 = "BTLEMIDIDriverCentral.mm";
          v54 = 1024;
          v55 = 702;
          v56 = 2112;
          *v57 = peripheral;
          _os_log_impl(&dword_0, v32, OS_LOG_TYPE_INFO, "%25s:%-5d Setting MIDI low latency for peripheral: %@", buf, 0x1Cu);
        }

        [(CBCentralManager *)self->centralManager setDesiredConnectionLatency:-12 forPeripheral:peripheral];
        mtuLength = [peripheral mtuLength];
        v34 = (mtuLength - 3);
        sub_4A64(mtuLength, v35);
        v36 = qword_1D968;
        v37 = os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO);
        if (v34 < 21)
        {
          v34 = 20;
          if (!v37)
          {
            goto LABEL_37;
          }

          *buf = 136315906;
          v53 = "BTLEMIDIDriverCentral.mm";
          v54 = 1024;
          v55 = 710;
          v56 = 1024;
          *v57 = 20;
          *&v57[4] = 2112;
          *&v57[6] = peripheral;
          v38 = "%25s:%-5d Keeping mtu value of %d bytes for peripheral: %@";
        }

        else
        {
          if (!v37)
          {
            goto LABEL_37;
          }

          *buf = 136315906;
          v53 = "BTLEMIDIDriverCentral.mm";
          v54 = 1024;
          v55 = 708;
          v56 = 1024;
          *v57 = v34;
          *&v57[4] = 2112;
          *&v57[6] = peripheral;
          v38 = "%25s:%-5d Updating packet size to mtu value of %d bytes for peripheral: %@";
        }

        _os_log_impl(&dword_0, v36, OS_LOG_TYPE_INFO, v38, buf, 0x22u);
LABEL_37:
        v39 = +[BLEMIDIAccessor midiDeviceForUUID:](BLEMIDIAccessor, "midiDeviceForUUID:", [objc_msgSend(peripheral "identifier")]);
        if (v39)
        {
          [(BLEMIDIDriverCentral *)self connectDevice:v39 withMTU:v34];
        }

        else
        {
          sub_4A64(v39, v40);
          v41 = qword_1D968;
          if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
          {
            *buf = 136315650;
            v53 = "BTLEMIDIDriverCentral.mm";
            v54 = 1024;
            v55 = 726;
            v56 = 2112;
            *v57 = peripheral;
            _os_log_impl(&dword_0, v41, OS_LOG_TYPE_INFO, "%25s:%-5d Can't find a MIDI device for %@. Was activateUUID called?", buf, 0x1Cu);
          }
        }

        return;
      }

      v13 = v13 + 1;
    }

    while (v11 != v13);
    v9 = [characteristics2 countByEnumeratingWithState:&v47 objects:v58 count:16];
    v11 = v9;
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_10:
  sub_4A64(v9, v10);
  v16 = qword_1D968;
  if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v53 = "BTLEMIDIDriverCentral.mm";
    v54 = 1024;
    v55 = 717;
    v56 = 2112;
    *v57 = peripheral;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "%25s:%-5d MIDI Service not discovered on %@. Disconnecting ...", buf, 0x1Cu);
  }

  [(CBCentralManager *)self->centralManager cancelPeripheralConnection:peripheral];
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  if ([objc_msgSend(characteristic "UUID")])
  {
    value = [characteristic value];
    if (!error || value)
    {
      v10 = [(BLEMIDIDriverCentral *)self deviceForPeripheral:peripheral];
      if (v10 && (v12 = v10, v10 = [v10 outEndpoint], v10))
      {
        if ([v12 dataReceiver])
        {
          dataReceiver = [v12 dataReceiver];
          value2 = [characteristic value];

          [dataReceiver unpackValue:value2];
        }
      }

      else
      {
        sub_4A64(v10, v11);
        v26 = qword_1D968;
        if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_ERROR))
        {
          v27 = 136315394;
          v28 = "BTLEMIDIDriverCentral.mm";
          v29 = 1024;
          v30 = 759;
          _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: No endpoint found for MIDI output!", &v27, 0x12u);
        }
      }
    }

    return;
  }

  if ([objc_msgSend(characteristic "UUID")])
  {
    v15 = [[NSString alloc] initWithData:objc_msgSend(characteristic encoding:{"value"), 4}];
    sub_4A64(v15, v16);
    v17 = qword_1D968;
    if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
    {
      v27 = 136315650;
      v28 = "BTLEMIDIDriverCentral.mm";
      v29 = 1024;
      v30 = 779;
      v31 = 2112;
      v32 = v15;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "%25s:%-5d Discovered manufacturer name: %@", &v27, 0x1Cu);
    }

    v18 = [(BLEMIDIDriverCentral *)self deviceForPeripheral:peripheral];
    if (v18)
    {
      v19 = v18;
      if ([v18 dev])
      {
        v20 = [v19 dev];
        v21 = &kMIDIPropertyManufacturer;
LABEL_22:
        MIDIObjectSetStringProperty(v20, *v21, v15);
      }
    }
  }

  else if ([objc_msgSend(characteristic "UUID")])
  {
    v15 = [[NSString alloc] initWithData:objc_msgSend(characteristic encoding:{"value"), 4}];
    sub_4A64(v15, v22);
    v23 = qword_1D968;
    if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
    {
      v27 = 136315650;
      v28 = "BTLEMIDIDriverCentral.mm";
      v29 = 1024;
      v30 = 788;
      v31 = 2112;
      v32 = v15;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "%25s:%-5d Discovered model number: %@", &v27, 0x1Cu);
    }

    v24 = [(BLEMIDIDriverCentral *)self deviceForPeripheral:peripheral];
    if (v24)
    {
      v25 = v24;
      if ([v24 dev])
      {
        v20 = [v25 dev];
        v21 = &kMIDIPropertyModel;
        goto LABEL_22;
      }
    }
  }
}

- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error
{
  if (error)
  {
    sub_4A64(self, a2);
    v8 = qword_1D968;
    if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_ERROR))
    {
      v9 = 136316162;
      v10 = "BTLEMIDIDriverCentral.mm";
      v11 = 1024;
      v12 = 811;
      v13 = 2112;
      peripheralCopy = peripheral;
      v15 = 2112;
      characteristicCopy = characteristic;
      v17 = 2112;
      errorCopy = error;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d peripheral: %@ didWriteValueForCharacteristic: %@ error:%@", &v9, 0x30u);
    }
  }
}

- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error
{
  sub_4A64(self, a2);
  v9 = qword_1D968;
  v10 = os_log_type_enabled(qword_1D968, OS_LOG_TYPE_DEBUG);
  if (v10)
  {
    v17 = 136316162;
    v18 = "BTLEMIDIDriverCentral.mm";
    v19 = 1024;
    v20 = 816;
    v21 = 2112;
    errorCopy2 = peripheral;
    v23 = 2112;
    characteristicCopy = characteristic;
    v25 = 2112;
    errorCopy = error;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d peripheral:%@ didUpdateNotificationStateForCharacteristic:%@ error:%@", &v17, 0x30u);
  }

  if (error)
  {
    sub_4A64(v10, v11);
    v12 = qword_1D968;
    if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315650;
      v18 = "BTLEMIDIDriverCentral.mm";
      v19 = 1024;
      v20 = 818;
      v21 = 2112;
      errorCopy2 = error;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d %@", &v17, 0x1Cu);
    }
  }

  else
  {
    v13 = [(BLEMIDIDriverCentral *)self midiCharacteristicForPeripheral:peripheral];
    if (v13)
    {
      isNotifying = [v13 isNotifying];
      if ((isNotifying & 1) == 0)
      {
        sub_4A64(isNotifying, v15);
        v16 = qword_1D968;
        if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_DEBUG))
        {
          v17 = 136315394;
          v18 = "BTLEMIDIDriverCentral.mm";
          v19 = 1024;
          v20 = 822;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d      canceling peripheral connection since notify was removed.", &v17, 0x12u);
        }

        [(CBCentralManager *)self->centralManager cancelPeripheralConnection:peripheral];
      }
    }
  }
}

- (id)deviceForMIDIDevice:(unsigned int)device
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  connectedDevices = self->connectedDevices;
  v5 = [(NSMutableArray *)connectedDevices countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(connectedDevices);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([v9 dev] == device)
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableArray *)connectedDevices countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)deviceForUUID:(id)d
{
  if (d && (v13 = 0u, v14 = 0u, v11 = 0u, v12 = 0u, connectedDevices = self->connectedDevices, (self = [(NSMutableArray *)connectedDevices countByEnumeratingWithState:&v11 objects:v21 count:16]) != 0))
  {
    selfCopy2 = self;
    v6 = *v12;
LABEL_4:
    v7 = 0;
    while (1)
    {
      if (*v12 != v6)
      {
        objc_enumerationMutation(connectedDevices);
      }

      v8 = *(*(&v11 + 1) + 8 * v7);
      if ([objc_msgSend(v8 "uuid")])
      {
        break;
      }

      if (selfCopy2 == ++v7)
      {
        self = [(NSMutableArray *)connectedDevices countByEnumeratingWithState:&v11 objects:v21 count:16];
        selfCopy2 = self;
        if (self)
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    sub_4A64(self, a2);
    v9 = qword_1D968;
    if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v16 = "BTLEMIDIDriverCentral.mm";
      v17 = 1024;
      v18 = 847;
      v19 = 2112;
      dCopy = d;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d no device found with UUID %@", buf, 0x1Cu);
    }

    return 0;
  }

  return v8;
}

- (id)deviceForPeripheral:(id)peripheral
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  connectedDevices = self->connectedDevices;
  v5 = [(NSMutableArray *)connectedDevices countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(connectedDevices);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([v9 peripheral] == peripheral)
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableArray *)connectedDevices countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)deviceForEP:(unsigned int)p
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  connectedDevices = self->connectedDevices;
  v5 = [(NSMutableArray *)connectedDevices countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(connectedDevices);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([v9 inEndpoint] == p || objc_msgSend(v9, "outEndpoint") == p)
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableArray *)connectedDevices countByEnumeratingWithState:&v11 objects:v15 count:16];
      v9 = 0;
      if (v6)
      {
        goto LABEL_3;
      }

      return v9;
    }
  }
}

- (void)removeDeviceForPeripheral:(id)peripheral
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  connectedDevices = self->connectedDevices;
  v6 = [(NSMutableArray *)connectedDevices countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(connectedDevices);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if ([v10 peripheral] == peripheral)
        {
          [(NSMutableArray *)self->connectedDevices removeObject:v10];
          return;
        }
      }

      v7 = [(NSMutableArray *)connectedDevices countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }
}

- (void)removeDeviceForUUID:(id)d
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  connectedDevices = self->connectedDevices;
  v6 = [(NSMutableArray *)connectedDevices countByEnumeratingWithState:&v13 objects:v23 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v14;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(connectedDevices);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        if ([objc_msgSend(v11 "uuid")])
        {
          [(NSMutableArray *)self->connectedDevices removeObject:v11];
          return;
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v6 = [(NSMutableArray *)connectedDevices countByEnumeratingWithState:&v13 objects:v23 count:16];
      v8 = v6;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  sub_4A64(v6, v7);
  v12 = qword_1D968;
  if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v18 = "BTLEMIDIDriverCentral.mm";
    v19 = 1024;
    v20 = 887;
    v21 = 2112;
    dCopy = d;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "%25s:%-5d removeDeviceForPeripheral: no device found with UUID %@", buf, 0x1Cu);
  }
}

- (void)resetAllConnectedDevices
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  connectedDevices = self->connectedDevices;
  v4 = [(NSMutableArray *)connectedDevices countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(connectedDevices);
        }

        MIDIObjectSetIntegerProperty([*(*(&v8 + 1) + 8 * i) dev], kMIDIPropertyOffline, 1);
      }

      v5 = [(NSMutableArray *)connectedDevices countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->connectedPeripherals removeAllObjects];
  [(NSMutableArray *)self->connectedDevices removeAllObjects];
}

- (id)peripheralWithUUID:(id)d
{
  v5 = [[NSUUID alloc] initWithUUIDString:d];
  centralManager = self->centralManager;
  v24 = v5;
  v7 = [(CBCentralManager *)centralManager retrievePeripheralsWithIdentifiers:[NSArray arrayWithObjects:&v24 count:1]];
  if (v7)
  {
    v9 = v7;
    v10 = [(NSArray *)v7 count];
    if (v10 == &dword_0 + 1)
    {
      return [(NSArray *)v9 objectAtIndex:0];
    }

    sub_4A64(v10, v11);
    v17 = qword_1D968;
    if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315650;
      v19 = "BTLEMIDIDriverCentral.mm";
      v20 = 1024;
      v21 = 911;
      v22 = 2048;
      dCopy = [(NSArray *)v9 count];
      v14 = "%25s:%-5d Unexpected peripheral count (%lu)";
      v15 = v17;
      v16 = OS_LOG_TYPE_ERROR;
      goto LABEL_8;
    }
  }

  else
  {
    sub_4A64(0, v8);
    v13 = qword_1D968;
    if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
    {
      v18 = 136315650;
      v19 = "BTLEMIDIDriverCentral.mm";
      v20 = 1024;
      v21 = 909;
      v22 = 2112;
      dCopy = d;
      v14 = "%25s:%-5d No peripheral with UUID %@";
      v15 = v13;
      v16 = OS_LOG_TYPE_INFO;
LABEL_8:
      _os_log_impl(&dword_0, v15, v16, v14, &v18, 0x1Cu);
    }
  }

  return 0;
}

- (BOOL)isAlreadyConnectedAsCentral:(id)central
{
  v3 = [BLEMIDIAccessor midiDeviceForUUID:central isLocalPeripheral:1 isRemotePeripheral:0];
  if (v3)
  {

    LOBYTE(v3) = [BLEMIDIAccessor deviceIsOnline:v3];
  }

  return v3;
}

@end