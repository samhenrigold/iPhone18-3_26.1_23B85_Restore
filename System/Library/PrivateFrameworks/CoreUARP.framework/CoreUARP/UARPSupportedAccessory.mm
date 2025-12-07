@interface UARPSupportedAccessory
+ (id)findByAppleModelNumber:(id)number;
+ (id)findByHardwareID:(id)d;
+ (id)findByMobileAssetAppleModelNumber:(id)number;
+ (id)supportedAccessories;
+ (id)supportedAccessoriesByTransport:(int64_t)transport;
- (BOOL)isEqual:(id)equal;
- (NSString)identifier;
- (NSString)mobileAssetAppleModelNumber;
- (NSString)supplementalMobileAssetAppleModelNumber;
- (UARPSupportedAccessory)init;
- (UARPSupportedAccessory)initWithBluetoothDictionary:(id)dictionary;
- (UARPSupportedAccessory)initWithDictionary:(id)dictionary;
- (UARPSupportedAccessory)initWithHDSDictionary:(id)dictionary;
- (UARPSupportedAccessory)initWithHIDDictionary:(id)dictionary;
- (UARPSupportedAccessory)initWithHardwareID:(id)d appleModelNumber:(id)number capabilities:(unint64_t)capabilities;
- (UARPSupportedAccessory)initWithHardwareID:(id)d capabilities:(unint64_t)capabilities;
- (UARPSupportedAccessory)initWithHardwareID:(id)d productGroup:(id)group productNumber:(id)number capabilities:(unint64_t)capabilities;
- (UARPSupportedAccessory)initWithIICDictionary:(id)dictionary;
- (UARPSupportedAccessory)initWithIPv4Dictionary:(id)dictionary;
- (UARPSupportedAccessory)initWithIPv6Dictionary:(id)dictionary;
- (UARPSupportedAccessory)initWithSerialDictionary:(id)dictionary;
- (UARPSupportedAccessory)initWithUSBDictionary:(id)dictionary;
- (UARPSupportedAccessory)initWithUSBPDDictionary:(id)dictionary;
- (id)description;
- (id)generatePlist;
- (id)hashIdentifier;
- (id)plistFilename;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)addAlternativeAppleModelNumber:(id)number;
- (void)addDownstreamAppleModelNumber:(id)number;
- (void)addSupplementalAssetName:(id)name;
- (void)setMobileAssetAppleModelNumber:(id)number;
- (void)setModelName:(id)name;
- (void)setProductCode:(id)code;
- (void)setSupplementalMobileAssetAppleModelNumber:(id)number;
- (void)setVendorName:(id)name;
@end

@implementation UARPSupportedAccessory

- (UARPSupportedAccessory)init
{
  v14.receiver = self;
  v14.super_class = UARPSupportedAccessory;
  v2 = [(UARPSupportedAccessory *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    bsdNotificationsInternal = v2->_bsdNotificationsInternal;
    v2->_bsdNotificationsInternal = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    serviceBsdNotificationsInternal = v2->_serviceBsdNotificationsInternal;
    v2->_serviceBsdNotificationsInternal = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    supplementalAssetsInternal = v2->_supplementalAssetsInternal;
    v2->_supplementalAssetsInternal = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    downstreamAppleModelNumbers = v2->_downstreamAppleModelNumbers;
    v2->_downstreamAppleModelNumbers = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
    alternativeAppleModelNumbers = v2->_alternativeAppleModelNumbers;
    v2->_alternativeAppleModelNumbers = v11;

    *&v2->_uploaderResponseTimeout = xmmword_247B3D4D0;
  }

  return v2;
}

- (UARPSupportedAccessory)initWithHardwareID:(id)d capabilities:(unint64_t)capabilities
{
  dCopy = d;
  v8 = [(UARPSupportedAccessory *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_hardwareID, d);
    v9->_capabilities = capabilities;
  }

  return v9;
}

- (UARPSupportedAccessory)initWithHardwareID:(id)d appleModelNumber:(id)number capabilities:(unint64_t)capabilities
{
  numberCopy = number;
  v10 = [(UARPSupportedAccessory *)self initWithHardwareID:d capabilities:capabilities];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_appleModelNumber, number);
  }

  return v11;
}

- (UARPSupportedAccessory)initWithHardwareID:(id)d productGroup:(id)group productNumber:(id)number capabilities:(unint64_t)capabilities
{
  groupCopy = group;
  numberCopy = number;
  v13 = [(UARPSupportedAccessory *)self initWithHardwareID:d capabilities:capabilities];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_productGroup, group);
    objc_storeStrong(&v14->_productNumber, number);
  }

  return v14;
}

