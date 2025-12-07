@interface PSGAboutDataSource
- (BOOL)_isUsingBootstrap:(id)bootstrap;
- (BOOL)shouldShowSIMSpecifier:(id)specifier;
- (PSGAboutDataSource)init;
- (id)_ERIString:(id)string;
- (id)_ICCIDString:(id)string;
- (id)_IMSStatusString:(id)string;
- (id)_MINString:(id)string;
- (id)_NAIString:(id)string;
- (id)_PRLString:(id)string;
- (id)_bluetoothMACAddress;
- (id)_carrierVersion:(id)version;
- (id)_macAddress;
- (id)_macAddressLocalizedString;
- (id)_macAddressSpecifierKey;
- (id)_modelNameString;
- (id)_modelRegionString;
- (id)_myNumber;
- (id)_productBuildVersionString;
- (id)_productVersionStringFallback;
- (id)_regulatoryModelNumberString;
- (id)aboutController;
- (id)countForKey:(id)key;
- (id)getAPFSCurrentUserVolumeNode;
- (id)getCarrierSpecifierForSlot:(id)slot;
- (id)softwareVersionString;
- (id)specifiersForSpecifier:(id)specifier observer:(id)observer;
- (id)suManagerClient;
- (void)_accessoryDidUpdate:(id)update;
- (void)_addKey:(id)key localizedString:(id)string isCopyable:(BOOL)copyable;
- (void)_addKey:(id)key localizedString:(id)string value:(id)value isCopyable:(BOOL)copyable;
- (void)_addLocalizedKey:(id)key identifier:(id)identifier isCopyable:(BOOL)copyable allowMultilineTitle:(BOOL)title;
- (void)_getBootStrapIccid;
- (void)_loadMediaFinished:(id)finished;
- (void)_loadValues;
- (void)_setValue:(id)value forPropertyKey:(id)key forSpecifierWithKey:(id)withKey;
- (void)_setValue:(id)value forSpecifier:(id)specifier;
- (void)_setValue:(id)value forSpecifierWithKey:(id)key;
- (void)cancelAbout;
- (void)carrierBundleChange:(id)change;
- (void)cleanupMLReloadTimer;
- (void)dealloc;
- (void)enableMLUpdates:(BOOL)updates;
- (void)forceReloadMediaStats:(id)stats;
- (void)loadSpecifiers;
- (void)mediaLibraryDidChange:(id)change;
- (void)prlVersionChanged:(id)changed;
- (void)prlVersionChangedForSlot:(id)slot;
- (void)reloadSpecifiers;
- (void)setDeviceName:(id)name specifier:(id)specifier;
- (void)simStatusChangedToReady;
- (void)updateCarrierSpecifier:(id)specifier;
- (void)updateProductModelSpecifier:(id)specifier;
@end

@implementation PSGAboutDataSource

- (void)_addKey:(id)key localizedString:(id)string isCopyable:(BOOL)copyable
{
  copyableCopy = copyable;
  v8 = MEMORY[0x277D3FAD8];
  keyCopy = key;
  v11 = [v8 preferenceSpecifierNamed:string target:self set:0 get:sel_valueForSpecifier_ detail:0 cell:4 edit:0];
  [v11 setProperty:keyCopy forKey:*MEMORY[0x277D3FFB8]];

  if (copyableCopy)
  {
    [v11 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FED8]];
  }

  specifiers = [(PSSpecifierDataSource *)self specifiers];
  [specifiers addObject:v11];
}

- (void)_addLocalizedKey:(id)key identifier:(id)identifier isCopyable:(BOOL)copyable allowMultilineTitle:(BOOL)title
{
  titleCopy = title;
  copyableCopy = copyable;
  keyCopy = key;
  identifierCopy = identifier;
  v11 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:keyCopy target:self set:0 get:sel_valueForSpecifier_ detail:0 cell:4 edit:0];
  v12 = identifierCopy;
  if (identifierCopy || (v12 = keyCopy) != 0)
  {
    [v11 setProperty:v12 forKey:*MEMORY[0x277D3FFB8]];
  }

  if (copyableCopy)
  {
    [v11 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FED8]];
  }

  if (titleCopy)
  {
    [v11 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
  }

  specifiers = [(PSSpecifierDataSource *)self specifiers];
  [specifiers addObject:v11];
}

- (void)_addKey:(id)key localizedString:(id)string value:(id)value isCopyable:(BOOL)copyable
{
  copyableCopy = copyable;
  valueCopy = value;
  [(PSGAboutDataSource *)self _addKey:key localizedString:string isCopyable:copyableCopy];
  specifiers = [(PSSpecifierDataSource *)self specifiers];
  lastObject = [specifiers lastObject];
  [(PSGAboutDataSource *)self _setValue:valueCopy forSpecifier:lastObject];
}

- (void)_setValue:(id)value forSpecifierWithKey:(id)key
{
  valueCopy = value;
  v7 = [(PSSpecifierDataSource *)self specifierForID:key];
  [(PSGAboutDataSource *)self _setValue:valueCopy forSpecifier:v7];
}

- (void)_setValue:(id)value forSpecifier:(id)specifier
{
  if (value)
  {
    v5 = *MEMORY[0x277D401A8];
    specifierCopy = specifier;
    [specifierCopy setProperty:value forKey:v5];
  }

  else
  {
    specifierCopy2 = specifier;
    specifierCopy = PSG_BundleForGeneralSettingsUIFramework(specifierCopy2);
    v7 = [specifierCopy localizedStringForKey:@"N/A" value:&stru_282E88A90 table:0];
    [specifierCopy2 setProperty:v7 forKey:*MEMORY[0x277D401A8]];
  }
}

- (void)_setValue:(id)value forPropertyKey:(id)key forSpecifierWithKey:(id)withKey
{
  keyCopy = key;
  valueCopy = value;
  v10 = [(PSSpecifierDataSource *)self specifierForID:withKey];
  [v10 setProperty:valueCopy forKey:keyCopy];
}

- (id)_myNumber
{
  active = CPPhoneNumberCopyActiveCountryCode();
  v3 = CTSettingCopyEffectiveSimInfo();
  if (v3)
  {
    v4 = v3;
    if (CFDictionaryGetValue(v3, *MEMORY[0x277CC41F0]))
    {
      v5 = active == 0;
    }

    else
    {
      v5 = 1;
    }

    if (v5 || (v6 = CFPhoneNumberCreate()) == 0)
    {
      String = &stru_282E88A90;
    }

    else
    {
      v7 = v6;
      String = CFPhoneNumberCreateString();
      CFRelease(v7);
    }

    CFRelease(v4);
    if (active)
    {
      goto LABEL_10;
    }
  }

  else
  {
    String = &stru_282E88A90;
    if (active)
    {
LABEL_10:
      CFRelease(active);
    }
  }

  if (![(__CFString *)String length])
  {
    v9 = PSG_BundleForGeneralSettingsUIFramework(0);
    v10 = [v9 localizedStringForKey:@"UNKNOWN_NUMBER" value:&stru_282E88A90 table:0];

    String = v10;
  }

  return String;
}

