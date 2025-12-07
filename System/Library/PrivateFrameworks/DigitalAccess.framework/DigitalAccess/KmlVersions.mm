@interface KmlVersions
- (KmlVersions)initWithEndpoint:(id)endpoint downgradeFrameworkSetting:(id)setting;
- (_DAVersionUpgrade)hasUpgradeForVersionType:(SEL)type versions:(unint64_t)versions isOwnerPairedKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)generateKmlSupportedVehicleServerVersionsData;
- (id)getAgreedBluetoothVersionsTlv;
- (id)getVehicleSupportedVersionsData;
- (id)ourSupportedFrameworkVersionsAsCAString;
- (id)updateSupportedFrameworkVersionsForSharing:(id)sharing;
- (id)updateVehicleServerSupportedVersions:(id)versions;
- (id)updateVehicleSupportedAppletVersions:(id)versions;
- (id)updateVehicleSupportedBluetoothVersions:(id)versions;
- (id)updateVehicleSupportedFrameworkVersions:(id)versions;
- (uint64_t)generateFrameworkSupportedSharingVersions;
- (uint64_t)getAppletSupportedVersionForValue:(uint64_t)value;
- (uint64_t)getKmlSupportedVersionForValue:(uint64_t)value;
- (uint64_t)getVehicleServerSupportedVersionForValue:(uint64_t)value;
- (void)downgradePreferredVersion;
- (void)downgradePreferredVersion_internal;
- (void)generateAllData;
- (void)generateAppletSupportedVersions;
- (void)generateFrameworkSupportedPairingVersions;
- (void)parseVehicleSupportedVersions;
- (void)upgradeForVersionType:(unint64_t)type version:(unint64_t)version;
@end

@implementation KmlVersions

- (KmlVersions)initWithEndpoint:(id)endpoint downgradeFrameworkSetting:(id)setting
{
  endpointCopy = endpoint;
  v32.receiver = self;
  v32.super_class = KmlVersions;
  v8 = [(KmlVersions *)&v32 init];
  if (v8)
  {
    v10 = objc_opt_new();
    v8->_downgradeFrameworkVersion = [v10 defaultBoolValueForSetting:2];
    v8->_upgradeEnabledForFriendKey = [v10 defaultBoolValueForSetting:5];
    v8->_upgradeEnabledForOwnerKey = [v10 defaultBoolValueForSetting:6];
    objc_storeStrong(&v8->_endpoint, endpoint);
    endpoint = v8->_endpoint;
    if (endpoint)
    {
      readerInfo = [(SEEndPoint *)endpoint readerInfo];
      v13 = [objc_alloc(MEMORY[0x277D82418]) initWithReaderInformation:readerInfo];
      v14 = v13;
      if (!setting)
      {
        manufacturer = [v13 manufacturer];
        brand = [v14 brand];
        readerConfigID = [(SEEndPoint *)v8->_endpoint readerConfigID];
        v8->_downgradeFrameworkVersion = [v10 BOOLValueForSetting:2 manufacturer:manufacturer brand:brand uuid:readerConfigID error:0];
      }

      manufacturer2 = [v14 manufacturer];
      brand2 = [v14 brand];
      readerConfigID2 = [(SEEndPoint *)v8->_endpoint readerConfigID];
      v8->_upgradeEnabledForFriendKey = [v10 BOOLValueForSetting:5 manufacturer:manufacturer2 brand:brand2 uuid:readerConfigID2 error:0];

      manufacturer3 = [v14 manufacturer];
      brand3 = [v14 brand];
      readerConfigID3 = [(SEEndPoint *)v8->_endpoint readerConfigID];
      v8->_upgradeEnabledForOwnerKey = [v10 BOOLValueForSetting:6 manufacturer:manufacturer3 brand:brand3 uuid:readerConfigID3 error:0];
    }

    v24 = +[KmlVersionOverride sharedVersionsOverrides];
    v8->_keyRoleToShare = [v24 keyRoleToShare];
    useAppletVersionsForCertificationTesting = [v10 useAppletVersionsForCertificationTesting];
    v26 = &unk_285B9CDF0;
    appletSupportedVersionsList = v8->_appletSupportedVersionsList;
    if (useAppletVersionsForCertificationTesting)
    {
      v26 = &unk_285B9CDD8;
    }

    v8->_appletSupportedVersionsList = v26;

    v8->_agreedKmlSharingVersion = 256;
    if ([v24 kmlOverrideVersion] == 768 && !v8->_downgradeFrameworkVersion)
    {
      kmlSupportedVersionsList = v8->_kmlSupportedVersionsList;
      v8->_kmlSupportedVersionsList = &unk_285B9CE08;

      kmlUpgradeReadyVersionsList = v8->_kmlUpgradeReadyVersionsList;
      v8->_kmlUpgradeReadyVersionsList = &unk_285B9CE20;

      v8->_ourPreferredKmlVersion = 768;
      kmlSupportedVehicleServerVersionsList = v8->_kmlSupportedVehicleServerVersionsList;
      v8->_kmlSupportedVehicleServerVersionsList = &unk_285B9CE38;

      vehicleServerVersionsUpgradeReadyList = v8->_vehicleServerVersionsUpgradeReadyList;
      v8->_vehicleServerVersionsUpgradeReadyList = &unk_285B9CE50;

      v8->_ourPreferredVehicleServerVersion = 768;
    }

    else
    {
      [(KmlVersions *)v8 downgradePreferredVersion_internal];
    }

    [(KmlVersions *)v8 generateAllData];
  }

  return v8;
}

