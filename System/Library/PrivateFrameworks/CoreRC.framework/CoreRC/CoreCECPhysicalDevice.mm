@interface CoreCECPhysicalDevice
+ (id)physicalDeviceTreeWithLogicalDevices:(id)devices;
- (BOOL)isEqual:(id)equal;
- (CoreCECPhysicalDevice)init;
- (CoreCECPhysicalDevice)initWithLogicalDevice:(id)device;
- (CoreCECPhysicalDevice)initWithPhysicalAddress:(unsigned __int16)address;
- (id)description;
- (id)propertyList;
- (int64_t)compare:(id)compare;
- (void)addChild:(id)child;
- (void)dealloc;
@end

@implementation CoreCECPhysicalDevice

- (CoreCECPhysicalDevice)init
{
  v5.receiver = self;
  v5.super_class = CoreCECPhysicalDevice;
  v2 = [(CoreCECPhysicalDevice *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_physicalAddress = -1;
    v2->_logicalDevices = objc_opt_new();
    v3->_children = objc_opt_new();
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CoreCECPhysicalDevice;
  [(CoreCECPhysicalDevice *)&v3 dealloc];
}

- (id)description
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAB68];
  v16.receiver = self;
  v16.super_class = CoreCECPhysicalDevice;
  v4 = [(CoreCECPhysicalDevice *)&v16 description];
  v18[0] = CECPhysicalAddressStringWithAddress(self->_physicalAddress);
  v5 = objc_msgSend(v3, "stringWithFormat:", @"%@ %s ("), v4, v18;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  logicalDevices = [(CoreCECPhysicalDevice *)self logicalDevices];
  v7 = [(NSSet *)logicalDevices countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(logicalDevices);
        }

        [v5 appendFormat:@" %u", objc_msgSend(*(*(&v12 + 1) + 8 * v10++), "logicalAddress")];
      }

      while (v8 != v10);
      v8 = [(NSSet *)logicalDevices countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v8);
  }

  [v5 appendString:@""]);
  return [MEMORY[0x277CCACA8] stringWithString:v5];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  physicalAddress = [(CoreCECPhysicalDevice *)self physicalAddress];
  return physicalAddress == [equal physicalAddress];
}

- (CoreCECPhysicalDevice)initWithPhysicalAddress:(unsigned __int16)address
{
  if (CECPhysicalAddressIsValid(address))
  {
    result = [(CoreCECPhysicalDevice *)self init];
    if (result)
    {
      result->_physicalAddress = address;
    }
  }

  else
  {

    return 0;
  }

  return result;
}

- (CoreCECPhysicalDevice)initWithLogicalDevice:(id)device
{
  v4 = -[CoreCECPhysicalDevice initWithPhysicalAddress:](self, "initWithPhysicalAddress:", [device physicalAddress]);
  v5 = v4;
  if (v4)
  {
    [(CoreCECPhysicalDevice *)v4 addLogicalDevice:device];
  }

  return v5;
}

- (void)addChild:(id)child
{
  if (([(NSMutableArray *)self->_children containsObject:?]& 1) == 0)
  {
    [(NSMutableArray *)self->_children addObject:child];
    [(NSMutableArray *)self->_children sortUsingSelector:sel_compare_];

    [child setParent:self];
  }
}

- (int64_t)compare:(id)compare
{
  physicalAddress = [(CoreCECPhysicalDevice *)self physicalAddress];
  physicalAddress2 = [compare physicalAddress];
  v6 = -1;
  if (physicalAddress >= physicalAddress2)
  {
    v6 = 1;
  }

  if (physicalAddress == physicalAddress2)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

+ (id)physicalDeviceTreeWithLogicalDevices:(id)devices
{
  v36 = *MEMORY[0x277D85DE8];
  v25 = [[CoreCECPhysicalDevice alloc] initWithPhysicalAddress:0];
  v4 = [objc_alloc(MEMORY[0x277CBEB58]) initWithObjects:{v25, 0}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = [devices countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v31;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(devices);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        if ([v9 physicalAddress] != 0xFFFF)
        {
          v10 = [v4 physicalDeviceWithAddress:{objc_msgSend(v9, "physicalAddress")}];
          if (!v10)
          {
            v11 = [[CoreCECPhysicalDevice alloc] initWithLogicalDevice:v9];
            if (!v11)
            {
              continue;
            }

            v10 = v11;
            [v4 addObject:v11];
          }

          [(CoreCECPhysicalDevice *)v10 addLogicalDevice:v9];
        }
      }

      v6 = [devices countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v6);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = [MEMORY[0x277CBEB98] setWithSet:v4];
  v13 = [v12 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v26 + 1) + 8 * j);
        physicalAddress = [(CoreCECPhysicalDevice *)v17 physicalAddress];
        if (physicalAddress)
        {
          v19 = 15;
          do
          {
            v20 = v19;
            v19 *= 16;
          }

          while ((v20 & physicalAddress) == 0);
          v21 = physicalAddress & ~v20;
          if ((physicalAddress & ~v20) != 0)
          {
            do
            {
              v22 = [v4 physicalDeviceWithAddress:v21];
              if (!v22)
              {
                v23 = [[CoreCECPhysicalDevice alloc] initWithPhysicalAddress:v21];
                if (!v23)
                {
                  goto LABEL_29;
                }

                v22 = v23;
                [v4 addObject:v23];
              }

              [(CoreCECPhysicalDevice *)v22 addChild:v17];
              v21 &= ~(16 * v20);
              v20 *= 16;
              v17 = v22;
            }

            while (v21);
          }

          else
          {
            v22 = v17;
          }

          [(CoreCECPhysicalDevice *)v25 addChild:v22];
        }

LABEL_29:
        ;
      }

      v14 = [v12 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v14);
  }

  return v25;
}

- (id)propertyList
{
  v6[1] = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = MEMORY[0x277CCACA8];
  v6[0] = CECPhysicalAddressStringWithAddress(self->_physicalAddress);
  [dictionary setValue:objc_msgSend(v4 forKey:{"stringWithUTF8String:", v6), @"physical address"}];
  [dictionary setValue:-[NSArray valueForKey:](-[CoreCECPhysicalDevice children](self forKey:{"children"), "valueForKey:", @"propertyList", @"children"}];
  [dictionary setValue:objc_msgSend(-[NSSet valueForKey:](-[CoreCECPhysicalDevice logicalDevices](self forKey:{"logicalDevices"), "valueForKey:", @"logicalAddress", "allObjects"), @"logical addresses"}];
  return [MEMORY[0x277CBEAC0] dictionaryWithDictionary:dictionary];
}

@end