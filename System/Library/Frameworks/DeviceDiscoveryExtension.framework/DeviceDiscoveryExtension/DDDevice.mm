@interface DDDevice
+ (BOOL)deviceMetadataURLValid:(id)valid;
+ (void)mergePersistentDictionary:(id)dictionary into:(id)into;
- (DDDevice)initWithCoder:(id)coder;
- (DDDevice)initWithDisplayName:(NSString *)displayName category:(DDDeviceCategory)category protocolType:(UTType *)protocolType identifier:(NSString *)identifier;
- (DDDevice)initWithPersistentDictionaryRepresentation:(id)representation error:(id *)error;
- (DDDevice)initWithXPCObject:(id)object error:(id *)error;
- (NSDictionary)persistentDictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createDADevice;
- (id)descriptionWithLevel:(int)level;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation DDDevice

- (id)createDADevice
{
  v3 = objc_alloc_init(MEMORY[0x277D04728]);
  v4 = objc_alloc_init(MEMORY[0x277D04750]);
  if (self->_bluetoothIdentifier)
  {
    [v3 setBluetoothIdentifier:?];
  }

  if (self->_category)
  {
    [v3 setType:?];
  }

  if (self->_displayName)
  {
    [v3 setName:?];
  }

  if (self->_identifier)
  {
    [v3 setIdentifier:?];
  }

  if (self->_networkEndpoint)
  {
    [v3 setNetworkEndpoint:?];
  }

  if (self->_protocol)
  {
    [v3 setProtocol:?];
  }

  if (self->_protocolType)
  {
    [v3 setProtocolType:?];
  }

  if (self->_state)
  {
    [v3 setState:?];
  }

  if (self->_supportsGrouping)
  {
    [v3 setSupportsGrouping:1];
  }

  if (self->_txtRecordData)
  {
    [v3 setTxtRecordData:?];
  }

  if (self->_url)
  {
    [v3 setUrl:?];
  }

  if (self->_mediaPlaybackState)
  {
    [v3 setMediaPlaybackState:?];
  }

  if (self->_mediaContentTitle)
  {
    [v3 setMediaContentTitle:?];
  }

  if (self->_mediaContentSubtitle)
  {
    [v3 setMediaContentArtistName:?];
  }

  if (self->_displayImageName)
  {
    [v3 setDisplayImageName:?];
  }

  if (self->_SSID)
  {
    [v3 setSSID:?];
  }

  if (self->_allowPairing)
  {
    [v3 setAllowPairing:1];
  }

  if (([(DDDevice *)self deviceSupports]& 2) != 0)
  {
    [v3 setAllowPairing:1];
  }

  if (([(DDDevice *)self deviceSupports]& 4) != 0)
  {
    [v3 setFlags:{objc_msgSend(v3, "flags") | 0x10}];
  }

  if (([(DDDevice *)self deviceSupports]& 8) != 0)
  {
    [v4 setFlags:{objc_msgSend(v4, "flags") | 0x20}];
  }

  v5 = self->_wifiAwareServiceName;
  if (v5)
  {
    [v4 setWifiAwareServiceName:v5];
    if (self->_wifiAwareServiceRole)
    {
      wifiAwareServiceRole = self->_wifiAwareServiceRole;
    }

    else
    {
      wifiAwareServiceRole = 10;
    }

    [v4 setWifiAwareServiceType:wifiAwareServiceRole];
    v7 = self->_wifiAwareModelName;
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x277D04778]) initWithString:v7 compareOptions:2];
      [v4 setWifiAwareModelNameMatch:v8];
    }

    wifiAwareVendorName = self->_wifiAwareVendorName;
    if (wifiAwareVendorName)
    {
      v10 = MEMORY[0x277D04778];
      v11 = wifiAwareVendorName;
      v12 = [[v10 alloc] initWithString:v11 compareOptions:2];

      [v4 setWifiAwareModelNameMatch:v12];
    }
  }

  [v3 setDiscoveryConfiguration:v4];
  [v3 setPendingRemoval:0];

  return v3;
}

- (DDDevice)initWithDisplayName:(NSString *)displayName category:(DDDeviceCategory)category protocolType:(UTType *)protocolType identifier:(NSString *)identifier
{
  v11 = displayName;
  v12 = protocolType;
  v13 = identifier;
  v18.receiver = self;
  v18.super_class = DDDevice;
  v14 = [(DDDevice *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_displayName, displayName);
    v15->_category = category;
    objc_storeStrong(&v15->_identifier, identifier);
    objc_storeStrong(&v15->_protocolType, protocolType);
    v15->_supportsGrouping = 0;
    v16 = v15;
  }

  return v15;
}