- (id)description
{
  string = [MEMORY[0x277CCAB68] string];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"VehicleSupportedFrameworkVersions   : %@\n", self->_vehicleSupportedFrameworkVersionsTlvAsData];
  [string appendString:v4];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"VehicleSupportedAppletVersions      : %@\n", self->_vehicleSupportedAppletVersionsTlvAsData];
  [string appendString:v5];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"VehicleSupportedBTVersions          : %@\n", self->_vehicleSupportedBluetoothVersionsTlvAsData];
  [string appendString:v6];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"PreferredFrameworkVersion           : 0x%02X\n", self->_ourPreferredKmlVersion];
  [string appendString:v7];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"AgreedFrameworkVersion              : 0x%02X\n", self->_agreedKmlVehicleVersion];
  [string appendString:v8];

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"AgreedAppletVersion                 : 0x%02X\n", self->_agreedAppletVehicleVersion];
  [string appendString:v9];

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"AgreedSharingFrameworkVersion       : 0x%02X\n", self->_agreedKmlSharingVersion];
  [string appendString:v10];

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"AgreedVehicleServerVersion          : 0x%02X\n", self->_agreedKmlVehicleServerVersion];
  [string appendString:v11];

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"AgreedBluetoothVersion              : 0x%02X\n", self->_agreedKmlBluetoothVersion];
  [string appendString:v12];

  return string;
}

- (void)downgradePreferredVersion
{
  if (self)
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_248BF3000, v5, v6, "%s : %i : Let's downgrade to v1", v7, v8, v9, v10);
  }

  *(a3 + 18) = 1;
  [(KmlVersions *)a3 downgradePreferredVersion_internal];
  [(KmlVersions *)a3 generateAllData];
}

- (id)updateVehicleServerSupportedVersions:(id)versions
{
  v26[1] = *MEMORY[0x277D85DE8];
  versionsCopy = versions;
  if ([versionsCopy length])
  {
    [KmlTlv TLVsWithData:versionsCopy];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = v21 = 0u;
    value = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (value)
    {
      v7 = *v19;
      while (2)
      {
        for (i = 0; i != value; i = i + 1)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          if ([v9 tag] == 93)
          {
            value = [v9 value];
            goto LABEL_12;
          }
        }

        value = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
        if (value)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    if ([value length] > 1)
    {
      [value bytes];
      v14 = 0;
      self->_agreedKmlVehicleServerVersion = [KmlVersions getVehicleServerSupportedVersionForValue:?];
    }

    else
    {
      v10 = MEMORY[0x277CCA9B8];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"com.apple.sesd.kml.pairing"];
      v22 = *MEMORY[0x277CCA450];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:KmlErrorString(22)];
      v23 = v12;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v14 = [v10 errorWithDomain:v11 code:22 userInfo:v13];
    }
  }

  else
  {
    v15 = MEMORY[0x277CCA9B8];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    v25 = *MEMORY[0x277CCA450];
    value = [MEMORY[0x277CCACA8] stringWithUTF8String:KmlErrorString(22)];
    v26[0] = value;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v14 = [v15 errorWithDomain:v5 code:22 userInfo:v16];
  }

  return v14;
}