- (id)_bluetoothMACAddress
{
  mainPort = 0;
  if (!IOMasterPort(0, &mainPort) && (v4 = IOServiceNameMatching("bluetooth")) != 0 && (MatchingService = IOServiceGetMatchingService(mainPort, v4)) != 0)
  {
    v6 = MatchingService;
    v7 = IORegistryEntrySearchCFProperty(MatchingService, "IODeviceTree", @"local-mac-address", *MEMORY[0x277CBECE8], 1u);
    if (v7)
    {
      v15 = v7;
      PSGGreenTeaBluetoothHardwareAddressLog(@"Reading MAC Address from Bluetooth", v8, v9, v10, v11, v12, v13, v14, v16);
      v20.location = 0;
      v20.length = 6;
      CFDataGetBytes(v15, v20, buffer);
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", buffer[0], buffer[1], buffer[2], buffer[3], buffer[4], buffer[5]];
      CFRelease(v15);
    }

    else
    {
      v2 = 0;
    }

    IOObjectRelease(v6);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_macAddressSpecifierKey
{
  if (MGGetBoolAnswer())
  {
    v2 = @"MACAddress_WLAN";
  }

  else
  {
    v2 = @"MACAddress";
  }

  return v2;
}

- (id)_macAddressLocalizedString
{
  v2 = MGGetBoolAnswer();
  v3 = v2;
  v4 = PSG_BundleForGeneralSettingsUIFramework(v2);
  v5 = v4;
  if (v3)
  {
    v6 = @"MACAddress_WLAN";
  }

  else
  {
    v6 = @"MACAddress";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_282E88A90 table:0];

  return v7;
}

- (id)_macAddress
{
  v2 = SCNetworkInterfaceCopyAll();
  v3 = [(__CFArray *)v2 count];
  if (v3)
  {
    v4 = 0;
    v5 = *MEMORY[0x277CE16D8];
    while (1)
    {
      v6 = [(__CFArray *)v2 objectAtIndex:v4];
      if ([(__CFString *)SCNetworkInterfaceGetInterfaceType(v6) isEqualToString:v5])
      {
        break;
      }

      if (v3 == ++v4)
      {
        v3 = 0;
        goto LABEL_7;
      }
    }

    PSGGreenTeaWLANHardwareAddressLog(@"Reading MAC Address from WLAN", v7, v8, v9, v10, v11, v12, v13, v15);
    v3 = SCNetworkInterfaceGetHardwareAddressString(v6);
  }

LABEL_7:

  return v3;
}

- (id)_carrierVersion:(id)version
{
  v3 = [version propertyForKey:*MEMORY[0x277D40128]];
  mEMORY[0x277D4D8C8] = [MEMORY[0x277D4D8C8] sharedInstance];
  v5 = [mEMORY[0x277D4D8C8] carrierName:v3];

  if (v5)
  {
    mEMORY[0x277D4D8C8]2 = [MEMORY[0x277D4D8C8] sharedInstance];
    v8 = [mEMORY[0x277D4D8C8]2 carrierBundleVersion:v3];

    if (v8)
    {
      v10 = MEMORY[0x277CCACA8];
      v11 = PSG_BundleForGeneralSettingsUIFramework(v9);
      v12 = [v11 localizedStringForKey:@"CARRIER_VERSION_FORMAT" value:&stru_282E88A90 table:0];
      v13 = [v10 stringWithFormat:v12, v5, v8];

      goto LABEL_7;
    }

    v14 = v5;
  }

  else
  {
    v8 = PSG_BundleForGeneralSettingsUIFramework(v6);
    v14 = [v8 localizedStringForKey:@"NO_NETWORK" value:&stru_282E88A90 table:0];
  }

  v13 = v14;
LABEL_7:

  return v13;
}

- (void)_getBootStrapIccid
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  mEMORY[0x277D4D868] = [MEMORY[0x277D4D868] sharedInstance];
  subscriptionContexts = [mEMORY[0x277D4D868] subscriptionContexts];

  v5 = [subscriptionContexts countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(subscriptionContexts);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        mEMORY[0x277D4D8D8] = [MEMORY[0x277D4D8D8] sharedInstance];
        v11 = [mEMORY[0x277D4D8D8] mobileEquipmentInfo:v9];

        baseId = [v11 baseId];
        if (baseId)
        {
          v13 = baseId;
          baseId2 = [v11 baseId];
          v15 = [baseId2 length];

          if (v15)
          {
            baseId3 = [v11 baseId];
            bootstrapIccid = self->_bootstrapIccid;
            self->_bootstrapIccid = baseId3;

            goto LABEL_12;
          }
        }
      }

      v6 = [subscriptionContexts countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
}

- (BOOL)_isUsingBootstrap:(id)bootstrap
{
  v4 = MEMORY[0x277D4D8D8];
  bootstrapCopy = bootstrap;
  sharedInstance = [v4 sharedInstance];
  v7 = [sharedInstance mobileEquipmentInfo:bootstrapCopy];

  iCCID = [v7 ICCID];
  bootstrapIccid = self->_bootstrapIccid;
  if (bootstrapIccid)
  {
    v10 = [(NSString *)bootstrapIccid isEqualToString:iCCID];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)shouldShowSIMSpecifier:(id)specifier
{
  v4 = MEMORY[0x277D4D8D8];
  specifierCopy = specifier;
  sharedInstance = [v4 sharedInstance];
  v7 = [sharedInstance mobileEquipmentInfo:specifierCopy];

  iCCID = [v7 ICCID];
  bootstrapIccid = self->_bootstrapIccid;
  if (bootstrapIccid)
  {
    v10 = ![(NSString *)bootstrapIccid isEqualToString:iCCID];
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  v11 = [iCCID length] != 0;

  return v11 & v10;
}

- (id)_PRLString:(id)string
{
  v3 = [string propertyForKey:*MEMORY[0x277D40128]];
  mEMORY[0x277D4D8D8] = [MEMORY[0x277D4D8D8] sharedInstance];
  v5 = [mEMORY[0x277D4D8D8] mobileEquipmentInfo:v3];
  pRLVersion = [v5 PRLVersion];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%hu", objc_msgSend(pRLVersion, "unsignedShortValue")];

  return v7;
}

- (id)_ERIString:(id)string
{
  v3 = [string propertyForKey:*MEMORY[0x277D40128]];
  mEMORY[0x277D4D8D8] = [MEMORY[0x277D4D8D8] sharedInstance];
  v5 = [mEMORY[0x277D4D8D8] mobileEquipmentInfo:v3];
  eRIVersion = [v5 ERIVersion];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%hi", objc_msgSend(eRIVersion, "shortValue")];

  return v7;
}

- (id)_NAIString:(id)string
{
  v3 = [string propertyForKey:*MEMORY[0x277D40128]];
  mEMORY[0x277D4D8D8] = [MEMORY[0x277D4D8D8] sharedInstance];
  v5 = [mEMORY[0x277D4D8D8] mobileEquipmentInfo:v3];
  v6 = [v5 NAI];

  return v6;
}

- (id)_MINString:(id)string
{
  v3 = [string propertyForKey:*MEMORY[0x277D40128]];
  mEMORY[0x277D4D8D8] = [MEMORY[0x277D4D8D8] sharedInstance];
  v5 = [mEMORY[0x277D4D8D8] mobileEquipmentInfo:v3];
  v6 = [v5 MIN];

  return v6;
}

- (id)_IMSStatusString:(id)string
{
  v3 = [string propertyForKey:*MEMORY[0x277D40128]];
  mEMORY[0x277D4D8D0] = [MEMORY[0x277D4D8D0] sharedInstance];
  v5 = [mEMORY[0x277D4D8D0] IMSStatusVoice:v3];

  mEMORY[0x277D4D8D0]2 = [MEMORY[0x277D4D8D0] sharedInstance];
  v7 = [mEMORY[0x277D4D8D0]2 IMSStatusSMS:v3];

  mEMORY[0x277D4D8D0]3 = [MEMORY[0x277D4D8D0] sharedInstance];
  v9 = [mEMORY[0x277D4D8D0]3 RCSStatus:v3];

  if (v9)
  {
    v10 = v5 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10 && (v7 & 1) != 0)
  {
    v11 = @"STATUS_VOICE_AND_SMS_AND_RCS";
LABEL_13:
    v13 = PSG_LocalizedStringForGeneral(v11);
    goto LABEL_15;
  }

  v12 = @"IMS_STATUS_VOICE";
  if ((v5 & v7) != 0)
  {
    v12 = @"IMS_STATUS_VOICE_AND_SMS";
  }

  if (v5)
  {
    v11 = v12;
  }

  else
  {
    v11 = @"IMS_STATUS_SMS";
  }

  if ((v5 | v7))
  {
    goto LABEL_13;
  }

  v13 = 0;
LABEL_15:

  return v13;
}

- (id)_ICCIDString:(id)string
{
  v4 = [string propertyForKey:*MEMORY[0x277D40128]];
  LODWORD(self) = [(PSGAboutDataSource *)self _isUsingBootstrap:v4];
  mEMORY[0x277D4D8D8] = [MEMORY[0x277D4D8D8] sharedInstance];
  v6 = [mEMORY[0x277D4D8D8] mobileEquipmentInfo:v4];
  v7 = v6;
  if (self)
  {
    [v6 effectiveICCID];
  }

  else
  {
    [v6 ICCID];
  }
  v8 = ;

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v10 = v8;
  }

  else
  {
    v11 = PSG_BundleForGeneralSettingsUIFramework(isKindOfClass);
    v10 = [v11 localizedStringForKey:@"NO_SIM" value:&stru_282E88A90 table:0];
  }

  return v10;
}

- (void)updateCarrierSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = specifierCopy;
  if (!specifierCopy)
  {
    goto LABEL_24;
  }

  v6 = [specifierCopy propertyForKey:*MEMORY[0x277D40128]];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "slotID")}];
  v8 = [(NSMutableDictionary *)self->_carrierCellState objectForKeyedSubscript:v7];
  intValue = [v8 intValue];

  v10 = [(NSMutableDictionary *)self->_carrierCellState objectForKeyedSubscript:v7];
  v11 = ([v10 intValue] + 1) % 6uLL;

  mEMORY[0x277D4D8D8] = [MEMORY[0x277D4D8D8] sharedInstance];
  v13 = [mEMORY[0x277D4D8D8] mobileEquipmentInfo:v6];

  v36 = v13;
  if (v11 <= 2)
  {
    if (v11 == 1)
    {
      pRLVersion = [v13 PRLVersion];

      if (pRLVersion)
      {
        v17 = intValue;
        v18 = PSG_BundleForGeneralSettingsUIFramework(v16);
        v19 = [v18 localizedStringForKey:@"PRL" value:&stru_282E88A90 table:0];
        [v5 setName:v19];

        v20 = 1;
        v21 = &selRef__PRLString_;
        goto LABEL_21;
      }
    }

    else if (v11 != 2)
    {
      goto LABEL_20;
    }

    eRIVersion = [v13 ERIVersion];

    if (eRIVersion)
    {
      v17 = intValue;
      v18 = PSG_BundleForGeneralSettingsUIFramework(v23);
      v24 = [v18 localizedStringForKey:@"ERI" value:&stru_282E88A90 table:0];
      [v5 setName:v24];

      v20 = 2;
      v21 = &selRef__ERIString_;
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  if (v11 == 3)
  {
LABEL_14:
    v25 = [v13 NAI];

    if (v25)
    {
      v17 = intValue;
      v18 = PSG_BundleForGeneralSettingsUIFramework(v26);
      v27 = [v18 localizedStringForKey:@"NAI" value:&stru_282E88A90 table:0];
      [v5 setName:v27];

      v20 = 3;
      v21 = &selRef__NAIString_;
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  if (v11 == 4)
  {
LABEL_16:
    v28 = [v13 MIN];

    if (v28)
    {
      v17 = intValue;
      v18 = PSG_BundleForGeneralSettingsUIFramework(v29);
      v30 = [v18 localizedStringForKey:@"MSID" value:&stru_282E88A90 table:0];
      [v5 setName:v30];

      v20 = 4;
      v21 = &selRef__MINString_;
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (v11 != 5)
  {
    goto LABEL_20;
  }

LABEL_18:
  v31 = [(PSGAboutDataSource *)self _IMSStatusString:v5, v36];

  if (!v31)
  {
LABEL_20:
    v17 = intValue;
    v18 = PSG_BundleForGeneralSettingsUIFramework(v14);
    v32 = [v18 localizedStringForKey:@"CARRIER_VERSION" value:&stru_282E88A90 table:0];
    [v5 setName:v32];

    v20 = 0;
    v21 = &selRef__carrierVersion_;
    goto LABEL_21;
  }

  v17 = intValue;
  v18 = PSG_LocalizedStringForGeneral(@"IMS_STATUS");
  [v5 setName:v18];
  v20 = 5;
  v21 = &selRef__IMSStatusString_;
LABEL_21:

  *&v5[*MEMORY[0x277D3FCA8]] = *v21;
  v33 = [MEMORY[0x277CCABB0] numberWithInt:v20];
  [(NSMutableDictionary *)self->_carrierCellState setObject:v33 forKeyedSubscript:v7];

  v34 = [(NSMutableDictionary *)self->_carrierCellState objectForKeyedSubscript:v7];
  intValue2 = [v34 intValue];

  if (intValue2 != v17)
  {
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __45__PSGAboutDataSource_updateCarrierSpecifier___block_invoke;
    v37[3] = &unk_278324F08;
    v38 = v5;
    [(PSSpecifierDataSource *)self performUpdatesAnimated:0 usingBlock:v37];
  }

LABEL_24:
}

void __45__PSGAboutDataSource_updateCarrierSpecifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v5 indexOfSpecifier:v3];
  [v5 removeSpecifierAtIndex:v4];
  [v5 insertSpecifier:*(a1 + 32) atIndex:v4];
}

- (id)_modelRegionString
{
  if (_modelRegionString_onceToken != -1)
  {
    [PSGAboutDataSource _modelRegionString];
  }

  v3 = _modelRegionString_modelRegionString;

  return v3;
}

void __40__PSGAboutDataSource__modelRegionString__block_invoke()
{
  v4 = MGCopyAnswer();
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = &stru_282E88A90;
  }

  v2 = [v4 length];
  if (v2)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v4, v1];
  }

  v3 = _modelRegionString_modelRegionString;
  _modelRegionString_modelRegionString = v2;
}

- (id)_regulatoryModelNumberString
{
  if (_regulatoryModelNumberString_onceToken != -1)
  {
    [PSGAboutDataSource _regulatoryModelNumberString];
  }

  v3 = _regulatoryModelNumberString_regulatoryModelNumberString;

  return v3;
}

