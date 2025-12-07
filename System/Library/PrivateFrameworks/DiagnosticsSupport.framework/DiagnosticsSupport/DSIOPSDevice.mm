@interface DSIOPSDevice
+ (id)deviceMatchingAccessories:(id)accessories;
+ (id)deviceWithAccessory:(unint64_t)accessory;
- (DSIOPSDevice)initWithDeviceIdentifiers:(id)identifiers;
- (id)information;
- (id)serialNumber;
@end

@implementation DSIOPSDevice

+ (id)deviceWithAccessory:(unint64_t)accessory
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = [DSIODeviceIdentifier identifierForAccessoryModel:accessory];
  v5 = [self alloc];
  v9[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v7 = [v5 initWithDeviceIdentifiers:v6];

  return v7;
}

+ (id)deviceMatchingAccessories:(id)accessories
{
  v23 = *MEMORY[0x277D85DE8];
  accessoriesCopy = accessories;
  array = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = accessoriesCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = +[DSIODeviceIdentifier identifierForAccessoryModel:](DSIODeviceIdentifier, "identifierForAccessoryModel:", [v10 intValue]);
        if (v11)
        {
          [array addObject:v11];
        }

        else
        {
          v12 = DiagnosticLogHandleForCategory(6);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v21 = v10;
            _os_log_fault_impl(&dword_248BD5000, v12, OS_LOG_TYPE_FAULT, "Identifier not found for accessory %@", buf, 0xCu);
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v7);
  }

  v13 = [[self alloc] initWithDeviceIdentifiers:array];

  return v13;
}

- (DSIOPSDevice)initWithDeviceIdentifiers:(id)identifiers
{
  v11 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v10.receiver = self;
  v10.super_class = DSIOPSDevice;
  v4 = [(DSIOPSDevice *)&v10 init];
  if (v4)
  {
    blob = 0;
    v5 = IOPSCopyPowerSourcesByTypePrecise();
    v6 = DiagnosticLogHandleForCategory(6);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(DSIOPSDevice *)v5 initWithDeviceIdentifiers:v6];
    }

    if (!v4->_info)
    {

      v4 = 0;
    }
  }

  return v4;
}

- (id)serialNumber
{
  info = [(DSIOPSDevice *)self info];
  v3 = [info objectForKeyedSubscript:@"Accessory Identifier"];

  return v3;
}

- (id)information
{
  v33[7] = *MEMORY[0x277D85DE8];
  v32[0] = @"serialNumber";
  info = [(DSIOPSDevice *)self info];
  null = [info objectForKeyedSubscript:@"Accessory Identifier"];
  v4 = null;
  if (!null)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v23 = null;
  v33[0] = null;
  v32[1] = @"fullChargeCapacity";
  info2 = [(DSIOPSDevice *)self info];
  null2 = [info2 objectForKeyedSubscript:@"Max Capacity"];
  v6 = null2;
  if (!null2)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v30 = v4;
  v22 = null2;
  v33[1] = null2;
  v32[2] = @"nominalChargeCapacity";
  info3 = [(DSIOPSDevice *)self info];
  null3 = [info3 objectForKeyedSubscript:@"Nominal Capacity"];
  v8 = null3;
  if (!null3)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v21 = null3;
  v33[2] = null3;
  v32[3] = @"cycleCount";
  info4 = [(DSIOPSDevice *)self info];
  null4 = [info4 objectForKeyedSubscript:@"CycleCount"];
  v10 = null4;
  if (!null4)
  {
    null4 = [MEMORY[0x277CBEB68] null];
  }

  v28 = v6;
  v33[3] = null4;
  v32[4] = @"temperature";
  info5 = [(DSIOPSDevice *)self info];
  v11 = [info5 objectForKeyedSubscript:@"Temperature"];
  null5 = v11;
  if (!v11)
  {
    null5 = [MEMORY[0x277CBEB68] null];
  }

  v33[4] = null5;
  v32[5] = @"isCharging";
  info6 = [(DSIOPSDevice *)self info];
  v14 = [info6 objectForKeyedSubscript:@"Is Charging"];
  null6 = v14;
  if (!v14)
  {
    null6 = [MEMORY[0x277CBEB68] null];
  }

  v33[5] = null6;
  v32[6] = @"powerSourceState";
  info7 = [(DSIOPSDevice *)self info];
  v17 = [info7 objectForKeyedSubscript:@"Power Source State"];
  null7 = v17;
  if (!v17)
  {
    null7 = [MEMORY[0x277CBEB68] null];
  }

  v33[6] = null7;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:7];
  if (!v17)
  {
  }

  if (!v14)
  {
  }

  if (!v11)
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

  return v24;
}

- (void)initWithDeviceIdentifiers:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_248BD5000, a2, OS_LOG_TYPE_ERROR, "Could not retrieve power sources info. Error code: %03X", v2, 8u);
}

@end