- (UARPSupportedAccessory)initWithDictionary:(id)dictionary
{
  v94 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"Transport"];
  if ([v5 isEqualToString:@"Bluetooth"])
  {
    v6 = [(UARPSupportedAccessory *)self initWithBluetoothDictionary:dictionaryCopy];
  }

  else if ([v5 isEqualToString:@"HDS"])
  {
    v6 = [(UARPSupportedAccessory *)self initWithHDSDictionary:dictionaryCopy];
  }

  else if ([v5 isEqualToString:@"HID"])
  {
    v6 = [(UARPSupportedAccessory *)self initWithHIDDictionary:dictionaryCopy];
  }

  else if ([v5 isEqualToString:@"USB-PD"])
  {
    v6 = [(UARPSupportedAccessory *)self initWithUSBPDDictionary:dictionaryCopy];
  }

  else if ([v5 isEqualToString:@"IIC"])
  {
    v6 = [(UARPSupportedAccessory *)self initWithIICDictionary:dictionaryCopy];
  }

  else
  {
    if (![v5 isEqualToString:@"USB"])
    {

      v7 = 0;
      goto LABEL_50;
    }

    v6 = [(UARPSupportedAccessory *)self initWithUSBDictionary:dictionaryCopy];
  }

  v7 = v6;
  if (v6)
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:@"ModelName"];
    v9 = [v8 copy];
    modelName = v7->_modelName;
    v7->_modelName = v9;

    v11 = [dictionaryCopy objectForKeyedSubscript:@"SupportsPowerlog"];
    v7->_supportsPowerLogging = [v11 BOOLValue];

    v12 = [dictionaryCopy objectForKeyedSubscript:@"SupportsHeySiriCompact"];
    v7->_supportsHeySiriCompact = [v12 BOOLValue];

    v13 = [dictionaryCopy objectForKeyedSubscript:@"SupportsVoiceAssist"];
    v7->_supportsVoiceAssist = [v13 BOOLValue];

    v14 = [dictionaryCopy objectForKeyedSubscript:@"SupportsLogs"];
    v7->_supportsLogs = [v14 BOOLValue];

    v15 = [dictionaryCopy objectForKeyedSubscript:@"SupportsAnalytics"];
    v7->_supportsAnalytics = [v15 BOOLValue];

    v16 = [dictionaryCopy objectForKeyedSubscript:@"SupportsMappedAnalytics"];
    v7->_supportsMappedAnalytics = [v16 BOOLValue];

    v17 = [dictionaryCopy objectForKeyedSubscript:@"SupportsFriendlyName"];
    v7->_supportsFriendlyName = [v17 BOOLValue];

    v18 = [dictionaryCopy objectForKeyedSubscript:@"AutoAppliesStagedFirmware"];
    v7->_autoAppliesStagedFirmware = [v18 BOOLValue];

    v19 = [dictionaryCopy objectForKeyedSubscript:@"SupportsAccMode7"];
    v7->_supportsAccMode7 = [v19 BOOLValue];

    v20 = [dictionaryCopy objectForKeyedSubscript:@"ReofferFirmwareOnSync"];
    v7->_reofferFirmwareOnSync = [v20 BOOLValue];

    v21 = [dictionaryCopy objectForKeyedSubscript:@"SupportsInternalSettings"];
    v7->_supportsInternalSettings = [v21 BOOLValue];

    v22 = [dictionaryCopy objectForKeyedSubscript:@"SupportsDeveloperSettings"];
    v7->_supportsDeveloperSettings = [v22 BOOLValue];

    v23 = [dictionaryCopy objectForKeyedSubscript:@"SupportsVersions"];
    v7->_supportsVersions = [v23 BOOLValue];

    v24 = [dictionaryCopy objectForKeyedSubscript:@"AllowDownloadOnCellular"];
    v7->_allowDownloadOnCellular = [v24 BOOLValue];

    v25 = [dictionaryCopy objectForKeyedSubscript:@"TtrSolicitLogs"];
    v7->_ttrSolicitLogs = [v25 BOOLValue];

    v26 = [dictionaryCopy objectForKeyedSubscript:@"UpdateRequiresPowerAssertion"];
    v7->_updateRequiresPowerAssertion = [v26 BOOLValue];

    v27 = [dictionaryCopy objectForKeyedSubscript:@"IsSimulator"];
    v7->_isSimulator = [v27 BOOLValue];

    v28 = [dictionaryCopy objectForKeyedSubscript:@"DFUMode"];
    v7->_dfuMode = [v28 BOOLValue];

    v29 = [dictionaryCopy objectForKeyedSubscript:@"UploaderResponseTimeout"];
    v7->_uploaderResponseTimeout = [v29 unsignedIntValue];

    v30 = [dictionaryCopy objectForKeyedSubscript:@"UploaderRetryLimit"];
    v7->_uploaderRetryLimit = [v30 unsignedIntValue];

    v31 = [dictionaryCopy objectForKeyedSubscript:@"UpdaterName"];
    v32 = [v31 copy];
    updaterName = v7->_updaterName;
    v7->_updaterName = v32;

    v34 = [dictionaryCopy objectForKeyedSubscript:@"MobileAssetsModelNumber"];
    [(UARPSupportedAccessory *)v7 setMobileAssetAppleModelNumber:v34];

    v35 = [dictionaryCopy objectForKeyedSubscript:@"FusingOverrideUnfused"];
    v36 = [v35 copy];
    fusingOverrideUnfused = v7->_fusingOverrideUnfused;
    v7->_fusingOverrideUnfused = v36;

    v38 = [dictionaryCopy objectForKeyedSubscript:@"SupplementalAssetsModelNumber"];
    [(UARPSupportedAccessory *)v7 setSupplementalMobileAssetAppleModelNumber:v38];

    v39 = [dictionaryCopy objectForKeyedSubscript:@"SupplementalAssets"];
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v40 = [v39 countByEnumeratingWithState:&v85 objects:v93 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v86;
      do
      {
        v43 = 0;
        do
        {
          if (*v86 != v42)
          {
            objc_enumerationMutation(v39);
          }

          [(UARPSupportedAccessory *)v7 addSupplementalAssetName:*(*(&v85 + 1) + 8 * v43++)];
        }

        while (v41 != v43);
        v41 = [v39 countByEnumeratingWithState:&v85 objects:v93 count:16];
      }

      while (v41);
    }

    v44 = [dictionaryCopy objectForKeyedSubscript:@"DownstreamAppleModelNumbers"];
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v45 = [v44 countByEnumeratingWithState:&v81 objects:v92 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v82;
      do
      {
        v48 = 0;
        do
        {
          if (*v82 != v47)
          {
            objc_enumerationMutation(v44);
          }

          [(UARPSupportedAccessory *)v7 addDownstreamAppleModelNumber:*(*(&v81 + 1) + 8 * v48++)];
        }

        while (v46 != v48);
        v46 = [v44 countByEnumeratingWithState:&v81 objects:v92 count:16];
      }

      while (v46);
    }

    v68 = v5;
    v49 = [dictionaryCopy objectForKeyedSubscript:@"AlternativeAppleModelNumbers"];
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v50 = [v49 countByEnumeratingWithState:&v77 objects:v91 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v78;
      do
      {
        v53 = 0;
        do
        {
          if (*v78 != v52)
          {
            objc_enumerationMutation(v49);
          }

          [(UARPSupportedAccessory *)v7 addAlternativeAppleModelNumber:*(*(&v77 + 1) + 8 * v53++)];
        }

        while (v51 != v53);
        v51 = [v49 countByEnumeratingWithState:&v77 objects:v91 count:16];
      }

      while (v51);
    }

    v54 = [dictionaryCopy objectForKeyedSubscript:@"BSDNotifications"];
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v55 = [v54 countByEnumeratingWithState:&v73 objects:v90 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v74;
      do
      {
        v58 = 0;
        do
        {
          if (*v74 != v57)
          {
            objc_enumerationMutation(v54);
          }

          [(UARPSupportedAccessory *)v7 addBSDNotificationName:*(*(&v73 + 1) + 8 * v58++)];
        }

        while (v56 != v58);
        v56 = [v54 countByEnumeratingWithState:&v73 objects:v90 count:16];
      }

      while (v56);
    }

    v59 = [dictionaryCopy objectForKeyedSubscript:@"ServiceBSDNotifications"];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v60 = [v59 countByEnumeratingWithState:&v69 objects:v89 count:16];
    if (v60)
    {
      v61 = v60;
      v62 = *v70;
      do
      {
        v63 = 0;
        do
        {
          if (*v70 != v62)
          {
            objc_enumerationMutation(v59);
          }

          [(UARPSupportedAccessory *)v7 addServiceBSDNotificationName:*(*(&v69 + 1) + 8 * v63++)];
        }

        while (v61 != v63);
        v61 = [v59 countByEnumeratingWithState:&v69 objects:v89 count:16];
      }

      while (v61);
    }

    v64 = [dictionaryCopy objectForKeyedSubscript:@"PersonalizationNotification"];
    v65 = [v64 copy];
    personalizationNotification = v7->_personalizationNotification;
    v7->_personalizationNotification = v65;

    v5 = v68;
  }

