@interface DADiscoveryConfiguration
- (DADiscoveryConfiguration)initWithCoder:(id)coder;
- (DADiscoveryConfiguration)initWithXPCObject:(id)object error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation DADiscoveryConfiguration

- (DADiscoveryConfiguration)initWithCoder:(id)coder
{
  v30 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [(DADiscoveryConfiguration *)self init];
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
    NSDecodeNSArrayOfClassIfPresent();
    v9 = v8;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v10 = v9;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v29 = 0;
    objc_opt_class();
    NSDecodeNSArrayOfClassIfPresent();
    v11 = v10;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v12 = v11;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v13 = v12;
    if ([v13 containsValueForKey:@"btNC"])
    {
      v5->_bluetoothNameSubstringCompareOptions = [v13 decodeIntegerForKey:@"btNC"];
    }

    v14 = v13;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v15 = v14;
    if ([v15 containsValueForKey:@"btAP"])
    {
      v5->_allowsBluetoothPairing = [v15 decodeBoolForKey:@"btAP"];
    }

    v16 = v15;
    if ([v16 containsValueForKey:@"btRg"])
    {
      v5->_bluetoothRange = [v16 decodeIntegerForKey:@"btRg"];
    }

    v17 = v16;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    objc_opt_class();
    NSDecodeNSArrayOfClassIfPresent();
    objc_opt_class();
    NSDecodeNSArrayOfClassIfPresent();
    v18 = v17;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v19 = v18;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v20 = v19;
    if ([v20 containsValueForKey:@"alRn"])
    {
      v5->_allowsRename = [v20 decodeBoolForKey:@"alRn"];
    }

    v21 = v20;
    if ([v21 containsValueForKey:@"dsFs"])
    {
      v5->_flags = [v21 decodeIntegerForKey:@"dsFs"];
    }

    v22 = v21;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    objc_opt_class();
    NSDecodeNSArrayOfClassIfPresent();
    objc_opt_class();
    NSDecodeNSArrayOfClassIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    v23 = v22;
    if ([v23 containsValueForKey:@"prOn"])
    {
      v5->_presenceOnly = [v23 decodeBoolForKey:@"prOn"];
    }

    v24 = v23;
    if ([v24 containsValueForKey:@"wFPi"])
    {
      v5->_wifiAwarePairingID = [v24 decodeInt64ForKey:@"wFPi"];
    }

    v25 = v24;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v26 = v25;
    if ([v26 containsValueForKey:@"wFSt"])
    {
      v5->_wifiAwareServiceType = [v26 decodeIntegerForKey:@"wFSt"];
    }

    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    v27 = v5;
  }

  else
  {
    [DADiscoveryConfiguration initWithCoder:coderCopy];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v45 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = coderCopy;
  existingDeviceIdentifier = self->_existingDeviceIdentifier;
  if (existingDeviceIdentifier)
  {
    [coderCopy encodeObject:existingDeviceIdentifier forKey:@"id"];
  }

  associationIdentifier = self->_associationIdentifier;
  if (associationIdentifier)
  {
    [v5 encodeObject:associationIdentifier forKey:@"asdID"];
  }

  bluetoothIdentifier = self->_bluetoothIdentifier;
  if (bluetoothIdentifier)
  {
    [v5 encodeObject:bluetoothIdentifier forKey:@"btID"];
  }

  bluetoothCompanyIdentifiers = self->_bluetoothCompanyIdentifiers;
  if (bluetoothCompanyIdentifiers)
  {
    [v5 encodeObject:bluetoothCompanyIdentifiers forKey:@"btCI"];
  }

  bluetoothCompanyPayload = self->_bluetoothCompanyPayload;
  if (bluetoothCompanyPayload)
  {
    [v5 encodeObject:bluetoothCompanyPayload forKey:@"btCP"];
  }

  bluetoothCompanyPayloadMask = self->_bluetoothCompanyPayloadMask;
  if (bluetoothCompanyPayloadMask)
  {
    [v5 encodeObject:bluetoothCompanyPayloadMask forKey:@"btCM"];
  }

  v12 = self->_bluetoothServices;
  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](v12, "count")}];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v14 = v12;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v41;
    do
    {
      v18 = 0;
      do
      {
        if (*v41 != v17)
        {
          objc_enumerationMutation(v14);
        }

        data = [*(*(&v40 + 1) + 8 * v18) data];
        [v13 addObject:data];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v16);
  }

  if (v13)
  {
    [v5 encodeObject:v13 forKey:@"btSv"];
  }

  bluetoothServicePayload = self->_bluetoothServicePayload;
  if (bluetoothServicePayload)
  {
    [v5 encodeObject:bluetoothServicePayload forKey:@"btSP"];
  }

  bluetoothServicePayloadMask = self->_bluetoothServicePayloadMask;
  if (bluetoothServicePayloadMask)
  {
    [v5 encodeObject:bluetoothServicePayloadMask forKey:@"btSM"];
  }

  bluetoothNameSubstringCompareOptions = self->_bluetoothNameSubstringCompareOptions;
  if (bluetoothNameSubstringCompareOptions)
  {
    [v5 encodeInteger:bluetoothNameSubstringCompareOptions forKey:@"btNC"];
  }

  bluetoothNameSubstring = self->_bluetoothNameSubstring;
  if (bluetoothNameSubstring)
  {
    [v5 encodeObject:bluetoothNameSubstring forKey:@"btNS"];
  }

  if (self->_allowsBluetoothPairing)
  {
    [v5 encodeBool:1 forKey:@"btAP"];
  }

  bluetoothRange = self->_bluetoothRange;
  if (bluetoothRange)
  {
    [v5 encodeInteger:bluetoothRange forKey:@"btRg"];
  }

  bonjourServiceName = self->_bonjourServiceName;
  if (bonjourServiceName)
  {
    [v5 encodeObject:bonjourServiceName forKey:@"bjSn"];
  }

  bonjourServiceTypes = self->_bonjourServiceTypes;
  if (bonjourServiceTypes)
  {
    [v5 encodeObject:bonjourServiceTypes forKey:@"bjST"];
  }

  bonjourTXTRecordData = self->_bonjourTXTRecordData;
  if (bonjourTXTRecordData)
  {
    [v5 encodeObject:bonjourTXTRecordData forKey:@"txRD"];
  }

  bundleID = self->_bundleID;
  if (bundleID)
  {
    [v5 encodeObject:bundleID forKey:@"bndI"];
  }

  displayName = self->_displayName;
  if (displayName)
  {
    [v5 encodeObject:displayName forKey:@"name"];
  }

  if (self->_allowsRename)
  {
    [v5 encodeBool:1 forKey:@"alRn"];
  }

  flags = self->_flags;
  if (flags)
  {
    [v5 encodeInteger:flags forKey:@"dsFs"];
  }

  networkHotspotSSID = self->_networkHotspotSSID;
  if (networkHotspotSSID)
  {
    [v5 encodeObject:networkHotspotSSID forKey:@"neHsd"];
  }

  hotspotSSIDs = self->_hotspotSSIDs;
  if (hotspotSSIDs)
  {
    [v5 encodeObject:hotspotSSIDs forKey:@"hSds"];
  }

  hotspotSSIDPrefixes = self->_hotspotSSIDPrefixes;
  if (hotspotSSIDPrefixes)
  {
    [v5 encodeObject:hotspotSSIDPrefixes forKey:@"hSPs"];
  }

  iconType = self->_iconType;
  if (iconType)
  {
    [v5 encodeObject:iconType forKey:@"dvPT"];
  }

  if (self->_presenceOnly)
  {
    [v5 encodeBool:1 forKey:@"prOn"];
  }

  wifiAwarePairingID = self->_wifiAwarePairingID;
  if (wifiAwarePairingID)
  {
    [v5 encodeInt64:wifiAwarePairingID forKey:@"wFPi"];
  }

  wifiAwareServiceName = self->_wifiAwareServiceName;
  if (wifiAwareServiceName)
  {
    [v5 encodeObject:wifiAwareServiceName forKey:@"wFSn"];
  }

  wifiAwareServiceType = self->_wifiAwareServiceType;
  if (wifiAwareServiceType)
  {
    [v5 encodeInteger:wifiAwareServiceType forKey:@"wFSt"];
  }

  wifiAwareModelNameMatch = self->_wifiAwareModelNameMatch;
  if (wifiAwareModelNameMatch)
  {
    [v5 encodeObject:wifiAwareModelNameMatch forKey:@"wFMnm"];
  }

  wifiAwareVendorNameMatch = self->_wifiAwareVendorNameMatch;
  if (wifiAwareVendorNameMatch)
  {
    [v5 encodeObject:wifiAwareVendorNameMatch forKey:@"wFVim"];
  }
}

