@interface ASAccessory
- (ASAccessory)initWithCoder:(id)coder;
- (ASAccessory)initWithDADevice:(id)device bundleID:(id)d;
- (ASAccessory)initWithXPCObject:(id)object error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithLevel:(int)level;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation ASAccessory

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bluetoothTransportBridgingIdentifier = self->_bluetoothTransportBridgingIdentifier;
  v12 = coderCopy;
  if (bluetoothTransportBridgingIdentifier)
  {
    [coderCopy encodeObject:bluetoothTransportBridgingIdentifier forKey:@"btBdgId"];
    coderCopy = v12;
  }

  bluetoothIdentifier = self->_bluetoothIdentifier;
  if (bluetoothIdentifier)
  {
    [v12 encodeObject:bluetoothIdentifier forKey:@"bId"];
    coderCopy = v12;
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v12 encodeObject:identifier forKey:@"aSi"];
    coderCopy = v12;
  }

  descriptor = self->_descriptor;
  if (descriptor)
  {
    [v12 encodeObject:descriptor forKey:@"aDr"];
    coderCopy = v12;
  }

  displayName = self->_displayName;
  if (displayName)
  {
    [v12 encodeObject:displayName forKey:@"dNm"];
    coderCopy = v12;
  }

  SSID = self->_SSID;
  if (SSID)
  {
    [v12 encodeObject:SSID forKey:@"wsd"];
    coderCopy = v12;
  }

  state = self->_state;
  if (state)
  {
    [v12 encodeInteger:state forKey:@"aSt"];
    coderCopy = v12;
  }
}

- (ASAccessory)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ASAccessory *)self init];
  if (v5)
  {
    v6 = coderCopy;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v7 = v6;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v8 = v7;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    objc_opt_class();
    NSDecodeObjectIfPresent();
    v9 = v8;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v10 = v9;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v11 = v10;
    if ([v11 containsValueForKey:@"aSt"])
    {
      v5->_state = [v11 decodeIntegerForKey:@"aSt"];
    }

    v12 = v5;
  }

  else
  {
    [ASAccessory initWithCoder:coderCopy];
  }

  return v5;
}

- (void)encodeWithXPCObject:(id)object
{
  v23 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  bluetoothTransportBridgingIdentifier = self->_bluetoothTransportBridgingIdentifier;
  if (bluetoothTransportBridgingIdentifier)
  {
    v6 = bluetoothTransportBridgingIdentifier;
    bytes = [(NSData *)v6 bytes];
    if (bytes)
    {
      v8 = bytes;
    }

    else
    {
      v8 = "";
    }

    v9 = [(NSData *)v6 length];

    xpc_dictionary_set_data(objectCopy, "btBdgId", v8, v9);
  }

  bluetoothIdentifier = self->_bluetoothIdentifier;
  if (bluetoothIdentifier)
  {
    v11 = objectCopy;
    [(NSUUID *)bluetoothIdentifier getUUIDBytes:uuid];
    xpc_dictionary_set_uuid(v11, "bId", uuid);
  }

  identifier = self->_identifier;
  v13 = objectCopy;
  uTF8String = [(NSString *)identifier UTF8String];
  if (uTF8String)
  {
    xpc_dictionary_set_string(v13, "aSi", uTF8String);
  }

  CUXPCEncodeObject();
  displayName = self->_displayName;
  v16 = v13;
  uTF8String2 = [(NSString *)displayName UTF8String];
  if (uTF8String2)
  {
    xpc_dictionary_set_string(v16, "dNm", uTF8String2);
  }

  SSID = self->_SSID;
  v19 = v16;
  uTF8String3 = [(NSString *)SSID UTF8String];
  if (uTF8String3)
  {
    xpc_dictionary_set_string(v19, "wsd", uTF8String3);
  }

  state = self->_state;
  if (state)
  {
    xpc_dictionary_set_int64(v19, "aSt", state);
  }
}

