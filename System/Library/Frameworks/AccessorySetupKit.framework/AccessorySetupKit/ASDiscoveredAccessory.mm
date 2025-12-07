@interface ASDiscoveredAccessory
- (ASDiscoveredAccessory)initWithCoder:(id)coder;
- (ASDiscoveredAccessory)initWithDADevice:(id)device bundleID:(id)d;
- (ASDiscoveredAccessory)initWithXPCObject:(id)object error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithLevel:(int)level;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation ASDiscoveredAccessory

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = ASDiscoveredAccessory;
  [(ASAccessory *)&v8 encodeWithCoder:coderCopy];
  v5 = self->_bluetoothAdvertisementData;
  v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:0];
  if (v6)
  {
    [coderCopy encodeObject:v6 forKey:@"btAdv"];
  }

  bluetoothRSSI = self->_bluetoothRSSI;
  if (bluetoothRSSI)
  {
    [coderCopy encodeObject:bluetoothRSSI forKey:@"btRSSI"];
  }
}

- (ASDiscoveredAccessory)initWithCoder:(id)coder
{
  v10 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = ASDiscoveredAccessory;
  v5 = [(ASAccessory *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = coderCopy;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    objc_opt_class();
    NSDecodeObjectIfPresent();
    v7 = v5;
  }

  else
  {
    [ASDiscoveredAccessory initWithCoder:coderCopy];
  }

  return v5;
}

- (void)encodeWithXPCObject:(id)object
{
  objectCopy = object;
  v13.receiver = self;
  v13.super_class = ASDiscoveredAccessory;
  [(ASAccessory *)&v13 encodeWithXPCObject:objectCopy];
  v5 = self->_bluetoothAdvertisementData;
  v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:0];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    v9 = objectCopy;
    bytes = [v7 bytes];
    if (bytes)
    {
      v11 = bytes;
    }

    else
    {
      v11 = "";
    }

    xpc_dictionary_set_data(v9, "btAdv", v11, [v7 length]);
  }

  intValue = [(NSNumber *)self->_bluetoothRSSI intValue];
  if (intValue)
  {
    xpc_dictionary_set_int64(objectCopy, "btRSSI", intValue);
  }
}

