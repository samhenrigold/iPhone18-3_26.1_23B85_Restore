@interface BTHearingHealthObject
- (BTHearingHealthObject)initWithUUID:(id)d productID:(unsigned int)iD vendorID:(unsigned int)vendorID EURegionBit:(unsigned __int8)bit audioDevice:(void *)device readCharacteristics:(id)characteristics;
- (float)getRegionalDosimetryVolumeCurve:(unsigned __int8)curve productID:(unsigned int)d;
- (id)centralManagerStateString;
- (void)centralManager:(id)manager connectionEventDidOccur:(int64_t)occur forPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManagerDidUpdateState:(id)state;
- (void)connectPeripheral:(id)peripheral;
- (void)dealloc;
- (void)disconnectPeripheral:(id)peripheral force:(BOOL)force;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverServices:(id)services;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)readData:(id)data;
- (void)registerService;
- (void)updateRegionalDosimetryVolumeCurve:(unsigned __int8)curve productID:(unsigned int)d audioDevice:(void *)device;
- (void)writeData:(id)data forCharacteristic:(id)characteristic;
@end

@implementation BTHearingHealthObject

- (BTHearingHealthObject)initWithUUID:(id)d productID:(unsigned int)iD vendorID:(unsigned int)vendorID EURegionBit:(unsigned __int8)bit audioDevice:(void *)device readCharacteristics:(id)characteristics
{
  bitCopy = bit;
  v47.receiver = self;
  v47.super_class = BTHearingHealthObject;
  v14 = [(BTHearingHealthObject *)&v47 init];
  v15 = v14;
  if (!v14)
  {
    return v15;
  }

  if (vendorID == 76)
  {
    v18 = 0;
    v19 = &dword_B73A0;
    v20 = 98.0;
    if (iD > 8203)
    {
      if (iD > 8205)
      {
        if (iD - 8206 < 2)
        {
          goto LABEL_44;
        }

        if (iD == 8208)
        {
          v19 = [(BTHearingHealthObject *)v14 getRegionalDosimetryVolumeCurve:bitCopy productID:8208];
          v18 = 0;
          v20 = 98.7;
          goto LABEL_44;
        }

        goto LABEL_42;
      }

      if (iD == 8204)
      {
        v18 = 0;
        v20 = 97.75;
        goto LABEL_44;
      }

      v22 = 8205;
    }

    else
    {
      if (iD <= 8197)
      {
        switch(iD)
        {
          case 0x2002u:
            goto LABEL_44;
          case 0x2003u:
            v19 = [(BTHearingHealthObject *)v14 getRegionalDosimetryVolumeCurve:bitCopy productID:8195];
            v18 = 0;
            *&v21 = 99.0;
            goto LABEL_43;
          case 0x2005u:
            v19 = [(BTHearingHealthObject *)v14 getRegionalDosimetryVolumeCurve:bitCopy productID:8197];
            v18 = 0;
            *&v21 = 98.0;
LABEL_43:
            v20 = *&v21;
            goto LABEL_44;
        }

LABEL_42:
        v18 = 1;
        *&v21 = 100.0;
        goto LABEL_43;
      }

      if (iD == 8198)
      {
        v19 = [(BTHearingHealthObject *)v14 getRegionalDosimetryVolumeCurve:bitCopy productID:8198];
        v18 = 0;
        *&v21 = 101.0;
        goto LABEL_43;
      }

      if (iD == 8201)
      {
        v19 = [(BTHearingHealthObject *)v14 getRegionalDosimetryVolumeCurve:bitCopy productID:8201];
        v18 = 0;
        *&v21 = 102.0;
        goto LABEL_43;
      }

      v22 = 8203;
    }

    if (iD == v22)
    {
      v18 = 0;
      *&v21 = 97.5;
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (vendorID != 158)
  {
    if (iD != 4110 || vendorID != 259)
    {
      if (iD != 771 || vendorID != 474)
      {
        return v15;
      }

      v18 = 0;
      v19 = &dword_B75C0;
      v20 = 92.8;
      goto LABEL_44;
    }

    v18 = 0;
    v19 = &dword_B757C;
    *&v21 = 92.0;
    goto LABEL_43;
  }

  HIDWORD(v17) = iD - 16402;
  LODWORD(v17) = iD - 16402;
  v16 = v17 >> 1;
  if (v16 <= 2)
  {
    if (v16)
    {
      if (v16 != 1)
      {
        return v15;
      }

      v18 = 0;
      v19 = &dword_B74F4;
      v20 = 95.7;
      goto LABEL_44;
    }

    goto LABEL_28;
  }

  if (v16 == 3)
  {
LABEL_28:
    v18 = 0;
    v19 = &dword_B74F4;
LABEL_29:
    *&v21 = 97.0;
    goto LABEL_43;
  }

  if (v16 != 7)
  {
    if (v16 != 9)
    {
      return v15;
    }

    v18 = 0;
    v19 = &dword_B7538;
    goto LABEL_29;
  }

  v18 = 0;
  v19 = &dword_B74F4;
  v20 = 95.4;
LABEL_44:
  v23 = qword_D8510;
  if (os_log_type_enabled(qword_D8510, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v20;
    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "Dosimetry sensitivity = %f", buf, 0xCu);
    v23 = qword_D8510;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *v19;
    v25 = v19[1];
    v26 = v19[2];
    v27 = v19[3];
    v28 = v19[4];
    v29 = v19[5];
    v30 = v19[6];
    v31 = v19[7];
    v32 = v19[8];
    v33 = v19[9];
    v34 = v19[10];
    v35 = v19[11];
    v36 = v19[12];
    v37 = v19[13];
    v38 = v19[14];
    v39 = v19[15];
    v40 = v19[16];
    *buf = 134222080;
    *&buf[4] = v24;
    *&buf[12] = 2048;
    *&buf[14] = v25;
    *&buf[22] = 2048;
    *&buf[24] = v26;
    *&buf[32] = 2048;
    *&buf[34] = v27;
    *&buf[42] = 2048;
    *&buf[44] = v28;
    *&buf[52] = 2048;
    *&buf[54] = v29;
    *&buf[62] = 2048;
    *&buf[64] = v30;
    *&buf[72] = 2048;
    *&buf[74] = v31;
    *&buf[82] = 2048;
    *&buf[84] = v32;
    *&buf[92] = 2048;
    *&buf[94] = v33;
    *&buf[102] = 2048;
    *&buf[104] = v34;
    *&buf[112] = 2048;
    *&buf[114] = v35;
    *&buf[122] = 2048;
    *&buf[124] = v36;
    *&buf[132] = 2048;
    *&buf[134] = v37;
    v51 = 2048;
    v52 = v38;
    v53 = 2048;
    v54 = v39;
    v55 = 2048;
    v56 = v40;
    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "Dosimetry volume curve = [%f, %f, %f, %f, %f, %f, %f, %f, %f, %f, %f, %f, %f, %f, %f, %f, %f]", buf, 0xACu);
  }

  (*(*device + 1392))(device, v20);
  v41 = 0;
  memset(buf, 0, 136);
  do
  {
    *&buf[v41] = CFNumberCreate(kCFAllocatorDefault, kCFNumberFloat32Type, v19);
    v41 += 8;
    ++v19;
  }

  while (v41 != 136);
  v42 = CFArrayCreate(kCFAllocatorDefault, buf, 17, &kCFTypeArrayCallBacks);
  (*(*device + 1400))(device, v42);
  for (i = 0; i != 136; i += 8)
  {
    v44 = *&buf[i];
    if (v44)
    {
      CFRelease(v44);
    }
  }

  CFRelease(v42);
  if (v18)
  {
    v45 = [CBCentralManager alloc];
    v48[0] = CBCentralManagerOptionReceiveSystemEvents;
    v48[1] = CBManagerNeedsRestrictedStateOperation;
    v49[0] = &__kCFBooleanTrue;
    v49[1] = &__kCFBooleanTrue;
    v15->_centralManager = [v45 initWithDelegate:v15 queue:&_dispatch_main_q options:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v49, v48, 2)}];
    [(BTHearingHealthObject *)v15 setUuid:d];
    [(BTHearingHealthObject *)v15 setCharacteristics:characteristics];
    [(BTHearingHealthObject *)v15 setAudioDevice:device];
  }

  return v15;
}