- (DDDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(DDDevice *)self init];
  if (v5)
  {
    v6 = coderCopy;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v7 = v6;
    if ([v7 containsValueForKey:@"dvCa"])
    {
      v5->_category = [v7 decodeIntegerForKey:@"dvCa"];
    }

    v8 = v7;
    if ([v8 containsValueForKey:@"dfSp"])
    {
      v5->_deviceSupports = [v8 decodeIntegerForKey:@"dfSp"];
    }

    v9 = v8;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v10 = v9;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v11 = v10;
    if ([v11 containsValueForKey:@"dvGr"])
    {
      v5->_supportsGrouping = [v11 decodeBoolForKey:@"dvGr"];
    }

    objc_opt_class();
    NSDecodeObjectIfPresent();
    copyCEndpoint = [0 copyCEndpoint];
    networkEndpoint = v5->_networkEndpoint;
    v5->_networkEndpoint = copyCEndpoint;

    v14 = v11;
    if ([v14 containsValueForKey:@"dvPT"])
    {
      v5->_protocol = [v14 decodeIntegerForKey:@"dvPT"];
    }

    objc_opt_class();
    NSDecodeObjectIfPresent();
    v15 = v14;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v16 = v15;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v17 = [MEMORY[0x277CBEBC0] URLWithString:0];
    if (v17)
    {
      objc_storeStrong(&v5->_url, v17);
    }

    v18 = v16;
    if ([v18 containsValueForKey:@"mpSt"])
    {
      v5->_mediaPlaybackState = [v18 decodeIntegerForKey:@"mpSt"];
    }

    v19 = v18;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v20 = v19;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v21 = v20;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v22 = v21;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v23 = v22;
    if ([v23 containsValueForKey:@"btAP"])
    {
      v5->_allowPairing = [v23 decodeBoolForKey:@"btAP"];
    }

    v24 = v23;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v25 = v24;
    if ([v25 containsValueForKey:@"wFSt"])
    {
      v5->_wifiAwareServiceRole = [v25 decodeIntegerForKey:@"wFSt"];
    }

    v26 = v25;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v27 = v26;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v28 = v5;
  }

  else
  {
    [DDDevice initWithCoder:coderCopy];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bluetoothIdentifier = self->_bluetoothIdentifier;
  if (bluetoothIdentifier)
  {
    [coderCopy encodeObject:bluetoothIdentifier forKey:@"btID"];
  }

  category = self->_category;
  if (category)
  {
    [coderCopy encodeInteger:category forKey:@"dvCa"];
  }

  deviceSupports = self->_deviceSupports;
  if (deviceSupports)
  {
    [coderCopy encodeInteger:deviceSupports forKey:@"dfSp"];
  }

  displayName = self->_displayName;
  if (displayName)
  {
    [coderCopy encodeObject:displayName forKey:@"name"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [coderCopy encodeObject:identifier forKey:@"id"];
  }

  if (self->_supportsGrouping)
  {
    [coderCopy encodeBool:1 forKey:@"dvGr"];
  }

  v9 = self->_networkEndpoint;
  if (v9)
  {
    v10 = [MEMORY[0x277CD91C8] endpointWithCEndpoint:v9];
    if (v10)
    {
      [coderCopy encodeObject:v10 forKey:@"nwEP"];
    }
  }

  protocol = self->_protocol;
  if (protocol)
  {
    [coderCopy encodeInteger:protocol forKey:@"dvPT"];
  }

  protocolType = self->_protocolType;
  if (protocolType)
  {
    [coderCopy encodeObject:protocolType forKey:@"prTy"];
  }

  txtRecordData = self->_txtRecordData;
  if (txtRecordData)
  {
    [coderCopy encodeObject:txtRecordData forKey:@"txRD"];
  }

  absoluteString = [(NSURL *)self->_url absoluteString];
  if (absoluteString)
  {
    [coderCopy encodeObject:absoluteString forKey:@"urlS"];
  }

  mediaPlaybackState = self->_mediaPlaybackState;
  if (mediaPlaybackState)
  {
    [coderCopy encodeInteger:mediaPlaybackState forKey:@"mpSt"];
  }

  mediaContentTitle = self->_mediaContentTitle;
  if (mediaContentTitle)
  {
    [coderCopy encodeObject:mediaContentTitle forKey:@"mTi"];
  }

  mediaContentSubtitle = self->_mediaContentSubtitle;
  if (mediaContentSubtitle)
  {
    [coderCopy encodeObject:mediaContentSubtitle forKey:@"mArt"];
  }

  displayImageName = self->_displayImageName;
  if (displayImageName)
  {
    [coderCopy encodeObject:displayImageName forKey:@"dvDI"];
  }

  SSID = self->_SSID;
  if (SSID)
  {
    [coderCopy encodeObject:SSID forKey:@"ssID"];
  }

  if (self->_allowPairing)
  {
    [coderCopy encodeBool:1 forKey:@"btAP"];
  }

  wifiAwareServiceName = self->_wifiAwareServiceName;
  if (wifiAwareServiceName)
  {
    [coderCopy encodeObject:wifiAwareServiceName forKey:@"wFSn"];
  }

  wifiAwareServiceRole = self->_wifiAwareServiceRole;
  if (wifiAwareServiceRole)
  {
    [coderCopy encodeInteger:wifiAwareServiceRole forKey:@"wFSt"];
  }

  wifiAwareModelName = self->_wifiAwareModelName;
  if (wifiAwareModelName)
  {
    [coderCopy encodeObject:wifiAwareModelName forKey:@"wFMn"];
  }

  wifiAwareVendorName = self->_wifiAwareVendorName;
  if (wifiAwareVendorName)
  {
    [coderCopy encodeObject:wifiAwareVendorName forKey:@"wFVn"];
  }
}

- (DDDevice)initWithPersistentDictionaryRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v7 = [(DDDevice *)self init];
  if (v7)
  {
    CFDictionaryGetDouble();
    v7->_approveTime = v8;
    CFStringGetTypeID();
    v9 = CFDictionaryGetTypedValue();
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v9];
      bluetoothIdentifier = v7->_bluetoothIdentifier;
      v7->_bluetoothIdentifier = v10;
    }

    v12 = NSDictionaryGetNSNumber();
    v7->_category = [v12 integerValue];

    v7->_deviceSupports = CFDictionaryGetInt64();
    CFStringGetTypeID();
    v13 = CFDictionaryGetTypedValue();
    if (v13)
    {
      objc_storeStrong(&v7->_displayName, v13);
    }

    v33 = v13;
    CFStringGetTypeID();
    v14 = CFDictionaryGetTypedValue();
    if (v14)
    {
      objc_storeStrong(&v7->_identifier, v14);
    }

    CFDataGetTypeID();
    v32 = CFDictionaryGetTypedValue();
    v31 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v32 error:0];
    copyCEndpoint = [v31 copyCEndpoint];
    networkEndpoint = v7->_networkEndpoint;
    v7->_networkEndpoint = copyCEndpoint;

    v17 = NSDictionaryGetNSNumber();
    v7->_protocol = [v17 integerValue];

    CFStringGetTypeID();
    v18 = CFDictionaryGetTypedValue();
    if (v18)
    {
      v19 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v18];
      if (v19)
      {
        objc_storeStrong(&v7->_protocolType, v19);
      }
    }

    v20 = NSDictionaryGetNSNumber();
    v7->_state = [v20 integerValue];

    v7->_supportsGrouping = CFDictionaryGetInt64() != 0;
    CFDataGetTypeID();
    v21 = CFDictionaryGetTypedValue();
    if (v21)
    {
      objc_storeStrong(&v7->_txtRecordData, v21);
    }

    CFStringGetTypeID();
    v22 = CFDictionaryGetTypedValue();
    if (v22)
    {
      v23 = [MEMORY[0x277CBEBC0] URLWithString:v22];
      if (v23)
      {
        objc_storeStrong(&v7->_url, v23);
      }
    }

    v24 = NSDictionaryGetNSNumber();
    v7->_mediaPlaybackState = [v24 integerValue];

    CFStringGetTypeID();
    v25 = CFDictionaryGetTypedValue();
    if (v25)
    {
      objc_storeStrong(&v7->_mediaContentTitle, v25);
    }

    CFStringGetTypeID();
    v26 = CFDictionaryGetTypedValue();
    if (v26)
    {
      objc_storeStrong(&v7->_mediaContentSubtitle, v26);
    }

    CFStringGetTypeID();
    v27 = CFDictionaryGetTypedValue();
    if (v27)
    {
      objc_storeStrong(&v7->_displayImageName, v27);
    }

    CFStringGetTypeID();
    v28 = CFDictionaryGetTypedValue();
    if (v28)
    {
      objc_storeStrong(&v7->_SSID, v28);
    }

    v7->_allowPairing = CFDictionaryGetInt64() != 0;
    v29 = v7;
  }

  else
  {
    [DDDevice initWithPersistentDictionaryRepresentation:error error:?];
  }

  return v7;
}