- (ASAccessory)initWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  v7 = [(ASAccessory *)self init];
  if (v7)
  {
    if (MEMORY[0x2383B4C90](objectCopy) == MEMORY[0x277D86468])
    {
      CUXPCDecodeNSData();
      CUXPCDecodeNSUUID();
      CUXPCDecodeNSString();
      objc_opt_class();
      CUXPCDecodeObject();
      CUXPCDecodeNSString();
      CUXPCDecodeNSString();
      v10 = 0;
      if (CUXPCDecodeSInt64RangedEx() == 6)
      {
        v7->_state = v10;
      }

      v8 = v7;
    }

    else if (error)
    {
      ASErrorF(-6756, "XPC non-dict");
      *error = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    [ASAccessory initWithXPCObject:error error:&v10];
    v8 = v10;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSUUID *)self->_bluetoothIdentifier copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSData *)self->_bluetoothTransportBridgingIdentifier copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSString *)self->_identifier copy];
  v10 = v4[8];
  v4[8] = v9;

  v11 = [(ASDiscoveryDescriptor *)self->_descriptor copy];
  v12 = v4[7];
  v4[7] = v11;

  v13 = [(NSString *)self->_displayName copy];
  v14 = v4[4];
  v4[4] = v13;

  v15 = [(NSString *)self->_SSID copy];
  v16 = v4[5];
  v4[5] = v15;

  v4[1] = self->_state;
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (![(ASAccessory *)v6 isMemberOfClass:objc_opt_class()])
    {
      v13 = 0;
LABEL_49:

      goto LABEL_50;
    }

    bluetoothIdentifier = self->_bluetoothIdentifier;
    bluetoothIdentifier = [(ASAccessory *)v6 bluetoothIdentifier];
    v9 = bluetoothIdentifier;
    v10 = bluetoothIdentifier;
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
LABEL_46:

        goto LABEL_47;
      }

      v12 = [(NSUUID *)v9 isEqual:v10];

      if (!v12)
      {
        v13 = 0;
LABEL_48:

        goto LABEL_49;
      }
    }

    bluetoothTransportBridgingIdentifier = self->_bluetoothTransportBridgingIdentifier;
    bluetoothTransportBridgingIdentifier = [(ASAccessory *)v6 bluetoothTransportBridgingIdentifier];
    v16 = bluetoothTransportBridgingIdentifier;
    v17 = bluetoothTransportBridgingIdentifier;
    v9 = v17;
    if (v16 == v17)
    {
    }

    else
    {
      if ((v16 != 0) == (v17 == 0))
      {
        v13 = 0;
        p_isa = &v17->super.isa;
LABEL_45:

        goto LABEL_46;
      }

      v18 = [(NSData *)v16 isEqual:v17];

      if (!v18)
      {
        v13 = 0;
LABEL_47:

        goto LABEL_48;
      }
    }

    identifier = self->_identifier;
    identifier = [(ASAccessory *)v6 identifier];
    p_isa = identifier;
    v22 = identifier;
    v16 = v22;
    if (p_isa == v22)
    {
    }

    else
    {
      if ((p_isa != 0) == (v22 == 0))
      {
        v13 = 0;
        v26 = v22;
LABEL_44:

        goto LABEL_45;
      }

      v23 = [(NSString *)p_isa isEqual:v22];

      if (!v23)
      {
        v13 = 0;
        goto LABEL_46;
      }
    }

    descriptor = self->_descriptor;
    descriptor = [(ASAccessory *)v6 descriptor];
    v26 = descriptor;
    v27 = descriptor;
    p_isa = &v27->super.isa;
    if (v26 == v27)
    {
    }

    else
    {
      if ((v26 != 0) == (v27 == 0))
      {
        v13 = 0;
        v31 = &v27->super.isa;
LABEL_43:

        goto LABEL_44;
      }

      v28 = [(ASDiscoveryDescriptor *)v26 isEqual:v27];

      if (!v28)
      {
        v13 = 0;
        goto LABEL_45;
      }
    }

    displayName = self->_displayName;
    displayName = [(ASAccessory *)v6 displayName];
    v31 = displayName;
    v32 = displayName;
    v26 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      if ((v31 != 0) == (v32 == 0))
      {

        goto LABEL_42;
      }

      v33 = [(NSString *)v31 isEqual:v32];

      if (!v33)
      {
        v13 = 0;
        goto LABEL_44;
      }
    }

    SSID = self->_SSID;
    sSID = [(ASAccessory *)v6 SSID];
    v36 = SSID;
    v37 = sSID;
    v31 = v37;
    if (v36 == v37)
    {

LABEL_40:
      state = self->_state;
      v13 = state == [(ASAccessory *)v6 state];
      goto LABEL_43;
    }

    if ((v36 != 0) != (v37 == 0))
    {
      v40 = [(NSString *)v36 isEqual:v37];

      if (!v40)
      {
        goto LABEL_42;
      }

      goto LABEL_40;
    }