LABEL_50:

  return v7;
}

- (UARPSupportedAccessory)initWithBluetoothDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"VendorID"];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"ProductID"];
  v7 = [dictionaryCopy objectForKeyedSubscript:@"BluetoothVendorIDSource"];
  v8 = [dictionaryCopy objectForKeyedSubscript:@"BluetoothProductVersion"];
  v9 = -[UARPAccessoryHardwareBluetooth initWithVendorIDSource:vendorID:productID:productVersion:]([UARPAccessoryHardwareBluetooth alloc], "initWithVendorIDSource:vendorID:productID:productVersion:", [v7 unsignedIntegerValue], objc_msgSend(v5, "unsignedIntegerValue"), objc_msgSend(v6, "unsignedIntegerValue"), objc_msgSend(v8, "unsignedIntegerValue"));
  v10 = [dictionaryCopy objectForKeyedSubscript:@"AppleModelNumber"];

  if (v10)
  {
    self = [(UARPSupportedAccessory *)self initWithHardwareID:v9 appleModelNumber:v10 capabilities:0];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (UARPSupportedAccessory)initWithHDSDictionary:(id)dictionary
{
  v4 = MEMORY[0x277CCAD78];
  dictionaryCopy = dictionary;
  v6 = [v4 alloc];
  v7 = [dictionaryCopy objectForKeyedSubscript:@"UUID"];
  v8 = [v6 initWithUUIDString:v7];

  v9 = [[UARPAccessoryHardwareHDS alloc] initWithUUID:v8];
  v10 = [dictionaryCopy objectForKeyedSubscript:@"AppleModelNumber"];

  if (v10)
  {
    self = [(UARPSupportedAccessory *)self initWithHardwareID:v9 appleModelNumber:v10 capabilities:0];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (UARPSupportedAccessory)initWithHIDDictionary:(id)dictionary
{
  v28 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  [dictionaryCopy objectForKeyedSubscript:@"Personalities"];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v26 = 0u;
  v3 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v24;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = [v8 objectForKeyedSubscript:@"VendorID"];
        v10 = [v8 objectForKeyedSubscript:@"ProductID"];
        if (v5)
        {
          v11 = -[UARPAccessoryHIDPersonality initWithVendorID:productID:]([UARPAccessoryHIDPersonality alloc], "initWithVendorID:productID:", [v9 unsignedIntegerValue], objc_msgSend(v10, "unsignedIntegerValue"));
          [(UARPAccessoryHardwareHID *)v5 addPersonality:v11];
        }

        else
        {
          v5 = -[UARPAccessoryHardwareHID initWithVendorID:productID:]([UARPAccessoryHardwareHID alloc], "initWithVendorID:productID:", [v9 unsignedIntegerValue], objc_msgSend(v10, "unsignedIntegerValue"));
        }
      }

      v4 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v12 = [dictionaryCopy objectForKeyedSubscript:@"AppleModelNumber"];
  if (v12)
  {
    v13 = [dictionaryCopy objectForKeyedSubscript:@"isPowerSource"];
    selfCopy = -[UARPSupportedAccessory initWithHardwareID:appleModelNumber:capabilities:](self, "initWithHardwareID:appleModelNumber:capabilities:", v5, v12, [v13 BOOLValue]);
    v15 = selfCopy;
  }

  else
  {
    v13 = [dictionaryCopy objectForKeyedSubscript:@"ProductGroup"];
    v16 = [dictionaryCopy objectForKeyedSubscript:@"ProductNumber"];
    v17 = v16;
    if (v13)
    {
      v18 = v16 == 0;
    }

    else
    {
      v18 = 1;
    }

    selfCopy = self;
    if (v18)
    {
      v15 = 0;
    }

    else
    {
      selfCopy = [(UARPSupportedAccessory *)self initWithHardwareID:v5 productGroup:v13 productNumber:v16 capabilities:0];
      v15 = selfCopy;
    }
  }

  return v15;
}

- (UARPSupportedAccessory)initWithUSBPDDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"VendorID"];
  v18 = [dictionaryCopy objectForKeyedSubscript:@"ProductID"];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"USB-PD Device Class"];
  if ([v6 isEqualToString:@"MagSafe Cable"])
  {
    v7 = 0;
  }

  else if ([v6 isEqualToString:@"Power Adapter"])
  {
    v7 = 1;
  }

  else
  {
    if (![v6 isEqualToString:@"USB-C to Lightning"])
    {
      selfCopy = 0;
      goto LABEL_18;
    }

    v7 = 2;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"USB-PD Location"];
  if ([v8 isEqualToString:@"SOP"])
  {
    v9 = 0;
LABEL_13:
    v10 = [dictionaryCopy objectForKeyedSubscript:@"SupportsAccMode7"];
    bOOLValue = [v10 BOOLValue];

    v12 = v5;
    v13 = -[UARPAccessoryHardwareUSBPD initWithVendorID:productID:usbpdClass:locationType:supportsAccMode7:]([UARPAccessoryHardwareUSBPD alloc], "initWithVendorID:productID:usbpdClass:locationType:supportsAccMode7:", [v5 unsignedIntegerValue], objc_msgSend(v18, "unsignedIntegerValue"), v7, v9, bOOLValue);
    v14 = [dictionaryCopy objectForKeyedSubscript:@"AppleModelNumber"];
    if (v14)
    {
      v15 = [dictionaryCopy objectForKeyedSubscript:@"isPowerSource"];
      self = -[UARPSupportedAccessory initWithHardwareID:appleModelNumber:capabilities:](self, "initWithHardwareID:appleModelNumber:capabilities:", v13, v14, [v15 BOOLValue]);

      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }

    v5 = v12;
    goto LABEL_17;
  }

  if ([v8 isEqualToString:@"SOP Prime"])
  {
    v9 = 1;
    goto LABEL_13;
  }

  if ([v8 isEqualToString:@"SOP Double Prime"])
  {
    v9 = 2;
    goto LABEL_13;
  }

  selfCopy = 0;