- (id)updateVehicleSupportedAppletVersions:(id)versions
{
  v35[1] = *MEMORY[0x277D85DE8];
  versionsCopy = versions;
  if (![versionsCopy length])
  {
    v18 = MEMORY[0x277CCA9B8];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    v34 = *MEMORY[0x277CCA450];
    value = [MEMORY[0x277CCACA8] stringWithUTF8String:KmlErrorString(22)];
    v35[0] = value;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v17 = [v18 errorWithDomain:v5 code:22 userInfo:v14];
    goto LABEL_16;
  }

  [KmlTlv TLVsWithData:versionsCopy];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = v26 = 0u;
  value = [v5 countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (value)
  {
    v7 = *v24;
    while (2)
    {
      for (i = 0; i != value; i = i + 1)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        if ([v9 tag] == 92)
        {
          value = [v9 value];
          asData = [v9 asData];
          vehicleSupportedAppletVersionsTlvAsData = self->_vehicleSupportedAppletVersionsTlvAsData;
          self->_vehicleSupportedAppletVersionsTlvAsData = asData;

          goto LABEL_12;
        }
      }

      value = [v5 countByEnumeratingWithState:&v23 objects:v33 count:16];
      if (value)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  if ([value length] <= 1)
  {
    v12 = self->_vehicleSupportedAppletVersionsTlvAsData;
    self->_vehicleSupportedAppletVersionsTlvAsData = 0;

    v13 = MEMORY[0x277CCA9B8];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    v31 = *MEMORY[0x277CCA450];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:KmlErrorString(22)];
    v32 = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v17 = [v13 errorWithDomain:v14 code:22 userInfo:v16];

LABEL_14:
LABEL_16:

    goto LABEL_17;
  }

  [value bytes];
  v20 = [KmlVersions getAppletSupportedVersionForValue:?];
  self->_agreedAppletVehicleVersion = v20;
  if (!v20)
  {
    v21 = KmlLogger(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v28 = "[KmlVersions updateVehicleSupportedAppletVersions:]";
      v29 = 1024;
      v30 = 270;
      _os_log_impl(&dword_248BF3000, v21, OS_LOG_TYPE_INFO, "%s : %i : Treating unknown vehicle applet version as v1", buf, 0x12u);
    }

    self->_agreedAppletVehicleVersion = 256;
    v14 = [KmlTlv TLVWithTag:92 unsignedShort:256];
    asData2 = [v14 asData];
    v17 = 0;
    v15 = self->_vehicleSupportedAppletVersionsTlvAsData;
    self->_vehicleSupportedAppletVersionsTlvAsData = asData2;
    goto LABEL_14;
  }

  v17 = 0;
LABEL_17:

  return v17;
}

- (id)updateVehicleSupportedFrameworkVersions:(id)versions
{
  v42[1] = *MEMORY[0x277D85DE8];
  versionsCopy = versions;
  if ([versionsCopy length])
  {
    [KmlTlv TLVsWithData:versionsCopy];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v5 = v33 = 0u;
    value = [v5 countByEnumeratingWithState:&v30 objects:v40 count:16];
    if (value)
    {
      v7 = *v31;
      while (2)
      {
        for (i = 0; i != value; i = i + 1)
        {
          if (*v31 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v30 + 1) + 8 * i);
          if ([v9 tag] == 91)
          {
            value = [v9 value];
            asData = [v9 asData];
            vehicleSupportedFrameworkVersionsTlvAsData = self->_vehicleSupportedFrameworkVersionsTlvAsData;
            self->_vehicleSupportedFrameworkVersionsTlvAsData = asData;

            goto LABEL_12;
          }
        }

        value = [v5 countByEnumeratingWithState:&v30 objects:v40 count:16];
        if (value)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    if ([value length] > 1)
    {
      string = [MEMORY[0x277CCAB68] string];
      bytes = [value bytes];
      agreedKmlVehicleVersion = [KmlVersions getKmlSupportedVersionForValue:?];
      self->_agreedKmlVehicleVersion = agreedKmlVehicleVersion;
      if (!agreedKmlVehicleVersion)
      {
        v24 = KmlLogger(agreedKmlVehicleVersion);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v35 = "[KmlVersions updateVehicleSupportedFrameworkVersions:]";
          v36 = 1024;
          v37 = 308;
          _os_log_impl(&dword_248BF3000, v24, OS_LOG_TYPE_INFO, "%s : %i : Treating unknown vehicle version as v1", buf, 0x12u);
        }

        self->_agreedKmlVehicleVersion = 256;
        v25 = [KmlTlv TLVWithTag:91 unsignedShort:256];
        asData2 = [v25 asData];
        v27 = self->_vehicleSupportedFrameworkVersionsTlvAsData;
        self->_vehicleSupportedFrameworkVersionsTlvAsData = asData2;

        agreedKmlVehicleVersion = self->_agreedKmlVehicleVersion;
      }

      [string appendFormat:@"%04X", agreedKmlVehicleVersion];
      if ([value length] >= 4)
      {
        [string appendFormat:@", %04X", __rev16(*(bytes + 2))];
      }

      vehicleSupportedFrameworkVersionsForCA = self->_vehicleSupportedFrameworkVersionsForCA;
      self->_vehicleSupportedFrameworkVersionsForCA = string;
      v29 = string;

      LODWORD(vehicleSupportedFrameworkVersionsForCA) = [KmlVersions doesVersion:self->_agreedKmlVehicleVersion support:768];
      if (vehicleSupportedFrameworkVersionsForCA)
      {
        self->_agreedKmlVehicleServerVersion = 768;
      }

      [(KmlVersions *)self generateFrameworkSupportedSharingVersions];
      v17 = 0;
    }

    else
    {
      v12 = self->_vehicleSupportedFrameworkVersionsTlvAsData;
      self->_vehicleSupportedFrameworkVersionsTlvAsData = 0;

      v13 = MEMORY[0x277CCA9B8];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"com.apple.sesd.kml.pairing"];
      v38 = *MEMORY[0x277CCA450];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:KmlErrorString(22)];
      v39 = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      v17 = [v13 errorWithDomain:v14 code:22 userInfo:v16];
    }
  }

  else
  {
    v18 = MEMORY[0x277CCA9B8];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    v41 = *MEMORY[0x277CCA450];
    value = [MEMORY[0x277CCACA8] stringWithUTF8String:KmlErrorString(22)];
    v42[0] = value;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:&v41 count:1];
    v17 = [v18 errorWithDomain:v5 code:22 userInfo:v19];
  }

  return v17;
}