- (NSDictionary)persistentDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_approveTime];
  [v3 setObject:v4 forKeyedSubscript:@"approveTime"];

  bluetoothIdentifier = self->_bluetoothIdentifier;
  if (bluetoothIdentifier)
  {
    uUIDString = [(NSUUID *)bluetoothIdentifier UUIDString];
    [v3 setObject:uUIDString forKeyedSubscript:@"bluetoothIdentifier"];
  }

  if (self->_category)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [v3 setObject:v7 forKeyedSubscript:@"type"];
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_deviceSupports];
  [v3 setObject:v8 forKeyedSubscript:@"deviceFeatureSupport"];

  displayName = self->_displayName;
  if (displayName)
  {
    [v3 setObject:displayName forKeyedSubscript:@"name"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKeyedSubscript:@"identifier"];
  }

  v11 = self->_networkEndpoint;
  if (v11)
  {
    v12 = [MEMORY[0x277CD91C8] endpointWithCEndpoint:v11];
    v13 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v12 requiringSecureCoding:1 error:0];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"nwEndpoint"];
    }
  }

  if (self->_protocol)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [v3 setObject:v14 forKeyedSubscript:@"protocol"];
  }

  protocolType = self->_protocolType;
  if (protocolType)
  {
    identifier = [(UTType *)protocolType identifier];
    [v3 setObject:identifier forKeyedSubscript:@"protocolType"];
  }

  v17 = [MEMORY[0x277CCABB0] numberWithInteger:self->_state];
  [v3 setObject:v17 forKeyedSubscript:@"deviceState"];

  v18 = [MEMORY[0x277CCABB0] numberWithBool:self->_supportsGrouping];
  [v3 setObject:v18 forKeyedSubscript:@"deviceSupportsGrouping"];

  txtRecordData = self->_txtRecordData;
  if (txtRecordData)
  {
    [v3 setObject:txtRecordData forKeyedSubscript:@"txtRecordData"];
  }

  url = self->_url;
  if (url)
  {
    absoluteString = [(NSURL *)url absoluteString];
    [v3 setObject:absoluteString forKeyedSubscript:@"url"];
  }

  if (self->_mediaPlaybackState)
  {
    v22 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [v3 setObject:v22 forKeyedSubscript:@"mediaPlaybackState"];
  }

  mediaContentTitle = self->_mediaContentTitle;
  if (mediaContentTitle)
  {
    [v3 setObject:mediaContentTitle forKeyedSubscript:@"mediaContentTitle"];
  }

  mediaContentSubtitle = self->_mediaContentSubtitle;
  if (mediaContentSubtitle)
  {
    [v3 setObject:mediaContentSubtitle forKeyedSubscript:@"mediaContentArtist"];
  }

  displayImageName = self->_displayImageName;
  if (displayImageName)
  {
    [v3 setObject:displayImageName forKeyedSubscript:@"displayImageName"];
  }

  SSID = self->_SSID;
  if (SSID)
  {
    [v3 setObject:SSID forKeyedSubscript:@"deviceSSID"];
  }

  v27 = [MEMORY[0x277CCABB0] numberWithBool:self->_allowPairing];
  [v3 setObject:v27 forKeyedSubscript:@"deviceAllowsPairing"];

  v28 = [v3 copy];

  return v28;
}