- (void)dealloc
{
  self->_audioDevice = 0;

  self->_centralManager = 0;
  self->_peripheral = 0;

  self->_uuid = 0;
  self->_dosimetrySensitivityCharacteristic = 0;

  self->_dosimetryVolumeCurveCharacteristic = 0;
  self->_characteristics = 0;
  v3.receiver = self;
  v3.super_class = BTHearingHealthObject;
  [(BTHearingHealthObject *)&v3 dealloc];
}

- (void)registerService
{
  if ([(BTHearingHealthObject *)self centralManager]&& [(CBCentralManager *)[(BTHearingHealthObject *)self centralManager] state]== &dword_4 + 1)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v3 = objc_alloc_init(NSMutableArray);
    [v3 addObject:{+[CBUUID UUIDWithString:](CBUUID, "UUIDWithString:", CBUUIDAppleHeadsetPropertyServiceString)}];
    [v4 setObject:v3 forKeyedSubscript:CBConnectionEventMatchingOptionServiceUUIDs];
    [(CBCentralManager *)[(BTHearingHealthObject *)self centralManager] registerForConnectionEventsWithOptions:v4];
  }
}

- (void)connectPeripheral:(id)peripheral
{
  if ([(CBCentralManager *)[(BTHearingHealthObject *)self centralManager] state]== &dword_4 + 1)
  {
    centralManager = [(BTHearingHealthObject *)self centralManager];

    [(CBCentralManager *)centralManager connectPeripheral:peripheral options:0];
  }
}

