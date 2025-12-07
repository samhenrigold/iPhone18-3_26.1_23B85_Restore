@interface SystemProperties
+ (id)sharedInstance;
+ (int)systemPropertiesDeviceClassFromMGQDeviceClass:(int)class;
- (BOOL)carrierBuild;
- (BOOL)carrierSeedBuild;
- (BOOL)customerBuild;
- (BOOL)customerSeedBuild;
- (BOOL)npiDevice;
- (BOOL)seedBuild;
- (BOOL)vendorBuild;
- (NSString)basebandFirmwareVersion;
- (NSString)buildVariant;
- (NSString)deviceClassString;
- (NSString)serialNumber;
- (SystemProperties)init;
- (id)description;
- (void)buildVariant;
- (void)setCarrierSeedBuildOverride:(id)override;
- (void)setInternalBuildDisabledByOverride:(BOOL)override;
- (void)setNpiDeviceOverride:(id)override;
- (void)setSeedBuildOverride:(id)override;
@end

@implementation SystemProperties

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__SystemProperties_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_instancePred != -1)
  {
    dispatch_once(&sharedInstance_instancePred, block);
  }

  v2 = sharedInstance;

  return v2;
}

uint64_t __34__SystemProperties_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance;
  sharedInstance = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (int)systemPropertiesDeviceClassFromMGQDeviceClass:(int)class
{
  if ((class - 1) > 0xB)
  {
    return -1;
  }

  else
  {
    return dword_24188AC68[class - 1];
  }
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  productName = self->_productName;
  v35 = v3;
  deviceClassString = [(SystemProperties *)self deviceClassString];
  productVersion = self->_productVersion;
  productType = self->_productType;
  buildPlatform = self->_buildPlatform;
  buildVersion = self->_buildVersion;
  buildVariant = [(SystemProperties *)self buildVariant];
  if (self->_basebandCapability)
  {
    v6 = "yes";
  }

  else
  {
    v6 = "no";
  }

  if (self->_dualSIMCapable)
  {
    v7 = "yes";
  }

  else
  {
    v7 = "no";
  }

  v27 = v7;
  v28 = v6;
  if (self->_dualSIMEnabled)
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  v26 = v8;
  v29 = [(NSString *)self->_basebandChipset length];
  if (v29)
  {
    v9 = objc_alloc(MEMORY[0x277CCACA8]);
    basebandChipset = self->_basebandChipset;
    v11 = objc_alloc(MEMORY[0x277CCACA8]);
    if ([(NSString *)self->_basebandFirmwareVersion length])
    {
      basebandFirmwareVersion = self->_basebandFirmwareVersion;
    }

    else
    {
      basebandFirmwareVersion = @"Unknown FW Version";
    }

    basebandFirmwareVersion = [v11 initWithFormat:@"(%@)", basebandFirmwareVersion];
    v25 = [v9 initWithFormat:@"%@ %@", basebandChipset, basebandFirmwareVersion];
  }

  else
  {
    v25 = @"No baseband";
  }

  v36 = buildVariant;
  v37 = deviceClassString;
  if ([(NSString *)self->_wifiChipset length])
  {
    wifiChipset = self->_wifiChipset;
  }

  else
  {
    wifiChipset = @"unavailable";
  }

  if ([(SystemProperties *)self internalBuild])
  {
    v14 = "yes";
  }

  else
  {
    v14 = "no";
  }

  if (self->_factoryBuild)
  {
    v15 = "yes";
  }

  else
  {
    v15 = "no";
  }

  if ([(SystemProperties *)self vendorBuild])
  {
    v16 = "yes";
  }

  else
  {
    v16 = "no";
  }

  if ([(SystemProperties *)self carrierBuild])
  {
    v17 = "yes";
  }

  else
  {
    v17 = "no";
  }

  if ([(SystemProperties *)self seedBuild])
  {
    v18 = "yes";
  }

  else
  {
    v18 = "no";
  }

  if ([(SystemProperties *)self carrierSeedBuild])
  {
    v19 = "yes";
  }

  else
  {
    v19 = "no";
  }

  if ([(SystemProperties *)self customerSeedBuild])
  {
    v20 = "yes";
  }

  else
  {
    v20 = "no";
  }

  serialNumber = self->_serialNumber;
  if (!serialNumber)
  {
    serialNumber = @"redacted";
  }

  serialNumber = [v35 initWithFormat:@"ProductName = %@, ProductClass = %@, ProductType = %@, ProductVersion = %@, BuildVersion = %@, BuildPlatform = %@, BuildVariant = %@, basebandCapability = %s, dualSIMCapable = %s, dualSIMEnabled = %s, Baseband Chipset = %@, WiFi Chipset = %@, InternalBuild = %s, FactoryBuild = %s, VendorBuild = %s, CarrierBuild = %s, SeedBuild = %s, CarrierSeedBuild = %s, CustomerSeedBuild = %s, DeviceSerialNumber = %@", productName, v37, productType, productVersion, buildVersion, buildPlatform, v36, v28, v27, v26, v25, wifiChipset, v14, v15, v16, v17, v18, v19, v20, serialNumber];
  if (v29)
  {
  }

  return serialNumber;
}