LABEL_42:
    v13 = 0;
    goto LABEL_43;
  }

  v13 = 1;
LABEL_50:

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

  v39 = v4;
  if ((level & 0x8000000) != 0)
  {
    v6 = 0;
  }

  else
  {
    v38 = 0;
    v5 = objc_opt_class();
    CUAppendF(&v38, &v39, "%@", v5);
    v6 = v38;
  }

  identifier = self->_identifier;
  if (identifier)
  {
    v37 = v6;
    v8 = identifier;
    CUAppendF(&v37, &v39, "ID %@", v8);
    v9 = v37;

    v6 = v9;
  }

  displayName = self->_displayName;
  if (displayName)
  {
    v36 = v6;
    v11 = displayName;
    CUAppendF(&v36, &v39, "name '%@'", v11);
    v12 = v36;

    v6 = v12;
  }

  bluetoothIdentifier = self->_bluetoothIdentifier;
  if (bluetoothIdentifier)
  {
    v35 = v6;
    v14 = bluetoothIdentifier;
    CUAppendF(&v35, &v39, "btID %@", v14);
    v15 = v35;

    v6 = v15;
  }

  bluetoothTransportBridgingIdentifier = self->_bluetoothTransportBridgingIdentifier;
  if (bluetoothTransportBridgingIdentifier)
  {
    v34 = v6;
    v17 = bluetoothTransportBridgingIdentifier;
    CUAppendF(&v34, &v39, "btBdgID %@", v17);
    v18 = v34;

    v6 = v18;
  }

  SSID = self->_SSID;
  if (SSID)
  {
    v33 = v6;
    v20 = SSID;
    CUAppendF(&v33, &v39, "SSID %@", v20);
    v21 = v33;

    v6 = v21;
  }

  v32 = v6;
  state = self->_state;
  if (state)
  {
    if (state == 10)
    {
      v23 = @"AwaitingAuthorization";
    }

    else if (state == 20)
    {
      v23 = @"Authorized";
    }

    else
    {
      v23 = @"?";
    }
  }

  else
  {
    v23 = @"Unauthorized";
  }

  CUAppendF(&v32, &v39, "state %@", v23);
  v24 = v32;

  descriptor = self->_descriptor;
  if (descriptor)
  {
    v31 = v24;
    v26 = descriptor;
    CUAppendF(&v31, &v39, "descriptor %@", v26);
    v27 = v31;

    v24 = v27;
  }

  v28 = &stru_28499D698;
  if (v24)
  {
    v28 = v24;
  }

  v29 = v28;

  return v29;
}