uint64_t __50__PSGAboutDataSource__regulatoryModelNumberString__block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = _regulatoryModelNumberString_regulatoryModelNumberString;
  _regulatoryModelNumberString_regulatoryModelNumberString = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)_modelNameString
{
  if (_modelNameString_onceToken != -1)
  {
    [PSGAboutDataSource _modelNameString];
  }

  v3 = _modelNameString_modelNameString;

  return PSG_LocalizedStringForModelNames(v3);
}

void __38__PSGAboutDataSource__modelNameString__block_invoke()
{
  v2 = MGCopyAnswer();
  v0 = [v2 objectForKey:@"ArtworkDeviceProductDescription"];
  v1 = _modelNameString_modelNameString;
  _modelNameString_modelNameString = v0;
}

- (id)_productVersionStringFallback
{
  v2 = objc_alloc(MEMORY[0x277CBEAC0]);
  v4 = v3 = @"/System/Library/CoreServices/SystemVersion.plist";
  v5 = [v2 initWithContentsOfFile:v4];

  v6 = [v5 objectForKey:@"ProductVersion"];

  return v6;
}

- (id)_productBuildVersionString
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  sf_isiPad = [currentDevice sf_isiPad];

  if (sf_isiPad)
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    v6 = processInfo;
    if (processInfo)
    {
      objc_msgSend_operatingSystemVersion(processInfo);
    }
  }

  v7 = _CFCopySupplementalVersionDictionary();
  v8 = v7;
  if (v7 && ([v7 objectForKeyedSubscript:*MEMORY[0x277CBEC90]], v9 = objc_claimAutoreleasedReturnValue(), v10 = _productBuildVersionString_productVersion, _productBuildVersionString_productVersion = v9, v10, _productBuildVersionString_productVersion))
  {
    _productVersionStringFallback = _productBuildVersionString_productVersion;
  }

  else
  {
    _productVersionStringFallback = [(PSGAboutDataSource *)self _productVersionStringFallback];
  }

  v12 = _productVersionStringFallback;

  return v12;
}

- (id)suManagerClient
{
  suClient = self->_suClient;
  if (!suClient)
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.preferences.about.sumanagerclient", v4);

    v6 = [objc_alloc(MEMORY[0x277D648B8]) initWithDelegate:0 queue:v5 clientType:0];
    v7 = self->_suClient;
    self->_suClient = v6;

    suClient = self->_suClient;
  }

  return suClient;
}

- (id)softwareVersionString
{
  v2 = PSG_BundleForGeneralSettingsUIFramework(self);
  v3 = [v2 localizedStringForKey:@"OS Version" value:&stru_282E88A90 table:0];
  v4 = softwareVersionString_softwareVersionString;
  softwareVersionString_softwareVersionString = v3;

  v5 = softwareVersionString_softwareVersionString;

  return v5;
}

- (void)cancelAbout
{
  aboutController = [(PSGAboutDataSource *)self aboutController];
  [aboutController dismissModalViewControllerWithTransition:7];
}

- (void)updateProductModelSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if (specifierCopy)
  {
    _modelRegionString = [(PSGAboutDataSource *)self _modelRegionString];
    _regulatoryModelNumberString = [(PSGAboutDataSource *)self _regulatoryModelNumberString];
    v7 = _regulatoryModelNumberString;
    if (_modelRegionString && _regulatoryModelNumberString)
    {
      v8 = *MEMORY[0x277D401A8];
      v9 = [specifierCopy propertyForKey:*MEMORY[0x277D401A8]];
      v10 = [v9 isEqualToString:_modelRegionString];

      v11 = v7;
      if ((v10 & 1) != 0 || ([specifierCopy propertyForKey:v8], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", v7), v12, v11 = _modelRegionString, v13))
      {
        [(PSGAboutDataSource *)self _setValue:v11 forSpecifier:specifierCopy];
      }

      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __50__PSGAboutDataSource_updateProductModelSpecifier___block_invoke;
      v14[3] = &unk_278324F08;
      v15 = specifierCopy;
      [(PSSpecifierDataSource *)self performUpdatesAnimated:0 usingBlock:v14];
    }
  }
}

- (void)_loadMediaFinished:(id)finished
{
  finishedCopy = finished;
  mediaDict = self->_mediaDict;
  self->_mediaDict = 0;

  if (!self->_cancel)
  {
    self->_loaded = 1;
    objc_storeStrong(&self->_mediaDict, finished);
    [(PSSpecifierDataSource *)self performUpdatesAnimated:0 usingBlock:&__block_literal_global_432];
  }

  self->_threadRunning = 0;
  [(NSLock *)self->_lock unlock];
}

- (id)countForKey:(id)key
{
  keyCopy = key;
  if (self->_reloadTimer || !self->_loaded && (self->_threadRunning || (self->_threadRunning = 1, [(NSLock *)self->_lock lock], ALGetPhotosAndVideosCount(), !self->_loaded)))
  {
    v5 = self->_loading;
  }

  else
  {
    v6 = MEMORY[0x277CCABB8];
    v7 = [(NSMutableDictionary *)self->_mediaDict objectForKey:keyCopy];
    v5 = [v6 localizedStringFromNumber:v7 numberStyle:1];
  }

  return v5;
}

void __34__PSGAboutDataSource_countForKey___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [MEMORY[0x277CD5E38] setFilteringDisabled:1];
  v8 = [MEMORY[0x277CD5E38] songsQuery];
  [v8 setIgnoreSystemFilterPredicates:1];
  [v8 setIgnoreRestrictionsPredicates:1];
  [v8 setShouldIncludeNonLibraryEntities:1];
  v9 = *MEMORY[0x277CD5768];
  v10 = [MEMORY[0x277CD5E30] predicateWithValue:MEMORY[0x277CBEC38] forProperty:*MEMORY[0x277CD5768]];
  [v8 addFilterPredicate:v10];

  v11 = [v8 _countOfItems];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
  [v7 setObject:v12 forKey:@"songs"];

  if (v17)
  {
    [v7 setObject:v17 forKey:@"photos"];
  }

  else
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
    [v7 setObject:v13 forKey:@"photos"];
  }

  v14 = [MEMORY[0x277CD5E38] videosQuery];
  [v14 setIgnoreSystemFilterPredicates:1];
  [v14 setIgnoreRestrictionsPredicates:1];
  v15 = [MEMORY[0x277CD5E30] predicateWithValue:MEMORY[0x277CBEC38] forProperty:v9];
  [v14 addFilterPredicate:v15];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "unsignedIntegerValue") + objc_msgSend(v14, "_countOfItems")}];
  [v7 setObject:v16 forKey:@"videos"];

  [*(a1 + 32) performSelectorOnMainThread:sel__loadMediaFinished_ withObject:v7 waitUntilDone:0];
  objc_autoreleasePoolPop(v6);
}

- (void)setDeviceName:(id)name specifier:(id)specifier
{
  nameCopy = name;
  deviceNameToIgnoreOnce = [(PSGAboutDataSource *)self deviceNameToIgnoreOnce];
  v6 = [deviceNameToIgnoreOnce isEqualToString:nameCopy];

  if (v6)
  {
    [(PSGAboutDataSource *)self setDeviceNameToIgnoreOnce:0];
  }

  else
  {
    SetDeviceName();
    [(PSSpecifierDataSource *)self performUpdatesAnimated:0 usingBlock:&__block_literal_global_459];
  }
}

- (id)specifiersForSpecifier:(id)specifier observer:(id)observer
{
  observerCopy = observer;
  if (![(PSGAboutDataSource *)self areSpecifiersLoaded])
  {
    [(PSGAboutDataSource *)self loadSpecifiers];
  }

  if ([observerCopy observerType] == 1)
  {
    [(PSGAboutDataSource *)self _loadValues];
  }

  v6 = MEMORY[0x277CBEA60];
  specifiers = [(PSSpecifierDataSource *)self specifiers];
  v8 = [v6 arrayWithArray:specifiers];

  return v8;
}

- (void)_loadValues
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_21CF20000, v0, OS_LOG_TYPE_ERROR, "%s error fetching volume space info: %d", v1, 0x12u);
}

void __33__PSGAboutDataSource__loadValues__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 appState];
  v4 = [v3 isInstalled];

  v5 = v8;
  if (v4)
  {
    v6 = [v8 correspondingApplicationRecord];
    v7 = [v6 appClipMetadata];

    if (!v7)
    {
      ++*(*(*(a1 + 32) + 8) + 24);
    }

    v5 = v8;
  }
}

- (id)getAPFSCurrentUserVolumeNode
{
  if (getAPFSCurrentUserVolumeNode_onceToken != -1)
  {
    [PSGAboutDataSource getAPFSCurrentUserVolumeNode];
  }

  v3 = getAPFSCurrentUserVolumeNode_volumeDeviceNode;

  return v3;
}

void __50__PSGAboutDataSource_getAPFSCurrentUserVolumeNode__block_invoke()
{
  v7 = *MEMORY[0x277D85DE8];
  bzero(&v6, 0x878uLL);
  v0 = NSHomeDirectory();
  v1 = statfs([v0 UTF8String], &v6);

  if (v1)
  {
    v3 = _PSGLoggingFacility(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __50__PSGAboutDataSource_getAPFSCurrentUserVolumeNode__block_invoke_cold_1();
    }
  }

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6.f_mntfromname];
  v5 = getAPFSCurrentUserVolumeNode_volumeDeviceNode;
  getAPFSCurrentUserVolumeNode_volumeDeviceNode = v4;
}

- (void)reloadSpecifiers
{
  self->_hasLoadedSpecifiers = 0;
  v2.receiver = self;
  v2.super_class = PSGAboutDataSource;
  [(PSSpecifierDataSource *)&v2 reloadSpecifiers];
}

- (id)aboutController
{
  v2 = [(PSSpecifierDataSource *)self observersOfClass:NSClassFromString(&cfstr_Psgaboutcontro_2.isa)];
  anyObject = [v2 anyObject];

  return anyObject;
}

