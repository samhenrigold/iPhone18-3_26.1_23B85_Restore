@interface DADevice
+ (BOOL)deviceMetadataURLValid:(id)valid;
+ (void)mergePersistentDictionary:(id)dictionary into:(id)into;
- (BOOL)requiresBluetoothSetup;
- (BOOL)requiresWiFiAwareSetup;
- (BOOL)requiresWiFiSoftAPSetup;
- (DADevice)initWithCoder:(id)coder;
- (DADevice)initWithPersistentDictionaryRepresentation:(id)representation error:(id *)error;
- (DADevice)initWithXPCObject:(id)object error:(id *)error;
- (NSDictionary)accessoryServicesMap;
- (NSDictionary)appAccessInfoMap;
- (NSDictionary)persistentDictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithLevel:(int)level;
- (void)decodeAdvDataWithCoder:(id)coder xpcObject:(id)object;
- (void)encodeAdvDataWithCoder:(id)coder xpcObject:(id)object;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCObject:(id)object;
- (void)setDeviceUpgradeFinished:(BOOL)finished inProgress:(BOOL)progress failed:(BOOL)failed;
@end

@implementation DADevice

- (DADevice)initWithCoder:(id)coder
{
  v39 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v37.receiver = self;
  v37.super_class = DADevice;
  v5 = [(DADevice *)&v37 init];
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

    v9 = v8;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v38 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_bluetoothAppearance = v38;
    }

    objc_opt_class();
    NSDecodeObjectIfPresent();
    [(DADevice *)v5 decodeAdvDataWithCoder:v9];
    v10 = v9;
    if ([v10 containsValueForKey:@"dvFl"])
    {
      v5->_flags = [v10 decodeIntegerForKey:@"dvFl"];
    }

    v11 = v10;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v12 = v11;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v38 = 0;
    objc_opt_class();
    NSDecodeObjectIfPresent();
    copyCEndpoint = [v38 copyCEndpoint];
    networkEndpoint = v5->_networkEndpoint;
    v5->_networkEndpoint = copyCEndpoint;

    v15 = v12;
    if ([v15 containsValueForKey:@"dvPT"])
    {
      v5->_protocol = [v15 decodeIntegerForKey:@"dvPT"];
    }

    objc_opt_class();
    NSDecodeObjectIfPresent();
    v16 = v15;
    if ([v16 containsValueForKey:@"dvGr"])
    {
      v5->_supportsGrouping = [v16 decodeBoolForKey:@"dvGr"];
    }

    v17 = v16;
    if ([v17 containsValueForKey:@"dvCa"])
    {
      v5->_type = [v17 decodeIntegerForKey:@"dvCa"];
    }

    objc_opt_class();
    NSDecodeObjectIfPresent();
    v18 = v17;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v19 = v18;
    if ([v19 containsValueForKey:@"nwUsec"])
    {
      v5->_networkUnsecured = [v19 decodeBoolForKey:@"nwUsec"];
    }

    v20 = v19;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v21 = v20;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v22 = [MEMORY[0x277CBEBC0] URLWithString:0];
    if (v22)
    {
      objc_storeStrong(&v5->_url, v22);
    }

    v23 = v21;
    if ([v23 containsValueForKey:@"mpSt"])
    {
      v5->_mediaPlaybackState = [v23 decodeIntegerForKey:@"mpSt"];
    }

    v24 = v23;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v25 = v24;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v26 = v25;
    if ([v26 containsValueForKey:@"dvDe"])
    {
      v5->_discoveredInExtension = [v26 decodeBoolForKey:@"dvDe"];
    }

    v27 = v26;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v28 = v27;
    if ([v28 containsValueForKey:@"btAP"])
    {
      v5->_allowPairing = [v28 decodeBoolForKey:@"btAP"];
    }

    v29 = v28;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v30 = v29;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v31 = v30;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v32 = v31;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v33 = v32;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v34 = v33;
    if ([v34 containsValueForKey:@"sig"])
    {
      v5->_signature = [v34 decodeIntegerForKey:@"sig"];
    }

    v35 = v5;
  }

  else
  {
    [DADeviceAppAccessInfo initWithCoder:coderCopy];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = self->_accessoryServicesInternalMap;
  if (v4)
  {
    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:0];
    if (v5)
    {
      [coderCopy encodeObject:v5 forKey:@"dAsI"];
    }
  }

  v6 = self->_appAccessInfoDeviceMap;
  if (v6)
  {
    v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:0];
    if (v7)
    {
      [coderCopy encodeObject:v7 forKey:@"dAaI"];
    }
  }

  bluetoothIdentifier = self->_bluetoothIdentifier;
  if (bluetoothIdentifier)
  {
    [coderCopy encodeObject:bluetoothIdentifier forKey:@"btID"];
  }

  bluetoothOTAName = self->_bluetoothOTAName;
  v10 = coderCopy;
  if (bluetoothOTAName)
  {
    [coderCopy encodeObject:bluetoothOTAName forKey:@"btNm"];
    v10 = coderCopy;
  }

  if (self->_bluetoothAppearance)
  {
    [v10 encodeInteger:? forKey:?];
    v10 = coderCopy;
  }

  bluetoothRSSI = self->_bluetoothRSSI;
  if (bluetoothRSSI)
  {
    [v10 encodeObject:bluetoothRSSI forKey:@"btRs"];
    v10 = coderCopy;
  }

  [(DADevice *)self encodeAdvDataWithCoder:v10];
  displayImageFileURL = self->_displayImageFileURL;
  if (displayImageFileURL)
  {
    [coderCopy encodeObject:displayImageFileURL forKey:@"dvDIuR"];
  }

  flags = self->_flags;
  if (flags)
  {
    [coderCopy encodeInteger:flags forKey:@"dvFl"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [coderCopy encodeObject:identifier forKey:@"id"];
  }

  name = self->_name;
  if (name)
  {
    [coderCopy encodeObject:name forKey:@"name"];
  }

  v16 = self->_networkEndpoint;
  if (v16)
  {
    v17 = [MEMORY[0x277CD91C8] endpointWithCEndpoint:v16];
    if (v17)
    {
      [coderCopy encodeObject:v17 forKey:@"nwEP"];
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

  SSID = self->_SSID;
  if (SSID)
  {
    [coderCopy encodeObject:SSID forKey:@"ssID"];
  }

  if (self->_networkUnsecured)
  {
    [coderCopy encodeBool:1 forKey:@"nwUsec"];
  }

  if (self->_supportsGrouping)
  {
    [coderCopy encodeBool:1 forKey:@"dvGr"];
  }

  type = self->_type;
  if (type)
  {
    [coderCopy encodeInteger:type forKey:@"dvCa"];
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

  mediaContentArtistName = self->_mediaContentArtistName;
  if (mediaContentArtistName)
  {
    [coderCopy encodeObject:mediaContentArtistName forKey:@"mArt"];
  }

  if (self->_discoveredInExtension)
  {
    [coderCopy encodeBool:1 forKey:@"dvDe"];
  }

  displayImageName = self->_displayImageName;
  if (displayImageName)
  {
    [coderCopy encodeObject:displayImageName forKey:@"dvDI"];
  }

  if (self->_allowPairing)
  {
    [coderCopy encodeBool:1 forKey:@"btAP"];
  }

  bluetoothClassicAddress = self->_bluetoothClassicAddress;
  if (bluetoothClassicAddress)
  {
    [coderCopy encodeObject:bluetoothClassicAddress forKey:@"btCa"];
  }

  wifiAwareOTAName = self->_wifiAwareOTAName;
  if (wifiAwareOTAName)
  {
    [coderCopy encodeObject:wifiAwareOTAName forKey:@"wfaNm"];
  }

  wifiAwareVendorName = self->_wifiAwareVendorName;
  if (wifiAwareVendorName)
  {
    [coderCopy encodeObject:wifiAwareVendorName forKey:@"wFVn"];
  }

  wifiAwareModelName = self->_wifiAwareModelName;
  if (wifiAwareModelName)
  {
    [coderCopy encodeObject:wifiAwareModelName forKey:@"wFMn"];
  }

  wifiAwareDevicePairingID = self->_wifiAwareDevicePairingID;
  if (wifiAwareDevicePairingID)
  {
    [coderCopy encodeObject:wifiAwareDevicePairingID forKey:@"dwFPi"];
  }

  signature = self->_signature;
  if (signature)
  {
    [coderCopy encodeInteger:signature forKey:@"sig"];
  }
}

- (DADevice)initWithPersistentDictionaryRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v60.receiver = self;
  v60.super_class = DADevice;
  v7 = [(DADevice *)&v60 init];
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

    CFStringGetTypeID();
    v12 = CFDictionaryGetTypedValue();
    bluetoothOTAName = v7->_bluetoothOTAName;
    v7->_bluetoothOTAName = v12;

    v7->_bluetoothAppearance = CFDictionaryGetInt64Ranged();
    CFDataGetTypeID();
    v59 = CFDictionaryGetTypedValue();
    v14 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v59 error:0];
    discoveryConfiguration = v7->_discoveryConfiguration;
    v7->_discoveryConfiguration = v14;

    CFStringGetTypeID();
    v16 = CFDictionaryGetTypedValue();
    if (v16)
    {
      v17 = [MEMORY[0x277CBEBC0] URLWithString:v16];
      displayImageFileURL = v7->_displayImageFileURL;
      v7->_displayImageFileURL = v17;
    }

    v19 = NSDictionaryGetNSNumber();
    v20 = v19;
    if (v19)
    {
      v7->_flags = [v19 unsignedIntValue];
    }

    CFStringGetTypeID();
    v21 = CFDictionaryGetTypedValue();
    if (v21)
    {
      objc_storeStrong(&v7->_identifier, v21);
    }

    v58 = v16;
    CFStringGetTypeID();
    v22 = CFDictionaryGetTypedValue();
    if (v22)
    {
      objc_storeStrong(&v7->_name, v22);
    }

    v56 = v22;
    CFDataGetTypeID();
    v55 = CFDictionaryGetTypedValue();
    v54 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v55 error:0];
    copyCEndpoint = [v54 copyCEndpoint];
    networkEndpoint = v7->_networkEndpoint;
    v7->_networkEndpoint = copyCEndpoint;

    v25 = NSDictionaryGetNSNumber();
    v7->_protocol = [v25 integerValue];

    CFStringGetTypeID();
    v26 = CFDictionaryGetTypedValue();
    if (v26)
    {
      v27 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v26];
      if (v27)
      {
        objc_storeStrong(&v7->_protocolType, v27);
      }
    }

    v28 = NSDictionaryGetNSNumber();
    v7->_state = [v28 integerValue];

    CFStringGetTypeID();
    v29 = CFDictionaryGetTypedValue();
    SSID = v7->_SSID;
    v7->_SSID = v29;

    v7->_networkUnsecured = CFDictionaryGetInt64() != 0;
    v7->_supportsGrouping = CFDictionaryGetInt64() != 0;
    v31 = NSDictionaryGetNSNumber();
    v7->_type = [v31 integerValue];

    CFDataGetTypeID();
    v32 = CFDictionaryGetTypedValue();
    if (v32)
    {
      objc_storeStrong(&v7->_txtRecordData, v32);
    }

    CFStringGetTypeID();
    v33 = CFDictionaryGetTypedValue();
    if (v33)
    {
      v34 = [MEMORY[0x277CBEBC0] URLWithString:v33];
      if (v34)
      {
        objc_storeStrong(&v7->_url, v34);
      }
    }

    v7->_pendingRemoval = CFDictionaryGetInt64() != 0;
    v35 = NSDictionaryGetNSNumber();
    v7->_mediaPlaybackState = [v35 integerValue];

    CFStringGetTypeID();
    v36 = CFDictionaryGetTypedValue();
    if (v36)
    {
      objc_storeStrong(&v7->_mediaContentTitle, v36);
    }

    v57 = v21;
    CFStringGetTypeID();
    v37 = CFDictionaryGetTypedValue();
    if (v37)
    {
      objc_storeStrong(&v7->_mediaContentArtistName, v37);
    }

    v38 = v20;
    v7->_discoveredInExtension = CFDictionaryGetInt64() != 0;
    CFStringGetTypeID();
    v39 = CFDictionaryGetTypedValue();
    if (v39)
    {
      objc_storeStrong(&v7->_displayImageName, v39);
    }

    v7->_allowPairing = CFDictionaryGetInt64() != 0;
    CFDataGetTypeID();
    v40 = CFDictionaryGetTypedValue();
    bluetoothClassicAddress = v7->_bluetoothClassicAddress;
    v7->_bluetoothClassicAddress = v40;

    v7->_bluetoothSetupInProgress = CFDictionaryGetInt64() != 0;
    v7->_bluetoothSetupFinished = CFDictionaryGetInt64() != 0;
    v7->_wifiAwareSetupInProgress = CFDictionaryGetInt64() != 0;
    v7->_wifiAwareSetupFinished = CFDictionaryGetInt64() != 0;
    v7->_upgradeInProgress = CFDictionaryGetInt64() != 0;
    v7->_upgradeFinished = CFDictionaryGetInt64() != 0;
    v7->_upgradeFailed = CFDictionaryGetInt64() != 0;
    CFStringGetTypeID();
    v42 = CFDictionaryGetTypedValue();
    wifiAwareOTAName = v7->_wifiAwareOTAName;
    v7->_wifiAwareOTAName = v42;

    CFStringGetTypeID();
    v44 = CFDictionaryGetTypedValue();
    wifiAwareVendorName = v7->_wifiAwareVendorName;
    v7->_wifiAwareVendorName = v44;

    CFStringGetTypeID();
    v46 = CFDictionaryGetTypedValue();
    wifiAwareModelName = v7->_wifiAwareModelName;
    v7->_wifiAwareModelName = v46;

    CFStringGetTypeID();
    v48 = CFDictionaryGetTypedValue();
    if (v48)
    {
      v49 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v48];
      wifiAwareDevicePairingID = v7->_wifiAwareDevicePairingID;
      v7->_wifiAwareDevicePairingID = v49;
    }

    v51 = NSDictionaryGetNSNumber();
    v7->_signature = [v51 integerValue];

    v52 = v7;
  }

  else
  {
    [DADeviceAppAccessInfo initWithPersistentDictionaryRepresentation:error error:?];
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

  bluetoothOTAName = self->_bluetoothOTAName;
  if (bluetoothOTAName)
  {
    [v3 setObject:bluetoothOTAName forKeyedSubscript:@"bluetoothOTAName"];
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:self->_bluetoothAppearance];
  [v3 setObject:v8 forKeyedSubscript:@"bluetoothAppearance"];

  v9 = self->_discoveryConfiguration;
  if (v9)
  {
    v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v9 requiringSecureCoding:1 error:0];
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"configuration"];
    }
  }

  if (self->_flags)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [v3 setObject:v11 forKeyedSubscript:@"flags"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKeyedSubscript:@"identifier"];
  }

  name = self->_name;
  if (name)
  {
    [v3 setObject:name forKeyedSubscript:@"name"];
  }

  v14 = self->_networkEndpoint;
  if (v14)
  {
    v15 = [MEMORY[0x277CD91C8] endpointWithCEndpoint:v14];
    v16 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v15 requiringSecureCoding:1 error:0];
    if (v16)
    {
      [v3 setObject:v16 forKeyedSubscript:@"nwEndpoint"];
    }
  }

  if (self->_protocol)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [v3 setObject:v17 forKeyedSubscript:@"protocol"];
  }

  protocolType = self->_protocolType;
  if (protocolType)
  {
    identifier = [(UTType *)protocolType identifier];
    [v3 setObject:identifier forKeyedSubscript:@"protocolType"];
  }

  SSID = self->_SSID;
  if (SSID)
  {
    [v3 setObject:SSID forKeyedSubscript:@"deviceSSID"];
  }

  if (self->_networkUnsecured)
  {
    v21 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v3 setObject:v21 forKeyedSubscript:@"nwUnsecured"];
  }

  displayImageFileURL = self->_displayImageFileURL;
  if (displayImageFileURL)
  {
    absoluteString = [(NSURL *)displayImageFileURL absoluteString];
    [v3 setObject:absoluteString forKeyedSubscript:@"displayImageURL"];
  }

  v24 = [MEMORY[0x277CCABB0] numberWithInteger:self->_state];
  [v3 setObject:v24 forKeyedSubscript:@"deviceState"];

  v25 = [MEMORY[0x277CCABB0] numberWithBool:self->_supportsGrouping];
  [v3 setObject:v25 forKeyedSubscript:@"deviceSupportsGrouping"];

  if (self->_type)
  {
    v26 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [v3 setObject:v26 forKeyedSubscript:@"type"];
  }

  txtRecordData = self->_txtRecordData;
  if (txtRecordData)
  {
    [v3 setObject:txtRecordData forKeyedSubscript:@"txtRecordData"];
  }

  url = self->_url;
  if (url)
  {
    absoluteString2 = [(NSURL *)url absoluteString];
    [v3 setObject:absoluteString2 forKeyedSubscript:@"url"];
  }

  if (self->_mediaPlaybackState)
  {
    v30 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [v3 setObject:v30 forKeyedSubscript:@"mediaPlaybackState"];
  }

  mediaContentTitle = self->_mediaContentTitle;
  if (mediaContentTitle)
  {
    [v3 setObject:mediaContentTitle forKeyedSubscript:@"mediaContentTitle"];
  }

  mediaContentArtistName = self->_mediaContentArtistName;
  if (mediaContentArtistName)
  {
    [v3 setObject:mediaContentArtistName forKeyedSubscript:@"mediaContentArtist"];
  }

  v33 = [MEMORY[0x277CCABB0] numberWithBool:self->_discoveredInExtension];
  [v3 setObject:v33 forKeyedSubscript:@"discoveredInExtension"];

  displayImageName = self->_displayImageName;
  if (displayImageName)
  {
    [v3 setObject:displayImageName forKeyedSubscript:@"displayImageName"];
  }

  v35 = [MEMORY[0x277CCABB0] numberWithBool:self->_allowPairing];
  [v3 setObject:v35 forKeyedSubscript:@"deviceAllowsPairing"];

  bluetoothClassicAddress = self->_bluetoothClassicAddress;
  if (bluetoothClassicAddress)
  {
    [v3 setObject:bluetoothClassicAddress forKeyedSubscript:@"deviceBluetoothClassicAddress"];
  }

  v37 = [MEMORY[0x277CCABB0] numberWithBool:self->_bluetoothSetupInProgress];
  [v3 setObject:v37 forKeyedSubscript:@"btSetupInProgress"];

  v38 = [MEMORY[0x277CCABB0] numberWithBool:self->_bluetoothSetupFinished];
  [v3 setObject:v38 forKeyedSubscript:@"btSetupFinished"];

  v39 = [MEMORY[0x277CCABB0] numberWithBool:self->_wifiAwareSetupInProgress];
  [v3 setObject:v39 forKeyedSubscript:@"wifiAwareSetupInProgress"];

  v40 = [MEMORY[0x277CCABB0] numberWithBool:self->_wifiAwareSetupFinished];
  [v3 setObject:v40 forKeyedSubscript:@"wifiAwareSetupFinished"];

  v41 = [MEMORY[0x277CCABB0] numberWithBool:self->_upgradeInProgress];
  [v3 setObject:v41 forKeyedSubscript:@"upgradeInProgress"];

  v42 = [MEMORY[0x277CCABB0] numberWithBool:self->_upgradeFinished];
  [v3 setObject:v42 forKeyedSubscript:@"upgradeFinished"];

  v43 = [MEMORY[0x277CCABB0] numberWithBool:self->_upgradeFailed];
  [v3 setObject:v43 forKeyedSubscript:@"upgradeFailed"];

  v44 = [MEMORY[0x277CCABB0] numberWithBool:self->_pendingRemoval];
  [v3 setObject:v44 forKeyedSubscript:@"pendingRemoval"];

  wifiAwareOTAName = self->_wifiAwareOTAName;
  if (wifiAwareOTAName)
  {
    [v3 setObject:wifiAwareOTAName forKeyedSubscript:@"wifiAwareOTAName"];
  }

  wifiAwareVendorName = self->_wifiAwareVendorName;
  if (wifiAwareVendorName)
  {
    [v3 setObject:wifiAwareVendorName forKeyedSubscript:@"wifiAwareVendorName"];
  }

  wifiAwareModelName = self->_wifiAwareModelName;
  if (wifiAwareModelName)
  {
    [v3 setObject:wifiAwareModelName forKeyedSubscript:@"wifiAwareModelName"];
  }

  wifiAwareDevicePairingID = self->_wifiAwareDevicePairingID;
  if (wifiAwareDevicePairingID)
  {
    uUIDString2 = [(NSUUID *)wifiAwareDevicePairingID UUIDString];
    [v3 setObject:uUIDString2 forKeyedSubscript:@"deviceWiFiAwarePairingID"];
  }

  if (self->_signature)
  {
    v50 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [v3 setObject:v50 forKeyedSubscript:@"wifiAwareSignature"];
  }

  v51 = [v3 copy];

  return v51;
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