- (SystemProperties)init
{
  v55 = *MEMORY[0x277D85DE8];
  v52.receiver = self;
  v52.super_class = SystemProperties;
  v2 = [(SystemProperties *)&v52 init];
  v3 = v2;
  if (!v2)
  {
    return v3;
  }

  v2->_deviceClass = -1;
  productType = v2->_productType;
  v2->_productType = @"Unknown Product Type";

  productName = v3->_productName;
  v3->_productName = @"Unknown Product Name";

  productVersion = v3->_productVersion;
  v3->_productVersion = @"Unknown Product Version";

  buildVersion = v3->_buildVersion;
  v3->_buildVersion = @"Unknown Build Version";

  basebandChipset = v3->_basebandChipset;
  v3->_basebandChipset = &stru_285368168;

  basebandFirmwareVersion = v3->_basebandFirmwareVersion;
  v3->_basebandFirmwareVersion = &stru_285368168;

  wifiChipset = v3->_wifiChipset;
  v3->_wifiChipset = &stru_285368168;

  buildPlatform = v3->_buildPlatform;
  v3->_buildPlatform = @"iOS";

  v12 = _CFCopySystemVersionDictionary();
  if (v12)
  {
    v13 = v12;
    Value = CFDictionaryGetValue(v12, *MEMORY[0x277CBEC78]);
    if (Value && (v15 = Value, CFStringGetLength(Value) >= 1))
    {
      v16 = v15;
    }

    else
    {
      v16 = MGGetStringAnswer();
    }

    v17 = v3->_productName;
    v3->_productName = &v16->isa;

    v18 = CFDictionaryGetValue(v13, *MEMORY[0x277CBEC88]);
    if (v18 && (v19 = v18, CFStringGetLength(v18) >= 1))
    {
      v20 = v19;
    }

    else
    {
      v20 = MGGetStringAnswer();
    }

    v21 = v3->_productVersion;
    v3->_productVersion = &v20->isa;

    v22 = CFDictionaryGetValue(v13, *MEMORY[0x277CBEC70]);
    if (v22 && (v23 = v22, CFStringGetLength(v22) >= 1))
    {
      v24 = v23;
    }

    else
    {
      v24 = MGGetStringAnswer();
    }

    v25 = v3->_buildVersion;
    v3->_buildVersion = &v24->isa;

    CFRelease(v13);
  }

  else
  {
    v26 = MGGetStringAnswer();
    v27 = v3->_productName;
    v3->_productName = v26;

    v28 = MGGetStringAnswer();
    v29 = v3->_productVersion;
    v3->_productVersion = v28;

    v30 = MGGetStringAnswer();
    v31 = v3->_buildVersion;
    v3->_buildVersion = v30;
  }

  v3->_seedBuild = 0;
  v3->_internalBuild = os_variant_has_internal_diagnostics();
  v3->_factoryBuild = os_variant_has_factory_content();
  v3->_carrierBuild = 0;
  v3->_npiDevice = 0;
  v32 = MobileGestalt_get_current_device();
  v33 = MobileGestalt_copy_productTypeDescForPowerPerf_obj();

  if (!v33)
  {
    v35 = symptomsLogHandle(v34);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v35, OS_LOG_TYPE_INFO, "Unable to get sub product type, falling back to product type", buf, 2u);
    }

    v36 = MGGetStringAnswer();
    if (!v36)
    {
      v38 = symptomsLogHandle(0);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v38, OS_LOG_TYPE_ERROR, "Unable to determine product type!", buf, 2u);
      }

      v37 = 0;
      goto LABEL_23;
    }

    v33 = v36;
  }

  v37 = v33;
  v38 = v3->_productType;
  v3->_productType = v37;