- (void)loadSpecifiers
{
  selfCopy = self;
  v397 = *MEMORY[0x277D85DE8];
  [(PSGAboutDataSource *)self _getBootStrapIccid];
  if (selfCopy->_hasLoadedSpecifiers)
  {
    return;
  }

  selfCopy->_hasLoadedSpecifiers = 1;
  specifiers = [(PSSpecifierDataSource *)selfCopy specifiers];
  v4 = PSG_LocalizedStringForGeneral(@"Device_Name");
  v5 = MGGetBoolAnswer();
  obj = MGGetBoolAnswer();
  v349 = MGGetBoolAnswer();
  v6 = MGGetBoolAnswer();
  emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  v365 = specifiers;
  [specifiers addObject:emptyGroupSpecifier];
  v8 = PSGIsDeviceNameSettable();
  v9 = MEMORY[0x277D3FAD8];
  v336 = emptyGroupSpecifier;
  if (v8)
  {
    v10 = objc_opt_class();
    v11 = 2;
  }

  else
  {
    v10 = 0;
    v11 = 4;
  }

  v12 = [v9 preferenceSpecifierNamed:v4 target:selfCopy set:sel_setDeviceName_specifier_ get:sel_deviceName_ detail:v10 cell:v11 edit:0];
  v355 = *MEMORY[0x277D3FFB8];
  [v12 setProperty:@"NAME_CELL_ID" forKey:?];
  v335 = v12;
  [v365 addObject:v12];
  LODWORD(v12) = _os_feature_enabled_impl();
  v13 = MEMORY[0x277D3FAD8];
  softwareVersionString = [(PSGAboutDataSource *)selfCopy softwareVersionString];
  v15 = [v13 preferenceSpecifierNamed:softwareVersionString target:selfCopy set:0 get:sel__productBuildVersionString detail:objc_opt_class() cell:2 edit:0];

  v357 = v6;
  if (v12)
  {
    v16 = PSBundlePathForPreferenceBundle();
    v18 = v17 = v16;
    [v15 setProperty:v18 forKey:*MEMORY[0x277D40000]];

    [v15 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FDF8]];
    [v15 setControllerLoadAction:sel_lazyLoadBundle_];
  }

  else
  {
    suManagerClient = [(PSGAboutDataSource *)selfCopy suManagerClient];
    [v15 setProperty:suManagerClient forKey:@"SUManagerClient"];
  }

  [v15 setProperty:@"SW_VERSION_SPECIFIER" forKey:v355];
  v342 = *MEMORY[0x277D3FED8];
  [v15 setProperty:MEMORY[0x277CBEC38] forKey:?];
  v334 = v15;
  v20 = PSG_BundleForGeneralSettingsUIFramework([v365 addObject:v15]);
  v21 = [v20 localizedStringForKey:@"ProductModelName" value:&stru_282E88A90 table:0];
  [(PSGAboutDataSource *)selfCopy _addKey:@"ProductModelName" localizedString:v21 isCopyable:1];

  v23 = PSG_BundleForGeneralSettingsUIFramework(v22);
  v24 = [v23 localizedStringForKey:@"ProductModel" value:&stru_282E88A90 table:0];
  [(PSGAboutDataSource *)selfCopy _addKey:@"ProductModel" localizedString:v24 isCopyable:1];

  v26 = PSG_BundleForGeneralSettingsUIFramework(v25);
  v27 = [v26 localizedStringForKey:@"SerialNumber" value:&stru_282E88A90 table:0];
  [(PSGAboutDataSource *)selfCopy _addKey:@"SerialNumber" localizedString:v27 isCopyable:1];

  sharedNDOController = [(PSGAboutDataSource *)selfCopy sharedNDOController];
  specifiers2 = [sharedNDOController specifiers];

  if (specifiers2)
  {
    [v365 addObjectsFromArray:specifiers2];
  }

  v333 = specifiers2;
  v337 = v4;
  if (objc_opt_class())
  {
    systemHealthUIClient = [(PSGAboutDataSource *)selfCopy systemHealthUIClient];
    getCurrentSystemHealthInfoSpecifiers = [systemHealthUIClient getCurrentSystemHealthInfoSpecifiers];
    [v365 addObjectsFromArray:getCurrentSystemHealthInfoSpecifiers];
  }

  emptyGroupSpecifier2 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  [emptyGroupSpecifier2 setProperty:@"INFORMATION_GROUP" forKey:v355];
  v332 = emptyGroupSpecifier2;
  v33 = [v365 addObject:emptyGroupSpecifier2];
  if (v5)
  {
    mEMORY[0x277D4D868] = [MEMORY[0x277D4D868] sharedInstance];
    subscriptionContexts = [mEMORY[0x277D4D868] subscriptionContexts];

    mEMORY[0x277D4D8D8] = [MEMORY[0x277D4D8D8] sharedInstance];
    mobileEquipmentInfoLength = [mEMORY[0x277D4D8D8] mobileEquipmentInfoLength];

    if (mobileEquipmentInfoLength <= 1)
    {
      v38 = [subscriptionContexts objectAtIndexedSubscript:0];
      v39 = [(PSGAboutDataSource *)selfCopy _isUsingBootstrap:v38];
      if ((v39 & 1) == 0)
      {
        v40 = MEMORY[0x277D3FAD8];
        v41 = PSG_BundleForGeneralSettingsUIFramework(v39);
        [v41 localizedStringForKey:@"NETWORK" value:&stru_282E88A90 table:0];
        v43 = v42 = v5;
        v44 = [v40 preferenceSpecifierNamed:v43 target:selfCopy set:0 get:sel_valueForSpecifier_ detail:0 cell:4 edit:0];

        v5 = v42;
        v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%li", @"NETWORK", objc_msgSend(v38, "slotID")];
        [v44 setProperty:v45 forKey:v355];
        [v365 addObject:v44];
      }
    }
  }

  v360 = v5;
  v46 = PSG_BundleForGeneralSettingsUIFramework(v33);
  v47 = [v46 localizedStringForKey:@"SONGS" value:&stru_282E88A90 table:0];

  v48 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v47 target:selfCopy set:0 get:sel__songs_ detail:0 cell:4 edit:0];
  [v48 setProperty:@"SONGS" forKey:v355];
  v49 = v365;
  v50 = PSG_BundleForGeneralSettingsUIFramework([v365 addObject:v48]);
  v51 = [v50 localizedStringForKey:@"VIDEOS" value:&stru_282E88A90 table:0];

  v52 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v51 target:selfCopy set:0 get:sel__videos_ detail:0 cell:4 edit:0];

  [v52 setProperty:@"VIDEOS" forKey:v355];
  v53 = PSG_BundleForGeneralSettingsUIFramework([v365 addObject:v52]);
  v54 = [v53 localizedStringForKey:@"PHOTOS" value:&stru_282E88A90 table:0];

  v331 = v54;
  v55 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v54 target:selfCopy set:0 get:sel__photos_ detail:0 cell:4 edit:0];

  [v55 setProperty:@"PHOTOS" forKey:v355];
  v348 = v55;
  v56 = PSG_BundleForGeneralSettingsUIFramework([v365 addObject:v55]);
  v57 = [v56 localizedStringForKey:@"APPLICATIONS" value:&stru_282E88A90 table:0];

  v330 = v57;
  v58 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v57 target:selfCopy set:0 get:0 detail:? cell:? edit:?];
  [v58 setProperty:@"APPLICATIONS" forKey:v355];
  v329 = v58;
  v59 = PSG_BundleForGeneralSettingsUIFramework([v365 addObject:v58]);
  v60 = [v59 localizedStringForKey:@"User Data Capacity" value:&stru_282E88A90 table:0];
  [(PSGAboutDataSource *)selfCopy _addKey:@"User Data Capacity" localizedString:v60 isCopyable:0];

  v62 = PSG_BundleForGeneralSettingsUIFramework(v61);
  v63 = [v62 localizedStringForKey:@"User Data Available" value:&stru_282E88A90 table:0];
  v366 = selfCopy;
  [(PSGAboutDataSource *)selfCopy _addKey:@"User Data Available" localizedString:v63 isCopyable:0];

  if ([MEMORY[0x277D03538] isSharediPad])
  {
    emptyGroupSpecifier3 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [v365 addObject:emptyGroupSpecifier3];
    mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
    currentUser = [mEMORY[0x277D77BF8] currentUser];

    v67 = objc_opt_new();
    givenName = [currentUser givenName];
    [v67 setGivenName:givenName];

    familyName = [currentUser familyName];
    [v67 setFamilyName:familyName];

    v70 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:v67 style:1 options:0];
    if (!v70)
    {
      v70 = PSG_LocalizedStringForAbout(@"USER");
    }

    v71 = v70;

    v72 = MEMORY[0x277CCACA8];
    v73 = PSG_LocalizedStringForAbout(@"SHARED_IPAD_USER_CAPACITY");
    v74 = [v72 stringWithFormat:v73, v71];
    [(PSGAboutDataSource *)selfCopy _addLocalizedKey:v74 identifier:@"SHARED_IPAD_USER_CAPACITY" isCopyable:0 allowMultilineTitle:1];

    v75 = MEMORY[0x277CCACA8];
    v76 = PSG_LocalizedStringForAbout(@"SHARED_IPAD_USER_AVAILABE");
    v77 = [v75 stringWithFormat:v76, v71];
    [(PSGAboutDataSource *)selfCopy _addLocalizedKey:v77 identifier:@"SHARED_IPAD_USER_AVAILABE" isCopyable:0 allowMultilineTitle:1];

    v49 = v365;
  }

  v78 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"HARDWARE_GROUP"];
  [v49 addObject:v78];

  v80 = v49;
  v81 = v360;
  if (v360)
  {
    mEMORY[0x277D4D868]2 = [MEMORY[0x277D4D868] sharedInstance];
    subscriptionContexts2 = [mEMORY[0x277D4D868]2 subscriptionContexts];

    mEMORY[0x277D4D8D8]2 = [MEMORY[0x277D4D8D8] sharedInstance];
    mobileEquipmentInfoLength2 = [mEMORY[0x277D4D8D8]2 mobileEquipmentInfoLength];

    if (mobileEquipmentInfoLength2 <= 1)
    {
      v86 = [subscriptionContexts2 objectAtIndexedSubscript:0];
      v87 = MEMORY[0x277D3FAD8];
      v88 = PSG_BundleForGeneralSettingsUIFramework(v86);
      v89 = [v88 localizedStringForKey:@"CARRIER_VERSION" value:&stru_282E88A90 table:0];
      v90 = [v87 preferenceSpecifierNamed:v89 target:selfCopy set:0 get:sel__carrierVersion_ detail:0 cell:4 edit:0];

      v91 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%li", @"CARRIER_VERSION", objc_msgSend(v86, "slotID")];
      [v90 setProperty:v91 forKey:v355];
      [v90 setProperty:v86 forKey:*MEMORY[0x277D40128]];
      [v365 addObject:v90];

      v80 = v365;
      v348 = v90;
    }

    currentDevice = [MEMORY[0x277D75418] currentDevice];
    sf_isiPad = [currentDevice sf_isiPad];

    if (sf_isiPad)
    {
      v94 = PSG_BundleForGeneralSettingsUIFramework(v79);
      v95 = [v94 localizedStringForKey:@"CellularDataAddress" value:&stru_282E88A90 table:0];
      [(PSGAboutDataSource *)selfCopy _addKey:@"CellularDataAddress" localizedString:v95 isCopyable:0];
    }
  }

  if (v349)
  {
    _macAddressSpecifierKey = [(PSGAboutDataSource *)selfCopy _macAddressSpecifierKey];
    _macAddressLocalizedString = [(PSGAboutDataSource *)selfCopy _macAddressLocalizedString];
    [(PSGAboutDataSource *)selfCopy _addKey:_macAddressSpecifierKey localizedString:_macAddressLocalizedString isCopyable:1];

    if (!obj)
    {
LABEL_29:
      if (!v360)
      {
        goto LABEL_47;
      }

      goto LABEL_33;
    }
  }

  else if (!obj)
  {
    goto LABEL_29;
  }

  v98 = PSG_BundleForGeneralSettingsUIFramework(v79);
  v99 = [v98 localizedStringForKey:@"BTMACAddress" value:&stru_282E88A90 table:0];
  [(PSGAboutDataSource *)selfCopy _addKey:@"BTMACAddress" localizedString:v99 isCopyable:1];

  if (!v360)
  {
    goto LABEL_47;
  }