- (void)disconnectPeripheral:(id)peripheral force:(BOOL)force
{
  forceCopy = force;
  if (-[CBCentralManager state](-[BTHearingHealthObject centralManager](self, "centralManager"), "state") == &dword_4 + 1 && [peripheral state])
  {
    v7 = &__kCFBooleanTrue;
    if (!forceCopy)
    {
      v7 = &__kCFBooleanFalse;
    }

    v8[0] = CBCancelPeripheralConnectionOptionForce;
    v8[1] = CBCancelPeripheralConnectionOptionDoNotAutoConnectBuiltInServices;
    v9[0] = v7;
    v9[1] = &__kCFBooleanFalse;
    [(CBCentralManager *)[(BTHearingHealthObject *)self centralManager] cancelPeripheralConnection:peripheral options:[NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2]];
  }
}

- (void)centralManagerDidUpdateState:(id)state
{
  if ([(CBCentralManager *)[(BTHearingHealthObject *)self centralManager] state]== &dword_4 + 1)
  {

    [(BTHearingHealthObject *)self registerService];
  }

  else if ([(CBCentralManager *)[(BTHearingHealthObject *)self centralManager] state]== &dword_4 || [(CBCentralManager *)[(BTHearingHealthObject *)self centralManager] state]== &dword_0 + 1)
  {

    [(BTHearingHealthObject *)self setPeripheral:0];
  }
}

- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral
{
  if ([objc_msgSend(peripheral identifier])
  {
    v6 = qword_D8510;
    if (os_log_type_enabled(qword_D8510, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      uuid = [(BTHearingHealthObject *)self uuid];
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Connected AHPS peripheral - UUID=%@", &v7, 0xCu);
    }

    [peripheral setDelegate:self];
    [(CBPeripheral *)[(BTHearingHealthObject *)self peripheral] discoverServices:0];
  }
}

- (void)peripheral:(id)peripheral didDiscoverServices:(id)services
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  services = [peripheral services];
  v6 = [services countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    v9 = CBUUIDAppleHeadsetPropertyServiceString;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(services);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([objc_msgSend(v11 "UUID")])
        {
          v12 = qword_D8510;
          if (os_log_type_enabled(qword_D8510, OS_LOG_TYPE_DEFAULT))
          {
            uuid = [(BTHearingHealthObject *)self uuid];
            *buf = 138412290;
            v19 = uuid;
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Discovered AHPS - UUID=%@", buf, 0xCu);
          }

          [(CBPeripheral *)[(BTHearingHealthObject *)self peripheral] discoverCharacteristics:0 forService:v11];
          return;
        }
      }

      v7 = [services countByEnumeratingWithState:&v14 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  characteristics = [service characteristics];
  v7 = [characteristics countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    v10 = CBUUIDDosimetrySensitivityCharacteristicString;
    v11 = CBUUIDDosimetryVolumeCurveCharacteristicString;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(characteristics);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        if ([objc_msgSend(v13 "UUID")])
        {
          [(BTHearingHealthObject *)self setDosimetrySensitivityCharacteristic:v13];
        }

        else if ([objc_msgSend(v13 "UUID")])
        {
          [(BTHearingHealthObject *)self setDosimetryVolumeCurveCharacteristic:v13];
        }

        if (-[NSMutableArray containsObject:](-[BTHearingHealthObject characteristics](self, "characteristics"), "containsObject:", [v13 UUID]))
        {
          [(BTHearingHealthObject *)self readData:v13];
        }
      }

      v8 = [characteristics countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error
{
  v6 = qword_D8510;
  if (os_log_type_enabled(qword_D8510, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    uuid = [(BTHearingHealthObject *)self uuid];
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Failed to connect AHPS peripheral - UUID=%@", &v7, 0xCu);
  }

  [(BTHearingHealthObject *)self setPeripheral:0];
}

- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error
{
  v6 = qword_D8510;
  if (os_log_type_enabled(qword_D8510, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    uuid = [(BTHearingHealthObject *)self uuid];
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Disconnected AHPS peripheral - UUID=%@", &v7, 0xCu);
  }

  [(BTHearingHealthObject *)self setPeripheral:0];
}

- (void)centralManager:(id)manager connectionEventDidOccur:(int64_t)occur forPeripheral:(id)peripheral
{
  if (occur)
  {
    if (occur == 1 && [objc_msgSend(peripheral identifier] && !-[BTHearingHealthObject peripheral](self, "peripheral"))
    {
      [(BTHearingHealthObject *)self setPeripheral:peripheral];

      [(BTHearingHealthObject *)self connectPeripheral:peripheral];
    }
  }

  else
  {

    [(BTHearingHealthObject *)self disconnectPeripheral:peripheral force:?];
  }
}

- (id)centralManagerStateString
{
  state = [(CBCentralManager *)[(BTHearingHealthObject *)self centralManager] state];
  if ((state - 1) > 9)
  {
    return @"unknown";
  }

  else
  {
    return off_AF9D8[(state - 1)];
  }
}

- (void)writeData:(id)data forCharacteristic:(id)characteristic
{
  peripheral = [(BTHearingHealthObject *)self peripheral];

  [(CBPeripheral *)peripheral writeValue:data forCharacteristic:characteristic type:1];
}

- (void)readData:(id)data
{
  peripheral = [(BTHearingHealthObject *)self peripheral];

  [(CBPeripheral *)peripheral readValueForCharacteristic:data];
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  if ([(BTHearingHealthObject *)self audioDevice])
  {
    uUID = [characteristic UUID];
    if ([uUID isEqual:{+[CBUUID UUIDWithString:](CBUUID, "UUIDWithString:", CBUUIDDosimetrySensitivityCharacteristicString)}])
    {
      if (error)
      {
        if (os_log_type_enabled(qword_D8510, OS_LOG_TYPE_ERROR))
        {
          sub_7C04C(peripheral);
        }
      }

      else if ([objc_msgSend(characteristic "value")] < 4)
      {
        if (os_log_type_enabled(qword_D8510, OS_LOG_TYPE_ERROR))
        {
          sub_7C0D0(peripheral);
        }
      }

      else
      {
        LODWORD(v18) = 0;
        [objc_msgSend(characteristic "value")];
        audioDevice = [(BTHearingHealthObject *)self audioDevice];
        v12.n128_u32[0] = v18;
        (*(*audioDevice + 1392))(v12);
      }
    }

    else
    {
      uUID2 = [characteristic UUID];
      if ([uUID2 isEqual:{+[CBUUID UUIDWithString:](CBUUID, "UUIDWithString:", CBUUIDDosimetryVolumeCurveCharacteristicString)}])
      {
        if (error)
        {
          if (os_log_type_enabled(qword_D8510, OS_LOG_TYPE_ERROR))
          {
            sub_7BF24(peripheral);
          }
        }

        else if ([objc_msgSend(characteristic "value")] < 0x44)
        {
          if (os_log_type_enabled(qword_D8510, OS_LOG_TYPE_ERROR))
          {
            sub_7BFA8(peripheral);
          }
        }

        else
        {
          v28 = 0;
          memset(v27, 0, sizeof(v27));
          v13 = v27;
          [objc_msgSend(characteristic "value")];
          v14 = 0;
          v26 = 0;
          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v18 = 0u;
          v19 = 0u;
          do
          {
            *(&v18 + v14) = CFNumberCreate(kCFAllocatorDefault, kCFNumberFloat32Type, v13);
            v14 += 8;
            v13 = (v13 + 4);
          }

          while (v14 != 136);
          v15 = CFArrayCreate(kCFAllocatorDefault, &v18, 17, &kCFTypeArrayCallBacks);
          (*(*[(BTHearingHealthObject *)self audioDevice:v18]+ 1400))();
          for (i = 0; i != 136; i += 8)
          {
            v17 = *(&v18 + i);
            if (v17)
            {
              CFRelease(v17);
            }
          }

          if (v15)
          {
            CFRelease(v15);
          }
        }
      }
    }
  }
}

- (float)getRegionalDosimetryVolumeCurve:(unsigned __int8)curve productID:(unsigned int)d
{
  v4 = &dword_B73A0;
  v5 = &unk_B74B0;
  v6 = &unk_B73E4;
  if (d <= 8197)
  {
    if (curve)
    {
      v6 = &unk_B74B0;
    }

    if (d == 8197)
    {
      v4 = v6;
    }

    if (d == 8195)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v7 = &unk_B746C;
    if (curve)
    {
      v6 = &unk_B7428;
    }

    else
    {
      v7 = &unk_B73E4;
      v5 = &unk_B73E4;
    }

    if (d == 8201)
    {
      v4 = v6;
    }

    if (d == 8208)
    {
      v4 = v5;
    }

    if (d == 8198)
    {
      return v7;
    }

    else
    {
      return v4;
    }
  }
}

- (void)updateRegionalDosimetryVolumeCurve:(unsigned __int8)curve productID:(unsigned int)d audioDevice:(void *)device
{
  if (device)
  {
    v6 = [(BTHearingHealthObject *)self getRegionalDosimetryVolumeCurve:curve productID:*&d];
    v7 = 0;
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    do
    {
      *(v11 + v7) = CFNumberCreate(kCFAllocatorDefault, kCFNumberFloat32Type, v6);
      v7 += 8;
      ++v6;
    }

    while (v7 != 136);
    v8 = CFArrayCreate(kCFAllocatorDefault, v11, 17, &kCFTypeArrayCallBacks);
    (*(*device + 1400))(device, v8);
    for (i = 0; i != 136; i += 8)
    {
      v10 = *(v11 + i);
      if (v10)
      {
        CFRelease(v10);
      }
    }

    CFRelease(v8);
  }
}

@end