- (DADevice)initWithXPCObject:(id)object error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v24.receiver = self;
  v24.super_class = DADevice;
  v7 = [(DADevice *)&v24 init];
  if (v7)
  {
    CUXPCDecodeNSData();
    CUXPCDecodeNSData();
    if (CUXPCDecodeNSUUID() && CUXPCDecodeNSString())
    {
      [(DADevice *)v7 decodeAdvDataWithXPC:objectCopy];
      v25 = 0;
      v8 = CUXPCDecodeUInt64RangedEx();
      if (v8 == 6)
      {
        v7->_bluetoothAppearance = v25;
        v9 = 0x277CCA000;
LABEL_7:
        v25 = 0;
        if (CUXPCDecodeSInt64RangedEx() == 6 && v25)
        {
          v10 = [*(v9 + 2992) numberWithInt:?];
          bluetoothRSSI = v7->_bluetoothRSSI;
          v7->_bluetoothRSSI = v10;
        }

        objc_opt_class();
        CUXPCDecodeObject();
        if (!CUXPCDecodeNSString())
        {
          goto LABEL_59;
        }

        v25 = 0;
        v12 = CUXPCDecodeUInt64RangedEx();
        if (v12 == 6)
        {
          v7->_flags = v25;
        }

        else if (v12 == 5)
        {
          goto LABEL_59;
        }

        if (CUXPCDecodeNSString() && CUXPCDecodeNSString())
        {
          v13 = xpc_dictionary_get_dictionary(objectCopy, "nwEP");
          if (v13)
          {
            v14 = nw_endpoint_create_from_dictionary();
            if (!v14)
            {
              if (error)
              {
                DAErrorF(350001, "XPC->NW failed");
                *error = v21 = 0;
                goto LABEL_53;
              }

              goto LABEL_66;
            }

            networkEndpoint = v7->_networkEndpoint;
            v7->_networkEndpoint = v14;
          }

          v25 = 0;
          v16 = CUXPCDecodeSInt64RangedEx();
          if (v16 == 6)
          {
            v7->_protocol = v25;
LABEL_22:
            if (!CUXPCDecodeNSString() || !CUXPCDecodeNSString() || !CUXPCDecodeBool())
            {
              goto LABEL_58;
            }

            v25 = 0;
            v17 = CUXPCDecodeSInt64RangedEx();
            if (v17 == 6)
            {
              v7->_state = v25;
            }

            else if (v17 == 5)
            {
              goto LABEL_58;
            }

            if (CUXPCDecodeBool())
            {
              v25 = 0;
              v18 = CUXPCDecodeSInt64RangedEx();
              if (v18 == 6)
              {
                v7->_type = v25;
              }

              else if (v18 == 5)
              {
                goto LABEL_58;
              }

              if (CUXPCDecodeNSData())
              {
                if (CUXPCDecodeNSString())
                {
                  v25 = 0;
                  v19 = CUXPCDecodeSInt64RangedEx();
                  if (v19 == 6)
                  {
                    v7->_mediaPlaybackState = v25;
                  }

                  else if (v19 == 5)
                  {
                    goto LABEL_57;
                  }

                  if (CUXPCDecodeNSString() && CUXPCDecodeNSString() && CUXPCDecodeBool() && CUXPCDecodeNSString() && CUXPCDecodeBool() && CUXPCDecodeNSData() && CUXPCDecodeNSString() && CUXPCDecodeNSString() && CUXPCDecodeNSString() && CUXPCDecodeNSUUID())
                  {
                    v25 = 0;
                    v20 = CUXPCDecodeSInt64RangedEx();
                    if (v20 == 6)
                    {
                      v7->_signature = v25;
LABEL_50:
                      v21 = v7;
LABEL_51:

LABEL_52:
LABEL_53:

LABEL_54:
LABEL_55:

                      goto LABEL_56;
                    }

                    if (v20 != 5)
                    {
                      goto LABEL_50;
                    }
                  }
                }

LABEL_57:
                v21 = 0;
                goto LABEL_51;
              }
            }

LABEL_58:
            v21 = 0;
            goto LABEL_52;
          }

          if (v16 != 5)
          {
            goto LABEL_22;
          }

LABEL_66:
          v21 = 0;
          goto LABEL_53;
        }

LABEL_59:
        v21 = 0;
        goto LABEL_54;
      }

      v9 = 0x277CCA000uLL;
      if (v8 != 5)
      {
        goto LABEL_7;
      }
    }

    v21 = 0;
    goto LABEL_55;
  }

  if (error)
  {
    v23 = objc_opt_class();
    DAErrorF(350001, "%@ super init failed", v23);
    *error = v21 = 0;
  }

  else
  {
    v21 = 0;
  }