LABEL_33:
  mEMORY[0x277D4D868]3 = [MEMORY[0x277D4D868] sharedInstance];
  subscriptionContexts3 = [mEMORY[0x277D4D868]3 subscriptionContexts];

  mEMORY[0x277D4D8D8]3 = [MEMORY[0x277D4D8D8] sharedInstance];
  mobileEquipmentInfoLength3 = [mEMORY[0x277D4D8D8]3 mobileEquipmentInfoLength];

  if (mobileEquipmentInfoLength3 <= 1)
  {
    v104 = [subscriptionContexts3 objectAtIndexedSubscript:0];
    mEMORY[0x277D4D8D8]4 = [MEMORY[0x277D4D8D8] sharedInstance];
    v106 = [mEMORY[0x277D4D8D8]4 mobileEquipmentInfo:v104];

    if (v106)
    {
      iMEI = [v106 IMEI];

      if (iMEI)
      {
        v109 = MEMORY[0x277D3FAD8];
        v110 = PSG_BundleForGeneralSettingsUIFramework(v108);
        v111 = [v110 localizedStringForKey:@"ModemIMEI" value:&stru_282E88A90 table:0];
        v112 = [v109 preferenceSpecifierNamed:v111 target:v366 set:0 get:sel_valueForSpecifier_ detail:0 cell:4 edit:0];

        v113 = MEMORY[0x277CCACA8];
        [v104 slotID];
        v114 = [v113 stringWithFormat:@"%@.%li"];
        [v112 setProperty:v114 forKey:v355];
        PSGGreenTeaIMEILog(@"Reading IMEI from CTMobileEquipmentInfo", v115, v116, v117, v118, v119, v120, v121, @"ModemIMEI");
        iMEI2 = [v106 IMEI];
        psg_IMEIString = [iMEI2 psg_IMEIString];
        v124 = *MEMORY[0x277D401A8];
        [v112 setProperty:psg_IMEIString forKey:*MEMORY[0x277D401A8]];

        selfCopy = v366;
        v125 = MEMORY[0x277CBEC38];
        [v112 setProperty:MEMORY[0x277CBEC38] forKey:v342];
        obja = *MEMORY[0x277D40188];
        [v112 setProperty:v125 forKey:?];
        [v365 addObject:v112];
        v126 = [(PSGAboutDataSource *)v366 shouldShowSIMSpecifier:v104];
        if (v126)
        {
          v127 = MEMORY[0x277D3FAD8];
          v128 = PSG_BundleForGeneralSettingsUIFramework(v126);
          v129 = [v128 localizedStringForKey:@"ICCID" value:&stru_282E88A90 table:0];
          v130 = [v127 preferenceSpecifierNamed:v129 target:v366 set:0 get:sel__ICCIDString_ detail:0 cell:4 edit:0];

          v131 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%li", @"ICCID", objc_msgSend(v104, "slotID")];
          [v130 setProperty:v131 forKey:v355];
          v132 = MEMORY[0x277CBEC38];
          [v130 setProperty:MEMORY[0x277CBEC38] forKey:v342];
          [v130 setProperty:v132 forKey:obja];
          [v130 setProperty:v104 forKey:*MEMORY[0x277D40128]];
          [v365 addObject:v130];

          selfCopy = v366;
        }

        mEID = [v106 MEID];

        if (mEID)
        {
          v135 = MEMORY[0x277D3FAD8];
          v136 = PSG_BundleForGeneralSettingsUIFramework(v134);
          [v136 localizedStringForKey:@"MEID" value:&stru_282E88A90 table:0];
          v138 = v137 = v124;
          v139 = [v135 preferenceSpecifierNamed:v138 target:selfCopy set:0 get:sel_valueForSpecifier_ detail:0 cell:4 edit:0];

          v140 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%li", @"MEID", objc_msgSend(v104, "slotID")];
          [v139 setProperty:v140 forKey:v355];
          mEID2 = [v106 MEID];
          [v139 setProperty:mEID2 forKey:v137];

          v142 = MEMORY[0x277CBEC38];
          [v139 setProperty:MEMORY[0x277CBEC38] forKey:v342];
          [v139 setProperty:v142 forKey:obja];
          [v365 addObject:v139];

          selfCopy = v366;
        }

        v81 = v360;
      }
    }

    v80 = v365;
  }

  *buf = 0;
  v395 = 0u;
  v396 = 0;
  *&buf[8] = selfCopy;
  v143 = _CTServerConnectionCreate();
  if (v143)
  {
    v144 = v143;
    cf = 0;
    v145 = _CTServerConnectionCopyFirmwareVersion();
    if (!HIDWORD(v145))
    {
      v146 = PSG_BundleForGeneralSettingsUIFramework(v145);
      v147 = [v146 localizedStringForKey:@"ModemVersion" value:&stru_282E88A90 table:0];
      v80 = v365;
      [(PSGAboutDataSource *)selfCopy _addKey:@"ModemVersion" localizedString:v147 value:cf isCopyable:0];

      lastObject = [v365 lastObject];
      [lastObject setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D40188]];
    }

    CFRelease(v144);
  }