- (void)encodeWithXPCObject:(id)object
{
  v73 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  uTF8String = [(NSString *)self->_existingDeviceIdentifier UTF8String];
  if (uTF8String)
  {
    xpc_dictionary_set_string(objectCopy, "id", uTF8String);
  }

  associationIdentifier = self->_associationIdentifier;
  v7 = objectCopy;
  uTF8String2 = [(NSString *)associationIdentifier UTF8String];
  if (uTF8String2)
  {
    xpc_dictionary_set_string(v7, "asdID", uTF8String2);
  }

  bluetoothIdentifier = self->_bluetoothIdentifier;
  if (bluetoothIdentifier)
  {
    v10 = v7;
    [(NSUUID *)bluetoothIdentifier getUUIDBytes:uuid];
    xpc_dictionary_set_uuid(v10, "btID", uuid);
  }

  CUXPCEncodeNSArrayOfNSNumber();
  bluetoothCompanyPayload = self->_bluetoothCompanyPayload;
  if (bluetoothCompanyPayload)
  {
    v12 = bluetoothCompanyPayload;
    v13 = v7;
    v14 = bluetoothCompanyPayload;
    bytes = [(NSData *)v14 bytes];
    if (bytes)
    {
      v16 = bytes;
    }

    else
    {
      v16 = "";
    }

    v17 = [(NSData *)v14 length];

    xpc_dictionary_set_data(v13, "btCP", v16, v17);
  }

  bluetoothCompanyPayloadMask = self->_bluetoothCompanyPayloadMask;
  if (bluetoothCompanyPayloadMask)
  {
    v19 = bluetoothCompanyPayloadMask;
    v20 = v7;
    v21 = bluetoothCompanyPayloadMask;
    bytes2 = [(NSData *)v21 bytes];
    if (bytes2)
    {
      v23 = bytes2;
    }

    else
    {
      v23 = "";
    }

    v24 = [(NSData *)v21 length];

    xpc_dictionary_set_data(v20, "btCM", v23, v24);
  }

  bluetoothRange = self->_bluetoothRange;
  if (bluetoothRange)
  {
    xpc_dictionary_set_int64(v7, "btRg", bluetoothRange);
  }

  DAXPCEncodeNSArrayOfCBUUID(v7, "btSv", self->_bluetoothServices);
  bluetoothServicePayload = self->_bluetoothServicePayload;
  if (bluetoothServicePayload)
  {
    v27 = bluetoothServicePayload;
    v28 = v7;
    v29 = bluetoothServicePayload;
    bytes3 = [(NSData *)v29 bytes];
    if (bytes3)
    {
      v31 = bytes3;
    }

    else
    {
      v31 = "";
    }

    v32 = [(NSData *)v29 length];

    xpc_dictionary_set_data(v28, "btSP", v31, v32);
  }

  bluetoothServicePayloadMask = self->_bluetoothServicePayloadMask;
  if (bluetoothServicePayloadMask)
  {
    v34 = bluetoothServicePayloadMask;
    v35 = v7;
    v36 = bluetoothServicePayloadMask;
    bytes4 = [(NSData *)v36 bytes];
    if (bytes4)
    {
      v38 = bytes4;
    }

    else
    {
      v38 = "";
    }

    v39 = [(NSData *)v36 length];

    xpc_dictionary_set_data(v35, "btSM", v38, v39);
  }

  bluetoothNameSubstringCompareOptions = self->_bluetoothNameSubstringCompareOptions;
  if (bluetoothNameSubstringCompareOptions)
  {
    xpc_dictionary_set_uint64(v7, "btNC", bluetoothNameSubstringCompareOptions);
  }

  bluetoothNameSubstring = self->_bluetoothNameSubstring;
  v42 = v7;
  uTF8String3 = [(NSString *)bluetoothNameSubstring UTF8String];
  if (uTF8String3)
  {
    xpc_dictionary_set_string(v42, "btNS", uTF8String3);
  }

  if (self->_allowsBluetoothPairing)
  {
    xpc_dictionary_set_BOOL(v42, "btAP", 1);
  }

  bonjourServiceName = self->_bonjourServiceName;
  v45 = v42;
  uTF8String4 = [(NSString *)bonjourServiceName UTF8String];
  if (uTF8String4)
  {
    xpc_dictionary_set_string(v45, "bjSn", uTF8String4);
  }

  CUXPCEncodeNSArrayOfNSString();
  bonjourTXTRecordData = self->_bonjourTXTRecordData;
  if (bonjourTXTRecordData)
  {
    v48 = bonjourTXTRecordData;
    v49 = v45;
    v50 = bonjourTXTRecordData;
    bytes5 = [(NSData *)v50 bytes];
    if (bytes5)
    {
      v52 = bytes5;
    }

    else
    {
      v52 = "";
    }

    v53 = [(NSData *)v50 length];

    xpc_dictionary_set_data(v49, "txRD", v52, v53);
  }

  bundleID = self->_bundleID;
  v55 = v45;
  uTF8String5 = [(NSString *)bundleID UTF8String];
  if (uTF8String5)
  {
    xpc_dictionary_set_string(v55, "bndI", uTF8String5);
  }

  flags = self->_flags;
  if (flags)
  {
    xpc_dictionary_set_uint64(v55, "dsFs", flags);
  }

  networkHotspotSSID = self->_networkHotspotSSID;
  v59 = v55;
  uTF8String6 = [(NSString *)networkHotspotSSID UTF8String];
  if (uTF8String6)
  {
    xpc_dictionary_set_string(v59, "neHsd", uTF8String6);
  }

  CUXPCEncodeNSArrayOfNSString();
  CUXPCEncodeNSArrayOfNSString();
  displayName = self->_displayName;
  v62 = v59;
  uTF8String7 = [(NSString *)displayName UTF8String];
  if (uTF8String7)
  {
    xpc_dictionary_set_string(v62, "name", uTF8String7);
  }

  if (self->_allowsRename)
  {
    xpc_dictionary_set_BOOL(v62, "alRn", 1);
  }

  identifier = [(UTType *)self->_iconType identifier];
  v65 = v62;
  uTF8String8 = [identifier UTF8String];
  if (uTF8String8)
  {
    xpc_dictionary_set_string(v65, "dvPT", uTF8String8);
  }

  if (self->_presenceOnly)
  {
    xpc_dictionary_set_BOOL(v65, "prOn", 1);
  }

  wifiAwarePairingID = self->_wifiAwarePairingID;
  if (wifiAwarePairingID)
  {
    xpc_dictionary_set_uint64(v65, "wFPi", wifiAwarePairingID);
  }

  wifiAwareServiceName = self->_wifiAwareServiceName;
  v69 = v65;
  uTF8String9 = [(NSString *)wifiAwareServiceName UTF8String];
  if (uTF8String9)
  {
    xpc_dictionary_set_string(v69, "wFSn", uTF8String9);
  }

  CUXPCEncodeObject();
  wifiAwareServiceType = self->_wifiAwareServiceType;
  if (wifiAwareServiceType)
  {
    xpc_dictionary_set_uint64(v69, "wFSt", wifiAwareServiceType);
  }

  CUXPCEncodeObject();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_existingDeviceIdentifier copy];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_associationIdentifier copy];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSUUID *)self->_bluetoothIdentifier copy];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  v12 = [(NSArray *)self->_bluetoothCompanyIdentifiers copy];
  v13 = *(v5 + 48);
  *(v5 + 48) = v12;

  objc_storeStrong((v5 + 56), self->_bluetoothCompanyPayload);
  objc_storeStrong((v5 + 64), self->_bluetoothCompanyPayloadMask);
  *(v5 + 152) = self->_bluetoothRange;
  v14 = [(NSArray *)self->_bluetoothServices copy];
  v15 = *(v5 + 72);
  *(v5 + 72) = v14;

  v16 = [(NSData *)self->_bluetoothServicePayload copy];
  v17 = *(v5 + 80);
  *(v5 + 80) = v16;

  v18 = [(NSData *)self->_bluetoothServicePayloadMask copy];
  v19 = *(v5 + 88);
  *(v5 + 88) = v18;

  *(v5 + 96) = self->_bluetoothNameSubstringCompareOptions;
  v20 = [(NSString *)self->_bluetoothNameSubstring copy];
  v21 = *(v5 + 104);
  *(v5 + 104) = v20;

  *(v5 + 8) = self->_allowsBluetoothPairing;
  v22 = [(NSString *)self->_bonjourServiceName copy];
  v23 = *(v5 + 112);
  *(v5 + 112) = v22;

  v24 = [(NSArray *)self->_bonjourServiceTypes copy];
  v25 = *(v5 + 120);
  *(v5 + 120) = v24;

  v26 = [(NSData *)self->_bonjourTXTRecordData copy];
  v27 = *(v5 + 128);
  *(v5 + 128) = v26;

  v28 = [(NSString *)self->_bundleID copy];
  v29 = *(v5 + 216);
  *(v5 + 216) = v28;

  v30 = [(NSString *)self->_displayName copy];
  v31 = *(v5 + 136);
  *(v5 + 136) = v30;

  *(v5 + 9) = self->_allowsRename;
  *(v5 + 144) = self->_flags;
  v32 = [(NSString *)self->_networkHotspotSSID copy];
  v33 = *(v5 + 160);
  *(v5 + 160) = v32;

  v34 = [(NSArray *)self->_hotspotSSIDs copy];
  v35 = *(v5 + 168);
  *(v5 + 168) = v34;

  v36 = [(NSArray *)self->_hotspotSSIDPrefixes copy];
  v37 = *(v5 + 176);
  *(v5 + 176) = v36;

  v38 = [(UTType *)self->_iconType copy];
  v39 = *(v5 + 224);
  *(v5 + 224) = v38;

  *(v5 + 10) = self->_presenceOnly;
  *(v5 + 40) = self->_wifiAwarePairingID;
  v40 = [(NSString *)self->_wifiAwareServiceName copyWithZone:zone];
  v41 = *(v5 + 184);
  *(v5 + 184) = v40;

  *(v5 + 200) = self->_wifiAwareServiceType;
  v42 = [(DAPropertyCompareString *)self->_wifiAwareModelNameMatch copyWithZone:zone];
  v43 = *(v5 + 192);
  *(v5 + 192) = v42;

  v44 = [(DAPropertyCompareString *)self->_wifiAwareVendorNameMatch copyWithZone:zone];
  v45 = *(v5 + 208);
  *(v5 + 208) = v44;

  return v5;
}