- (id)updateSupportedFrameworkVersionsForSharing:(id)sharing
{
  v40[1] = *MEMORY[0x277D85DE8];
  sharingCopy = sharing;
  v5 = [sharingCopy length];
  if (v5)
  {
    v6 = KmlLogger(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v34 = "[KmlVersions updateSupportedFrameworkVersionsForSharing:]";
      v35 = 1024;
      v36 = 339;
      v37 = 2112;
      v38 = sharingCopy;
      _os_log_impl(&dword_248BF3000, v6, OS_LOG_TYPE_INFO, "%s : %i : versionData: %@", buf, 0x1Cu);
    }

    [KmlTlv TLVsWithData:sharingCopy];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = v29 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v27;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v26 + 1) + 8 * i);
          if ([v12 tag] == 84 || objc_msgSend(v12, "tag") == 85)
          {
            value = [v12 value];
            goto LABEL_17;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v26 objects:v32 count:16];
        value = 0;
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      value = 0;
    }

LABEL_17:

    if ([value length] > 1)
    {
      [value bytes];
      v22 = [KmlVersions getKmlSupportedVersionForValue:?];
      self->_agreedKmlSharingVersion = v22;
      if (v22)
      {
        goto LABEL_26;
      }

      v23 = KmlLogger(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v34 = "[KmlVersions updateSupportedFrameworkVersionsForSharing:]";
        v35 = 1024;
        v36 = 360;
        _os_log_impl(&dword_248BF3000, v23, OS_LOG_TYPE_INFO, "%s : %i : Treating unknown sharing version as v1 for sharing", buf, 0x12u);
      }

      self->_agreedKmlSharingVersion = 256;
      if (self->_agreedKmlVehicleVersion)
      {
LABEL_26:
        v16 = 0;
      }

      else
      {
        v25 = KmlLogger(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v34 = "[KmlVersions updateSupportedFrameworkVersionsForSharing:]";
          v35 = 1024;
          v36 = 363;
          _os_log_impl(&dword_248BF3000, v25, OS_LOG_TYPE_INFO, "%s : %i : Sync agreed vehicle version to v1", buf, 0x12u);
        }

        v16 = 0;
        self->_agreedKmlVehicleVersion = 256;
      }
    }

    else
    {
      v17 = MEMORY[0x277CCA9B8];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"com.apple.sesd.kml.pairing"];
      v30 = *MEMORY[0x277CCA450];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:KmlErrorString(22)];
      v31 = v19;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v16 = [v17 errorWithDomain:v18 code:22 userInfo:v20];
    }
  }

  else
  {
    v14 = MEMORY[0x277CCA9B8];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    v39 = *MEMORY[0x277CCA450];
    value = [MEMORY[0x277CCACA8] stringWithUTF8String:KmlErrorString(22)];
    v40[0] = value;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    v16 = [v14 errorWithDomain:v7 code:22 userInfo:v15];
  }

  return v16;
}

- (id)updateVehicleSupportedBluetoothVersions:(id)versions
{
  v29[1] = *MEMORY[0x277D85DE8];
  versionsCopy = versions;
  if ([versionsCopy length])
  {
    [KmlTlv TLVsWithData:versionsCopy];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = v24 = 0u;
    value = [v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (value)
    {
      v7 = *v22;
      while (2)
      {
        for (i = 0; i != value; i = i + 1)
        {
          if (*v22 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v21 + 1) + 8 * i);
          if ([v9 tag] == 94)
          {
            value = [v9 value];
            asData = [v9 asData];
            vehicleSupportedBluetoothVersionsTlvAsData = self->_vehicleSupportedBluetoothVersionsTlvAsData;
            self->_vehicleSupportedBluetoothVersionsTlvAsData = asData;

            goto LABEL_12;
          }
        }

        value = [v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
        if (value)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    if ([value length] > 1)
    {
      v17 = 0;
      self->_agreedKmlBluetoothVersion = 256;
    }

    else
    {
      v12 = self->_vehicleSupportedBluetoothVersionsTlvAsData;
      self->_vehicleSupportedBluetoothVersionsTlvAsData = 0;

      v13 = MEMORY[0x277CCA9B8];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"com.apple.sesd.kml.pairing"];
      v25 = *MEMORY[0x277CCA450];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:KmlErrorString(22)];
      v26 = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v17 = [v13 errorWithDomain:v14 code:22 userInfo:v16];
    }
  }

  else
  {
    v18 = MEMORY[0x277CCA9B8];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    v28 = *MEMORY[0x277CCA450];
    value = [MEMORY[0x277CCACA8] stringWithUTF8String:KmlErrorString(22)];
    v29[0] = value;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v17 = [v18 errorWithDomain:v5 code:22 userInfo:v19];
  }

  return v17;
}

- (id)getVehicleSupportedVersionsData
{
  data = [MEMORY[0x277CBEB28] data];
  v4 = data;
  if (self->_vehicleSupportedFrameworkVersionsTlvAsData)
  {
    [data appendData:?];
  }

  if (self->_vehicleSupportedAppletVersionsTlvAsData)
  {
    [v4 appendData:?];
  }

  generateKmlSupportedVehicleServerVersionsData = [(KmlVersions *)self generateKmlSupportedVehicleServerVersionsData];
  [v4 appendData:generateKmlSupportedVehicleServerVersionsData];

  if ([(NSData *)self->_vehicleSupportedBluetoothVersionsTlvAsData length])
  {
    [v4 appendData:self->_vehicleSupportedBluetoothVersionsTlvAsData];
  }

  if ([v4 length])
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)getAgreedBluetoothVersionsTlv
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->_agreedKmlBluetoothVersion)
  {
    v2 = [KmlTlv TLVWithTag:95 unsignedShort:?];
  }

  else
  {
    v3 = KmlLogger(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 136315394;
      v6 = "[KmlVersions getAgreedBluetoothVersionsTlv]";
      v7 = 1024;
      v8 = 435;
      _os_log_impl(&dword_248BF3000, v3, OS_LOG_TYPE_INFO, "%s : %i : Vehicle never provided a supported versiosn list", &v5, 0x12u);
    }

    v2 = 0;
  }

  return v2;
}