LABEL_23:

  v39 = MGGetStringAnswer();
  if (v39)
  {
    v3->_vendorBuild = CFStringCompare(v39, @"Vendor", 0) == kCFCompareEqualTo;
  }

  if (v3->_internalBuild || v3->_vendorBuild)
  {
    v40 = MGGetStringAnswer();
    if (v40)
    {
      serialNumber = v3->_serialNumber;
      v3->_serialNumber = v40;
    }

    else
    {
      serialNumber = symptomsLogHandle(0);
      if (os_log_type_enabled(serialNumber, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, serialNumber, OS_LOG_TYPE_INFO, "Failed to get serial number", buf, 2u);
      }
    }
  }

  v3->_deviceClass = [SystemProperties systemPropertiesDeviceClassFromMGQDeviceClass:MGGetSInt32Answer()];
  if (MGGetBoolAnswer())
  {
    v42 = !v3->_internalBuild;
  }

  else
  {
    v42 = 0;
  }

  v3->_carrierBuild = v42;
  v3->_basebandCapability = MGGetBoolAnswer();
  *&v3->_dualSIMCapable = 0;
  v43 = MGGetStringAnswer();
  if (v43)
  {
    v44 = v3->_basebandChipset;
    v3->_basebandChipset = v43;
  }

  else
  {
    v44 = symptomsLogHandle(0);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v44, OS_LOG_TYPE_INFO, "No baseband chipset", buf, 2u);
    }
  }

  v45 = MGGetStringAnswer();
  if (v45)
  {
    v46 = v3->_basebandFirmwareVersion;
    v3->_basebandFirmwareVersion = v45;
  }

  else
  {
    v46 = symptomsLogHandle(0);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v46, OS_LOG_TYPE_INFO, "No baseband firmware version", buf, 2u);
    }
  }

  v47 = MGGetStringAnswer();
  if (v47)
  {
    v48 = v3->_wifiChipset;
    v3->_wifiChipset = v47;
  }

  else
  {
    v48 = symptomsLogHandle(0);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v48, OS_LOG_TYPE_INFO, "No WiFi chipset", buf, 2u);
    }
  }

  v50 = symptomsLogHandle(v49);
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v54 = v3;
    _os_log_impl(&dword_241804000, v50, OS_LOG_TYPE_DEFAULT, "System Properties: %{private}@", buf, 0xCu);
  }

  return v3;
}

- (NSString)deviceClassString
{
  deviceClass = self->_deviceClass;
  if (deviceClass > 9)
  {
    return @"Unknown";
  }

  else
  {
    return &off_278CF0988[deviceClass]->isa;
  }
}

- (BOOL)seedBuild
{
  seedBuildOverride = self->_seedBuildOverride;
  if (seedBuildOverride)
  {
    LOBYTE(v4) = [(NSNumber *)seedBuildOverride BOOLValue];
  }

  else
  {
    return self->_seedBuild;
  }

  return v4;
}

- (BOOL)customerSeedBuild
{
  seedBuild = [(SystemProperties *)self seedBuild];
  if (seedBuild)
  {

    LOBYTE(seedBuild) = [(SystemProperties *)self customerBuild];
  }

  return seedBuild;
}

- (BOOL)carrierBuild
{
  carrierSeedBuildOverride = self->_carrierSeedBuildOverride;
  if (carrierSeedBuildOverride)
  {
    LOBYTE(v4) = [(NSNumber *)carrierSeedBuildOverride BOOLValue];
  }

  else
  {
    return self->_carrierBuild;
  }

  return v4;
}

- (BOOL)carrierSeedBuild
{
  if (self->_carrierSeedBuildOverride)
  {
    return [(NSNumber *)self->_carrierSeedBuildOverride BOOLValue];
  }

  if (self->_carrierBuild)
  {
    return [(SystemProperties *)self seedBuild];
  }

  return 0;
}

- (BOOL)vendorBuild
{
  vendorBuildOverride = self->_vendorBuildOverride;
  if (vendorBuildOverride)
  {
    LOBYTE(v4) = [(NSNumber *)vendorBuildOverride BOOLValue];
  }

  else
  {
    return self->_vendorBuild;
  }

  return v4;
}

- (BOOL)customerBuild
{
  if ([(SystemProperties *)self internalBuild]|| [(SystemProperties *)self carrierBuild])
  {
    return 0;
  }

  else
  {
    return ![(SystemProperties *)self vendorBuild];
  }
}

- (BOOL)npiDevice
{
  npiDeviceOverride = self->_npiDeviceOverride;
  if (npiDeviceOverride)
  {
    LOBYTE(v4) = [(NSNumber *)npiDeviceOverride BOOLValue];
  }

  else
  {
    return self->_npiDevice;
  }

  return v4;
}