LABEL_56:

  return v21;
}

- (void)encodeWithXPCObject:(id)object
{
  v86 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v5 = self->_accessoryServicesInternalMap;
  if (v5)
  {
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

      xpc_dictionary_set_data(v9, "dAsI", v11, [v7 length]);
    }
  }

  v12 = self->_appAccessInfoDeviceMap;
  if (v12)
  {
    v13 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v12 requiringSecureCoding:1 error:0];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
      v16 = objectCopy;
      bytes2 = [v14 bytes];
      if (bytes2)
      {
        v18 = bytes2;
      }

      else
      {
        v18 = "";
      }

      xpc_dictionary_set_data(v16, "dAaI", v18, [v14 length]);
    }
  }

  bluetoothIdentifier = self->_bluetoothIdentifier;
  if (bluetoothIdentifier)
  {
    v20 = objectCopy;
    [(NSUUID *)bluetoothIdentifier getUUIDBytes:uuid];
    xpc_dictionary_set_uuid(v20, "btID", uuid);
  }

  bluetoothOTAName = self->_bluetoothOTAName;
  v22 = objectCopy;
  uTF8String = [(NSString *)bluetoothOTAName UTF8String];
  if (uTF8String)
  {
    xpc_dictionary_set_string(v22, "btNm", uTF8String);
  }

  [(DADevice *)self encodeAdvDataWithXPC:v22];
  if (self->_bluetoothAppearance)
  {
    xpc_dictionary_set_uint64(v22, "btAp", self->_bluetoothAppearance);
  }

  bluetoothRSSI = self->_bluetoothRSSI;
  if (bluetoothRSSI)
  {
    intValue = [(NSNumber *)bluetoothRSSI intValue];
    if (intValue)
    {
      xpc_dictionary_set_int64(v22, "btRs", intValue);
    }
  }

  CUXPCEncodeObject();
  v26 = self->_displayImageFileURL;
  v27 = v26;
  if (v26)
  {
    absoluteString = [(NSURL *)v26 absoluteString];
    v29 = v22;
    uTF8String2 = [absoluteString UTF8String];
    if (uTF8String2)
    {
      xpc_dictionary_set_string(v29, "dvDIuR", uTF8String2);
    }
  }

  xpc_dictionary_set_uint64(v22, "dvFl", self->_flags);
  identifier = self->_identifier;
  v32 = v22;
  uTF8String3 = [(NSString *)identifier UTF8String];
  if (uTF8String3)
  {
    xpc_dictionary_set_string(v32, "id", uTF8String3);
  }

  name = self->_name;
  v35 = v32;
  uTF8String4 = [(NSString *)name UTF8String];
  if (uTF8String4)
  {
    xpc_dictionary_set_string(v35, "name", uTF8String4);
  }

  v37 = self->_networkEndpoint;
  if (v37)
  {
    v38 = nw_endpoint_copy_dictionary();
    if (v38)
    {
      xpc_dictionary_set_value(v35, "nwEP", v38);
    }
  }

  v84 = v5;
  xpc_dictionary_set_int64(v35, "dvPT", self->_protocol);
  identifier = [(UTType *)self->_protocolType identifier];
  v40 = v35;
  uTF8String5 = [identifier UTF8String];
  if (uTF8String5)
  {
    xpc_dictionary_set_string(v40, "prTy", uTF8String5);
  }

  SSID = self->_SSID;
  v43 = v40;
  uTF8String6 = [(NSString *)SSID UTF8String];
  if (uTF8String6)
  {
    xpc_dictionary_set_string(v43, "ssID", uTF8String6);
  }

  if (self->_networkUnsecured)
  {
    xpc_dictionary_set_BOOL(v43, "nwUsec", 1);
  }

  xpc_dictionary_set_int64(v43, "dvSt", self->_state);
  if (self->_supportsGrouping)
  {
    xpc_dictionary_set_BOOL(v43, "dvGr", 1);
  }

  xpc_dictionary_set_int64(v43, "dvCa", self->_type);
  txtRecordData = self->_txtRecordData;
  if (txtRecordData)
  {
    v46 = txtRecordData;
    v47 = v43;
    v48 = txtRecordData;
    bytes3 = [(NSData *)v48 bytes];
    if (bytes3)
    {
      v50 = bytes3;
    }

    else
    {
      v50 = "";
    }

    v51 = [(NSData *)v48 length];

    xpc_dictionary_set_data(v47, "txRD", v50, v51);
  }

  v52 = self->_url;
  v53 = v52;
  if (v52)
  {
    absoluteString2 = [(NSURL *)v52 absoluteString];
    v55 = v43;
    uTF8String7 = [absoluteString2 UTF8String];
    if (uTF8String7)
    {
      xpc_dictionary_set_string(v55, "urlS", uTF8String7);
    }
  }

  xpc_dictionary_set_int64(v43, "mpSt", self->_mediaPlaybackState);
  mediaContentTitle = self->_mediaContentTitle;
  v58 = v43;
  uTF8String8 = [(NSString *)mediaContentTitle UTF8String];
  if (uTF8String8)
  {
    xpc_dictionary_set_string(v58, "mTi", uTF8String8);
  }

  mediaContentArtistName = self->_mediaContentArtistName;
  v61 = v58;
  uTF8String9 = [(NSString *)mediaContentArtistName UTF8String];
  if (uTF8String9)
  {
    xpc_dictionary_set_string(v61, "mArt", uTF8String9);
  }

  if (self->_discoveredInExtension)
  {
    xpc_dictionary_set_BOOL(v61, "dvDe", 1);
  }

  displayImageName = self->_displayImageName;
  v64 = v61;
  uTF8String10 = [(NSString *)displayImageName UTF8String];
  if (uTF8String10)
  {
    xpc_dictionary_set_string(v64, "dvDI", uTF8String10);
  }

  if (self->_allowPairing)
  {
    xpc_dictionary_set_BOOL(v64, "btAP", 1);
  }

  bluetoothClassicAddress = self->_bluetoothClassicAddress;
  if (bluetoothClassicAddress)
  {
    v67 = bluetoothClassicAddress;
    v68 = v64;
    v69 = bluetoothClassicAddress;
    bytes4 = [(NSData *)v69 bytes];
    if (bytes4)
    {
      v71 = bytes4;
    }

    else
    {
      v71 = "";
    }

    v72 = [(NSData *)v69 length];

    xpc_dictionary_set_data(v68, "btCa", v71, v72);
  }

  wifiAwareOTAName = self->_wifiAwareOTAName;
  v74 = v64;
  uTF8String11 = [(NSString *)wifiAwareOTAName UTF8String];
  if (uTF8String11)
  {
    xpc_dictionary_set_string(v74, "wfaNm", uTF8String11);
  }

  wifiAwareDevicePairingID = self->_wifiAwareDevicePairingID;
  if (wifiAwareDevicePairingID)
  {
    v77 = v74;
    [(NSUUID *)wifiAwareDevicePairingID getUUIDBytes:uuid];
    xpc_dictionary_set_uuid(v77, "dwFPi", uuid);
  }

  wifiAwareVendorName = self->_wifiAwareVendorName;
  v79 = v74;
  uTF8String12 = [(NSString *)wifiAwareVendorName UTF8String];
  if (uTF8String12)
  {
    xpc_dictionary_set_string(v79, "wFVn", uTF8String12);
  }

  wifiAwareModelName = self->_wifiAwareModelName;
  v82 = v79;
  uTF8String13 = [(NSString *)wifiAwareModelName UTF8String];
  if (uTF8String13)
  {
    xpc_dictionary_set_string(v82, "wFMn", uTF8String13);
  }

  xpc_dictionary_set_int64(v82, "sig", self->_signature);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v4 + 248) = self->_approveTime;
  v5 = [(NSMutableDictionary *)self->_appAccessInfoDeviceMap copy];
  v6 = *(v4 + 232);
  *(v4 + 232) = v5;

  v7 = [(NSDictionary *)self->_bluetoothAdvertisementData copy];
  v8 = *(v4 + 56);
  *(v4 + 56) = v7;

  v9 = [(NSData *)self->_bluetoothClassicAddress copy];
  v10 = *(v4 + 24);
  *(v4 + 24) = v9;

  v11 = [(NSUUID *)self->_bluetoothIdentifier copy];
  v12 = *(v4 + 32);
  *(v4 + 32) = v11;

  v13 = [(NSString *)self->_bluetoothOTAName copy];
  v14 = *(v4 + 40);
  *(v4 + 40) = v13;

  *(v4 + 20) = self->_bluetoothAppearance;
  v15 = [(NSNumber *)self->_bluetoothRSSI copy];
  v16 = *(v4 + 48);
  *(v4 + 48) = v15;

  v17 = [(DADiscoveryConfiguration *)self->_discoveryConfiguration copy];
  v18 = *(v4 + 264);
  *(v4 + 264) = v17;

  v19 = [(NSURL *)self->_displayImageFileURL copy];
  v20 = *(v4 + 64);
  *(v4 + 64) = v19;

  v21 = [(NSDictionary *)self->_endpoints copy];
  v22 = *(v4 + 272);
  *(v4 + 272) = v21;

  *(v4 + 80) = self->_flags;
  v23 = [(NSString *)self->_identifier copy];
  v24 = *(v4 + 88);
  *(v4 + 88) = v23;

  v25 = [(NSString *)self->_name copy];
  v26 = *(v4 + 120);
  *(v4 + 120) = v25;

  objc_storeStrong((v4 + 128), self->_networkEndpoint);
  *(v4 + 136) = self->_protocol;
  v27 = [(UTType *)self->_protocolType copy];
  v28 = *(v4 + 144);
  *(v4 + 144) = v27;

  v29 = [(NSString *)self->_SSID copy];
  v30 = *(v4 + 152);
  *(v4 + 152) = v29;

  *(v4 + 10) = self->_networkUnsecured;
  *(v4 + 160) = self->_state;
  *(v4 + 11) = self->_supportsGrouping;
  *(v4 + 176) = self->_type;
  v31 = [(NSData *)self->_txtRecordData copy];
  v32 = *(v4 + 168);
  *(v4 + 168) = v31;

  v33 = [(NSURL *)self->_url copy];
  v34 = *(v4 + 184);
  *(v4 + 184) = v33;

  *(v4 + 96) = self->_mediaPlaybackState;
  v35 = [(NSString *)self->_mediaContentTitle copy];
  v36 = *(v4 + 104);
  *(v4 + 104) = v35;

  v37 = [(NSString *)self->_mediaContentArtistName copy];
  v38 = *(v4 + 112);
  *(v4 + 112) = v37;

  *(v4 + 9) = self->_discoveredInExtension;
  v39 = [(NSString *)self->_displayImageName copy];
  v40 = *(v4 + 72);
  *(v4 + 72) = v39;

  *(v4 + 8) = self->_allowPairing;
  *(v4 + 12) = self->_bluetoothSetupInProgress;
  *(v4 + 14) = self->_bluetoothSetupFinished;
  *(v4 + 13) = self->_wifiAwareSetupInProgress;
  *(v4 + 15) = self->_wifiAwareSetupFinished;
  *(v4 + 16) = self->_upgradeInProgress;
  *(v4 + 17) = self->_upgradeFinished;
  *(v4 + 18) = self->_upgradeFailed;
  *(v4 + 19) = self->_pendingRemoval;
  v41 = [(NSString *)self->_wifiAwareOTAName copy];
  v42 = *(v4 + 200);
  *(v4 + 200) = v41;

  v43 = [(NSUUID *)self->_wifiAwareDevicePairingID copy];
  v44 = *(v4 + 208);
  *(v4 + 208) = v43;

  v45 = [(NSString *)self->_wifiAwareVendorName copy];
  v46 = *(v4 + 224);
  *(v4 + 224) = v45;

  v47 = [(NSString *)self->_wifiAwareModelName copy];
  v48 = *(v4 + 216);
  *(v4 + 216) = v47;

  *(v4 + 192) = self->_signature;
  return v4;
}