LABEL_17:

LABEL_18:
  return selfCopy;
}

- (UARPSupportedAccessory)initWithIICDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = objc_alloc_init(UARPAccessoryHardwareIIC);
  v6 = [dictionaryCopy objectForKeyedSubscript:@"AppleModelNumber"];

  if (v6)
  {
    self = [(UARPSupportedAccessory *)self initWithHardwareID:v5 appleModelNumber:v6 capabilities:0];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (UARPSupportedAccessory)initWithSerialDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = objc_alloc_init(UARPAccessoryHardwareSerial);
  v6 = [dictionaryCopy objectForKeyedSubscript:@"AppleModelNumber"];

  if (v6)
  {
    self = [(UARPSupportedAccessory *)self initWithHardwareID:v5 appleModelNumber:v6 capabilities:0];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (UARPSupportedAccessory)initWithIPv4Dictionary:(id)dictionary
{
  v4 = [dictionary objectForKeyedSubscript:@"AppleModelNumber"];
  if (v4)
  {
    v5 = [[UARPAccessoryHardwareIPv4 alloc] initWithAppleModelNumber:v4];
    self = [(UARPSupportedAccessory *)self initWithHardwareID:v5 appleModelNumber:v4 capabilities:0];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (UARPSupportedAccessory)initWithIPv6Dictionary:(id)dictionary
{
  v4 = [dictionary objectForKeyedSubscript:@"AppleModelNumber"];
  if (v4)
  {
    v5 = [[UARPAccessoryHardwareIPv6 alloc] initWithAppleModelNumber:v4];
    self = [(UARPSupportedAccessory *)self initWithHardwareID:v5 appleModelNumber:v4 capabilities:0];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (UARPSupportedAccessory)initWithUSBDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"VendorID"];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"ProductID"];
  v7 = -[UARPAccessoryHardwareUSB initWithVendorID:productID:]([UARPAccessoryHardwareUSB alloc], "initWithVendorID:productID:", [v5 unsignedIntegerValue], objc_msgSend(v6, "unsignedIntegerValue"));
  v8 = [dictionaryCopy objectForKeyedSubscript:@"AppleModelNumber"];

  if (v8)
  {
    self = [(UARPSupportedAccessory *)self initWithHardwareID:v7 appleModelNumber:v8 capabilities:0];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (NSString)identifier
{
  productGroup = self->_productGroup;
  if (productGroup && (productNumber = self->_productNumber) != 0)
  {
    productNumber = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", productGroup, productNumber];
  }

  else
  {
    appleModelNumber = self->_appleModelNumber;
    if (appleModelNumber)
    {
      productNumber = appleModelNumber;
    }

    else
    {
      productNumber = @"unknown";
    }
  }

  return productNumber;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = v3;
  if (self->_appleModelNumber)
  {
    [v3 appendFormat:@"Apple Model Number = %@", self->_appleModelNumber];
  }

  if (self->_productCode)
  {
    [v4 appendFormat:@", Product Code = %@", self->_productCode];
  }

  [v4 appendFormat:@", HardwareID = %@", self->_hardwareID];
  if (self->_mobileAssetAppleModelNumber)
  {
    [v4 appendFormat:@", Mobile Assets ModelNumber = %@", self->_mobileAssetAppleModelNumber];
  }

  if (self->_productGroup)
  {
    [v4 appendFormat:@", Product Group = %@", self->_productGroup];
  }

  if (self->_productNumber)
  {
    [v4 appendFormat:@", Product Number = %@", self->_productNumber];
  }

  if (self->_supportsHeySiriCompact)
  {
    [v4 appendFormat:@", Supports HSML = YES"];
  }

  if (self->_supportsAnalytics)
  {
    [v4 appendFormat:@", Supports TICS = YES"];
  }

  if (self->_supportsMappedAnalytics)
  {
    [v4 appendFormat:@", Supports MTIC = YES"];
  }

  if (self->_supportsFriendlyName)
  {
    [v4 appendFormat:@", Supports Friendly Name = YES"];
  }

  if ([(NSMutableSet *)self->_downstreamAppleModelNumbers count])
  {
    [v4 appendFormat:@", Downstream Apple Model Numbers = %@", self->_downstreamAppleModelNumbers];
  }

  if ([(NSMutableSet *)self->_alternativeAppleModelNumbers count])
  {
    [v4 appendFormat:@", Alternative Apple Model Numbers = %@", self->_alternativeAppleModelNumbers];
  }

  if (self->_mobileAssetAppleModelNumber)
  {
    [v4 appendFormat:@", Mobile Asset Apple Model Numbers = %@", self->_mobileAssetAppleModelNumber];
  }

  bsdNotifications = [(UARPSupportedAccessory *)self bsdNotifications];
  v6 = [bsdNotifications count];

  if (v6)
  {
    bsdNotifications2 = [(UARPSupportedAccessory *)self bsdNotifications];
    [v4 appendFormat:@", BSD Notifications = %@", bsdNotifications2];
  }

  serviceBsdNotifications = [(UARPSupportedAccessory *)self serviceBsdNotifications];
  v9 = [serviceBsdNotifications count];

  if (v9)
  {
    serviceBsdNotifications2 = [(UARPSupportedAccessory *)self serviceBsdNotifications];
    [v4 appendFormat:@", Service BSD Notifications = %@", serviceBsdNotifications2];
  }

  return v4;
}

- (id)hashIdentifier
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = kUARPSupportedAccessoryKeyTransportBluetooth;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = kUARPSupportedAccessoryKeyTransportB2PHID;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v3 = kUARPSupportedAccessoryKeyTransportHID;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v3 = kUARPSupportedAccessoryKeyTransportUSBPD;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v3 = kUARPSupportedAccessoryKeyTransportUSB;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v3 = kUARPSupportedAccessoryKeyTransportHDS;
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v3 = kUARPSupportedAccessoryKeyTransportIIC;
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v3 = kUARPSupportedAccessoryKeyTransportSerial;
                }

                else
                {
                  objc_opt_class();
                  v3 = kUARPSupportedAccessoryKeyTransportIP;
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      v3 = kUARPSupportedAccessoryKeyTransport;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v4 = *v3;
  v5 = MEMORY[0x277CCACA8];
  identifier = [(UARPSupportedAccessory *)self identifier];
  v7 = [v5 stringWithFormat:@"%@-%@", identifier, v4];

  return v7;
}

- (unint64_t)hash
{
  hashIdentifier = [(UARPSupportedAccessory *)self hashIdentifier];
  v3 = [hashIdentifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == equalCopy)
    {
      v8 = 1;
    }

    else
    {
      v5 = equalCopy;
      hashIdentifier = [(UARPSupportedAccessory *)self hashIdentifier];
      hashIdentifier2 = [(UARPSupportedAccessory *)v5 hashIdentifier];

      v8 = nullableObjectsEqual(hashIdentifier, hashIdentifier2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  identifier = [(UARPSupportedAccessory *)self identifier];
  identifier2 = [compareCopy identifier];

  v7 = [identifier compare:identifier2];
  return v7;
}

- (void)addSupplementalAssetName:(id)name
{
  v5 = self->_supplementalMobileAssetAppleModelNumber;
  if (!v5)
  {
    v5 = self->_appleModelNumber;
  }

  v7 = v5;
  name = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v5, name];
  [(NSMutableSet *)self->_supplementalAssetsInternal addObject:name];
}

- (void)addDownstreamAppleModelNumber:(id)number
{
  downstreamAppleModelNumbers = self->_downstreamAppleModelNumbers;
  v4 = [number copy];
  [(NSMutableSet *)downstreamAppleModelNumbers addObject:v4];
}

- (void)addAlternativeAppleModelNumber:(id)number
{
  alternativeAppleModelNumbers = self->_alternativeAppleModelNumbers;
  v4 = [number copy];
  [(NSMutableSet *)alternativeAppleModelNumbers addObject:v4];
}

- (NSString)mobileAssetAppleModelNumber
{
  mobileAssetAppleModelNumber = self->_mobileAssetAppleModelNumber;
  if (!mobileAssetAppleModelNumber)
  {
    mobileAssetAppleModelNumber = self->_appleModelNumber;
  }

  v3 = mobileAssetAppleModelNumber;

  return v3;
}

- (void)setMobileAssetAppleModelNumber:(id)number
{
  self->_mobileAssetAppleModelNumber = [number copy];

  MEMORY[0x2821F96F8]();
}

- (NSString)supplementalMobileAssetAppleModelNumber
{
  supplementalMobileAssetAppleModelNumber = self->_supplementalMobileAssetAppleModelNumber;
  if (!supplementalMobileAssetAppleModelNumber)
  {
    supplementalMobileAssetAppleModelNumber = self->_appleModelNumber;
  }

  v3 = supplementalMobileAssetAppleModelNumber;

  return v3;
}

- (void)setSupplementalMobileAssetAppleModelNumber:(id)number
{
  self->_supplementalMobileAssetAppleModelNumber = [number copy];

  MEMORY[0x2821F96F8]();
}

- (void)setModelName:(id)name
{
  self->_modelName = [name copy];

  MEMORY[0x2821F96F8]();
}

- (void)setVendorName:(id)name
{
  self->_vendorName = [name copy];

  MEMORY[0x2821F96F8]();
}

- (void)setProductCode:(id)code
{
  self->_productCode = [code copy];

  MEMORY[0x2821F96F8]();
}

- (id)generatePlist
{
  selfCopy = self;
  v63 = *MEMORY[0x277D85DE8];
  if (self->_productGroup)
  {
    v3 = self->_productNumber != 0;
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_opt_new();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = selfCopy->_hardwareID;
    [v4 setObject:@"Bluetooth" forKeyedSubscript:@"Transport"];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[UARPAccessoryHardwareID vendorID](v5, "vendorID")}];
    [v4 setObject:v6 forKeyedSubscript:@"VendorID"];

    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[UARPAccessoryHardwareID productID](v5, "productID")}];
    [v4 setObject:v7 forKeyedSubscript:@"ProductID"];

    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[UARPAccessoryHardwareID vendorIDSource](v5, "vendorIDSource")}];
    [v4 setObject:v8 forKeyedSubscript:@"BluetoothVendorIDSource"];

    uuid = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[UARPAccessoryHardwareID productVersion](v5, "productVersion")}];
    v10 = kUARPSupportedAccessoryKeyBluetoothProductVersion;
