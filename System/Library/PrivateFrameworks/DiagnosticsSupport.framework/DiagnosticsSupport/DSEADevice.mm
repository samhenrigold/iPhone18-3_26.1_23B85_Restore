@interface DSEADevice
+ (id)deviceWithModelNumber:(id)number;
+ (id)deviceWithSerialNumber:(id)number;
+ (id)devicesWithModelNumbers:(id)numbers;
- (DSEADevice)initWithAccessory:(id)accessory;
- (DSEADevice)initWithModelNumber:(id)number;
- (DSEADevice)initWithSerialNumber:(id)number;
- (id)information;
@end

@implementation DSEADevice

+ (id)deviceWithSerialNumber:(id)number
{
  numberCopy = number;
  v5 = [[self alloc] initWithSerialNumber:numberCopy];

  return v5;
}

- (DSEADevice)initWithSerialNumber:(id)number
{
  v23 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  v21.receiver = self;
  v21.super_class = DSEADevice;
  v5 = [(DSEADevice *)&v21 init];
  if (v5)
  {
    mEMORY[0x277CC5FB0] = [MEMORY[0x277CC5FB0] sharedAccessoryManager];
    connectedAccessories = [mEMORY[0x277CC5FB0] connectedAccessories];

    if (connectedAccessories)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v8 = connectedAccessories;
      v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v18;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v18 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v17 + 1) + 8 * i);
            serialNumber = [v13 serialNumber];
            v15 = [serialNumber isEqualToString:numberCopy];

            if (v15)
            {
              objc_storeStrong(&v5->_device, v13);
              goto LABEL_13;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:
    }

    if (!v5->_device)
    {

      v5 = 0;
    }
  }

  return v5;
}

+ (id)deviceWithModelNumber:(id)number
{
  numberCopy = number;
  v5 = [[self alloc] initWithModelNumber:numberCopy];

  return v5;
}

- (DSEADevice)initWithModelNumber:(id)number
{
  v23 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  v21.receiver = self;
  v21.super_class = DSEADevice;
  v5 = [(DSEADevice *)&v21 init];
  if (v5)
  {
    mEMORY[0x277CC5FB0] = [MEMORY[0x277CC5FB0] sharedAccessoryManager];
    connectedAccessories = [mEMORY[0x277CC5FB0] connectedAccessories];

    if (connectedAccessories)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v8 = connectedAccessories;
      v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v18;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v18 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v17 + 1) + 8 * i);
            modelNumber = [v13 modelNumber];
            v15 = [modelNumber isEqualToString:numberCopy];

            if (v15)
            {
              objc_storeStrong(&v5->_device, v13);
              goto LABEL_13;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:
    }

    if (!v5->_device)
    {

      v5 = 0;
    }
  }

  return v5;
}

+ (id)devicesWithModelNumbers:(id)numbers
{
  v24 = *MEMORY[0x277D85DE8];
  numbersCopy = numbers;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  mEMORY[0x277CC5FB0] = [MEMORY[0x277CC5FB0] sharedAccessoryManager];
  connectedAccessories = [mEMORY[0x277CC5FB0] connectedAccessories];

  if (connectedAccessories)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = connectedAccessories;
    v7 = connectedAccessories;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          modelNumber = [v12 modelNumber];
          v14 = [numbersCopy containsObject:modelNumber];

          if (v14)
          {
            v15 = [[DSEADevice alloc] initWithAccessory:v12];
            if (v15)
            {
              [v4 addObject:v15];
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    connectedAccessories = v18;
  }

  v16 = [v4 copy];

  return v16;
}

- (DSEADevice)initWithAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v9.receiver = self;
  v9.super_class = DSEADevice;
  v6 = [(DSEADevice *)&v9 init];
  v7 = v6;
  if (v6)
  {
    if (accessoryCopy)
    {
      objc_storeStrong(&v6->_device, accessory);
    }

    else
    {

      v7 = 0;
    }
  }

  return v7;
}

- (id)information
{
  v35[8] = *MEMORY[0x277D85DE8];
  v34[0] = @"capabilities";
  v3 = MEMORY[0x277CCABB0];
  device = [(DSEADevice *)self device];
  v32 = [v3 numberWithUnsignedInt:{objc_msgSend(device, "accessoryCapabilities")}];
  v35[0] = v32;
  v34[1] = @"firmwareRevision";
  device2 = [(DSEADevice *)self device];
  firmwareRevision = [device2 firmwareRevision];
  v30 = firmwareRevision;
  if (!firmwareRevision)
  {
    firmwareRevision = [MEMORY[0x277CBEB68] null];
  }

  v24 = firmwareRevision;
  v35[1] = firmwareRevision;
  v34[2] = @"hardwareRevision";
  device3 = [(DSEADevice *)self device];
  hardwareRevision = [device3 hardwareRevision];
  v6 = hardwareRevision;
  if (!hardwareRevision)
  {
    hardwareRevision = [MEMORY[0x277CBEB68] null];
  }

  v23 = hardwareRevision;
  v35[2] = hardwareRevision;
  v34[3] = @"MACAddress";
  device4 = [(DSEADevice *)self device];
  macAddress = [device4 macAddress];
  v8 = macAddress;
  if (!macAddress)
  {
    macAddress = [MEMORY[0x277CBEB68] null];
  }

  v28 = v6;
  v22 = macAddress;
  v35[3] = macAddress;
  v34[4] = @"modelNumber";
  device5 = [(DSEADevice *)self device];
  modelNumber = [device5 modelNumber];
  v10 = modelNumber;
  if (!modelNumber)
  {
    modelNumber = [MEMORY[0x277CBEB68] null];
  }

  v21 = modelNumber;
  v35[4] = modelNumber;
  v34[5] = @"name";
  device6 = [(DSEADevice *)self device];
  name = [device6 name];
  null = name;
  if (!name)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v35[5] = null;
  v34[6] = @"serialNumber";
  device7 = [(DSEADevice *)self device];
  serialNumber = [device7 serialNumber];
  null2 = serialNumber;
  if (!serialNumber)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v35[6] = null2;
  v34[7] = @"connectionID";
  v17 = MEMORY[0x277CCABB0];
  device8 = [(DSEADevice *)self device];
  v19 = [v17 numberWithUnsignedInteger:{objc_msgSend(device8, "connectionID")}];
  v35[7] = v19;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:8];

  if (!serialNumber)
  {
  }

  if (!name)
  {
  }

  if (!v10)
  {
  }

  if (!v8)
  {
  }

  if (!v28)
  {
  }

  if (!v30)
  {
  }

  return v25;
}

@end