+ (void)mergePersistentDictionary:(id)dictionary into:(id)into
{
  dictionaryCopy = dictionary;
  intoCopy = into;
  CFDictionaryGetDouble();
  if (v6 == 0.0)
  {
    CFDictionaryGetDouble();
    if (v7 != 0.0)
    {
      v8 = [MEMORY[0x277CCABB0] numberWithDouble:?];
      [intoCopy setObject:v8 forKeyedSubscript:@"approveTime"];
    }
  }
}

- (void)encodeWithXPCObject:(id)object
{
  v52 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  bluetoothIdentifier = self->_bluetoothIdentifier;
  if (bluetoothIdentifier)
  {
    [(NSUUID *)bluetoothIdentifier getUUIDBytes:uuid];
    xpc_dictionary_set_uuid(objectCopy, "btID", uuid);
  }

  xpc_dictionary_set_int64(objectCopy, "dvCa", self->_category);
  deviceSupports = self->_deviceSupports;
  if (deviceSupports)
  {
    xpc_dictionary_set_uint64(objectCopy, "dfSp", deviceSupports);
  }

  displayName = self->_displayName;
  v8 = objectCopy;
  uTF8String = [(NSString *)displayName UTF8String];
  if (uTF8String)
  {
    xpc_dictionary_set_string(v8, "name", uTF8String);
  }

  identifier = self->_identifier;
  v11 = v8;
  uTF8String2 = [(NSString *)identifier UTF8String];
  if (uTF8String2)
  {
    xpc_dictionary_set_string(v11, "id", uTF8String2);
  }

  v13 = self->_networkEndpoint;
  if (v13)
  {
    v14 = nw_endpoint_copy_dictionary();
    if (v14)
    {
      xpc_dictionary_set_value(v11, "nwEP", v14);
    }
  }

  xpc_dictionary_set_int64(v11, "dvPT", self->_protocol);
  identifier = [(UTType *)self->_protocolType identifier];
  v16 = v11;
  uTF8String3 = [identifier UTF8String];
  if (uTF8String3)
  {
    xpc_dictionary_set_string(v16, "prTy", uTF8String3);
  }

  xpc_dictionary_set_int64(v16, "dvSt", self->_state);
  if (self->_supportsGrouping)
  {
    xpc_dictionary_set_BOOL(v16, "dvGr", 1);
  }

  txtRecordData = self->_txtRecordData;
  if (txtRecordData)
  {
    v19 = txtRecordData;
    v20 = v16;
    v21 = txtRecordData;
    bytes = [(NSData *)v21 bytes];
    if (bytes)
    {
      v23 = bytes;
    }

    else
    {
      v23 = "";
    }

    v24 = [(NSData *)v21 length];

    xpc_dictionary_set_data(v20, "txRD", v23, v24);
  }

  v25 = self->_url;
  v26 = v25;
  if (v25)
  {
    absoluteString = [(NSURL *)v25 absoluteString];
    v28 = v16;
    uTF8String4 = [absoluteString UTF8String];
    if (uTF8String4)
    {
      xpc_dictionary_set_string(v28, "urlS", uTF8String4);
    }
  }

  xpc_dictionary_set_int64(v16, "mpSt", self->_mediaPlaybackState);
  mediaContentTitle = self->_mediaContentTitle;
  v31 = v16;
  uTF8String5 = [(NSString *)mediaContentTitle UTF8String];
  if (uTF8String5)
  {
    xpc_dictionary_set_string(v31, "mTi", uTF8String5);
  }

  mediaContentSubtitle = self->_mediaContentSubtitle;
  v34 = v31;
  uTF8String6 = [(NSString *)mediaContentSubtitle UTF8String];
  if (uTF8String6)
  {
    xpc_dictionary_set_string(v34, "mArt", uTF8String6);
  }

  displayImageName = self->_displayImageName;
  v37 = v34;
  uTF8String7 = [(NSString *)displayImageName UTF8String];
  if (uTF8String7)
  {
    xpc_dictionary_set_string(v37, "dvDI", uTF8String7);
  }

  SSID = self->_SSID;
  v40 = v37;
  uTF8String8 = [(NSString *)SSID UTF8String];
  if (uTF8String8)
  {
    xpc_dictionary_set_string(v40, "ssID", uTF8String8);
  }

  if (self->_allowPairing)
  {
    xpc_dictionary_set_BOOL(v40, "btAP", 1);
  }

  wifiAwareServiceName = self->_wifiAwareServiceName;
  v43 = v40;
  uTF8String9 = [(NSString *)wifiAwareServiceName UTF8String];
  if (uTF8String9)
  {
    xpc_dictionary_set_string(v43, "wFSn", uTF8String9);
  }

  xpc_dictionary_set_int64(v43, "wFSt", self->_wifiAwareServiceRole);
  wifiAwareModelName = self->_wifiAwareModelName;
  v46 = v43;
  uTF8String10 = [(NSString *)wifiAwareModelName UTF8String];
  if (uTF8String10)
  {
    xpc_dictionary_set_string(v46, "wFMn", uTF8String10);
  }

  wifiAwareVendorName = self->_wifiAwareVendorName;
  v49 = v46;
  uTF8String11 = [(NSString *)wifiAwareVendorName UTF8String];
  if (uTF8String11)
  {
    xpc_dictionary_set_string(v49, "wFVn", uTF8String11);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v4 + 176) = self->_approveTime;
  v5 = [(NSUUID *)self->_bluetoothIdentifier copy];
  v6 = *(v4 + 24);
  *(v4 + 24) = v5;

  *(v4 + 32) = self->_category;
  *(v4 + 16) = self->_deviceSupports;
  v7 = [(NSString *)self->_displayName copy];
  v8 = *(v4 + 48);
  *(v4 + 48) = v7;

  v9 = [(NSString *)self->_identifier copy];
  v10 = *(v4 + 56);
  *(v4 + 56) = v9;

  objc_storeStrong((v4 + 88), self->_networkEndpoint);
  *(v4 + 96) = self->_protocol;
  v11 = [(UTType *)self->_protocolType copy];
  v12 = *(v4 + 104);
  *(v4 + 104) = v11;

  *(v4 + 112) = self->_state;
  *(v4 + 8) = self->_supportsGrouping;
  v13 = [(NSData *)self->_txtRecordData copy];
  v14 = *(v4 + 128);
  *(v4 + 128) = v13;

  v15 = [(NSURL *)self->_url copy];
  v16 = *(v4 + 136);
  *(v4 + 136) = v15;

  *(v4 + 64) = self->_mediaPlaybackState;
  v17 = [(NSString *)self->_mediaContentTitle copy];
  v18 = *(v4 + 72);
  *(v4 + 72) = v17;

  v19 = [(NSString *)self->_mediaContentSubtitle copy];
  v20 = *(v4 + 80);
  *(v4 + 80) = v19;

  v21 = [(NSString *)self->_displayImageName copy];
  v22 = *(v4 + 40);
  *(v4 + 40) = v21;

  v23 = [(NSString *)self->_SSID copy];
  v24 = *(v4 + 120);
  *(v4 + 120) = v23;

  *(v4 + 9) = self->_allowPairing;
  objc_storeStrong((v4 + 144), self->_wifiAwareServiceName);
  *(v4 + 152) = self->_wifiAwareServiceRole;
  objc_storeStrong((v4 + 160), self->_wifiAwareModelName);
  objc_storeStrong((v4 + 168), self->_wifiAwareVendorName);
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

  v96 = v4;
  if ((level & 0x8000000) != 0)
  {
    v6 = 0;
  }

  else
  {
    v95 = 0;
    v5 = objc_opt_class();
    CUAppendF(&v95, &v96, "%@", v5);
    v6 = v95;
  }

  identifier = self->_identifier;
  if (identifier)
  {
    v94 = v6;
    v8 = identifier;
    CUAppendF(&v94, &v96, "ID %@", v8);
    v9 = v94;

    v6 = v9;
  }

  displayName = self->_displayName;
  if (displayName)
  {
    v93 = v6;
    v11 = displayName;
    CUAppendF(&v93, &v96, "displayName '%@'", v11);
    v12 = v93;

    v6 = v12;
  }

  v92 = v6;
  v13 = DDDeviceCategoryToString(self->_category);
  CUAppendF(&v92, &v96, "category %@", v13);
  v14 = v92;

  protocolType = self->_protocolType;
  if (protocolType)
  {
    v91 = v14;
    v16 = protocolType;
    CUAppendF(&v91, &v96, "protocol UTType %@", v16);
    v17 = v91;

    v14 = v17;
  }

  v90 = v14;
  state = self->_state;
  if (state <= 19)
  {
    v19 = @"Invalid";
    if (!state)
    {
      goto LABEL_24;
    }

    if (state == 10)
    {
      v19 = @"Activating";
      goto LABEL_24;
    }
  }

  else
  {
    switch(state)
    {
      case 20:
        v19 = @"Activated";
        goto LABEL_24;
      case 25:
        v19 = @"Authorized";
        goto LABEL_24;
      case 30:
        v19 = @"Invalidating";
        goto LABEL_24;
    }
  }

  v19 = @"?";
LABEL_24:
  CUAppendF(&v90, &v96, "state %@", v19);
  v20 = v90;

  v89 = v20;
  if (self->_supportsGrouping)
  {
    v21 = "yes";
  }

  else
  {
    v21 = "no";
  }

  CUAppendF(&v89, &v96, "supportsGrouping %s", v21);
  v22 = v89;

  bluetoothIdentifier = self->_bluetoothIdentifier;
  if (bluetoothIdentifier)
  {
    v88 = v22;
    v24 = bluetoothIdentifier;
    CUAppendF(&v88, &v96, "btID %@", v24);
    v25 = v88;

    v22 = v25;
  }

  networkEndpoint = self->_networkEndpoint;
  if (networkEndpoint)
  {
    v87 = v22;
    v27 = networkEndpoint;
    CUAppendF(&v87, &v96, "nwEP %@", v27);
    v28 = v87;

    v22 = v28;
  }

  v86 = v22;
  protocol = self->_protocol;
  v30 = @"DIAL";
  if (protocol != 1)
  {
    v30 = @"?";
  }

  if (protocol)
  {
    v31 = v30;
  }

  else
  {
    v31 = @"Invalid";
  }

  CUAppendF(&v86, &v96, "protocol %@", v31);
  v32 = v86;

  txtRecordData = self->_txtRecordData;
  if (txtRecordData)
  {
    v85 = v32;
    v34 = txtRecordData;
    v35 = CUPrintNSObjectOneLine();
    CUAppendF(&v85, &v96, "txtRecord %@", v35);
    v36 = v85;

    v32 = v36;
  }

  url = self->_url;
  if (url)
  {
    v84 = v32;
    v38 = url;
    CUAppendF(&v84, &v96, "url %@", v38);
    v39 = v84;

    v32 = v39;
  }

  v83 = v32;
  mediaPlaybackState = self->_mediaPlaybackState;
  if (mediaPlaybackState >= 3)
  {
    v41 = @"?";
  }

  else
  {
    v41 = off_278A46A50[mediaPlaybackState];
  }

  CUAppendF(&v83, &v96, "playback state %@", v41);
  v42 = v83;

  mediaContentTitle = self->_mediaContentTitle;
  if (mediaContentTitle)
  {
    v82 = v42;
    v44 = mediaContentTitle;
    CUAppendF(&v82, &v96, "mediaContentTitle '%@'", v44);
    v45 = v82;

    v42 = v45;
  }

  mediaContentSubtitle = self->_mediaContentSubtitle;
  if (mediaContentSubtitle)
  {
    v81 = v42;
    v47 = mediaContentSubtitle;
    CUAppendF(&v81, &v96, "mediaContentSubtitle '%@'", v47);
    v48 = v81;

    v42 = v48;
  }

  displayImageName = self->_displayImageName;
  if (displayImageName)
  {
    v80 = v42;
    v50 = displayImageName;
    CUAppendF(&v80, &v96, "displayImageName '%@'", v50);
    v51 = v80;

    v42 = v51;
  }

  SSID = self->_SSID;
  if (SSID)
  {
    v79 = v42;
    v53 = SSID;
    CUAppendF(&v79, &v96, "ssid '%@'", v53);
    v54 = v79;

    v42 = v54;
  }

  wifiAwareServiceName = self->_wifiAwareServiceName;
  if (wifiAwareServiceName)
  {
    v78 = v42;
    v56 = wifiAwareServiceName;
    CUAppendF(&v78, &v96, "Wi-Fi Aware '%@'", v56);
    v57 = v78;

    v42 = v57;
  }

  wifiAwareServiceRole = self->_wifiAwareServiceRole;
  if (wifiAwareServiceRole)
  {
    v77 = v42;
    CUAppendF(&v77, &v96, "'%ld'", wifiAwareServiceRole);
    v59 = v77;

    v42 = v59;
  }

  wifiAwareModelName = self->_wifiAwareModelName;
  if (wifiAwareModelName)
  {
    v76 = v42;
    v61 = wifiAwareModelName;
    CUAppendF(&v76, &v96, "'%@'", v61);
    v62 = v76;

    v42 = v62;
  }

  wifiAwareVendorName = self->_wifiAwareVendorName;
  if (wifiAwareVendorName)
  {
    v75 = v42;
    v64 = wifiAwareVendorName;
    CUAppendF(&v75, &v96, "'%@'", v64);
    v65 = v75;

    v42 = v65;
  }

  v74 = v42;
  if (self->_allowPairing)
  {
    v66 = "yes";
  }

  else
  {
    v66 = "no";
  }

  CUAppendF(&v74, &v96, "allowPairing %s", v66);
  v67 = v74;

  v73 = v67;
  v68 = CUPrintFlags64();
  CUAppendF(&v73, &v96, "supports %@", v68);
  v69 = v73;

  v70 = &stru_284AE9D28;
  if (v69)
  {
    v70 = v69;
  }

  v71 = v70;

  return v71;
}