LABEL_47:
  if (v357)
  {
    v149 = PSG_BundleForGeneralSettingsUIFramework(v79);
    v150 = [v149 localizedStringForKey:@"SEID" value:&stru_282E88A90 table:0];

    v151 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v150 target:0 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
    [v80 addObject:v151];
  }

  if (!v81)
  {
    goto LABEL_77;
  }

  mEMORY[0x277D4D8C0] = [MEMORY[0x277D4D8C0] sharedInstance];
  isActivationCodeFlowSupported = [mEMORY[0x277D4D8C0] isActivationCodeFlowSupported];

  if (isActivationCodeFlowSupported)
  {
    mEMORY[0x277D4D868]4 = [MEMORY[0x277D4D868] sharedInstance];
    subscriptionContexts4 = [mEMORY[0x277D4D868]4 subscriptionContexts];

    mEMORY[0x277D4D8D8]5 = [MEMORY[0x277D4D8D8] sharedInstance];
    v157 = [subscriptionContexts4 objectAtIndexedSubscript:0];
    v158 = [mEMORY[0x277D4D8D8]5 mobileEquipmentInfo:v157];

    if ([subscriptionContexts4 count] < 2)
    {
      if (!v158)
      {
LABEL_59:
        v165 = &stru_282E88A90;
LABEL_66:

        goto LABEL_67;
      }

      v161 = 0;
    }

    else
    {
      mEMORY[0x277D4D8D8]6 = [MEMORY[0x277D4D8D8] sharedInstance];
      v160 = [subscriptionContexts4 objectAtIndexedSubscript:1];
      v161 = [mEMORY[0x277D4D8D8]6 mobileEquipmentInfo:v160];

      if (!v158)
      {
        if (!v161)
        {
          goto LABEL_59;
        }

        goto LABEL_61;
      }
    }

    v162 = [v158 CSN];
    v163 = [v162 length];

    if (v163)
    {
      v164 = v158;
LABEL_63:
      v165 = [v164 CSN];
LABEL_65:
      v168 = MEMORY[0x277D3FAD8];
      v169 = PSG_LocalizedStringForGeneral(@"EID");
      v170 = [v168 preferenceSpecifierNamed:v169 target:v366 set:0 get:sel_valueForSpecifier_ detail:0 cell:4 edit:0];

      selfCopy = v366;
      [v170 setProperty:@"EID" forKey:v355];
      [v170 setProperty:v165 forKey:*MEMORY[0x277D40160]];
      [v170 setProperty:v165 forKey:*MEMORY[0x277D401A8]];
      [v170 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
      [v170 setProperty:MEMORY[0x277CBEC38] forKey:v342];
      [v365 addObject:v170];

      goto LABEL_66;
    }

    if (!v161)
    {
LABEL_64:
      v165 = &stru_282E88A90;
      goto LABEL_65;
    }

LABEL_61:
    v166 = [v161 CSN];
    v167 = [v166 length];

    if (v167)
    {
      v164 = v161;
      goto LABEL_63;
    }

    goto LABEL_64;
  }

LABEL_67:
  v171 = +[PSUICoreTelephonyPostponementCache sharedInstance];
  getActivationPolicyState = [v171 getActivationPolicyState];

  if (getActivationPolicyState && [getActivationPolicyState carrierLock])
  {
    carrierLock = [getActivationPolicyState carrierLock];
    v174 = PSG_LocalizedStringForGeneral(@"CARRIER_LOCK");
    if (carrierLock == 1)
    {
      v175 = @"CARRIER_LOCK_UNLOCKED";
    }

    else
    {
      v175 = @"CARRIER_LOCK_LOCKED";
    }

    v176 = PSG_LocalizedStringForGeneral(v175);
    v177 = MEMORY[0x277D3FAD8];
    if (carrierLock == 1)
    {
      v178 = 0;
      v179 = 4;
    }

    else
    {
      v178 = objc_opt_class();
      v179 = 2;
    }

    v180 = [v177 preferenceSpecifierNamed:v174 target:selfCopy set:0 get:sel_valueForSpecifier_ detail:v178 cell:v179 edit:0];
    [v180 setProperty:v176 forKey:*MEMORY[0x277D401A8]];
    [v365 addObject:v180];
  }

LABEL_77:
  mEMORY[0x277CC5FB0] = [MEMORY[0x277CC5FB0] sharedAccessoryManager];
  availableAccessories = [mEMORY[0x277CC5FB0] availableAccessories];

  v386 = 0u;
  v387 = 0u;
  v384 = 0u;
  v385 = 0u;
  objb = availableAccessories;
  v183 = [objb countByEnumeratingWithState:&v384 objects:v393 count:16];
  v184 = 0x277D3F000uLL;
  if (v183)
  {
    v185 = v183;
    v186 = *v385;
    do
    {
      for (i = 0; i != v185; ++i)
      {
        if (*v385 != v186)
        {
          objc_enumerationMutation(objb);
        }

        v188 = *(*(&v384 + 1) + 8 * i);
        if (_shouldShowAccessoryInfo(v188))
        {
          name = [v188 name];
          if (![name length])
          {
            v190 = PSG_BundleForGeneralSettingsUIFramework(0);
            v191 = [v190 localizedStringForKey:@"ACCESSORY" value:&stru_282E88A90 table:0];

            name = v191;
            selfCopy = v366;
          }

          v192 = [*(v184 + 2776) preferenceSpecifierNamed:name target:selfCopy set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
          [v192 setUserInfo:v188];
          bonjourName = [v188 bonjourName];
          v194 = [bonjourName length];

          v195 = MEMORY[0x277CCAB68];
          if (v194)
          {
            bonjourName2 = [v188 bonjourName];
            v197 = [v195 stringWithString:bonjourName2];
          }

          else
          {
            bonjourName2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v188, "connectionID")}];
            stringValue = [bonjourName2 stringValue];
            v197 = [v195 stringWithString:stringValue];
          }

          [v197 appendString:@"_ACCESSORY"];
          [v192 setIdentifier:v197];

          [v365 addObject:v192];
          v184 = 0x277D3F000;
          selfCopy = v366;
        }
      }

      v185 = [objb countByEnumeratingWithState:&v384 objects:v393 count:16];
    }

    while (v185);
  }

  v199 = 0x277D4D000uLL;
  mEMORY[0x277D4D8D8]7 = [MEMORY[0x277D4D8D8] sharedInstance];
  mobileEquipmentInfoLength4 = [mEMORY[0x277D4D8D8]7 mobileEquipmentInfoLength];

  if (mobileEquipmentInfoLength4 >= 2)
  {
    v382 = 0u;
    v383 = 0u;
    v380 = 0u;
    v381 = 0u;
    mEMORY[0x277D4D868]5 = [MEMORY[0x277D4D868] sharedInstance];
    subscriptionContexts5 = [mEMORY[0x277D4D868]5 subscriptionContexts];

    v204 = [subscriptionContexts5 countByEnumeratingWithState:&v380 objects:v392 count:16];
    v205 = MEMORY[0x277CC3ED8];
    v206 = v365;
    if (v204)
    {
      v207 = v204;
      v358 = 0;
      v361 = *v381;
      v350 = *MEMORY[0x277CC3ED8];
      v208 = 1;
      v346 = subscriptionContexts5;
      do
      {
        for (j = 0; j != v207; ++j)
        {
          if (*v381 != v361)
          {
            objc_enumerationMutation(v346);
          }

          v210 = *(*(&v380 + 1) + 8 * j);
          v211 = [(CoreTelephonyClient *)selfCopy->__client getSimHardwareInfo:v210 error:0];
          v212 = [v211 hardwareType] != 2;
          mEMORY[0x277D4D868]6 = [MEMORY[0x277D4D868] sharedInstance];
          [mEMORY[0x277D4D868]6 simStatus:v210];
          v215 = v214 = selfCopy;
          v216 = [v215 isEqualToString:v350];

          if ((v216 & 1) == 0)
          {
            v358 += [(PSGAboutDataSource *)v214 shouldShowSIMSpecifier:v210];
          }

          v206 = v365;
          selfCopy = v214;
          v208 &= v212;
        }

        v207 = [v346 countByEnumeratingWithState:&v380 objects:v392 count:16];
      }

      while (v207);

      if (!v208)
      {
        v205 = MEMORY[0x277CC3ED8];
        if (v358 != 1)
        {
          v347 = 0;
          goto LABEL_111;
        }

        mEMORY[0x277D4D868]7 = [MEMORY[0x277D4D868] sharedInstance];
        subscriptionContexts6 = [mEMORY[0x277D4D868]7 subscriptionContexts];
        subscriptionContexts7 = [subscriptionContexts6 sortedArrayUsingComparator:&__block_literal_global_622];

        v347 = 0;
        v358 = 1;
LABEL_106:
        v217 = 0x277D3F000;
        if (subscriptionContexts7)
        {
LABEL_112:
          v377 = 0u;
          v378 = 0u;
          v375 = 0u;
          v376 = 0u;
          v339 = subscriptionContexts7;
          v351 = [v339 countByEnumeratingWithState:&v375 objects:v391 count:16];
          if (!v351)
          {
            goto LABEL_164;
          }

          v224 = @"AVAILABLE_SIM";
          if (!v358)
          {
            v224 = @"AVAILABLE_SIMS";
          }

          v338 = v224;
          v343 = 1;
          v344 = *v205;
          v345 = *v376;
          v340 = *MEMORY[0x277D401A8];
          v341 = *MEMORY[0x277D40128];
          while (1)
          {
            for (k = 0; k != v351; ++k)
            {
              if (*v376 != v345)
              {
                objc_enumerationMutation(v339);
              }

              v226 = *(*(&v375 + 1) + 8 * k);
              mEMORY[0x277D4D868]8 = [MEMORY[0x277D4D868] sharedInstance];
              v228 = [mEMORY[0x277D4D868]8 simStatus:v226];
              if ([v228 isEqualToString:v344])
              {
                LOBYTE(iMEI4) = 1;
              }

              else
              {
                LODWORD(iMEI4) = ![(PSGAboutDataSource *)selfCopy shouldShowSIMSpecifier:v226];
              }

              v230 = [(CoreTelephonyClient *)selfCopy->__client getSimHardwareInfo:v226 error:0];
              v231 = v230;
              if (v347)
              {
                if (v358 > 1)
                {
                  goto LABEL_144;
                }

                simLocation = [v230 simLocation];
                v233 = @"FRONT_SIM";
                if (simLocation == 1 || (v234 = [v231 simLocation], v233 = @"BACK_SIM", v234 == 2))
                {
                  label = PSG_LocalizedStringForGeneral(v233);
                  if (!label)
                  {
                    goto LABEL_144;
                  }
                }

                else
                {
                  v241 = _PSGLoggingFacility(@"BACK_SIM");
                  if (os_log_type_enabled(v241, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    *&buf[4] = v226;
                    _os_log_error_impl(&dword_21CF20000, v241, OS_LOG_TYPE_ERROR, "subscription context slot unknown: %@", buf, 0xCu);
                  }

LABEL_144:
                  label = [v226 label];
                }

                label2 = label;
                goto LABEL_146;
              }

              v236 = v338;
              if ((iMEI4 & 1) == 0)
              {
                if (v358 > 1)
                {
                  goto LABEL_137;
                }

                hardwareType = [v231 hardwareType];
                v236 = @"eSIM";
                if (hardwareType != 2)
                {
                  hardwareType2 = [v231 hardwareType];
                  v236 = @"PHYSICAL_SIM";
                  if (hardwareType2 != 1)
                  {
                    v240 = _PSGLoggingFacility(@"PHYSICAL_SIM");
                    if (os_log_type_enabled(v240, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      *&buf[4] = v226;
                      _os_log_error_impl(&dword_21CF20000, v240, OS_LOG_TYPE_ERROR, "subscription context slot unknown: %@", buf, 0xCu);
                    }

LABEL_137:
                    label2 = [v226 label];
                    goto LABEL_138;
                  }
                }
              }

              label2 = PSG_LocalizedStringForGeneral(v236);
              if (!label2)
              {
                goto LABEL_137;
              }

LABEL_138:
              if (!v343)
              {
                v343 = 0;
                goto LABEL_147;
              }

              v343 = v358 != 0;
LABEL_146:
              v242 = [*(v217 + 2776) groupSpecifierWithName:label2];
              [v206 addObject:v242];

LABEL_147:
              mEMORY[0x277D4D8D8]8 = [MEMORY[0x277D4D8D8] sharedInstance];
              v244 = [mEMORY[0x277D4D8D8]8 mobileEquipmentInfo:v226];

              if ((iMEI4 & 1) == 0)
              {
                v362 = iMEI4;
                iMEI4 = v206;
                v245 = [(PSGAboutDataSource *)selfCopy _isUsingBootstrap:v226];
                if ((v245 & 1) == 0)
                {
                  v246 = *(v217 + 2776);
                  v247 = PSG_BundleForGeneralSettingsUIFramework(v245);
                  v248 = [v247 localizedStringForKey:@"NETWORK" value:&stru_282E88A90 table:0];
                  v249 = [v246 preferenceSpecifierNamed:v248 target:selfCopy set:0 get:sel_valueForSpecifier_ detail:0 cell:4 edit:0];

                  v250 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%li", @"NETWORK", objc_msgSend(v226, "slotID")];
                  [v249 setProperty:v250 forKey:v355];
                  [iMEI4 addObject:v249];

                  v217 = 0x277D3F000uLL;
                }

                v251 = *(v217 + 2776);
                v252 = PSG_BundleForGeneralSettingsUIFramework(v245);
                v253 = [v252 localizedStringForKey:@"CARRIER_VERSION" value:&stru_282E88A90 table:0];
                v254 = [v251 preferenceSpecifierNamed:v253 target:selfCopy set:0 get:sel__carrierVersion_ detail:0 cell:4 edit:0];

                v255 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%li", @"CARRIER_VERSION", objc_msgSend(v226, "slotID")];
                [v254 setProperty:v255 forKey:v355];
                [v254 setProperty:v226 forKey:v341];
                v206 = iMEI4;
                [iMEI4 addObject:v254];

                v348 = v254;
                LOBYTE(iMEI4) = v362;
              }

              if (v244)
              {
                iMEI3 = [v244 IMEI];

                if (iMEI3)
                {
                  v363 = iMEI4;
                  slotID = [v226 slotID];
                  if (slotID == 2)
                  {
                    v258 = PSG_LocalizedStringForGeneral(@"ModemIMEI2");
                    v259 = v258;
                  }

                  else
                  {
                    v258 = PSG_BundleForGeneralSettingsUIFramework(slotID);
                    v259 = [v258 localizedStringForKey:@"ModemIMEI" value:&stru_282E88A90 table:0];
                  }

                  v260 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v259 target:v366 set:0 get:sel_valueForSpecifier_ detail:0 cell:4 edit:0];
                  v261 = MEMORY[0x277CCACA8];
                  [v226 slotID];
                  v262 = [v261 stringWithFormat:@"%@.%li"];
                  [v260 setProperty:v262 forKey:v355];
                  PSGGreenTeaIMEILog(@"Reading IMEI from CTMobileEquipmentInfo", v263, v264, v265, v266, v267, v268, v269, @"ModemIMEI");
                  iMEI4 = [v244 IMEI];
                  psg_IMEIString2 = [iMEI4 psg_IMEIString];
                  [v260 setProperty:psg_IMEIString2 forKey:v340];

                  [v260 setProperty:MEMORY[0x277CBEC38] forKey:v342];
                  [v365 addObject:v260];

                  v206 = v365;
                  LOBYTE(iMEI4) = v363;
                }

                if ((iMEI4 & 1) == 0)
                {
                  v271 = [(PSGAboutDataSource *)v366 shouldShowSIMSpecifier:v226];
                  if (v271)
                  {
                    v272 = MEMORY[0x277D3FAD8];
                    v273 = PSG_BundleForGeneralSettingsUIFramework(v271);
                    v274 = [v273 localizedStringForKey:@"ICCID" value:&stru_282E88A90 table:0];
                    v275 = [v272 preferenceSpecifierNamed:v274 target:v366 set:0 get:sel__ICCIDString_ detail:0 cell:4 edit:0];

                    v206 = v365;
                    v276 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%li", @"ICCID", objc_msgSend(v226, "slotID")];
                    [v275 setProperty:v276 forKey:v355];
                    [v275 setProperty:MEMORY[0x277CBEC38] forKey:v342];
                    [v275 setProperty:v226 forKey:v341];
                    [v365 addObject:v275];
                  }

                  mEID3 = [v244 MEID];

                  if (mEID3)
                  {
                    v279 = MEMORY[0x277D3FAD8];
                    v280 = PSG_BundleForGeneralSettingsUIFramework(v278);
                    v281 = [v280 localizedStringForKey:@"MEID" value:&stru_282E88A90 table:0];
                    v282 = [v279 preferenceSpecifierNamed:v281 target:v366 set:0 get:sel_valueForSpecifier_ detail:0 cell:4 edit:0];

                    v206 = v365;
                    v283 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%li", @"MEID", objc_msgSend(v226, "slotID")];
                    [v282 setProperty:v283 forKey:v355];
                    mEID4 = [v244 MEID];
                    [v282 setProperty:mEID4 forKey:v340];

                    [v282 setProperty:MEMORY[0x277CBEC38] forKey:v342];
                    [v365 addObject:v282];
                  }
                }
              }

              v217 = 0x277D3F000;
              selfCopy = v366;
            }

            v351 = [v339 countByEnumeratingWithState:&v375 objects:v391 count:16];
            if (!v351)
            {
LABEL_164:

              v199 = 0x277D4D000;
              goto LABEL_165;
            }
          }
        }

LABEL_111:
        mEMORY[0x277D4D868]9 = [MEMORY[0x277D4D868] sharedInstance];
        subscriptionContexts7 = [mEMORY[0x277D4D868]9 subscriptionContexts];

        v217 = 0x277D3F000uLL;
        goto LABEL_112;
      }

      v205 = MEMORY[0x277CC3ED8];
    }

    else
    {

      v358 = 0;
    }

    mEMORY[0x277D4D868]10 = [MEMORY[0x277D4D868] sharedInstance];
    subscriptionContexts8 = [mEMORY[0x277D4D868]10 subscriptionContexts];
    v379[0] = MEMORY[0x277D85DD0];
    v379[1] = 3221225472;
    v379[2] = __36__PSGAboutDataSource_loadSpecifiers__block_invoke;
    v379[3] = &unk_278324FA0;
    v379[4] = selfCopy;
    subscriptionContexts7 = [subscriptionContexts8 sortedArrayUsingComparator:v379];

    v347 = 1;
    goto LABEL_106;
  }

  v206 = v365;
  v217 = 0x277D3F000;
LABEL_165:
  if ((_os_feature_enabled_impl() & 1) == 0 && _os_feature_enabled_impl() && PSGetCapabilityBoolAnswer())
  {
    v285 = objc_opt_new();
    [v285 setLocalizedDateFormatFromTemplate:@"MMMM yyyy"];
    v286 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"GMT"];
    [v285 setTimeZone:v286];

    v287 = MEMORY[0x277D3FAD8];
    v288 = PSG_LocalizedStringForLOTX(@"BATTERY");
    v289 = [v287 groupSpecifierWithID:@"BATTERY_HEALTH_GROUP" name:v288];

    [v206 addObject:v289];
    v290 = PSG_LocalizedStringForLOTX(@"UNKNOWN");
    v291 = MEMORY[0x277D3FAD8];
    v292 = PSG_LocalizedStringForLOTX(@"BATTERY_MANUFACTURE_DATE");
    v293 = [v291 preferenceSpecifierNamed:v292 target:selfCopy set:0 get:sel_valueForSpecifier_ detail:0 cell:4 edit:0];

    v294 = *MEMORY[0x277D401A8];
    [v293 setObject:v290 forKeyedSubscript:*MEMORY[0x277D401A8]];
    [v365 addObject:v293];
    v295 = MEMORY[0x277D3FAD8];
    PSG_LocalizedStringForLOTX(@"BATTERY_FIRST_USE");
    v297 = v296 = selfCopy;
    v298 = [v295 preferenceSpecifierNamed:v297 target:v296 set:0 get:sel_valueForSpecifier_ detail:0 cell:4 edit:0];

    [v298 setObject:v290 forKeyedSubscript:v294];
    [v365 addObject:v298];
    v299 = MEMORY[0x277D3FAD8];
    v300 = PSG_LocalizedStringForLOTX(@"BATTERY_CYCLE_COUNT");
    v301 = v296;
    v199 = 0x277D4D000uLL;
    v302 = [v299 preferenceSpecifierNamed:v300 target:v301 set:0 get:sel_valueForSpecifier_ detail:0 cell:4 edit:0];

    [v302 setObject:v290 forKeyedSubscript:v294];
    [v365 addObject:v302];

    v206 = v365;
    v217 = 0x277D3F000uLL;
  }

  v364 = [*(v217 + 2776) groupSpecifierWithID:@"CERT_TRUST_SETTINGS_GROUP"];
  v303 = PSG_BundleForGeneralSettingsUIFramework([v206 addObject:?]);
  v304 = [v303 localizedStringForKey:@"CERT_TRUST_SETTINGS" value:&stru_282E88A90 table:0];

  v359 = v304;
  v305 = [*(v217 + 2776) preferenceSpecifierNamed:v304 target:0 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
  [v305 setIdentifier:@"CERT_TRUST_SETTINGS"];
  v356 = v305;
  [v206 addObject:v305];
  v306 = [MEMORY[0x277CBEB18] arrayWithArray:&unk_282E8FD10];
  sharedInstance = [*(v199 + 2264) sharedInstance];
  mobileEquipmentInfoLength5 = [sharedInstance mobileEquipmentInfoLength];

  if (mobileEquipmentInfoLength5 >= 2)
  {
    v373 = 0u;
    v374 = 0u;
    v371 = 0u;
    v372 = 0u;
    mEMORY[0x277D4D868]11 = [MEMORY[0x277D4D868] sharedInstance];
    subscriptionContexts9 = [mEMORY[0x277D4D868]11 subscriptionContexts];

    v311 = [subscriptionContexts9 countByEnumeratingWithState:&v371 objects:v390 count:16];
    if (v311)
    {
      v312 = v311;
      v313 = *v372;
      do
      {
        for (m = 0; m != v312; ++m)
        {
          if (*v372 != v313)
          {
            objc_enumerationMutation(subscriptionContexts9);
          }

          v315 = *(*(&v371 + 1) + 8 * m);
          v316 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%li", @"ModemIMEI", objc_msgSend(v315, "slotID")];
          [v306 addObject:v316];

          v317 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%li", @"ICCID", objc_msgSend(v315, "slotID")];
          [v306 addObject:v317];

          v318 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%li", @"MEID", objc_msgSend(v315, "slotID")];
          [v306 addObject:v318];
        }

        v312 = [subscriptionContexts9 countByEnumeratingWithState:&v371 objects:v390 count:16];
      }

      while (v312);
    }
  }

  v369 = 0u;
  v370 = 0u;
  v367 = 0u;
  v368 = 0u;
  v319 = v365;
  v320 = [v319 countByEnumeratingWithState:&v367 objects:v389 count:16];
  if (v320)
  {
    v321 = v320;
    v322 = *v368;
    v323 = *MEMORY[0x277D40188];
    v324 = MEMORY[0x277CBEC38];
    do
    {
      for (n = 0; n != v321; ++n)
      {
        if (*v368 != v322)
        {
          objc_enumerationMutation(v319);
        }

        v326 = *(*(&v367 + 1) + 8 * n);
        identifier = [v326 identifier];
        v328 = [v306 containsObject:identifier];

        if (v328)
        {
          [v326 setProperty:v324 forKey:v323];
        }
      }

      v321 = [v319 countByEnumeratingWithState:&v367 objects:v389 count:16];
    }

    while (v321);
  }
}