- (id)ourSupportedFrameworkVersionsAsCAString
{
  v15 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_kmlSupportedVersionsList;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [string appendFormat:@"%04X, ", objc_msgSend(*(*(&v10 + 1) + 8 * i), "unsignedShortValue")];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return string;
}

- (_DAVersionUpgrade)hasUpgradeForVersionType:(SEL)type versions:(unint64_t)versions isOwnerPairedKey:(id)key
{
  v6 = a6;
  v63 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  string = [MEMORY[0x277CCAB68] string];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v11 = keyCopy;
  v12 = [v11 countByEnumeratingWithState:&v50 objects:v62 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v51;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v51 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [string appendFormat:@"0x%04lx, ", objc_msgSend(*(*(&v50 + 1) + 8 * i), "longValue")];
      }

      v13 = [v11 countByEnumeratingWithState:&v50 objects:v62 count:16];
    }

    while (v13);
  }

  v17 = KmlLogger(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v56 = "[KmlVersions hasUpgradeForVersionType:versions:isOwnerPairedKey:]";
    v57 = 1024;
    v58 = 471;
    v59 = 2112;
    *v60 = string;
    _os_log_impl(&dword_248BF3000, v17, OS_LOG_TYPE_INFO, "%s : %i : Requested Versions = { %@ }", buf, 0x1Cu);
  }

  retstr->var2 = 0;
  p_var2 = &retstr->var2;
  retstr->var0 = versions;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  if (v6)
  {
    if (!self->_upgradeEnabledForOwnerKey)
    {
      v20 = KmlLogger(v18);
      if (os_log_type_enabled(&v20->super, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v56 = "[KmlVersions hasUpgradeForVersionType:versions:isOwnerPairedKey:]";
        v57 = 1024;
        v58 = 477;
        v21 = "%s : %i : Upgrade disabled for owner paired key by settings";
LABEL_33:
        _os_log_impl(&dword_248BF3000, &v20->super, OS_LOG_TYPE_INFO, v21, buf, 0x12u);
        goto LABEL_54;
      }

      goto LABEL_54;
    }
  }

  else if (!self->_upgradeEnabledForFriendKey)
  {
    v20 = KmlLogger(v18);
    if (os_log_type_enabled(&v20->super, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v56 = "[KmlVersions hasUpgradeForVersionType:versions:isOwnerPairedKey:]";
      v57 = 1024;
      v58 = 480;
      v21 = "%s : %i : Upgrade disabled for friend key by settings";
      goto LABEL_33;
    }

LABEL_54:

    goto LABEL_55;
  }

  if (versions == 2)
  {
    *p_var2 = self->_agreedKmlVehicleServerVersion;
    v31 = KmlLogger(v18);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v56 = "[KmlVersions hasUpgradeForVersionType:versions:isOwnerPairedKey:]";
      v57 = 1024;
      v58 = 502;
      _os_log_impl(&dword_248BF3000, v31, OS_LOG_TYPE_INFO, "%s : %i : Looking for available upgrade of VehicleServer version", buf, 0x12u);
    }

    if (self->_ourPreferredVehicleServerVersion != self->_agreedKmlVehicleServerVersion)
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v20 = self->_vehicleServerVersionsUpgradeReadyList;
      v32 = [(NSArray *)v20 countByEnumeratingWithState:&v42 objects:v54 count:16];
      if (!v32)
      {
        goto LABEL_54;
      }

      v33 = v32;
      v34 = *v43;
LABEL_39:
      v35 = 0;
      while (1)
      {
        if (*v43 != v34)
        {
          objc_enumerationMutation(v20);
        }

        v27 = *(*(&v42 + 1) + 8 * v35);
        v36 = KmlLogger(v32);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          agreedKmlVehicleServerVersion = self->_agreedKmlVehicleServerVersion;
          longValue = [v27 longValue];
          *buf = 136315906;
          v56 = "[KmlVersions hasUpgradeForVersionType:versions:isOwnerPairedKey:]";
          v57 = 1024;
          v58 = 505;
          v59 = 1024;
          *v60 = agreedKmlVehicleServerVersion;
          *&v60[4] = 2048;
          *&v60[6] = longValue;
          _os_log_impl(&dword_248BF3000, v36, OS_LOG_TYPE_INFO, "%s : %i : Checking availability: VehicleServer upgrade from : 0x%04hx, to : 0x%04lx", buf, 0x22u);
        }

        v32 = [v11 containsObject:v27];
        if (v32)
        {
          break;
        }

        if (v33 == ++v35)
        {
          v32 = [(NSArray *)v20 countByEnumeratingWithState:&v42 objects:v54 count:16];
          v33 = v32;
          if (v32)
          {
            goto LABEL_39;
          }

          goto LABEL_54;
        }
      }

      v39 = KmlLogger(v32);
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        goto LABEL_53;
      }

      *buf = 136315394;
      v56 = "[KmlVersions hasUpgradeForVersionType:versions:isOwnerPairedKey:]";
      v57 = 1024;
      v58 = 507;
      goto LABEL_52;
    }
  }

  else if (!versions)
  {
    *p_var2 = self->_agreedKmlVehicleVersion;
    v22 = KmlLogger(v18);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v56 = "[KmlVersions hasUpgradeForVersionType:versions:isOwnerPairedKey:]";
      v57 = 1024;
      v58 = 487;
      _os_log_impl(&dword_248BF3000, v22, OS_LOG_TYPE_INFO, "%s : %i : Looking for available upgrade of Framework version", buf, 0x12u);
    }

    if (self->_ourPreferredKmlVersion != self->_agreedKmlVehicleVersion)
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v20 = self->_kmlUpgradeReadyVersionsList;
      v23 = [(NSArray *)v20 countByEnumeratingWithState:&v46 objects:v61 count:16];
      if (!v23)
      {
        goto LABEL_54;
      }

      v24 = v23;
      v25 = *v47;