- (id)descriptionWithLevel:(int)level
{
  v153 = 0;
  v154 = &v153;
  v155 = 0x3032000000;
  v156 = __Block_byref_object_copy__0;
  v157 = __Block_byref_object_dispose__0;
  v158 = 0;
  v149 = 0;
  v150 = &v149;
  v151 = 0x2020000000;
  if ((level & 0x8000000) != 0)
  {
    v5 = 8;
  }

  else
  {
    v5 = 12;
  }

  v152 = v5;
  if ((level & 0x8000000) == 0)
  {
    v148 = 0;
    v6 = objc_opt_class();
    CUAppendF(&v148, &v152, "%@", v6);
    objc_storeStrong(&v158, v148);
  }

  v7 = self->_identifier;
  v8 = v7;
  if (v7)
  {
    v9 = v154;
    v147 = v154[5];
    CUAppendF(&v147, (v150 + 3), "ID %@", v7);
    objc_storeStrong(v9 + 5, v147);
  }

  v10 = self->_name;
  v11 = v10;
  if (v10)
  {
    v12 = v154;
    v146 = v154[5];
    CUAppendF(&v146, (v150 + 3), "name '%@'", v10);
    objc_storeStrong(v12 + 5, v146);
  }

  v13 = self->_protocolType;
  v14 = v13;
  if (v13)
  {
    v15 = v154;
    v145 = v154[5];
    CUAppendF(&v145, (v150 + 3), "protocol UTType %@", v13);
    objc_storeStrong(v15 + 5, v145);
  }

  if ((self->_flags & 8) == 0)
  {
    v16 = v154;
    v144 = v154[5];
    v17 = v150;
    v18 = DADeviceStateToString(self->_state);
    CUAppendF(&v144, (v17 + 3), "state %@", v18);
    objc_storeStrong(v16 + 5, v144);
  }

  if (self->_supportsGrouping)
  {
    v19 = v154;
    v143 = v154[5];
    CUAppendF(&v143, (v150 + 3), "supportsGrouping %s", "yes");
    objc_storeStrong(v19 + 5, v143);
  }

  v20 = self->_bluetoothIdentifier;
  v21 = v20;
  if (v20)
  {
    v22 = v154;
    v142 = v154[5];
    CUAppendF(&v142, (v150 + 3), "btID %@", v20);
    objc_storeStrong(v22 + 5, v142);
  }

  v23 = self->_bluetoothClassicAddress;
  if (v23)
  {
    v24 = v154;
    v141 = v154[5];
    v25 = v150;
    v26 = CUPrintNSDataAddress();
    CUAppendF(&v141, (v25 + 3), "btCA %@", v26);
    objc_storeStrong(v24 + 5, v141);
  }

  v27 = self->_bluetoothOTAName;
  v28 = v27;
  if (v27)
  {
    v29 = v154;
    v140 = v154[5];
    CUAppendF(&v140, (v150 + 3), "btNm %@", v27);
    objc_storeStrong(v29 + 5, v140);
  }

  bluetoothAppearance = self->_bluetoothAppearance;
  if (self->_bluetoothAppearance)
  {
    v31 = v154;
    v139 = v154[5];
    CUAppendF(&v139, (v150 + 3), "btAp %hu", bluetoothAppearance);
    objc_storeStrong(v31 + 5, v139);
  }

  v32 = self->_networkEndpoint;
  v33 = v32;
  if (v32)
  {
    v34 = v154;
    v138 = v154[5];
    CUAppendF(&v138, (v150 + 3), "nwEP %@", v32);
    objc_storeStrong(v34 + 5, v138);
  }

  v35 = self->_wifiAwareDevicePairingID;
  v36 = v35;
  if (v35)
  {
    v37 = v154;
    v137 = v154[5];
    CUAppendF(&v137, (v150 + 3), "wfaDevicePairingID %@", v35);
    objc_storeStrong(v37 + 5, v137);
  }

  v38 = self->_wifiAwareOTAName;
  v39 = v38;
  if (v38)
  {
    v40 = v154;
    obj = v154[5];
    CUAppendF(&obj, (v150 + 3), "wfOTANm %@", v38);
    objc_storeStrong(v40 + 5, obj);
  }

  v41 = self->_wifiAwareVendorName;
  v42 = v41;
  if (v41)
  {
    v43 = v154;
    v135 = v154[5];
    CUAppendF(&v135, (v150 + 3), "wfVdNm %@", v41);
    objc_storeStrong(v43 + 5, v135);
  }

  v44 = self->_wifiAwareModelName;
  v45 = v44;
  if (v44)
  {
    v46 = v154;
    v134 = v154[5];
    CUAppendF(&v134, (v150 + 3), "wfMdNm %@", v44);
    objc_storeStrong(v46 + 5, v134);
  }

  signature = self->_signature;
  if (signature)
  {
    v48 = v154;
    v133 = v154[5];
    CUAppendF(&v133, (v150 + 3), "wfaSignature %ld", signature);
    objc_storeStrong(v48 + 5, v133);
  }

  v49 = self->_endpoints;
  v50 = v49;
  if (v49)
  {
    v51 = v154;
    v132 = v154[5];
    CUAppendF(&v132, (v150 + 3), "endpoints %d", [(NSDictionary *)v49 count]);
    objc_storeStrong(v51 + 5, v132);
  }

  flags = self->_flags;
  if (flags)
  {
    v53 = v154;
    v131 = v154[5];
    v54 = v150;
    v55 = DADeviceFlagsToString(flags);
    CUAppendF(&v131, (v54 + 3), "flags %@", v55);
    objc_storeStrong(v53 + 5, v131);
  }

  protocol = self->_protocol;
  if (protocol)
  {
    if (protocol == 1)
    {
      v57 = @"DIAL";
    }

    else
    {
      v57 = @"?";
    }

    v58 = v154;
    v130 = v154[5];
    v59 = v150;
    v60 = v57;
    CUAppendF(&v130, (v59 + 3), "protocol %@", v60);
    objc_storeStrong(v58 + 5, v130);
  }

  v61 = self->_SSID;
  v62 = v61;
  if (v61)
  {
    v63 = v154;
    v129 = v154[5];
    CUAppendF(&v129, (v150 + 3), "SSID '%@'", v61);
    objc_storeStrong(v63 + 5, v129);
  }

  if (self->_networkUnsecured)
  {
    v64 = v154;
    v128 = v154[5];
    CUAppendF(&v128, (v150 + 3), "NetworkUnsecured '%s'", "yes");
    objc_storeStrong(v64 + 5, v128);
  }

  v65 = v154;
  v127 = v154[5];
  v66 = v150;
  v67 = DADeviceTypeToString(self->_type);
  CUAppendF(&v127, (v66 + 3), "type %@", v67);
  objc_storeStrong(v65 + 5, v127);

  v68 = self->_txtRecordData;
  if (v68)
  {
    v69 = v154;
    v126 = v154[5];
    v70 = v150;
    v71 = CUPrintNSObjectOneLine();
    CUAppendF(&v126, (v70 + 3), "txtRecord %@", v71);
    objc_storeStrong(v69 + 5, v126);
  }

  v72 = self->_url;
  v73 = v72;
  if (v72)
  {
    v74 = v154;
    v125 = v154[5];
    CUAppendF(&v125, (v150 + 3), "url %@", v72);
    objc_storeStrong(v74 + 5, v125);
  }

  mediaPlaybackState = self->_mediaPlaybackState;
  if (mediaPlaybackState)
  {
    v76 = @"Paused";
    if (mediaPlaybackState != 1)
    {
      v76 = @"?";
    }

    if (mediaPlaybackState == 2)
    {
      v77 = @"Playing";
    }

    else
    {
      v77 = v76;
    }

    v78 = v154;
    v124 = v154[5];
    v79 = v150;
    v80 = v77;
    CUAppendF(&v124, (v79 + 3), "playback state %@", v80);
    objc_storeStrong(v78 + 5, v124);
  }

  v81 = self->_mediaContentTitle;
  v82 = v81;
  if (v81)
  {
    v83 = v154;
    v123 = v154[5];
    CUAppendF(&v123, (v150 + 3), "mediaContentTitle '%@'", v81);
    objc_storeStrong(v83 + 5, v123);
  }

  v84 = self->_mediaContentArtistName;
  v85 = v84;
  if (v84)
  {
    v86 = v154;
    v122 = v154[5];
    CUAppendF(&v122, (v150 + 3), "mediaContentArtist '%@'", v84);
    objc_storeStrong(v86 + 5, v122);
  }

  if (self->_discoveredInExtension)
  {
    v87 = v154;
    v121 = v154[5];
    CUAppendF(&v121, (v150 + 3), "discoveredInExtension %s", "yes");
    objc_storeStrong(v87 + 5, v121);
  }

  v88 = self->_displayImageName;
  v89 = v88;
  if (v88)
  {
    v90 = v154;
    v120 = v154[5];
    CUAppendF(&v120, (v150 + 3), "DisplayImageName '%@'", v88);
    objc_storeStrong(v90 + 5, v120);
  }

  if (self->_allowPairing)
  {
    v91 = v154;
    v119 = v154[5];
    CUAppendF(&v119, (v150 + 3), "allowPairing %s", "yes");
    objc_storeStrong(v91 + 5, v119);
  }

  if (self->_bluetoothSetupInProgress)
  {
    v92 = v154;
    v118 = v154[5];
    CUAppendF(&v118, (v150 + 3), "bluetoothSetupInProgress %s", "yes");
    objc_storeStrong(v92 + 5, v118);
  }

  if (self->_bluetoothSetupFinished)
  {
    v93 = v154;
    v117 = v154[5];
    CUAppendF(&v117, (v150 + 3), "bluetoothSetupFinished %s", "yes");
    objc_storeStrong(v93 + 5, v117);
  }

  if (self->_wifiAwareSetupInProgress)
  {
    v94 = v154;
    v116 = v154[5];
    CUAppendF(&v116, (v150 + 3), "wifiAwareSetupInProgress %s", "yes");
    objc_storeStrong(v94 + 5, v116);
  }

  if (self->_wifiAwareSetupFinished)
  {
    v95 = v154;
    v115 = v154[5];
    CUAppendF(&v115, (v150 + 3), "wifiAwareSetupFinished %s", "yes");
    objc_storeStrong(v95 + 5, v115);
  }

  if (self->_upgradeInProgress)
  {
    v96 = v154;
    v114 = v154[5];
    CUAppendF(&v114, (v150 + 3), "UpgradeInProgress %s", "yes");
    objc_storeStrong(v96 + 5, v114);
  }

  if (self->_upgradeFinished)
  {
    v97 = v154;
    v113 = v154[5];
    CUAppendF(&v113, (v150 + 3), "UpgradeFinished %s", "yes");
    objc_storeStrong(v97 + 5, v113);
  }

  if (self->_upgradeFailed)
  {
    v98 = v154;
    v112 = v154[5];
    CUAppendF(&v112, (v150 + 3), "UpgradeFailed %s", "yes");
    objc_storeStrong(v98 + 5, v112);
  }

  if (self->_pendingRemoval)
  {
    v99 = v154;
    v111 = v154[5];
    CUAppendF(&v111, (v150 + 3), "pendingRemoval %s", "yes");
    objc_storeStrong(v99 + 5, v111);
  }

  endpoints = self->_endpoints;
  v110[0] = MEMORY[0x277D85DD0];
  v110[1] = 3221225472;
  v110[2] = __33__DADevice_descriptionWithLevel___block_invoke;
  v110[3] = &unk_278F57B50;
  v110[4] = &v153;
  v110[5] = &v149;
  [(NSDictionary *)endpoints enumerateKeysAndObjectsUsingBlock:v110];
  appAccessInfoDeviceMap = self->_appAccessInfoDeviceMap;
  v108[0] = MEMORY[0x277D85DD0];
  v108[1] = 3221225472;
  v108[2] = __33__DADevice_descriptionWithLevel___block_invoke_2;
  v108[3] = &unk_278F57B78;
  v108[4] = &v153;
  v108[5] = &v149;
  levelCopy = level;
  [(NSMutableDictionary *)appAccessInfoDeviceMap enumerateKeysAndObjectsUsingBlock:v108];
  accessoryServicesInternalMap = self->_accessoryServicesInternalMap;
  v106[0] = MEMORY[0x277D85DD0];
  v106[1] = 3221225472;
  v106[2] = __33__DADevice_descriptionWithLevel___block_invoke_3;
  v106[3] = &unk_278F57BA0;
  v106[4] = &v153;
  v106[5] = &v149;
  levelCopy2 = level;
  [(NSMutableDictionary *)accessoryServicesInternalMap enumerateKeysAndObjectsUsingBlock:v106];
  v103 = v154[5];
  if (!v103)
  {
    v103 = &stru_285B4C350;
  }

  v104 = v103;
  _Block_object_dispose(&v149, 8);
  _Block_object_dispose(&v153, 8);

  return v104;
}