uint64_t __36__PSGAboutDataSource_loadSpecifiers__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(a1 + 32) + 144);
  v6 = a3;
  v7 = [v5 getSimHardwareInfo:a2 error:0];
  v8 = [*(*(a1 + 32) + 144) getSimHardwareInfo:v6 error:0];

  v9 = [v7 simLocation];
  if (v9 >= [v8 simLocation])
  {
    v11 = [v7 simLocation];
    v10 = v11 > [v8 simLocation];
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

uint64_t __36__PSGAboutDataSource_loadSpecifiers__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277D4D868];
  v5 = a3;
  v6 = a2;
  v7 = [v4 sharedInstance];
  v8 = [v7 simStatus:v6];

  v9 = *MEMORY[0x277CC3ED8];
  v10 = [v8 isEqualToString:*MEMORY[0x277CC3ED8]];

  v11 = [MEMORY[0x277D4D868] sharedInstance];
  v12 = [v11 simStatus:v5];

  v13 = [v12 isEqualToString:v9];
  if (v10)
  {
    return 1;
  }

  else
  {
    return v13 << 63 >> 63;
  }
}

- (void)cleanupMLReloadTimer
{
  [(NSTimer *)self->_reloadTimer invalidate];
  reloadTimer = self->_reloadTimer;
  self->_reloadTimer = 0;
}

- (void)forceReloadMediaStats:(id)stats
{
  [(PSGAboutDataSource *)self cleanupMLReloadTimer];
  self->_loaded = 0;

  [(PSSpecifierDataSource *)self performUpdatesAnimated:0 usingBlock:&__block_literal_global_692];
}

- (void)enableMLUpdates:(BOOL)updates
{
  if (updates)
  {
    if (self->_isGeneratingNotifications)
    {
      return;
    }

    defaultMediaLibrary = [MEMORY[0x277CD5E10] defaultMediaLibrary];
    [defaultMediaLibrary beginGeneratingLibraryChangeNotifications];
    v5 = 1;
  }

  else
  {
    if (!self->_isGeneratingNotifications)
    {
      return;
    }

    defaultMediaLibrary = [MEMORY[0x277CD5E10] defaultMediaLibrary];
    [defaultMediaLibrary endGeneratingLibraryChangeNotifications];
    v5 = 0;
  }

  self->_isGeneratingNotifications = v5;
}

- (void)mediaLibraryDidChange:(id)change
{
  [(PSGAboutDataSource *)self cleanupMLReloadTimer];
  v4 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_forceReloadMediaStats_ selector:0 userInfo:0 repeats:1.0];
  reloadTimer = self->_reloadTimer;
  self->_reloadTimer = v4;

  [(PSSpecifierDataSource *)self performUpdatesAnimated:0 usingBlock:&__block_literal_global_701];
}

- (void)simStatusChangedToReady
{
  v3 = [(PSSpecifierDataSource *)self specifierForID:@"CellularDataAddress"];
  if (v3)
  {
    _myNumber = [(PSGAboutDataSource *)self _myNumber];
    [v3 setProperty:_myNumber forKey:*MEMORY[0x277D401A8]];

    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __45__PSGAboutDataSource_simStatusChangedToReady__block_invoke;
    v5[3] = &unk_278324FE8;
    v5[4] = self;
    v6 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }
}

void __45__PSGAboutDataSource_simStatusChangedToReady__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __45__PSGAboutDataSource_simStatusChangedToReady__block_invoke_2;
  v2[3] = &unk_278324F08;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 performUpdatesAnimated:0 usingBlock:v2];
}