LABEL_9:
    [v4 setObject:uuid forKeyedSubscript:*v10];
LABEL_10:

LABEL_11:
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = selfCopy->_hardwareID;
    v11 = kUARPSupportedAccessoryKeyTransportB2PHID;
LABEL_8:
    [v4 setObject:*v11 forKeyedSubscript:@"Transport"];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[UARPAccessoryHardwareID vendorID](v5, "vendorID")}];
    [v4 setObject:v12 forKeyedSubscript:@"VendorID"];

    uuid = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[UARPAccessoryHardwareID productID](v5, "productID")}];
    v10 = kUARPSupportedAccessoryKeyProductID;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v54 = v3;
    v55 = selfCopy;
    v36 = selfCopy->_hardwareID;
    [v4 setObject:@"HID" forKeyedSubscript:@"Transport"];
    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[UARPAccessoryHardwareID vendorID](v36, "vendorID")}];
    [v4 setObject:v37 forKeyedSubscript:@"VendorID"];

    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[UARPAccessoryHardwareID productID](v36, "productID")}];
    v56 = v4;
    [v4 setObject:v38 forKeyedSubscript:@"ProductID"];

    v39 = objc_opt_new();
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v53 = v36;
    obj = [(UARPAccessoryHardwareID *)v36 personalities];
    v40 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v59;
      do
      {
        for (i = 0; i != v41; ++i)
        {
          if (*v59 != v42)
          {
            objc_enumerationMutation(obj);
          }

          v44 = *(*(&v58 + 1) + 8 * i);
          v45 = objc_opt_new();
          v46 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v44, "vendorID")}];
          [v45 setObject:v46 forKeyedSubscript:@"VendorID"];

          v47 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v44, "productID")}];
          [v45 setObject:v47 forKeyedSubscript:@"ProductID"];

          [v39 addObject:v45];
        }

        v41 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
      }

      while (v41);
    }

    v4 = v56;
    [v56 setObject:v39 forKeyedSubscript:@"Personalities"];

    selfCopy = v55;
    v3 = v54;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = selfCopy->_hardwareID;
      [v4 setObject:@"USB-PD" forKeyedSubscript:@"Transport"];
      v48 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[UARPAccessoryHardwareID vendorID](v5, "vendorID")}];
      [v4 setObject:v48 forKeyedSubscript:@"VendorID"];

      v49 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[UARPAccessoryHardwareID productID](v5, "productID")}];
      [v4 setObject:v49 forKeyedSubscript:@"ProductID"];

      if ([(UARPAccessoryHardwareID *)v5 supportsAccMode7])
      {
        [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"SupportsAccMode7"];
      }

      if ([(UARPAccessoryHardwareID *)v5 isMagSafeCable])
      {
        [v4 setObject:@"MagSafe Cable" forKeyedSubscript:@"USB-PD Device Class"];
      }

      if ([(UARPAccessoryHardwareID *)v5 isPowerAdapter])
      {
        [v4 setObject:@"Power Adapter" forKeyedSubscript:@"USB-PD Device Class"];
      }

      if ([(UARPAccessoryHardwareID *)v5 isUSBCLightning])
      {
        [v4 setObject:@"USB-C to Lightning" forKeyedSubscript:@"USB-PD Device Class"];
      }

      if ([(UARPAccessoryHardwareID *)v5 location])
      {
        if ([(UARPAccessoryHardwareID *)v5 location]== 1)
        {
          v50 = kUARPSupportedAccessoryKeyUSBPDLocationTypeSOPPrime;
        }

        else
        {
          if ([(UARPAccessoryHardwareID *)v5 location]!= 2)
          {
            goto LABEL_11;
          }

          v50 = kUARPSupportedAccessoryKeyUSBPDLocationTypeSOPDoublePrime;
        }
      }

      else
      {
        v50 = kUARPSupportedAccessoryKeyUSBPDLocationTypeSOP;
      }

      [v4 setObject:*v50 forKeyedSubscript:@"USB-PD Location"];
      goto LABEL_11;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = selfCopy->_hardwareID;
      v11 = kUARPSupportedAccessoryKeyTransportUSB;
      goto LABEL_8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = selfCopy->_hardwareID;
      [v4 setObject:@"HDS" forKeyedSubscript:@"Transport"];
      uuid = [(UARPAccessoryHardwareID *)v5 uuid];
      uUIDString = [uuid UUIDString];
      [v4 setObject:uUIDString forKeyedSubscript:@"UUID"];

      goto LABEL_10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v52 = kUARPSupportedAccessoryKeyTransportIIC;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        v5 = selfCopy->_hardwareID;
        [v4 setObject:@"IP" forKeyedSubscript:@"Transport"];
        uuid = [(UARPAccessoryHardwareID *)v5 appleModelNumber];
        v10 = kUARPSupportedAccessoryKeyAppleModelNumber;
        goto LABEL_9;
      }

      v52 = kUARPSupportedAccessoryKeyTransportSerial;
    }

    [v4 setObject:*v52 forKeyedSubscript:@"Transport"];
  }