void __33__DADevice_descriptionWithLevel___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  if ([a3 selected])
  {
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 32) + 8);
    obj = *(v7 + 40);
    CUAppendF(&obj, *(v6 + 8) + 24, "selected");
    objc_storeStrong((v7 + 40), obj);
    *a4 = 1;
  }
}

void __33__DADevice_descriptionWithLevel___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 8);
  obj = *(v4 + 40);
  v5 = *(v3 + 8);
  v6 = CUDescriptionWithLevel();
  CUAppendF(&obj, v5 + 24, "{ %@ }", v6);
  objc_storeStrong((v4 + 40), obj);
}

void __33__DADevice_descriptionWithLevel___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 8);
  obj = *(v4 + 40);
  v5 = *(v3 + 8);
  v6 = CUDescriptionWithLevel();
  CUAppendF(&obj, v5 + 24, "{ %@ }", v6);
  objc_storeStrong((v4 + 40), obj);
}

- (NSDictionary)accessoryServicesMap
{
  v2 = [(NSMutableDictionary *)self->_accessoryServicesInternalMap copy];

  return v2;
}

- (NSDictionary)appAccessInfoMap
{
  v2 = [(NSMutableDictionary *)self->_appAccessInfoDeviceMap copy];

  return v2;
}

- (BOOL)requiresBluetoothSetup
{
  v3 = self->_discoveryConfiguration;
  bluetoothCompanyIdentifiers = [(DADiscoveryConfiguration *)v3 bluetoothCompanyIdentifiers];
  if (!bluetoothCompanyIdentifiers)
  {
    bluetoothCompanyPayload = [(DADiscoveryConfiguration *)v3 bluetoothCompanyPayload];
    if (bluetoothCompanyPayload)
    {
      v5 = 1;
LABEL_18:

      goto LABEL_19;
    }

    bluetoothCompanyPayloadMask = [(DADiscoveryConfiguration *)v3 bluetoothCompanyPayloadMask];
    if (bluetoothCompanyPayloadMask)
    {
      v5 = 1;
LABEL_17:

      goto LABEL_18;
    }

    bluetoothNameSubstring = [(DADiscoveryConfiguration *)v3 bluetoothNameSubstring];
    if (bluetoothNameSubstring)
    {
      v5 = 1;
LABEL_16:

      goto LABEL_17;
    }

    bluetoothServices = [(DADiscoveryConfiguration *)v3 bluetoothServices];
    if (bluetoothServices && (-[DADiscoveryConfiguration bluetoothServices](v3, "bluetoothServices"), v2 = objc_claimAutoreleasedReturnValue(), [v2 count]))
    {
      v5 = 1;
    }

    else
    {
      bluetoothServicePayload = [(DADiscoveryConfiguration *)v3 bluetoothServicePayload];
      if (bluetoothServicePayload)
      {

        v5 = 1;
        if (!bluetoothServices)
        {
LABEL_15:

          goto LABEL_16;
        }
      }

      else
      {
        bluetoothServicePayloadMask = [(DADiscoveryConfiguration *)v3 bluetoothServicePayloadMask];
        v5 = bluetoothServicePayloadMask != 0;

        if (!bluetoothServices)
        {
          goto LABEL_15;
        }
      }
    }

    goto LABEL_15;
  }

  v5 = 1;
LABEL_19:

  return v5;
}