- (void)prlVersionChanged:(id)changed
{
  v22 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  userInfo = [changedCopy userInfo];

  if (userInfo)
  {
    userInfo2 = [changedCopy userInfo];
    v7 = [userInfo2 objectForKey:@"SubscriptionContext"];

    v8 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "slotID")}];
    [(PSGAboutDataSource *)self prlVersionChangedForSlot:v8];
  }

  else
  {
    mEMORY[0x277D4D868] = [MEMORY[0x277D4D868] sharedInstance];
    subscriptionContexts = [mEMORY[0x277D4D868] subscriptionContexts];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = subscriptionContexts;
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(*(&v17 + 1) + 8 * v15), "slotID", v17)}];
          [(PSGAboutDataSource *)self prlVersionChangedForSlot:v16];

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }
  }
}

- (void)prlVersionChangedForSlot:(id)slot
{
  slotCopy = slot;
  v5 = [(NSMutableDictionary *)self->_carrierCellState objectForKeyedSubscript:slotCopy];
  intValue = [v5 intValue];

  if (intValue == 1)
  {
    v7 = [(PSGAboutDataSource *)self getCarrierSpecifierForSlot:slotCopy];
    v8 = v7;
    if (v7)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __47__PSGAboutDataSource_prlVersionChangedForSlot___block_invoke;
      v9[3] = &unk_278324FE8;
      v9[4] = self;
      v10 = v7;
      dispatch_async(MEMORY[0x277D85CD0], v9);
    }
  }
}

void __47__PSGAboutDataSource_prlVersionChangedForSlot___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __47__PSGAboutDataSource_prlVersionChangedForSlot___block_invoke_2;
  v2[3] = &unk_278324F08;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 performUpdatesAnimated:0 usingBlock:v2];
}

- (id)getCarrierSpecifierForSlot:(id)slot
{
  slot = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"CARRIER_VERSION", slot];
  v5 = [(PSSpecifierDataSource *)self specifierForID:slot];

  return v5;
}

- (PSGAboutDataSource)init
{
  v21.receiver = self;
  v21.super_class = PSGAboutDataSource;
  v2 = [(PSSpecifierDataSource *)&v21 init];
  v3 = v2;
  if (v2)
  {
    v4 = PSG_BundleForGeneralSettingsUIFramework(v2);
    v5 = [v4 localizedStringForKey:@"LOADING" value:&stru_282E88A90 table:0];
    loading = v3->_loading;
    v3->_loading = v5;

    bootstrapIccid = v3->_bootstrapIccid;
    v3->_bootstrapIccid = 0;

    v8 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    lock = v3->_lock;
    v3->_lock = v8;

    [(NSLock *)v3->_lock setName:@"AboutController"];
    mEMORY[0x277CC5FB0] = [MEMORY[0x277CC5FB0] sharedAccessoryManager];
    [mEMORY[0x277CC5FB0] registerForLocalNotifications];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, HostRenamedDevice, *MEMORY[0x277D82A10], 0, CFNotificationSuspensionBehaviorCoalesce);
    v12 = objc_alloc_init(MEMORY[0x277CC37B0]);
    client = v3->__client;
    v3->__client = v12;

    [(CoreTelephonyClient *)v3->__client setDelegate:v3];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__accessoryDidUpdate_ name:*MEMORY[0x277CC5E88] object:0];
    [defaultCenter addObserver:v3 selector:sel__accessoryDidUpdate_ name:*MEMORY[0x277CC5EA0] object:0];
    [defaultCenter addObserver:v3 selector:sel__accessoryDidUpdate_ name:*MEMORY[0x277CC5E90] object:0];
    [defaultCenter addObserver:v3 selector:sel__accessoryDidUpdate_ name:*MEMORY[0x277CC5EB0] object:0];
    [defaultCenter addObserver:v3 selector:sel__accessoryDidUpdate_ name:*MEMORY[0x277CC5EC8] object:0];
    [defaultCenter addObserver:v3 selector:sel__accessoryDidUpdate_ name:*MEMORY[0x277CC5EB8] object:0];
    [defaultCenter addObserver:v3 selector:sel__accessoryDidUpdate_ name:*MEMORY[0x277CC5EC0] object:0];
    [defaultCenter addObserver:v3 selector:sel_mediaLibraryDidChange_ name:*MEMORY[0x277CD58D8] object:0];
    [defaultCenter addObserver:v3 selector:sel_simStatusChangedToReady name:*MEMORY[0x277D4D890] object:0];
    [defaultCenter addObserver:v3 selector:sel_mediaLibraryDidChange_ name:@"PSPhotoVideoCountChange" object:0];
    [defaultCenter addObserver:v3 selector:sel_prlVersionChanged_ name:*MEMORY[0x277D4D8E0] object:0];
    v15 = ALRegisterForPhotosAndVideosCount();
    photoVideoNotificationToken = v3->_photoVideoNotificationToken;
    v3->_photoVideoNotificationToken = v15;

    mEMORY[0x277CC5FB0]2 = [MEMORY[0x277CC5FB0] sharedAccessoryManager];
    [mEMORY[0x277CC5FB0]2 startIPAccessoryDiscovery];

    mEMORY[0x277D2D0F8] = [MEMORY[0x277D2D0F8] sharedController];
    [(PSGAboutDataSource *)v3 setSharedNDOController:mEMORY[0x277D2D0F8]];

    if (objc_opt_class())
    {
      mEMORY[0x277D01058] = [MEMORY[0x277D01058] sharedInstance];
      [(PSGAboutDataSource *)v3 setSystemHealthUIClient:mEMORY[0x277D01058]];
    }
  }

  return v3;
}

void __26__PSGAboutDataSource_init__block_invoke()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"PSPhotoVideoCountChange" object:0];
}

- (void)dealloc
{
  mEMORY[0x277CC5FB0] = [MEMORY[0x277CC5FB0] sharedAccessoryManager];
  [mEMORY[0x277CC5FB0] stopIPAccessoryDiscovery];

  [(NSTimer *)self->_reloadTimer invalidate];
  [(PSGAboutDataSource *)self enableMLUpdates:0];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  self->_cancel = 1;
  [(NSLock *)self->_lock lock];
  [(NSLock *)self->_lock unlock];
  mEMORY[0x277CC5FB0]2 = [MEMORY[0x277CC5FB0] sharedAccessoryManager];
  [mEMORY[0x277CC5FB0]2 unregisterForLocalNotifications];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  ALUnregisterForPhotosAndVideosCount();
  v7.receiver = self;
  v7.super_class = PSGAboutDataSource;
  [(PSGAboutDataSource *)&v7 dealloc];
}

- (void)_accessoryDidUpdate:(id)update
{
  updateCopy = update;
  if (![MEMORY[0x277CCACC8] isMainThread])
  {
    objc_initWeak(&location, self);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __42__PSGAboutDataSource__accessoryDidUpdate___block_invoke_2;
    v25[3] = &unk_278325038;
    objc_copyWeak(&v27, &location);
    v26 = updateCopy;
    dispatch_async(MEMORY[0x277D85CD0], v25);

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
    goto LABEL_18;
  }

  userInfo = [updateCopy userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x277CC5E98]];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "connectionID")}];
  v8 = objc_alloc_init(MEMORY[0x277CCAB68]);
  bonjourName = [v6 bonjourName];
  v10 = [bonjourName length];

  if (v10)
  {
    bonjourName2 = [v6 bonjourName];
LABEL_7:
    v14 = bonjourName2;
    goto LABEL_8;
  }

  name = [v6 name];
  v13 = [name length];

  if (v13)
  {
    bonjourName2 = [v6 name];
    goto LABEL_7;
  }

  v14 = 0;
LABEL_8:
  if (![v14 length] || (objc_msgSend(v8, "setString:", v14), objc_msgSend(v8, "appendString:", @"_ACCESSORY"), -[PSSpecifierDataSource specifierForID:](self, "specifierForID:", v8), (v15 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    stringValue = [v7 stringValue];
    [v8 setString:stringValue];

    [v8 appendString:@"_ACCESSORY"];
    v15 = [(PSSpecifierDataSource *)self specifierForID:v8];
  }

  if (_shouldShowAccessoryInfo(v6))
  {
    name2 = [updateCopy name];
    if ([name2 isEqualToString:*MEMORY[0x277CC5E90]])
    {
      name3 = [updateCopy name];
      v19 = [name3 isEqualToString:*MEMORY[0x277CC5EC8]] ^ 1;
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __42__PSGAboutDataSource__accessoryDidUpdate___block_invoke;
  v29[3] = &unk_278325010;
  v36 = v19;
  v30 = v15;
  v31 = v14;
  selfCopy = self;
  v33 = v6;
  v34 = v8;
  v35 = v7;
  v20 = v7;
  v21 = v8;
  v22 = v6;
  v23 = v14;
  v24 = v15;
  [(PSSpecifierDataSource *)self performUpdatesAnimated:1 usingBlock:v29];

LABEL_18:
}

void __42__PSGAboutDataSource__accessoryDidUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v19 = v3;
  if (*(a1 + 32))
  {
    [v3 removeSpecifier:?];
    v3 = v19;
  }

  if (*(a1 + 80) == 1)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v6 = PSG_BundleForGeneralSettingsUIFramework(v3);
      v5 = [v6 localizedStringForKey:@"ACCESSORY" value:&stru_282E88A90 table:0];
    }

    v7 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v5 target:*(a1 + 48) set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
    v8 = v7;
    if (*(a1 + 56))
    {
      [v7 setUserInfo:?];
      v9 = *(a1 + 56);
    }

    else
    {
      v9 = 0;
    }

    v10 = [v9 bonjourName];
    v11 = [v10 length];

    if (v11)
    {
      v14 = *(a1 + 64);
      v12 = (a1 + 64);
      v13 = v14;
      v15 = [*(v12 - 1) bonjourName];
    }

    else
    {
      if (![*(a1 + 72) intValue])
      {
LABEL_15:
        v18 = [v19 specifierForID:@"HARDWARE_GROUP"];
        [v19 appendSpecifier:v8 toGroup:v18];

        v3 = v19;
        goto LABEL_16;
      }

      v13 = *(a1 + 64);
      v16 = *(a1 + 72);
      v12 = (a1 + 64);
      v15 = [v16 stringValue];
    }

    v17 = v15;
    [v13 setString:v15];

    [*v12 appendString:@"_ACCESSORY"];
    [v8 setIdentifier:*v12];
    goto LABEL_15;
  }

LABEL_16:
}

void __42__PSGAboutDataSource__accessoryDidUpdate___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _accessoryDidUpdate:*(a1 + 32)];
}

- (void)carrierBundleChange:(id)change
{
  changeCopy = change;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    [(PSGAboutDataSource *)self reloadSpecifiers];
  }

  else
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __42__PSGAboutDataSource_carrierBundleChange___block_invoke;
    v5[3] = &unk_278324FE8;
    v5[4] = self;
    v6 = changeCopy;
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }
}

void __50__PSGAboutDataSource_getAPFSCurrentUserVolumeNode__block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_21CF20000, v0, OS_LOG_TYPE_ERROR, "%s error fetching current user volume: %d", v1, 0x12u);
}

@end