LABEL_22:
      v26 = 0;
      while (1)
      {
        if (*v47 != v25)
        {
          objc_enumerationMutation(v20);
        }

        v27 = *(*(&v46 + 1) + 8 * v26);
        v28 = KmlLogger(v23);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          agreedKmlVehicleVersion = self->_agreedKmlVehicleVersion;
          longValue2 = [v27 longValue];
          *buf = 136315906;
          v56 = "[KmlVersions hasUpgradeForVersionType:versions:isOwnerPairedKey:]";
          v57 = 1024;
          v58 = 490;
          v59 = 1024;
          *v60 = agreedKmlVehicleVersion;
          *&v60[4] = 2048;
          *&v60[6] = longValue2;
          _os_log_impl(&dword_248BF3000, v28, OS_LOG_TYPE_INFO, "%s : %i : Checking availability: Framework upgrade from : 0x%04hx, to : 0x%04lx", buf, 0x22u);
        }

        v23 = [v11 containsObject:v27];
        if (v23)
        {
          break;
        }

        if (v24 == ++v26)
        {
          v23 = [(NSArray *)v20 countByEnumeratingWithState:&v46 objects:v61 count:16];
          v24 = v23;
          if (v23)
          {
            goto LABEL_22;
          }

          goto LABEL_54;
        }
      }

      v39 = KmlLogger(v23);
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        goto LABEL_53;
      }

      *buf = 136315394;
      v56 = "[KmlVersions hasUpgradeForVersionType:versions:isOwnerPairedKey:]";
      v57 = 1024;
      v58 = 492;
LABEL_52:
      _os_log_impl(&dword_248BF3000, v39, OS_LOG_TYPE_INFO, "%s : %i : Upgrade eligible", buf, 0x12u);
LABEL_53:

      retstr->var3 = [v27 longValue];
      retstr->var1 = 1;
      goto LABEL_54;
    }
  }

LABEL_55:

  return result;
}

