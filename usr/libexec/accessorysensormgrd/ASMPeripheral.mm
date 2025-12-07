@interface ASMPeripheral
- (ASMPeripheral)init;
- (BOOL)updateWithAADevice:(id)device;
- (id)descriptionWithLevel:(int)level;
@end

@implementation ASMPeripheral

- (ASMPeripheral)init
{
  v6.receiver = self;
  v6.super_class = ASMPeripheral;
  v2 = [(ASMPeripheral *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (id)descriptionWithLevel:(int)level
{
  v18 = 0;
  v5 = [objc_opt_class() description];
  NSAppendPrintF_safe(&v18, "%@", v5);
  v6 = v18;

  bluetoothAddress = self->_bluetoothAddress;
  if (bluetoothAddress)
  {
    v17 = v6;
    v8 = bluetoothAddress;
    NSAppendPrintF_safe(&v17, ", Bt Addr %@", v8);
    v9 = v17;

    v6 = v9;
  }

  bluetoothUUID = self->_bluetoothUUID;
  if (bluetoothUUID)
  {
    v16 = v6;
    v11 = bluetoothUUID;
    NSAppendPrintF_safe(&v16, ", Bt UUID %@", v11);
    v12 = v16;

    v6 = v12;
  }

  if (level < 21)
  {
    v15 = v6;
    NSAppendPrintF_safe(&v15, "\n");
    v13 = v15;

    v6 = v13;
  }

  return v6;
}

- (BOOL)updateWithAADevice:(id)device
{
  deviceCopy = device;
  bluetoothAddressData = [deviceCopy bluetoothAddressData];
  bluetoothAddress = self->_bluetoothAddressData;
  v7 = bluetoothAddressData;
  v8 = v7;
  v9 = bluetoothAddress != v7;
  if (bluetoothAddress == v7)
  {
  }

  else
  {
    if ((v7 == 0) != (bluetoothAddress != 0))
    {
      v10 = [(NSData *)bluetoothAddress isEqual:v7];

      if (v10)
      {
        v9 = 0;
        goto LABEL_9;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_bluetoothAddressData, bluetoothAddressData);
    v11 = CUPrintNSDataAddress();
    bluetoothAddress = self->_bluetoothAddress;
    self->_bluetoothAddress = v11;
  }

LABEL_9:
  identifier = [deviceCopy identifier];
  bluetoothUUID = self->_bluetoothUUID;
  v14 = identifier;
  v15 = v14;
  if (bluetoothUUID == v14)
  {
  }

  else
  {
    if ((v14 == 0) != (bluetoothUUID != 0))
    {
      v16 = [(NSString *)bluetoothUUID isEqual:v14];

      if (v16)
      {
        goto LABEL_17;
      }
    }

    else
    {
    }

    v17 = v15;
    bluetoothUUID = self->_bluetoothUUID;
    self->_bluetoothUUID = v17;
    v9 = 1;
  }

LABEL_17:
  return v9;
}

@end