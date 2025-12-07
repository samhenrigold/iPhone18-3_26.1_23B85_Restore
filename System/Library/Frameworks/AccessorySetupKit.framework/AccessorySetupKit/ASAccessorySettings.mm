@interface ASAccessorySettings
+ (ASAccessorySettings)defaultSettings;
- (ASAccessorySettings)initWithCoder:(id)coder;
- (ASAccessorySettings)initWithXPCObject:(id)object error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithLevel:(int)level;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation ASAccessorySettings

+ (ASAccessorySettings)defaultSettings
{
  v2 = objc_alloc_init(ASAccessorySettings);

  return v2;
}

- (ASAccessorySettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  NSDecodeObjectIfPresent();
  v5 = coderCopy;
  objc_opt_class();
  NSDecodeObjectIfPresent();

  v6 = v5;
  objc_opt_class();
  NSDecodeObjectIfPresent();

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  displayName = self->_displayName;
  v8 = coderCopy;
  if (displayName)
  {
    [coderCopy encodeObject:displayName forKey:@"dNm"];
    coderCopy = v8;
  }

  SSID = self->_SSID;
  if (SSID)
  {
    [v8 encodeObject:SSID forKey:@"wsd"];
    coderCopy = v8;
  }

  bluetoothTransportBridgingIdentifier = self->_bluetoothTransportBridgingIdentifier;
  if (bluetoothTransportBridgingIdentifier)
  {
    [v8 encodeObject:bluetoothTransportBridgingIdentifier forKey:@"mPid"];
    coderCopy = v8;
  }
}

- (void)encodeWithXPCObject:(id)object
{
  objectCopy = object;
  uTF8String = [(NSString *)self->_displayName UTF8String];
  if (uTF8String)
  {
    xpc_dictionary_set_string(objectCopy, "dNm", uTF8String);
  }

  SSID = self->_SSID;
  xdict = objectCopy;
  uTF8String2 = [(NSString *)SSID UTF8String];
  if (uTF8String2)
  {
    xpc_dictionary_set_string(xdict, "wsd", uTF8String2);
  }

  bluetoothTransportBridgingIdentifier = self->_bluetoothTransportBridgingIdentifier;
  if (bluetoothTransportBridgingIdentifier)
  {
    v9 = bluetoothTransportBridgingIdentifier;
    v10 = xdict;
    bytes = [(NSData *)v9 bytes];
    if (bytes)
    {
      v12 = bytes;
    }

    else
    {
      v12 = "";
    }

    v13 = [(NSData *)v9 length];

    xpc_dictionary_set_data(v10, "mPid", v12, v13);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSString *)self->_displayName copy];
  v6 = v4[3];
  v4[3] = v5;

  v7 = [(NSString *)self->_SSID copy];
  v8 = v4[1];
  v4[1] = v7;

  v9 = [(NSData *)self->_bluetoothTransportBridgingIdentifier copy];
  v10 = v4[2];
  v4[2] = v9;

  return v4;
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

  displayName = self->_displayName;
  if (displayName)
  {
    v21 = v6;
    v8 = displayName;
    CUAppendF(&v21, &v23, "name '%@'", v8);
    v9 = v21;

    v6 = v9;
  }

  SSID = self->_SSID;
  if (SSID)
  {
    v20 = v6;
    v11 = SSID;
    CUAppendF(&v20, &v23, "SSID %@", v11);
    v12 = v20;

    v6 = v12;
  }

  bluetoothTransportBridgingIdentifier = self->_bluetoothTransportBridgingIdentifier;
  if (bluetoothTransportBridgingIdentifier)
  {
    v19 = v6;
    v14 = bluetoothTransportBridgingIdentifier;
    CUAppendF(&v19, &v23, "bridingID %@", v14);
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

- (ASAccessorySettings)initWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  v7 = [(ASAccessorySettings *)self init];
  if (!v7)
  {
    if (error)
    {
      v10 = [objc_opt_class() description];
      *error = ASErrorF(-6756, "%@ init failed", v10);
    }

    goto LABEL_12;
  }

  if (MEMORY[0x2383B4C90](objectCopy) != MEMORY[0x277D86468])
  {
    if (error)
    {
      ASErrorF(-6756, "XPC non-dict");
      *error = v8 = 0;
      goto LABEL_7;
    }

LABEL_12:
    v8 = 0;
    goto LABEL_7;
  }

  if (!CUXPCDecodeNSString() || !CUXPCDecodeNSString() || !CUXPCDecodeNSData())
  {
    goto LABEL_12;
  }

  v8 = v7;
LABEL_7:

  return v8;
}

@end