LABEL_12:
  if (v3)
  {
    [v4 setObject:selfCopy->_productGroup forKeyedSubscript:@"ProductGroup"];
    v13 = kUARPSupportedAccessoryKeyProductNumber;
    v14 = 128;
  }

  else
  {
    v13 = kUARPSupportedAccessoryKeyAppleModelNumber;
    v14 = 112;
  }

  [v4 setObject:*(&selfCopy->super.isa + v14) forKeyedSubscript:*v13];
  modelName = selfCopy->_modelName;
  if (modelName)
  {
    [v4 setObject:modelName forKeyedSubscript:@"ModelName"];
  }

  vendorName = selfCopy->_vendorName;
  if (!vendorName)
  {
    vendorName = @"Apple Inc.";
  }

  [v4 setObject:vendorName forKeyedSubscript:@"VendorName"];
  if (selfCopy->_capabilities)
  {
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"isPowerSource"];
  }

  if (selfCopy->_supportsPowerLogging)
  {
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"SupportsPowerlog"];
  }

  if (selfCopy->_supportsHeySiriCompact)
  {
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"SupportsHeySiriCompact"];
  }

  if (selfCopy->_supportsVoiceAssist)
  {
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"SupportsVoiceAssist"];
    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v17 addObject:@"VoiceAssist"];
    [v4 setObject:v17 forKeyedSubscript:@"SupplementalAssets"];

    supportsVoiceAssist = selfCopy->_supportsVoiceAssist;
  }

  else
  {
    supportsVoiceAssist = 0;
  }

  if (supportsVoiceAssist || selfCopy->_supportsHeySiriCompact)
  {
    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v19 addObject:@"com.apple.corespeech.voicetriggerassetchange"];
    [v4 setObject:v19 forKeyedSubscript:@"BSDNotifications"];
  }

  if (selfCopy->_reofferFirmwareOnSync)
  {
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"ReofferFirmwareOnSync"];
  }

  if (selfCopy->_supportsLogs)
  {
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"SupportsLogs"];
  }

  if (selfCopy->_supportsAnalytics)
  {
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"SupportsAnalytics"];
  }

  if (selfCopy->_supportsMappedAnalytics)
  {
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"SupportsMappedAnalytics"];
  }

  if (selfCopy->_supportsFriendlyName)
  {
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"SupportsFriendlyName"];
  }

  if (selfCopy->_supportsInternalSettings)
  {
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"SupportsInternalSettings"];
  }

  if (selfCopy->_supportsDeveloperSettings)
  {
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"SupportsDeveloperSettings"];
  }

  if (selfCopy->_supportsVersions)
  {
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"SupportsVersions"];
  }

  if (selfCopy->_allowDownloadOnCellular)
  {
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"AllowDownloadOnCellular"];
  }

  if (selfCopy->_isSimulator)
  {
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"IsSimulator"];
  }

  if (selfCopy->_dfuMode)
  {
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"DFUMode"];
  }

  if (selfCopy->_updateRequiresPowerAssertion)
  {
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"UpdateRequiresPowerAssertion"];
  }

  if (selfCopy->_autoAppliesStagedFirmware)
  {
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"AutoAppliesStagedFirmware"];
  }

  if (selfCopy->_ttrSolicitLogs)
  {
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"TtrSolicitLogs"];
  }

  fusingOverrideUnfused = selfCopy->_fusingOverrideUnfused;
  if (fusingOverrideUnfused)
  {
    [v4 setObject:fusingOverrideUnfused forKeyedSubscript:@"FusingOverrideUnfused"];
  }

  if (selfCopy->_uploaderResponseTimeout)
  {
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [v4 setObject:v21 forKeyedSubscript:@"UploaderResponseTimeout"];
  }

  if (selfCopy->_uploaderRetryLimit)
  {
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [v4 setObject:v22 forKeyedSubscript:@"UploaderRetryLimit"];
  }

  mobileAssetAppleModelNumber = selfCopy->_mobileAssetAppleModelNumber;
  if (mobileAssetAppleModelNumber)
  {
    if ([(NSString *)mobileAssetAppleModelNumber caseInsensitiveCompare:selfCopy->_appleModelNumber]&& !v3)
    {
      [v4 setObject:selfCopy->_mobileAssetAppleModelNumber forKeyedSubscript:@"MobileAssetsModelNumber"];
    }
  }

  supplementalMobileAssetAppleModelNumber = selfCopy->_supplementalMobileAssetAppleModelNumber;
  if (supplementalMobileAssetAppleModelNumber)
  {
    [v4 setObject:supplementalMobileAssetAppleModelNumber forKeyedSubscript:@"SupplementalAssetsModelNumber"];
  }

  if ([(NSMutableSet *)selfCopy->_downstreamAppleModelNumbers count])
  {
    allObjects = [(NSMutableSet *)selfCopy->_downstreamAppleModelNumbers allObjects];
    [v4 setObject:allObjects forKeyedSubscript:@"DownstreamAppleModelNumbers"];
  }

  if ([(NSMutableSet *)selfCopy->_alternativeAppleModelNumbers count])
  {
    allObjects2 = [(NSMutableSet *)selfCopy->_alternativeAppleModelNumbers allObjects];
    [v4 setObject:allObjects2 forKeyedSubscript:@"AlternativeAppleModelNumbers"];
  }

  if ([(NSMutableSet *)selfCopy->_bsdNotificationsInternal count])
  {
    allObjects3 = [(NSMutableSet *)selfCopy->_bsdNotificationsInternal allObjects];
    [v4 setObject:allObjects3 forKeyedSubscript:@"BSDNotifications"];
  }

  if ([(NSMutableSet *)selfCopy->_serviceBsdNotificationsInternal count])
  {
    allObjects4 = [(NSMutableSet *)selfCopy->_serviceBsdNotificationsInternal allObjects];
    [v4 setObject:allObjects4 forKeyedSubscript:@"ServiceBSDNotifications"];
  }

  updaterName = selfCopy->_updaterName;
  if (updaterName)
  {
    [v4 setObject:updaterName forKeyedSubscript:@"UpdaterName"];
  }

  personalizationNotification = selfCopy->_personalizationNotification;
  if (personalizationNotification)
  {
    [v4 setObject:personalizationNotification forKeyedSubscript:@"PersonalizationNotification"];
  }

  v32 = objc_opt_new();
  identifier = [(UARPSupportedAccessory *)selfCopy identifier];
  [v32 setObject:v4 forKeyedSubscript:identifier];

  v34 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v32];

  return v34;
}