- (void)upgradeForVersionType:(unint64_t)type version:(unint64_t)version
{
  v6 = *MEMORY[0x277D85DE8];
  if (type == 2)
  {
    self->_agreedKmlVehicleServerVersion = [KmlVersions getVehicleServerSupportedVersionForValue:?];
  }

  else if (!type)
  {
    [(KmlVersions *)version upgradeForVersionType:v4 version:v5];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[KmlVersions allocWithZone:](KmlVersions init];
  if (v5)
  {
    [(KmlVersions *)self copyWithZone:zone, v5];
  }

  return v5;
}

- (void)downgradePreferredVersion_internal
{
  if (self)
  {
    v2 = *(self + 96);
    *(self + 96) = &unk_285B9CE68;

    v3 = *(self + 104);
    *(self + 104) = &unk_285B9CE80;

    *(self + 20) = 256;
    v4 = *(self + 120);
    *(self + 120) = &unk_285B9CE98;

    v5 = *(self + 128);
    *(self + 128) = &unk_285B9CEB0;

    *(self + 28) = 256;
  }
}

- (void)generateAllData
{
  if (result)
  {
    [(KmlVersions *)result generateFrameworkSupportedPairingVersions];
    [(KmlVersions *)result generateFrameworkSupportedSharingVersions];
    [(KmlVersions *)result generateAppletSupportedVersions];

    [(KmlVersions *)result parseVehicleSupportedVersions];
  }
}

- (uint64_t)getVehicleServerSupportedVersionForValue:(uint64_t)value
{
  if (!value)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2();
  v4 = *(v3 + 120);
  OUTLINED_FUNCTION_0();
  if ([v5 countByEnumeratingWithState:? objects:? count:?])
  {
    OUTLINED_FUNCTION_4();
LABEL_4:
    v6 = 0;
    while (1)
    {
      OUTLINED_FUNCTION_3();
      if (!v7)
      {
        objc_enumerationMutation(v4);
      }

      if ([*(v9 + 8 * v6) unsignedShortValue] == v1)
      {
        break;
      }

      if (v2 == ++v6)
      {
        OUTLINED_FUNCTION_0();
        v2 = [v4 countByEnumeratingWithState:? objects:? count:?];
        if (v2)
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v1 = 768;
  }

  return v1;
}

- (uint64_t)getAppletSupportedVersionForValue:(uint64_t)value
{
  if (!value)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2();
  v4 = *(v3 + 112);
  OUTLINED_FUNCTION_0();
  if ([v5 countByEnumeratingWithState:? objects:? count:?])
  {
    OUTLINED_FUNCTION_4();
LABEL_4:
    v6 = 0;
    while (1)
    {
      OUTLINED_FUNCTION_3();
      if (!v7)
      {
        objc_enumerationMutation(v4);
      }

      if ([*(v9 + 8 * v6) unsignedShortValue] == v1)
      {
        break;
      }

      if (v2 == ++v6)
      {
        OUTLINED_FUNCTION_0();
        v2 = [v4 countByEnumeratingWithState:? objects:? count:?];
        if (v2)
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v1 = 0;
  }

  return v1;
}

- (uint64_t)getKmlSupportedVersionForValue:(uint64_t)value
{
  if (!value)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2();
  v4 = *(v3 + 96);
  OUTLINED_FUNCTION_0();
  if ([v5 countByEnumeratingWithState:? objects:? count:?])
  {
    OUTLINED_FUNCTION_4();
LABEL_4:
    v6 = 0;
    while (1)
    {
      OUTLINED_FUNCTION_3();
      if (!v7)
      {
        objc_enumerationMutation(v4);
      }

      if ([*(v9 + 8 * v6) unsignedShortValue] == v1)
      {
        break;
      }

      if (v2 == ++v6)
      {
        OUTLINED_FUNCTION_0();
        v2 = [v4 countByEnumeratingWithState:? objects:? count:?];
        if (v2)
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v1 = 0;
  }

  return v1;
}

- (uint64_t)generateFrameworkSupportedSharingVersions
{
  if (result)
  {
    v1 = result;
    *(v1 + 48) = [KmlTlv TLVWithTag:84 unsignedShort:*(result + 22)];

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (id)generateKmlSupportedVehicleServerVersionsData
{
  if (self)
  {
    v1 = [KmlTlv TLVWithTag:93 unsignedShort:*(self + 30)];
    asData = [v1 asData];
  }

  else
  {
    asData = 0;
  }

  return asData;
}

- (void)parseVehicleSupportedVersions
{
  v20 = *MEMORY[0x277D85DE8];
  if (self)
  {
    *(self + 22) = 256;
    *(self + 26) = 256;
    *(self + 30) = 256;
    v2 = *(self + 80);
    *(self + 80) = 0;

    v3 = *(self + 64);
    *(self + 64) = 0;

    v4 = *(self + 88);
    *(self + 88) = 0;

    v5 = *(self + 8);
    if (v5)
    {
      vehicleSupportedVersionsData = [v5 vehicleSupportedVersionsData];
      v7 = vehicleSupportedVersionsData;
      if (vehicleSupportedVersionsData && (vehicleSupportedVersionsData = [vehicleSupportedVersionsData length]) != 0)
      {
        v8 = [self updateVehicleSupportedFrameworkVersions:v7];
        v9 = [self updateVehicleSupportedAppletVersions:v7];
        v10 = [self updateVehicleServerSupportedVersions:v7];
      }

      else
      {
        v11 = KmlLogger(vehicleSupportedVersionsData);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          OUTLINED_FUNCTION_1();
          v19 = 578;
          OUTLINED_FUNCTION_6(&dword_248BF3000, v12, v13, "%s : %i : No vehicle supported versions data", v14, v15, v16, v17);
        }
      }
    }

    else
    {
      v7 = KmlLogger(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        OUTLINED_FUNCTION_1();
        v19 = 571;
        _os_log_impl(&dword_248BF3000, v7, OS_LOG_TYPE_INFO, "%s : %i : Endpoint not set", v18, 0x12u);
      }
    }
  }
}

- (void)generateFrameworkSupportedPairingVersions
{
  if (self)
  {
    [MEMORY[0x277CBEB28] data];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_5();
    v3 = *(self + 96);
    OUTLINED_FUNCTION_0();
    v5 = [v4 countByEnumeratingWithState:? objects:? count:?];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(v12 + 8 * i);
          if ([v9 unsignedShortValue] != 257)
          {
            [v1 appendU16BE:{objc_msgSend(v9, "unsignedShortValue")}];
          }
        }

        OUTLINED_FUNCTION_0();
        v6 = [v3 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v6);
    }

    v10 = [KmlTlv TLVWithTag:90 value:v1];
    v11 = *(self + 40);
    *(self + 40) = v10;
  }
}

- (void)generateAppletSupportedVersions
{
  if (self)
  {
    [MEMORY[0x277CBEB28] data];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_5();
    v3 = *(self + 112);
    OUTLINED_FUNCTION_0();
    v5 = [v4 countByEnumeratingWithState:? objects:? count:?];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v3);
          }

          [v1 appendU16BE:{objc_msgSend(*(v11 + 8 * v8++), "unsignedShortValue")}];
        }

        while (v6 != v8);
        OUTLINED_FUNCTION_0();
        v6 = [v3 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v6);
    }

    v9 = [KmlTlv TLVWithTag:92 value:v1];
    v10 = *(self + 56);
    *(self + 56) = v9;
  }
}

- (void)upgradeForVersionType:(uint64_t)a3 version:(uint64_t)a4 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 22) = [KmlVersions getKmlSupportedVersionForValue:a2];
  v7 = [MEMORY[0x277CBEB28] data];
  [v7 appendU16BE:*(a2 + 22)];
  v8 = [KmlTlv TLVsWithData:*(a2 + 80)];
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:a3 objects:a4 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = **(a3 + 16);
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (**(a3 + 16) != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(a3 + 8) + 8 * i);
        if ([v14 tag] == 91)
        {
          v15 = [v14 value];
          [v7 appendData:v15];

          goto LABEL_11;
        }
      }

      v11 = [v9 countByEnumeratingWithState:a3 objects:a4 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v16 = [KmlTlv TLVWithTag:91 value:v7];
  v17 = [v16 asData];
  v18 = *(a2 + 64);
  *(a2 + 64) = v17;

  [(KmlVersions *)a2 generateFrameworkSupportedSharingVersions];
}