- (ASAccessory)initWithDADevice:(id)device bundleID:(id)d
{
  deviceCopy = device;
  dCopy = d;
  v8 = [(ASAccessory *)self init];
  if (v8 && ([deviceCopy flags] & 8) != 0)
  {
    appAccessInfoMap = [deviceCopy appAccessInfoMap];
    v10 = [appAccessInfoMap objectForKeyedSubscript:dCopy];

    if (!v10 || ([v10 accessoryOptions] & 0x40000000) != 0)
    {
      v38 = 0;
    }

    else
    {
      identifier = [deviceCopy identifier];
      v12 = identifier;
      if (identifier)
      {
        v13 = identifier;
        identifier = v8->_identifier;
        v8->_identifier = v13;
      }

      else
      {
        identifier = [MEMORY[0x277CCAD78] UUID];
        uUIDString = [identifier UUIDString];
        v16 = v8->_identifier;
        v8->_identifier = uUIDString;
      }

      if ([v10 accessoryOptions])
      {
        bluetoothIdentifier = [deviceCopy bluetoothIdentifier];
      }

      else
      {
        bluetoothIdentifier = 0;
      }

      bluetoothIdentifier = v8->_bluetoothIdentifier;
      v8->_bluetoothIdentifier = bluetoothIdentifier;

      if (([deviceCopy flags] & 0x200) != 0)
      {
        bluetoothClassicAddress = [deviceCopy bluetoothClassicAddress];
      }

      else
      {
        bluetoothClassicAddress = 0;
      }

      bluetoothTransportBridgingIdentifier = v8->_bluetoothTransportBridgingIdentifier;
      v8->_bluetoothTransportBridgingIdentifier = bluetoothClassicAddress;

      appAccessInfoMap2 = [deviceCopy appAccessInfoMap];
      v22 = [appAccessInfoMap2 objectForKeyedSubscript:dCopy];
      appDiscoveryConfiguration = [v22 appDiscoveryConfiguration];

      if (appDiscoveryConfiguration)
      {
        v24 = [[ASDiscoveryDescriptor alloc] initWithDiscoveryConfiguration:appDiscoveryConfiguration];
      }

      else
      {
        v24 = 0;
      }

      objc_storeStrong(&v8->_descriptor, v24);
      name = [deviceCopy name];
      v26 = name;
      if (name)
      {
        displayName = name;
      }

      else
      {
        displayName = [appDiscoveryConfiguration displayName];
      }

      displayName = v8->_displayName;
      v8->_displayName = displayName;

      appAccessInfoMap3 = [deviceCopy appAccessInfoMap];
      v30 = [appAccessInfoMap3 objectForKeyedSubscript:dCopy];
      state = [v30 state];

      v32 = state == 20 || state == 10;
      v33 = 10;
      if (!v32)
      {
        v33 = 0;
      }

      if (state == 25)
      {
        v33 = 20;
      }

      v8->_state = v33;
      accessoryOptions = [v10 accessoryOptions];
      sSID = 0;
      if ((accessoryOptions & 2) != 0)
      {
        sSID = [deviceCopy SSID];
      }

      SSID = v8->_SSID;
      v8->_SSID = sSID;

      if (([v10 accessoryOptions] & 2) != 0)
      {
        wifiAwarePairingID = [v10 wifiAwarePairingID];
      }

      else
      {
        wifiAwarePairingID = 0;
      }

      v8->_wifiAwarePairedDeviceID = wifiAwarePairingID;
      v8->_wifiAwarePairingID = wifiAwarePairingID;
      if (v8->_bluetoothIdentifier || v8->_SSID || wifiAwarePairingID)
      {
        v38 = v8;
      }

      else
      {
        v38 = 0;
      }
    }
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

- (void)initWithCoder:(void *)a1 .cold.1(void *a1)
{
  v2 = objc_opt_class();
  v3 = ASErrorF(1, "%@ init failed", v2);
  [a1 failWithError:v3];
}

- (void)initWithXPCObject:(void *)a1 error:(void *)a2 .cold.1(void *a1, void *a2)
{
  if (a1)
  {
    v4 = [objc_opt_class() description];
    *a1 = ASErrorF(-6756, "%@ init failed", v4);
  }

  *a2 = 0;
}

@end