- (BOOL)requiresWiFiSoftAPSetup
{
  v2 = self->_discoveryConfiguration;
  hotspotSSIDs = [(DADiscoveryConfiguration *)v2 hotspotSSIDs];
  if (hotspotSSIDs)
  {
    v4 = 1;
  }

  else
  {
    hotspotSSIDPrefixes = [(DADiscoveryConfiguration *)v2 hotspotSSIDPrefixes];
    v4 = hotspotSSIDPrefixes != 0;
  }

  return v4;
}

- (BOOL)requiresWiFiAwareSetup
{
  wifiAwareServiceName = [(DADiscoveryConfiguration *)self->_discoveryConfiguration wifiAwareServiceName];
  v3 = wifiAwareServiceName != 0;

  return v3;
}

- (void)setDeviceUpgradeFinished:(BOOL)finished inProgress:(BOOL)progress failed:(BOOL)failed
{
  self->_upgradeInProgress = !failed && progress;
  self->_upgradeFinished = !failed && finished;
  self->_upgradeFailed = failed;
}

void __45__DADevice_encodeAdvDataWithCoder_xpcObject___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 UUIDString];
  [v4 setObject:v5 forKeyedSubscript:v6];
}

- (void)decodeAdvDataWithCoder:(id)coder xpcObject:(id)object
{
  v38 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  objectCopy = object;
  v7 = objectCopy;
  v35 = 0;
  if (coderCopy)
  {
    objc_opt_class();
    NSDecodeObjectIfPresent();
  }

  else if (objectCopy)
  {
    CUXPCDecodeNSData();
  }

  v27 = 0;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = approvedCoreBluetoothADVKeysNested();
  v26 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v26)
  {
    v25 = *v32;
    v24 = *MEMORY[0x277CBDD28];
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v32 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v31 + 1) + 8 * i);
        v30 = 0;
        if (coderCopy)
        {
          v10 = coderCopy;
          v11 = v9;
          objc_opt_class();
          NSDecodeObjectIfPresent();
        }

        else
        {
          if (!v7)
          {
            continue;
          }

          [v9 cStringUsingEncoding:4];
          CUXPCDecodeNSData();
        }

        if (v30)
        {
          v12 = v7;
          v13 = MEMORY[0x277CBEB98];
          v36[0] = objc_opt_class();
          v36[1] = objc_opt_class();
          v36[2] = objc_opt_class();
          v36[3] = objc_opt_class();
          v36[4] = objc_opt_class();
          v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:5];
          v15 = [v13 setWithArray:v14];

          v16 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v15 fromData:v30 error:0];
          dictionary = [MEMORY[0x277CBEB38] dictionary];
          if ([v9 isEqualToString:v24])
          {
            v28[0] = MEMORY[0x277D85DD0];
            v28[1] = 3221225472;
            v28[2] = __45__DADevice_decodeAdvDataWithCoder_xpcObject___block_invoke;
            v28[3] = &unk_278F57BF0;
            v29 = dictionary;
            [v16 enumerateKeysAndObjectsUsingBlock:v28];
          }

          dictionary2 = v27;
          if (!v27)
          {
            dictionary2 = [MEMORY[0x277CBEB38] dictionary];
          }

          v19 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:dictionary];
          v27 = dictionary2;
          [dictionary2 setObject:v19 forKeyedSubscript:v9];

          v7 = v12;
        }
      }

      v26 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v26);
  }

  if (v27)
  {
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v27];
    bluetoothAdvertisementData = self->_bluetoothAdvertisementData;
    self->_bluetoothAdvertisementData = v20;
  }
}