- (id)description
{
  v128 = 8;
  existingDeviceIdentifier = self->_existingDeviceIdentifier;
  if (existingDeviceIdentifier)
  {
    v127 = 0;
    v4 = existingDeviceIdentifier;
    v5 = CUPrintNSObjectOneLine();
    CUAppendF(&v127, &v128, "dvID %@", v5);
    v6 = v127;
  }

  else
  {
    v6 = 0;
  }

  associationIdentifier = self->_associationIdentifier;
  if (associationIdentifier)
  {
    v126 = v6;
    v8 = associationIdentifier;
    v9 = CUPrintNSObjectOneLine();
    CUAppendF(&v126, &v128, "asID %@", v9);
    v10 = v126;

    v6 = v10;
  }

  bluetoothIdentifier = self->_bluetoothIdentifier;
  if (bluetoothIdentifier)
  {
    v125 = v6;
    v12 = bluetoothIdentifier;
    v13 = CUPrintNSObjectOneLine();
    CUAppendF(&v125, &v128, "btID %@", v13);
    v14 = v125;

    v6 = v14;
  }

  bluetoothCompanyIdentifiers = self->_bluetoothCompanyIdentifiers;
  if (bluetoothCompanyIdentifiers)
  {
    v124 = v6;
    v16 = bluetoothCompanyIdentifiers;
    v17 = CUPrintNSObjectOneLine();
    CUAppendF(&v124, &v128, "btCI %@", v17);
    v18 = v124;

    v6 = v18;
  }

  bluetoothCompanyPayload = self->_bluetoothCompanyPayload;
  if (bluetoothCompanyPayload)
  {
    v123 = v6;
    v20 = bluetoothCompanyPayload;
    v21 = CUPrintNSObjectOneLine();
    CUAppendF(&v123, &v128, "btCP %@", v21);
    v22 = v123;

    v6 = v22;
  }

  bluetoothCompanyPayloadMask = self->_bluetoothCompanyPayloadMask;
  if (bluetoothCompanyPayloadMask)
  {
    v122 = v6;
    v24 = bluetoothCompanyPayloadMask;
    v25 = CUPrintNSObjectOneLine();
    CUAppendF(&v122, &v128, "btCM %@", v25);
    v26 = v122;

    v6 = v26;
  }

  bluetoothRange = self->_bluetoothRange;
  if (bluetoothRange)
  {
    if (bluetoothRange == 10)
    {
      v28 = @"Immediate";
    }

    else
    {
      v28 = @"?";
    }

    v121 = v6;
    CUAppendF(&v121, &v128, "btRg %@", v28);
    v29 = v121;

    v6 = v29;
  }

  bluetoothServices = self->_bluetoothServices;
  if (bluetoothServices)
  {
    v120 = v6;
    v31 = bluetoothServices;
    v32 = CUPrintNSObjectOneLine();
    CUAppendF(&v120, &v128, "btSv %@", v32);
    v33 = v120;

    v6 = v33;
  }

  bluetoothServicePayload = self->_bluetoothServicePayload;
  if (bluetoothServicePayload)
  {
    v119 = v6;
    v35 = bluetoothServicePayload;
    v36 = CUPrintNSObjectOneLine();
    CUAppendF(&v119, &v128, "btSP %@", v36);
    v37 = v119;

    v6 = v37;
  }

  bluetoothServicePayloadMask = self->_bluetoothServicePayloadMask;
  if (bluetoothServicePayloadMask)
  {
    v118 = v6;
    v39 = bluetoothServicePayloadMask;
    v40 = CUPrintNSObjectOneLine();
    CUAppendF(&v118, &v128, "btSM %@", v40);
    v41 = v118;

    v6 = v41;
  }

  bluetoothNameSubstringCompareOptions = self->_bluetoothNameSubstringCompareOptions;
  if (bluetoothNameSubstringCompareOptions)
  {
    v117 = v6;
    CUAppendF(&v117, &v128, "btNC %lu", bluetoothNameSubstringCompareOptions);
    v43 = v117;

    v6 = v43;
  }

  bluetoothNameSubstring = self->_bluetoothNameSubstring;
  if (bluetoothNameSubstring)
  {
    v116 = v6;
    v45 = bluetoothNameSubstring;
    v46 = CUPrintNSObjectOneLine();
    CUAppendF(&v116, &v128, "btNS %@", v46);
    v47 = v116;

    v6 = v47;
  }

  if (self->_allowsBluetoothPairing)
  {
    v115 = v6;
    CUAppendF(&v115, &v128, "btAP");
    v48 = v115;

    v6 = v48;
  }

  bonjourServiceName = self->_bonjourServiceName;
  if (bonjourServiceName)
  {
    v114 = v6;
    v50 = bonjourServiceName;
    v51 = CUPrintNSObjectOneLine();
    CUAppendF(&v114, &v128, "bjSn %@", v51);
    v52 = v114;

    v6 = v52;
  }

  bonjourServiceTypes = self->_bonjourServiceTypes;
  if (bonjourServiceTypes)
  {
    v113 = v6;
    v54 = bonjourServiceTypes;
    v55 = CUPrintNSObjectOneLine();
    CUAppendF(&v113, &v128, "bjSv %@", v55);
    v56 = v113;

    v6 = v56;
  }

  bonjourTXTRecordData = self->_bonjourTXTRecordData;
  if (bonjourTXTRecordData)
  {
    v112 = v6;
    v58 = bonjourTXTRecordData;
    v59 = CUPrintNSObjectOneLine();
    CUAppendF(&v112, &v128, "bjTx %@", v59);
    v60 = v112;

    v6 = v60;
  }

  bundleID = self->_bundleID;
  if (bundleID)
  {
    v111 = v6;
    v62 = bundleID;
    CUAppendF(&v111, &v128, "%@", v62);
    v63 = v111;

    v6 = v63;
  }

  if (self->_flags)
  {
    v110 = v6;
    v64 = CUPrintFlags64();
    CUAppendF(&v110, &v128, "flags %@", v64);
    v65 = v110;

    v6 = v65;
  }

  networkHotspotSSID = self->_networkHotspotSSID;
  if (networkHotspotSSID)
  {
    v109 = v6;
    v67 = networkHotspotSSID;
    v68 = CUPrintNSObjectOneLine();
    CUAppendF(&v109, &v128, "neHsd %@", v68);
    v69 = v109;

    v6 = v69;
  }

  hotspotSSIDs = self->_hotspotSSIDs;
  if (hotspotSSIDs)
  {
    v108 = v6;
    v71 = hotspotSSIDs;
    v72 = CUPrintNSObjectOneLine();
    CUAppendF(&v108, &v128, "hSds %@", v72);
    v73 = v108;

    v6 = v73;
  }

  hotspotSSIDPrefixes = self->_hotspotSSIDPrefixes;
  if (hotspotSSIDPrefixes)
  {
    v107 = v6;
    v75 = hotspotSSIDPrefixes;
    v76 = CUPrintNSObjectOneLine();
    CUAppendF(&v107, &v128, "hSPs %@", v76);
    v77 = v107;

    v6 = v77;
  }

  iconType = self->_iconType;
  if (iconType)
  {
    v106 = v6;
    v79 = iconType;
    v80 = CUPrintNSObjectOneLine();
    CUAppendF(&v106, &v128, "icon %@", v80);
    v81 = v106;

    v6 = v81;
  }

  if (self->_presenceOnly)
  {
    v105 = v6;
    CUAppendF(&v105, &v128, "presence");
    v82 = v105;

    v6 = v82;
  }

  wifiAwarePairingID = self->_wifiAwarePairingID;
  if (wifiAwarePairingID)
  {
    v104 = v6;
    CUAppendF(&v104, &v128, "WF-ID %llu", wifiAwarePairingID);
    v84 = v104;

    v6 = v84;
  }

  wifiAwareServiceName = self->_wifiAwareServiceName;
  if (wifiAwareServiceName)
  {
    v103 = v6;
    v86 = self->_wifiAwareServiceName;
    v87 = wifiAwareServiceName;
    CUAppendF(&v103, &v128, "WF-Sn %@", v86);
    v88 = v103;

    v6 = v88;
  }

  wifiAwareServiceType = self->_wifiAwareServiceType;
  if (wifiAwareServiceType)
  {
    v102 = v6;
    CUAppendF(&v102, &v128, "ty %lu", wifiAwareServiceType);
    v90 = v102;

    v6 = v90;
  }

  wifiAwareModelNameMatch = self->_wifiAwareModelNameMatch;
  if (wifiAwareModelNameMatch)
  {
    v101 = v6;
    v92 = wifiAwareModelNameMatch;
    CUAppendF(&v101, &v128, "Mnm %@", v92);
    v93 = v101;

    v6 = v93;
  }

  wifiAwareVendorNameMatch = self->_wifiAwareVendorNameMatch;
  if (wifiAwareVendorNameMatch)
  {
    v100 = v6;
    v95 = wifiAwareVendorNameMatch;
    CUAppendF(&v100, &v128, "Vidm %@", v95);
    v96 = v100;

    v6 = v96;
  }

  v97 = @"none";
  if (v6)
  {
    v97 = v6;
  }

  v98 = v97;

  return v98;
}