- (void)copyWithZone:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 8) copyWithZone:a2];
  v7 = *(a3 + 8);
  *(a3 + 8) = v6;

  *(a3 + 16) = *(a1 + 16);
  *(a3 + 17) = *(a1 + 17);
  *(a3 + 18) = *(a1 + 18);
  v8 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:*(a1 + 96) copyItems:1];
  v9 = *(a3 + 96);
  *(a3 + 96) = v8;

  v10 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:*(a1 + 104) copyItems:1];
  v11 = *(a3 + 104);
  *(a3 + 104) = v10;

  v12 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:*(a1 + 112) copyItems:1];
  v13 = *(a3 + 112);
  *(a3 + 112) = v12;

  v14 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:*(a1 + 120) copyItems:1];
  v15 = *(a3 + 120);
  *(a3 + 120) = v14;

  v16 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:*(a1 + 128) copyItems:1];
  v17 = *(a3 + 128);
  *(a3 + 128) = v16;

  v18 = [*(a1 + 64) copyWithZone:a2];
  v19 = *(a3 + 64);
  *(a3 + 64) = v18;

  v20 = [*(a1 + 72) copyWithZone:a2];
  v21 = *(a3 + 72);
  *(a3 + 72) = v20;

  v22 = [*(a1 + 80) copyWithZone:a2];
  v23 = *(a3 + 80);
  *(a3 + 80) = v22;

  v24 = [*(a1 + 88) copyWithZone:a2];
  v25 = *(a3 + 88);
  *(a3 + 88) = v24;

  *(a3 + 20) = *(a1 + 20);
  *(a3 + 22) = *(a1 + 22);
  *(a3 + 24) = *(a1 + 24);
  *(a3 + 26) = *(a1 + 26);
  *(a3 + 28) = *(a1 + 28);
  *(a3 + 30) = *(a1 + 30);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 34) = *(a1 + 34);
  [(KmlVersions *)a3 generateFrameworkSupportedPairingVersions];
  [(KmlVersions *)a3 generateFrameworkSupportedSharingVersions];

  [(KmlVersions *)a3 generateAppletSupportedVersions];
}

@end