- (DDDevice)initWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  v7 = [(DDDevice *)self init];
  if (!v7)
  {
    if (error)
    {
      objc_opt_class();
      OUTLINED_FUNCTION_2();
      DAErrorF();
      *error = v35 = 0;
      goto LABEL_42;
    }

    goto LABEL_47;
  }

  OUTLINED_FUNCTION_1();
  v8 = CUXPCDecodeNSUUID();
  if (!v8)
  {
    goto LABEL_47;
  }

  v12 = OUTLINED_FUNCTION_0(v8, "dvCa", v9, v10, v11);
  if (v12 == 6)
  {
    v7->_category = 0;
  }

  else if (v12 == 5)
  {
    goto LABEL_47;
  }

  v13 = CUXPCDecodeUInt64RangedEx();
  if (v13 != 6)
  {
    if (v13 != 5)
    {
      goto LABEL_9;
    }

LABEL_47:
    v35 = 0;
    goto LABEL_42;
  }

  v7->_deviceSupports = 0;
LABEL_9:
  OUTLINED_FUNCTION_1();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_47;
  }

  OUTLINED_FUNCTION_1();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_47;
  }

  v14 = xpc_dictionary_get_dictionary(objectCopy, "nwEP");
  v18 = v14;
  if (v14)
  {
    v19 = nw_endpoint_create_from_dictionary();
    if (!v19)
    {
      if (error)
      {
        v37 = OUTLINED_FUNCTION_2();
        DDErrorF(v37, v38, v39, v40, v41, v42, v43, v44, v45);
        *error = v35 = 0;
        goto LABEL_41;
      }

      goto LABEL_50;
    }

    networkEndpoint = v7->_networkEndpoint;
    v7->_networkEndpoint = v19;
  }

  v21 = OUTLINED_FUNCTION_0(v14, "dvPT", v15, v16, v17);
  if (v21 == 6)
  {
    v7->_protocol = 0;
    goto LABEL_17;
  }

  if (v21 == 5)
  {
LABEL_50:
    v35 = 0;
    goto LABEL_41;
  }