void __45__DADevice_decodeAdvDataWithCoder_xpcObject___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [MEMORY[0x277CBE0A0] UUIDWithString:a2];
  if (v5)
  {
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
  }
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

- (void)encodeAdvDataWithCoder:(id)coder xpcObject:(id)object
{
  v82[7] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  objectCopy = object;
  if (self->_bluetoothAdvertisementData)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v7 = *MEMORY[0x277CBDD48];
    v82[0] = *MEMORY[0x277CBDD08];
    v82[1] = v7;
    v8 = *MEMORY[0x277CBDD10];
    v59 = *MEMORY[0x277CBDD30];
    v82[2] = *MEMORY[0x277CBDD30];
    v82[3] = v8;
    v9 = *MEMORY[0x277CBDCF0];
    key = *MEMORY[0x277CBDD18];
    v82[4] = *MEMORY[0x277CBDD18];
    v82[5] = v9;
    xdict = *MEMORY[0x277CBDD38];
    v82[6] = *MEMORY[0x277CBDD38];
    obj = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:7];
    v10 = [obj countByEnumeratingWithState:&v75 objects:v81 count:16];
    v58 = dictionary;
    if (v10)
    {
      v11 = v10;
      v61 = *v76;
      do
      {
        v12 = 0;
        do
        {
          if (*v76 != v61)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v75 + 1) + 8 * v12);
          v14 = [(NSDictionary *)self->_bluetoothAdvertisementData objectForKeyedSubscript:v13];

          if (v14)
          {
            if (([v13 isEqualToString:v59] & 1) != 0 || (objc_msgSend(v13, "isEqualToString:", key) & 1) != 0 || objc_msgSend(v13, "isEqualToString:", xdict))
            {
              selfCopy = self;
              v16 = [(NSDictionary *)self->_bluetoothAdvertisementData objectForKeyedSubscript:v13];
              array = [MEMORY[0x277CBEB18] array];
              v71 = 0u;
              v72 = 0u;
              v73 = 0u;
              v74 = 0u;
              v18 = v16;
              v19 = [v18 countByEnumeratingWithState:&v71 objects:v80 count:16];
              if (v19)
              {
                v20 = v19;
                v21 = *v72;
                do
                {
                  for (i = 0; i != v20; ++i)
                  {
                    if (*v72 != v21)
                    {
                      objc_enumerationMutation(v18);
                    }

                    uUIDString = [*(*(&v71 + 1) + 8 * i) UUIDString];
                    [array addObject:uUIDString];
                  }

                  v20 = [v18 countByEnumeratingWithState:&v71 objects:v80 count:16];
                }

                while (v20);
              }

              dictionary = v58;
              [v58 setObject:array forKeyedSubscript:v13];

              self = selfCopy;
            }

            else
            {
              v18 = [(NSDictionary *)self->_bluetoothAdvertisementData objectForKeyedSubscript:v13];
              [dictionary setObject:v18 forKeyedSubscript:v13];
            }
          }

          ++v12;
        }

        while (v12 != v11);
        v24 = [obj countByEnumeratingWithState:&v75 objects:v81 count:16];
        v11 = v24;
      }

      while (v24);
    }

    if ([dictionary count])
    {
      v70 = 0;
      v25 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:dictionary requiringSecureCoding:1 error:&v70];
      v26 = v70;
      if (v26 && gLogCategory_DADevice <= 90 && (gLogCategory_DADevice != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_DADevice, "[DADevice encodeAdvDataWithCoder:xpcObject:]", 90, "DADevice ADV Data encode flat keys error: %@, flatKeys: %@", v26, dictionary);
      }

      if (v25)
      {
        if (coderCopy)
        {
          [coderCopy encodeObject:v25 forKey:@"btAdv"];
        }

        else if (objectCopy)
        {
          v27 = objectCopy;
          v28 = v25;
          v29 = v25;
          bytes = [v29 bytes];
          if (bytes)
          {
            v31 = bytes;
          }

          else
          {
            v31 = "";
          }

          v32 = [v29 length];

          xpc_dictionary_set_data(v27, "btAdv", v31, v32);
        }
      }
    }

    else
    {
      v26 = 0;
    }

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v62 = approvedCoreBluetoothADVKeysNested();
    v33 = [v62 countByEnumeratingWithState:&v66 objects:v79 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v67;
      v36 = *MEMORY[0x277CBDD28];
      v60 = *MEMORY[0x277CBDD28];
      do
      {
        for (j = 0; j != v34; ++j)
        {
          v38 = v26;
          if (*v67 != v35)
          {
            objc_enumerationMutation(v62);
          }

          v39 = *(*(&v66 + 1) + 8 * j);
          v40 = [(NSDictionary *)self->_bluetoothAdvertisementData objectForKeyedSubscript:v39];

          if (v40 && [v39 isEqualToString:v36])
          {
            v41 = [(NSDictionary *)self->_bluetoothAdvertisementData objectForKeyedSubscript:v39];
            dictionary2 = [MEMORY[0x277CBEB38] dictionary];
            v64[0] = MEMORY[0x277D85DD0];
            v64[1] = 3221225472;
            v64[2] = __45__DADevice_encodeAdvDataWithCoder_xpcObject___block_invoke;
            v64[3] = &unk_278F57BC8;
            v43 = dictionary2;
            v65 = v43;
            [v41 enumerateKeysAndObjectsUsingBlock:v64];
            v63 = v26;
            v44 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v43 requiringSecureCoding:1 error:&v63];
            v26 = v63;

            if (v26 && gLogCategory_DADevice <= 90 && (gLogCategory_DADevice != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_DADevice, "[DADevice encodeAdvDataWithCoder:xpcObject:]", 90, "DADevice ADV Data encode nested keys error: %@, nestedKeys: %@", v26, v43);
            }

            if (v44)
            {
              if (coderCopy)
              {
                [coderCopy encodeObject:v44 forKey:v39];
              }

              else if (objectCopy)
              {
                keya = [v39 cStringUsingEncoding:4];
                xdicta = objectCopy;
                v45 = v44;
                v46 = v44;
                bytes2 = [v46 bytes];
                v48 = "";
                if (bytes2)
                {
                  v48 = bytes2;
                }

                bytes = v48;
                v49 = [v46 length];

                xpc_dictionary_set_data(xdicta, keya, bytes, v49);
              }
            }

            v36 = v60;
          }
        }

        v34 = [v62 countByEnumeratingWithState:&v66 objects:v79 count:16];
      }

      while (v34);
    }
  }
}

- (void)initWithXPCObject:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CBEBC0] URLWithString:a1];
  if (v3)
  {
    objc_storeStrong((a2 + 184), v3);
  }
}

@end