- (ASDiscoveredAccessory)initWithXPCObject:(id)object error:(id *)error
{
  v15[6] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v14.receiver = self;
  v14.super_class = ASDiscoveredAccessory;
  v7 = [(ASAccessory *)&v14 initWithXPCObject:objectCopy error:error];
  if (v7)
  {
    if (MEMORY[0x2383B4C90](objectCopy) == MEMORY[0x277D86468])
    {
      CUXPCDecodeNSData();
      v15[0] = 0;
      if (CUXPCDecodeSInt64RangedEx() == 6)
      {
        v8 = LODWORD(v15[0]);
      }

      else
      {
        v8 = 0;
      }

      v9 = [MEMORY[0x277CCABB0] numberWithInt:{v8, 0}];
      bluetoothRSSI = v7->_bluetoothRSSI;
      v7->_bluetoothRSSI = v9;

      v11 = v7;
    }

    else if (error)
    {
      ASErrorF(-6756, "XPC non-dict");
      *error = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    [ASAccessory initWithXPCObject:error error:v15];
    v11 = v15[0];
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = ASDiscoveredAccessory;
  v4 = [(ASAccessory *)&v10 copyWithZone:zone];
  v5 = [(NSDictionary *)self->_bluetoothAdvertisementData copy];
  v6 = v4[10];
  v4[10] = v5;

  v7 = [(NSNumber *)self->_bluetoothRSSI copy];
  v8 = v4[11];
  v4[11] = v7;

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (![(ASDiscoveredAccessory *)v6 isMemberOfClass:objc_opt_class()])
    {
      v13 = 0;
LABEL_27:

      goto LABEL_28;
    }

    identifier = [(ASAccessory *)self identifier];
    identifier2 = [(ASAccessory *)v6 identifier];
    v9 = identifier;
    v10 = identifier2;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      if ((v9 != 0) == (v10 == 0))
      {
        v13 = 0;
        v16 = v10;
        v18 = v9;
LABEL_24:

        goto LABEL_25;
      }

      v12 = [(NSDictionary *)v9 isEqual:v10];

      if (!v12)
      {
        v13 = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    bluetoothAdvertisementData = self->_bluetoothAdvertisementData;
    bluetoothAdvertisementData = [(ASDiscoveredAccessory *)v6 bluetoothAdvertisementData];
    v16 = bluetoothAdvertisementData;
    v17 = bluetoothAdvertisementData;
    v18 = v17;
    if (v16 == v17)
    {
    }

    else
    {
      if ((v16 != 0) == (v17 == 0))
      {
        v13 = 0;
        v22 = v17;
LABEL_23:

        goto LABEL_24;
      }

      v19 = [(NSDictionary *)v16 isEqual:v17];

      if (!v19)
      {
        v13 = 0;
LABEL_25:

        goto LABEL_26;
      }
    }

    bluetoothRSSI = self->_bluetoothRSSI;
    bluetoothRSSI = [(ASDiscoveredAccessory *)v6 bluetoothRSSI];
    v22 = bluetoothRSSI;
    v23 = bluetoothRSSI;
    v16 = v23;
    if (v22 == v23)
    {
      v13 = 1;
    }

    else if ((v22 != 0) == (v23 == 0))
    {
      v13 = 0;
    }

    else
    {
      v13 = [(NSNumber *)v22 isEqual:v23];
    }

    goto LABEL_23;
  }

  v13 = 1;
LABEL_28:

  return v13;
}

- (id)descriptionWithLevel:(int)level
{
  if ((level & 0x8000000) != 0)
  {
    v4 = 8;
  }

  else
  {
    v4 = 12;
  }

  v23 = v4;
  if ((level & 0x8000000) != 0)
  {
    v6 = 0;
  }

  else
  {
    v22 = 0;
    v5 = objc_opt_class();
    CUAppendF(&v22, &v23, "%@", v5);
    v6 = v22;
  }

  identifier = [(ASAccessory *)self identifier];
  v8 = identifier;
  if (identifier)
  {
    v21 = v6;
    CUAppendF(&v21, &v23, "ID %@", identifier);
    v9 = v21;

    v6 = v9;
  }

  bluetoothAdvertisementData = self->_bluetoothAdvertisementData;
  if (bluetoothAdvertisementData)
  {
    v20 = v6;
    v11 = bluetoothAdvertisementData;
    CUAppendF(&v20, &v23, "btAdvData %@", v11);
    v12 = v20;

    v6 = v12;
  }

  bluetoothRSSI = self->_bluetoothRSSI;
  if (bluetoothRSSI)
  {
    v19 = v6;
    v14 = bluetoothRSSI;
    CUAppendF(&v19, &v23, "btRSSI %@", v14);
    v15 = v19;

    v6 = v15;
  }

  v16 = &stru_28499D698;
  if (v6)
  {
    v16 = v6;
  }

  v17 = v16;

  return v17;
}

- (ASDiscoveredAccessory)initWithDADevice:(id)device bundleID:(id)d
{
  deviceCopy = device;
  dCopy = d;
  v8 = [(ASDiscoveredAccessory *)self init];
  if (v8 && ([deviceCopy flags] & 8) != 0)
  {
    identifier = [deviceCopy identifier];
    if (identifier)
    {
      [(ASAccessory *)v8 setIdentifier:identifier];
    }

    else
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      [(ASAccessory *)v8 setIdentifier:uUIDString];
    }

    bluetoothAdvertisementData = [deviceCopy bluetoothAdvertisementData];
    v13 = [bluetoothAdvertisementData copy];
    [(ASDiscoveredAccessory *)v8 setBluetoothAdvertisementData:v13];

    bluetoothRSSI = [deviceCopy bluetoothRSSI];
    v15 = [bluetoothRSSI copy];
    [(ASDiscoveredAccessory *)v8 setBluetoothRSSI:v15];

    appAccessInfoMap = [deviceCopy appAccessInfoMap];
    v17 = [appAccessInfoMap objectForKeyedSubscript:dCopy];
    appDiscoveryConfiguration = [v17 appDiscoveryConfiguration];

    if (appDiscoveryConfiguration)
    {
      v19 = [[ASDiscoveryDescriptor alloc] initWithDiscoveryConfiguration:appDiscoveryConfiguration];
    }

    else
    {
      v19 = 0;
    }

    [(ASAccessory *)v8 setDescriptor:v19];
    name = [deviceCopy name];
    if (name)
    {
      [(ASAccessory *)v8 setDisplayName:name];
    }

    else
    {
      displayName = [appDiscoveryConfiguration displayName];
      [(ASAccessory *)v8 setDisplayName:displayName];
    }

    [(ASAccessory *)v8 setState:0];
    v22 = v8;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)initWithCoder:(void *)a1 .cold.1(void *a1)
{
  v2 = objc_opt_class();
  v3 = ASErrorF(1, "%@ init failed", v2);
  [a1 failWithError:v3];
}

@end