- (id)plistFilename
{
  v2 = MEMORY[0x277CCACA8];
  hashIdentifier = [(UARPSupportedAccessory *)self hashIdentifier];
  v4 = [v2 stringWithFormat:@"%@.plist", hashIdentifier];

  return v4;
}

+ (id)supportedAccessories
{
  v2 = MEMORY[0x277CBEB98];
  v3 = +[UARPSupportedAccessoryManager defaultManager];
  setOfAccessories = [v3 setOfAccessories];
  v5 = [v2 setWithSet:setOfAccessories];

  return v5;
}

+ (id)supportedAccessoriesByTransport:(int64_t)transport
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = +[UARPSupportedAccessory supportedAccessories];
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        hardwareID = [v11 hardwareID];
        transport = [hardwareID transport];

        if (transport == transport)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [MEMORY[0x277CBEB98] setWithSet:v5];

  return v14;
}

+ (id)findByHardwareID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  +[UARPSupportedAccessory supportedAccessories];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        hardwareID = [v8 hardwareID];
        v10 = [hardwareID isEqual:dCopy];

        if (v10)
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

+ (id)findByAppleModelNumber:(id)number
{
  v29 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  +[UARPSupportedAccessory supportedAccessories];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = v26 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [identifier isEqualToString:numberCopy];

        if (v11)
        {
          v17 = v9;
          goto LABEL_20;
        }

        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        alternativeAppleModelNumbers = [v9 alternativeAppleModelNumbers];
        v13 = [alternativeAppleModelNumbers countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v20;
          while (2)
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v20 != v15)
              {
                objc_enumerationMutation(alternativeAppleModelNumbers);
              }

              if ([*(*(&v19 + 1) + 8 * j) isEqualToString:numberCopy])
              {
                v17 = v9;

                goto LABEL_20;
              }
            }

            v14 = [alternativeAppleModelNumbers countByEnumeratingWithState:&v19 objects:v27 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
      v17 = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v17 = 0;
  }

LABEL_20:

  return v17;
}

+ (id)findByMobileAssetAppleModelNumber:(id)number
{
  v23 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  v4 = +[UARPSupportedAccessory supportedAccessories];
  v5 = [MEMORY[0x277CBEB58] set];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        mobileAssetAppleModelNumber = [v11 mobileAssetAppleModelNumber];
        v13 = [mobileAssetAppleModelNumber isEqualToString:numberCopy];

        if ((v13 & 1) == 0)
        {
          identifier = [v11 identifier];
          v15 = [identifier isEqualToString:numberCopy];

          if (!v15)
          {
            continue;
          }
        }

        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v16 = [MEMORY[0x277CBEB98] setWithSet:v5];

  return v16;
}

@end