- (DADiscoveryConfiguration)initWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  v7 = [(DADiscoveryConfiguration *)self init];
  if (!v7)
  {
    if (!error)
    {
      goto LABEL_39;
    }

    v33 = objc_opt_class();
    v31 = OUTLINED_FUNCTION_8();
LABEL_38:
    DAErrorF(v31, v32, v33);
    *error = v29 = 0;
    goto LABEL_33;
  }

  if (MEMORY[0x24C1DC9E0](objectCopy) != MEMORY[0x277D86468])
  {
    if (!error)
    {
      goto LABEL_39;
    }

    v32 = "XPC non-dict";
    v31 = 350004;
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_1();
  CUXPCDecodeNSString();
  OUTLINED_FUNCTION_1();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_1();
  if (!CUXPCDecodeNSUUID())
  {
    goto LABEL_39;
  }

  if (!CUXPCDecodeNSArrayOfInteger())
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_1();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_1();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_39;
  }

  v8 = CUXPCDecodeSInt64RangedEx();
  if (v8 == 6)
  {
    v7->_bluetoothRange = 0;
    goto LABEL_11;
  }

  if (v8 == 5)
  {
LABEL_39:
    v29 = 0;
    goto LABEL_33;
  }

LABEL_11:
  v9 = OUTLINED_FUNCTION_1();
  if (!DAXPCDecodeNSArrayOfCBUUID(v9, v10, v11, v12))
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_1();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_1();
  v13 = CUXPCDecodeNSData();
  if (!v13)
  {
    goto LABEL_39;
  }

  if (OUTLINED_FUNCTION_0(v13, "btNC", v14, v15, v16) == 6)
  {
    v7->_bluetoothNameSubstringCompareOptions = 0;
  }

  OUTLINED_FUNCTION_1();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_1();
  if (!CUXPCDecodeBool())
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_1();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_1();
  if (!CUXPCDecodeNSArrayOfNSString())
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_1();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_1();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_1();
  CUXPCDecodeNSString();
  OUTLINED_FUNCTION_1();
  v17 = CUXPCDecodeBool();
  if (OUTLINED_FUNCTION_0(v17, "dsFs", v18, v19, v20) == 6)
  {
    v7->_flags = 0;
  }

  OUTLINED_FUNCTION_1();
  CUXPCDecodeNSString();
  OUTLINED_FUNCTION_1();
  if (!CUXPCDecodeNSArrayOfNSString())
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_1();
  if (!CUXPCDecodeNSArrayOfNSString())
  {
    goto LABEL_39;
  }

  CUXPCDecodeNSString();
  OUTLINED_FUNCTION_1();
  v21 = CUXPCDecodeBool();
  if (v21)
  {
    if (OUTLINED_FUNCTION_0(v21, "wFPi", v22, v23, v24) == 6)
    {
      v7->_wifiAwarePairingID = 0;
    }

    OUTLINED_FUNCTION_1();
    v25 = CUXPCDecodeNSString();
    if (OUTLINED_FUNCTION_0(v25, "wFSt", v26, v27, v28) == 6)
    {
      v7->_wifiAwareServiceType = 0;
    }

    objc_opt_class();
    OUTLINED_FUNCTION_9();
    CUXPCDecodeObject();
    objc_opt_class();
    OUTLINED_FUNCTION_9();
    CUXPCDecodeObject();
    v29 = v7;
  }

  else
  {
    v29 = 0;
  }

LABEL_33:
  return v29;
}

- (void)initWithCoder:(void *)a1 .cold.1(void *a1)
{
  v4 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_8();
  v5 = DAErrorF(v2, v3, v4);
  [a1 failWithError:v5];
}

@end