LABEL_17:
  OUTLINED_FUNCTION_1();
  v22 = CUXPCDecodeNSString();
  if (!v22)
  {
    goto LABEL_44;
  }

  v25 = OUTLINED_FUNCTION_0(v22, "dvSt", 0, v23, v24);
  if (v25 != 6)
  {
    if (v25 != 5)
    {
      goto LABEL_21;
    }

LABEL_44:
    v35 = 0;
    goto LABEL_40;
  }

  v7->_state = 0;
LABEL_21:
  OUTLINED_FUNCTION_1();
  if (!CUXPCDecodeBool())
  {
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_1();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_1();
  v26 = CUXPCDecodeNSString();
  if (!v26)
  {
    goto LABEL_43;
  }

  v29 = OUTLINED_FUNCTION_0(v26, "mpSt", 0, v27, v28);
  if (v29 == 6)
  {
    v7->_mediaPlaybackState = 0;
  }

  else if (v29 == 5)
  {
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_1();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_1();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_1();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_1();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_1();
  if (!CUXPCDecodeBool())
  {
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_1();
  v30 = CUXPCDecodeNSString();
  if (!v30)
  {
    goto LABEL_43;
  }

  v34 = OUTLINED_FUNCTION_0(v30, "wFSt", v31, v32, v33);
  if (v34 != 6)
  {
    if (v34 != 5)
    {
      goto LABEL_36;
    }

LABEL_43:
    v35 = 0;
    goto LABEL_39;
  }

  v7->_wifiAwareServiceRole = 0;
LABEL_36:
  OUTLINED_FUNCTION_1();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_1();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_43;
  }

  v35 = v7;
LABEL_39:

LABEL_40:
LABEL_41:

LABEL_42:
  return v35;
}

+ (BOOL)deviceMetadataURLValid:(id)valid
{
  validCopy = valid;
  absoluteString = [validCopy absoluteString];
  v5 = [absoluteString length];

  if (v5 > 0x31)
  {
    v10 = 0;
  }

  else
  {
    query = [validCopy query];
    if (query)
    {
      v10 = 0;
    }

    else
    {
      host = [validCopy host];
      v8 = host;
      if (host && [host length] <= 0x13)
      {
        v9 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"^[a-zA-Z0-9.-]+$" options:1 error:0];
        v10 = [v9 numberOfMatchesInString:v8 options:0 range:{0, objc_msgSend(v8, "length")}] != 0;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  return v10;
}

- (void)initWithCoder:(void *)a1 .cold.1(void *a1)
{
  v10 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_2();
  v11 = DDErrorF(v2, v3, v4, v5, v6, v7, v8, v9, v10);
  [a1 failWithError:v11];
}

- (void)initWithPersistentDictionaryRepresentation:(void *)result error:.cold.1(void *result)
{
  if (result)
  {
    v1 = result;
    objc_opt_class();
    OUTLINED_FUNCTION_2();
    result = DAErrorF();
    *v1 = result;
  }

  return result;
}

@end