- (void)setInternalBuildDisabledByOverride:(BOOL)override
{
  if (self->_internalBuildDisabledByOverride != override)
  {
    self->_internalBuildDisabledByOverride = override;
    buildVariant = self->_buildVariant;
    self->_buildVariant = 0;
    MEMORY[0x2821F96F8](self, buildVariant);
  }
}

- (void)setCarrierSeedBuildOverride:(id)override
{
  overrideCopy = override;
  p_carrierSeedBuildOverride = &self->_carrierSeedBuildOverride;
  if (self->_carrierSeedBuildOverride != overrideCopy)
  {
    v8 = overrideCopy;
    objc_storeStrong(p_carrierSeedBuildOverride, override);
    self->_internalBuildDisabledByOverride = [(NSNumber *)self->_carrierSeedBuildOverride BOOLValue];
    buildVariant = self->_buildVariant;
    self->_buildVariant = 0;

    overrideCopy = v8;
  }

  MEMORY[0x2821F96F8](p_carrierSeedBuildOverride, overrideCopy);
}

- (void)setSeedBuildOverride:(id)override
{
  overrideCopy = override;
  p_seedBuildOverride = &self->_seedBuildOverride;
  if (self->_seedBuildOverride != overrideCopy)
  {
    v8 = overrideCopy;
    objc_storeStrong(p_seedBuildOverride, override);
    buildVariant = self->_buildVariant;
    self->_buildVariant = 0;

    overrideCopy = v8;
  }

  MEMORY[0x2821F96F8](p_seedBuildOverride, overrideCopy);
}

- (void)setNpiDeviceOverride:(id)override
{
  overrideCopy = override;
  npiDeviceOverride = self->_npiDeviceOverride;
  p_npiDeviceOverride = &self->_npiDeviceOverride;
  if (npiDeviceOverride != overrideCopy)
  {
    v8 = overrideCopy;
    objc_storeStrong(p_npiDeviceOverride, override);
    overrideCopy = v8;
  }
}

- (NSString)basebandFirmwareVersion
{
  if (![(NSString *)self->_basebandFirmwareVersion length]&& self->_basebandChipset)
  {
    v3 = symptomsLogHandle(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v3, OS_LOG_TYPE_DEBUG, "Updating missing baseband firmware version", buf, 2u);
    }

    v4 = MGGetStringAnswer();
    if (v4)
    {
      basebandFirmwareVersion = self->_basebandFirmwareVersion;
      self->_basebandFirmwareVersion = v4;
    }

    else
    {
      basebandFirmwareVersion = symptomsLogHandle(0);
      if (os_log_type_enabled(basebandFirmwareVersion, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_241804000, basebandFirmwareVersion, OS_LOG_TYPE_INFO, "No baseband firmware version", v8, 2u);
      }
    }
  }

  v6 = self->_basebandFirmwareVersion;

  return v6;
}

- (NSString)buildVariant
{
  buildVariant = self->_buildVariant;
  if (!buildVariant)
  {
    v6[1] = v2;
    v7 = v3;
    [(SystemProperties *)self buildVariant];
    buildVariant = v6[0];
    v3 = v7;
  }

  return buildVariant;
}

- (NSString)serialNumber
{
  if ([(SystemProperties *)self internalBuild]|| [(SystemProperties *)self vendorBuild])
  {
    serialNumber = self->_serialNumber;
    if (!serialNumber)
    {
      serialNumber = @"Unknown";
    }

    v4 = serialNumber;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)buildVariant
{
  if ([self internalBuild])
  {
    v6 = *a2;
    *a2 = @"Internal";

    carrierBuild = [self carrierBuild];
    seedBuild = [self seedBuild];
    if (seedBuild)
    {
      v9 = @"Seed";
    }

    else
    {
      v9 = 0;
    }

    if (carrierBuild)
    {
      v10 = [*a2 stringByAppendingString:@"Carrier"];
      v11 = *a2;
      *a2 = v10;
    }

    if (seedBuild)
    {
      v12 = *a2;
      v13 = v9;
LABEL_16:
      v17 = [v12 stringByAppendingString:v13];
      v18 = *a2;
      *a2 = v17;
    }
  }

  else
  {
    if ([self carrierBuild])
    {
      v14 = @"Carrier";
    }

    else if ([self vendorBuild])
    {
      v14 = @"Vendor";
    }

    else
    {
      v14 = @"Customer";
    }

    seedBuild2 = [self seedBuild];
    v16 = *a2;
    *a2 = v14;

    if (seedBuild2)
    {
      v12 = *a2;
      v13 = @"Seed";
      goto LABEL_16;
    }
  }

  *a3 = *a2;
}

@end