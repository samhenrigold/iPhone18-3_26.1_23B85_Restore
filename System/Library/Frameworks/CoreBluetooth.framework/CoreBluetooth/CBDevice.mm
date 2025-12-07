@interface CBDevice
+ (void)convertFromWHBEvent:(id)event;
+ (void)convertToWHBEvent:(id)event;
+ (void)updateRemoteReceivedEvent:(id)event withDeviceKey:(id)key withCBXPCKey:(id)cKey;
+ (void)updateRemoteSendEvent:(id)event fromDeviceInfo:(id)info withDeviceKey:(id)key withCBXPCKey:(id)cKey;
- (BOOL)_matchingFlags:(id)flags exactMatch:(BOOL)match;
- (BOOL)_parseProximityPairingBattery1:(const char *)battery1;
- (BOOL)_parseProximityPairingBattery2:(const char *)battery2;
- (BOOL)_parseProximityPairingBattery3:(const char *)battery3;
- (BOOL)_parseProximityPairingColor1:(const char *)color1;
- (BOOL)_parseProximityPairingMisc1:(const char *)misc1 deviceFlags:(unint64_t *)flags;
- (BOOL)_parseProximityPairingPID2:(const char *)d2;
- (BOOL)_parseProximityPairingStatus1:(const char *)status1 deviceFlags:(unint64_t *)flags;
- (BOOL)_parseProximityPairingStatus3:(const char *)status3 deviceFlags:(unint64_t *)flags;
- (BOOL)changedTypesContainCBDiscovery:(id)discovery;
- (BOOL)changedTypesNeedsIdentify;
- (BOOL)decryptNearbyInfoV2PayloadPtr:(const char *)ptr payloadLength:(unint64_t)length key:(const char *)key keyLength:(unint64_t)keyLength decryptedPtr:(void *)decryptedPtr;
- (BOOL)discoveryTypesContainCBDiscovery:(id)discovery;
- (BOOL)discoveryTypesContainType:(int)type;
- (BOOL)isEqualToDevice:(id)device exactMatch:(BOOL)match;
- (BOOL)isEquivalentToCBDevice:(id)device compareFlags:(unsigned int)flags;
- (BOOL)isLowerThanAgeLimit:(id)limit compareTimestamp:(unint64_t)timestamp;
- (CBDevice)initWithCoder:(id)coder;
- (CBDevice)initWithDictionary:(id)dictionary error:(id *)error;
- (CBDevice)initWithXPCEventRepresentation:(id)representation error:(id *)error;
- (CBDevice)initWithXPCObject:(id)object error:(id *)error;
- (NSArray)spatialInteractionIdentifiers;
- (NSData)airdropTempAuthTagData;
- (NSData)airplaySourceAuthTagData;
- (NSData)airplaySourceUWBConfigData;
- (NSData)airplayTargetIPv6;
- (NSData)bleAddressData;
- (NSData)bleAdvertisementData;
- (NSData)bleAppleManufacturerData;
- (NSData)btAddressData;
- (NSData)dockKitAccessoryPayloadData;
- (NSData)fidoPayloadData;
- (NSData)gfpPayloadData;
- (NSData)homeKitV1DeviceIDData;
- (NSData)homeKitV2AccessoryIDData;
- (NSData)homeKitV2AuthTagData;
- (NSData)irkData;
- (NSData)linkKeyData;
- (NSData)ltkData;
- (NSData)mspAddressData;
- (NSData)nearbyActionAuthTag;
- (NSData)nearbyActionExtraData;
- (NSData)nearbyActionTargetAuthTag;
- (NSData)nearbyInfoAuthTag;
- (NSData)nearbyInfoV2AuthIntegrityTagData;
- (NSData)nearbyInfoV2AuthTagData;
- (NSData)nearbyInfoV2EncryptedData;
- (NSData)proximityPairingPayloadData;
- (NSData)proximityServiceClassicAddress;
- (NSData)proximityServiceData;
- (NSData)proximityServiceSetupHash;
- (NSData)spatialInteractionPresenceConfigData;
- (NSData)spatialInteractionTokenData;
- (NSData)spatialInteractionUWBConfigData;
- (NSData)watchSetupData;
- (NSDictionary)spatialInteractionUserInfo;
- (NSString)btVersion;
- (NSString)caseVersion;
- (NSString)findMyCaseIdentifier;
- (NSString)findMyGroupIdentifier;
- (NSString)modelUser;
- (NSString)mspDisplayName;
- (NSString)objectSetupFontCode;
- (NSString)objectSetupMessage;
- (NSString)stableIdentifier;
- (OS_xpc_object)xpcEventCompleteRepresentation;
- (OS_xpc_object)xpcEventRepresentation;
- (char)rssi;
- (id)bleAdvertisementTimestampString;
- (id)descriptionWithLevel:(int)level;
- (id)dictionaryRepresentation;
- (id)getSpatialInteractionDeviceTimestampArrayForClientID:(id)d;
- (unint64_t)removeInternalFlags:(unsigned int)flags;
- (unint64_t)updateWithCBDevice:(id)device;
- (unint64_t)updateWithPowerSourceDescription:(id)description;
- (unsigned)colorCodeBest;
- (unsigned)updateWithCBPowerSource:(id)source;
- (void)_clearDeviceInfoKey:(id)key;
- (void)_clearUnparsedProperties;
- (void)_parseAirDropPtr:(const char *)ptr end:(const char *)end;
- (void)_parseAirPlaySourcePtr:(const char *)ptr end:(const char *)end;
- (void)_parseAirPlayTargetPtr:(const char *)ptr end:(const char *)end;
- (void)_parseAppleManufacturerPtr:(const char *)ptr end:(const char *)end;
- (void)_parseDSInfoPtr:(const char *)ptr end:(const char *)end;
- (void)_parseHeySiriPtr:(const char *)ptr end:(const char *)end;
- (void)_parseHomeKitV1Ptr:(const char *)ptr end:(const char *)end;
- (void)_parseHomeKitV2Ptr:(const char *)ptr end:(const char *)end;
- (void)_parseManufacturerPtr:(const char *)ptr end:(const char *)end;
- (void)_parseMicrosoftManufacturerPtr:(const char *)ptr end:(const char *)end;
- (void)_parseMicrosoftSwiftPairPtr:(const char *)ptr end:(const char *)end;
- (void)_parseNearbyActionNoWakePtr:(const char *)ptr end:(const char *)end;
- (void)_parseNearbyActionPtr:(const char *)ptr end:(const char *)end;
- (void)_parseNearbyActionV2Ptr:(const char *)ptr end:(const char *)end;
- (void)_parseNearbyInfoPtr:(const char *)ptr end:(const char *)end;
- (void)_parseNearbyInfoV2Ptr:(const char *)ptr end:(const char *)end;
- (void)_parseObjectDiscoveryPtr:(const char *)ptr end:(const char *)end;
- (void)_parseProximityPairingAccessoryStatusPtr:(const char *)ptr end:(const char *)end;
- (void)_parseProximityPairingAirPodsMismatchedPtr:(const char *)ptr end:(const char *)end;
- (void)_parseProximityPairingFindMyAccessoryStatusPtr:(const char *)ptr end:(const char *)end;
- (void)_parseProximityPairingObjectSetupPtr:(const char *)ptr end:(const char *)end;
- (void)_parseProximityPairingObjectSetupPtrV2:(const char *)v2 end:(const char *)end;
- (void)_parseProximityPairingPtr:(const char *)ptr end:(const char *)end;
- (void)_parseProximityPairingV2Ptr:(const char *)ptr end:(const char *)end;
- (void)_parseProximityPairingWxSetupPtr:(const char *)ptr end:(const char *)end;
- (void)_parseProximityPairingWxStatusPtr:(const char *)ptr end:(const char *)end;
- (void)_parseProximityServiceData:(id)data;
- (void)_parseProximityServiceHomeKitSetupPtr:(const char *)ptr end:(const char *)end;
- (void)_parseProximityServiceWatchSetupPtr:(const char *)ptr end:(const char *)end;
- (void)_parseSafetyAlertsSegmentServiceData:(id)data;
- (void)_parseSoftwareUpdatePtr:(const char *)ptr end:(const char *)end;
- (void)_parseSpatialInteractionPtr:(const char *)ptr end:(const char *)end;
- (void)_setDeviceInfoKey:(id)key value:(id)value;
- (void)changedTypesRemoveAll;
- (void)decryptApplePayloadWithIdentity:(id)identity forType:(unsigned __int8)type error:(id *)error;
- (void)decryptNearbyInfoV2PayloadWithIdentity:(id)identity error:(id *)error;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCObject:(id)object;
- (void)resetNearbyInfoV2SensitiveProperties;
- (void)setAccessoryStatusFlags:(unsigned int)flags;
- (void)setAccessoryStatusLidOpenCount:(unsigned __int8)count;
- (void)setAccessoryStatusOBCTime:(double)time;
- (void)setAclLinkState:(unsigned __int8)state;
- (void)setAdaptiveVolumeCapability:(unsigned __int8)capability;
- (void)setAdaptiveVolumeConfig:(unsigned __int8)config;
- (void)setAirdropConfigData:(unsigned __int8)data;
- (void)setAirdropFlags:(unsigned __int8)flags;
- (void)setAirdropHash1:(unsigned __int16)hash1;
- (void)setAirdropHash2:(unsigned __int16)hash2;
- (void)setAirdropHash3:(unsigned __int16)hash3;
- (void)setAirdropHash4:(unsigned __int16)hash4;
- (void)setAirdropModel:(unsigned __int8)model;
- (void)setAirdropVersion:(unsigned __int8)version;
- (void)setAirplaySourceFlags:(unsigned __int8)flags;
- (void)setAirplayTargetConfigSeed:(unsigned __int8)seed;
- (void)setAirplayTargetFlags:(unsigned __int8)flags;
- (void)setAirplayTargetIPv4:(unsigned int)pv4;
- (void)setAirplayTargetPort:(unsigned __int16)port;
- (void)setAppearanceValue:(unsigned int)value;
- (void)setAudioStreamState:(int)state;
- (void)setAutoAncCapability:(unsigned __int8)capability;
- (void)setBatteryInfoCase:(unsigned __int16)case;
- (void)setBatteryInfoLeft:(unsigned __int16)left;
- (void)setBatteryInfoMain:(unsigned __int16)main;
- (void)setBatteryInfoRight:(unsigned __int16)right;
- (void)setBleAdvertisementTimestamp:(double)timestamp;
- (void)setBleAdvertisementTimestampMachContinuous:(unint64_t)continuous;
- (void)setBleChannel:(int)channel;
- (void)setBleRSSI:(int)i;
- (void)setClassicRSSI:(char)i;
- (void)setClickHoldModeLeft:(unsigned __int8)left;
- (void)setClickHoldModeRight:(unsigned __int8)right;
- (void)setColorInfo:(unsigned __int16)info;
- (void)setConnectedServices:(unsigned int)services;
- (void)setConversationDetectCapability:(unsigned __int8)capability;
- (void)setConversationDetectConfig:(unsigned __int8)config;
- (void)setCrownRotationDirection:(unsigned __int8)direction;
- (void)setDoubleTapActionLeft:(char)left;
- (void)setDoubleTapActionRight:(char)right;
- (void)setDoubleTapCapability:(char)capability;
- (void)setDsActionFlags:(unsigned __int8)flags;
- (void)setDsActionMeasuredPower:(char)power;
- (void)setDsActionTieBreaker:(unsigned __int8)breaker;
- (void)setDsInfoVehicleConfidence:(unsigned __int8)confidence;
- (void)setDsInfoVehicleState:(unsigned __int8)state;
- (void)setEndCallCapability:(unsigned __int8)capability;
- (void)setEndCallConfig:(unsigned __int8)config;
- (void)setFrequencyBand:(unsigned __int8)band;
- (void)setGapaFlags:(unsigned int)flags;
- (void)setGfpModelID:(unsigned int)d;
- (void)setHeySiriConfidence:(unsigned __int8)confidence;
- (void)setHeySiriDeviceClass:(unsigned __int16)class;
- (void)setHeySiriPerceptualHash:(unsigned __int16)hash;
- (void)setHeySiriProductType:(unsigned __int8)type;
- (void)setHeySiriRandom:(unsigned __int8)random;
- (void)setHeySiriSNR:(unsigned __int8)r;
- (void)setHomeKitV1Category:(unsigned __int16)category;
- (void)setHomeKitV1CompatibleVersion:(unsigned __int8)version;
- (void)setHomeKitV1ConfigurationNumber:(unsigned __int8)number;
- (void)setHomeKitV1Flags:(unsigned __int8)flags;
- (void)setHomeKitV1SetupHash:(unsigned int)hash;
- (void)setHomeKitV1StateNumber:(unsigned __int16)number;
- (void)setHomeKitV2InstanceID:(unsigned __int16)d;
- (void)setHomeKitV2StateNumber:(unsigned __int16)number;
- (void)setHomeKitV2Value:(unint64_t)value;
- (void)setListeningMode:(int)mode;
- (void)setListeningModeConfigs:(unsigned int)configs;
- (void)setMspDeviceClass:(unsigned int)class;
- (void)setMspSubScenario:(unsigned __int8)scenario;
- (void)setMuteControlConfig:(unsigned __int8)config;
- (void)setNearbyActionColorCode:(unsigned __int8)code;
- (void)setNearbyActionDeviceClass:(unsigned __int8)class;
- (void)setNearbyActionFlags:(unsigned int)flags;
- (void)setNearbyActionNoWakeType:(unsigned __int8)type;
- (void)setNearbyActionType:(unsigned __int8)type;
- (void)setNearbyActionV2Flags:(unsigned int)flags;
- (void)setNearbyActionV2Type:(unsigned __int8)type;
- (void)setNearbyInfoFlags:(unsigned int)flags;
- (void)setNearbyInfoStatusProgress:(double)progress;
- (void)setNearbyInfoStatusTime:(unsigned __int8)time;
- (void)setNearbyInfoStatusType:(unsigned __int8)type;
- (void)setNearbyInfoV2DecryptedFlags:(unsigned __int8)flags;
- (void)setNearbyInfoV2EncryptedFlags:(unsigned __int8)flags;
- (void)setNearbyInfoV2Flags:(unsigned __int8)flags;
- (void)setObjectSetupBatteryPerformance:(unsigned __int8)performance;
- (void)setObjectSetupBatteryState:(unsigned __int8)state;
- (void)setObjectSetupColorCode:(unsigned __int8)code;
- (void)setObjectSetupFlags:(unsigned int)flags;
- (void)setPeerStatusFlag:(unsigned __int8)flag;
- (void)setPrimaryBudSide:(unsigned __int8)side;
- (void)setProximityPairingPrimaryPlacement:(int)placement;
- (void)setProximityPairingSecondaryPlacement:(int)placement;
- (void)setProximityServiceCategory:(unsigned __int8)category;
- (void)setProximityServiceFlags:(unsigned __int8)flags;
- (void)setProximityServiceMeasuredPower:(char)power;
- (void)setProximityServicePSM:(unsigned __int16)m;
- (void)setProximityServiceProductID:(unsigned int)d;
- (void)setProximityServiceSubType:(unsigned __int8)type;
- (void)setProximityServiceVendorID:(unsigned __int16)d;
- (void)setProximityServiceVersion:(unsigned __int8)version;
- (void)setSelectiveSpeechListeningConfig:(unsigned __int8)config;
- (void)setSpatialAudioMode:(int)mode;
- (void)setSpatialInteractionConfigFlags:(unsigned __int8)flags;
- (void)setSpatialInteractionDeviceTimestampArrayForClientID:(id)d clientID:(id)iD;
- (void)setSpatialInteractionFlags:(unsigned __int8)flags;
- (void)setSpatialInteractionPeerID:(unsigned int)d;
- (void)updateWithCBDeviceIdentity:(id)identity;
- (void)updateWithRPIdentity:(id)identity;
- (void)updateWithReceivedAuthTag:(id)tag forType:(unsigned __int8)type;
- (void)updateWithSafetyAlertsSegments:(id)segments error:(id *)error;
@end

@implementation CBDevice

- (void)changedTypesRemoveAll
{
  self->_changeFlags = 0;
  self->_attributeInternalFlags = 0;
  *self->_changedTypesInternal.bitArray = 0;
  *&self->_changedTypesInternal.bitArray[4] = 0;
}

- (char)rssi
{
  bleRSSI = [(CBDevice *)self bleRSSI];
  if (!bleRSSI)
  {
    LOBYTE(bleRSSI) = [(CBDevice *)self classicRSSI];
  }

  return bleRSSI;
}

- (NSData)bleAddressData
{
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSData)bleAdvertisementData
{
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSData)btAddressData
{
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSData)bleAppleManufacturerData
{
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSString)modelUser
{
  CFStringGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSString)btVersion
{
  CFStringGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSString)caseVersion
{
  CFStringGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSString)findMyCaseIdentifier
{
  CFStringGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSString)findMyGroupIdentifier
{
  CFStringGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSData)dockKitAccessoryPayloadData
{
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSData)fidoPayloadData
{
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSData)gfpPayloadData
{
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSString)stableIdentifier
{
  v3 = self->_idsDeviceID;
  if (v3)
  {
  }

  else
  {
    homeKitV2AccessoryIDData = [(CBDevice *)self homeKitV2AccessoryIDData];
    if ([homeKitV2AccessoryIDData length] == 6)
    {
      v6 = CUPrintNSDataAddress();
    }

    else
    {
      homeKitV1DeviceIDData = [(CBDevice *)self homeKitV1DeviceIDData];
      if ([homeKitV1DeviceIDData length] == 6)
      {
        v6 = CUPrintNSDataAddress();
      }

      else
      {
        v6 = 0;
      }
    }

    v3 = v6;
  }

  return v3;
}

- (NSData)homeKitV2AccessoryIDData
{
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSData)homeKitV1DeviceIDData
{
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSData)airdropTempAuthTagData
{
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSData)proximityServiceData
{
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSData)nearbyActionExtraData
{
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSData)nearbyInfoAuthTag
{
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSData)nearbyActionAuthTag
{
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSData)nearbyActionTargetAuthTag
{
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSData)nearbyInfoV2AuthTagData
{
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSData)nearbyInfoV2AuthIntegrityTagData
{
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSData)proximityServiceClassicAddress
{
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSData)proximityServiceSetupHash
{
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSArray)spatialInteractionIdentifiers
{
  CFArrayGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSData)spatialInteractionTokenData
{
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSDictionary)spatialInteractionUserInfo
{
  CFDictionaryGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSData)spatialInteractionPresenceConfigData
{
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSData)spatialInteractionUWBConfigData
{
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSData)watchSetupData
{
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (BOOL)changedTypesNeedsIdentify
{
  if ((self->_changeFlags & 0x4000080040) != 0)
  {
    return 1;
  }

  nearbyInfoV2AuthTagData = [(CBDevice *)self nearbyInfoV2AuthTagData];
  if (nearbyInfoV2AuthTagData)
  {
    v6 = self->_changedTypesInternal.bitArray[0];

    if ((v6 & 0x10) != 0)
    {
      return 1;
    }
  }

  v7 = CBDiscoveryTypesNeedsIdentify(nearbyInfoV2AuthTagData, v5);
  if (CBDiscoveryTypesContainTypes(self->_changedTypesInternal.bitArray, v7))
  {
    return 1;
  }

  nearbyInfoV2EncryptedData = [(CBDevice *)self nearbyInfoV2EncryptedData];

  if (nearbyInfoV2EncryptedData)
  {
    return 1;
  }

  nearbyInfoV2NearbyFaceTimeEncryptedData = [(CBDevice *)self nearbyInfoV2NearbyFaceTimeEncryptedData];

  return nearbyInfoV2NearbyFaceTimeEncryptedData != 0;
}

- (NSData)nearbyInfoV2EncryptedData
{
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (void)_clearUnparsedProperties
{
  discoveryFlags = self->_discoveryFlags;
  if ((discoveryFlags & 0x4000000000) != 0)
  {
    if ((discoveryFlags & 0x8000000000) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [(CBDevice *)self _clearAirplaySourceFlags];
    if ((discoveryFlags & 0x8000000000) != 0)
    {
LABEL_3:
      if ((discoveryFlags & 0x8000000000000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  [(CBDevice *)self _clearAirplayTargetFlags];
  [(CBDevice *)self _clearAirplayTargetIPv4];
  [(CBDevice *)self _clearAirplayTargetIPv6];
  if ((discoveryFlags & 0x8000000000000) != 0)
  {
LABEL_4:
    if ((discoveryFlags & 0x40000000000000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  [(CBDevice *)self _clearFidoPayloadData];
  if ((discoveryFlags & 0x40000000000000) != 0)
  {
LABEL_5:
    if ((discoveryFlags & 0x400000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  [(CBDevice *)self _clearGfpModelID];
  [(CBDevice *)self _clearGfpPayloadData];
  if ((discoveryFlags & 0x400000) != 0)
  {
LABEL_6:
    if ((discoveryFlags & 0x1000000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  [(CBDevice *)self _clearHomeKitV1CompatibleVersion];
  [(CBDevice *)self _clearHomeKitV1ConfigurationNumber];
  [(CBDevice *)self _clearHomeKitV1Flags];
  [(CBDevice *)self _clearHomeKitV1StateNumber];
  [(CBDevice *)self _clearHomeKitV1SetupHash];
  if ((discoveryFlags & 0x1000000) != 0)
  {
LABEL_7:
    if ((discoveryFlags & 0x80000000000000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  [(CBDevice *)self _clearHomeKitV2AuthTagData];
  [(CBDevice *)self _clearHomeKitV2InstanceID];
  [(CBDevice *)self _clearHomeKitV2StateNumber];
  [(CBDevice *)self _clearHomeKitV2Value];
  if ((discoveryFlags & 0x80000000000000) != 0)
  {
LABEL_8:
    if ((discoveryFlags & 0x5030800010083E37) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  [(CBDevice *)self _clearMspAddressData];
  [(CBDevice *)self _clearMspDeviceClass];
  [(CBDevice *)self _clearMspDisplayName];
  [(CBDevice *)self _clearMspSubScenario];
  if ((discoveryFlags & 0x5030800010083E37) != 0)
  {
LABEL_9:
    if ((discoveryFlags & 0x2000000400020108) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  [(CBDevice *)self _clearNearbyActionAuthTag];
  [(CBDevice *)self _clearNearbyActionDeviceClass];
  [(CBDevice *)self _clearNearbyActionFlags];
  [(CBDevice *)self _clearNearbyActionType];
  if ((discoveryFlags & 0x2000000400020108) != 0)
  {
LABEL_10:
    nearbyActionAuthTag = [(CBDevice *)self nearbyActionAuthTag];
    if (nearbyActionAuthTag)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  [(CBDevice *)self _clearNearbyActionV2Flags];
  [(CBDevice *)self _clearNearbyActionV2Type];
  nearbyActionAuthTag = [(CBDevice *)self nearbyActionAuthTag];
  if (nearbyActionAuthTag)
  {
LABEL_11:
    [(CBDevice *)self setNearbyAuthTag:nearbyActionAuthTag];

    if ((discoveryFlags & 0x60000000000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_31:
  nearbyInfoAuthTag = [(CBDevice *)self nearbyInfoAuthTag];
  [(CBDevice *)self setNearbyAuthTag:nearbyInfoAuthTag];

  if ((discoveryFlags & 0x60000000000) == 0)
  {
LABEL_12:
    self->_objectDiscoveryMode = 0;
    objectDiscoveryNearOwnerID = self->_objectDiscoveryNearOwnerID;
    self->_objectDiscoveryNearOwnerID = 0;

    objectDiscoveryPublicKeyData = self->_objectDiscoveryPublicKeyData;
    self->_objectDiscoveryPublicKeyData = 0;
  }

LABEL_13:
  if ((discoveryFlags & 0x10000) != 0)
  {
    if ((discoveryFlags & 0x80000000) != 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    [(CBDevice *)self _clearObjectSetupFlags];
    [(CBDevice *)self _clearObjectSetupFontCode];
    [(CBDevice *)self _clearObjectSetupMessage];
    if ((discoveryFlags & 0x80000000) != 0)
    {
LABEL_15:
      if ((discoveryFlags & 0x40000) != 0)
      {
        goto LABEL_16;
      }

      goto LABEL_35;
    }
  }

  [(CBDevice *)self _clearProximityServiceFlags];
  [(CBDevice *)self _clearProximityServiceMeasuredPower];
  [(CBDevice *)self _clearProximityServicePSM];
  [(CBDevice *)self _clearProximityServiceSetupHash];
  [(CBDevice *)self _clearProximityServiceSubType];
  [(CBDevice *)self _clearProximityServiceVersion];
  if ((discoveryFlags & 0x40000) != 0)
  {
LABEL_16:
    v7 = self->_discoveryTypesInternal.bitArray[3];
    if ((self->_discoveryTypesInternal.bitArray[1] & 0x10) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  [(CBDevice *)self _clearSpatialInteractionConfigFlags];
  [(CBDevice *)self _clearSpatialInteractionFlags];
  [(CBDevice *)self _clearSpatialInteractionIdentifiers];
  [(CBDevice *)self _clearSpatialInteractionPeerID];
  [(CBDevice *)self _clearSpatialInteractionPresenceConfigData];
  [(CBDevice *)self _clearSpatialInteractionTokenData];
  [(CBDevice *)self _clearSpatialInteractionUserInfo];
  [(CBDevice *)self _clearSpatialInteractionUWBConfigData];
  v7 = self->_discoveryTypesInternal.bitArray[3];
  if ((self->_discoveryTypesInternal.bitArray[1] & 0x10) != 0)
  {
LABEL_17:
    if ((v7 & 0x40) != 0)
    {
      goto LABEL_18;
    }

LABEL_37:
    safetyAlertsAlertData = self->_safetyAlertsAlertData;
    self->_safetyAlertsAlertData = 0;

    safetyAlertsAlertID = self->_safetyAlertsAlertID;
    self->_safetyAlertsAlertID = 0;

    safetyAlertsSignature = self->_safetyAlertsSignature;
    self->_safetyAlertsSignature = 0;

    self->_safetyAlertsVersion = 0;
    safetyAlertsSegmentAlertData = self->_safetyAlertsSegmentAlertData;
    self->_safetyAlertsSegmentAlertData = 0;

    *&self->_safetyAlertsSegmentSegmentNumber = 0;
    safetyAlertsSegmentServiceData = self->_safetyAlertsSegmentServiceData;
    self->_safetyAlertsSegmentServiceData = 0;

    safetyAlertsSegmentSignature = self->_safetyAlertsSegmentSignature;
    self->_safetyAlertsSegmentSignature = 0;

    if ((v7 & 0x10) != 0)
    {
      return;
    }

    goto LABEL_19;
  }

LABEL_36:
  [(CBDevice *)self _clearDockKitAccessoryPayloadData];
  if ((v7 & 0x40) == 0)
  {
    goto LABEL_37;
  }

LABEL_18:
  if ((v7 & 0x10) != 0)
  {
    return;
  }

LABEL_19:
  self->_softwareUpdateActionType = 0;
  softwareUpdateData = self->_softwareUpdateData;
  self->_softwareUpdateData = 0;
}

- (NSData)airplaySourceAuthTagData
{
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (OS_xpc_object)xpcEventRepresentation
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = xpc_dictionary_create(0, 0, 0);
  btAddressData = [(CBDevice *)self btAddressData];
  v5 = btAddressData;
  if (btAddressData && [btAddressData length] == 6)
  {
    LOWORD(v10) = 0;
    [v5 bytes];
    HardwareAddressToCString();
    xpc_dictionary_set_string(v3, "btAddress", &v9);
  }

  uTF8String = [(NSString *)self->_identifier UTF8String];
  if (uTF8String)
  {
    xpc_dictionary_set_string(v3, "deviceID", uTF8String);
  }

  nearbyActionDeviceClass = [(CBDevice *)self nearbyActionDeviceClass];
  if (nearbyActionDeviceClass)
  {
    xpc_dictionary_set_int64(v3, "deviceClass", nearbyActionDeviceClass);
  }

  return v3;
}

- (NSData)airplayTargetIPv6
{
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (void)resetNearbyInfoV2SensitiveProperties
{
  [(CBDevice *)self setNearbyInfoV2Flags:0];
  [(CBDevice *)self setNearbyInfoV2DecryptedFlags:0];
  *&self->_nearbyInfoV2InvitationCounter = 0;
  self->_nearbyInfoV2InvitationRouteType = 0;
  nearbyInfoV2NearbyFaceTimeEncryptedData = self->_nearbyInfoV2NearbyFaceTimeEncryptedData;
  self->_nearbyInfoV2NearbyFaceTimeEncryptedData = 0;

  v4 = self->_discoveryTypesInternal.bitArray[2];
  self->_discoveryTypesInternal.bitArray[1] &= ~0x20u;
  self->_discoveryTypesInternal.bitArray[2] = v4 & 0x97;
  self->_discoveryTypesInternal.bitArray[4] &= 0xFCu;
  v5 = self->_changedTypesInternal.bitArray[2];
  self->_changedTypesInternal.bitArray[1] &= ~0x20u;
  self->_changedTypesInternal.bitArray[2] = v5 & 0x97;
  self->_changedTypesInternal.bitArray[4] &= 0xFCu;
}

- (CBDevice)initWithXPCEventRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v25.receiver = self;
  v25.super_class = CBDevice;
  v13 = [(CBDevice *)&v25 init];
  if (!v13)
  {
    if (error)
    {
      v21 = "CBDevice super init failed";
LABEL_16:
      CBErrorF(-6756, v21, v7, v8, v9, v10, v11, v12, v22);
      *error = v19 = 0;
      goto LABEL_11;
    }

LABEL_17:
    v19 = 0;
    goto LABEL_11;
  }

  if (MEMORY[0x1C68DFDD0](representationCopy) != MEMORY[0x1E69E9E80])
  {
    if (error)
    {
      v21 = "XPC non-dict";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (xpc_dictionary_get_string(representationCopy, "btAddress"))
  {
    v24 = 0;
    v23 = 0;
    if (!TextToHardwareAddress())
    {
      v14 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v23 length:6];
      [(CBDevice *)v13 setBtAddressData:v14];
    }
  }

  string = xpc_dictionary_get_string(representationCopy, "deviceID");
  if (string)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
    identifier = v13->_identifier;
    v13->_identifier = v16;
  }

  int64 = xpc_dictionary_get_int64(representationCopy, "deviceClass");
  if (int64)
  {
    [(CBDevice *)v13 setNearbyActionDeviceClass:int64];
  }

  v19 = v13;
LABEL_11:

  return v19;
}

- (OS_xpc_object)xpcEventCompleteRepresentation
{
  empty = xpc_dictionary_create_empty();
  [(CBDevice *)self encodeWithXPCObject:empty];

  return empty;
}

- (void)encodeWithXPCObject:(id)object
{
  objectCopy = object;
  accountID = self->_accountID;
  v6 = objectCopy;
  uTF8String = [(NSString *)accountID UTF8String];
  if (uTF8String)
  {
    xpc_dictionary_set_string(v6, "acID", uTF8String);
  }

  changeFlags = self->_changeFlags;
  if (changeFlags)
  {
    xpc_dictionary_set_uint64(v6, "chFl", changeFlags);
  }

  if (*self->_changedTypesInternal.bitArray | *&self->_changedTypesInternal.bitArray[4])
  {
    v9 = 6;
  }

  else
  {
    v9 = 1;
  }

  xpc_dictionary_set_data(v6, "chTy", &self->_changedTypesInternal, v9);
  contactID = self->_contactID;
  v11 = v6;
  uTF8String2 = [(NSString *)contactID UTF8String];
  if (uTF8String2)
  {
    xpc_dictionary_set_string(v11, "cnID", uTF8String2);
  }

  CUXPCEncodeObject();
  deviceFlags = self->_deviceFlags;
  if (deviceFlags)
  {
    xpc_dictionary_set_uint64(v11, "dvFl", deviceFlags);
  }

  internalFlags = self->_internalFlags;
  if ((internalFlags & 0x20000) != 0)
  {
    xpc_dictionary_set_uint64(v11, "dvIF", *&internalFlags & 0x20000);
  }

  v15 = self->_deviceInfo;
  if (v15)
  {
    v16 = _CFXPCCreateXPCObjectFromCFObject();
    if (v16)
    {
      xpc_dictionary_set_value(v11, "dvIn", v16);
    }
  }

  if (self->_deviceType)
  {
    xpc_dictionary_set_uint64(v11, "dvTy", self->_deviceType);
  }

  discoveryFlags = self->_discoveryFlags;
  if (discoveryFlags)
  {
    xpc_dictionary_set_uint64(v11, "dsFl", discoveryFlags);
  }

  if (*self->_discoveryTypesInternal.bitArray | *&self->_discoveryTypesInternal.bitArray[4])
  {
    v18 = 6;
  }

  else
  {
    v18 = 1;
  }

  xpc_dictionary_set_data(v11, "dsTy", &self->_discoveryTypesInternal, v18);
  firmwareVersion = self->_firmwareVersion;
  v20 = v11;
  uTF8String3 = [(NSString *)firmwareVersion UTF8String];
  if (uTF8String3)
  {
    xpc_dictionary_set_string(v20, "frmV", uTF8String3);
  }

  identifier = self->_identifier;
  v23 = v20;
  uTF8String4 = [(NSString *)identifier UTF8String];
  if (uTF8String4)
  {
    xpc_dictionary_set_string(v23, "id", uTF8String4);
  }

  if (self->_interval)
  {
    xpc_dictionary_set_uint64(v23, "inV", self->_interval);
  }

  idsDeviceID = self->_idsDeviceID;
  v26 = v23;
  uTF8String5 = [(NSString *)idsDeviceID UTF8String];
  if (uTF8String5)
  {
    xpc_dictionary_set_string(v26, "idsI", uTF8String5);
  }

  leAdvName = self->_leAdvName;
  v29 = v26;
  uTF8String6 = [(NSString *)leAdvName UTF8String];
  if (uTF8String6)
  {
    xpc_dictionary_set_string(v29, "leNm", uTF8String6);
  }

  if (self->_microphoneMode)
  {
    xpc_dictionary_set_int64(v29, "micM", self->_microphoneMode);
  }

  model = self->_model;
  v32 = v29;
  uTF8String7 = [(NSString *)model UTF8String];
  if (uTF8String7)
  {
    xpc_dictionary_set_string(v32, "md", uTF8String7);
  }

  if (self->_muteControlCapability)
  {
    xpc_dictionary_set_uint64(v32, "mCCp", self->_muteControlCapability);
  }

  name = self->_name;
  v35 = v32;
  uTF8String8 = [(NSString *)name UTF8String];
  if (uTF8String8)
  {
    xpc_dictionary_set_string(v35, "nm", uTF8String8);
  }

  primaryPlacement = self->_primaryPlacement;
  if (primaryPlacement)
  {
    xpc_dictionary_set_int64(v35, "dPrP", primaryPlacement);
  }

  secondaryPlacement = self->_secondaryPlacement;
  if (secondaryPlacement)
  {
    xpc_dictionary_set_int64(v35, "dScP", secondaryPlacement);
  }

  if (self->_placementMode)
  {
    xpc_dictionary_set_int64(v35, "dPlM", self->_placementMode);
  }

  productID = self->_productID;
  if (productID)
  {
    xpc_dictionary_set_uint64(v35, "pid", productID);
  }

  productName = self->_productName;
  v41 = v35;
  uTF8String9 = [(NSString *)productName UTF8String];
  if (uTF8String9)
  {
    xpc_dictionary_set_string(v41, "prN", uTF8String9);
  }

  if (self->_selectiveSpeechListeningCapability)
  {
    xpc_dictionary_set_uint64(v41, "ssCp", self->_selectiveSpeechListeningCapability);
  }

  txAddressData = self->_txAddressData;
  if (txAddressData)
  {
    v44 = txAddressData;
    v45 = v41;
    bytes = [(NSData *)v44 bytes];
    if (bytes)
    {
      v47 = bytes;
    }

    else
    {
      v47 = "";
    }

    v48 = [(NSData *)v44 length];

    xpc_dictionary_set_data(v45, "TxAd", v47, v48);
  }

  if (self->_hearingAidSupport)
  {
    xpc_dictionary_set_int64(v41, "HaSp", self->_hearingAidSupport);
  }

  if (self->_hearingTestSupport)
  {
    xpc_dictionary_set_int64(v41, "HtSp", self->_hearingTestSupport);
  }

  serialNumber = self->_serialNumber;
  v50 = v41;
  uTF8String10 = [(NSString *)serialNumber UTF8String];
  if (uTF8String10)
  {
    xpc_dictionary_set_string(v50, "sn", uTF8String10);
  }

  serialNumberLeft = self->_serialNumberLeft;
  v53 = v50;
  uTF8String11 = [(NSString *)serialNumberLeft UTF8String];
  if (uTF8String11)
  {
    xpc_dictionary_set_string(v53, "snLe", uTF8String11);
  }

  serialNumberRight = self->_serialNumberRight;
  xdict = v53;
  uTF8String12 = [(NSString *)serialNumberRight UTF8String];
  if (uTF8String12)
  {
    xpc_dictionary_set_string(xdict, "snRi", uTF8String12);
  }

  if (self->_smartRoutingMode)
  {
    xpc_dictionary_set_int64(xdict, "srMd", self->_smartRoutingMode);
  }

  supportedServices = self->_supportedServices;
  if (supportedServices)
  {
    xpc_dictionary_set_uint64(xdict, "supS", supportedServices);
  }

  if (self->_vendorID)
  {
    xpc_dictionary_set_uint64(xdict, "vid", self->_vendorID);
  }

  if (self->_vendorIDSource)
  {
    xpc_dictionary_set_uint64(xdict, "vidS", self->_vendorIDSource);
  }

  if (self->_nearbyInfoV2InvitationCounter)
  {
    xpc_dictionary_set_uint64(xdict, "nb2Ic", self->_nearbyInfoV2InvitationCounter);
  }

  if (self->_nearbyInfoV2InvitationTypes)
  {
    xpc_dictionary_set_uint64(xdict, "nb2It", self->_nearbyInfoV2InvitationTypes);
  }

  if (self->_nearbyInfoV2InvitationRouteType)
  {
    xpc_dictionary_set_uint64(xdict, "nb2Ir", self->_nearbyInfoV2InvitationRouteType);
  }

  nearbyInfoV2NearbyFaceTimeData = self->_nearbyInfoV2NearbyFaceTimeData;
  if (nearbyInfoV2NearbyFaceTimeData)
  {
    v59 = nearbyInfoV2NearbyFaceTimeData;
    v60 = xdict;
    bytes2 = [(NSData *)v59 bytes];
    if (bytes2)
    {
      v62 = bytes2;
    }

    else
    {
      v62 = "";
    }

    v63 = [(NSData *)v59 length];

    xpc_dictionary_set_data(v60, "nb2FT", v62, v63);
  }

  if (self->_nearbyActionNWPrecisionFindingStatus)
  {
    xpc_dictionary_set_uint64(xdict, "nawS", self->_nearbyActionNWPrecisionFindingStatus);
  }

  nearbyActionNoWakeAuthTagData = self->_nearbyActionNoWakeAuthTagData;
  if (nearbyActionNoWakeAuthTagData)
  {
    v65 = nearbyActionNoWakeAuthTagData;
    v66 = xdict;
    bytes3 = [(NSData *)v65 bytes];
    if (bytes3)
    {
      v68 = bytes3;
    }

    else
    {
      v68 = "";
    }

    v69 = [(NSData *)v65 length];

    xpc_dictionary_set_data(v66, "nawA", v68, v69);
  }

  nearbyActionNoWakeConfigData = self->_nearbyActionNoWakeConfigData;
  if (nearbyActionNoWakeConfigData)
  {
    v71 = nearbyActionNoWakeConfigData;
    v72 = xdict;
    bytes4 = [(NSData *)v71 bytes];
    if (bytes4)
    {
      v74 = bytes4;
    }

    else
    {
      v74 = "";
    }

    v75 = [(NSData *)v71 length];

    xpc_dictionary_set_data(v72, "nawC", v74, v75);
  }

  if (self->_objectDiscoveryBatteryState)
  {
    xpc_dictionary_set_uint64(xdict, "odBS", self->_objectDiscoveryBatteryState);
  }

  if (self->_objectDiscoveryMode)
  {
    xpc_dictionary_set_uint64(xdict, "odDM", self->_objectDiscoveryMode);
  }

  objectDiscoveryNearOwnerID = self->_objectDiscoveryNearOwnerID;
  if (objectDiscoveryNearOwnerID)
  {
    v77 = objectDiscoveryNearOwnerID;
    v78 = xdict;
    bytes5 = [(NSData *)v77 bytes];
    if (bytes5)
    {
      v80 = bytes5;
    }

    else
    {
      v80 = "";
    }

    v81 = [(NSData *)v77 length];

    xpc_dictionary_set_data(v78, "odNO", v80, v81);
  }

  objectDiscoveryProductID = self->_objectDiscoveryProductID;
  if (objectDiscoveryProductID)
  {
    xpc_dictionary_set_uint64(xdict, "odPI", objectDiscoveryProductID);
  }

  objectDiscoveryPublicKeyData = self->_objectDiscoveryPublicKeyData;
  if (objectDiscoveryPublicKeyData)
  {
    v84 = objectDiscoveryPublicKeyData;
    v85 = xdict;
    bytes6 = [(NSData *)v84 bytes];
    if (bytes6)
    {
      v87 = bytes6;
    }

    else
    {
      v87 = "";
    }

    v88 = [(NSData *)v84 length];

    xpc_dictionary_set_data(v85, "odPK", v87, v88);
  }

  proximityPairingProductID = self->_proximityPairingProductID;
  if (proximityPairingProductID)
  {
    xpc_dictionary_set_uint64(xdict, "ppPI", proximityPairingProductID);
  }

  if (self->_proximityPairingSubType)
  {
    xpc_dictionary_set_uint64(xdict, "ppST", self->_proximityPairingSubType);
  }

  if (self->_transmitPowerOne)
  {
    xpc_dictionary_set_uint64(xdict, "txP1", self->_transmitPowerOne);
  }

  if (self->_transmitPowerTwo)
  {
    xpc_dictionary_set_uint64(xdict, "txP2", self->_transmitPowerTwo);
  }

  if (self->_transmitPowerThree)
  {
    xpc_dictionary_set_uint64(xdict, "txP3", self->_transmitPowerThree);
  }

  safetyAlertsAlertData = self->_safetyAlertsAlertData;
  if (safetyAlertsAlertData)
  {
    v91 = safetyAlertsAlertData;
    v92 = xdict;
    bytes7 = [(NSData *)v91 bytes];
    if (bytes7)
    {
      v94 = bytes7;
    }

    else
    {
      v94 = "";
    }

    v95 = [(NSData *)v91 length];

    xpc_dictionary_set_data(v92, "saAd", v94, v95);
  }

  safetyAlertsAlertID = self->_safetyAlertsAlertID;
  if (safetyAlertsAlertID)
  {
    v97 = safetyAlertsAlertID;
    v98 = xdict;
    bytes8 = [(NSData *)v97 bytes];
    if (bytes8)
    {
      v100 = bytes8;
    }

    else
    {
      v100 = "";
    }

    v101 = [(NSData *)v97 length];

    xpc_dictionary_set_data(v98, "saAi", v100, v101);
  }

  safetyAlertsSignature = self->_safetyAlertsSignature;
  if (safetyAlertsSignature)
  {
    v103 = safetyAlertsSignature;
    v104 = xdict;
    bytes9 = [(NSData *)v103 bytes];
    if (bytes9)
    {
      v106 = bytes9;
    }

    else
    {
      v106 = "";
    }

    v107 = [(NSData *)v103 length];

    xpc_dictionary_set_data(v104, "saSg", v106, v107);
  }

  if (self->_safetyAlertsVersion)
  {
    xpc_dictionary_set_uint64(xdict, "saVs", self->_safetyAlertsVersion);
  }

  if (self->_softwareUpdateActionType)
  {
    xpc_dictionary_set_uint64(xdict, "suA", self->_softwareUpdateActionType);
  }

  softwareUpdateData = self->_softwareUpdateData;
  if (softwareUpdateData)
  {
    v109 = softwareUpdateData;
    v110 = xdict;
    bytes10 = [(NSData *)v109 bytes];
    if (bytes10)
    {
      v112 = bytes10;
    }

    else
    {
      v112 = "";
    }

    v113 = [(NSData *)v109 length];

    xpc_dictionary_set_data(v110, "blb", v112, v113);
  }

  if (self->_tipiConnectionStatus)
  {
    xpc_dictionary_set_uint64(xdict, "tpCS", self->_tipiConnectionStatus);
  }

  CUXPCEncodeNSArrayOfObjects();
  if (self->_tipiState)
  {
    xpc_dictionary_set_uint64(xdict, "tpSt", self->_tipiState);
  }
}

- (CBDevice)initWithCoder:(id)coder
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:9];
  v7 = [v4 setWithArray:{v6, v11, v12, v13, v14, v15, v16, v17, v18}];

  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"devi"];

  v9 = [(CBDevice *)self initWithDictionary:v8 error:0];
  return v9;
}

- (CBDevice)initWithDictionary:(id)dictionary error:(id *)error
{
  v12 = _CFXPCCreateXPCObjectFromCFObject();
  if (v12)
  {
    self = [(CBDevice *)self initWithXPCObject:v12 error:error];
    selfCopy = self;
  }

  else if (error)
  {
    CBErrorF(-6700, "CBDevice convert XPC dict failed", v6, v7, v8, v9, v10, v11, v15);
    *error = selfCopy = 0;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dictionaryRepresentation = [(CBDevice *)self dictionaryRepresentation];
  if (dictionaryRepresentation)
  {
    [coderCopy encodeObject:dictionaryRepresentation forKey:@"devi"];
  }
}

- (id)dictionaryRepresentation
{
  v3 = xpc_dictionary_create(0, 0, 0);
  [(CBDevice *)self encodeWithXPCObject:v3];
  v4 = CUXPCCreateCFObjectFromXPCObject();
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F8];
  }

  v7 = v6;

  return v6;
}

- (id)descriptionWithLevel:(int)level
{
  internalFlags = self->_internalFlags;
  v737 = 0;
  v738 = &v737;
  v739 = 0x3032000000;
  v740 = __Block_byref_object_copy__5;
  v741 = __Block_byref_object_dispose__5;
  v742 = 0;
  v736 = 0;
  NSAppendPrintF_safe(&v736, "CBDevice %@", self->_identifier);
  objc_storeStrong(&v742, v736);
  btAddressData = [(CBDevice *)self btAddressData];
  if (btAddressData)
  {
    v7 = v738 + 5;
    if ((internalFlags & 0x20000) != 0)
    {
      v735 = v738[5];
      v9 = CUPrintNSDataAddress();
      NSAppendPrintF_safe(&v735, ", BDA %@", v9);
      objc_storeStrong(v7, v735);
    }

    else
    {
      v734 = v738[5];
      NSAppendPrintF_safe(&v734, ", BDA <private>");
      v8 = v734;
      v9 = *v7;
      *v7 = v8;
    }
  }

  v10 = self->_txAddressData;
  if (v10)
  {
    v11 = v738;
    v733 = v738[5];
    v12 = CUPrintNSDataAddress();
    NSAppendPrintF_safe(&v733, ", OTA %@", v12);
    objc_storeStrong(v11 + 5, v733);
  }

  v13 = self->_name;
  v14 = v13;
  if (v13)
  {
    v15 = v738 + 5;
    if ((internalFlags & 0x20000) != 0)
    {
      v732 = v738[5];
      v16 = &v732;
      NSAppendPrintF_safe(&v732, ", Nm '%@'", v13);
    }

    else
    {
      v731 = v738[5];
      v16 = &v731;
      NSAppendPrintF_safe(&v731, ", Nm <private> ");
    }

    objc_storeStrong(v15, *v16);
  }

  v17 = self->_model;
  v18 = v17;
  if (v17)
  {
    v19 = v738;
    v730 = v738[5];
    NSAppendPrintF_safe(&v730, ", Md %@", v17);
    objc_storeStrong(v19 + 5, v730);
  }

  productID = self->_productID;
  if (productID)
  {
    v21 = CBProductIDToString_0(self->_productID);
    v22 = v738;
    v729 = v738[5];
    NSAppendPrintF_safe(&v729, ", PID 0x%04X (%s)", productID, v21);
    objc_storeStrong(v22 + 5, v729);
    v23 = CBProductIDToNSLocalizedProductNameString(productID);
    v24 = v23;
    if (v23)
    {
      v25 = v738;
      v728 = v738[5];
      NSAppendPrintF_safe(&v728, ", PrNm %@", v23);
      objc_storeStrong(v25 + 5, v728);
    }
  }

  levelCopy = level;
  if (level <= 0x3Bu)
  {
    vendorID = self->_vendorID;
    if (self->_vendorID)
    {
      v28 = v738;
      v727 = v738[5];
      NSAppendPrintF_safe(&v727, ", VID 0x%04X", vendorID);
      objc_storeStrong(v28 + 5, v727);
    }

    vendorIDSource = self->_vendorIDSource;
    if (self->_vendorIDSource)
    {
      v30 = v738;
      v726 = v738[5];
      NSAppendPrintF_safe(&v726, ", VS %d", vendorIDSource);
      objc_storeStrong(v30 + 5, v726);
    }

    v31 = self->_idsDeviceID;
    v32 = v31;
    if (v31)
    {
      v33 = v738;
      v725 = v738[5];
      NSAppendPrintF_safe(&v725, ", IDS %@", v31);
      objc_storeStrong(v33 + 5, v725);
    }

    v34 = self->_accountID;
    v35 = v34;
    if (v34)
    {
      v36 = v738 + 5;
      if ((internalFlags & 0x20000) != 0)
      {
        v724 = v738[5];
        v37 = &v724;
        NSAppendPrintF_safe(&v724, ", AcID %@", v34);
      }

      else
      {
        v723 = v738[5];
        v37 = &v723;
        NSAppendPrintF_safe(&v723, ", AcID <private> ");
      }

      objc_storeStrong(v36, *v37);
    }

    adaptiveVolumeCapability = [(CBDevice *)self adaptiveVolumeCapability];
    if (adaptiveVolumeCapability)
    {
      v39 = v738;
      obj = v738[5];
      NSAppendPrintF_safe(&obj, ", avCp %u", adaptiveVolumeCapability);
      objc_storeStrong(v39 + 5, obj);
    }

    adaptiveVolumeConfig = [(CBDevice *)self adaptiveVolumeConfig];
    if (adaptiveVolumeConfig)
    {
      v41 = v738;
      v721 = v738[5];
      NSAppendPrintF_safe(&v721, ", AVC %u", adaptiveVolumeConfig);
      objc_storeStrong(v41 + 5, v721);
    }

    v42 = self->_contactID;
    v43 = v42;
    if (v42)
    {
      v44 = v738;
      v720 = v738[5];
      NSAppendPrintF_safe(&v720, ", CnID %@", v42);
      objc_storeStrong(v44 + 5, v720);
    }

    stableIdentifier = [(CBDevice *)self stableIdentifier];
    v46 = stableIdentifier;
    if (stableIdentifier)
    {
      v47 = v738;
      v719 = v738[5];
      NSAppendPrintF_safe(&v719, ", stID %@", stableIdentifier);
      objc_storeStrong(v47 + 5, v719);
    }

    if (self->_discoveryFlags)
    {
      v48 = v738;
      v718 = v738[5];
      v49 = CUPrintFlags64();
      NSAppendPrintF_safe(&v718, ", DsFl %@", v49);
      objc_storeStrong(v48 + 5, v718);
    }

    v50 = v738;
    v717 = v738[5];
    CBDiscoveryTypesAppendString(&v717, ", DsTy", &self->_discoveryTypesInternal);
    objc_storeStrong(v50 + 5, v717);
    if (self->_deviceFlags)
    {
      v51 = v738;
      v716 = v738[5];
      v52 = CUPrintFlags64();
      NSAppendPrintF_safe(&v716, ", DvF %@", v52);
      objc_storeStrong(v51 + 5, v716);
    }

    deviceType = self->_deviceType;
    if (self->_deviceType)
    {
      v54 = v738;
      v715 = v738[5];
      v55 = CBDeviceTypeToString(deviceType);
      NSAppendPrintF_safe(&v715, ", DvT %s", v55);
      objc_storeStrong(v54 + 5, v715);
    }

    rssi = [(CBDevice *)self rssi];
    if (rssi)
    {
      v57 = v738;
      v714 = v738[5];
      NSAppendPrintF_safe(&v714, ", RSSI %d", rssi);
      objc_storeStrong(v57 + 5, v714);
    }

    if ([(CBDevice *)self connectedServices])
    {
      v58 = v738;
      v713 = v738[5];
      v59 = CUPrintFlags32();
      NSAppendPrintF_safe(&v713, ", CnS %@", v59);
      objc_storeStrong(v58 + 5, v713);
    }

    if (self->_supportedServices)
    {
      v60 = v738;
      v712 = v738[5];
      v61 = CUPrintFlags32();
      NSAppendPrintF_safe(&v712, ", SupS %@", v61);
      objc_storeStrong(v60 + 5, v712);
    }

    appearanceValue = [(CBDevice *)self appearanceValue];
    if (!appearanceValue)
    {
LABEL_87:
      audioStreamState = [(CBDevice *)self audioStreamState];
      if (audioStreamState)
      {
        v66 = v738 + 5;
        v710 = v738[5];
        if (audioStreamState > 3)
        {
          v67 = "?";
        }

        else
        {
          v67 = off_1E8122020[audioStreamState - 1];
        }

        NSAppendPrintF_safe(&v710, ", AStS %s", v67);
        objc_storeStrong(v66, v710);
      }

      frequencyBand = [(CBDevice *)self frequencyBand];
      if (frequencyBand)
      {
        v69 = "2.4";
        if (frequencyBand != 1)
        {
          v69 = "?";
        }

        if (frequencyBand == 2)
        {
          v69 = "5";
        }

        v70 = v738;
        v709 = v738[5];
        NSAppendPrintF_safe(&v709, ", Freq %s", v69);
        objc_storeStrong(v70 + 5, v709);
      }

      bleChannel = [(CBDevice *)self bleChannel];
      if (bleChannel)
      {
        v72 = v738;
        v708 = v738[5];
        NSAppendPrintF_safe(&v708, ", Ch %d", bleChannel);
        objc_storeStrong(v72 + 5, v708);
      }

      autoAncCapability = [(CBDevice *)self autoAncCapability];
      if (autoAncCapability)
      {
        v74 = v738;
        v707 = v738[5];
        NSAppendPrintF_safe(&v707, ", aaCp %u", autoAncCapability);
        objc_storeStrong(v74 + 5, v707);
      }

      batteryInfoMain = [(CBDevice *)self batteryInfoMain];
      batteryInfoLeft = [(CBDevice *)self batteryInfoLeft];
      levelCopy2 = level;
      batteryInfoRight = [(CBDevice *)self batteryInfoRight];
      batteryInfoCase = [(CBDevice *)self batteryInfoCase];
      v80 = batteryInfoCase;
      if (batteryInfoMain || batteryInfoLeft || batteryInfoRight || batteryInfoCase)
      {
        v81 = v738;
        v706 = v738[5];
        NSAppendPrintF_safe(&v706, ", Battery");
        objc_storeStrong(v81 + 5, v706);
        if (batteryInfoMain)
        {
          v82 = v738 + 5;
          v705 = v738[5];
          v83 = (batteryInfoMain >> 8) & 7;
          if (v83 == 2)
          {
            v84 = "-";
          }

          else
          {
            v84 = "";
          }

          v515 = v83 == 1;
          v85 = "+";
          if (!v515)
          {
            v85 = v84;
          }

          NSAppendPrintF_safe(&v705, " M %s%u%%", v85, (((batteryInfoMain & 0x7F) / 100.0) * 100.0));
          objc_storeStrong(v82, v705);
        }

        if (batteryInfoLeft)
        {
          v86 = v738 + 5;
          v704 = v738[5];
          v87 = (batteryInfoLeft >> 8) & 7;
          if (v87 == 2)
          {
            v88 = "-";
          }

          else
          {
            v88 = "";
          }

          v515 = v87 == 1;
          v89 = "+";
          if (!v515)
          {
            v89 = v88;
          }

          NSAppendPrintF_safe(&v704, " L %s%u%%", v89, (((batteryInfoLeft & 0x7F) / 100.0) * 100.0));
          objc_storeStrong(v86, v704);
        }

        if (batteryInfoRight)
        {
          v90 = v738 + 5;
          v703 = v738[5];
          v91 = (batteryInfoRight >> 8) & 7;
          if (v91 == 2)
          {
            v92 = "-";
          }

          else
          {
            v92 = "";
          }

          v515 = v91 == 1;
          v93 = "+";
          if (!v515)
          {
            v93 = v92;
          }

          NSAppendPrintF_safe(&v703, " R %s%u%%", v93, (((batteryInfoRight & 0x7F) / 100.0) * 100.0));
          objc_storeStrong(v90, v703);
        }

        if (v80)
        {
          v94 = v738 + 5;
          v702 = v738[5];
          v95 = (v80 >> 8) & 7;
          if (v95 == 2)
          {
            v96 = "-";
          }

          else
          {
            v96 = "";
          }

          v515 = v95 == 1;
          v97 = "+";
          if (!v515)
          {
            v97 = v96;
          }

          NSAppendPrintF_safe(&v702, " C %s%u%%", v97, (((v80 & 0x7F) / 100.0) * 100.0));
          objc_storeStrong(v94, v702);
        }
      }

      clickHoldModeLeft = [(CBDevice *)self clickHoldModeLeft];
      clickHoldModeRight = [(CBDevice *)self clickHoldModeRight];
      if (clickHoldModeLeft | clickHoldModeRight)
      {
        v100 = v738;
        v701 = v738[5];
        NSAppendPrintF_safe(&v701, ", ClkH");
        objc_storeStrong(v100 + 5, v701);
        if (clickHoldModeLeft)
        {
          v101 = v738 + 5;
          v700 = v738[5];
          if (clickHoldModeLeft > 7)
          {
            v102 = @"?";
          }

          else
          {
            v102 = *(&off_1E81215C0 + clickHoldModeLeft - 1);
          }

          NSAppendPrintF_safe(&v700, " L %@", v102);
          objc_storeStrong(v101, v700);
        }

        if (clickHoldModeRight)
        {
          v103 = v738 + 5;
          v699 = v738[5];
          if (clickHoldModeRight > 7)
          {
            v104 = @"?";
          }

          else
          {
            v104 = *(&off_1E81215C0 + clickHoldModeRight - 1);
          }

          NSAppendPrintF_safe(&v699, " R %@", v104);
          objc_storeStrong(v103, v699);
        }
      }

      endCallCapability = [(CBDevice *)self endCallCapability];
      if (endCallCapability)
      {
        v106 = v738;
        v698 = v738[5];
        NSAppendPrintF_safe(&v698, ", ECCp %u", endCallCapability);
        objc_storeStrong(v106 + 5, v698);
      }

      endCallConfig = [(CBDevice *)self endCallConfig];
      if (endCallConfig)
      {
        v108 = v738;
        v697 = v738[5];
        NSAppendPrintF_safe(&v697, ", ECC %u", endCallConfig);
        objc_storeStrong(v108 + 5, v697);
      }

      muteControlCapability = self->_muteControlCapability;
      if (self->_muteControlCapability)
      {
        v110 = v738;
        v696 = v738[5];
        NSAppendPrintF_safe(&v696, ", MCCp %u", muteControlCapability);
        objc_storeStrong(v110 + 5, v696);
      }

      muteControlConfig = [(CBDevice *)self muteControlConfig];
      if (muteControlConfig)
      {
        v112 = v738;
        v695 = v738[5];
        NSAppendPrintF_safe(&v695, ", MCC %u", muteControlConfig);
        objc_storeStrong(v112 + 5, v695);
      }

      caseVersion = [(CBDevice *)self caseVersion];
      v114 = caseVersion;
      if (caseVersion)
      {
        v115 = v738;
        v694 = v738[5];
        NSAppendPrintF_safe(&v694, ", CVer'%@'", caseVersion);
        objc_storeStrong(v115 + 5, v694);
      }

      if (([(CBDevice *)self colorInfo]& 0x100) != 0)
      {
        v116 = v738;
        v693 = v738[5];
        NSAppendPrintF_safe(&v693, ", Color %d", [(CBDevice *)self colorCodeBest]);
        objc_storeStrong(v116 + 5, v693);
      }

      v117 = self->_controllerInfo;
      v118 = v117;
      if (v117)
      {
        v119 = v738;
        v692 = v738[5];
        NSAppendPrintF_safe(&v692, ", CtInfo %@", v117);
        objc_storeStrong(v119 + 5, v692);
      }

      conversationDetectCapability = [(CBDevice *)self conversationDetectCapability];
      if (conversationDetectCapability)
      {
        v121 = v738;
        v691 = v738[5];
        NSAppendPrintF_safe(&v691, ", cdCp %u", conversationDetectCapability);
        objc_storeStrong(v121 + 5, v691);
      }

      conversationDetectConfig = [(CBDevice *)self conversationDetectConfig];
      if (conversationDetectConfig)
      {
        v123 = v738;
        v690 = v738[5];
        NSAppendPrintF_safe(&v690, ", cDC %u", conversationDetectConfig);
        objc_storeStrong(v123 + 5, v690);
      }

      crownRotationDirection = [(CBDevice *)self crownRotationDirection];
      if (crownRotationDirection)
      {
        v125 = @"?";
        if (crownRotationDirection == 1)
        {
          v125 = @"BackToFront";
        }

        if (crownRotationDirection == 2)
        {
          v125 = @"FrontToBack";
        }

        v126 = v738;
        v689 = v738[5];
        v127 = v125;
        NSAppendPrintF_safe(&v689, ", CrRD %@", v127);
        objc_storeStrong(v126 + 5, v689);
      }

      doubleTapActionLeft = [(CBDevice *)self doubleTapActionLeft];
      doubleTapActionRight = [(CBDevice *)self doubleTapActionRight];
      doubleTapCapability = [(CBDevice *)self doubleTapCapability];
      v131 = doubleTapCapability;
      if (doubleTapActionLeft || doubleTapActionRight || doubleTapCapability)
      {
        v132 = v738;
        v688 = v738[5];
        NSAppendPrintF_safe(&v688, ", DbTp");
        objc_storeStrong(v132 + 5, v688);
        if (doubleTapActionLeft)
        {
          v133 = v738 + 5;
          v687 = v738[5];
          if (doubleTapActionLeft > 5)
          {
            v134 = "?";
          }

          else
          {
            v134 = off_1E8122038[doubleTapActionLeft - 1];
          }

          NSAppendPrintF_safe(&v687, " L %s", v134);
          objc_storeStrong(v133, v687);
        }

        if (doubleTapActionRight)
        {
          v135 = v738 + 5;
          v686 = v738[5];
          if (doubleTapActionRight > 5)
          {
            v136 = "?";
          }

          else
          {
            v136 = off_1E8122038[doubleTapActionRight - 1];
          }

          NSAppendPrintF_safe(&v686, " R %s", v136);
          objc_storeStrong(v135, v686);
        }

        if (v131)
        {
          v137 = v738 + 5;
          v685 = v738[5];
          if (v131 > 3)
          {
            v138 = "?";
          }

          else
          {
            v138 = off_1E8122060[v131 - 1];
          }

          NSAppendPrintF_safe(&v685, " C %s", v138);
          objc_storeStrong(v137, v685);
        }
      }

      if ([(CBDevice *)self gapaFlags])
      {
        v139 = v738;
        v684 = v738[5];
        v140 = CUPrintFlags32();
        NSAppendPrintF_safe(&v684, ", GAPA %@", v140);
        objc_storeStrong(v139 + 5, v684);
      }

      v141 = self->_firmwareVersion;
      v142 = v141;
      if (v141)
      {
        v143 = v738;
        v683 = v738[5];
        NSAppendPrintF_safe(&v683, ", FV '%@'", v141);
        objc_storeStrong(v143 + 5, v683);
      }

      listeningMode = [(CBDevice *)self listeningMode];
      if (listeningMode)
      {
        v145 = v738 + 5;
        v682 = v738[5];
        if (listeningMode > 4)
        {
          v146 = "?";
        }

        else
        {
          v146 = off_1E8122078[listeningMode - 1];
        }

        NSAppendPrintF_safe(&v682, ", LsnM %s", v146);
        objc_storeStrong(v145, v682);
      }

      if ([(CBDevice *)self listeningModeConfigs])
      {
        v147 = v738;
        v681 = v738[5];
        v148 = CUPrintFlags32();
        NSAppendPrintF_safe(&v681, ", LsMC %@", v148);
        objc_storeStrong(v147 + 5, v681);
      }

      btVersion = [(CBDevice *)self btVersion];
      v150 = btVersion;
      if (btVersion)
      {
        v151 = v738;
        v680 = v738[5];
        NSAppendPrintF_safe(&v680, ", BTv %s", [btVersion cStringUsingEncoding:4]);
        objc_storeStrong(v151 + 5, v680);
      }

      microphoneMode = self->_microphoneMode;
      if (self->_microphoneMode)
      {
        v153 = v738 + 5;
        v679 = v738[5];
        if (microphoneMode > 3)
        {
          v154 = "?";
        }

        else
        {
          v154 = off_1E8122098[microphoneMode - 1];
        }

        NSAppendPrintF_safe(&v679, ", MicM %s", v154);
        objc_storeStrong(v153, v679);
      }

      primaryPlacement = self->_primaryPlacement;
      secondaryPlacement = self->_secondaryPlacement;
      placementMode = self->_placementMode;
      if (__PAIR64__(secondaryPlacement, primaryPlacement) || self->_placementMode)
      {
        v158 = v738;
        v678 = v738[5];
        NSAppendPrintF_safe(&v678, ", Plcm");
        objc_storeStrong(v158 + 5, v678);
        if (primaryPlacement)
        {
          v159 = v738 + 5;
          v677 = v738[5];
          if (primaryPlacement > 7)
          {
            v160 = "?";
          }

          else
          {
            v160 = off_1E8121B70[primaryPlacement - 1];
          }

          NSAppendPrintF_safe(&v677, " P %s", v160);
          objc_storeStrong(v159, v677);
        }

        if (secondaryPlacement)
        {
          v161 = v738 + 5;
          v676 = v738[5];
          if (secondaryPlacement > 7)
          {
            v162 = "?";
          }

          else
          {
            v162 = off_1E8121B70[secondaryPlacement - 1];
          }

          NSAppendPrintF_safe(&v676, " S %s", v162);
          objc_storeStrong(v161, v676);
        }

        if (placementMode)
        {
          v163 = v738 + 5;
          v675 = v738[5];
          v164 = "Enabled";
          if (placementMode != 1)
          {
            v164 = "?";
          }

          if (placementMode == 2)
          {
            v164 = "Disabled";
          }

          NSAppendPrintF_safe(&v675, " M %s", v164);
          objc_storeStrong(v163, v675);
        }
      }

      primaryBudSide = [(CBDevice *)self primaryBudSide];
      if (primaryBudSide)
      {
        v166 = v738 + 5;
        v674 = v738[5];
        if (primaryBudSide > 3)
        {
          v167 = "?";
        }

        else
        {
          v167 = off_1E81215F8[primaryBudSide - 1];
        }

        NSAppendPrintF_safe(&v674, ", Prim %s", v167);
        objc_storeStrong(v166, v674);
      }

      findMyCaseIdentifier = [(CBDevice *)self findMyCaseIdentifier];
      v169 = findMyCaseIdentifier;
      if (findMyCaseIdentifier)
      {
        v170 = v738;
        v673 = v738[5];
        NSAppendPrintF_safe(&v673, ", fmCI %@", findMyCaseIdentifier);
        objc_storeStrong(v170 + 5, v673);
      }

      findMyGroupIdentifier = [(CBDevice *)self findMyGroupIdentifier];
      v172 = findMyGroupIdentifier;
      if (findMyGroupIdentifier)
      {
        v173 = v738;
        v672 = v738[5];
        NSAppendPrintF_safe(&v672, ", fmGI %@", findMyGroupIdentifier);
        objc_storeStrong(v173 + 5, v672);
      }

      interval = [(CBDevice *)self interval];
      if (interval && ([(CBDevice *)self discoveryFlags]& 0x200000) != 0)
      {
        v175 = interval;
        if (([(CBDevice *)self deviceFlags]& 0x4000) != 0)
        {
          v176 = v738 + 5;
          v671 = v738[5];
          NSAppendPrintF_safe(&v671, ", Invl %gms", v175 * 0.625);
          v177 = v671;
        }

        else
        {
          if (([(CBDevice *)self deviceFlags]& 0x2000) == 0)
          {
            goto LABEL_239;
          }

          v176 = v738 + 5;
          v670 = v738[5];
          NSAppendPrintF_safe(&v670, ", Invl %gms", v175 * 1.25);
          v177 = v670;
        }

        v178 = v177;
        v179 = *v176;
        *v176 = v178;
      }

LABEL_239:
      modelUser = [(CBDevice *)self modelUser];
      v181 = modelUser;
      if (modelUser)
      {
        v182 = v738;
        v669 = v738[5];
        NSAppendPrintF_safe(&v669, ", modU %@", modelUser);
        objc_storeStrong(v182 + 5, v669);
      }

      v183 = self->_serialNumber;
      v184 = v183;
      if (v183)
      {
        v185 = v738;
        v668 = v738[5];
        NSAppendPrintF_safe(&v668, ", SN '%@'", v183);
        objc_storeStrong(v185 + 5, v668);
      }

      v186 = self->_serialNumberLeft;
      v187 = v186;
      if (v186)
      {
        v188 = v738;
        v667 = v738[5];
        NSAppendPrintF_safe(&v667, ", SN Left'%@'", v186);
        objc_storeStrong(v188 + 5, v667);
      }

      v189 = self->_serialNumberRight;
      v190 = v189;
      if (v189)
      {
        v191 = v738;
        v666 = v738[5];
        NSAppendPrintF_safe(&v666, ", SN Right '%@'", v189);
        objc_storeStrong(v191 + 5, v666);
      }

      smartRoutingMode = self->_smartRoutingMode;
      if (self->_smartRoutingMode)
      {
        v193 = "Enabled";
        if (smartRoutingMode != 1)
        {
          v193 = "?";
        }

        if (smartRoutingMode == 2)
        {
          v194 = "Disabled";
        }

        else
        {
          v194 = v193;
        }

        v195 = v738;
        v665 = v738[5];
        NSAppendPrintF_safe(&v665, ", srMd %s", v194);
        objc_storeStrong(v195 + 5, v665);
      }

      spatialAudioMode = [(CBDevice *)self spatialAudioMode];
      if (!spatialAudioMode)
      {
LABEL_266:
        v200 = CBDiscoveryTypesBuffer(spatialAudioMode, v197);
        if (CBDiscoveryTypesContainTypes(self->_discoveryTypesInternal.bitArray, v200))
        {
          if (IsAppleInternalBuild())
          {
            [(CBDevice *)self bleAdvertisementTimestamp];
            if (v201 != 0.0)
            {
              v202 = v738;
              v663 = v738[5];
              bleAdvertisementTimestampString = [(CBDevice *)self bleAdvertisementTimestampString];
              NSAppendPrintF_safe(&v663, ", AdTs <%@>", bleAdvertisementTimestampString);
              objc_storeStrong(v202 + 5, v663);
            }
          }
        }

        if ([(CBDevice *)self bleAdvertisementTimestampMachContinuous])
        {
          v204 = v738;
          v662 = v738[5];
          NSAppendPrintF_safe(&v662, ", AdTsMC <%llu>", [(CBDevice *)self bleAdvertisementTimestampMachContinuous]);
          objc_storeStrong(v204 + 5, v662);
        }

        bleAppleManufacturerData = [(CBDevice *)self bleAppleManufacturerData];
        if (bleAppleManufacturerData)
        {
          v206 = v738;
          v661 = v738[5];
          v207 = CUPrintNSDataHex();
          NSAppendPrintF_safe(&v661, ", AMfD <%@>", v207);
          objc_storeStrong(v206 + 5, v661);
        }

        if ((levelCopy2 & 0x800000) != 0)
        {
          linkKeyData = [(CBDevice *)self linkKeyData];
          if (linkKeyData)
          {
            v209 = v738;
            v660 = v738[5];
            v210 = CUPrintNSDataHex();
            NSAppendPrintF_safe(&v660, ", LinkKey <%@>", v210);
            objc_storeStrong(v209 + 5, v660);
          }

          irkData = [(CBDevice *)self irkData];
          if (irkData)
          {
            v212 = v738;
            v659 = v738[5];
            v213 = CUPrintNSDataHex();
            NSAppendPrintF_safe(&v659, ", IRK <%@>", v213);
            objc_storeStrong(v212 + 5, v659);
          }

          ltkData = [(CBDevice *)self ltkData];
          if (ltkData)
          {
            v215 = v738;
            v658 = v738[5];
            v216 = CUPrintNSDataHex();
            NSAppendPrintF_safe(&v658, ", LTK <%@>", v216);
            objc_storeStrong(v215 + 5, v658);
          }
        }

        discoveryFlags = self->_discoveryFlags;
        if ((discoveryFlags & 0x80) != 0)
        {
          v218 = v738;
          v657 = v738[5];
          [(CBDevice *)self accessoryStatusFlags];
          v219 = CUPrintFlags32();
          NSAppendPrintF_safe(&v657, ", asFl %@", v219);
          objc_storeStrong(v218 + 5, v657);

          v220 = v738;
          v656 = v738[5];
          NSAppendPrintF_safe(&v656, ", asLO %u", [(CBDevice *)self accessoryStatusLidOpenCount]);
          objc_storeStrong(v220 + 5, v656);
          v221 = v738;
          v655 = v738[5];
          [(CBDevice *)self accessoryStatusOBCTime];
          v222 = CUPrintDurationDouble();
          NSAppendPrintF_safe(&v655, ", asOT %@", v222);
          objc_storeStrong(v221 + 5, v655);
        }

        if ([(CBDevice *)self airdropFlags])
        {
          v223 = v738;
          v654 = v738[5];
          v224 = CUPrintFlags32();
          NSAppendPrintF_safe(&v654, ", adFl %@", v224);
          objc_storeStrong(v223 + 5, v654);
        }

        airdropTempAuthTagData = [(CBDevice *)self airdropTempAuthTagData];
        if (airdropTempAuthTagData)
        {
          v226 = v738;
          v653 = v738[5];
          v227 = CUPrintNSDataHex();
          NSAppendPrintF_safe(&v653, ", adTa <%@>", v227);
          objc_storeStrong(v226 + 5, v653);
        }

        airdropModel = [(CBDevice *)self airdropModel];
        if (airdropModel)
        {
          v229 = v738;
          v652 = v738[5];
          NSAppendPrintF_safe(&v652, ", adMl 0x%02X", airdropModel);
          objc_storeStrong(v229 + 5, v652);
        }

        airdropVersion = [(CBDevice *)self airdropVersion];
        if (airdropVersion)
        {
          v231 = v738;
          v651 = v738[5];
          NSAppendPrintF_safe(&v651, ", adVr %d", airdropVersion);
          objc_storeStrong(v231 + 5, v651);
        }

        airdropHash1 = [(CBDevice *)self airdropHash1];
        if (airdropHash1)
        {
          v233 = v738;
          v650 = v738[5];
          NSAppendPrintF_safe(&v650, ", adH1 0x%04X", airdropHash1);
          objc_storeStrong(v233 + 5, v650);
        }

        airdropHash2 = [(CBDevice *)self airdropHash2];
        if (airdropHash2)
        {
          v235 = v738;
          v649 = v738[5];
          NSAppendPrintF_safe(&v649, ", adH2 0x%04X", airdropHash2);
          objc_storeStrong(v235 + 5, v649);
        }

        airdropHash3 = [(CBDevice *)self airdropHash3];
        if (airdropHash3)
        {
          v237 = v738;
          v648 = v738[5];
          NSAppendPrintF_safe(&v648, ", adH3 0x%04X", airdropHash3);
          objc_storeStrong(v237 + 5, v648);
        }

        airdropHash4 = [(CBDevice *)self airdropHash4];
        if (airdropHash4)
        {
          v239 = v738;
          v647 = v738[5];
          NSAppendPrintF_safe(&v647, ", adH4 0x%04X", airdropHash4);
          objc_storeStrong(v239 + 5, v647);
        }

        if ([(CBDevice *)self airdropConfigData])
        {
          v240 = v738;
          v646 = v738[5];
          v241 = CUPrintFlags32();
          NSAppendPrintF_safe(&v646, ", adCd %@", v241);
          objc_storeStrong(v240 + 5, v646);
        }

        if ((discoveryFlags & 0x4000000000) != 0)
        {
          airplaySourceAuthTagData = [(CBDevice *)self airplaySourceAuthTagData];
          if (airplaySourceAuthTagData)
          {
            v243 = v738;
            v645 = v738[5];
            v244 = CUPrintNSDataHex();
            NSAppendPrintF_safe(&v645, ", apAT <%@>", v244);
            objc_storeStrong(v243 + 5, v645);
          }

          v245 = v738;
          v644 = v738[5];
          [(CBDevice *)self airplaySourceFlags];
          v246 = CUPrintFlags32();
          NSAppendPrintF_safe(&v644, ", apSF %@", v246);
          objc_storeStrong(v245 + 5, v644);

          airplaySourceUWBConfigData = [(CBDevice *)self airplaySourceUWBConfigData];
          if (airplaySourceUWBConfigData)
          {
            v248 = v738;
            v643 = v738[5];
            v249 = CUPrintNSDataHex();
            NSAppendPrintF_safe(&v643, ", apUW %@", v249);
            objc_storeStrong(v248 + 5, v643);
          }
        }

        if ((discoveryFlags & 0x8000000000) != 0)
        {
          v250 = v738;
          v642 = v738[5];
          NSAppendPrintF_safe(&v642, ", apTC %d", [(CBDevice *)self airplayTargetConfigSeed]);
          objc_storeStrong(v250 + 5, v642);
          v251 = v738;
          v641 = v738[5];
          [(CBDevice *)self airplayTargetFlags];
          v252 = CUPrintFlags32();
          NSAppendPrintF_safe(&v641, ", apTF %@", v252);
          objc_storeStrong(v251 + 5, v641);

          if ([(CBDevice *)self airplayTargetIPv4])
          {
            v253 = v738;
            v639 = v738[5];
            v254 = CUPrintAddress();
            NSAppendPrintF_safe(&v639, ", apTI %@", v254);
            objc_storeStrong(v253 + 5, v639);
          }

          if (([(CBDevice *)self airplayTargetFlags]& 0x20) != 0)
          {
            v255 = v738;
            v638 = v738[5];
            airplayTargetIPv6 = [(CBDevice *)self airplayTargetIPv6];
            NSAppendPrintF_safe(&v638, ", apTI6 %@", airplayTargetIPv6);
            objc_storeStrong(v255 + 5, v638);
          }

          if (([(CBDevice *)self airplayTargetFlags]& 0x10) != 0)
          {
            v257 = v738;
            v637 = v738[5];
            NSAppendPrintF_safe(&v637, ", apTP %u", [(CBDevice *)self airplayTargetPort]);
            objc_storeStrong(v257 + 5, v637);
          }
        }

        dockKitAccessoryPayloadData = [(CBDevice *)self dockKitAccessoryPayloadData];
        if (dockKitAccessoryPayloadData)
        {
          v259 = v738;
          v636 = v738[5];
          v260 = CUPrintNSDataHex();
          NSAppendPrintF_safe(&v636, ", dKAPD <%@>", v260);
          objc_storeStrong(v259 + 5, v636);
        }

        if ((discoveryFlags & 0x1000000000000000) != 0)
        {
          v261 = v738;
          v635 = v738[5];
          [(CBDevice *)self dsActionFlags];
          v262 = CUPrintFlags32();
          NSAppendPrintF_safe(&v635, ", dsAF %@", v262);
          objc_storeStrong(v261 + 5, v635);

          v263 = v738;
          v634 = v738[5];
          NSAppendPrintF_safe(&v634, ", dsAP %d", [(CBDevice *)self dsActionMeasuredPower]);
          objc_storeStrong(v263 + 5, v634);
          v264 = v738;
          v633 = v738[5];
          NSAppendPrintF_safe(&v633, ", dsAT 0x%02X", [(CBDevice *)self dsActionTieBreaker]);
          objc_storeStrong(v264 + 5, v633);
        }

        if ((discoveryFlags & 0x800000000000000) != 0)
        {
          v265 = v738;
          v632 = v738[5];
          NSAppendPrintF_safe(&v632, ", dsVC %u", [(CBDevice *)self dsInfoVehicleConfidence]);
          objc_storeStrong(v265 + 5, v632);
          v266 = v738 + 5;
          v631 = v738[5];
          dsInfoVehicleState = [(CBDevice *)self dsInfoVehicleState];
          if (dsInfoVehicleState > 2)
          {
            v268 = "?";
          }

          else
          {
            v268 = off_1E8121610[dsInfoVehicleState];
          }

          NSAppendPrintF_safe(&v631, ", dsVS %s", v268);
          objc_storeStrong(v266, v631);
        }

        gfpPayloadData = [(CBDevice *)self gfpPayloadData];
        if (gfpPayloadData)
        {
          v270 = v738;
          v630 = v738[5];
          v271 = CUPrintNSDataHex();
          NSAppendPrintF_safe(&v630, ", gfpD <%@>, gfpM 0x%X", v271, [(CBDevice *)self gfpModelID]);
          objc_storeStrong(v270 + 5, v630);
        }

        fidoPayloadData = [(CBDevice *)self fidoPayloadData];
        if (fidoPayloadData)
        {
          v273 = v738;
          v629 = v738[5];
          v274 = CUPrintNSDataHex();
          NSAppendPrintF_safe(&v629, ", fdPD <%@>", v274);
          objc_storeStrong(v273 + 5, v629);
        }

        if ((discoveryFlags & 0x400000000000000) != 0)
        {
          v275 = v738;
          v628 = v738[5];
          NSAppendPrintF_safe(&v628, ", hsCf %u", [(CBDevice *)self heySiriConfidence]);
          objc_storeStrong(v275 + 5, v628);
          v276 = v738 + 5;
          v627 = v738[5];
          heySiriDeviceClass = [(CBDevice *)self heySiriDeviceClass];
          if (heySiriDeviceClass > 0xA)
          {
            v278 = "?";
          }

          else
          {
            v278 = off_1E8121BA8[heySiriDeviceClass];
          }

          NSAppendPrintF_safe(&v627, ", hsDC %s", v278);
          objc_storeStrong(v276, v627);
          v279 = v738;
          v626 = v738[5];
          NSAppendPrintF_safe(&v626, ", hsPH 0x%04X", [(CBDevice *)self heySiriPerceptualHash]);
          objc_storeStrong(v279 + 5, v626);
          v280 = v738 + 5;
          v625 = v738[5];
          heySiriProductType = [(CBDevice *)self heySiriProductType];
          if (heySiriProductType > 4)
          {
            v282 = "?";
          }

          else
          {
            v282 = off_1E8121628[heySiriProductType];
          }

          NSAppendPrintF_safe(&v625, ", hsPT %s", v282);
          objc_storeStrong(v280, v625);
          v283 = v738;
          v624 = v738[5];
          NSAppendPrintF_safe(&v624, ", hsRn 0x%02X", [(CBDevice *)self heySiriRandom]);
          objc_storeStrong(v283 + 5, v624);
          v284 = v738;
          v623 = v738[5];
          NSAppendPrintF_safe(&v623, ", hsSN %u", [(CBDevice *)self heySiriSNR]);
          objc_storeStrong(v284 + 5, v623);
        }

        if ((discoveryFlags & 0x400000) != 0)
        {
          v285 = v738;
          v622 = v738[5];
          NSAppendPrintF_safe(&v622, ", hkCa %d", [(CBDevice *)self homeKitV1Category]);
          objc_storeStrong(v285 + 5, v622);
          v286 = v738;
          v621 = v738[5];
          NSAppendPrintF_safe(&v621, ", hkCV %d", [(CBDevice *)self homeKitV1CompatibleVersion]);
          objc_storeStrong(v286 + 5, v621);
          v287 = v738;
          v620 = v738[5];
          NSAppendPrintF_safe(&v620, ", hkCN %d", [(CBDevice *)self homeKitV1ConfigurationNumber]);
          objc_storeStrong(v287 + 5, v620);
          v288 = v738;
          v619 = v738[5];
          homeKitV1DeviceIDData = [(CBDevice *)self homeKitV1DeviceIDData];
          NSAppendPrintF_safe(&v619, ", hkDI %@", homeKitV1DeviceIDData);
          objc_storeStrong(v288 + 5, v619);

          v290 = v738;
          v618 = v738[5];
          [(CBDevice *)self homeKitV1Flags];
          v291 = CUPrintFlags32();
          NSAppendPrintF_safe(&v618, ", hkFl %@", v291);
          objc_storeStrong(v290 + 5, v618);

          v292 = v738;
          v617 = v738[5];
          NSAppendPrintF_safe(&v617, ", hkS1 %d", [(CBDevice *)self homeKitV1StateNumber]);
          objc_storeStrong(v292 + 5, v617);
          v293 = v738;
          v616 = v738[5];
          NSAppendPrintF_safe(&v616, ", hkSH 0x%X", [(CBDevice *)self homeKitV1SetupHash]);
          objc_storeStrong(v293 + 5, v616);
        }

        if ((discoveryFlags & 0x1000000) != 0)
        {
          v294 = v738;
          v615 = v738[5];
          homeKitV2AccessoryIDData = [(CBDevice *)self homeKitV2AccessoryIDData];
          NSAppendPrintF_safe(&v615, ", hkAI %@", homeKitV2AccessoryIDData);
          objc_storeStrong(v294 + 5, v615);

          v296 = v738;
          v614 = v738[5];
          homeKitV2AuthTagData = [(CBDevice *)self homeKitV2AuthTagData];
          NSAppendPrintF_safe(&v614, ", hkAT %@", homeKitV2AuthTagData);
          objc_storeStrong(v296 + 5, v614);

          v298 = v738;
          v613 = v738[5];
          NSAppendPrintF_safe(&v613, ", hkII %d", [(CBDevice *)self homeKitV2InstanceID]);
          objc_storeStrong(v298 + 5, v613);
          v299 = v738;
          v612 = v738[5];
          NSAppendPrintF_safe(&v612, ", hkS2 %d", [(CBDevice *)self homeKitV2StateNumber]);
          objc_storeStrong(v299 + 5, v612);
          v300 = v738;
          v611 = v738[5];
          NSAppendPrintF_safe(&v611, ", hkVa %llu", [(CBDevice *)self homeKitV2Value]);
          objc_storeStrong(v300 + 5, v611);
        }

        if ((discoveryFlags & 0x80000000000000) != 0)
        {
          mspAddressData = [(CBDevice *)self mspAddressData];
          if (mspAddressData)
          {
            v302 = v738;
            v610 = v738[5];
            v303 = CUPrintNSDataAddress();
            NSAppendPrintF_safe(&v610, ", mspA %@", v303);
            objc_storeStrong(v302 + 5, v610);
          }

          mspDeviceClass = [(CBDevice *)self mspDeviceClass];
          if (mspDeviceClass)
          {
            v305 = v738;
            v609 = v738[5];
            NSAppendPrintF_safe(&v609, ", mspD 0x%X", mspDeviceClass);
            objc_storeStrong(v305 + 5, v609);
          }

          mspDisplayName = [(CBDevice *)self mspDisplayName];
          v307 = mspDisplayName;
          if (mspDisplayName)
          {
            v308 = v738;
            v608 = v738[5];
            NSAppendPrintF_safe(&v608, ", mspN %@", mspDisplayName);
            objc_storeStrong(v308 + 5, v608);
          }

          v309 = v738 + 5;
          v607 = v738[5];
          mspSubScenario = [(CBDevice *)self mspSubScenario];
          if (mspSubScenario > 2)
          {
            v311 = "?";
          }

          else
          {
            v311 = off_1E8121650[mspSubScenario];
          }

          NSAppendPrintF_safe(&v607, ", mspS %s", v311);
          objc_storeStrong(v309, v607);
        }

        nearbyActionColorCode = [(CBDevice *)self nearbyActionColorCode];
        if (nearbyActionColorCode)
        {
          v313 = v738;
          v606 = v738[5];
          NSAppendPrintF_safe(&v606, ", naCC %u", nearbyActionColorCode);
          objc_storeStrong(v313 + 5, v606);
        }

        nearbyActionExtraData = [(CBDevice *)self nearbyActionExtraData];
        if (nearbyActionExtraData)
        {
          v315 = v738;
          v605 = v738[5];
          v316 = CUPrintNSDataHex();
          NSAppendPrintF_safe(&v605, ", naED <%@>", v316);
          objc_storeStrong(v315 + 5, v605);
        }

        if ([(CBDevice *)self nearbyActionFlags])
        {
          v317 = v738;
          v604 = v738[5];
          v318 = CUPrintFlags32();
          NSAppendPrintF_safe(&v604, ", nbAF %@", v318);
          objc_storeStrong(v317 + 5, v604);
        }

        nearbyActionType = [(CBDevice *)self nearbyActionType];
        if (nearbyActionType)
        {
          v320 = v738 + 5;
          v603 = v738[5];
          if (nearbyActionType >= 0x60)
          {
            v321 = "?";
          }

          else
          {
            v321 = off_1E81216B0[nearbyActionType - 1];
          }

          NSAppendPrintF_safe(&v603, ", nbAc %s", v321);
          objc_storeStrong(v320, v603);
        }

        nearbyActionAuthTag = [(CBDevice *)self nearbyActionAuthTag];
        if (nearbyActionAuthTag)
        {
          v323 = v738;
          v602 = v738[5];
          v324 = CUPrintNSDataHex();
          NSAppendPrintF_safe(&v602, ", nbAa <%@>", v324);
          objc_storeStrong(v323 + 5, v602);
        }

        nearbyActionTargetAuthTag = [(CBDevice *)self nearbyActionTargetAuthTag];
        if (nearbyActionTargetAuthTag)
        {
          v326 = v738;
          v601 = v738[5];
          v327 = CUPrintNSDataHex();
          NSAppendPrintF_safe(&v601, ", nbTg <%@>", v327);
          objc_storeStrong(v326 + 5, v601);
        }

        nearbyActionDeviceClass = [(CBDevice *)self nearbyActionDeviceClass];
        if (nearbyActionDeviceClass)
        {
          v329 = v738 + 5;
          v600 = v738[5];
          if (nearbyActionDeviceClass > 9)
          {
            v330 = "?";
          }

          else
          {
            v330 = off_1E8121668[nearbyActionDeviceClass - 1];
          }

          NSAppendPrintF_safe(&v600, ", nbDC %s", v330);
          objc_storeStrong(v329, v600);
        }

        if ([(CBDevice *)self nearbyActionV2Flags])
        {
          v331 = v738;
          v599 = v738[5];
          v332 = CUPrintFlags32();
          NSAppendPrintF_safe(&v599, ", n2Fl %@", v332);
          objc_storeStrong(v331 + 5, v599);
        }

        nearbyActionV2Type = [(CBDevice *)self nearbyActionV2Type];
        if (nearbyActionV2Type)
        {
          v334 = v738 + 5;
          v598 = v738[5];
          if (nearbyActionV2Type >= 0x60)
          {
            v335 = "?";
          }

          else
          {
            v335 = off_1E81216B0[nearbyActionV2Type - 1];
          }

          NSAppendPrintF_safe(&v598, ", n2Ac %s", v335);
          objc_storeStrong(v334, v598);
        }

        nearbyActionV2TargetData = [(CBDevice *)self nearbyActionV2TargetData];
        if (nearbyActionV2TargetData)
        {
          v337 = v738;
          v597 = v738[5];
          v338 = CUPrintNSDataHex();
          NSAppendPrintF_safe(&v597, ", n2Tg %@", v338);
          objc_storeStrong(v337 + 5, v597);
        }

        nearbyInfoAuthTag = [(CBDevice *)self nearbyInfoAuthTag];
        if (nearbyInfoAuthTag)
        {
          v340 = v738;
          v596 = v738[5];
          v341 = CUPrintNSDataHex();
          NSAppendPrintF_safe(&v596, ", nbIAT <%@>", v341);
          objc_storeStrong(v340 + 5, v596);
        }

        if ([(CBDevice *)self nearbyInfoFlags])
        {
          v342 = v738;
          v595 = v738[5];
          v343 = CUPrintFlags32();
          NSAppendPrintF_safe(&v595, ", nbIF %@", v343);
          objc_storeStrong(v342 + 5, v595);
        }

        [(CBDevice *)self nearbyInfoStatusProgress];
        if (v344 != 0.0)
        {
          v345 = v738;
          v594 = v738[5];
          NSAppendPrintF_safe(&v594, ", nsPr %.0f%%", v344 * 100.0);
          objc_storeStrong(v345 + 5, v594);
        }

        nearbyInfoStatusTime = [(CBDevice *)self nearbyInfoStatusTime];
        if (nearbyInfoStatusTime)
        {
          v347 = v738 + 5;
          v593 = v738[5];
          if (nearbyInfoStatusTime > 0xE)
          {
            v348 = "?";
          }

          else
          {
            v348 = off_1E81219A8[nearbyInfoStatusTime - 1];
          }

          NSAppendPrintF_safe(&v593, ", nsTi %s", v348);
          objc_storeStrong(v347, v593);
        }

        nearbyInfoStatusType = [(CBDevice *)self nearbyInfoStatusType];
        if (nearbyInfoStatusType)
        {
          v350 = v738 + 5;
          v592 = v738[5];
          if (nearbyInfoStatusType > 0xD)
          {
            v351 = "?";
          }

          else
          {
            v351 = off_1E8121A18[nearbyInfoStatusType - 1];
          }

          NSAppendPrintF_safe(&v592, ", nsPr %s", v351);
          objc_storeStrong(v350, v592);
        }

        if ([(CBDevice *)self nearbyInfoV2Flags])
        {
          v352 = v738;
          v591 = v738[5];
          v353 = CUPrintFlags32();
          NSAppendPrintF_safe(&v591, ", nb2F %@", v353);
          objc_storeStrong(v352 + 5, v591);
        }

        if ([(CBDevice *)self nearbyInfoV2DecryptedFlags])
        {
          v354 = v738;
          v590 = v738[5];
          v355 = CUPrintFlags32();
          NSAppendPrintF_safe(&v590, ", nb2Fe %@", v355);
          objc_storeStrong(v354 + 5, v590);
        }

        nearbyInfoV2AuthTagData = [(CBDevice *)self nearbyInfoV2AuthTagData];
        if (nearbyInfoV2AuthTagData)
        {
          v357 = v738;
          v589 = v738[5];
          v358 = CUPrintNSDataHex();
          NSAppendPrintF_safe(&v589, ", nb2A <%@>", v358);
          objc_storeStrong(v357 + 5, v589);
        }

        nearbyInfoV2AuthIntegrityTagData = [(CBDevice *)self nearbyInfoV2AuthIntegrityTagData];
        if (nearbyInfoV2AuthIntegrityTagData)
        {
          v360 = v738;
          v588 = v738[5];
          v361 = CUPrintNSDataHex();
          NSAppendPrintF_safe(&v588, ", nb2Ai <%@>", v361);
          objc_storeStrong(v360 + 5, v588);
        }

        nearbyInfoV2InvitationCounter = self->_nearbyInfoV2InvitationCounter;
        if (self->_nearbyInfoV2InvitationCounter)
        {
          v363 = v738;
          v587 = v738[5];
          NSAppendPrintF_safe(&v587, ", nb2Ic %u", nearbyInfoV2InvitationCounter);
          objc_storeStrong(v363 + 5, v587);
        }

        if (self->_nearbyInfoV2InvitationTypes)
        {
          v364 = v738;
          v586 = v738[5];
          v365 = CUPrintFlags32();
          NSAppendPrintF_safe(&v586, ", nb2It %@", v365);
          objc_storeStrong(v364 + 5, v586);
        }

        nearbyInfoV2InvitationRouteType = self->_nearbyInfoV2InvitationRouteType;
        if (self->_nearbyInfoV2InvitationRouteType)
        {
          v367 = v738 + 5;
          v585 = v738[5];
          if (nearbyInfoV2InvitationRouteType > 0xB)
          {
            v368 = "?";
          }

          else
          {
            v368 = off_1E8121A80[nearbyInfoV2InvitationRouteType - 1];
          }

          NSAppendPrintF_safe(&v585, ", nb2Ir %s", v368);
          objc_storeStrong(v367, v585);
        }

        v369 = self->_nearbyInfoV2NearbyFaceTimeData;
        if (v369)
        {
          v370 = v738;
          v584 = v738[5];
          v371 = CUPrintNSDataHex();
          NSAppendPrintF_safe(&v584, ", nb2FT <%@>", v371);
          objc_storeStrong(v370 + 5, v584);
        }

        nearbyActionNoWakeType = [(CBDevice *)self nearbyActionNoWakeType];
        if (nearbyActionNoWakeType)
        {
          v373 = "PrecisionFinding";
          if (nearbyActionNoWakeType != 1)
          {
            v373 = "?";
          }

          v374 = v738;
          v583 = v738[5];
          NSAppendPrintF_safe(&v583, ", nawT %s", v373);
          objc_storeStrong(v374 + 5, v583);
        }

        if (self->_nearbyActionNWPrecisionFindingStatus)
        {
          v375 = v738;
          v582 = v738[5];
          v376 = CUPrintFlags32();
          NSAppendPrintF_safe(&v582, ", nawS %@", v376);
          objc_storeStrong(v375 + 5, v582);
        }

        v377 = self->_nearbyActionNoWakeAuthTagData;
        if (v377)
        {
          v378 = v738;
          v581 = v738[5];
          v379 = CUPrintNSDataHex();
          NSAppendPrintF_safe(&v581, ", nawA <%@>", v379);
          objc_storeStrong(v378 + 5, v581);
        }

        v380 = self->_nearbyActionNoWakeConfigData;
        if (v380)
        {
          v381 = v738;
          v580 = v738[5];
          v382 = CUPrintNSDataHex();
          NSAppendPrintF_safe(&v580, ", nawC <%@>", v382);
          objc_storeStrong(v381 + 5, v580);
        }

        if ((discoveryFlags & 0x60000000000) != 0)
        {
          v383 = v738 + 5;
          v579 = v738[5];
          objectDiscoveryBatteryState = self->_objectDiscoveryBatteryState;
          if (objectDiscoveryBatteryState > 3)
          {
            v385 = "?";
          }

          else
          {
            v385 = off_1E8121AD8[objectDiscoveryBatteryState];
          }

          NSAppendPrintF_safe(&v579, ", odBS %s", v385);
          objc_storeStrong(v383, v579);
          v386 = v738 + 5;
          v578 = v738[5];
          objectDiscoveryMode = self->_objectDiscoveryMode;
          if (objectDiscoveryMode > 2)
          {
            v388 = "?";
          }

          else
          {
            v388 = off_1E8121AF8[objectDiscoveryMode];
          }

          NSAppendPrintF_safe(&v578, ", odMd %s", v388);
          objc_storeStrong(v386, v578);
          v389 = v738;
          v577 = v738[5];
          NSAppendPrintF_safe(&v577, ", odNO %@", self->_objectDiscoveryNearOwnerID);
          objc_storeStrong(v389 + 5, v577);
          v390 = v738;
          v576 = v738[5];
          v391 = CBProductIDToString_0(self->_objectDiscoveryProductID);
          NSAppendPrintF_safe(&v576, ", odPI %s", v391);
          objc_storeStrong(v390 + 5, v576);
          v392 = v738;
          v575 = v738[5];
          NSAppendPrintF_safe(&v575, ", odPK %@", self->_objectDiscoveryPublicKeyData);
          objc_storeStrong(v392 + 5, v575);
        }

        proximityServiceData = [(CBDevice *)self proximityServiceData];
        if (proximityServiceData)
        {
          v394 = v738;
          v574 = v738[5];
          v395 = CUPrintNSDataHex();
          NSAppendPrintF_safe(&v574, ", psDa <%@>", v395);
          objc_storeStrong(v394 + 5, v574);
        }

        proximityServiceCategory = [(CBDevice *)self proximityServiceCategory];
        if (proximityServiceCategory)
        {
          v397 = v738;
          v573 = v738[5];
          NSAppendPrintF_safe(&v573, ", psCa %d", proximityServiceCategory);
          objc_storeStrong(v397 + 5, v573);
        }

        proximityServiceClassicAddress = [(CBDevice *)self proximityServiceClassicAddress];
        if (proximityServiceClassicAddress)
        {
          v399 = v738;
          v572 = v738[5];
          v400 = CUPrintNSDataAddress();
          NSAppendPrintF_safe(&v572, ", psCl %@", v400);
          objc_storeStrong(v399 + 5, v572);
        }

        if ([(CBDevice *)self proximityServiceFlags])
        {
          v401 = v738;
          v571 = v738[5];
          v402 = CUPrintFlags32();
          NSAppendPrintF_safe(&v571, ", psFl %@", v402);
          objc_storeStrong(v401 + 5, v571);
        }

        proximityServiceMeasuredPower = [(CBDevice *)self proximityServiceMeasuredPower];
        if (proximityServiceMeasuredPower)
        {
          v404 = v738;
          v570 = v738[5];
          NSAppendPrintF_safe(&v570, ", psMP %d", proximityServiceMeasuredPower);
          objc_storeStrong(v404 + 5, v570);
        }

        proximityServiceProductID = [(CBDevice *)self proximityServiceProductID];
        v406 = proximityServiceProductID;
        if (proximityServiceProductID)
        {
          v407 = CBProductIDToString_0(proximityServiceProductID);
          v408 = v738;
          v569 = v738[5];
          NSAppendPrintF_safe(&v569, ", psPI 0x%04X (%s)", v406, v407);
          objc_storeStrong(v408 + 5, v569);
        }

        proximityServicePSM = [(CBDevice *)self proximityServicePSM];
        if (proximityServicePSM)
        {
          v410 = v738;
          v568 = v738[5];
          NSAppendPrintF_safe(&v568, ", psPS 0x%X", proximityServicePSM);
          objc_storeStrong(v410 + 5, v568);
        }

        proximityServiceSetupHash = [(CBDevice *)self proximityServiceSetupHash];
        if (proximityServiceSetupHash)
        {
          v412 = v738;
          v567 = v738[5];
          v413 = CUPrintNSDataHex();
          NSAppendPrintF_safe(&v567, ", psSH <%@>", v413);
          objc_storeStrong(v412 + 5, v567);
        }

        proximityServiceSubType = [(CBDevice *)self proximityServiceSubType];
        if (proximityServiceSubType)
        {
          v415 = v738 + 5;
          v566 = v738[5];
          if (proximityServiceSubType > 6)
          {
            v416 = "?";
          }

          else
          {
            v416 = off_1E8122118[proximityServiceSubType - 1];
          }

          NSAppendPrintF_safe(&v566, ", psST %s", v416);
          objc_storeStrong(v415, v566);
        }

        proximityServiceVendorID = [(CBDevice *)self proximityServiceVendorID];
        if (!proximityServiceVendorID)
        {
          goto LABEL_470;
        }

        v418 = v738 + 5;
        v565 = v738[5];
        v419 = "Apple";
        if (proximityServiceVendorID <= 300)
        {
          switch(proximityServiceVendorID)
          {
            case 6:
              v419 = "MS";
              goto LABEL_469;
            case 76:
LABEL_469:
              NSAppendPrintF_safe(&v565, ", psVI 0x%04X (%s)", proximityServiceVendorID, v419);
              objc_storeStrong(v418, v565);
LABEL_470:
              proximityServiceVersion = [(CBDevice *)self proximityServiceVersion];
              if (proximityServiceVersion)
              {
                v421 = v738;
                v564 = v738[5];
                NSAppendPrintF_safe(&v564, ", psVs %d", proximityServiceVersion);
                objc_storeStrong(v421 + 5, v564);
              }

              if ((discoveryFlags & 0xC080) != 0)
              {
                proximityPairingProductID = self->_proximityPairingProductID;
                if (proximityPairingProductID)
                {
                  v423 = CBProductIDToString_0(self->_proximityPairingProductID);
                  v424 = v738;
                  v563 = v738[5];
                  NSAppendPrintF_safe(&v563, ", ppPI 0x%04X (%s)", proximityPairingProductID, v423);
                  objc_storeStrong(v424 + 5, v563);
                }

                proximityPairingSubType = self->_proximityPairingSubType;
                if (self->_proximityPairingSubType)
                {
                  v426 = v738 + 5;
                  v562 = v738[5];
                  if (proximityPairingSubType > 9)
                  {
                    v427 = "?";
                  }

                  else
                  {
                    v427 = off_1E8121B10[proximityPairingSubType - 1];
                  }

                  NSAppendPrintF_safe(&v562, ", ppST 0x%02X (%s)", proximityPairingSubType, v427);
                  objc_storeStrong(v426, v562);
                }

                proximityPairingPrimaryPlacement = [(CBDevice *)self proximityPairingPrimaryPlacement];
                if (proximityPairingPrimaryPlacement)
                {
                  v429 = v738 + 5;
                  v561 = v738[5];
                  if (proximityPairingPrimaryPlacement > 7)
                  {
                    v430 = "?";
                  }

                  else
                  {
                    v430 = off_1E8121B70[proximityPairingPrimaryPlacement - 1];
                  }

                  NSAppendPrintF_safe(&v561, ", ppPP %s", v430);
                  objc_storeStrong(v429, v561);
                }

                proximityPairingSecondaryPlacement = [(CBDevice *)self proximityPairingSecondaryPlacement];
                if (proximityPairingSecondaryPlacement)
                {
                  v432 = v738 + 5;
                  v560 = v738[5];
                  if (proximityPairingSecondaryPlacement > 7)
                  {
                    v433 = "?";
                  }

                  else
                  {
                    v433 = off_1E8121B70[proximityPairingSecondaryPlacement - 1];
                  }

                  NSAppendPrintF_safe(&v560, ", ppSP %s", v433);
                  objc_storeStrong(v432, v560);
                }
              }

              if (self->_selectiveSpeechListeningCapability)
              {
                if (self->_selectiveSpeechListeningCapability == 1)
                {
                  v434 = @"Enabled";
                }

                else
                {
                  v434 = @"?";
                }

                v435 = v738;
                v559 = v738[5];
                v436 = v434;
                NSAppendPrintF_safe(&v559, ", ssCp %@", v436);
                objc_storeStrong(v435 + 5, v559);
              }

              selectiveSpeechListeningConfig = [(CBDevice *)self selectiveSpeechListeningConfig];
              if (selectiveSpeechListeningConfig)
              {
                v438 = v738 + 5;
                v558 = v738[5];
                if (selectiveSpeechListeningConfig > 3)
                {
                  v439 = @"?";
                }

                else
                {
                  v439 = *(&off_1E8121B58 + selectiveSpeechListeningConfig - 1);
                }

                NSAppendPrintF_safe(&v558, ", ssLC %@", v439);
                objc_storeStrong(v438, v558);
              }

              hearingAidSupport = self->_hearingAidSupport;
              if (self->_hearingAidSupport)
              {
                if (hearingAidSupport == 1)
                {
                  v441 = "Yes";
                }

                else
                {
                  v441 = "?";
                }

                if (hearingAidSupport == 2)
                {
                  v442 = "No";
                }

                else
                {
                  v442 = v441;
                }

                v443 = v738;
                v557 = v738[5];
                NSAppendPrintF_safe(&v557, ", HaSp %s", v442);
                objc_storeStrong(v443 + 5, v557);
              }

              hearingTestSupport = self->_hearingTestSupport;
              if (self->_hearingTestSupport)
              {
                if (hearingTestSupport == 1)
                {
                  v445 = "Yes";
                }

                else
                {
                  v445 = "?";
                }

                if (hearingTestSupport == 2)
                {
                  v446 = "No";
                }

                else
                {
                  v446 = v445;
                }

                v447 = v738;
                v556 = v738[5];
                NSAppendPrintF_safe(&v556, ", HtSp %s", v446);
                objc_storeStrong(v447 + 5, v556);
              }

              v448 = self->_safetyAlertsAlertData;
              if (v448)
              {
                v449 = v738;
                v555 = v738[5];
                v450 = CUPrintNSDataHex();
                NSAppendPrintF_safe(&v555, ", saAd <%@>", v450);
                objc_storeStrong(v449 + 5, v555);
              }

              v451 = self->_safetyAlertsAlertID;
              if (v451)
              {
                v452 = v738;
                v554 = v738[5];
                v453 = CUPrintNSDataHex();
                NSAppendPrintF_safe(&v554, ", saAi <%@>", v453);
                objc_storeStrong(v452 + 5, v554);
              }

              v454 = self->_safetyAlertsSignature;
              if (v454)
              {
                v455 = v738;
                v553 = v738[5];
                v456 = CUPrintNSDataHex();
                NSAppendPrintF_safe(&v553, ", saSg <%@>", v456);
                objc_storeStrong(v455 + 5, v553);
              }

              if (self->_safetyAlertsVersion)
              {
                if (self->_safetyAlertsVersion == 1)
                {
                  v457 = "1";
                }

                else
                {
                  v457 = "?";
                }

                v458 = v738;
                v552 = v738[5];
                NSAppendPrintF_safe(&v552, ", saVs %s", v457);
                objc_storeStrong(v458 + 5, v552);
              }

              if ((self->_internalFlags & 0x4000) != 0)
              {
                v459 = self->_safetyAlertsSegmentAlertData;
                if (v459)
                {
                  v460 = v738;
                  v551 = v738[5];
                  v461 = CUPrintNSDataHex();
                  NSAppendPrintF_safe(&v551, ", saSAd <%@>", v461);
                  objc_storeStrong(v460 + 5, v551);
                }

                safetyAlertsSegmentSegmentNumber = self->_safetyAlertsSegmentSegmentNumber;
                if (self->_safetyAlertsSegmentSegmentNumber)
                {
                  v463 = v738;
                  v550 = v738[5];
                  NSAppendPrintF_safe(&v550, ", saSSn %d", safetyAlertsSegmentSegmentNumber);
                  objc_storeStrong(v463 + 5, v550);
                }

                safetyAlertsSegmentSegmentsTotal = self->_safetyAlertsSegmentSegmentsTotal;
                if (self->_safetyAlertsSegmentSegmentsTotal)
                {
                  v465 = v738;
                  v549 = v738[5];
                  NSAppendPrintF_safe(&v549, ", saSTs %d", safetyAlertsSegmentSegmentsTotal);
                  objc_storeStrong(v465 + 5, v549);
                }

                v466 = self->_safetyAlertsSegmentServiceData;
                if (v466)
                {
                  v467 = v738;
                  v548 = v738[5];
                  v468 = CUPrintNSDataHex();
                  NSAppendPrintF_safe(&v548, ", saSSvcD <%@>", v468);
                  objc_storeStrong(v467 + 5, v548);
                }

                v469 = self->_safetyAlertsSegmentSignature;
                if (v469)
                {
                  v470 = v738;
                  v547 = v738[5];
                  v471 = CUPrintNSDataHex();
                  NSAppendPrintF_safe(&v547, ", saSSg <%@>", v471);
                  objc_storeStrong(v470 + 5, v547);
                }
              }

              softwareUpdateActionType = self->_softwareUpdateActionType;
              if (self->_softwareUpdateActionType)
              {
                v473 = v738;
                v546 = v738[5];
                NSAppendPrintF_safe(&v546, ", suA %d", softwareUpdateActionType);
                objc_storeStrong(v473 + 5, v546);
              }

              v474 = self->_softwareUpdateData;
              if (v474)
              {
                v475 = v738;
                v545 = v738[5];
                v476 = CUPrintNSDataHex();
                NSAppendPrintF_safe(&v545, ", suD <%@>", v476);
                objc_storeStrong(v475 + 5, v545);
              }

              spatialInteractionIdentifiers = [(CBDevice *)self spatialInteractionIdentifiers];
              if (spatialInteractionIdentifiers)
              {
                v478 = v738;
                v544 = v738[5];
                v479 = CUPrintNSObjectOneLine();
                NSAppendPrintF_safe(&v544, ", siId %@", v479);
                objc_storeStrong(v478 + 5, v544);
              }

              if ([(CBDevice *)self spatialInteractionFlags])
              {
                v480 = v738;
                v543 = v738[5];
                v481 = CUPrintFlags32();
                NSAppendPrintF_safe(&v543, ", siFl %@", v481);
                objc_storeStrong(v480 + 5, v543);
              }

              if ([(CBDevice *)self spatialInteractionConfigFlags])
              {
                v482 = v738;
                v542 = v738[5];
                v483 = CUPrintFlags32();
                NSAppendPrintF_safe(&v542, ", siCl %@", v483);
                objc_storeStrong(v482 + 5, v542);
              }

              spatialInteractionTokenData = [(CBDevice *)self spatialInteractionTokenData];
              if (spatialInteractionTokenData)
              {
                v485 = v738;
                v541 = v738[5];
                v486 = CUPrintNSObjectMasked();
                NSAppendPrintF_safe(&v541, ", siTD <%@>", v486);
                objc_storeStrong(v485 + 5, v541);
              }

              spatialInteractionUserInfo = [(CBDevice *)self spatialInteractionUserInfo];
              if (spatialInteractionUserInfo)
              {
                v488 = v738;
                v540 = v738[5];
                v489 = CUPrintNSObjectOneLineEx();
                NSAppendPrintF_safe(&v540, ", siUI %@", v489);
                objc_storeStrong(v488 + 5, v540);
              }

              spatialInteractionUWBConfigData = [(CBDevice *)self spatialInteractionUWBConfigData];
              v491 = spatialInteractionUWBConfigData;
              if (spatialInteractionUWBConfigData)
              {
                v492 = v738;
                v539 = v738[5];
                NSAppendPrintF_safe(&v539, ", siUC <%@>", spatialInteractionUWBConfigData);
                objc_storeStrong(v492 + 5, v539);
              }

              spatialInteractionUWBTokenFlags = [(CBDevice *)self spatialInteractionUWBTokenFlags];
              if (spatialInteractionUWBTokenFlags)
              {
                v494 = v738;
                v538 = v738[5];
                NSAppendPrintF_safe(&v538, ", siUF 0x%X", spatialInteractionUWBTokenFlags);
                objc_storeStrong(v494 + 5, v538);
              }

              spatialInteractionPresenceConfigData = [(CBDevice *)self spatialInteractionPresenceConfigData];
              v496 = spatialInteractionPresenceConfigData;
              if (spatialInteractionPresenceConfigData)
              {
                v497 = v738;
                v537 = v738[5];
                NSAppendPrintF_safe(&v537, ", siPC <%@>", spatialInteractionPresenceConfigData);
                objc_storeStrong(v497 + 5, v537);
              }

              v498 = self->_tipiDevices;
              if (v498)
              {
                v499 = v738;
                v536 = v738[5];
                v500 = CUPrintNSObjectOneLine();
                NSAppendPrintF_safe(&v536, ", tpDv %@", v500);
                objc_storeStrong(v499 + 5, v536);
              }

              tipiConnectionStatus = self->_tipiConnectionStatus;
              if (self->_tipiConnectionStatus)
              {
                v502 = v738 + 5;
                v535 = v738[5];
                if (tipiConnectionStatus > 3)
                {
                  v503 = "?";
                }

                else
                {
                  v503 = off_1E81220C8[tipiConnectionStatus - 1];
                }

                NSAppendPrintF_safe(&v535, ", tpCS %s", v503);
                objc_storeStrong(v502, v535);
              }

              if (self->_tipiState)
              {
                v504 = v738;
                v534 = v738[5];
                v505 = CUPrintFlags32();
                NSAppendPrintF_safe(&v534, ", tpSt %@", v505);
                objc_storeStrong(v504 + 5, v534);
              }

              watchSetupData = [(CBDevice *)self watchSetupData];
              if (watchSetupData)
              {
                v507 = v738;
                v533 = v738[5];
                v508 = CUPrintNSDataHex();
                NSAppendPrintF_safe(&v533, ", wsDa <%@>", v508);
                objc_storeStrong(v507 + 5, v533);
              }

              if (levelCopy < 0x1F)
              {
                if (self->_internalFlags)
                {
                  v509 = v738;
                  v532 = v738[5];
                  v510 = CUPrintFlags32();
                  NSAppendPrintF_safe(&v532, ", IntF %@", v510);
                  objc_storeStrong(v509 + 5, v532);
                }

                if (self->_attributeInternalFlags)
                {
                  v511 = v738;
                  v531 = v738[5];
                  v512 = CUPrintFlags32();
                  NSAppendPrintF_safe(&v531, ", IntF %@", v512);
                  objc_storeStrong(v511 + 5, v531);
                }
              }

              if (self->_changeFlags != self->_discoveryFlags)
              {
                v513 = v738;
                v530 = v738[5];
                v514 = CUPrintFlags64();
                NSAppendPrintF_safe(&v530, ", CF %@", v514);
                objc_storeStrong(v513 + 5, v530);
              }

              v515 = *self->_changedTypesInternal.bitArray == *self->_discoveryTypesInternal.bitArray && *&self->_changedTypesInternal.bitArray[4] == *&self->_discoveryTypesInternal.bitArray[4];
              if (!v515)
              {
                v516 = v738;
                v529 = v738[5];
                CBDiscoveryTypesAppendString(&v529, ", ChTy", &self->_changedTypesInternal);
                objc_storeStrong(v516 + 5, v529);
              }

              if (levelCopy <= 0x14)
              {
                v517 = v738;
                v528 = v738[5];
                NSAppendPrintF_safe(&v528, "\n");
                objc_storeStrong(v517 + 5, v528);
              }

              v518 = self->_spatialInteractionDeviceTimestampArrayDictionary;
              if (v518)
              {
                v519 = v738;
                v527 = v738[5];
                NSAppendPrintF_safe(&v527, ", siTAD <{");
                objc_storeStrong(v519 + 5, v527);
                spatialInteractionDeviceTimestampArrayDictionary = self->_spatialInteractionDeviceTimestampArrayDictionary;
                v525[0] = MEMORY[0x1E69E9820];
                v525[1] = 3221225472;
                v525[2] = __33__CBDevice_descriptionWithLevel___block_invoke;
                v525[3] = &unk_1E8121528;
                v525[4] = &v737;
                v526 = levelCopy2;
                [(NSMutableDictionary *)spatialInteractionDeviceTimestampArrayDictionary enumerateKeysAndObjectsUsingBlock:v525];
                v521 = v738;
                v524 = v738[5];
                NSAppendPrintF_safe(&v524, " }>");
                objc_storeStrong(v521 + 5, v524);
              }

              goto LABEL_587;
            case 196:
              v419 = "LG";
              goto LABEL_469;
          }
        }

        else if (proximityServiceVendorID > 1451)
        {
          if (proximityServiceVendorID == 1452)
          {
            goto LABEL_469;
          }

          if (proximityServiceVendorID == 2956)
          {
            v419 = "SmartTech";
            goto LABEL_469;
          }
        }

        else if (proximityServiceVendorID == 301 || proximityServiceVendorID == 1356)
        {
          v419 = "Sony";
          goto LABEL_469;
        }

        v419 = "?";
        goto LABEL_469;
      }

      v198 = v738 + 5;
      v664 = v738[5];
      if (spatialAudioMode > 2)
      {
        if (spatialAudioMode == 3)
        {
          v199 = "NoStereoUpSample";
          goto LABEL_265;
        }

        if (spatialAudioMode == 255)
        {
          v199 = "Unknown";
          goto LABEL_265;
        }
      }

      else
      {
        if (spatialAudioMode == 1)
        {
          v199 = "ContentDriven";
          goto LABEL_265;
        }

        if (spatialAudioMode == 2)
        {
          v199 = "Always";
LABEL_265:
          NSAppendPrintF_safe(&v664, ", spAM %s", v199);
          objc_storeStrong(v198, v664);
          goto LABEL_266;
        }
      }

      v199 = "?";
      goto LABEL_265;
    }

    v63 = v738 + 5;
    v711 = v738[5];
    if (appearanceValue > 2113)
    {
      if (appearanceValue > 2368)
      {
        if (appearanceValue <= 2370)
        {
          if (appearanceValue == 2369)
          {
            v64 = @"Earbud";
          }

          else
          {
            v64 = @"Headset";
          }

          goto LABEL_86;
        }

        if (appearanceValue == 2371)
        {
          v64 = @"Headphones";
          goto LABEL_86;
        }

        if (appearanceValue == 2625)
        {
          v64 = @"Hearing Aid";
          goto LABEL_86;
        }
      }

      else
      {
        if (appearanceValue <= 2115)
        {
          if (appearanceValue == 2114)
          {
            v64 = @"Soundbar";
          }

          else
          {
            v64 = @"Bookshelf Speaker";
          }

          goto LABEL_86;
        }

        if (appearanceValue == 2116)
        {
          v64 = @"Standmounted Speaker";
          goto LABEL_86;
        }

        if (appearanceValue == 2117)
        {
          v64 = @"Speakerphone";
          goto LABEL_86;
        }
      }

LABEL_84:
      v64 = @"?";
      goto LABEL_86;
    }

    if (appearanceValue <= 963)
    {
      if (appearanceValue == 961)
      {
        v64 = @"Keyboard";
        goto LABEL_86;
      }

      if (appearanceValue == 962)
      {
        v64 = @"Mouse";
        goto LABEL_86;
      }

      if (appearanceValue != 963)
      {
        goto LABEL_84;
      }

      v64 = @"Joystick";
    }

    else
    {
      if (appearanceValue > 2111)
      {
        if (appearanceValue == 2112)
        {
          v64 = @"Generic Audio Sink";
        }

        else
        {
          v64 = @"Standalone Speaker";
        }

        goto LABEL_86;
      }

      if (appearanceValue == 964)
      {
        v64 = @"Gamepad";
        goto LABEL_86;
      }

      if (appearanceValue != 969)
      {
        goto LABEL_84;
      }

      v64 = @"Touchpad";
    }

LABEL_86:
    NSAppendPrintF_safe(&v711, ", Aprc %@", v64);
    objc_storeStrong(v63, v711);
    goto LABEL_87;
  }

LABEL_587:
  v522 = v738[5];
  _Block_object_dispose(&v737, 8);

  return v522;
}

void __33__CBDevice_descriptionWithLevel___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(*(a1 + 32) + 8);
  obj = *(v4 + 40);
  v5 = a3;
  v6 = [a2 unsignedIntValue];
  v7 = CUDescriptionWithLevel();

  v8 = CUPrintNSObjectOneLine();
  NSAppendPrintF_safe(&obj, " CID 0x%X : %@", v6, v8);
  objc_storeStrong((v4 + 40), obj);
}

- (unsigned)colorCodeBest
{
  v2 = self->_productID - 8202;
  if (v2 > 0x25)
  {
    return [(CBDevice *)self colorInfo];
  }

  if (((1 << (LOBYTE(self->_productID) - 10)) & 0x2000000182) == 0)
  {
    if (self->_productID == 8202 || v2 == 21)
    {
      return [(CBDevice *)self colorInfo]& 0x1F;
    }

    return [(CBDevice *)self colorInfo];
  }

  colorInfo = [(CBDevice *)self colorInfo];
  v4 = colorInfo & 0xF;
  if ((colorInfo & 0xF) == 0xF)
  {
    v4 = 0;
  }

  if (colorInfo >> 4 == 15)
  {
    return v4;
  }

  else
  {
    return colorInfo >> 4;
  }
}

- (void)setAdaptiveVolumeCapability:(unsigned __int8)capability
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:capability];
  [(CBDevice *)self _setDeviceInfoKey:@"adVC" value:v4];
}

- (void)setAdaptiveVolumeConfig:(unsigned __int8)config
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:config];
  [(CBDevice *)self _setDeviceInfoKey:@"aVC" value:v4];
}

- (void)setAclLinkState:(unsigned __int8)state
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:state];
  [(CBDevice *)self _setDeviceInfoKey:@"aLS" value:v4];
}

- (void)setAppearanceValue:(unsigned int)value
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&value];
  [(CBDevice *)self _setDeviceInfoKey:@"a" value:v4];
}

- (void)setAudioStreamState:(int)state
{
  v4 = [MEMORY[0x1E696AD98] numberWithInt:*&state];
  [(CBDevice *)self _setDeviceInfoKey:@"adSt" value:v4];
}

- (void)setAutoAncCapability:(unsigned __int8)capability
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:capability];
  [(CBDevice *)self _setDeviceInfoKey:@"aaCp" value:v4];
}

- (void)setBatteryInfoMain:(unsigned __int16)main
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:main];
  [(CBDevice *)self _setDeviceInfoKey:@"batM" value:v4];
}

- (void)setBatteryInfoLeft:(unsigned __int16)left
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:left];
  [(CBDevice *)self _setDeviceInfoKey:@"batL" value:v4];
}

- (void)setBatteryInfoRight:(unsigned __int16)right
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:right];
  [(CBDevice *)self _setDeviceInfoKey:@"batR" value:v4];
}

- (void)setBatteryInfoCase:(unsigned __int16)case
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:case];
  [(CBDevice *)self _setDeviceInfoKey:@"batC" value:v4];
}

- (void)setBleChannel:(int)channel
{
  v4 = [MEMORY[0x1E696AD98] numberWithInt:*&channel];
  [(CBDevice *)self _setDeviceInfoKey:@"blCH" value:v4];
}

- (void)setBleRSSI:(int)i
{
  v4 = [MEMORY[0x1E696AD98] numberWithInt:*&i];
  [(CBDevice *)self _setDeviceInfoKey:@"blRS" value:v4];
}

- (void)setBleAdvertisementTimestamp:(double)timestamp
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:timestamp];
  [(CBDevice *)self _setDeviceInfoKey:@"bATm" value:v4];
}

- (void)setBleAdvertisementTimestampMachContinuous:(unint64_t)continuous
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:continuous];
  [(CBDevice *)self _setDeviceInfoKey:@"bTMC" value:v4];
}

- (void)setClassicRSSI:(char)i
{
  v4 = [MEMORY[0x1E696AD98] numberWithChar:i];
  [(CBDevice *)self _setDeviceInfoKey:@"clRS" value:v4];
}

- (void)setClickHoldModeLeft:(unsigned __int8)left
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:left];
  [(CBDevice *)self _setDeviceInfoKey:@"clHL" value:v4];
}

- (void)setClickHoldModeRight:(unsigned __int8)right
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:right];
  [(CBDevice *)self _setDeviceInfoKey:@"clHR" value:v4];
}

- (void)setColorInfo:(unsigned __int16)info
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:info];
  [(CBDevice *)self _setDeviceInfoKey:@"clIN" value:v4];
}

- (void)setConnectedServices:(unsigned int)services
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&services];
  [(CBDevice *)self _setDeviceInfoKey:@"coSE" value:v4];
}

- (void)setConversationDetectCapability:(unsigned __int8)capability
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:capability];
  [(CBDevice *)self _setDeviceInfoKey:@"cdCA" value:v4];
}

- (void)setConversationDetectConfig:(unsigned __int8)config
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:config];
  [(CBDevice *)self _setDeviceInfoKey:@"cDC" value:v4];
}

- (void)setCrownRotationDirection:(unsigned __int8)direction
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:direction];
  [(CBDevice *)self _setDeviceInfoKey:@"crRD" value:v4];
}

- (void)setDoubleTapActionLeft:(char)left
{
  v4 = [MEMORY[0x1E696AD98] numberWithChar:left];
  [(CBDevice *)self _setDeviceInfoKey:@"dtAL" value:v4];
}

- (void)setDoubleTapActionRight:(char)right
{
  v4 = [MEMORY[0x1E696AD98] numberWithChar:right];
  [(CBDevice *)self _setDeviceInfoKey:@"dtAR" value:v4];
}

- (void)setDoubleTapCapability:(char)capability
{
  v4 = [MEMORY[0x1E696AD98] numberWithChar:capability];
  [(CBDevice *)self _setDeviceInfoKey:@"dtCA" value:v4];
}

- (void)setEndCallCapability:(unsigned __int8)capability
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:capability];
  [(CBDevice *)self _setDeviceInfoKey:@"ecCA" value:v4];
}

- (void)setEndCallConfig:(unsigned __int8)config
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:config];
  [(CBDevice *)self _setDeviceInfoKey:@"eCC" value:v4];
}

- (void)setFrequencyBand:(unsigned __int8)band
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:band];
  [(CBDevice *)self _setDeviceInfoKey:@"bndI" value:v4];
}

- (void)setGapaFlags:(unsigned int)flags
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&flags];
  [(CBDevice *)self _setDeviceInfoKey:@"gapa" value:v4];
}

- (NSData)irkData
{
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSData)linkKeyData
{
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (void)setListeningMode:(int)mode
{
  v4 = [MEMORY[0x1E696AD98] numberWithInt:*&mode];
  [(CBDevice *)self _setDeviceInfoKey:@"lsnM" value:v4];
}

- (void)setListeningModeConfigs:(unsigned int)configs
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&configs];
  [(CBDevice *)self _setDeviceInfoKey:@"lsMC" value:v4];
}

- (NSData)ltkData
{
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (void)setMuteControlConfig:(unsigned __int8)config
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:config];
  [(CBDevice *)self _setDeviceInfoKey:@"mCC" value:v4];
}

- (void)setPeerStatusFlag:(unsigned __int8)flag
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:flag];
  [(CBDevice *)self _setDeviceInfoKey:@"fmPS" value:v4];
}

- (void)setSpatialAudioMode:(int)mode
{
  v4 = [MEMORY[0x1E696AD98] numberWithInt:*&mode];
  [(CBDevice *)self _setDeviceInfoKey:@"spAM" value:v4];
}

- (void)setAccessoryStatusLidOpenCount:(unsigned __int8)count
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:count];
  [(CBDevice *)self _setDeviceInfoKey:@"asLO" value:v4];
}

- (void)setAccessoryStatusFlags:(unsigned int)flags
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&flags];
  [(CBDevice *)self _setDeviceInfoKey:@"asFl" value:v4];
}

- (void)setAccessoryStatusOBCTime:(double)time
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:time];
  [(CBDevice *)self _setDeviceInfoKey:@"asOT" value:v4];
}

- (void)setAirdropFlags:(unsigned __int8)flags
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:flags];
  [(CBDevice *)self _setDeviceInfoKey:@"adFl" value:v4];
}

- (void)setAirdropModel:(unsigned __int8)model
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:model];
  [(CBDevice *)self _setDeviceInfoKey:@"adMO" value:v4];
}

- (void)setAirdropVersion:(unsigned __int8)version
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:version];
  [(CBDevice *)self _setDeviceInfoKey:@"adVE" value:v4];
}

- (void)setAirdropHash1:(unsigned __int16)hash1
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:hash1];
  [(CBDevice *)self _setDeviceInfoKey:@"adH1" value:v4];
}

- (void)setAirdropHash2:(unsigned __int16)hash2
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:hash2];
  [(CBDevice *)self _setDeviceInfoKey:@"adH2" value:v4];
}

- (void)setAirdropHash3:(unsigned __int16)hash3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:hash3];
  [(CBDevice *)self _setDeviceInfoKey:@"adH3" value:v4];
}

- (void)setAirdropHash4:(unsigned __int16)hash4
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:hash4];
  [(CBDevice *)self _setDeviceInfoKey:@"adH4" value:v4];
}

- (void)setAirdropConfigData:(unsigned __int8)data
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:data];
  [(CBDevice *)self _setDeviceInfoKey:@"adCD" value:v4];
}

- (void)setAirplaySourceFlags:(unsigned __int8)flags
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:flags];
  [(CBDevice *)self _setDeviceInfoKey:@"apSF" value:v4];
}

- (NSData)airplaySourceUWBConfigData
{
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (void)setAirplayTargetConfigSeed:(unsigned __int8)seed
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:seed];
  [(CBDevice *)self _setDeviceInfoKey:@"apTC" value:v4];
}

- (void)setAirplayTargetFlags:(unsigned __int8)flags
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:flags];
  [(CBDevice *)self _setDeviceInfoKey:@"apTF" value:v4];
}

- (void)setAirplayTargetIPv4:(unsigned int)pv4
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&pv4];
  [(CBDevice *)self _setDeviceInfoKey:@"apTI" value:v4];
}

- (void)setAirplayTargetPort:(unsigned __int16)port
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:port];
  [(CBDevice *)self _setDeviceInfoKey:@"apTP" value:v4];
}

- (void)setDsActionFlags:(unsigned __int8)flags
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:flags];
  [(CBDevice *)self _setDeviceInfoKey:@"dsAF" value:v4];
}

- (void)setDsActionMeasuredPower:(char)power
{
  v4 = [MEMORY[0x1E696AD98] numberWithChar:power];
  [(CBDevice *)self _setDeviceInfoKey:@"dsAP" value:v4];
}

- (void)setDsActionTieBreaker:(unsigned __int8)breaker
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:breaker];
  [(CBDevice *)self _setDeviceInfoKey:@"dsAT" value:v4];
}

- (void)setDsInfoVehicleConfidence:(unsigned __int8)confidence
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:confidence];
  [(CBDevice *)self _setDeviceInfoKey:@"b" value:v4];
}

- (void)setDsInfoVehicleState:(unsigned __int8)state
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:state];
  [(CBDevice *)self _setDeviceInfoKey:@"c" value:v4];
}

- (void)setGfpModelID:(unsigned int)d
{
  if (d)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
    [(CBDevice *)self _setDeviceInfoKey:@"e" value:v5];
  }

  else
  {

    [(CBDevice *)self _setDeviceInfoKey:@"e" value:0];
  }
}

- (void)setHeySiriConfidence:(unsigned __int8)confidence
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:confidence];
  [(CBDevice *)self _setDeviceInfoKey:@"g" value:v4];
}

- (void)setHeySiriDeviceClass:(unsigned __int16)class
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:class];
  [(CBDevice *)self _setDeviceInfoKey:@"h" value:v4];
}

- (void)setHeySiriPerceptualHash:(unsigned __int16)hash
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:hash];
  [(CBDevice *)self _setDeviceInfoKey:@"i" value:v4];
}

- (void)setHeySiriProductType:(unsigned __int8)type
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:type];
  [(CBDevice *)self _setDeviceInfoKey:@"j" value:v4];
}

- (void)setHeySiriRandom:(unsigned __int8)random
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:random];
  [(CBDevice *)self _setDeviceInfoKey:@"k" value:v4];
}

- (void)setHeySiriSNR:(unsigned __int8)r
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:r];
  [(CBDevice *)self _setDeviceInfoKey:@"l" value:v4];
}

- (void)setHomeKitV1Category:(unsigned __int16)category
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:category];
  [(CBDevice *)self _setDeviceInfoKey:@"h1Ca" value:v4];
}

- (void)setHomeKitV1CompatibleVersion:(unsigned __int8)version
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:version];
  [(CBDevice *)self _setDeviceInfoKey:@"h1CV" value:v4];
}

- (void)setHomeKitV1ConfigurationNumber:(unsigned __int8)number
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:number];
  [(CBDevice *)self _setDeviceInfoKey:@"h1CN" value:v4];
}

- (void)setHomeKitV1Flags:(unsigned __int8)flags
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:flags];
  [(CBDevice *)self _setDeviceInfoKey:@"h1Fl" value:v4];
}

- (void)setHomeKitV1StateNumber:(unsigned __int16)number
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:number];
  [(CBDevice *)self _setDeviceInfoKey:@"h1SN" value:v4];
}

- (void)setHomeKitV1SetupHash:(unsigned int)hash
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&hash];
  [(CBDevice *)self _setDeviceInfoKey:@"h1SH" value:v4];
}

- (NSData)homeKitV2AuthTagData
{
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (void)setHomeKitV2InstanceID:(unsigned __int16)d
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:d];
  [(CBDevice *)self _setDeviceInfoKey:@"h2II" value:v4];
}

- (void)setHomeKitV2StateNumber:(unsigned __int16)number
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:number];
  [(CBDevice *)self _setDeviceInfoKey:@"h2SN" value:v4];
}

- (void)setHomeKitV2Value:(unint64_t)value
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:value];
  [(CBDevice *)self _setDeviceInfoKey:@"h2Va" value:v4];
}

- (NSData)mspAddressData
{
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (void)setMspDeviceClass:(unsigned int)class
{
  if (class)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
    [(CBDevice *)self _setDeviceInfoKey:@"q" value:v5];
  }

  else
  {

    [(CBDevice *)self _setDeviceInfoKey:@"q" value:0];
  }
}

- (NSString)mspDisplayName
{
  CFStringGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (void)setMspSubScenario:(unsigned __int8)scenario
{
  if (scenario)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:?];
    [(CBDevice *)self _setDeviceInfoKey:@"s" value:v5];
  }

  else
  {

    [(CBDevice *)self _setDeviceInfoKey:@"s" value:0];
  }
}

- (void)setNearbyActionColorCode:(unsigned __int8)code
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:code];
  [(CBDevice *)self _setDeviceInfoKey:@"naCC" value:v4];
}

- (void)setNearbyActionDeviceClass:(unsigned __int8)class
{
  if (class)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:?];
    [(CBDevice *)self _setDeviceInfoKey:@"z" value:v5];
  }

  else
  {

    [(CBDevice *)self _setDeviceInfoKey:@"z" value:0];
  }
}

- (void)setNearbyActionFlags:(unsigned int)flags
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&flags];
  [(CBDevice *)self _setDeviceInfoKey:@"naFl" value:v4];
}

- (void)setNearbyActionNoWakeType:(unsigned __int8)type
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:type];
  [(CBDevice *)self _setDeviceInfoKey:@"nant" value:v4];
}

- (void)setNearbyActionType:(unsigned __int8)type
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:type];
  [(CBDevice *)self _setDeviceInfoKey:@"naTy" value:v4];
}

- (void)setNearbyActionV2Flags:(unsigned int)flags
{
  if (flags)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
    [(CBDevice *)self _setDeviceInfoKey:@"t" value:v5];
  }

  else
  {

    [(CBDevice *)self _setDeviceInfoKey:@"t" value:0];
  }
}

- (void)setNearbyActionV2Type:(unsigned __int8)type
{
  if (type)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:?];
    [(CBDevice *)self _setDeviceInfoKey:@"v" value:v5];
  }

  else
  {

    [(CBDevice *)self _setDeviceInfoKey:@"v" value:0];
  }
}

- (void)setNearbyInfoStatusProgress:(double)progress
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:progress];
  [(CBDevice *)self _setDeviceInfoKey:@"w" value:v4];
}

- (void)setNearbyInfoStatusTime:(unsigned __int8)time
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:time];
  [(CBDevice *)self _setDeviceInfoKey:@"x" value:v4];
}

- (void)setNearbyInfoStatusType:(unsigned __int8)type
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:type];
  [(CBDevice *)self _setDeviceInfoKey:@"y" value:v4];
}

- (void)setNearbyInfoFlags:(unsigned int)flags
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&flags];
  [(CBDevice *)self _setDeviceInfoKey:@"niIF" value:v4];
}

- (void)setNearbyInfoV2DecryptedFlags:(unsigned __int8)flags
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:flags];
  [(CBDevice *)self _setDeviceInfoKey:@"n2DF" value:v4];
}

- (void)setNearbyInfoV2EncryptedFlags:(unsigned __int8)flags
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:flags];
  [(CBDevice *)self _setDeviceInfoKey:@"n2EF" value:v4];
}

- (void)setNearbyInfoV2Flags:(unsigned __int8)flags
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:flags];
  [(CBDevice *)self _setDeviceInfoKey:@"n2Fl" value:v4];
}

- (void)setObjectSetupBatteryPerformance:(unsigned __int8)performance
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:performance];
  [(CBDevice *)self _setDeviceInfoKey:@"osBP" value:v4];
}

- (void)setObjectSetupBatteryState:(unsigned __int8)state
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:state];
  [(CBDevice *)self _setDeviceInfoKey:@"osBS" value:v4];
}

- (void)setObjectSetupColorCode:(unsigned __int8)code
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:code];
  [(CBDevice *)self _setDeviceInfoKey:@"osCC" value:v4];
}

- (void)setObjectSetupFlags:(unsigned int)flags
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&flags];
  [(CBDevice *)self _setDeviceInfoKey:@"osFl" value:v4];
}

- (NSString)objectSetupFontCode
{
  CFStringGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (NSString)objectSetupMessage
{
  CFStringGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (void)setPrimaryBudSide:(unsigned __int8)side
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:side];
  [(CBDevice *)self _setDeviceInfoKey:@"pBSd" value:v4];
}

- (NSData)proximityPairingPayloadData
{
  CFDataGetTypeID();

  return CFDictionaryGetTypedValue();
}

- (void)setProximityPairingPrimaryPlacement:(int)placement
{
  v4 = [MEMORY[0x1E696AD98] numberWithInt:*&placement];
  [(CBDevice *)self _setDeviceInfoKey:@"ppPP" value:v4];
}

- (void)setProximityPairingSecondaryPlacement:(int)placement
{
  v4 = [MEMORY[0x1E696AD98] numberWithInt:*&placement];
  [(CBDevice *)self _setDeviceInfoKey:@"ppSP" value:v4];
}

- (void)setProximityServiceCategory:(unsigned __int8)category
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:category];
  [(CBDevice *)self _setDeviceInfoKey:@"psCA" value:v4];
}

- (void)setProximityServiceFlags:(unsigned __int8)flags
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:flags];
  [(CBDevice *)self _setDeviceInfoKey:@"psFl" value:v4];
}

- (void)setProximityServiceMeasuredPower:(char)power
{
  v4 = [MEMORY[0x1E696AD98] numberWithChar:power];
  [(CBDevice *)self _setDeviceInfoKey:@"psMP" value:v4];
}

- (void)setProximityServiceProductID:(unsigned int)d
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&d];
  [(CBDevice *)self _setDeviceInfoKey:@"psPI" value:v4];
}

- (void)setProximityServicePSM:(unsigned __int16)m
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:m];
  [(CBDevice *)self _setDeviceInfoKey:@"psPS" value:v4];
}

- (void)setProximityServiceSubType:(unsigned __int8)type
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:type];
  [(CBDevice *)self _setDeviceInfoKey:@"psST" value:v4];
}

- (void)setProximityServiceVendorID:(unsigned __int16)d
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:d];
  [(CBDevice *)self _setDeviceInfoKey:@"psVI" value:v4];
}

- (void)setProximityServiceVersion:(unsigned __int8)version
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:version];
  [(CBDevice *)self _setDeviceInfoKey:@"psVE" value:v4];
}

- (void)setSelectiveSpeechListeningConfig:(unsigned __int8)config
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:config];
  [(CBDevice *)self _setDeviceInfoKey:@"ssLC" value:v4];
}

- (void)setSpatialInteractionConfigFlags:(unsigned __int8)flags
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:flags];
  [(CBDevice *)self _setDeviceInfoKey:@"siCF" value:v4];
}

- (void)setSpatialInteractionFlags:(unsigned __int8)flags
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:flags];
  [(CBDevice *)self _setDeviceInfoKey:@"siFl" value:v4];
}

- (void)setSpatialInteractionPeerID:(unsigned int)d
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&d];
  [(CBDevice *)self _setDeviceInfoKey:@"siPI" value:v4];
}

- (id)bleAdvertisementTimestampString
{
  if (qword_1ED7C1FE0 != -1)
  {
    selfCopy = self;
    [CBDevice bleAdvertisementTimestampString];
    self = selfCopy;
  }

  v2 = _MergedGlobals_3;
  v3 = MEMORY[0x1E695DF00];
  [(CBDevice *)self bleAdvertisementTimestamp];
  v4 = [v3 dateWithTimeIntervalSinceReferenceDate:?];
  v5 = [v2 stringFromDate:v4];

  return v5;
}

uint64_t __43__CBDevice_bleAdvertisementTimestampString__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _MergedGlobals_3;
  _MergedGlobals_3 = v0;

  v2 = _MergedGlobals_3;

  return [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS"];
}

- (BOOL)changedTypesContainCBDiscovery:(id)discovery
{
  discoveryCopy = discovery;
  changeFlags = self->_changeFlags;
  if (([discoveryCopy discoveryFlags] & changeFlags) != 0)
  {

    return 1;
  }

  else
  {
    v7 = CBDiscoveryTypesContainTypes(self->_changedTypesInternal.bitArray, [discoveryCopy discoveryTypesInternalPtr]);

    return v7;
  }
}

- (void)decryptApplePayloadWithIdentity:(id)identity forType:(unsigned __int8)type error:(id *)error
{
  if (type == 22)
  {
    [(CBDevice *)self decryptNearbyInfoV2PayloadWithIdentity:identity error:error];
  }
}

- (void)decryptNearbyInfoV2PayloadWithIdentity:(id)identity error:(id *)error
{
  v89 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  v80 = 0;
  v81 = &v80;
  v82 = 0x3032000000;
  v83 = __Block_byref_object_copy__5;
  v84 = __Block_byref_object_dispose__5;
  v85 = 0;
  v79[0] = MEMORY[0x1E69E9820];
  v79[1] = 3221225472;
  v79[2] = __57__CBDevice_decryptNearbyInfoV2PayloadWithIdentity_error___block_invoke;
  v79[3] = &unk_1E8121550;
  v79[4] = &v80;
  v79[5] = error;
  v72 = MEMORY[0x1C68DF720](v79);
  nearbyInfoV2AuthTagData = [(CBDevice *)self nearbyInfoV2AuthTagData];
  deviceIRKData = [identityCopy deviceIRKData];
  v14 = deviceIRKData;
  if (!nearbyInfoV2AuthTagData)
  {
    v63 = CBErrorF(-6705, "Unable to decrypt AuthTag data is not available", v8, v9, v10, v11, v12, v13, v71);
    v64 = v81[5];
    v81[5] = v63;

    goto LABEL_58;
  }

  if (!deviceIRKData)
  {
    v65 = CBErrorF(-6705, "Unable to decrypt IRK data is not available", v8, v9, v10, v11, v12, v13, v71);
    v66 = v81[5];
    v81[5] = v65;

    goto LABEL_58;
  }

  memset(v88, 0, 32);
  v15 = deviceIRKData;
  [v14 bytes];
  [v14 length];
  v16 = nearbyInfoV2AuthTagData;
  [nearbyInfoV2AuthTagData bytes];
  [nearbyInfoV2AuthTagData length];
  CryptoHKDF();
  v78 = 0;
  nearbyInfoV2EncryptedFlags = [(CBDevice *)self nearbyInfoV2EncryptedFlags];
  if (![(CBDevice *)self decryptNearbyInfoV2PayloadPtr:&nearbyInfoV2EncryptedFlags payloadLength:1 key:v88 keyLength:32 decryptedPtr:&v78])
  {
    v67 = CBErrorF(-6777, "Unable to decrypt NearbyInfoV2 sensitive flags", v17, v18, v19, v20, v21, v22, v88);
LABEL_63:
    v62 = v81[5];
    v81[5] = v67;
    goto LABEL_57;
  }

  v23 = v78 & 0x1F;
  v78 &= 0x1Fu;
  if (!v23)
  {
    v67 = CBErrorF(-6777, "Unable to verify NearbyInfoV2 sensitive flags mask", v17, v18, v19, v20, v21, v22, v88);
    goto LABEL_63;
  }

  nearbyInfoV2DecryptedFlags = [(CBDevice *)self nearbyInfoV2DecryptedFlags];
  [(CBDevice *)self setNearbyInfoV2DecryptedFlags:v78];
  v25 = v78;
  if (v78)
  {
    if (v23 == nearbyInfoV2DecryptedFlags)
    {
      if ((v78 & 1) == 0)
      {
LABEL_12:
        if ((v25 & 2) != 0)
        {
          v26 = 15;
          if ((self->_internalFlags & 0x800) != 0)
          {
            v27 = 32;
          }

          else
          {
            v26 = 16;
            v27 = 64;
          }

          if (v23 != nearbyInfoV2DecryptedFlags)
          {
            v28 = 9;
            if ((self->_internalFlags & 0x800) == 0)
            {
              v28 = 10;
            }

            *(&self->super.isa + v28) |= v27;
          }

          *(&self->super.isa + v26) |= v27;
          if ((v25 & 4) == 0)
          {
LABEL_14:
            if ((v25 & 8) == 0)
            {
              goto LABEL_35;
            }

            goto LABEL_32;
          }
        }

        else if ((v25 & 4) == 0)
        {
          goto LABEL_14;
        }

        v29 = 18;
        if ((self->_internalFlags & 0x800) != 0)
        {
          v30 = 8;
        }

        else
        {
          v29 = 16;
          v30 = 32;
        }

        if (v23 != nearbyInfoV2DecryptedFlags)
        {
          v31 = 12;
          if ((self->_internalFlags & 0x800) == 0)
          {
            v31 = 10;
          }

          *(&self->super.isa + v31) |= v30;
        }

        *(&self->super.isa + v29) |= v30;
        if ((v25 & 8) == 0)
        {
LABEL_35:
          nearbyInfoV2EncryptedData = [(CBDevice *)self nearbyInfoV2EncryptedData];
          v32 = self->_nearbyInfoV2NearbyFaceTimeEncryptedData;
          if ((v78 & 1) != 0 && [nearbyInfoV2EncryptedData length] == 2)
          {
            v86 = 0u;
            v87 = 0u;
            v33 = v14;
            [v14 bytes];
            [v14 length];
            v34 = nearbyInfoV2AuthTagData;
            [nearbyInfoV2AuthTagData bytes];
            [nearbyInfoV2AuthTagData length];
            CryptoHKDF();
            LOWORD(v75) = 0;
            v35 = nearbyInfoV2EncryptedData;
            if (!-[CBDevice decryptNearbyInfoV2PayloadPtr:payloadLength:key:keyLength:decryptedPtr:](self, "decryptNearbyInfoV2PayloadPtr:payloadLength:key:keyLength:decryptedPtr:", [nearbyInfoV2EncryptedData bytes], objc_msgSend(nearbyInfoV2EncryptedData, "length"), &v86, 32, &v75))
            {
              v68 = CBErrorF(-6777, "Unable to decrypt NearbyInfoV2 sensitive data1", v36, v37, v38, v39, v40, v41, &v86);
              v69 = v81[5];
              v81[5] = v68;

              goto LABEL_56;
            }

            v42 = v75;
            v43 = BYTE1(v75);
            nearbyInfoV2InvitationCounter = [(CBDevice *)self nearbyInfoV2InvitationCounter];
            if (v42 != nearbyInfoV2InvitationCounter)
            {
              self->_nearbyInfoV2InvitationCounter = v42;
            }

            if (v43 == [(CBDevice *)self nearbyInfoV2InvitationRouteType])
            {
              if (v42 == nearbyInfoV2InvitationCounter)
              {
                goto LABEL_42;
              }
            }

            else
            {
              self->_nearbyInfoV2InvitationRouteType = v43;
            }

            self->_changedTypesInternal.bitArray[2] |= 8u;
            if ((v78 & 0x10) == 0)
            {
              goto LABEL_56;
            }

LABEL_43:
            if ([(NSData *)v32 length]== 5)
            {
              v86 = 0u;
              v87 = 0u;
              v45 = v14;
              [v14 bytes];
              [v14 length];
              v46 = nearbyInfoV2AuthTagData;
              [nearbyInfoV2AuthTagData bytes];
              [nearbyInfoV2AuthTagData length];
              CryptoHKDF();
              v76 = 0;
              v75 = 0;
              v47 = v32;
              bytes = [(NSData *)v32 bytes];
              v49 = [(NSData *)v32 length];
              if ([(CBDevice *)self decryptNearbyInfoV2PayloadPtr:bytes payloadLength:v49 key:&v86 keyLength:32 decryptedPtr:&v75])
              {
                v56 = [MEMORY[0x1E695DEF0] dataWithBytes:&v75 length:{v49, &v86}];
                nearbyInfoV2NearbyFaceTimeData = [(CBDevice *)self nearbyInfoV2NearbyFaceTimeData];
                v58 = v56;
                v59 = nearbyInfoV2NearbyFaceTimeData;
                v60 = v59;
                if (v58 == v59)
                {
                }

                else
                {
                  if ((v58 != 0) != (v59 == 0))
                  {
                    v61 = [v58 isEqual:v59];

                    if (v61)
                    {
                      goto LABEL_55;
                    }
                  }

                  else
                  {
                  }

                  [(CBDevice *)self decryptNearbyInfoV2PayloadWithIdentity:v58 error:v23 == nearbyInfoV2DecryptedFlags];
                }
              }

              else
              {
                v70 = CBErrorF(-6777, "Unable to decrypt NearbyInfoV2 sensitive data2", v50, v51, v52, v53, v54, v55, &v86);
                v58 = v81[5];
                v81[5] = v70;
              }

LABEL_55:
            }

LABEL_56:

            v62 = nearbyInfoV2EncryptedData;
LABEL_57:

            goto LABEL_58;
          }

LABEL_42:
          if ((v78 & 0x10) == 0)
          {
            goto LABEL_56;
          }

          goto LABEL_43;
        }

LABEL_32:
        if (v23 != nearbyInfoV2DecryptedFlags)
        {
          self->_changedTypesInternal.bitArray[4] |= 2u;
        }

        self->_discoveryTypesInternal.bitArray[4] |= 2u;
        goto LABEL_35;
      }
    }

    else
    {
      self->_changedTypesInternal.bitArray[0] |= 0x10u;
      if ((v25 & 1) == 0)
      {
        goto LABEL_12;
      }

      self->_changedTypesInternal.bitArray[2] |= 8u;
    }

    self->_discoveryTypesInternal.bitArray[2] |= 8u;
    [(CBDevice *)self setNearbyInfoV2Flags:[(CBDevice *)self nearbyInfoV2Flags]| 4];
    v25 = v78;
    goto LABEL_12;
  }

LABEL_58:

  v72[2](v72);
  _Block_object_dispose(&v80, 8);
}

id __57__CBDevice_decryptNearbyInfoV2PayloadWithIdentity_error___block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 40);
  if (result)
  {
    if (*(a1 + 40))
    {
      result = result;
      **(a1 + 40) = result;
    }
  }

  return result;
}

- (BOOL)discoveryTypesContainCBDiscovery:(id)discovery
{
  discoveryCopy = discovery;
  authFlags = [discoveryCopy authFlags];
  deviceFlags = self->_deviceFlags;
  if (authFlags && (deviceFlags & authFlags) == 0 || ([discoveryCopy authFlagsExcluded] & deviceFlags) != 0)
  {

    return 0;
  }

  else
  {
    discoveryFlags = self->_discoveryFlags;
    if (([discoveryCopy discoveryFlags] & discoveryFlags) != 0)
    {

      return 1;
    }

    else
    {
      v9 = CBDiscoveryTypesContainTypes(self->_discoveryTypesInternal.bitArray, [discoveryCopy discoveryTypesInternalPtr]);

      return v9;
    }
  }
}

- (BOOL)discoveryTypesContainType:(int)type
{
  if ((type - 45) >= 0xFFFFFFD4)
  {
    return (self->_discoveryTypesInternal.bitArray[(type - 1) >> 3] >> (-type & 7)) & 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (BOOL)isLowerThanAgeLimit:(id)limit compareTimestamp:(unint64_t)timestamp
{
  v22 = *MEMORY[0x1E69E9840];
  limitCopy = limit;
  bufferedAdvConfigsForAOP = [limitCopy bufferedAdvConfigsForAOP];

  if (bufferedAdvConfigsForAOP)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    bufferedAdvConfigsForAOP2 = [limitCopy bufferedAdvConfigsForAOP];
    v8 = [bufferedAdvConfigsForAOP2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      LOBYTE(maxAge) = 0;
      v11 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(bufferedAdvConfigsForAOP2);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          maxAge = maxAge;
          if (maxAge < [v13 maxAge])
          {
            maxAge = [v13 maxAge];
          }
        }

        v9 = [bufferedAdvConfigsForAOP2 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);

      v14 = 1;
      if (maxAge && maxAge != 255)
      {
        if (qword_1ED7C1FF0 != -1)
        {
          [CBDevice isLowerThanAgeLimit:compareTimestamp:];
        }

        v15 = mach_continuous_time() * dword_1ED7C1FE8 / *algn_1ED7C1FEC / 0x3E8 - (1000000 * maxAge + 1000000);
        if (gLogCategory_CBDevice <= 15 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe();
        }

        v14 = v15 <= timestamp;
      }
    }

    else
    {

      v14 = 1;
    }
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (BOOL)isEquivalentToCBDevice:(id)device compareFlags:(unsigned int)flags
{
  flagsCopy = flags;
  deviceCopy = device;
  v7 = deviceCopy;
  if ((flagsCopy & 1) == 0)
  {
    goto LABEL_2;
  }

  bleAdvertisementData = [deviceCopy bleAdvertisementData];
  bleAdvertisementData2 = [(CBDevice *)self bleAdvertisementData];
  v11 = bleAdvertisementData;
  v12 = bleAdvertisementData2;
  v13 = v12;
  if (v11 == v12)
  {
  }

  else
  {
    if ((v11 != 0) == (v12 == 0))
    {
      goto LABEL_18;
    }

    v14 = [v11 isEqual:v12];

    if ((v14 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  bleAppleManufacturerData = [v7 bleAppleManufacturerData];
  bleAppleManufacturerData2 = [(CBDevice *)self bleAppleManufacturerData];
  v11 = bleAppleManufacturerData;
  v20 = bleAppleManufacturerData2;
  v13 = v20;
  if (v11 == v20)
  {

    goto LABEL_2;
  }

  if ((v11 != 0) == (v20 == 0))
  {
LABEL_18:

LABEL_51:
    v8 = 0;
    goto LABEL_52;
  }

  v21 = [v11 isEqual:v20];

  if ((v21 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_2:
  if ((flagsCopy & 4) != 0)
  {
    bleRSSI = [v7 bleRSSI];
    if (bleRSSI != [(CBDevice *)self bleRSSI])
    {
      goto LABEL_51;
    }

    bleChannel = [v7 bleChannel];
    if (bleChannel != [(CBDevice *)self bleChannel])
    {
      goto LABEL_51;
    }

    classicRSSI = [v7 classicRSSI];
    if (classicRSSI != [(CBDevice *)self classicRSSI])
    {
      goto LABEL_51;
    }
  }

  if ((flagsCopy & 8) != 0)
  {
    btAddressData = [v7 btAddressData];
    btAddressData2 = [(CBDevice *)self btAddressData];
    v24 = btAddressData2;
    if (!btAddressData || !btAddressData2 || ([btAddressData isEqual:btAddressData2] & 1) == 0)
    {
      identifier = [v7 identifier];
      v26 = self->_identifier;
      v27 = v26;
      v28 = 0;
      if (identifier && v26)
      {
        v28 = [identifier caseInsensitiveCompare:v26] == 0;
      }

      if (identifier)
      {
        if (!v28 && [v24 length] == 6)
        {
          [identifier UTF8String];
          v28 = 0;
          if (!TextToHardwareAddress())
          {
            bytes = [v24 bytes];
            if (*bytes)
            {
              v30 = 0;
            }

            else
            {
              v30 = *(bytes + 4) == 0;
            }

            v28 = v30;
          }
        }
      }

      if (!v28 && v27 && [btAddressData length] == 6)
      {
        [(NSString *)v27 UTF8String];
        if (TextToHardwareAddress())
        {

LABEL_50:
          goto LABEL_51;
        }

        bytes2 = [btAddressData bytes];
        if (*bytes2)
        {
          v32 = 0;
        }

        else
        {
          v32 = *(bytes2 + 4) == 0;
        }

        v33 = !v32;

        if (v33)
        {
          goto LABEL_50;
        }
      }

      else
      {

        if (!v28)
        {
          goto LABEL_50;
        }
      }
    }

    v8 = 1;
    goto LABEL_52;
  }

  v8 = 1;
LABEL_52:

  return v8;
}

- (unint64_t)removeInternalFlags:(unsigned int)flags
{
  v4 = self->_internalFlags & ~flags;
  self->_internalFlags = v4;
  v5 = ((v4 & 0x8086) == 0) << 27;
  v6 = (v4 & 2) == 0;
  v7 = flags & 0x10000;
  if ((flags & 0x10000) != 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = (v4 >> 7) & 1;
  }

  v9 = (v4 & 0x84) != 0 && (flags & 0x10000) == 0;
  if ([(CBDevice *)self audioStreamState]&& !v9)
  {
    [(CBDevice *)self setAudioStreamState:0];
    v5 |= 0x80000000000uLL;
  }

  v10 = v6 | HIWORD(v7);
  if (!v9 && (self->_discoveryFlags & 0x80) == 0)
  {
    if ([(CBDevice *)self batteryInfoMain])
    {
      [(CBDevice *)self setBatteryInfoMain:0];
      v5 |= 0x80000000000uLL;
    }

    if ([(CBDevice *)self batteryInfoLeft])
    {
      [(CBDevice *)self setBatteryInfoLeft:0];
      v5 |= 0x80000000000uLL;
    }

    if ([(CBDevice *)self batteryInfoRight])
    {
      [(CBDevice *)self setBatteryInfoRight:0];
      v5 |= 0x80000000000uLL;
    }

    if ([(CBDevice *)self batteryInfoCase])
    {
      [(CBDevice *)self setBatteryInfoCase:0];
      v5 |= 0x80000000000uLL;
    }
  }

  bleAddressData = [(CBDevice *)self bleAddressData];
  v12 = bleAddressData == 0;

  if (!v12 && (v10 & 1) != 0)
  {
    [(CBDevice *)self setBleAddressData:0];
    v5 |= 0x80000000000uLL;
  }

  bleAdvertisementData = [(CBDevice *)self bleAdvertisementData];
  v14 = bleAdvertisementData == 0;

  if (!v14 && (v10 & 1) != 0)
  {
    [(CBDevice *)self setBleAdvertisementData:0];
    v5 |= 0x40000000uLL;
  }

  bleAppleManufacturerData = [(CBDevice *)self bleAppleManufacturerData];
  v16 = bleAppleManufacturerData == 0;

  if (!v16 && (v10 & 1) != 0)
  {
    [(CBDevice *)self setBleAppleManufacturerData:0];
    v5 |= 0x40000000uLL;
  }

  if ((([(CBDevice *)self bleChannel]!= 0) & v10) == 1)
  {
    [(CBDevice *)self setBleChannel:0];
    v5 |= 0x200000000uLL;
  }

  if ((([(CBDevice *)self bleRSSI]!= 0) & v10) == 1)
  {
    [(CBDevice *)self setBleRSSI:0];
    v5 |= 0x200000000uLL;
    if ([(CBDevice *)self classicRSSI]== 0 || v9)
    {
LABEL_30:
      connectedServices = [(CBDevice *)self connectedServices];
      if (connectedServices == 0 || v9)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

  else if ([(CBDevice *)self classicRSSI]== 0 || v9)
  {
    goto LABEL_30;
  }

  [(CBDevice *)self setClassicRSSI:0];
  v5 |= 0x200000000uLL;
  connectedServices = [(CBDevice *)self connectedServices];
  if (connectedServices != 0 && !v9)
  {
LABEL_31:
    connectedServices = [(CBDevice *)self setConnectedServices:0];
    v5 |= 0x80000000000uLL;
  }

LABEL_32:
  deviceFlags = self->_deviceFlags;
  v20 = deviceFlags & 0xFFFFF87F00000F80;
  v21 = (deviceFlags & 0xFFFFF87F00000F80) == deviceFlags || v9;
  if ((v21 & 1) == 0)
  {
    self->_deviceFlags = v20;
    v5 |= 0x80000000000uLL;
  }

  if (self->_deviceType != 0 && !v9)
  {
    self->_deviceType = 0;
    v5 |= 0x80000000000uLL;
  }

  discoveryFlags = self->_discoveryFlags;
  v23 = discoveryFlags & 0x8305593A4EB00000;
  if ((v10 & 1) == 0)
  {
    v23 = self->_discoveryFlags;
  }

  v24 = ((v7 << 7) | 0xFF7FFFFF) & 0xFFFBFFFFFFDFFFFFLL;
  if (v9)
  {
    v24 = 0xFFFBFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v24 = -1;
  }

  v25 = v23 & v24;
  if (v25 == discoveryFlags)
  {
    if ((v10 & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  else
  {
    self->_discoveryFlags = v25;
    v27 = v25 ^ discoveryFlags | 0x800000000;
    self->_changeFlags |= v27;
    v5 |= v27;
    if ((v10 & 1) == 0)
    {
LABEL_47:
      if ([(CBDevice *)self doubleTapActionLeft]== 0 || v9)
      {
        goto LABEL_48;
      }

      goto LABEL_63;
    }
  }

  v28 = CBDiscoveryTypesBLEScan(connectedServices, v18);
  CBDiscoveryTypesRemoveTypesAndReportChanges(&self->_discoveryTypesInternal, v28, self->_changedTypesInternal.bitArray);
  if ([(CBDevice *)self doubleTapActionLeft]== 0 || v9)
  {
LABEL_48:
    if ([(CBDevice *)self doubleTapActionRight]== 0 || v9)
    {
      goto LABEL_49;
    }

    goto LABEL_64;
  }

LABEL_63:
  [(CBDevice *)self setDoubleTapActionLeft:0];
  v5 |= 0x80000000000uLL;
  if ([(CBDevice *)self doubleTapActionRight]== 0 || v9)
  {
LABEL_49:
    if ([(CBDevice *)self doubleTapCapability]== 0 || v9)
    {
      goto LABEL_50;
    }

    goto LABEL_65;
  }

LABEL_64:
  [(CBDevice *)self setDoubleTapActionRight:0];
  v5 |= 0x80000000000uLL;
  if ([(CBDevice *)self doubleTapCapability]== 0 || v9)
  {
LABEL_50:
    if (self->_microphoneMode == 0 || v9)
    {
      goto LABEL_51;
    }

    goto LABEL_66;
  }

LABEL_65:
  [(CBDevice *)self setDoubleTapCapability:0];
  v5 |= 0x80000000000uLL;
  if (self->_microphoneMode == 0 || v9)
  {
LABEL_51:
    if (self->_primaryPlacement == 0 || v9)
    {
      goto LABEL_52;
    }

    goto LABEL_67;
  }

LABEL_66:
  self->_microphoneMode = 0;
  v5 |= 0x80000000000uLL;
  if (self->_primaryPlacement == 0 || v9)
  {
LABEL_52:
    if (self->_secondaryPlacement == 0 || v9)
    {
      goto LABEL_53;
    }

    goto LABEL_68;
  }

LABEL_67:
  self->_primaryPlacement = 0;
  v5 |= 0x80000000000uLL;
  if (self->_secondaryPlacement == 0 || v9)
  {
LABEL_53:
    if (self->_placementMode == 0 || v9)
    {
      goto LABEL_54;
    }

    goto LABEL_69;
  }

LABEL_68:
  self->_secondaryPlacement = 0;
  v5 |= 0x80000000000uLL;
  if (self->_placementMode == 0 || v9)
  {
LABEL_54:
    if (self->_smartRoutingMode == 0 || v9)
    {
      goto LABEL_55;
    }

LABEL_70:
    self->_smartRoutingMode = 0;
    v5 |= 0x80000000000uLL;
    if (self->_supportedServices == 0 || v9)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

LABEL_69:
  self->_placementMode = 0;
  v5 |= 0x80000000000uLL;
  if (self->_smartRoutingMode != 0 && !v9)
  {
    goto LABEL_70;
  }

LABEL_55:
  if (self->_supportedServices != 0 && !v9)
  {
LABEL_56:
    self->_supportedServices = 0;
    v5 |= 0x80000000000uLL;
  }

LABEL_57:
  [(CBDevice *)self _clearUnparsedProperties];
  return v5;
}

- (void)_setDeviceInfoKey:(id)key value:(id)value
{
  keyCopy = key;
  valueCopy = value;
  v7 = self->_deviceInfo;
  v8 = v7;
  if (valueCopy && !v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    deviceInfo = self->_deviceInfo;
    self->_deviceInfo = v8;
  }

  [(NSMutableDictionary *)v8 setObject:valueCopy forKeyedSubscript:keyCopy];
}

- (void)_clearDeviceInfoKey:(id)key
{
  keyCopy = key;
  v4 = self->_deviceInfo;
  v5 = v4;
  if (v4)
  {
    v6 = [(NSMutableDictionary *)v4 objectForKeyedSubscript:keyCopy];

    if (v6)
    {
      [(NSMutableDictionary *)v5 removeObjectForKey:keyCopy];
    }
  }
}

- (unint64_t)updateWithCBDevice:(id)device
{
  deviceCopy = device;
  internalFlags = [deviceCopy internalFlags];
  changeFlags = self->_changeFlags;
  discoveryFlags = self->_discoveryFlags;
  accountID = [deviceCopy accountID];
  v358 = accountID;
  if (!accountID)
  {
LABEL_5:
    v13 = 0;
    aclLinkState = [deviceCopy aclLinkState];
    if (!aclLinkState)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v8 = accountID;
  v9 = self->_accountID;
  v10 = v8;
  v11 = v10;
  if (v9 != v10)
  {
    if (v9)
    {
      v12 = [(NSString *)v9 isEqual:v10];

      if (v12)
      {
        goto LABEL_5;
      }
    }

    else
    {
    }

    v15 = v11;
    accountID = self->_accountID;
    self->_accountID = v15;
    v13 = 0x80000000000;

    aclLinkState = [deviceCopy aclLinkState];
    if (!aclLinkState)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v13 = 0;
  aclLinkState = [deviceCopy aclLinkState];
  if (!aclLinkState)
  {
    goto LABEL_13;
  }

LABEL_11:
  v17 = aclLinkState;
  if (aclLinkState != [(CBDevice *)self aclLinkState])
  {
    [(CBDevice *)self setAclLinkState:v17];
    v13 = 0x80000000000;
  }

LABEL_13:
  adaptiveVolumeCapability = [deviceCopy adaptiveVolumeCapability];
  if (adaptiveVolumeCapability)
  {
    v19 = adaptiveVolumeCapability;
    if (adaptiveVolumeCapability != [(CBDevice *)self adaptiveVolumeCapability])
    {
      [(CBDevice *)self setAdaptiveVolumeCapability:v19];
      v13 = 0x80000000000;
    }
  }

  adaptiveVolumeConfig = [deviceCopy adaptiveVolumeConfig];
  if (adaptiveVolumeConfig)
  {
    v21 = adaptiveVolumeConfig;
    if (adaptiveVolumeConfig != [(CBDevice *)self adaptiveVolumeConfig])
    {
      [(CBDevice *)self setAdaptiveVolumeConfig:v21];
      v13 = 0x80000000000;
    }
  }

  appearanceValue = [deviceCopy appearanceValue];
  if (appearanceValue)
  {
    v23 = appearanceValue;
    if (appearanceValue != [(CBDevice *)self appearanceValue])
    {
      [(CBDevice *)self setAppearanceValue:v23];
      v13 |= 0x80000000000uLL;
    }
  }

  v373 = internalFlags & 0x84;
  audioStreamState = [deviceCopy audioStreamState];
  if (audioStreamState)
  {
    v25 = audioStreamState;
    if (audioStreamState != [(CBDevice *)self audioStreamState])
    {
      [(CBDevice *)self setAudioStreamState:v25];
      v13 |= 0x80000000000uLL;
    }
  }

  autoAncCapability = [deviceCopy autoAncCapability];
  if (autoAncCapability)
  {
    v27 = autoAncCapability;
    if (autoAncCapability != [(CBDevice *)self autoAncCapability])
    {
      [(CBDevice *)self setAutoAncCapability:v27];
      v13 |= 0x80000000000uLL;
    }
  }

  if ((internalFlags & 0x84) != 0)
  {
    if (!_os_feature_enabled_impl())
    {
LABEL_42:
      batteryInfoMain = [deviceCopy batteryInfoMain];
      if (batteryInfoMain != [(CBDevice *)self batteryInfoMain])
      {
        [(CBDevice *)self setBatteryInfoMain:batteryInfoMain];
        v13 |= 0x80000000000uLL;
      }

      batteryInfoLeft = [deviceCopy batteryInfoLeft];
      if (batteryInfoLeft != [(CBDevice *)self batteryInfoLeft])
      {
        [(CBDevice *)self setBatteryInfoLeft:batteryInfoLeft];
        v13 |= 0x80000000000uLL;
      }

      batteryInfoRight = [deviceCopy batteryInfoRight];
      if (batteryInfoRight != [(CBDevice *)self batteryInfoRight])
      {
        [(CBDevice *)self setBatteryInfoRight:batteryInfoRight];
        v13 |= 0x80000000000uLL;
      }

      batteryInfoCase = [deviceCopy batteryInfoCase];
      if (batteryInfoCase != [(CBDevice *)self batteryInfoCase])
      {
        [(CBDevice *)self setBatteryInfoCase:batteryInfoCase];
        v13 |= 0x80000000000uLL;
      }

      goto LABEL_50;
    }
  }

  else
  {
    discoveryFlags = [deviceCopy discoveryFlags];
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      if ((discoveryFlags & 0x80) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_42;
    }
  }

  productID = self->_productID;
  if (!productID)
  {
    productID = [deviceCopy productID];
  }

  v30 = (productID - 569 < 0x1F) & (0x70000007u >> (productID - 57));
  if (productID - 781 < 2)
  {
    LOBYTE(v30) = 1;
  }

  if ((internalFlags & 0x84) == 0)
  {
    LOBYTE(v30) = 0;
  }

  if (internalFlags & 0x8000) != 0 || (v30)
  {
    goto LABEL_42;
  }

LABEL_50:
  bleAddressData = [deviceCopy bleAddressData];
  if (!bleAddressData)
  {
    goto LABEL_54;
  }

  bleAddressData2 = [(CBDevice *)self bleAddressData];
  v37 = bleAddressData;
  v38 = bleAddressData2;
  v39 = v38;
  if (v37 == v38)
  {

    bleAdvertisementData = [deviceCopy bleAdvertisementData];
    v353 = bleAdvertisementData;
    if (!bleAdvertisementData)
    {
      goto LABEL_65;
    }

    goto LABEL_60;
  }

  if (v38)
  {
    v40 = [v37 isEqual:v38];

    if (v40)
    {
LABEL_54:
      bleAdvertisementData = [deviceCopy bleAdvertisementData];
      v353 = bleAdvertisementData;
      if (!bleAdvertisementData)
      {
        goto LABEL_65;
      }

      goto LABEL_60;
    }
  }

  else
  {
  }

  [(CBDevice *)self setBleAddressData:v37];
  v13 |= 0x80000000000uLL;
  bleAdvertisementData = [deviceCopy bleAdvertisementData];
  v353 = bleAdvertisementData;
  if (!bleAdvertisementData)
  {
    goto LABEL_65;
  }

LABEL_60:
  v42 = bleAdvertisementData;
  bleAdvertisementData2 = [(CBDevice *)self bleAdvertisementData];
  v44 = v42;
  v45 = bleAdvertisementData2;
  v46 = v45;
  if (v44 != v45)
  {
    if (v45)
    {
      v47 = [v44 isEqual:v45];

      if (v47)
      {
        goto LABEL_65;
      }
    }

    else
    {
    }

    [(CBDevice *)self setBleAdvertisementData:v44];
    v13 |= 0x40000000uLL;
    [deviceCopy bleAdvertisementTimestamp];
    if (v48 == 0.0)
    {
      goto LABEL_71;
    }

LABEL_69:
    v49 = v48;
    [(CBDevice *)self bleAdvertisementTimestamp];
    if (v49 != v50)
    {
      [(CBDevice *)self setBleAdvertisementTimestamp:v49];
    }

    goto LABEL_71;
  }

LABEL_65:
  [deviceCopy bleAdvertisementTimestamp];
  if (v48 != 0.0)
  {
    goto LABEL_69;
  }

LABEL_71:
  bleAdvertisementTimestampMachContinuous = [deviceCopy bleAdvertisementTimestampMachContinuous];
  if (bleAdvertisementTimestampMachContinuous)
  {
    v52 = bleAdvertisementTimestampMachContinuous;
    if (bleAdvertisementTimestampMachContinuous != [(CBDevice *)self bleAdvertisementTimestampMachContinuous])
    {
      [(CBDevice *)self setBleAdvertisementTimestampMachContinuous:v52];
    }
  }

  bleAppleManufacturerData = [deviceCopy bleAppleManufacturerData];
  v352 = bleAppleManufacturerData;
  if (!bleAppleManufacturerData)
  {
    goto LABEL_80;
  }

  v54 = bleAppleManufacturerData;
  bleAppleManufacturerData2 = [(CBDevice *)self bleAppleManufacturerData];
  v56 = v54;
  v57 = bleAppleManufacturerData2;
  v58 = v57;
  if (v56 == v57)
  {

    goto LABEL_80;
  }

  if (!v57)
  {

    goto LABEL_83;
  }

  v59 = [v56 isEqual:v57];

  if (v59)
  {
LABEL_80:
    bleChannel = [deviceCopy bleChannel];
    if (!bleChannel)
    {
      goto LABEL_86;
    }

    goto LABEL_84;
  }

LABEL_83:
  [(CBDevice *)self setBleAppleManufacturerData:v56];
  v13 |= 0x40000000uLL;
  bleChannel = [deviceCopy bleChannel];
  if (!bleChannel)
  {
    goto LABEL_86;
  }

LABEL_84:
  v61 = bleChannel;
  if (bleChannel != [(CBDevice *)self bleChannel])
  {
    [(CBDevice *)self setBleChannel:v61];
    v13 |= 0x200000000uLL;
  }

LABEL_86:
  bleRSSI = [deviceCopy bleRSSI];
  if (bleRSSI)
  {
    [(CBDevice *)self setBleRSSI:bleRSSI];
    v13 |= 0x200000000uLL;
  }

  btAddressData = [deviceCopy btAddressData];
  v350 = btAddressData;
  if (btAddressData)
  {
    v64 = btAddressData;
    btAddressData2 = [(CBDevice *)self btAddressData];
    v66 = v64;
    v67 = btAddressData2;
    v68 = v67;
    if (v66 == v67)
    {
    }

    else
    {
      if (!v67)
      {

        goto LABEL_97;
      }

      v69 = [v66 isEqual:v67];

      if ((v69 & 1) == 0)
      {
LABEL_97:
        [(CBDevice *)self setBtAddressData:v66];
        v13 |= 0x80000000000uLL;
        btVersion = [deviceCopy btVersion];
        v348 = btVersion;
        if (!btVersion)
        {
          goto LABEL_105;
        }

        goto LABEL_98;
      }
    }
  }

  btVersion = [deviceCopy btVersion];
  v348 = btVersion;
  if (!btVersion)
  {
    goto LABEL_105;
  }

LABEL_98:
  v71 = btVersion;
  btVersion2 = [(CBDevice *)self btVersion];
  v73 = v71;
  v74 = btVersion2;
  v75 = v74;
  if (v73 == v74)
  {

    goto LABEL_105;
  }

  if (!v74)
  {

    goto LABEL_104;
  }

  v76 = [v73 isEqual:v74];

  if ((v76 & 1) == 0)
  {
LABEL_104:
    [(CBDevice *)self setBtVersion:v73];
    v13 |= 0x80000000000uLL;
  }

LABEL_105:
  caseVersion = [deviceCopy caseVersion];
  v346 = caseVersion;
  if ([caseVersion length])
  {
    caseVersion2 = [(CBDevice *)self caseVersion];
    v79 = caseVersion;
    v80 = caseVersion2;
    v81 = v80;
    if (v79 == v80)
    {
    }

    else
    {
      if ((v79 != 0) == (v80 == 0))
      {

        goto LABEL_134;
      }

      v82 = [v79 isEqual:v80];

      if ((v82 & 1) == 0)
      {
LABEL_134:
        [(CBDevice *)self setCaseVersion:v79];
        v13 |= 0x80000000000uLL;
        classicRSSI = [deviceCopy classicRSSI];
        if (!classicRSSI)
        {
          goto LABEL_113;
        }

        goto LABEL_112;
      }
    }
  }

  classicRSSI = [deviceCopy classicRSSI];
  if (classicRSSI)
  {
LABEL_112:
    [(CBDevice *)self setClassicRSSI:classicRSSI];
    v13 |= 0x200000000uLL;
  }

LABEL_113:
  clickHoldModeLeft = [deviceCopy clickHoldModeLeft];
  if (clickHoldModeLeft)
  {
    v85 = clickHoldModeLeft;
    if (clickHoldModeLeft != [(CBDevice *)self clickHoldModeLeft])
    {
      [(CBDevice *)self setClickHoldModeLeft:v85];
      v13 |= 0x80000000000uLL;
    }
  }

  clickHoldModeRight = [deviceCopy clickHoldModeRight];
  if (clickHoldModeRight)
  {
    v87 = clickHoldModeRight;
    if (clickHoldModeRight != [(CBDevice *)self clickHoldModeRight])
    {
      [(CBDevice *)self setClickHoldModeRight:v87];
      v13 |= 0x80000000000uLL;
    }
  }

  colorInfo = [deviceCopy colorInfo];
  colorInfo2 = [(CBDevice *)self colorInfo];
  if (colorInfo && colorInfo2 != colorInfo)
  {
    [(CBDevice *)self setColorInfo:colorInfo];
    v13 |= 0x80000000000uLL;
  }

  if ((internalFlags & 0x84) != 0)
  {
    connectedServices = [deviceCopy connectedServices];
    if (connectedServices != [(CBDevice *)self connectedServices])
    {
      [(CBDevice *)self setConnectedServices:connectedServices];
      v13 |= 0x80000200000uLL;
    }
  }

  contactID = [deviceCopy contactID];
  obj = contactID;
  if (!contactID)
  {
LABEL_129:
    controllerInfo = [deviceCopy controllerInfo];
    v362 = controllerInfo;
    if (!controllerInfo)
    {
      goto LABEL_143;
    }

    goto LABEL_138;
  }

  v92 = contactID;
  v93 = self->_contactID;
  v94 = v92;
  v95 = v94;
  if (v93 == v94)
  {

    controllerInfo = [deviceCopy controllerInfo];
    v362 = controllerInfo;
    if (!controllerInfo)
    {
      goto LABEL_143;
    }

    goto LABEL_138;
  }

  if (v93)
  {
    v96 = [(NSString *)v93 isEqual:v94];

    if (v96)
    {
      goto LABEL_129;
    }
  }

  else
  {
  }

  objc_storeStrong(&self->_contactID, obj);
  v13 |= 0x80000000000uLL;
  controllerInfo = [deviceCopy controllerInfo];
  v362 = controllerInfo;
  if (!controllerInfo)
  {
    goto LABEL_143;
  }

LABEL_138:
  v98 = controllerInfo;
  v99 = self->_controllerInfo;
  v100 = v98;
  v101 = v100;
  if (v99 != v100)
  {
    if (v99)
    {
      v102 = [(CBControllerInfo *)v99 isEqual:v100];

      if (v102)
      {
        goto LABEL_143;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_controllerInfo, v362);
    v13 |= 0x80000000000uLL;
    conversationDetectCapability = [deviceCopy conversationDetectCapability];
    if (!conversationDetectCapability)
    {
      goto LABEL_149;
    }

LABEL_147:
    v104 = conversationDetectCapability;
    if (conversationDetectCapability != [(CBDevice *)self conversationDetectCapability])
    {
      [(CBDevice *)self setConversationDetectCapability:v104];
      v13 |= 0x80000000000uLL;
    }

    goto LABEL_149;
  }

LABEL_143:
  conversationDetectCapability = [deviceCopy conversationDetectCapability];
  if (conversationDetectCapability)
  {
    goto LABEL_147;
  }

LABEL_149:
  conversationDetectConfig = [deviceCopy conversationDetectConfig];
  if (conversationDetectConfig)
  {
    v106 = conversationDetectConfig;
    if (conversationDetectConfig != [(CBDevice *)self conversationDetectConfig])
    {
      [(CBDevice *)self setConversationDetectConfig:v106];
      v13 |= 0x80000000000uLL;
    }
  }

  crownRotationDirection = [deviceCopy crownRotationDirection];
  if (crownRotationDirection)
  {
    v108 = crownRotationDirection;
    if (crownRotationDirection != [(CBDevice *)self crownRotationDirection])
    {
      [(CBDevice *)self setCrownRotationDirection:v108];
      v13 |= 0x80000000000uLL;
    }
  }

  if ((internalFlags & 0x84) != 0)
  {
    deviceFlags = self->_deviceFlags;
    v110 = [deviceCopy deviceFlags] & 0x780FFFFF07FLL | deviceFlags & 0xFFFFF87F00000F80;
    if (v110 != deviceFlags)
    {
      self->_deviceFlags = v110;
      v13 |= 0x80000000000uLL;
    }
  }

  if ((internalFlags & 2) != 0)
  {
    v111 = self->_deviceFlags;
    v112 = v111 & 0xFFFFFBFFFFFFFFFFLL | ((([deviceCopy deviceFlags] >> 42) & 1) << 42);
    if (v112 != v111)
    {
      self->_deviceFlags = v112;
      v13 |= 0x80000000000uLL;
    }
  }

  if ((internalFlags & 0x84) != 0)
  {
    deviceType = [deviceCopy deviceType];
    if (deviceType != self->_deviceType)
    {
      self->_deviceType = deviceType;
      v13 |= 0x80000000000uLL;
    }
  }

  dockKitAccessoryPayloadData = [deviceCopy dockKitAccessoryPayloadData];
  if ((internalFlags & 2) == 0)
  {
    goto LABEL_170;
  }

  dockKitAccessoryPayloadData2 = [(CBDevice *)self dockKitAccessoryPayloadData];
  v115 = dockKitAccessoryPayloadData;
  v116 = dockKitAccessoryPayloadData2;
  v117 = v116;
  if (v115 == v116)
  {

    goto LABEL_170;
  }

  if ((v115 != 0) == (v116 == 0))
  {

    goto LABEL_174;
  }

  v118 = [v115 isEqual:v116];

  if (v118)
  {
LABEL_170:
    doubleTapActionLeft = [deviceCopy doubleTapActionLeft];
    if (!doubleTapActionLeft)
    {
      goto LABEL_175;
    }

    goto LABEL_171;
  }

LABEL_174:
  [(CBDevice *)self setDockKitAccessoryPayloadData:v115];
  self->_changedTypesInternal.bitArray[1] |= 0x10u;
  doubleTapActionLeft = [deviceCopy doubleTapActionLeft];
  if (!doubleTapActionLeft)
  {
    goto LABEL_175;
  }

LABEL_171:
  v120 = doubleTapActionLeft;
  if (doubleTapActionLeft != [(CBDevice *)self doubleTapActionLeft])
  {
    [(CBDevice *)self setDoubleTapActionLeft:v120];
    v13 |= 0x80000000000uLL;
  }

LABEL_175:
  doubleTapActionRight = [deviceCopy doubleTapActionRight];
  if (doubleTapActionRight)
  {
    v122 = doubleTapActionRight;
    if (doubleTapActionRight != [(CBDevice *)self doubleTapActionRight])
    {
      [(CBDevice *)self setDoubleTapActionRight:v122];
      v13 |= 0x80000000000uLL;
    }
  }

  doubleTapCapability = [deviceCopy doubleTapCapability];
  if (doubleTapCapability)
  {
    v124 = doubleTapCapability;
    if (doubleTapCapability != [(CBDevice *)self doubleTapCapability])
    {
      [(CBDevice *)self setDoubleTapCapability:v124];
      v13 |= 0x80000000000uLL;
    }
  }

  v125 = discoveryFlags;
  if ((internalFlags & 0x80) != 0)
  {
    v125 = discoveryFlags & 0xFFFBFFFFFFFFFFFFLL | ((([deviceCopy discoveryFlags] >> 50) & 1) << 50);
    if ((internalFlags & 4) == 0)
    {
LABEL_183:
      if (v125 == discoveryFlags)
      {
        goto LABEL_184;
      }

LABEL_188:
      self->_discoveryFlags = v125;
      v13 |= 0x800000000uLL;
      if ((internalFlags & 2) == 0)
      {
        goto LABEL_195;
      }

LABEL_189:
      dsInfoVehicleConfidence = [deviceCopy dsInfoVehicleConfidence];
      if (dsInfoVehicleConfidence)
      {
        v127 = dsInfoVehicleConfidence;
        if (dsInfoVehicleConfidence != [(CBDevice *)self dsInfoVehicleConfidence])
        {
          [(CBDevice *)self setDsInfoVehicleConfidence:v127];
          v13 |= 0x800000000000000uLL;
        }
      }

      dsInfoVehicleState = [deviceCopy dsInfoVehicleState];
      if (dsInfoVehicleState)
      {
        v129 = dsInfoVehicleState;
        if (dsInfoVehicleState != [(CBDevice *)self dsInfoVehicleState])
        {
          [(CBDevice *)self setDsInfoVehicleState:v129];
          v13 |= 0x800000000000000uLL;
        }
      }

      goto LABEL_195;
    }
  }

  else if ((internalFlags & 4) == 0)
  {
    goto LABEL_183;
  }

  v125 = [deviceCopy discoveryFlags] & 0xA00000 | v125 & 0xFFFFFFFFFF5FFFFFLL;
  if (v125 != discoveryFlags)
  {
    goto LABEL_188;
  }

LABEL_184:
  if ((internalFlags & 2) != 0)
  {
    goto LABEL_189;
  }

LABEL_195:
  endCallCapability = [deviceCopy endCallCapability];
  if (endCallCapability)
  {
    v131 = endCallCapability;
    if (endCallCapability != [(CBDevice *)self endCallCapability])
    {
      [(CBDevice *)self setEndCallCapability:v131];
      v13 |= 0x80000000000uLL;
    }
  }

  endCallConfig = [deviceCopy endCallConfig];
  if (endCallConfig)
  {
    v133 = endCallConfig;
    if (endCallConfig != [(CBDevice *)self endCallConfig])
    {
      [(CBDevice *)self setEndCallConfig:v133];
      v13 |= 0x80000000000uLL;
    }
  }

  fidoPayloadData = [deviceCopy fidoPayloadData];
  v369 = fidoPayloadData;
  if ((internalFlags & 2) == 0)
  {
    goto LABEL_207;
  }

  v135 = fidoPayloadData;
  fidoPayloadData2 = [(CBDevice *)self fidoPayloadData];
  v137 = v135;
  v138 = fidoPayloadData2;
  v139 = v138;
  if (v137 == v138)
  {

    goto LABEL_207;
  }

  if ((v137 != 0) == (v138 == 0))
  {

    goto LABEL_215;
  }

  v140 = [v137 isEqual:v138];

  if (v140)
  {
LABEL_207:
    findMyCaseIdentifier = [deviceCopy findMyCaseIdentifier];
    v344 = findMyCaseIdentifier;
    if (!findMyCaseIdentifier)
    {
      goto LABEL_216;
    }

    goto LABEL_208;
  }

LABEL_215:
  [(CBDevice *)self setFidoPayloadData:v137];
  v13 |= 0x8000000000000uLL;
  findMyCaseIdentifier = [deviceCopy findMyCaseIdentifier];
  v344 = findMyCaseIdentifier;
  if (!findMyCaseIdentifier)
  {
    goto LABEL_216;
  }

LABEL_208:
  v142 = findMyCaseIdentifier;
  findMyCaseIdentifier2 = [(CBDevice *)self findMyCaseIdentifier];
  v144 = v142;
  v145 = findMyCaseIdentifier2;
  v146 = v145;
  if (v144 == v145)
  {

    findMyGroupIdentifier = [deviceCopy findMyGroupIdentifier];
    v342 = findMyGroupIdentifier;
    if (!findMyGroupIdentifier)
    {
      goto LABEL_225;
    }
  }

  else
  {
    if (v145)
    {
      v147 = [v144 isEqual:v145];

      if (v147)
      {
LABEL_216:
        findMyGroupIdentifier = [deviceCopy findMyGroupIdentifier];
        v342 = findMyGroupIdentifier;
        if (!findMyGroupIdentifier)
        {
          goto LABEL_225;
        }

        goto LABEL_220;
      }
    }

    else
    {
    }

    [(CBDevice *)self setFindMyCaseIdentifier:v144];
    v13 |= 0x80000000000uLL;
    findMyGroupIdentifier = [deviceCopy findMyGroupIdentifier];
    v342 = findMyGroupIdentifier;
    if (!findMyGroupIdentifier)
    {
      goto LABEL_225;
    }
  }

LABEL_220:
  v149 = findMyGroupIdentifier;
  findMyGroupIdentifier2 = [(CBDevice *)self findMyGroupIdentifier];
  v151 = v149;
  v152 = findMyGroupIdentifier2;
  v153 = v152;
  if (v151 != v152)
  {
    if (v152)
    {
      v154 = [v151 isEqual:v152];

      if (v154)
      {
        goto LABEL_225;
      }
    }

    else
    {
    }

    [(CBDevice *)self setFindMyGroupIdentifier:v151];
    v13 |= 0x80000000000uLL;
    frequencyBand = [deviceCopy frequencyBand];
    if (!frequencyBand)
    {
      goto LABEL_231;
    }

    goto LABEL_229;
  }

LABEL_225:
  frequencyBand = [deviceCopy frequencyBand];
  if (!frequencyBand)
  {
    goto LABEL_231;
  }

LABEL_229:
  v156 = frequencyBand;
  if (frequencyBand != [(CBDevice *)self frequencyBand])
  {
    [(CBDevice *)self setFrequencyBand:v156];
    v13 |= 0x80000000000uLL;
  }

LABEL_231:
  if ((internalFlags & 4) != 0)
  {
    gapaFlags = [deviceCopy gapaFlags];
    if (gapaFlags != [(CBDevice *)self gapaFlags])
    {
      [(CBDevice *)self setGapaFlags:gapaFlags];
      v13 |= 0x80000000000uLL;
    }
  }

  gfpPayloadData = [deviceCopy gfpPayloadData];
  v368 = gfpPayloadData;
  if ((internalFlags & 2) != 0)
  {
    v159 = gfpPayloadData;
    gfpPayloadData2 = [(CBDevice *)self gfpPayloadData];
    v161 = v159;
    v162 = gfpPayloadData2;
    v163 = v162;
    if (v161 == v162)
    {

      if ([v161 length] < 3)
      {
        goto LABEL_245;
      }
    }

    else
    {
      if ((v161 != 0) != (v162 == 0))
      {
        v164 = [v161 isEqual:v162];

        if (v164)
        {
          if ([v161 length] >= 3)
          {
            goto LABEL_239;
          }

LABEL_245:
          v166 = 0;
          if (![(CBDevice *)self gfpModelID])
          {
            goto LABEL_247;
          }

          goto LABEL_246;
        }
      }

      else
      {
      }

      [(CBDevice *)self setGfpPayloadData:v161];
      v13 |= 0x40000000000000uLL;
      if ([v161 length] < 3)
      {
        goto LABEL_245;
      }
    }

LABEL_239:
    bytes = [v161 bytes];
    v166 = (*bytes << 16) | (bytes[1] << 8) | bytes[2];
    if (v166 == [(CBDevice *)self gfpModelID])
    {
      goto LABEL_247;
    }

LABEL_246:
    [(CBDevice *)self setGfpModelID:v166];
    v13 |= 0x40000000000000uLL;
  }

LABEL_247:
  firmwareVersion = [deviceCopy firmwareVersion];
  v366 = firmwareVersion;
  if (![firmwareVersion length])
  {
    goto LABEL_251;
  }

  firmwareVersion = self->_firmwareVersion;
  v169 = firmwareVersion;
  v170 = firmwareVersion;
  if (v169 == v170)
  {

    identifier = [deviceCopy identifier];
    v361 = identifier;
    if (!identifier)
    {
      goto LABEL_262;
    }

    goto LABEL_257;
  }

  if ((v169 != 0) != (v170 == 0))
  {
    v171 = v170;
    v172 = [(NSString *)v169 isEqual:v170];

    if (v172)
    {
LABEL_251:
      identifier = [deviceCopy identifier];
      v361 = identifier;
      if (!identifier)
      {
        goto LABEL_262;
      }

      goto LABEL_257;
    }
  }

  else
  {
  }

  objc_storeStrong(&self->_firmwareVersion, firmwareVersion);
  v13 |= 0x80000000000uLL;
  identifier = [deviceCopy identifier];
  v361 = identifier;
  if (!identifier)
  {
    goto LABEL_262;
  }

LABEL_257:
  identifier = self->_identifier;
  v175 = identifier;
  v176 = identifier;
  v177 = v176;
  if (v175 != v176)
  {
    if (v176)
    {
      v178 = [(NSString *)v175 isEqual:v176];

      if (v178)
      {
        goto LABEL_262;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_identifier, v361);
    v13 |= 0x80000000000uLL;
    idsDeviceID = [deviceCopy idsDeviceID];
    v360 = idsDeviceID;
    if (!idsDeviceID)
    {
      goto LABEL_273;
    }

    goto LABEL_266;
  }

LABEL_262:
  idsDeviceID = [deviceCopy idsDeviceID];
  v360 = idsDeviceID;
  if (!idsDeviceID)
  {
    goto LABEL_273;
  }

LABEL_266:
  v180 = idsDeviceID;
  v181 = self->_idsDeviceID;
  v182 = v180;
  v183 = v182;
  if (v181 == v182)
  {
  }

  else
  {
    if (v181)
    {
      v184 = [(NSString *)v181 isEqual:v182];

      if (v184)
      {
        goto LABEL_273;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_idsDeviceID, v360);
    v13 |= 0x80000000000uLL;
  }

LABEL_273:
  self->_internalFlags = self->_internalFlags & 0xFFFDFFFF | (((internalFlags >> 17) & 1) << 17);
  interval = [deviceCopy interval];
  if (interval)
  {
    v186 = interval;
    if (interval != [(CBDevice *)self interval])
    {
      self->_interval = v186;
      v13 |= 0x80000000000uLL;
    }
  }

  lastSeenTicks = [deviceCopy lastSeenTicks];
  if (lastSeenTicks > self->_lastSeenTicks)
  {
    self->_lastSeenTicks = lastSeenTicks;
  }

  listeningMode = [deviceCopy listeningMode];
  if (listeningMode)
  {
    v189 = listeningMode;
    if (listeningMode != [(CBDevice *)self listeningMode])
    {
      [(CBDevice *)self setListeningMode:v189];
      v13 |= 0x80000000000uLL;
    }
  }

  listeningModeConfigs = [deviceCopy listeningModeConfigs];
  if (listeningModeConfigs)
  {
    v191 = listeningModeConfigs;
    if (listeningModeConfigs != [(CBDevice *)self listeningModeConfigs])
    {
      [(CBDevice *)self setListeningModeConfigs:v191];
      v13 |= 0x80000000000uLL;
    }
  }

  microphoneMode = [deviceCopy microphoneMode];
  if (microphoneMode && self->_microphoneMode != microphoneMode)
  {
    self->_microphoneMode = microphoneMode;
    v13 |= 0x80000000000uLL;
  }

  model = [deviceCopy model];
  v365 = model;
  if ([model length])
  {
    model = self->_model;
    v195 = model;
    v196 = model;
    if (v195 == v196)
    {

      goto LABEL_295;
    }

    if ((v195 != 0) != (v196 == 0))
    {
      v197 = v196;
      v198 = [(NSString *)v195 isEqual:v196];

      if (v198)
      {
        goto LABEL_295;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_model, model);
    v13 |= 0x80000000000uLL;
  }

LABEL_295:
  modelUser = [deviceCopy modelUser];
  v340 = modelUser;
  if (![modelUser length])
  {
    goto LABEL_299;
  }

  modelUser2 = [(CBDevice *)self modelUser];
  v201 = modelUser;
  v202 = modelUser2;
  v203 = v202;
  if (v201 == v202)
  {

    muteControlCapability = [deviceCopy muteControlCapability];
    muteControlCapability = self->_muteControlCapability;
    if (!muteControlCapability)
    {
      goto LABEL_306;
    }
  }

  else
  {
    if ((v201 != 0) == (v202 == 0))
    {
    }

    else
    {
      v204 = [v201 isEqual:v202];

      if (v204)
      {
LABEL_299:
        muteControlCapability = [deviceCopy muteControlCapability];
        muteControlCapability = self->_muteControlCapability;
        if (muteControlCapability)
        {
          goto LABEL_300;
        }

LABEL_306:
        if (!muteControlCapability)
        {
          goto LABEL_309;
        }

        goto LABEL_307;
      }
    }

    [(CBDevice *)self setModelUser:v201];
    v13 |= 0x80000000000uLL;
    muteControlCapability = [deviceCopy muteControlCapability];
    muteControlCapability = self->_muteControlCapability;
    if (!muteControlCapability)
    {
      goto LABEL_306;
    }
  }

LABEL_300:
  if (muteControlCapability != muteControlCapability)
  {
    self->_muteControlCapability = muteControlCapability;
    v13 |= 0x80000000000uLL;
  }

LABEL_307:
  if ([(CBDevice *)self endCallCapability])
  {
    [(CBDevice *)self setEndCallCapability:0];
    v13 |= 0x80000000000uLL;
  }

LABEL_309:
  muteControlConfig = [deviceCopy muteControlConfig];
  if (muteControlConfig)
  {
    v208 = muteControlConfig;
    if (muteControlConfig != [(CBDevice *)self muteControlConfig])
    {
      [(CBDevice *)self setMuteControlConfig:v208];
      v13 |= 0x80000000000uLL;
    }
  }

  leAdvName = [deviceCopy leAdvName];
  v372 = leAdvName;
  if ([leAdvName length])
  {
    leAdvName = self->_leAdvName;
    name = leAdvName;
    v212 = leAdvName;
    v213 = v212;
    if (name == v212)
    {
    }

    else
    {
      if ((name != 0) == (v212 == 0))
      {
      }

      else
      {
        v214 = [(NSString *)name isEqual:v212];

        if (v214)
        {
          goto LABEL_322;
        }
      }

      if ((internalFlags & 2) == 0)
      {
        goto LABEL_322;
      }

      objc_storeStrong(&self->_leAdvName, v372);
      v13 |= 0x80000000000uLL;
      v215 = name;
      name = self->_name;
      self->_name = v215;
    }
  }

LABEL_322:
  name = [deviceCopy name];
  v367 = name;
  if (![name length])
  {
    goto LABEL_331;
  }

  v217 = self->_name;
  v218 = name;
  v219 = v217;
  if (v218 == v219)
  {

    goto LABEL_331;
  }

  if ((v218 != 0) == (v219 == 0))
  {

    v222 = v367;
    if ((internalFlags & 2) != 0)
    {
      goto LABEL_331;
    }

    goto LABEL_330;
  }

  v220 = v219;
  v221 = [(NSString *)v218 isEqual:v219];

  if ((v221 & 1) == 0)
  {
    v222 = v367;
    if ((internalFlags & 2) == 0)
    {
LABEL_330:
      objc_storeStrong(&self->_name, v222);
      v13 |= 0x80000000000uLL;
    }
  }

LABEL_331:
  if ((internalFlags & 0x84) == 0)
  {
    goto LABEL_336;
  }

  primaryBudSide = [deviceCopy primaryBudSide];
  if (primaryBudSide == [(CBDevice *)self primaryBudSide])
  {
    primaryPlacement = [deviceCopy primaryPlacement];
    if (primaryPlacement == self->_primaryPlacement)
    {
      goto LABEL_334;
    }

LABEL_353:
    self->_primaryPlacement = primaryPlacement;
    v13 |= 0x80000000000uLL;
    secondaryPlacement = [deviceCopy secondaryPlacement];
    if (secondaryPlacement == self->_secondaryPlacement)
    {
      goto LABEL_336;
    }

    goto LABEL_335;
  }

  [(CBDevice *)self setPrimaryBudSide:primaryBudSide];
  v13 |= 0x80000000000uLL;
  primaryPlacement = [deviceCopy primaryPlacement];
  if (primaryPlacement != self->_primaryPlacement)
  {
    goto LABEL_353;
  }

LABEL_334:
  secondaryPlacement = [deviceCopy secondaryPlacement];
  if (secondaryPlacement != self->_secondaryPlacement)
  {
LABEL_335:
    self->_secondaryPlacement = secondaryPlacement;
    v13 |= 0x80000000000uLL;
  }

LABEL_336:
  placementMode = [deviceCopy placementMode];
  if (placementMode && self->_placementMode != placementMode)
  {
    self->_placementMode = placementMode;
    v13 |= 0x80000000000uLL;
  }

  productID = [deviceCopy productID];
  if (productID && productID != self->_productID)
  {
    self->_productID = productID;
    v13 |= 0x80000000000uLL;
  }

  proximityServiceData = [deviceCopy proximityServiceData];
  v229 = proximityServiceData;
  v359 = proximityServiceData;
  if ((internalFlags & 2) != 0 || proximityServiceData)
  {
    proximityServiceData2 = [(CBDevice *)self proximityServiceData];
    v231 = v229;
    v232 = v229;
    v233 = proximityServiceData2;
    v234 = v233;
    if (v232 == v233)
    {

      v371 = 0;
      v357 = discoveryFlags;
      v355 = internalFlags;
      v354 = bleAddressData;
      v236 = deviceCopy;
      if ((internalFlags & 0x4000) != 0)
      {
        goto LABEL_362;
      }
    }

    else
    {
      if ((v231 != 0) != (v233 == 0))
      {
        v235 = [v232 isEqual:v233];

        if (v235)
        {
          goto LABEL_347;
        }
      }

      else
      {
      }

      v245 = [(CBDevice *)self setProximityServiceData:v232];
      v13 |= 0x80000000uLL;
      self->_discoveryFlags &= 0xFFFFFFFE7FFFFFFFLL;
      v247 = CBDiscoveryTypesProximityService(v245, v246);
      CBDiscoveryTypesRemoveTypes(self->_discoveryTypesInternal.bitArray, v247);
      if (v359)
      {
        [(CBDevice *)self _parseProximityServiceData:v232];
      }

      v371 = 1;
      v357 = discoveryFlags;
      v355 = internalFlags;
      v354 = bleAddressData;
      v236 = deviceCopy;
      if ((internalFlags & 0x4000) != 0)
      {
        goto LABEL_362;
      }
    }

LABEL_348:
    safetyAlertsAlertData = [v236 safetyAlertsAlertData];
    safetyAlertsAlertData = self->_safetyAlertsAlertData;
    v239 = safetyAlertsAlertData;
    v240 = safetyAlertsAlertData;
    v241 = v239 != v240;
    if (v239 == v240)
    {

      v244 = v239;
    }

    else
    {
      if ((v239 != 0) != (v240 == 0))
      {
        v242 = v240;
        v243 = [(NSData *)v239 isEqual:v240];

        if (v243)
        {
          v241 = 0;
          goto LABEL_370;
        }
      }

      else
      {
      }

      v254 = v239;
      v244 = self->_safetyAlertsAlertData;
      self->_safetyAlertsAlertData = v254;
    }

LABEL_370:
    safetyAlertsAlertID = [deviceCopy safetyAlertsAlertID];
    safetyAlertsAlertID = self->_safetyAlertsAlertID;
    v257 = safetyAlertsAlertID;
    v258 = safetyAlertsAlertID;
    if (v257 == v258)
    {

      v261 = v257;
    }

    else
    {
      if ((v257 != 0) != (v258 == 0))
      {
        v259 = v258;
        v260 = [(NSData *)v257 isEqual:v258];

        if (v260)
        {
LABEL_382:
          safetyAlertsSignature = [deviceCopy safetyAlertsSignature];
          safetyAlertsSignature = self->_safetyAlertsSignature;
          v265 = safetyAlertsSignature;
          v266 = safetyAlertsSignature;
          if (v265 == v266)
          {

            safetyAlertsVersion = [deviceCopy safetyAlertsVersion];
            p_safetyAlertsVersion = &self->_safetyAlertsVersion;
            if (safetyAlertsVersion == self->_safetyAlertsVersion)
            {
              goto LABEL_388;
            }
          }

          else
          {
            if ((v265 != 0) != (v266 == 0))
            {
              v267 = v266;
              v268 = [(NSData *)v265 isEqual:v266];

              if (v268)
              {
                safetyAlertsVersion = [deviceCopy safetyAlertsVersion];
                p_safetyAlertsVersion = &self->_safetyAlertsVersion;
                if (safetyAlertsVersion != self->_safetyAlertsVersion)
                {
                  goto LABEL_392;
                }

LABEL_388:
                if (!v241)
                {
                  goto LABEL_394;
                }

                goto LABEL_393;
              }
            }

            else
            {
            }

            objc_storeStrong(&self->_safetyAlertsSignature, safetyAlertsSignature);
            safetyAlertsVersion = [deviceCopy safetyAlertsVersion];
            p_safetyAlertsVersion = &self->_safetyAlertsVersion;
            if (safetyAlertsVersion == self->_safetyAlertsVersion)
            {
LABEL_393:
              self->_changedTypesInternal.bitArray[3] |= 0x40u;
              v371 = 1;
LABEL_394:
              if (safetyAlertsVersion)
              {
                v271 = v265 == 0;
              }

              else
              {
                v271 = 1;
              }

              if (v271 || v257 == 0 || v239 == 0)
              {
                v274 = 0;
              }

              else
              {
                v274 = 64;
              }

              self->_discoveryTypesInternal.bitArray[3] = self->_discoveryTypesInternal.bitArray[3] & 0xBF | v274;

              safetyAlertsSegmentServiceData = [deviceCopy safetyAlertsSegmentServiceData];
              goto LABEL_407;
            }
          }

LABEL_392:
          *p_safetyAlertsVersion = safetyAlertsVersion;
          goto LABEL_393;
        }
      }

      else
      {
      }

      v262 = v257;
      v261 = self->_safetyAlertsAlertID;
      self->_safetyAlertsAlertID = v262;
      v241 = 1;
    }

    goto LABEL_382;
  }

LABEL_347:
  v371 = 0;
  v357 = discoveryFlags;
  v355 = internalFlags;
  v354 = bleAddressData;
  v236 = deviceCopy;
  if ((internalFlags & 0x4000) == 0)
  {
    goto LABEL_348;
  }

LABEL_362:
  safetyAlertsSegmentServiceData2 = [v236 safetyAlertsSegmentServiceData];
  safetyAlertsSegmentServiceData = self->_safetyAlertsSegmentServiceData;
  safetyAlertsSegmentServiceData = safetyAlertsSegmentServiceData2;
  v251 = safetyAlertsSegmentServiceData;
  if (safetyAlertsSegmentServiceData == v251)
  {
  }

  else
  {
    if ((safetyAlertsSegmentServiceData != 0) != (v251 == 0))
    {
      v252 = v251;
      v253 = [(NSData *)safetyAlertsSegmentServiceData isEqual:v251];

      if (v253)
      {
        goto LABEL_407;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_safetyAlertsSegmentServiceData, safetyAlertsSegmentServiceData2);
    self->_changedTypesInternal.bitArray[3] |= 0x40u;
    self->_discoveryTypesInternal.bitArray[3] &= ~0x40u;
    if (safetyAlertsSegmentServiceData)
    {
      [(CBDevice *)self _parseSafetyAlertsSegmentServiceData:safetyAlertsSegmentServiceData];
    }

    v371 = 1;
  }

LABEL_407:
  selectiveSpeechListeningCapability = [deviceCopy selectiveSpeechListeningCapability];
  if (selectiveSpeechListeningCapability && selectiveSpeechListeningCapability != self->_selectiveSpeechListeningCapability)
  {
    self->_selectiveSpeechListeningCapability = selectiveSpeechListeningCapability;
    v13 |= 0x80000000000uLL;
  }

  selectiveSpeechListeningConfig = [deviceCopy selectiveSpeechListeningConfig];
  if (selectiveSpeechListeningConfig)
  {
    v277 = selectiveSpeechListeningConfig;
    if (selectiveSpeechListeningConfig != [(CBDevice *)self selectiveSpeechListeningConfig])
    {
      [(CBDevice *)self setSelectiveSpeechListeningConfig:v277];
      v13 |= 0x80000000000uLL;
    }
  }

  hearingAidSupport = [deviceCopy hearingAidSupport];
  if (hearingAidSupport && self->_hearingAidSupport != hearingAidSupport)
  {
    self->_hearingAidSupport = hearingAidSupport;
    v13 |= 0x80000000000uLL;
  }

  hearingTestSupport = [deviceCopy hearingTestSupport];
  if (hearingTestSupport && self->_hearingTestSupport != hearingTestSupport)
  {
    self->_hearingTestSupport = hearingTestSupport;
    v13 |= 0x80000000000uLL;
  }

  serialNumber = [deviceCopy serialNumber];
  if ([serialNumber length])
  {
    serialNumber = self->_serialNumber;
    v282 = serialNumber;
    v283 = serialNumber;
    if (v282 == v283)
    {
    }

    else
    {
      if ((v282 != 0) == (v283 == 0))
      {

        goto LABEL_428;
      }

      v284 = v283;
      v285 = [(NSString *)v282 isEqual:v283];

      if ((v285 & 1) == 0)
      {
LABEL_428:
        objc_storeStrong(&self->_serialNumber, serialNumber);
        v13 |= 0x80000000000uLL;
        serialNumberLeft = [deviceCopy serialNumberLeft];
        if (![serialNumberLeft length])
        {
          goto LABEL_436;
        }

        goto LABEL_429;
      }
    }
  }

  serialNumberLeft = [deviceCopy serialNumberLeft];
  if (![serialNumberLeft length])
  {
    goto LABEL_436;
  }

LABEL_429:
  serialNumberLeft = self->_serialNumberLeft;
  v288 = serialNumberLeft;
  v289 = serialNumberLeft;
  if (v288 == v289)
  {

    goto LABEL_436;
  }

  if ((v288 != 0) == (v289 == 0))
  {

    goto LABEL_435;
  }

  v290 = v289;
  v291 = [(NSString *)v288 isEqual:v289];

  if ((v291 & 1) == 0)
  {
LABEL_435:
    objc_storeStrong(&self->_serialNumberLeft, serialNumberLeft);
    v13 |= 0x80000000000uLL;
  }

LABEL_436:
  serialNumberRight = [deviceCopy serialNumberRight];
  v364 = serialNumberRight;
  if (![serialNumberRight length])
  {
    goto LABEL_442;
  }

  serialNumberRight = self->_serialNumberRight;
  v294 = serialNumberRight;
  v295 = serialNumberRight;
  if (v294 == v295)
  {

    goto LABEL_442;
  }

  if ((v294 != 0) == (v295 == 0))
  {

    goto LABEL_445;
  }

  v296 = v295;
  v297 = [(NSString *)v294 isEqual:v295];

  if (v297)
  {
LABEL_442:
    smartRoutingMode = [deviceCopy smartRoutingMode];
    if (smartRoutingMode)
    {
      goto LABEL_446;
    }

    goto LABEL_448;
  }

LABEL_445:
  objc_storeStrong(&self->_serialNumberRight, v364);
  v13 |= 0x80000000000uLL;
  smartRoutingMode = [deviceCopy smartRoutingMode];
  if (smartRoutingMode)
  {
LABEL_446:
    if (self->_smartRoutingMode != smartRoutingMode)
    {
      self->_smartRoutingMode = smartRoutingMode;
      v13 |= 0x80000000000uLL;
    }
  }

LABEL_448:
  v338 = safetyAlertsSegmentServiceData;
  if (v373)
  {
    spatialAudioMode = [deviceCopy spatialAudioMode];
    if (spatialAudioMode != [(CBDevice *)self spatialAudioMode])
    {
      [(CBDevice *)self setSpatialAudioMode:spatialAudioMode];
      v13 |= 0x80000000000uLL;
    }

    supportedServices = [deviceCopy supportedServices];
    if (supportedServices != self->_supportedServices)
    {
      self->_supportedServices = supportedServices;
      v13 |= 0x80000200000uLL;
    }
  }

  txAddressData = [deviceCopy txAddressData];
  v302 = txAddressData;
  if (!txAddressData)
  {
    goto LABEL_459;
  }

  txAddressData = self->_txAddressData;
  v304 = txAddressData;
  v305 = txAddressData;
  v306 = v305;
  if (v304 == v305)
  {

    goto LABEL_459;
  }

  if (!v305)
  {

    goto LABEL_462;
  }

  v307 = [(NSData *)v304 isEqual:v305];

  if (v307)
  {
LABEL_459:
    vendorID = [deviceCopy vendorID];
    if (!vendorID)
    {
      goto LABEL_465;
    }

    goto LABEL_463;
  }

LABEL_462:
  objc_storeStrong(&self->_txAddressData, v302);
  v13 |= 0x80000000000uLL;
  vendorID = [deviceCopy vendorID];
  if (!vendorID)
  {
    goto LABEL_465;
  }

LABEL_463:
  if (vendorID != self->_vendorID)
  {
    self->_vendorID = vendorID;
    v13 |= 0x80000000000uLL;
  }

LABEL_465:
  vendorIDSource = [deviceCopy vendorIDSource];
  vendorIDSource = self->_vendorIDSource;
  if (!vendorIDSource)
  {
    vendorIDSource = self->_vendorIDSource;
    v336 = serialNumberLeft;
    if (vendorIDSource != 1)
    {
      goto LABEL_469;
    }

LABEL_472:
    v311 = 76;
LABEL_473:
    v312 = self->_vendorID == v311;
    proximityPairingProductID = [(CBDevice *)self productID:v336];
    if (proximityPairingProductID)
    {
      goto LABEL_474;
    }

    goto LABEL_481;
  }

  if (vendorIDSource != vendorIDSource)
  {
    self->_vendorIDSource = vendorIDSource;
    v13 |= 0x80000000000uLL;
  }

  v336 = serialNumberLeft;
  if (vendorIDSource == 1)
  {
    goto LABEL_472;
  }

LABEL_469:
  if (vendorIDSource == 2)
  {
    v311 = 1452;
    goto LABEL_473;
  }

  v312 = 0;
  proximityPairingProductID = [(CBDevice *)self productID:v336];
  if (proximityPairingProductID)
  {
LABEL_474:
    v374 = serialNumber;
    if (proximityPairingProductID != 0 && v312)
    {
      goto LABEL_475;
    }

LABEL_482:
    v320 = CBDeviceTypeToNSLocalizedString(self->_deviceType);
    if (!v312)
    {
      goto LABEL_495;
    }

    goto LABEL_489;
  }

LABEL_481:
  proximityPairingProductID = [(CBDevice *)self proximityPairingProductID];
  v374 = serialNumber;
  if (proximityPairingProductID == 0 || !v312)
  {
    goto LABEL_482;
  }

LABEL_475:
  v314 = [CBProductInfo productInfoWithProductID:proximityPairingProductID];
  productName = [v314 productName];

  if (!productName)
  {
    goto LABEL_485;
  }

  v316 = self->_productName;
  v317 = productName;
  v318 = v317;
  if (v316 == v317)
  {

    goto LABEL_485;
  }

  if (!v316)
  {

LABEL_488:
    objc_storeStrong(&self->_productName, productName);
    v13 |= 0x80000000000uLL;

    v320 = CBDeviceTypeToNSLocalizedString(self->_deviceType);
    if (!v312)
    {
      goto LABEL_495;
    }

    goto LABEL_489;
  }

  v319 = [(NSString *)v316 isEqual:v317];

  if ((v319 & 1) == 0)
  {
    goto LABEL_488;
  }

LABEL_485:

  v320 = CBDeviceTypeToNSLocalizedString(self->_deviceType);
  if (!v312)
  {
    goto LABEL_495;
  }

LABEL_489:
  v321 = self->_name;
  if (!v321 || [(NSString *)v321 isEqualToString:v320])
  {
    v322 = CBProductIDToNSLocalizedProductNameString(proximityPairingProductID);
    v324 = v352;
    v323 = v353;
    if (v322)
    {
      objc_storeStrong(&self->_name, v322);
      v13 |= 0x80000000000uLL;
    }

    p_name = &self->_name;
    v326 = v372;
    if (!self->_name)
    {
      goto LABEL_496;
    }

    goto LABEL_497;
  }

LABEL_495:
  v324 = v352;
  v323 = v353;
  p_name = &self->_name;
  v326 = v372;
  if (!self->_name)
  {
LABEL_496:
    objc_storeStrong(p_name, v320);
    v326 = v372;
    v13 |= 0x80000000000uLL;
  }

LABEL_497:
  v327 = [v326 length];
  if (v327)
  {
    v327 = [(NSString *)*p_name isEqualToString:v320];
    if (v327)
    {
      objc_storeStrong(p_name, v372);
      objc_storeStrong(&self->_leAdvName, v372);
      v13 |= 0x80000000000uLL;
    }
  }

  if ((v13 & 0x40000000) == 0)
  {
    if ((v355 & 2) != 0)
    {
      goto LABEL_502;
    }

LABEL_507:
    if ((*([deviceCopy discoveryTypesInternalPtr] + 3) & 0x20) == 0)
    {
      goto LABEL_510;
    }

    goto LABEL_508;
  }

  self->_discoveryFlags &= 0x8305793BCEB00040;
  v375 = *self->_discoveryTypesInternal.bitArray;
  v376 = *&self->_discoveryTypesInternal.bitArray[4];
  v329 = CBDiscoveryTypesBLEScan(v327, v328);
  CBDiscoveryTypesRemoveTypes(self->_discoveryTypesInternal.bitArray, v329);
  bytes2 = [v324 bytes];
  if (bytes2)
  {
    -[CBDevice _parseManufacturerPtr:end:](self, "_parseManufacturerPtr:end:", bytes2, bytes2 + [v324 length]);
  }

  CBDiscoveryTypesAddChangedTypes(self->_changedTypesInternal.bitArray, &v375, self->_discoveryTypesInternal.bitArray);
  v371 = 1;
  if ((v355 & 2) == 0)
  {
    goto LABEL_507;
  }

LABEL_502:
  self->_discoveryFlags = self->_discoveryFlags & 0xFFFDFFFFFFFFFFFFLL | ((([deviceCopy discoveryFlags] >> 49) & 1) << 49);
  self->_discoveryFlags = ((v369 != 0) << 51) | ((v368 != 0) << 54) | self->_discoveryFlags & 0xFFB7FFFF9FFFFFFFLL | [deviceCopy discoveryFlags] & 0x20000000 | v13 & 0x40000000;
  self->_discoveryTypesInternal.bitArray[1] = self->_discoveryTypesInternal.bitArray[1] & 0xEF | (16 * (dockKitAccessoryPayloadData != 0));
  if ((*([deviceCopy discoveryTypesInternalPtr] + 3) & 0x20) == 0)
  {
    goto LABEL_510;
  }

LABEL_508:
  if ((self->_discoveryTypesInternal.bitArray[3] & 0x20) == 0)
  {
    self->_discoveryTypesInternal.bitArray[3] |= 0x20u;
    self->_changedTypesInternal.bitArray[3] |= 0x20u;
  }

LABEL_510:
  if (v371)
  {
    [(CBDevice *)self _clearUnparsedProperties];
  }

  if ((self->_internalFlags & 0x800) != 0)
  {
    self->_discoveryTypesInternal.bitArray[3] |= 0x80u;
  }

  v331 = self->_discoveryFlags;
  v332 = v13 | 0x800000000;
  if (v331 == v357)
  {
    v332 = v13;
  }

  v333 = self->_changeFlags;
  v334 = v333 ^ changeFlags | v331 ^ v357 | v332;
  self->_changeFlags = v334 | v333;

  return v334;
}

- (void)updateWithCBDeviceIdentity:(id)identity
{
  identityCopy = identity;
  v22 = identityCopy;
  if (self->_accountID)
  {
    v5 = 0;
    p_contactID = &self->_contactID;
    if (self->_contactID)
    {
      goto LABEL_3;
    }
  }

  else
  {
    accountID = [identityCopy accountID];
    v5 = accountID != 0;
    if (accountID)
    {
      objc_storeStrong(&self->_accountID, accountID);
    }

    identityCopy = v22;
    p_contactID = &self->_contactID;
    if (self->_contactID)
    {
LABEL_3:
      deviceFlags = self->_deviceFlags;
      type = [identityCopy type];
      v9 = self->_deviceFlags;
      v10 = type - 2;
      if ((type - 2) > 5)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  contactID = [identityCopy contactID];
  if (contactID)
  {
    objc_storeStrong(p_contactID, contactID);
    v5 = 1;
  }

  deviceFlags = self->_deviceFlags;
  type2 = [v22 type];
  v9 = self->_deviceFlags;
  v10 = type2 - 2;
  if ((type2 - 2) > 5)
  {
LABEL_4:
    if (((v9 ^ deviceFlags) & 0xF80) != 0)
    {
      v5 = 1;
    }

    p_idsDeviceID = &self->_idsDeviceID;
    if (self->_idsDeviceID)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_16:
  v19 = v9 | qword_1C0B84C88[v10];
  self->_deviceFlags = v19;
  if (((v19 ^ deviceFlags) & 0xF80) != 0)
  {
    v5 = 1;
  }

  p_idsDeviceID = &self->_idsDeviceID;
  if (self->_idsDeviceID)
  {
LABEL_7:
    v12 = v22;
    p_model = &self->_model;
    if (self->_model)
    {
      goto LABEL_8;
    }

LABEL_22:
    model = [v12 model];
    if (model)
    {
      objc_storeStrong(p_model, model);
      self->_attributeInternalFlags |= 1u;
      v5 = 1;
    }

    name = [v22 name];
    if (name)
    {
      goto LABEL_9;
    }

LABEL_25:
    if (!v5)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_19:
  idsDeviceID = [v22 idsDeviceID];
  if (idsDeviceID)
  {
    objc_storeStrong(p_idsDeviceID, idsDeviceID);
    v5 = 1;
  }

  v12 = v22;
  p_model = &self->_model;
  if (!self->_model)
  {
    goto LABEL_22;
  }

LABEL_8:
  name = [v12 name];
  if (!name)
  {
    goto LABEL_25;
  }

LABEL_9:
  name = self->_name;
  self->_name = name;

LABEL_26:
  self->_attributeInternalFlags |= 2u;
LABEL_27:
}

- (unsigned)updateWithCBPowerSource:(id)source
{
  v35 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  v5 = sourceCopy;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  if (!self->_identifier)
  {
    accessoryID = [sourceCopy accessoryID];
    identifier = self->_identifier;
    self->_identifier = accessoryID;
  }

  if ([v5 partID] == 1)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    components = [v5 components];
    allValues = [components allValues];

    v10 = [allValues countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v10)
    {
      v11 = *v27;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(allValues);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          partID = [v13 partID];
          batteryInfo = [v13 batteryInfo];
          v16 = batteryInfo;
          if (partID == 2)
          {
            if (batteryInfo && batteryInfo != [(CBDevice *)self batteryInfoLeft])
            {
              if (![(CBDevice *)self batteryInfoLeft])
              {
                *(v31 + 6) |= 8u;
              }

              [(CBDevice *)self setBatteryInfoLeft:v16];
              goto LABEL_8;
            }
          }

          else if (partID == 3)
          {
            if (batteryInfo && batteryInfo != [(CBDevice *)self batteryInfoRight])
            {
              if (![(CBDevice *)self batteryInfoRight])
              {
                *(v31 + 6) |= 8u;
              }

              [(CBDevice *)self setBatteryInfoRight:v16];
              goto LABEL_8;
            }
          }

          else
          {
            v17 = partID != 4 || batteryInfo == 0;
            if (!v17 && batteryInfo != [(CBDevice *)self batteryInfoCase])
            {
              if (![(CBDevice *)self batteryInfoCase])
              {
                *(v31 + 6) |= 8u;
              }

              [(CBDevice *)self setBatteryInfoCase:v16];
LABEL_8:
              *(v31 + 6) |= 6u;
              continue;
            }
          }
        }

        v10 = [allValues countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v10);
    }

    if ([(CBDevice *)self batteryInfoMain])
    {
      [(CBDevice *)self setBatteryInfoMain:0];
      *(v31 + 6) |= 4u;
    }
  }

  else
  {
    batteryInfo2 = [v5 batteryInfo];
    if (batteryInfo2 && batteryInfo2 != [(CBDevice *)self batteryInfoMain])
    {
      if (![(CBDevice *)self batteryInfoMain])
      {
        *(v31 + 6) |= 8u;
      }

      [(CBDevice *)self setBatteryInfoMain:batteryInfo2];
      *(v31 + 6) |= 2u;
      transportType = [v5 transportType];
      if (transportType == @"USB" || (v20 = transportType) != 0 && (v21 = [(__CFString *)transportType isEqual:@"USB"], v20, v20, v21))
      {
        [(CBDevice *)self setDeviceFlags:[(CBDevice *)self deviceFlags]| 0x100000];
      }
    }

    components2 = [v5 components];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __36__CBDevice_updateWithCBPowerSource___block_invoke;
    v25[3] = &unk_1E8121578;
    v25[4] = self;
    v25[5] = &v30;
    [components2 enumerateKeysAndObjectsUsingBlock:v25];
  }

  self->_internalFlags |= 0x8000u;
  v23 = *(v31 + 6);
  _Block_object_dispose(&v30, 8);

  return v23;
}

void __36__CBDevice_updateWithCBPowerSource___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  v5 = [a2 unsignedIntValue];
  if (v5 == 4)
  {
    if (![v6 batteryInfo])
    {
      goto LABEL_11;
    }

    [*(a1 + 32) setBatteryInfoCase:0];
    goto LABEL_10;
  }

  if (v5 == 3)
  {
    if (![v6 batteryInfo])
    {
      goto LABEL_11;
    }

    [*(a1 + 32) setBatteryInfoRight:0];
    goto LABEL_10;
  }

  if (v5 == 2 && [v6 batteryInfo])
  {
    [*(a1 + 32) setBatteryInfoLeft:0];
LABEL_10:
    *(*(*(a1 + 40) + 8) + 24) |= 4u;
  }

LABEL_11:
}

- (unint64_t)updateWithPowerSourceDescription:(id)description
{
  descriptionCopy = description;
  CFDictionaryGetDouble();
  v6 = v5;
  CFDictionaryGetDouble();
  v8 = 0.0;
  if (v7 > 0.0)
  {
    v8 = v6 / v7 * 100.0;
  }

  v9 = 100.0;
  if (v8 <= 100.0)
  {
    v9 = v8;
  }

  if (v9 >= 0.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0.0;
  }

  if (CFDictionaryGetInt64())
  {
    v11 = 768;
  }

  else
  {
    Int64 = CFDictionaryGetInt64();
    if (v10 > 0.0)
    {
      v13 = 512;
    }

    else
    {
      v13 = 0;
    }

    if (Int64)
    {
      v11 = 256;
    }

    else
    {
      v11 = v13;
    }
  }

  v14 = v10;
  if (v10 >= 100)
  {
    v14 = 100;
  }

  v15 = v11 | v14 & ~(v14 >> 31);
  if ([(CBDevice *)self batteryInfoMain]== v15)
  {
    v16 = 0;
  }

  else
  {
    [(CBDevice *)self setBatteryInfoMain:v15];
    v16 = 0x80000000000;
  }

  return v16;
}

- (void)updateWithReceivedAuthTag:(id)tag forType:(unsigned __int8)type
{
  typeCopy = type;
  tagCopy = tag;
  if (tagCopy)
  {
    if (typeCopy == 21)
    {
      nearbyActionV2TargetData = [(CBDevice *)self nearbyActionV2TargetData];
      v7 = [nearbyActionV2TargetData length];

      if (v7)
      {
        nearbyActionV2TargetData2 = [(CBDevice *)self nearbyActionV2TargetData];
        v9 = tagCopy;
        v10 = nearbyActionV2TargetData2;
        v11 = v10;
        if (v10 == v9)
        {

          goto LABEL_11;
        }

        if (v10)
        {
          v12 = [v9 isEqual:v10];

          if (v12)
          {
            goto LABEL_11;
          }
        }

        else
        {
        }

        [(CBDevice *)self setNearbyActionV2Flags:0];
        [(CBDevice *)self setNearbyActionV2Type:0];
        [(CBDevice *)self setNearbyActionV2TargetData:0];
        self->_discoveryFlags &= 0xDFFFFFFBFFFDFEF7;
        self->_changeFlags &= 0xDFFFFFFBFFFDFEF7;
      }
    }
  }

LABEL_11:
}

- (void)updateWithRPIdentity:(id)identity
{
  identityCopy = identity;
  v20 = identityCopy;
  if (self->_accountID)
  {
    v5 = 0;
    p_contactID = &self->_contactID;
    if (self->_contactID)
    {
      goto LABEL_3;
    }
  }

  else
  {
    accountID = [identityCopy accountID];
    v5 = accountID != 0;
    if (accountID)
    {
      objc_storeStrong(&self->_accountID, accountID);
    }

    identityCopy = v20;
    p_contactID = &self->_contactID;
    if (self->_contactID)
    {
LABEL_3:
      deviceFlags = self->_deviceFlags;
      type = [identityCopy type];
      v9 = self->_deviceFlags;
      v10 = type - 2;
      if ((type - 2) > 0xD)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }
  }

  contactID = [identityCopy contactID];
  if (contactID)
  {
    objc_storeStrong(p_contactID, contactID);
    v5 = 1;
  }

  deviceFlags = self->_deviceFlags;
  type2 = [v20 type];
  v9 = self->_deviceFlags;
  v10 = type2 - 2;
  if ((type2 - 2) <= 0xD)
  {
LABEL_11:
    if ((0x20D5u >> v10))
    {
      v9 |= qword_1C0B84CB8[v10];
      self->_deviceFlags = v9;
    }
  }

LABEL_13:
  if (((v9 ^ deviceFlags) & 0xF80) != 0)
  {
    v5 = 1;
  }

  v14 = v20;
  if (self->_idsDeviceID)
  {
    p_model = &self->_model;
    if (self->_model)
    {
      goto LABEL_17;
    }

LABEL_22:
    model = [v14 model];
    if (model)
    {
      objc_storeStrong(p_model, model);
      self->_attributeInternalFlags |= 1u;
      v5 = 1;
    }

    name = [v20 name];
    if (name)
    {
      goto LABEL_18;
    }

LABEL_25:
    if (!v5)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  idsDeviceID = [v20 idsDeviceID];
  if (idsDeviceID)
  {
    objc_storeStrong(&self->_idsDeviceID, idsDeviceID);
    v5 = 1;
  }

  v14 = v20;
  p_model = &self->_model;
  if (!self->_model)
  {
    goto LABEL_22;
  }

LABEL_17:
  name = [v14 name];
  if (!name)
  {
    goto LABEL_25;
  }

LABEL_18:
  name = self->_name;
  self->_name = name;

LABEL_26:
  self->_attributeInternalFlags |= 2u;
LABEL_27:
}

- (void)updateWithSafetyAlertsSegments:(id)segments error:(id *)error
{
  segmentsCopy = segments;
  v6 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v7 = objc_alloc_init(MEMORY[0x1E695DF88]);
  safetyAlertsSegmentSegmentsTotal = self->_safetyAlertsSegmentSegmentsTotal;
  if (self->_safetyAlertsSegmentSegmentsTotal)
  {
    safetyAlertsVersion = self->_safetyAlertsVersion;
    v10 = 1;
    while (1)
    {
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v10];
      v12 = [segmentsCopy objectForKeyedSubscript:v11];

      if (!v12)
      {
        break;
      }

      if ([v12 safetyAlertsSegmentSegmentsTotal] != safetyAlertsSegmentSegmentsTotal)
      {
        if (!error)
        {
          goto LABEL_21;
        }

        v44 = "Invalid value";
        v45 = -6737;
LABEL_19:
        CBErrorF(v45, v44, v19, v20, v21, v22, v23, v24, v46);
        goto LABEL_20;
      }

      if ([v12 safetyAlertsVersion] != safetyAlertsVersion)
      {
        if (!error)
        {
          goto LABEL_21;
        }

        v44 = "Invalid version";
        v45 = -6715;
        goto LABEL_19;
      }

      safetyAlertsSegmentAlertData = [v12 safetyAlertsSegmentAlertData];
      [v6 appendData:safetyAlertsSegmentAlertData];

      safetyAlertsSegmentSignature = [v12 safetyAlertsSegmentSignature];
      [v7 appendData:safetyAlertsSegmentSignature];

      if (safetyAlertsSegmentSegmentsTotal < ++v10)
      {
        goto LABEL_7;
      }
    }

    if (!error)
    {
      goto LABEL_21;
    }

    CBErrorF(-6727, "Segment %d/%d not found", v13, v14, v15, v16, v17, v18, v10);
    *error = LABEL_20:;
LABEL_21:
  }

  else
  {
LABEL_7:
    if ([v6 length] >= 0x1D)
    {
      [(CBDevice *)error updateWithSafetyAlertsSegments:v27 error:v28, v29, v30, v31, v32, v33];
    }

    else if ([v7 length] == 56)
    {
      objc_storeStrong(&self->_safetyAlertsAlertData, v6);
      objc_storeStrong(&self->_safetyAlertsSignature, v7);
      self->_internalFlags &= ~0x4000u;
      safetyAlertsSegmentAlertData = self->_safetyAlertsSegmentAlertData;
      self->_safetyAlertsSegmentAlertData = 0;

      *&self->_safetyAlertsSegmentSegmentNumber = 0;
      safetyAlertsSegmentServiceData = self->_safetyAlertsSegmentServiceData;
      self->_safetyAlertsSegmentServiceData = 0;

      safetyAlertsSegmentSignature = self->_safetyAlertsSegmentSignature;
      self->_safetyAlertsSegmentSignature = 0;
    }

    else
    {
      [(CBDevice *)error updateWithSafetyAlertsSegments:v34 error:v35, v36, v37, v38, v39, v40];
    }
  }
}

- (void)_parseAirPlaySourcePtr:(const char *)ptr end:(const char *)end
{
  ptrCopy = ptr;
  v7 = end - ptr;
  v8 = end - ptr > 0;
  if (end - ptr >= 1)
  {
    ptrCopy = ptr + 1;
    v9 = *ptr;
    if (v9 == [(CBDevice *)self airplaySourceFlags])
    {
      goto LABEL_3;
    }

LABEL_10:
    [(CBDevice *)self setAirplaySourceFlags:v9];
    v10 = 0x4000000000;
    if ((v9 & 8) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = 0;
  if ([(CBDevice *)self airplaySourceFlags])
  {
    goto LABEL_10;
  }

LABEL_3:
  v10 = 0;
  if ((v9 & 8) != 0)
  {
LABEL_4:
    v23 = 0;
    v8 = 0;
    if (v7 >= 1 && end - ptrCopy >= 1)
    {
      v8 = 1;
      v23 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:ptrCopy++ length:1];
    }

    if ((v9 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

LABEL_11:
  v23 = 0;
  if ((v9 & 0x10) == 0)
  {
    goto LABEL_18;
  }

LABEL_12:
  if (end - ptrCopy > 2 && v8)
  {
    v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:ptrCopy length:3];
    if ((v9 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

LABEL_18:
  v12 = 0;
  if ((v9 & 8) == 0)
  {
    goto LABEL_25;
  }

LABEL_19:
  airplaySourceUWBConfigData = [(CBDevice *)self airplaySourceUWBConfigData];
  v14 = v23;
  v15 = airplaySourceUWBConfigData;
  v16 = v15;
  if (v14 == v15)
  {

    goto LABEL_25;
  }

  if ((v14 != 0) != (v15 == 0))
  {
    v17 = [v14 isEqual:v15];

    if ((v17 & 1) == 0)
    {
      [(CBDevice *)self setAirplaySourceUWBConfigData:v14];
      v10 = 0x4000000000;
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_35;
      }

LABEL_26:
      airplaySourceAuthTagData = [(CBDevice *)self airplaySourceAuthTagData];
      v19 = v12;
      v20 = airplaySourceAuthTagData;
      v21 = v20;
      if (v19 == v20)
      {

        goto LABEL_35;
      }

      if ((v19 != 0) == (v20 == 0))
      {
      }

      else
      {
        v22 = [v19 isEqual:v20];

        if (v22)
        {
          goto LABEL_35;
        }
      }

      [(CBDevice *)self setAirplaySourceAuthTagData:v19];
      v10 = 0x4000000000;
      goto LABEL_35;
    }

LABEL_25:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_26;
  }

  [(CBDevice *)self setAirplaySourceUWBConfigData:v14];
  v10 = 0x4000000000;
  if ((v9 & 0x10) != 0)
  {
    goto LABEL_26;
  }

LABEL_35:
  self->_discoveryFlags |= 0x4000000000uLL;
  self->_changeFlags |= v10;
}

- (void)_parseAirPlayTargetPtr:(const char *)ptr end:(const char *)end
{
  ptrCopy = ptr;
  v7 = end - ptr;
  if (end - ptr < 1)
  {
    v8 = 0;
    if (![(CBDevice *)self airplayTargetFlags])
    {
LABEL_3:
      v9 = 0;
      v11 = v7 > 0 && end - ptrCopy > 0;
      if (!v11)
      {
        goto LABEL_10;
      }

LABEL_20:
      v14 = *ptrCopy++;
      v12 = v14;
      if (v14 == [(CBDevice *)self airplayTargetConfigSeed])
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

  else
  {
    ptrCopy = ptr + 1;
    v8 = *ptr;
    if (v8 == [(CBDevice *)self airplayTargetFlags])
    {
      goto LABEL_3;
    }
  }

  [(CBDevice *)self setAirplayTargetFlags:v8];
  v9 = 0x8000000000;
  v11 = v7 > 0 && end - ptrCopy > 0;
  if (v11)
  {
    goto LABEL_20;
  }

LABEL_10:
  v12 = 0;
  if ([(CBDevice *)self airplayTargetConfigSeed])
  {
LABEL_21:
    [(CBDevice *)self setAirplayTargetConfigSeed:v12];
    v9 = 0x8000000000;
  }

LABEL_22:
  if (end - ptrCopy <= 3)
  {
    v11 = 0;
  }

  if (!v11)
  {
    v16 = 0;
    if (![(CBDevice *)self airplayTargetIPv4])
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v15 = *ptrCopy;
  ptrCopy += 4;
  v16 = bswap32(v15);
  if (v16 != [(CBDevice *)self airplayTargetIPv4])
  {
LABEL_28:
    [(CBDevice *)self setAirplayTargetIPv4:v16];
    v9 = 0x8000000000;
  }

LABEL_29:
  if ((v11 & ((v8 & 0x10) >> 4)) != 1)
  {
    v18 = 0;
    if (![(CBDevice *)self airplayTargetPort])
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (end - ptrCopy >= 2)
  {
    v17 = *ptrCopy;
    ptrCopy += 2;
    v18 = bswap32(v17) >> 16;
    LOBYTE(v11) = 1;
    if (v18 == [(CBDevice *)self airplayTargetPort])
    {
      goto LABEL_35;
    }

LABEL_34:
    [(CBDevice *)self setAirplayTargetPort:v18];
    v9 = 0x8000000000;
    goto LABEL_35;
  }

  LOBYTE(v11) = 0;
  v18 = 0;
  if ([(CBDevice *)self airplayTargetPort])
  {
    goto LABEL_34;
  }

LABEL_35:
  if (_os_feature_enabled_impl())
  {
    v19 = 0;
    if ((v11 & ((v8 & 0x20) >> 5)) == 1 && end - ptrCopy >= 16)
    {
      v19 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:ptrCopy length:16];
    }

    airplayTargetIPv6 = [(CBDevice *)self airplayTargetIPv6];
    v21 = v19;
    v22 = airplayTargetIPv6;
    v23 = v22;
    if (v21 == v22)
    {
    }

    else
    {
      if ((v21 != 0) != (v22 == 0))
      {
        v24 = [v21 isEqual:v22];

        if (v24)
        {
          goto LABEL_48;
        }
      }

      else
      {
      }

      [(CBDevice *)self setAirplayTargetIPv6:v21];
      v9 |= 0x8000000000uLL;
    }

LABEL_48:
  }

  self->_discoveryFlags |= 0x8000000000uLL;
  self->_changeFlags |= v9;
}

- (void)_parseDSInfoPtr:(const char *)ptr end:(const char *)end
{
  if (end - ptr < 1)
  {
    v5 = 0;
    v6 = 0;
    if (![(CBDevice *)self dsInfoVehicleState])
    {
LABEL_3:
      v7 = 0;
      v8 = (v5 >> 2) & 0xF;
      if (v8 == [(CBDevice *)self dsInfoVehicleConfidence])
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v5 = *ptr;
    v6 = v5 & 3;
    if (v6 == [(CBDevice *)self dsInfoVehicleState])
    {
      goto LABEL_3;
    }
  }

  [(CBDevice *)self setDsInfoVehicleState:v6];
  v7 = 0x800000000000000;
  v8 = (v5 >> 2) & 0xF;
  if (v8 != [(CBDevice *)self dsInfoVehicleConfidence])
  {
LABEL_7:
    [(CBDevice *)self setDsInfoVehicleConfidence:v8];
    v7 = 0x800000000000000;
  }

LABEL_8:
  self->_discoveryFlags |= 0x800000000000000uLL;
  self->_changeFlags |= v7;
}

- (void)_parseHeySiriPtr:(const char *)ptr end:(const char *)end
{
  ptrCopy = ptr;
  v7 = end - ptr;
  if (end - ptr < 2)
  {
    v8 = 0;
    if ([(CBDevice *)self heySiriPerceptualHash])
    {
LABEL_3:
      [(CBDevice *)self setHeySiriPerceptualHash:v8];
      v9 = 0x400000000000000;
      v11 = v7 > 1 && end - ptrCopy > 0;
      if (!v11)
      {
        goto LABEL_10;
      }

LABEL_20:
      v14 = *ptrCopy++;
      v12 = v14;
      if (v14 == [(CBDevice *)self heySiriSNR])
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

  else
  {
    ptrCopy = ptr + 2;
    v8 = bswap32(*ptr) >> 16;
    if (v8 != [(CBDevice *)self heySiriPerceptualHash])
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
  v11 = v7 > 1 && end - ptrCopy > 0;
  if (v11)
  {
    goto LABEL_20;
  }

LABEL_10:
  v12 = 0;
  if ([(CBDevice *)self heySiriSNR])
  {
LABEL_21:
    [(CBDevice *)self setHeySiriSNR:v12];
    v9 = 0x400000000000000;
  }

LABEL_22:
  if (end - ptrCopy <= 0)
  {
    v11 = 0;
  }

  if (!v11)
  {
    v15 = 0;
    if (![(CBDevice *)self heySiriConfidence])
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v16 = *ptrCopy++;
  v15 = v16;
  if (v16 != [(CBDevice *)self heySiriConfidence])
  {
LABEL_28:
    [(CBDevice *)self setHeySiriConfidence:v15];
    v9 = 0x400000000000000;
  }

LABEL_29:
  if (end - ptrCopy <= 1)
  {
    v11 = 0;
  }

  if (!v11)
  {
    v18 = 0;
    if (![(CBDevice *)self heySiriDeviceClass])
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v17 = *ptrCopy;
  ptrCopy += 2;
  v18 = bswap32(v17) >> 16;
  if (v18 != [(CBDevice *)self heySiriDeviceClass])
  {
LABEL_35:
    [(CBDevice *)self setHeySiriDeviceClass:v18];
    v9 = 0x400000000000000;
  }

LABEL_36:
  if (end - ptrCopy <= 0)
  {
    v11 = 0;
  }

  if (!v11)
  {
    v19 = 0;
    if (![(CBDevice *)self heySiriRandom])
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v20 = *ptrCopy++;
  v19 = v20;
  if (v20 != [(CBDevice *)self heySiriRandom])
  {
LABEL_42:
    [(CBDevice *)self setHeySiriRandom:v19];
    v9 |= 0x400000000000000uLL;
  }

LABEL_43:
  if (end - ptrCopy > 0 && v11)
  {
    v22 = *ptrCopy;
    if (v22 == [(CBDevice *)self heySiriProductType])
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  v22 = 0;
  if ([(CBDevice *)self heySiriProductType])
  {
LABEL_50:
    [(CBDevice *)self setHeySiriProductType:v22];
    v9 |= 0x400000000000000uLL;
  }

LABEL_51:
  self->_discoveryFlags |= 0x400000000000000uLL;
  self->_changeFlags |= v9;
}

- (void)_parseHomeKitV1Ptr:(const char *)ptr end:(const char *)end
{
  ptrCopy = ptr;
  v7 = end - ptr;
  if (end - ptr >= 1)
  {
    ptrCopy = ptr + 1;
    v8 = *ptr & 1;
    homeKitV1Flags = [(CBDevice *)self homeKitV1Flags];
    if ((homeKitV1Flags & 0xFE | v8) == homeKitV1Flags)
    {
      goto LABEL_3;
    }

LABEL_12:
    [(CBDevice *)self setHomeKitV1Flags:?];
    v10 = 0x400000;
    v12 = v7 > 0 && end - ptrCopy > 5;
    if (!v12)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

  homeKitV1Flags2 = [(CBDevice *)self homeKitV1Flags];
  if ((homeKitV1Flags2 & 0xFE) != homeKitV1Flags2)
  {
    goto LABEL_12;
  }

LABEL_3:
  v10 = 0;
  v12 = v7 > 0 && end - ptrCopy > 5;
  if (!v12)
  {
LABEL_10:
    v13 = 0;
    goto LABEL_20;
  }

LABEL_19:
  v13 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:ptrCopy length:6];
  ptrCopy += 6;
LABEL_20:
  homeKitV1DeviceIDData = [(CBDevice *)self homeKitV1DeviceIDData];
  v31 = v13;
  v17 = homeKitV1DeviceIDData;
  if (v31 == v17)
  {
  }

  else
  {
    if ((v31 != 0) == (v17 == 0))
    {

      goto LABEL_32;
    }

    v18 = [v31 isEqual:v17];

    if ((v18 & 1) == 0)
    {
LABEL_32:
      [(CBDevice *)self setHomeKitV1DeviceIDData:v31];
      v10 = 0x400000;
      v19 = end - ptrCopy > 1 && v12;
      if (!v19)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    }
  }

  v19 = end - ptrCopy > 1 && v12;
  if (!v19)
  {
LABEL_36:
    v20 = 0;
    if (![(CBDevice *)self homeKitV1Category])
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_29:
  v21 = *ptrCopy;
  ptrCopy += 2;
  v20 = v21;
  if ([(CBDevice *)self homeKitV1Category]!= v21)
  {
LABEL_37:
    [(CBDevice *)self setHomeKitV1Category:v20];
    v10 = 0x400000;
  }

LABEL_38:
  if (end - ptrCopy <= 1)
  {
    v19 = 0;
  }

  if (!v19)
  {
    v22 = 0;
    if (![(CBDevice *)self homeKitV1StateNumber])
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  v23 = *ptrCopy;
  ptrCopy += 2;
  v22 = v23;
  if ([(CBDevice *)self homeKitV1StateNumber]!= v23)
  {
LABEL_44:
    [(CBDevice *)self setHomeKitV1StateNumber:v22];
    v10 = 0x400000;
  }

LABEL_45:
  v24 = end - ptrCopy > 0 && v19;
  if (!v24)
  {
    v25 = 0;
    if (![(CBDevice *)self homeKitV1ConfigurationNumber])
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  v26 = *ptrCopy++;
  v25 = v26;
  if (v26 != [(CBDevice *)self homeKitV1ConfigurationNumber])
  {
LABEL_52:
    [(CBDevice *)self setHomeKitV1ConfigurationNumber:v25];
    v10 |= 0x400000uLL;
  }

LABEL_53:
  if (end - ptrCopy <= 0)
  {
    v24 = 0;
  }

  if (!v24)
  {
    v27 = 0;
    if (![(CBDevice *)self homeKitV1CompatibleVersion])
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  v28 = *ptrCopy++;
  v27 = v28;
  if (v28 != [(CBDevice *)self homeKitV1CompatibleVersion])
  {
LABEL_59:
    [(CBDevice *)self setHomeKitV1CompatibleVersion:v27];
    v10 |= 0x400000uLL;
  }

LABEL_60:
  if (end - ptrCopy <= 3 || !v24)
  {
    v30 = 0;
    if (![(CBDevice *)self homeKitV1SetupHash])
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

  v30 = *ptrCopy;
  if (v30 != [(CBDevice *)self homeKitV1SetupHash])
  {
LABEL_67:
    [(CBDevice *)self setHomeKitV1SetupHash:v30];
    v10 |= 0x400000uLL;
  }

LABEL_68:
  self->_discoveryFlags |= 0x400000uLL;
  self->_changeFlags |= v10;
}

- (void)_parseHomeKitV2Ptr:(const char *)ptr end:(const char *)end
{
  ptrCopy = ptr;
  v7 = end - ptr;
  if (end - ptr < 6)
  {
    v8 = 0;
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:ptr length:6];
    ptrCopy += 6;
  }

  homeKitV2AccessoryIDData = [(CBDevice *)self homeKitV2AccessoryIDData];
  v30 = v8;
  v10 = homeKitV2AccessoryIDData;
  if (v30 == v10)
  {
  }

  else
  {
    if ((v30 != 0) == (v10 == 0))
    {

      goto LABEL_19;
    }

    v11 = [v30 isEqual:v10];

    if ((v11 & 1) == 0)
    {
LABEL_19:
      [(CBDevice *)self setHomeKitV2AccessoryIDData:v30];
      v12 = 0x1000000;
      v14 = v7 > 5 && end - ptrCopy > 1;
      if (!v14)
      {
        goto LABEL_26;
      }

      goto LABEL_16;
    }
  }

  v12 = 0;
  v14 = v7 > 5 && end - ptrCopy > 1;
  if (!v14)
  {
LABEL_26:
    v15 = 0;
    if (![(CBDevice *)self homeKitV2StateNumber])
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_16:
  v16 = *ptrCopy;
  ptrCopy += 2;
  v15 = v16;
  if ([(CBDevice *)self homeKitV2StateNumber]!= v16)
  {
LABEL_27:
    [(CBDevice *)self setHomeKitV2StateNumber:v15];
    v12 = 0x1000000;
  }

LABEL_28:
  if (end - ptrCopy <= 1)
  {
    v14 = 0;
  }

  if (!v14)
  {
    v18 = 0;
    if (![(CBDevice *)self homeKitV2InstanceID])
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v19 = *ptrCopy;
  ptrCopy += 2;
  v18 = v19;
  if ([(CBDevice *)self homeKitV2InstanceID]!= v19)
  {
LABEL_34:
    [(CBDevice *)self setHomeKitV2InstanceID:v18];
    v12 = 0x1000000;
  }

LABEL_35:
  v20 = end - ptrCopy > 7 && v14;
  if (!v20)
  {
    v21 = 0;
    if (![(CBDevice *)self homeKitV2Value])
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v22 = *ptrCopy;
  ptrCopy += 8;
  v21 = v22;
  if (v22 != [(CBDevice *)self homeKitV2Value])
  {
LABEL_42:
    [(CBDevice *)self setHomeKitV2Value:v21];
    v12 = 0x1000000;
  }

LABEL_43:
  if (end - ptrCopy > 3 && v20)
  {
    v24 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:ptrCopy length:4];
  }

  else
  {
    v24 = 0;
  }

  homeKitV2AuthTagData = [(CBDevice *)self homeKitV2AuthTagData];
  v26 = v24;
  v27 = homeKitV2AuthTagData;
  v28 = v27;
  if (v26 == v27)
  {

    goto LABEL_56;
  }

  if ((v26 != 0) == (v27 == 0))
  {

    goto LABEL_55;
  }

  v29 = [v26 isEqual:v27];

  if ((v29 & 1) == 0)
  {
LABEL_55:
    [(CBDevice *)self setHomeKitV2AuthTagData:v26];
    v12 |= 0x1000000uLL;
  }

LABEL_56:
  self->_discoveryFlags |= 0x1000000uLL;
  self->_changeFlags |= v12;
}

- (void)_parseNearbyActionPtr:(const char *)ptr end:(const char *)end
{
  if (end - ptr < 1)
  {
    v10 = 0;
    v52 = 0uLL;
    v51 = 0;
    v11 = 0;
    v5 = 0;
    v9 = 0;
    v53 = 0;
    v54 = 0;
    v12 = 1;
LABEL_6:
    v13 = 0x80000;
    goto LABEL_7;
  }

  v6 = ptr + 1;
  v5 = *ptr;
  v7 = end - (ptr + 1);
  v8 = v7 > 0;
  if (v7 < 1)
  {
    v9 = 0;
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_4;
    }

LABEL_29:
    v54 = 0;
    v8 = 0;
    if (v7 >= 1 && end - v6 >= 3)
    {
      endCopy = end;
      v26 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v6 length:3];
      end = endCopy;
      v54 = v26;
      v6 += 3;
      v8 = 1;
    }

    goto LABEL_32;
  }

  v6 = ptr + 2;
  v9 = *(ptr + 1);
  if ((v5 & 0x80) != 0)
  {
    goto LABEL_29;
  }

LABEL_4:
  v54 = 0;
LABEL_32:
  v27 = (v9 - 37);
  if (v27 > 0x3A)
  {
    goto LABEL_81;
  }

  if (((1 << (v9 - 37)) & 0x481000000000581) != 0)
  {
LABEL_34:
    if (end - v6 <= 0)
    {
      v8 = 0;
    }

    if (v8)
    {
      v51 = 0;
      v52 = 0uLL;
      v28 = *v6++;
      v11 = v28 >> 4;
      v8 = 1;
      v12 = (v5 & 0x200) == 0;
      goto LABEL_92;
    }

    goto LABEL_90;
  }

  if (v27 == 17)
  {
    if (end - v6 <= 2)
    {
      v8 = 0;
    }

    if (v8)
    {
      v11 = 0;
      HIDWORD(v52) = 0;
      v51 = *v6;
      LODWORD(v52) = *(v6 + 1);
      *(&v52 + 4) = *(v6 + 2);
      v6 += 3;
      v8 = 1;
      v12 = (v5 & 0x200) == 0;
      goto LABEL_92;
    }

    goto LABEL_90;
  }

  if (v27 != 19)
  {
LABEL_81:
    if (v9 == 5)
    {
      if (v8)
      {
        endCopy2 = end;
        v47 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v6 length:end - v6];
        end = endCopy2;
        *&v52 = 0;
        *(&v52 + 1) = v47;
        v11 = 0;
        v51 = 0;
        v8 = 1;
        v6 = endCopy2;
        v12 = (v5 & 0x200) == 0;
        goto LABEL_92;
      }

      goto LABEL_91;
    }

    if (v9 != 2)
    {
LABEL_91:
      v11 = 0;
      v51 = 0;
      v52 = 0uLL;
      v12 = (v5 & 0x200) == 0;
      goto LABEL_92;
    }

    goto LABEL_34;
  }

  if (end - v6 <= 0)
  {
    v8 = 0;
  }

  if (!v8)
  {
LABEL_90:
    v8 = 0;
    goto LABEL_91;
  }

  v11 = 0;
  v51 = 0;
  v52 = 0uLL;
  v45 = *v6++;
  v5 = v5 | (v45 << 8);
  v12 = (v5 & 0x200) == 0;
  if ((v5 & 0x200) != 0)
  {
    if (end - v6 <= 2)
    {
      v53 = 0;
      v10 = 0;
      goto LABEL_95;
    }

    endCopy3 = end;
    v30 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v6 length:3];
    end = endCopy3;
    v53 = v30;
    v6 += 3;
    goto LABEL_93;
  }

LABEL_92:
  v53 = 0;
  v10 = 0;
  if (!v8)
  {
    goto LABEL_95;
  }

LABEL_93:
  if (end - v6 >= 1)
  {
    v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v6 length:end - v6];
    if (v9 <= 0x5F)
    {
      goto LABEL_95;
    }

    goto LABEL_98;
  }

  v10 = 0;
  if (v9 > 0x5F)
  {
LABEL_98:
    if ("AirDrop")
    {
      v48 = &off_1E811F518;
      v13 = 0x80000;
      while (*(v48 - 8) != v9)
      {
        v49 = *v48;
        v48 += 3;
        if (!v49)
        {
          goto LABEL_7;
        }
      }

      v50 = *(v48 - 4);
      if ((v50 - 45) >= 0xFFFFFFD4)
      {
        self->_discoveryTypesInternal.bitArray[(v50 - 1) >> 3] |= 1 << (-v50 & 7);
      }
    }

    goto LABEL_6;
  }

LABEL_95:
  v13 = 0x80000;
  switch(v9)
  {
    case 0:
      break;
    case 1:
      v13 = 524290;
      break;
    case 2:
      v13 = 0x4000000000080000;
      break;
    case 5:
      v13 = 0x20000000080000;
      break;
    case 8:
      v13 = 532480;
      break;
    case 9:
      v13 = 524320;
      break;
    case 10:
      v13 = 524800;
      break;
    case 11:
      v13 = 524304;
      break;
    case 12:
      v13 = 524289;
      break;
    case 13:
      v13 = 528384;
      break;
    case 25:
      v13 = 526336;
      break;
    case 27:
      v13 = 525312;
      break;
    case 28:
      v13 = 524292;
      break;
    case 34:
      v13 = 268959744;
      break;
    case 37:
      v13 = 0x800000080000;
      break;
    case 39:
      v13 = 0x10000000080000;
      break;
    case 44:
      self->_discoveryTypesInternal.bitArray[0] |= 0x40u;
      v9 = 44;
      goto LABEL_6;
    case 45:
      self->_discoveryTypesInternal.bitArray[0] |= 8u;
      v9 = 45;
      goto LABEL_6;
    case 46:
      self->_discoveryTypesInternal.bitArray[0] |= 1u;
      v9 = 46;
      goto LABEL_6;
    case 47:
      self->_discoveryTypesInternal.bitArray[1] |= 8u;
      v9 = 47;
      goto LABEL_6;
    case 48:
      self->_discoveryTypesInternal.bitArray[1] |= 0x80u;
      v9 = 48;
      goto LABEL_6;
    case 54:
      v13 = 0x1000000000080000;
      break;
    case 55:
      self->_discoveryTypesInternal.bitArray[0] |= 4u;
      v9 = 55;
      goto LABEL_6;
    case 56:
      self->_discoveryTypesInternal.bitArray[1] |= 0x40u;
      v9 = 56;
      goto LABEL_6;
    case 83:
      self->_discoveryTypesInternal.bitArray[2] |= 4u;
      v9 = 83;
      goto LABEL_6;
    case 95:
      self->_discoveryTypesInternal.bitArray[5] |= 0x20u;
      v9 = 95;
      goto LABEL_6;
    default:
      goto LABEL_98;
  }

LABEL_7:
  if ([(CBDevice *)self nearbyActionColorCode])
  {
    [(CBDevice *)self setNearbyActionColorCode:0];
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  nearbyActionExtraData = [(CBDevice *)self nearbyActionExtraData];
  v16 = v10;
  v17 = nearbyActionExtraData;
  v18 = v17;
  if (v16 == v17)
  {

    if (v5 != [(CBDevice *)self nearbyActionFlags])
    {
      goto LABEL_21;
    }

LABEL_14:
    if (v9 == [(CBDevice *)self nearbyActionType])
    {
      goto LABEL_15;
    }

LABEL_22:
    [(CBDevice *)self setNearbyActionType:v9];
    v14 = v13;
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_23;
  }

  if ((v16 != 0) == (v17 == 0))
  {

LABEL_20:
    [(CBDevice *)self setNearbyActionExtraData:v16];
    v14 = v13;
    if (v5 != [(CBDevice *)self nearbyActionFlags])
    {
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  v19 = [v16 isEqual:v17];

  if ((v19 & 1) == 0)
  {
    goto LABEL_20;
  }

  if (v5 == [(CBDevice *)self nearbyActionFlags])
  {
    goto LABEL_14;
  }

LABEL_21:
  [(CBDevice *)self setNearbyActionFlags:v5];
  v14 = v13;
  if (v9 != [(CBDevice *)self nearbyActionType])
  {
    goto LABEL_22;
  }

LABEL_15:
  if ((v5 & 0x80) == 0)
  {
LABEL_41:
    if (v12)
    {
      goto LABEL_49;
    }

    goto LABEL_42;
  }

LABEL_23:
  nearbyActionAuthTag = [(CBDevice *)self nearbyActionAuthTag];
  v21 = v54;
  v22 = nearbyActionAuthTag;
  v23 = v22;
  if (v21 == v22)
  {

    goto LABEL_41;
  }

  if ((v21 != 0) == (v22 == 0))
  {

    [(CBDevice *)self setNearbyActionAuthTag:v21];
    v14 |= v13;
    if (v12)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v24 = [v21 isEqual:v22];

    if (v24)
    {
      goto LABEL_41;
    }

    [(CBDevice *)self setNearbyActionAuthTag:v21];
    v14 |= v13;
    if (v12)
    {
      goto LABEL_49;
    }
  }

LABEL_42:
  nearbyActionTargetAuthTag = [(CBDevice *)self nearbyActionTargetAuthTag];
  v32 = v53;
  v33 = nearbyActionTargetAuthTag;
  v34 = v33;
  if (v32 == v33)
  {

    if (v11 != [(CBDevice *)self nearbyActionDeviceClass])
    {
      goto LABEL_70;
    }

    goto LABEL_50;
  }

  if ((v32 != 0) == (v33 == 0))
  {

LABEL_69:
    [(CBDevice *)self setNearbyActionTargetAuthTag:v32];
    v14 |= v13;
    if (v11 != [(CBDevice *)self nearbyActionDeviceClass])
    {
      goto LABEL_70;
    }

LABEL_50:
    if (v51 == [(CBDevice *)self dsActionFlags])
    {
      goto LABEL_51;
    }

    goto LABEL_71;
  }

  v35 = [v32 isEqual:v33];

  if ((v35 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_49:
  if (v11 == [(CBDevice *)self nearbyActionDeviceClass])
  {
    goto LABEL_50;
  }

LABEL_70:
  [(CBDevice *)self setNearbyActionDeviceClass:v11];
  v14 |= v13;
  if (v51 == [(CBDevice *)self dsActionFlags])
  {
LABEL_51:
    dsActionMeasuredPower = [(CBDevice *)self dsActionMeasuredPower];
    v37 = v52;
    if (v52 == dsActionMeasuredPower)
    {
      goto LABEL_52;
    }

    goto LABEL_72;
  }

LABEL_71:
  [(CBDevice *)self setDsActionFlags:?];
  v14 |= v13;
  dsActionMeasuredPower2 = [(CBDevice *)self dsActionMeasuredPower];
  v37 = v52;
  if (v52 == dsActionMeasuredPower2)
  {
LABEL_52:
    if (DWORD1(v52) == [(CBDevice *)self dsActionTieBreaker])
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

LABEL_72:
  [(CBDevice *)self setDsActionMeasuredPower:v37];
  v14 |= v13;
  if (DWORD1(v52) != [(CBDevice *)self dsActionTieBreaker])
  {
LABEL_53:
    [(CBDevice *)self setDsActionTieBreaker:?];
    v14 |= v13;
  }

LABEL_54:
  watchSetupData = [(CBDevice *)self watchSetupData];
  v39 = *(&v52 + 1);
  v40 = watchSetupData;
  v41 = v40;
  if (v39 == v40)
  {
  }

  else
  {
    if ((v39 != 0) != (v40 == 0))
    {
      v42 = [v39 isEqual:v40];

      if (v42)
      {
        goto LABEL_61;
      }
    }

    else
    {
    }

    [(CBDevice *)self setWatchSetupData:v39];
    v14 |= v13;
  }

LABEL_61:
  self->_discoveryFlags |= v13;
  v43 = self->_changeFlags | v14;
  self->_changeFlags = v43;
  if ((self->_internalFlags & 0x800) != 0)
  {
    self->_discoveryTypesInternal.bitArray[4] |= 0x20u;
    if ((v43 & 0x5030800010083E37) != 0)
    {
      self->_changedTypesInternal.bitArray[4] |= 0x20u;
    }
  }
}

- (void)_parseNearbyActionV2Ptr:(const char *)ptr end:(const char *)end
{
  if (end - ptr < 1)
  {
    v5 = 0;
LABEL_23:
    v20 = 0;
    v6 = 0;
    v13 = 0;
    v7 = v5 & 1;
    if ([(CBDevice *)self nearbyActionV2Flags]!= v5)
    {
      goto LABEL_20;
    }

LABEL_24:
    v14 = 0;
    if (v6 == [(CBDevice *)self nearbyActionV2Type])
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v5 = *ptr;
  if (&end[~ptr] <= 0)
  {
    goto LABEL_23;
  }

  v20 = 0;
  v6 = *(ptr + 1);
  v7 = v5 & 1;
  if ((v5 & 1) != 0 && end - (ptr + 2) >= 3)
  {
    v20 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:ptr + 2 length:3];
  }

  v8 = 0x20000;
  v9 = 256;
  v10 = 8;
  if (v6 != 51)
  {
    v10 = 0;
  }

  if (v6 != 50)
  {
    v9 = v10;
  }

  if (v6 != 41)
  {
    v8 = v9;
  }

  v11 = 0x400000000;
  v12 = 0x2000000000000000;
  if (v6 != 40)
  {
    v12 = 0;
  }

  if (v6 != 38)
  {
    v11 = v12;
  }

  if (v6 <= 40)
  {
    v13 = v11;
  }

  else
  {
    v13 = v8;
  }

  if ([(CBDevice *)self nearbyActionV2Flags]== v5)
  {
    goto LABEL_24;
  }

LABEL_20:
  [(CBDevice *)self setNearbyActionV2Flags:v5];
  v14 = v13;
  if (v6 != [(CBDevice *)self nearbyActionV2Type])
  {
LABEL_25:
    [(CBDevice *)self setNearbyActionV2Type:v6];
    v14 = v13;
  }

LABEL_26:
  if (!v7)
  {
    goto LABEL_34;
  }

  nearbyActionV2TargetData = [(CBDevice *)self nearbyActionV2TargetData];
  v16 = v20;
  v17 = nearbyActionV2TargetData;
  v18 = v17;
  if (v16 == v17)
  {

    goto LABEL_34;
  }

  if ((v16 != 0) == (v17 == 0))
  {

    goto LABEL_33;
  }

  v19 = [v16 isEqual:v17];

  if ((v19 & 1) == 0)
  {
LABEL_33:
    [(CBDevice *)self setNearbyActionV2TargetData:v16];
    v14 = v13;
  }

LABEL_34:
  self->_discoveryFlags |= v13;
  self->_changeFlags |= v14;
}

- (void)_parseNearbyActionNoWakePtr:(const char *)ptr end:(const char *)end
{
  if (end - ptr < 1)
  {
    v12 = 0;
    v5 = 0;
LABEL_10:
    v6 = 0;
    v9 = 0;
    v10 = 0;
    goto LABEL_15;
  }

  v5 = *ptr;
  if (v5 != 1)
  {
    v12 = 0;
    goto LABEL_10;
  }

  if (end - (ptr + 1) < 1)
  {
    v9 = 0;
    v6 = 0;
  }

  else
  {
    v6 = *(ptr + 1);
    if (end - (ptr + 2) >= 3)
    {
      v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:ptr + 2 length:3];
      v10 = 0;
      if (v6)
      {
        v11 = ptr + 5;
        if (end - v11 >= 1)
        {
          v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v11 length:1];
        }
      }

      goto LABEL_14;
    }

    v9 = 0;
  }

  v10 = 0;
LABEL_14:
  self->_discoveryTypesInternal.bitArray[1] |= 1u;
  v12 = 1;
  v5 = 1;
LABEL_15:
  self->_discoveryTypesInternal.bitArray[1] |= 2u;
  nearbyActionNoWakeType = [(CBDevice *)self nearbyActionNoWakeType];
  v14 = v5 != nearbyActionNoWakeType;
  if (v5 != nearbyActionNoWakeType)
  {
    [(CBDevice *)self setNearbyActionNoWakeType:v5];
  }

  if (v6 != [(CBDevice *)self nearbyActionNWPrecisionFindingStatus])
  {
    self->_nearbyActionNWPrecisionFindingStatus = v6;
    v14 = 1;
  }

  nearbyActionNoWakeAuthTagData = [(CBDevice *)self nearbyActionNoWakeAuthTagData];
  v26 = v9;
  v16 = nearbyActionNoWakeAuthTagData;
  if (v26 == v16)
  {

    if ((v6 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_28;
  }

  if ((v26 != 0) != (v16 == 0))
  {
    v17 = [v26 isEqual:v16];

    if (v17)
    {
      if ((v6 & 1) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_28;
    }
  }

  else
  {
  }

  v18 = v26;
  nearbyActionNoWakeAuthTagData = self->_nearbyActionNoWakeAuthTagData;
  self->_nearbyActionNoWakeAuthTagData = v18;
  v14 = 1;

  if ((v6 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_28:
  nearbyActionNoWakeConfigData = [(CBDevice *)self nearbyActionNoWakeConfigData];
  v21 = v10;
  v22 = nearbyActionNoWakeConfigData;
  v23 = v22;
  if (v21 == v22)
  {

    goto LABEL_33;
  }

  if ((v21 != 0) == (v22 == 0))
  {

    goto LABEL_40;
  }

  v24 = [v21 isEqual:v22];

  if (v24)
  {
LABEL_33:
    if (v14)
    {
      v25 = self->_changedTypesInternal.bitArray[1];
      self->_changedTypesInternal.bitArray[1] = v25 | 2;
      if (v12)
      {
        goto LABEL_35;
      }
    }

    goto LABEL_36;
  }

LABEL_40:
  objc_storeStrong(&self->_nearbyActionNoWakeConfigData, v10);
  v25 = self->_changedTypesInternal.bitArray[1];
  self->_changedTypesInternal.bitArray[1] = v25 | 2;
  if (v12)
  {
LABEL_35:
    self->_changedTypesInternal.bitArray[1] = v25 | 3;
  }

LABEL_36:
}

- (void)_parseNearbyInfoPtr:(const char *)ptr end:(const char *)end
{
  if (end - ptr < 1)
  {
    v7 = 0;
    v31 = 0;
    v6 = 0;
    goto LABEL_29;
  }

  v5 = *ptr;
  v6 = v5 & 0xF;
  v7 = (v5 >> 2) & 4 | (v5 >> 6) & 1 | (v5 >> 4) & 2;
  if (&end[~ptr] < 1)
  {
    goto LABEL_28;
  }

  v8 = (ptr + 2);
  v9 = *(ptr + 1);
  if ((v9 & 0x80u) == 0)
  {
    v10 = (v5 >> 2) & 4 | (v5 >> 6) & 1 | (v5 >> 4) & 2;
  }

  else
  {
    v10 = v7 | 8;
  }

  v11 = v9 & 0x20 | (v9 >> 2) & 0x10 | v10 & 0xFFFFFFBF | (((v9 >> 4) & 1) << 6);
  v7 = (v9 << 8) & 0x200 | (((v9 & 4) != 0) << 8) | (((v9 >> 3) & 1) << 7) | v11;
  if ((v11 & 0x40) == 0)
  {
    v31 = 0;
    if ((v9 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  if (end - v8 < 3)
  {
LABEL_28:
    v31 = 0;
    goto LABEL_29;
  }

  endCopy = end;
  v14 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v8 length:3];
  end = endCopy;
  v31 = v14;
  v8 = (ptr + 5);
  if ((v9 & 1) == 0)
  {
LABEL_8:
    if ((v7 & 0x1000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_17;
  }

LABEL_13:
  if (end - v8 < 1)
  {
    goto LABEL_29;
  }

  v16 = *v8++;
  v15 = v16;
  v17 = v7 | 0x400;
  if (v16 >= 0)
  {
    v17 = v7;
  }

  v7 = v17 | ((v15 & 4) << 10);
  if (((v17 | ((v15 & 4) << 10)) & 0x1000) == 0)
  {
LABEL_29:
    [(CBDevice *)self _setDeviceInfoKey:@"w" value:0];
    [(CBDevice *)self _setDeviceInfoKey:@"x" value:0];
    [(CBDevice *)self _setDeviceInfoKey:@"y" value:0];
    v23 = 0;
    if (v6 != self->_nearbyActivityLevel)
    {
      goto LABEL_30;
    }

LABEL_25:
    if (v7 != [(CBDevice *)self nearbyInfoFlags])
    {
      goto LABEL_31;
    }

    goto LABEL_26;
  }

LABEL_17:
  if (end - v8 < 3)
  {
    goto LABEL_29;
  }

  v18 = v8[1] & 0x7F;
  if (v18 >= 0x64)
  {
    v18 = 100;
  }

  v19 = *v8;
  v20 = v18 / 100.0;
  v21 = v8[2] & 0xF;
  [(CBDevice *)self nearbyInfoStatusProgress];
  if (v20 != v22)
  {
    [(CBDevice *)self setNearbyInfoStatusProgress:v20];
    v23 = 64;
    v24 = v19 & 0x1F;
    if (v21 == [(CBDevice *)self nearbyInfoStatusTime])
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v23 = 0;
  v24 = v19 & 0x1F;
  if (v21 != [(CBDevice *)self nearbyInfoStatusTime])
  {
LABEL_22:
    [(CBDevice *)self setNearbyInfoStatusTime:v21];
    v23 = 64;
  }

LABEL_23:
  if (v24 == [(CBDevice *)self nearbyInfoStatusType])
  {
    if (v6 != self->_nearbyActivityLevel)
    {
      goto LABEL_30;
    }

    goto LABEL_25;
  }

  [(CBDevice *)self setNearbyInfoStatusType:v24];
  v23 = 64;
  if (v6 == self->_nearbyActivityLevel)
  {
    goto LABEL_25;
  }

LABEL_30:
  self->_nearbyActivityLevel = v6;
  v23 = 64;
  if (v7 != [(CBDevice *)self nearbyInfoFlags])
  {
LABEL_31:
    [(CBDevice *)self setNearbyInfoFlags:v7];
    v23 |= 0x40uLL;
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_32;
  }

LABEL_26:
  if ((v7 & 0x40) == 0)
  {
    goto LABEL_39;
  }

LABEL_32:
  nearbyInfoAuthTag = [(CBDevice *)self nearbyInfoAuthTag];
  v26 = v31;
  v27 = nearbyInfoAuthTag;
  v28 = v27;
  if (v26 == v27)
  {
  }

  else
  {
    if ((v26 != 0) == (v27 == 0))
    {
    }

    else
    {
      v29 = [v26 isEqual:v27];

      if (v29)
      {
        goto LABEL_39;
      }
    }

    [(CBDevice *)self setNearbyInfoAuthTag:v26];
    v23 |= 0x40uLL;
  }

LABEL_39:
  self->_discoveryFlags |= 0x40uLL;
  v30 = self->_changeFlags | v23;
  self->_changeFlags = v30;
  if ((self->_internalFlags & 0x800) != 0)
  {
    self->_discoveryTypesInternal.bitArray[4] |= 0x10u;
    if ((v30 & 0x40) != 0)
    {
      self->_changedTypesInternal.bitArray[4] |= 0x10u;
    }
  }
}

- (void)_parseProximityPairingPtr:(const char *)ptr end:(const char *)end
{
  endCopy = end;
  ptrCopy = ptr;
  v7 = end - ptr;
  if (end - ptr < 3)
  {
    v8 = 0;
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:ptr length:v7];
  }

  proximityPairingPayloadData = [(CBDevice *)self proximityPairingPayloadData];
  v42 = v8;
  v10 = proximityPairingPayloadData;
  v11 = v10;
  if (v42 == v10)
  {

    goto LABEL_9;
  }

  if ((v42 != 0) == (v10 == 0))
  {

    goto LABEL_32;
  }

  v12 = [v42 isEqual:v10];

  if (v12)
  {
LABEL_9:
    v13 = 1;
    if (v7 < 1)
    {
      goto LABEL_33;
    }

LABEL_10:
    v15 = *ptrCopy++;
    v14 = v15;
    proximityPairingSubType = self->_proximityPairingSubType;
    if (v15 == proximityPairingSubType)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_32:
  [(CBDevice *)self setProximityPairingPayloadData:v42];
  v13 = 0;
  if (v7 >= 1)
  {
    goto LABEL_10;
  }

LABEL_33:
  v14 = 255;
  proximityPairingSubType = self->_proximityPairingSubType;
  if (proximityPairingSubType != 255)
  {
LABEL_11:
    self->_proximityPairingSubType = v14;
  }

LABEL_12:
  v18 = v7 > 0 && endCopy - ptrCopy > 1;
  if (v18)
  {
    v20 = *ptrCopy;
    ptrCopy += 2;
    v19 = v20;
    proximityPairingProductID = self->_proximityPairingProductID;
    if (v20 != proximityPairingProductID)
    {
      goto LABEL_20;
    }

LABEL_29:
    v31 = 0;
    discoveryFlags = self->_discoveryFlags;
    if (!v18)
    {
      goto LABEL_59;
    }

    goto LABEL_41;
  }

  v19 = 0;
  proximityPairingProductID = self->_proximityPairingProductID;
  if (!proximityPairingProductID)
  {
    goto LABEL_29;
  }

LABEL_20:
  v41 = v13;
  self->_proximityPairingProductID = v19;
  v22 = [MEMORY[0x1E696AEC0] stringWithCString:CBProductIDToString_0(v19) encoding:4];
  v23 = v22;
  if (!v19)
  {
    v31 = 0;

    v13 = v41;
    discoveryFlags = self->_discoveryFlags;
    if (!v18)
    {
      goto LABEL_59;
    }

    goto LABEL_41;
  }

  v40 = endCopy;
  v24 = v22;
  if (v24 == @"?")
  {
    goto LABEL_27;
  }

  v25 = v24;
  if (v24)
  {
    v26 = [(__CFString *)v24 isEqual:@"?"];

    if (v26)
    {
      goto LABEL_27;
    }
  }

  model = self->_model;
  v28 = v25;
  v29 = model;
  if (v28 == v29)
  {

    v31 = 0;
  }

  else
  {
    if ((v28 != 0) != (v29 == 0))
    {
      v30 = v29;
      v39 = [(__CFString *)v28 isEqual:v29];

      if (v39)
      {
LABEL_27:
        v31 = 0;
        goto LABEL_40;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_model, v23);
    self->_discoveryFlags |= 0x80000000000uLL;
    v31 = 1;
  }

LABEL_40:
  endCopy = v40;

  v13 = v41;
  discoveryFlags = self->_discoveryFlags;
  if (!v18)
  {
    goto LABEL_59;
  }

LABEL_41:
  if (v14 > 5)
  {
    if (v14 > 7)
    {
      if (v14 == 8)
      {
        v33 = v13;
        [(CBDevice *)self _parseProximityPairingFindMyAccessoryStatusPtr:ptrCopy end:endCopy];
      }

      else
      {
        if (v14 != 9)
        {
          goto LABEL_59;
        }

        v33 = v13;
        [(CBDevice *)self _parseProximityPairingObjectSetupPtrV2:ptrCopy end:endCopy];
      }
    }

    else
    {
      v33 = v13;
      if (v14 == 6)
      {
        [(CBDevice *)self _parseProximityPairingAccessoryStatusPtr:ptrCopy end:endCopy];
      }

      else
      {
        [(CBDevice *)self _parseProximityPairingV2Ptr:ptrCopy end:endCopy];
      }
    }
  }

  else if (v14 > 3)
  {
    v33 = v13;
    if (v14 == 4)
    {
      [(CBDevice *)self _parseProximityPairingAirPodsMismatchedPtr:ptrCopy end:endCopy];
    }

    else
    {
      [(CBDevice *)self _parseProximityPairingObjectSetupPtr:ptrCopy end:endCopy];
    }
  }

  else if (v14)
  {
    if (v14 != 1)
    {
      goto LABEL_59;
    }

    v33 = v13;
    [(CBDevice *)self _parseProximityPairingWxStatusPtr:ptrCopy end:endCopy];
  }

  else
  {
    v33 = v13;
    [(CBDevice *)self _parseProximityPairingWxSetupPtr:ptrCopy end:endCopy];
  }

  v13 = v33;
LABEL_59:
  v34 = self->_discoveryFlags;
  v35 = v34 ^ discoveryFlags | 0x80000000000;
  if (!v31)
  {
    v35 = v34 ^ discoveryFlags;
  }

  if (v19 != proximityPairingProductID)
  {
    v13 = 0;
  }

  v36 = v34 & 0x1C080;
  if (((v14 == proximityPairingSubType) & v13) != 0)
  {
    v37 = 0;
  }

  else
  {
    v37 = v36;
  }

  v38 = v37 | self->_changeFlags | v35;
  self->_changeFlags = v38;
  if (v36 && (self->_internalFlags & 0x800) != 0)
  {
    self->_discoveryTypesInternal.bitArray[3] |= 8u;
  }

  if ((v38 & 0x1C080) != 0 && (self->_internalFlags & 0x800) != 0)
  {
    self->_changedTypesInternal.bitArray[3] |= 8u;
  }
}

- (void)_parseProximityPairingWxSetupPtr:(const char *)ptr end:(const char *)end
{
  deviceFlags = self->_deviceFlags;
  ptrCopy = ptr;
  v6 = end - ptr;
  if (end - ptr >= 6)
  {
    ptrCopy = ptr + 6;
    v6 = end - (ptr + 6);
  }

  if (v6 >= 1)
  {
    v7 = [(CBDevice *)self _parseProximityPairingStatus1:&ptrCopy deviceFlags:&deviceFlags];
    v8 = ptrCopy;
    v9 = end - ptrCopy;
    if (end - ptrCopy >= 3)
    {
      ptrCopy += 3;
      v9 = end - (v8 + 3);
    }

    if (v9 >= 1)
    {
      v7 |= [(CBDevice *)self _parseProximityPairingStatus3:&ptrCopy deviceFlags:&deviceFlags];
      if (end - ptrCopy >= 1)
      {
        v7 |= [(CBDevice *)self _parseProximityPairingColor1:&ptrCopy];
      }
    }

    v10 = self->_deviceFlags;
    v11 = deviceFlags & 0x87900000000 | v10 & 0xFFFFF786FFFFFFFFLL;
    if (v11 == v10)
    {
      if (!v7)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

LABEL_13:
    self->_deviceFlags = v11;
LABEL_14:
    self->_changeFlags |= 0x80000004000uLL;
    goto LABEL_15;
  }

  v12 = self->_deviceFlags;
  v11 = deviceFlags & 0x87900000000 | v12 & 0xFFFFF786FFFFFFFFLL;
  if (v11 != v12)
  {
    goto LABEL_13;
  }

LABEL_15:
  self->_discoveryFlags |= 0x4000uLL;
}

- (void)_parseProximityPairingWxStatusPtr:(const char *)ptr end:(const char *)end
{
  deviceFlags = self->_deviceFlags;
  v13 = deviceFlags;
  ptrCopy = ptr;
  if (end - ptr >= 1)
  {
    v7 = [(CBDevice *)self _parseProximityPairingStatus1:&ptrCopy deviceFlags:&v13];
    v8 = ptrCopy;
    v9 = end - ptrCopy;
    if (end - ptrCopy > 1)
    {
      ptrCopy += 2;
      v9 = end - (v8 + 2);
    }

    if (v9 >= 1)
    {
      v7 |= [(CBDevice *)self _parseProximityPairingStatus3:&ptrCopy deviceFlags:&v13];
      if (end - ptrCopy >= 1)
      {
        v7 |= [(CBDevice *)self _parseProximityPairingColor1:&ptrCopy];
      }
    }

    v10 = self->_deviceFlags;
    v11 = v13 & 0x87900000000 | v10 & 0xFFFFF786FFFFFFFFLL;
    if (v11 == v10)
    {
      if (!v7)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

LABEL_11:
    self->_deviceFlags = v11;
LABEL_12:
    self->_changeFlags |= 0x80000008000uLL;
    goto LABEL_13;
  }

  v12 = self->_deviceFlags;
  v11 = deviceFlags & 0x87900000000 | v12 & 0xFFFFF786FFFFFFFFLL;
  if (v11 != v12)
  {
    goto LABEL_11;
  }

LABEL_13:
  self->_discoveryFlags |= 0x8000uLL;
}

- (void)_parseProximityPairingAirPodsMismatchedPtr:(const char *)ptr end:(const char *)end
{
  deviceFlags = self->_deviceFlags;
  ptrCopy = ptr;
  if (end - ptr < 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(CBDevice *)self _parseProximityPairingStatus1:&ptrCopy deviceFlags:&deviceFlags];
    if (end - ptrCopy >= 1)
    {
      v6 |= [(CBDevice *)self _parseProximityPairingBattery1:&ptrCopy];
      if (end - ptrCopy >= 1)
      {
        v6 |= [(CBDevice *)self _parseProximityPairingBattery2:&ptrCopy];
        if (end - ptrCopy >= 1)
        {
          v6 |= [(CBDevice *)self _parseProximityPairingBattery3:&ptrCopy];
          if (end - ptrCopy >= 1)
          {
            v6 |= [(CBDevice *)self _parseProximityPairingStatus3:&ptrCopy deviceFlags:&deviceFlags];
            if (end - ptrCopy >= 1)
            {
              v6 |= [(CBDevice *)self _parseProximityPairingColor1:&ptrCopy];
              if (end - ptrCopy >= 1)
              {
                v6 |= [(CBDevice *)self _parseProximityPairingMisc1:&ptrCopy deviceFlags:&deviceFlags];
                v7 = ptrCopy;
                v8 = end - ptrCopy;
                if (end - ptrCopy >= 12)
                {
                  ptrCopy += 12;
                  v8 = end - (v7 + 12);
                }

                if (v8 >= 2)
                {
                  v6 |= [(CBDevice *)self _parseProximityPairingPID2:&ptrCopy];
                }
              }
            }
          }
        }
      }
    }
  }

  v9 = self->_deviceFlags;
  v10 = deviceFlags & 0x87900000000 | v9 & 0xFFFFF786FFFFFFFFLL;
  if (v10 == v9)
  {
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  else
  {
    self->_deviceFlags = v10;
  }

  self->_changeFlags |= 0x80000008000uLL;
LABEL_18:
  self->_discoveryFlags |= 0x8000uLL;
}

- (void)_parseProximityPairingObjectSetupPtr:(const char *)ptr end:(const char *)end
{
  if (end - ptr < 1)
  {
    v10 = 0;
    v5 = 0;
LABEL_9:
    v7 = 0;
    v8 = 0;
LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  v5 = *ptr;
  if (&end[~ptr] < 1)
  {
    v10 = 0;
    goto LABEL_9;
  }

  v6 = *(ptr + 1);
  v7 = (v6 >> 2) & 3;
  v8 = v6 & 3;
  if (end - ptr - 2 < 1)
  {
    v10 = 0;
    goto LABEL_10;
  }

  v9 = ptr + 3;
  v10 = *(ptr + 2);
  v11 = end - (ptr + 3);
  if ((v5 & 0x10) != 0 && v11 >= 7)
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v9 length:7 encoding:4];
    v9 = ptr + 10;
    v11 = end - (ptr + 10);
  }

  else
  {
    v14 = 0;
    if ((v5 & 0x10) == 0)
    {
      v15 = 0;
      goto LABEL_12;
    }
  }

  if (v11 < 1)
  {
LABEL_11:
    v15 = 0;
    goto LABEL_12;
  }

  if (v11 >= 0xC)
  {
    v25 = 12;
  }

  else
  {
    v25 = v11;
  }

  v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v9 length:strnlen(v9 encoding:{v25), 4}];
LABEL_12:
  if (v5 != [(CBDevice *)self objectSetupFlags])
  {
    [(CBDevice *)self setObjectSetupFlags:v5];
    v16 = 0x10000;
    if (v7 == [(CBDevice *)self objectSetupBatteryPerformance])
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v16 = 0;
  if (v7 != [(CBDevice *)self objectSetupBatteryPerformance])
  {
LABEL_16:
    [(CBDevice *)self setObjectSetupBatteryPerformance:v7];
    v16 = 0x10000;
  }

LABEL_17:
  if (v8 == [(CBDevice *)self objectSetupBatteryState])
  {
    if (v10 == [(CBDevice *)self objectSetupColorCode])
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  [(CBDevice *)self setObjectSetupBatteryState:v8];
  v16 = 0x10000;
  if (v10 != [(CBDevice *)self objectSetupColorCode])
  {
LABEL_19:
    [(CBDevice *)self setObjectSetupColorCode:v10];
    v16 = 0x10000;
  }

LABEL_20:
  objectSetupFontCode = [(CBDevice *)self objectSetupFontCode];
  v26 = v14;
  v18 = objectSetupFontCode;
  if (v26 == v18)
  {

    goto LABEL_29;
  }

  if ((v26 != 0) == (v18 == 0))
  {

    goto LABEL_28;
  }

  v19 = [v26 isEqual:v18];

  if ((v19 & 1) == 0)
  {
LABEL_28:
    [(CBDevice *)self setObjectSetupFontCode:v26];
    v16 |= 0x10000uLL;
  }

LABEL_29:
  objectSetupMessage = [(CBDevice *)self objectSetupMessage];
  v21 = v15;
  v22 = objectSetupMessage;
  v23 = v22;
  if (v21 == v22)
  {

    goto LABEL_36;
  }

  if ((v21 != 0) == (v22 == 0))
  {

    goto LABEL_35;
  }

  v24 = [v21 isEqual:v22];

  if ((v24 & 1) == 0)
  {
LABEL_35:
    [(CBDevice *)self setObjectSetupMessage:v21];
    v16 |= 0x10000uLL;
  }

LABEL_36:
  self->_discoveryFlags |= 0x10000uLL;
  self->_changeFlags |= v16;
}

- (void)_parseProximityPairingAccessoryStatusPtr:(const char *)ptr end:(const char *)end
{
  ptrCopy = ptr;
  v7 = end - ptr;
  if (end - ptr < 1)
  {
    v8 = 0;
  }

  else
  {
    ptrCopy = ptr + 1;
    v8 = *ptr;
  }

  if ((v8 & 7) != [(CBDevice *)self accessoryStatusLidOpenCount])
  {
    [(CBDevice *)self setAccessoryStatusLidOpenCount:v8 & 7];
    v9 = 0x80000000080;
    v10 = (v8 >> 3) & 7;
    if (v10 == [(CBDevice *)self accessoryStatusFlags])
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v9 = 0;
  v10 = (v8 >> 3) & 7;
  if (v10 != [(CBDevice *)self accessoryStatusFlags])
  {
LABEL_8:
    [(CBDevice *)self setAccessoryStatusFlags:v10];
    v9 = 0x80000000080;
  }

LABEL_9:
  v12 = v7 > 0 && end - ptrCopy > 0;
  if (!v12)
  {
    v13 = 0;
    goto LABEL_20;
  }

  v14 = *ptrCopy++;
  v13 = v14;
  if (v14 != -1)
  {
    if (v13 < 0)
    {
      v15 = 256;
      goto LABEL_21;
    }

LABEL_20:
    v15 = 512;
LABEL_21:
    v16 = v13 & 0x7F;
    if (v16 >= 0x64)
    {
      v16 = 100;
    }

    v17 = v15 | v16;
    if (v17 != [(CBDevice *)self batteryInfoCase])
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v17 = 0;
  if ([(CBDevice *)self batteryInfoCase])
  {
LABEL_24:
    [(CBDevice *)self setBatteryInfoCase:v17];
    v9 = 0x80000000080;
  }

LABEL_25:
  if (end - ptrCopy <= 0)
  {
    v12 = 0;
  }

  if (!v12)
  {
    v18 = 0;
    goto LABEL_32;
  }

  v19 = *ptrCopy++;
  v18 = v19;
  if (v19 != -1)
  {
    if (v18 < 0)
    {
      v20 = 256;
      goto LABEL_33;
    }

LABEL_32:
    v20 = 512;
LABEL_33:
    v21 = v18 & 0x7F;
    if (v21 >= 0x64)
    {
      v21 = 100;
    }

    v22 = v20 | v21;
    if (v22 != [(CBDevice *)self batteryInfoLeft])
    {
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  v22 = 0;
  if ([(CBDevice *)self batteryInfoLeft])
  {
LABEL_36:
    [(CBDevice *)self setBatteryInfoLeft:v22];
    v9 = 0x80000000080;
  }

LABEL_37:
  if (end - ptrCopy <= 0)
  {
    v12 = 0;
  }

  if (!v12)
  {
    v23 = 0;
    goto LABEL_44;
  }

  v24 = *ptrCopy++;
  v23 = v24;
  if (v24 != -1)
  {
    if (v23 < 0)
    {
      v25 = 256;
      goto LABEL_45;
    }

LABEL_44:
    v25 = 512;
LABEL_45:
    v26 = v23 & 0x7F;
    if (v26 >= 0x64)
    {
      v26 = 100;
    }

    v27 = v25 | v26;
    if (v27 != [(CBDevice *)self batteryInfoRight])
    {
      goto LABEL_48;
    }

    goto LABEL_49;
  }

  v27 = 0;
  if ([(CBDevice *)self batteryInfoRight])
  {
LABEL_48:
    [(CBDevice *)self setBatteryInfoRight:v27];
    v9 |= 0x80000000080uLL;
  }

LABEL_49:
  v28 = end - ptrCopy > 2 && v12;
  if (v28)
  {
    v29 = *ptrCopy | (*(ptrCopy + 2) << 16);
    ptrCopy += 3;
  }

  else
  {
    v29 = 0;
  }

  v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%u.%u.%u", HIWORD(v29), BYTE1(v29), v29];
  firmwareVersion = self->_firmwareVersion;
  v40 = v30;
  v32 = firmwareVersion;
  if (v40 == v32)
  {
  }

  else
  {
    if ((v40 != 0) == (v32 == 0))
    {

      goto LABEL_67;
    }

    v33 = v32;
    v34 = [(NSString *)v40 isEqual:v32];

    if ((v34 & 1) == 0)
    {
LABEL_67:
      objc_storeStrong(&self->_firmwareVersion, v30);
      v9 |= 0x80000000080uLL;
      if (end - ptrCopy <= 0 || !v28)
      {
        goto LABEL_71;
      }

      goto LABEL_64;
    }
  }

  if (end - ptrCopy <= 0 || !v28)
  {
LABEL_71:
    v36 = 0;
    [(CBDevice *)self accessoryStatusOBCTime];
    if (v39 == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

LABEL_64:
  v36 = *ptrCopy;
  [(CBDevice *)self accessoryStatusOBCTime];
  if (v37 != v36)
  {
LABEL_72:
    [(CBDevice *)self setAccessoryStatusOBCTime:(600 * v36)];
    v9 |= 0x80000000080uLL;
  }

LABEL_73:
  self->_discoveryFlags |= 0x80uLL;
  self->_changeFlags |= v9;
}

- (void)_parseProximityPairingV2Ptr:(const char *)ptr end:(const char *)end
{
  deviceFlags = self->_deviceFlags;
  v11 = deviceFlags;
  ptrCopy = ptr;
  if (end - ptr >= 1)
  {
    v7 = [(CBDevice *)self _parseProximityPairingStatus1:&ptrCopy deviceFlags:&v11];
    if (end - ptrCopy >= 1)
    {
      v7 |= [(CBDevice *)self _parseProximityPairingBattery1:&ptrCopy];
      if (end - ptrCopy >= 1)
      {
        v7 |= [(CBDevice *)self _parseProximityPairingBattery2:&ptrCopy];
        if (end - ptrCopy >= 1)
        {
          v7 |= [(CBDevice *)self _parseProximityPairingBattery3:&ptrCopy];
          if (end - ptrCopy >= 1)
          {
            v7 |= [(CBDevice *)self _parseProximityPairingStatus3:&ptrCopy deviceFlags:&v11];
            if (end - ptrCopy >= 1)
            {
              v7 |= [(CBDevice *)self _parseProximityPairingColor1:&ptrCopy];
            }
          }
        }
      }
    }

    v8 = self->_deviceFlags;
    v9 = v11 & 0x87900000000 | v8 & 0xFFFFF786FFFFFFFFLL;
    if (v9 == v8)
    {
      if (!v7)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

LABEL_12:
    self->_deviceFlags = v9;
LABEL_13:
    self->_changeFlags |= 0x80000004000uLL;
    goto LABEL_14;
  }

  v10 = self->_deviceFlags;
  v9 = deviceFlags & 0x87900000000 | v10 & 0xFFFFF786FFFFFFFFLL;
  if (v9 != v10)
  {
    goto LABEL_12;
  }

LABEL_14:
  self->_discoveryFlags |= 0x4000uLL;
}

- (void)_parseProximityPairingFindMyAccessoryStatusPtr:(const char *)ptr end:(const char *)end
{
  ptrCopy = ptr;
  if (end - ptr >= 1)
  {
    ptrCopy = ptr + 1;
    v7 = *ptr & 3;
    if (v7 == [(CBDevice *)self peerStatusFlag])
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if ([(CBDevice *)self peerStatusFlag])
  {
LABEL_3:
    [(CBDevice *)self setPeerStatusFlag:v7];
    self->_changedTypesInternal.bitArray[1] |= 4u;
  }

LABEL_4:
  if (end - ptrCopy < 1)
  {
    v9 = 0.0;
  }

  else
  {
    v8 = *ptrCopy++;
    v9 = v8;
  }

  v10 = (v9 / 100.0);
  if ([(CBDevice *)self batteryInfoMain]!= v10)
  {
    [(CBDevice *)self setBatteryInfoMain:v10];
    self->_changedTypesInternal.bitArray[1] |= 4u;
  }

  if (end - ptrCopy <= 0)
  {
    self->_transmitPowerOne = 0;
    goto LABEL_16;
  }

  self->_transmitPowerOne = *ptrCopy;
  if (&end[~ptrCopy] <= 0)
  {
LABEL_16:
    v11 = 0;
    self->_transmitPowerTwo = 0;
    goto LABEL_17;
  }

  self->_transmitPowerTwo = ptrCopy[1];
  if (end - (ptrCopy + 2) < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = ptrCopy[2];
  }

LABEL_17:
  self->_transmitPowerThree = v11;
  self->_discoveryTypesInternal.bitArray[1] |= 4u;
}

- (void)_parseProximityPairingObjectSetupPtrV2:(const char *)v2 end:(const char *)end
{
  if (end - v2 < 1)
  {
    v10 = 0;
    v5 = 0;
LABEL_9:
    v7 = 0;
    v8 = 0;
LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  v5 = *v2;
  if (&end[~v2] < 1)
  {
    v10 = 0;
    goto LABEL_9;
  }

  v6 = *(v2 + 1);
  v7 = (v6 >> 2) & 3;
  v8 = v6 & 3;
  if (end - v2 - 2 < 1)
  {
    v10 = 0;
    goto LABEL_10;
  }

  v9 = v2 + 3;
  v10 = *(v2 + 2);
  v11 = end - (v2 + 3);
  if ((v5 & 0x10) != 0 && v11 >= 7)
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v9 length:7 encoding:4];
    v9 = v2 + 10;
    v11 = end - (v2 + 10);
  }

  else
  {
    v14 = 0;
    if ((v5 & 0x10) == 0)
    {
      v15 = 0;
      goto LABEL_12;
    }
  }

  if (v11 < 1)
  {
LABEL_11:
    v15 = 0;
    goto LABEL_12;
  }

  if (v11 >= 0xC)
  {
    v25 = 12;
  }

  else
  {
    v25 = v11;
  }

  v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v9 length:strnlen(v9 encoding:{v25), 4}];
LABEL_12:
  if (v5 != [(CBDevice *)self objectSetupFlags])
  {
    [(CBDevice *)self setObjectSetupFlags:v5];
    v16 = 0x10000;
    if (v7 == [(CBDevice *)self objectSetupBatteryPerformance])
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v16 = 0;
  if (v7 != [(CBDevice *)self objectSetupBatteryPerformance])
  {
LABEL_16:
    [(CBDevice *)self setObjectSetupBatteryPerformance:v7];
    v16 = 0x10000;
  }

LABEL_17:
  if (v8 == [(CBDevice *)self objectSetupBatteryState])
  {
    if (v10 == [(CBDevice *)self objectSetupColorCode])
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  [(CBDevice *)self setObjectSetupBatteryState:v8];
  v16 = 0x10000;
  if (v10 != [(CBDevice *)self objectSetupColorCode])
  {
LABEL_19:
    [(CBDevice *)self setObjectSetupColorCode:v10];
    v16 = 0x10000;
  }

LABEL_20:
  objectSetupFontCode = [(CBDevice *)self objectSetupFontCode];
  v26 = v14;
  v18 = objectSetupFontCode;
  if (v26 == v18)
  {

    goto LABEL_29;
  }

  if ((v26 != 0) == (v18 == 0))
  {

    goto LABEL_28;
  }

  v19 = [v26 isEqual:v18];

  if ((v19 & 1) == 0)
  {
LABEL_28:
    [(CBDevice *)self setObjectSetupFontCode:v26];
    v16 |= 0x10000uLL;
  }

LABEL_29:
  objectSetupMessage = [(CBDevice *)self objectSetupMessage];
  v21 = v15;
  v22 = objectSetupMessage;
  v23 = v22;
  if (v21 == v22)
  {

    goto LABEL_36;
  }

  if ((v21 != 0) == (v22 == 0))
  {

    goto LABEL_35;
  }

  v24 = [v21 isEqual:v22];

  if ((v24 & 1) == 0)
  {
LABEL_35:
    [(CBDevice *)self setObjectSetupMessage:v21];
    v16 |= 0x10000uLL;
  }

LABEL_36:
  self->_discoveryFlags |= 0x10000uLL;
  self->_changeFlags |= v16;
}

- (BOOL)_parseProximityPairingColor1:(const char *)color1
{
  v4 = (*color1)++;
  v5 = *v4;
  colorInfo = [(CBDevice *)self colorInfo];
  if (colorInfo != v5)
  {
    [(CBDevice *)self setColorInfo:v5];
  }

  return colorInfo != v5;
}

- (BOOL)_parseProximityPairingMisc1:(const char *)misc1 deviceFlags:(unint64_t *)flags
{
  v4 = *flags;
  v5 = (*misc1)++;
  v6 = v4 & 0xFFFFF7FFFFFFFFFFLL | ((*v5 & 1) << 43);
  result = ((v6 ^ v4) & 0xFFFFFFF9FFFFFFFFLL) != 0;
  *flags = v6;
  return result;
}

- (BOOL)_parseProximityPairingPID2:(const char *)d2
{
  v3 = **d2;
  proximityPairingOtherBudProductID = self->_proximityPairingOtherBudProductID;
  if (proximityPairingOtherBudProductID != v3)
  {
    self->_proximityPairingOtherBudProductID = v3;
  }

  return proximityPairingOtherBudProductID != v3;
}

- (BOOL)_parseProximityPairingStatus1:(const char *)status1 deviceFlags:(unint64_t *)flags
{
  v6 = (*status1)++;
  v7 = *v6;
  v8 = *flags;
  proximityPairingProductID = self->_proximityPairingProductID;
  if (proximityPairingProductID == 8223 || proximityPairingProductID == 8202)
  {
    v11 = 0;
    v13 = v7 >> 5;
    v12 = *flags;
  }

  else
  {
    v13 = v7 >> 1;
    v14 = (v7 >> 3) & 3;
    if (v14 == 2)
    {
      v15 = 3;
    }

    else
    {
      v15 = 0;
    }

    if (v14 == 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v15;
    }

    v12 = v8 & 0xFFFFFFB1FFFFFFFFLL | ((((v7 & 0x40) >> 6) & 1) << 33) & 0xFFFFFFFBFFFFFFFFLL | ((v14 == 3) << 38) | ((((v7 & 0x20) >> 5) & 1) << 34) | ((v7 & 1) << 35);
  }

  v16 = v13 & 3;
  if (v16 == 2)
  {
    v17 = 3;
  }

  else
  {
    v17 = 0;
  }

  if (v16 == 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v17;
  }

  v19 = v12 & 0xFFFFFFDEFFFFFFFFLL | ((v16 == 3) << 37) | ((((v7 & 0x80) >> 7) & 1) << 32);
  v20 = ((v19 ^ v8) & 0xFFFFFFF9FFFFFFFFLL) != 0;
  if (v18 != [(CBDevice *)self proximityPairingPrimaryPlacement])
  {
    [(CBDevice *)self setProximityPairingPrimaryPlacement:v18];
    v20 = 1;
  }

  if (v11 != [(CBDevice *)self proximityPairingSecondaryPlacement])
  {
    [(CBDevice *)self setProximityPairingSecondaryPlacement:v11];
    v20 = 1;
  }

  *flags = v19;
  return v20;
}

- (void)_parseProximityServiceData:(id)data
{
  dataCopy = data;
  dataCopy2 = data;
  bytes = [dataCopy2 bytes];
  v8 = [dataCopy2 length];

  if (v8 <= 0)
  {
    [(CBDevice *)self setProximityServiceSubType:0];
    discoveryFlags = self->_discoveryFlags;
    self->_discoveryFlags = discoveryFlags | 0x80000000;
  }

  else
  {
    v9 = *bytes;
    [(CBDevice *)self setProximityServiceSubType:*bytes];
    discoveryFlags = self->_discoveryFlags;
    self->_discoveryFlags = discoveryFlags | 0x80000000;
    if (v9 == 6)
    {
      [(CBDevice *)self _parseProximityServiceWatchSetupPtr:bytes + 1 end:&bytes[v8]];
    }

    else if (v9 == 1)
    {
      [(CBDevice *)self _parseProximityServiceHomeKitSetupPtr:bytes + 1 end:&bytes[v8]];
    }
  }

  self->_changeFlags |= self->_discoveryFlags ^ discoveryFlags;
}

- (void)_parseProximityServiceHomeKitSetupPtr:(const char *)ptr end:(const char *)end
{
  v5 = end - ptr;
  if (end - ptr < 2)
  {
    v13 = 0;
    v10 = 0;
    v8 = 0;
    v6 = 0;
LABEL_14:
    v7 = 0;
LABEL_15:
    v9 = 0;
LABEL_16:
    v11 = 0;
    v12 = 0;
    goto LABEL_17;
  }

  v6 = *ptr;
  if (end - ptr - 2 < 2)
  {
    v13 = 0;
    v10 = 0;
    v8 = 0;
    goto LABEL_14;
  }

  v7 = *(ptr + 1);
  if (v5 - 4 < 1)
  {
    v13 = 0;
    v10 = 0;
    v8 = 0;
    goto LABEL_15;
  }

  v8 = *(ptr + 4);
  if (v5 - 5 < 2)
  {
    v13 = 0;
    v10 = 0;
    goto LABEL_15;
  }

  v9 = *(ptr + 5);
  if (v5 - 7 < 1)
  {
    v13 = 0;
    v10 = 0;
    goto LABEL_16;
  }

  v10 = *(ptr + 7);
  if (v5 - 8 < 1)
  {
    v13 = 0;
    goto LABEL_16;
  }

  v11 = *(ptr + 8);
  if (v5 - 9 < 1)
  {
    v13 = 0;
    v12 = 0;
    if ([(CBDevice *)self proximityServiceVendorID]!= v6)
    {
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  v12 = 0;
  v13 = *(ptr + 9);
  if ((v13 & 2) == 0 || end - (ptr + 10) < 4)
  {
LABEL_17:
    if ([(CBDevice *)self proximityServiceVendorID]!= v6)
    {
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:ptr + 10 length:4];
  if ([(CBDevice *)self proximityServiceVendorID]!= v6)
  {
LABEL_25:
    [(CBDevice *)self setProximityServiceVendorID:v6];
    v14 = 0x100000000;
    if (v7 == [(CBDevice *)self proximityServiceProductID])
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_18:
  v14 = 0;
  if (v7 != [(CBDevice *)self proximityServiceProductID])
  {
LABEL_26:
    [(CBDevice *)self setProximityServiceProductID:v7];
    v14 = 0x100000000;
  }

LABEL_27:
  if (v8 == [(CBDevice *)self proximityServiceCategory])
  {
    if ([(CBDevice *)self proximityServicePSM]== v9)
    {
      goto LABEL_29;
    }
  }

  else
  {
    [(CBDevice *)self setProximityServiceCategory:v8];
    v14 = 0x100000000;
    if ([(CBDevice *)self proximityServicePSM]== v9)
    {
LABEL_29:
      if (v10 == [(CBDevice *)self proximityServiceMeasuredPower])
      {
        goto LABEL_30;
      }

      goto LABEL_39;
    }
  }

  [(CBDevice *)self setProximityServicePSM:v9];
  v14 = 0x100000000;
  if (v10 == [(CBDevice *)self proximityServiceMeasuredPower])
  {
LABEL_30:
    if (v11 == [(CBDevice *)self proximityServiceVersion])
    {
      goto LABEL_31;
    }

    goto LABEL_40;
  }

LABEL_39:
  [(CBDevice *)self setProximityServiceMeasuredPower:v10];
  v14 |= 0x100000000uLL;
  if (v11 == [(CBDevice *)self proximityServiceVersion])
  {
LABEL_31:
    if (v13 == [(CBDevice *)self proximityServiceFlags])
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_40:
  [(CBDevice *)self setProximityServiceVersion:v11];
  v14 |= 0x100000000uLL;
  if (v13 != [(CBDevice *)self proximityServiceFlags])
  {
LABEL_32:
    [(CBDevice *)self setProximityServiceFlags:v13];
    v14 |= 0x100000000uLL;
  }

LABEL_33:
  proximityServiceSetupHash = [(CBDevice *)self proximityServiceSetupHash];
  v18 = v12;
  v16 = proximityServiceSetupHash;
  if (v18 == v16)
  {

    goto LABEL_45;
  }

  if ((v18 != 0) == (v16 == 0))
  {

    goto LABEL_44;
  }

  v17 = [v18 isEqual:v16];

  if ((v17 & 1) == 0)
  {
LABEL_44:
    [(CBDevice *)self setProximityServiceSetupHash:v18];
    v14 |= 0x100000000uLL;
  }

LABEL_45:
  self->_discoveryFlags |= 0x100000000uLL;
  self->_changeFlags |= v14;
}

- (void)_parseProximityServiceWatchSetupPtr:(const char *)ptr end:(const char *)end
{
  v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:ptr length:end - ptr];
  watchSetupData = [(CBDevice *)self watchSetupData];
  v9 = v5;
  v7 = watchSetupData;
  if (v9 == v7)
  {

    goto LABEL_8;
  }

  if ((v9 != 0) == (v7 == 0))
  {

    goto LABEL_7;
  }

  v8 = [v9 isEqual:v7];

  if ((v8 & 1) == 0)
  {
LABEL_7:
    [(CBDevice *)self setWatchSetupData:v9];
    self->_changedTypesInternal.bitArray[2] |= 2u;
  }

LABEL_8:
  self->_discoveryTypesInternal.bitArray[2] |= 2u;
}

- (void)_parseSpatialInteractionPtr:(const char *)ptr end:(const char *)end
{
  if (end - ptr <= 0)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = 0;
    LOBYTE(v9) = 0;
    v13 = 0;
    v16 = 0;
    goto LABEL_22;
  }

  v7 = ptr + 1;
  v8 = *ptr;
  v9 = v8;
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = v8 & 3;
  if ((v8 & 3) == 0)
  {
    goto LABEL_5;
  }

  if (end - v7 >= 3)
  {
    v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v7 length:3];
    v7 = ptr + 4;
    [v10 addObject:v12];

    if (v11 == 1)
    {
      goto LABEL_5;
    }

    if (end - v7 >= 3)
    {
      v17 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:ptr + 4 length:3];
      v7 = ptr + 7;
      [v10 addObject:v17];

      if (v11 == 2)
      {
        goto LABEL_5;
      }

      if (end - v7 >= 3)
      {
        v18 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:ptr + 7 length:3];
        v7 = ptr + 10;
        [v10 addObject:v18];

LABEL_5:
        v13 = 0;
        if ((v8 & 8) != 0)
        {
          v14 = (v8 >> 6) & 1;
          if ((v8 & 0x80u) == 0)
          {
            v14 = 1;
          }

          if (end - v7 >= 5 && v14)
          {
            v13 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v7 length:5];
            v7 += 5;
          }
        }

        goto LABEL_17;
      }
    }
  }

  v13 = 0;
LABEL_17:
  v16 = 0;
  v15 = 0;
  if (end - v7 >= 1 && v9 < 0)
  {
    v16 = 0;
    v20 = *v7;
    v19 = v7 + 1;
    v15 = v20;
    if ((v20 & 1) != 0 && end - v19 >= 1)
    {
      v16 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v19 length:1];
    }
  }

LABEL_22:
  if (v15 != [(CBDevice *)self spatialInteractionConfigFlags])
  {
    [(CBDevice *)self setSpatialInteractionConfigFlags:v15];
  }

  if ([(CBDevice *)self spatialInteractionFlags]== v9)
  {
    v21 = 0;
  }

  else
  {
    [(CBDevice *)self setSpatialInteractionFlags:v9];
    v21 = 0x40000;
  }

  spatialInteractionIdentifiers = [(CBDevice *)self spatialInteractionIdentifiers];
  v35 = v10;
  v23 = spatialInteractionIdentifiers;
  if (v35 == v23)
  {

LABEL_34:
    goto LABEL_35;
  }

  if ((v35 != 0) == (v23 == 0))
  {

    goto LABEL_33;
  }

  v24 = [v35 isEqual:v23];

  if ((v24 & 1) == 0)
  {
LABEL_33:
    v23 = [v35 copy];
    [(CBDevice *)self setSpatialInteractionIdentifiers:v23];
    v21 = 0x40000;
    goto LABEL_34;
  }

LABEL_35:
  spatialInteractionUWBConfigData = [(CBDevice *)self spatialInteractionUWBConfigData];
  v26 = v13;
  v27 = spatialInteractionUWBConfigData;
  v28 = v27;
  if (v26 == v27)
  {

    goto LABEL_42;
  }

  if ((v26 != 0) == (v27 == 0))
  {

    goto LABEL_41;
  }

  v29 = [v26 isEqual:v27];

  if ((v29 & 1) == 0)
  {
LABEL_41:
    [(CBDevice *)self setSpatialInteractionUWBConfigData:v26];
    v21 = 0x40000;
  }

LABEL_42:
  spatialInteractionPresenceConfigData = [(CBDevice *)self spatialInteractionPresenceConfigData];
  v31 = v16;
  v32 = spatialInteractionPresenceConfigData;
  v33 = v32;
  if (v31 == v32)
  {

    goto LABEL_49;
  }

  if ((v31 != 0) == (v32 == 0))
  {

    goto LABEL_48;
  }

  v34 = [v31 isEqual:v32];

  if ((v34 & 1) == 0)
  {
LABEL_48:
    [(CBDevice *)self setSpatialInteractionPresenceConfigData:v31];
    v21 = 0x40000;
  }

LABEL_49:
  self->_discoveryFlags |= 0x40000uLL;
  self->_changeFlags |= v21;
}

- (void)_parseAirDropPtr:(const char *)ptr end:(const char *)end
{
  v5 = end - ptr;
  if (end - ptr < 18)
  {
    v14 = 0;
    v12 = 0;
    v10 = 0;
    v8 = 0;
    LOBYTE(v7) = 0;
LABEL_12:
    v9 = 0;
LABEL_13:
    v11 = 0;
LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  v6 = ptr + 1;
  v7 = *ptr;
  if ((v7 & 0x40) == 0)
  {
    v8 = 0;
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_45;
  }

  if (end - v6 < 3)
  {
    v14 = 0;
    v12 = 0;
    v10 = 0;
    v8 = 0;
    goto LABEL_12;
  }

  endCopy = end;
  ptrCopy = ptr;
  v21 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v6 length:3];
  ptr = ptrCopy;
  end = endCopy;
  v8 = v21;
  if ((v7 & 0x80000000) == 0)
  {
LABEL_4:
    v9 = 0;
    if (v5 - 8 >= 1)
    {
      goto LABEL_5;
    }

    goto LABEL_47;
  }

LABEL_45:
  if (end - (ptr + 4) < 1)
  {
    v14 = 0;
    v12 = 0;
    v10 = 0;
    goto LABEL_12;
  }

  v9 = *(ptr + 4);
  if (v5 - 8 < 1)
  {
LABEL_47:
    v14 = 0;
    v12 = 0;
    v10 = 0;
    goto LABEL_13;
  }

LABEL_5:
  v10 = *(ptr + 8);
  if (v5 - 9 < 2)
  {
    v14 = 0;
    v12 = 0;
    goto LABEL_13;
  }

  v11 = bswap32(*(ptr + 9)) >> 16;
  if (v5 - 11 < 2)
  {
    v14 = 0;
    v12 = 0;
    goto LABEL_14;
  }

  v12 = bswap32(*(ptr + 11)) >> 16;
  if (v5 - 13 < 2)
  {
    v14 = 0;
    goto LABEL_14;
  }

  v13 = bswap32(*(ptr + 13)) >> 16;
  if (v5 - 15 < 2)
  {
    v14 = 0;
  }

  else
  {
    v14 = bswap32(*(ptr + 15)) >> 16;
    if (end - (ptr + 17) >= 1)
    {
      v15 = *(ptr + 17);
      goto LABEL_16;
    }
  }

LABEL_15:
  v15 = 0;
LABEL_16:
  self->_discoveryTypesInternal.bitArray[0] |= 0x80u;
  if ([(CBDevice *)self airdropFlags]!= v7)
  {
    [(CBDevice *)self setAirdropFlags:v7];
  }

  airdropTempAuthTagData = [(CBDevice *)self airdropTempAuthTagData];
  v22 = v8;
  v17 = airdropTempAuthTagData;
  if (v22 == v17)
  {

    if (v9 != [(CBDevice *)self airdropModel])
    {
      goto LABEL_36;
    }

LABEL_22:
    if (v10 == [(CBDevice *)self airdropVersion])
    {
      goto LABEL_23;
    }

    goto LABEL_37;
  }

  if ((v22 != 0) == (v17 == 0))
  {

LABEL_35:
    [(CBDevice *)self setAirdropTempAuthTagData:v22];
    if (v9 != [(CBDevice *)self airdropModel])
    {
      goto LABEL_36;
    }

    goto LABEL_22;
  }

  v18 = [v22 isEqual:v17];

  if ((v18 & 1) == 0)
  {
    goto LABEL_35;
  }

  if (v9 == [(CBDevice *)self airdropModel])
  {
    goto LABEL_22;
  }

LABEL_36:
  [(CBDevice *)self setAirdropModel:v9];
  if (v10 == [(CBDevice *)self airdropVersion])
  {
LABEL_23:
    if (v11 == [(CBDevice *)self airdropHash1])
    {
      goto LABEL_24;
    }

    goto LABEL_38;
  }

LABEL_37:
  [(CBDevice *)self setAirdropVersion:v10];
  if (v11 == [(CBDevice *)self airdropHash1])
  {
LABEL_24:
    if (v12 == [(CBDevice *)self airdropHash2])
    {
      goto LABEL_25;
    }

    goto LABEL_39;
  }

LABEL_38:
  [(CBDevice *)self setAirdropHash1:v11];
  if (v12 == [(CBDevice *)self airdropHash2])
  {
LABEL_25:
    if (v13 == [(CBDevice *)self airdropHash3])
    {
      goto LABEL_26;
    }

    goto LABEL_40;
  }

LABEL_39:
  [(CBDevice *)self setAirdropHash2:v12];
  if (v13 == [(CBDevice *)self airdropHash3])
  {
LABEL_26:
    if (v14 == [(CBDevice *)self airdropHash4])
    {
      goto LABEL_27;
    }

    goto LABEL_41;
  }

LABEL_40:
  [(CBDevice *)self setAirdropHash3:v13];
  if (v14 == [(CBDevice *)self airdropHash4])
  {
LABEL_27:
    if (v15 == [(CBDevice *)self airdropConfigData])
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_41:
  [(CBDevice *)self setAirdropHash4:v14];
  if (v15 != [(CBDevice *)self airdropConfigData])
  {
LABEL_28:
    [(CBDevice *)self setAirdropConfigData:v15];
  }

LABEL_29:
}

- (void)_parseMicrosoftManufacturerPtr:(const char *)ptr end:(const char *)end
{
  if (end - ptr >= 1 && *ptr == 3)
  {
    [(CBDevice *)self _parseMicrosoftSwiftPairPtr:ptr + 1 end:?];
  }
}

- (void)_parseMicrosoftSwiftPairPtr:(const char *)ptr end:(const char *)end
{
  ptrCopy = ptr;
  v7 = end - ptr;
  if (end - ptr >= 1)
  {
    ptrCopy = ptr + 1;
    v8 = *ptr;
    if (v8 == [(CBDevice *)self mspSubScenario])
    {
      goto LABEL_3;
    }

LABEL_27:
    [(CBDevice *)self setMspSubScenario:v8];
    v9 = 0x80000000000000;
    v10 = (end - ptrCopy);
    if (v8 != 2)
    {
      goto LABEL_4;
    }

LABEL_28:
    v22 = v7 <= 0 || v10 <= 0;
    v23 = !v22;
    if (v22)
    {
      v24 = ptrCopy;
    }

    else
    {
      v24 = (ptrCopy + 1);
    }

    v25 = (end - v24);
    if (end - v24 <= 2)
    {
      v23 = 0;
    }

    if (v23 == 1)
    {
      v19 = *v24 | (*(v24 + 2) << 16);
      v24 = (v24 + 3);
      v25 = (end - v24);
    }

    else
    {
      v19 = 0;
    }

    v18 = 0;
    v38 = v25 > 0;
    if ((v23 & v38) != 0)
    {
      v20 = v24;
    }

    else
    {
      v20 = 0;
    }

    if ((v23 & v38) != 0)
    {
      v21 = v25;
    }

    else
    {
      v21 = 0;
    }

    goto LABEL_79;
  }

  v8 = 0;
  if ([(CBDevice *)self mspSubScenario])
  {
    goto LABEL_27;
  }

LABEL_3:
  v9 = 0;
  v10 = (end - ptrCopy);
  if (v8 == 2)
  {
    goto LABEL_28;
  }

LABEL_4:
  if (v8 != 1)
  {
    v11 = v7 <= 0 || v10 <= 0;
    v12 = !v11;
    if (v11)
    {
      v13 = ptrCopy;
    }

    else
    {
      v13 = ptrCopy + 1;
    }

    v14 = end - v13 > 0;
    v15 = (v12 & v14) == 0;
    if ((v12 & v14) != 0)
    {
      v16 = v13;
    }

    else
    {
      v16 = 0;
    }

    if (v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = (end - v13);
    }

    v18 = 0;
    v19 = 0;
    if (v8)
    {
      v20 = 0;
    }

    else
    {
      v20 = v16;
    }

    if (v8)
    {
      v21 = 0;
    }

    else
    {
      v21 = v17;
    }

    goto LABEL_79;
  }

  v26 = v7 <= 0 || v10 <= 0;
  v27 = !v26;
  if (v26)
  {
    v28 = ptrCopy;
  }

  else
  {
    v28 = ptrCopy + 1;
  }

  v29 = v27 & (end - v28 > 5);
  if (v29)
  {
    v18 = v28;
  }

  else
  {
    v18 = 0;
  }

  v30 = 6;
  if (!v29)
  {
    v30 = 0;
  }

  v31 = &v28[v30];
  v32 = (end - v31);
  v33 = v29 & (end - v31 > 2);
  if (v33 == 1)
  {
    v19 = *v31 | (*(v31 + 2) << 16);
    v34 = v31 + 3;
    v35 = (end - v34);
    v36 = end - v34 > 0;
    if (end - v34 <= 0)
    {
      v20 = 0;
    }

    else
    {
      v20 = v34;
    }

    if (v36)
    {
      v21 = v35;
    }

    else
    {
      v21 = 0;
    }

    if (!v18)
    {
      goto LABEL_79;
    }

LABEL_71:
    v18 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v18 length:6];
    goto LABEL_79;
  }

  v19 = 0;
  v37 = v32 > 0;
  if ((v33 & v37) != 0)
  {
    v20 = v31;
  }

  else
  {
    v20 = 0;
  }

  if ((v33 & v37) != 0)
  {
    v21 = v32;
  }

  else
  {
    v21 = 0;
  }

  if (v18)
  {
    goto LABEL_71;
  }

LABEL_79:
  mspAddressData = [(CBDevice *)self mspAddressData];
  v48 = v18;
  v40 = mspAddressData;
  if (v48 == v40)
  {

    if (v19 != [(CBDevice *)self mspDeviceClass])
    {
      goto LABEL_90;
    }

LABEL_83:
    if (v20)
    {
      goto LABEL_84;
    }

LABEL_91:
    v42 = 0;
    goto LABEL_92;
  }

  if ((v48 != 0) == (v40 == 0))
  {

LABEL_89:
    [(CBDevice *)self setMspAddressData:v48];
    v9 = 0x80000000000000;
    if (v19 != [(CBDevice *)self mspDeviceClass])
    {
      goto LABEL_90;
    }

    goto LABEL_83;
  }

  v41 = [v48 isEqual:v40];

  if ((v41 & 1) == 0)
  {
    goto LABEL_89;
  }

  if (v19 == [(CBDevice *)self mspDeviceClass])
  {
    goto LABEL_83;
  }

LABEL_90:
  [(CBDevice *)self setMspDeviceClass:v19];
  v9 = 0x80000000000000;
  if (!v20)
  {
    goto LABEL_91;
  }

LABEL_84:
  v42 = strnlen(v20, v21);
  if (v42)
  {
    v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v20 length:v42 encoding:4];
  }

LABEL_92:
  mspDisplayName = [(CBDevice *)self mspDisplayName];
  v44 = v42;
  v45 = mspDisplayName;
  v46 = v45;
  if (v44 == v45)
  {

    goto LABEL_99;
  }

  if ((v44 != 0) == (v45 == 0))
  {

    goto LABEL_98;
  }

  v47 = [v44 isEqual:v45];

  if ((v47 & 1) == 0)
  {
LABEL_98:
    [(CBDevice *)self setMspDisplayName:v44];
    v9 = 0x80000000000000;
  }

LABEL_99:
  self->_discoveryFlags |= 0x80000000000000uLL;
  self->_changeFlags |= v9;
}

- (BOOL)isEqualToDevice:(id)device exactMatch:(BOOL)match
{
  matchCopy = match;
  deviceCopy = device;
  accessoryStatusFlags = [(CBDevice *)self accessoryStatusFlags];
  v8 = [(CBDevice *)self connectedServices]| accessoryStatusFlags;
  discoveryFlags = self->_discoveryFlags;
  v10 = self->_deviceFlags | v8;
  v11 = v10 | discoveryFlags | [(CBDevice *)self gapaFlags];
  v12 = [(CBDevice *)self listeningModeConfigs]| self->_supportedServices;
  v13 = v11 | v12 | [(CBDevice *)self airdropFlags];
  airplaySourceFlags = [(CBDevice *)self airplaySourceFlags];
  v15 = airplaySourceFlags | [(CBDevice *)self airplayTargetFlags];
  v16 = v15 | [(CBDevice *)self dsActionFlags];
  v17 = v16 | [(CBDevice *)self peerStatusFlag];
  v18 = v13 | v17 | [(CBDevice *)self homeKitV1Flags];
  nearbyActionFlags = [(CBDevice *)self nearbyActionFlags];
  v20 = nearbyActionFlags | [(CBDevice *)self nearbyActionV2Flags];
  v21 = v20 | [(CBDevice *)self nearbyInfoFlags];
  v22 = v21 | [(CBDevice *)self nearbyInfoV2Flags];
  v23 = v22 | [(CBDevice *)self nearbyInfoV2InvitationTypes];
  v24 = v18 | v23 | [(CBDevice *)self proximityServiceFlags];
  spatialInteractionFlags = [(CBDevice *)self spatialInteractionFlags];
  if (!(v24 | spatialInteractionFlags | [(CBDevice *)self tipiState]))
  {
    LOBYTE(v27) = 0;
    bleAddressData = self->_accountID;
    if (bleAddressData)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

  v26 = [(CBDevice *)self _matchingFlags:deviceCopy exactMatch:matchCopy];
  LOBYTE(v27) = v26;
  if (!matchCopy || v26)
  {
    bleAddressData = self->_accountID;
    if (bleAddressData)
    {
LABEL_5:
      accountID = [deviceCopy accountID];
      v30 = accountID;
      if (accountID)
      {
        if (bleAddressData == accountID)
        {
          if (!matchCopy)
          {
            if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
            {
              goto LABEL_368;
            }

            goto LABEL_151;
          }

          if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
          {
            v356 = bleAddressData;
            v375 = v30;
            LogPrintF_safe();
          }

LABEL_26:
          LOBYTE(v27) = 1;

          adaptiveVolumeCapability = [(CBDevice *)self adaptiveVolumeCapability];
          if (!adaptiveVolumeCapability)
          {
            goto LABEL_41;
          }

          goto LABEL_27;
        }

        v31 = bleAddressData;
        v32 = [(NSString *)v31 isEqual:v30];

        if (v32)
        {
          if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
          {
            v356 = v31;
            v375 = v30;
            LogPrintF_safe();
          }

          if (!matchCopy)
          {
            goto LABEL_368;
          }

          goto LABEL_26;
        }

        LOBYTE(v27) = 0;
      }

      adaptiveVolumeCapability = [(CBDevice *)self adaptiveVolumeCapability];
      if (!adaptiveVolumeCapability)
      {
        goto LABEL_41;
      }

LABEL_27:
      v34 = adaptiveVolumeCapability;
      adaptiveVolumeCapability2 = [deviceCopy adaptiveVolumeCapability];
      if (matchCopy)
      {
        if (!adaptiveVolumeCapability2)
        {
          goto LABEL_41;
        }

        if (adaptiveVolumeCapability2 == v34)
        {
          if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
          {
            [CBDevice isEqualToDevice:exactMatch:];
          }

          LOBYTE(v27) = 1;
LABEL_41:
          v36 = [(CBDevice *)self adaptiveVolumeConfig:v356];
          if (!v36)
          {
            goto LABEL_56;
          }

          v37 = v36;
          adaptiveVolumeConfig = [deviceCopy adaptiveVolumeConfig];
          if (matchCopy)
          {
            if (!adaptiveVolumeConfig)
            {
              goto LABEL_56;
            }

            if (adaptiveVolumeConfig == v37)
            {
              if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
              {
                [CBDevice isEqualToDevice:exactMatch:];
              }

              LOBYTE(v27) = 1;
LABEL_56:
              appearanceValue = [(CBDevice *)self appearanceValue];
              if (appearanceValue)
              {
                v40 = appearanceValue;
                appearanceValue2 = [deviceCopy appearanceValue];
                if (appearanceValue2)
                {
                  if (v40 == appearanceValue2)
                  {
                    if (gLogCategory_CBDevice >= 31)
                    {
                      LOBYTE(v27) = 1;
                      if (!matchCopy)
                      {
                        goto LABEL_1235;
                      }
                    }

                    else if (gLogCategory_CBDevice != -1 || _LogCategory_Initialize())
                    {
                      [CBDevice isEqualToDevice:v40 exactMatch:?];
                      LOBYTE(v27) = 1;
                      if (!matchCopy)
                      {
                        goto LABEL_1235;
                      }
                    }

                    else
                    {
                      LOBYTE(v27) = 1;
                      if (!matchCopy)
                      {
                        goto LABEL_1235;
                      }
                    }
                  }

                  else
                  {
                    LOBYTE(v27) = 0;
                  }
                }
              }

              audioStreamState = [(CBDevice *)self audioStreamState];
              if (audioStreamState)
              {
                v43 = audioStreamState;
                audioStreamState2 = [deviceCopy audioStreamState];
                if (matchCopy)
                {
                  if (!audioStreamState2)
                  {
                    goto LABEL_80;
                  }

                  if (v43 == audioStreamState2)
                  {
                    if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                    {
                      [CBDevice isEqualToDevice:exactMatch:];
                    }

                    LOBYTE(v27) = 1;
                    goto LABEL_80;
                  }
                }

                else
                {
                  if (!audioStreamState2)
                  {
                    goto LABEL_80;
                  }

                  if (v43 == audioStreamState2)
                  {
                    if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                    {
                      [CBDevice isEqualToDevice:exactMatch:];
                    }

                    goto LABEL_1234;
                  }
                }

                LOBYTE(v27) = 0;
              }

LABEL_80:
              autoAncCapability = [(CBDevice *)self autoAncCapability];
              if (!autoAncCapability)
              {
                goto LABEL_95;
              }

              v46 = autoAncCapability;
              autoAncCapability2 = [deviceCopy autoAncCapability];
              if (matchCopy)
              {
                if (!autoAncCapability2)
                {
                  goto LABEL_95;
                }

                if (autoAncCapability2 == v46)
                {
                  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                  {
                    [CBDevice isEqualToDevice:exactMatch:];
                  }

                  LOBYTE(v27) = 1;
LABEL_95:
                  bleAddressData = [(CBDevice *)self bleAddressData];
                  if (!bleAddressData)
                  {
                    goto LABEL_113;
                  }

                  bleAddressData2 = [deviceCopy bleAddressData];
                  v30 = bleAddressData2;
                  if (bleAddressData2)
                  {
                    if (bleAddressData == bleAddressData2)
                    {
                      if (!matchCopy)
                      {
                        if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                        {
                          [CBDevice isEqualToDevice:bleAddressData exactMatch:v30];
                        }

                        goto LABEL_368;
                      }

                      if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                      {
                        [CBDevice isEqualToDevice:bleAddressData exactMatch:v30];
                      }
                    }

                    else
                    {
                      v49 = bleAddressData;
                      v50 = [(NSString *)v49 isEqual:v30];

                      if (!v50)
                      {
                        LOBYTE(v27) = 0;
                        goto LABEL_112;
                      }

                      if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                      {
                        [CBDevice isEqualToDevice:v49 exactMatch:v30];
                        if (!matchCopy)
                        {
                          goto LABEL_368;
                        }
                      }

                      else if (!matchCopy)
                      {
                        goto LABEL_368;
                      }
                    }

                    LOBYTE(v27) = 1;
                  }

LABEL_112:

LABEL_113:
                  bleAddressData = [(CBDevice *)self btAddressData];
                  if (!bleAddressData)
                  {
LABEL_129:

                    bleAddressData = [(CBDevice *)self caseVersion];
                    if (!bleAddressData)
                    {
LABEL_160:

                      clickHoldModeLeft = [(CBDevice *)self clickHoldModeLeft];
                      if (clickHoldModeLeft)
                      {
                        v58 = clickHoldModeLeft;
                        clickHoldModeLeft2 = [deviceCopy clickHoldModeLeft];
                        if (clickHoldModeLeft2)
                        {
                          if (clickHoldModeLeft2 == v58)
                          {
                            if (gLogCategory_CBDevice >= 31)
                            {
                              LOBYTE(v27) = 1;
                              if (!matchCopy)
                              {
                                goto LABEL_1235;
                              }
                            }

                            else if (gLogCategory_CBDevice != -1 || _LogCategory_Initialize())
                            {
                              [CBDevice isEqualToDevice:exactMatch:];
                              LOBYTE(v27) = 1;
                              if (!matchCopy)
                              {
                                goto LABEL_1235;
                              }
                            }

                            else
                            {
                              LOBYTE(v27) = 1;
                              if (!matchCopy)
                              {
                                goto LABEL_1235;
                              }
                            }
                          }

                          else
                          {
                            LOBYTE(v27) = 0;
                          }
                        }
                      }

                      v60 = [(CBDevice *)self clickHoldModeRight:v357];
                      if (v60)
                      {
                        v61 = v60;
                        clickHoldModeRight = [deviceCopy clickHoldModeRight];
                        if (clickHoldModeRight)
                        {
                          if (clickHoldModeRight == v61)
                          {
                            if (gLogCategory_CBDevice >= 31)
                            {
                              LOBYTE(v27) = 1;
                              if (!matchCopy)
                              {
                                goto LABEL_1235;
                              }
                            }

                            else if (gLogCategory_CBDevice != -1 || _LogCategory_Initialize())
                            {
                              [CBDevice isEqualToDevice:exactMatch:];
                              LOBYTE(v27) = 1;
                              if (!matchCopy)
                              {
                                goto LABEL_1235;
                              }
                            }

                            else
                            {
                              LOBYTE(v27) = 1;
                              if (!matchCopy)
                              {
                                goto LABEL_1235;
                              }
                            }
                          }

                          else
                          {
                            LOBYTE(v27) = 0;
                          }
                        }
                      }

                      v63 = self->_contactID;
                      if (!v63)
                      {
LABEL_201:

                        conversationDetectCapability = [(CBDevice *)self conversationDetectCapability];
                        if (!conversationDetectCapability)
                        {
                          goto LABEL_216;
                        }

                        v70 = conversationDetectCapability;
                        conversationDetectCapability2 = [deviceCopy conversationDetectCapability];
                        if (matchCopy)
                        {
                          if (!conversationDetectCapability2)
                          {
                            goto LABEL_216;
                          }

                          if (conversationDetectCapability2 == v70)
                          {
                            if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                            {
                              [CBDevice isEqualToDevice:exactMatch:];
                            }

                            LOBYTE(v27) = 1;
LABEL_216:
                            v72 = [(CBDevice *)self conversationDetectConfig:v358];
                            if (!v72)
                            {
                              goto LABEL_231;
                            }

                            v73 = v72;
                            conversationDetectConfig = [deviceCopy conversationDetectConfig];
                            if (matchCopy)
                            {
                              if (!conversationDetectConfig)
                              {
                                goto LABEL_231;
                              }

                              if (conversationDetectConfig == v73)
                              {
                                if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                {
                                  [CBDevice isEqualToDevice:exactMatch:];
                                }

                                LOBYTE(v27) = 1;
LABEL_231:
                                crownRotationDirection = [(CBDevice *)self crownRotationDirection];
                                if (crownRotationDirection == 1)
                                {
                                  v76 = @"BackToFront";
                                }

                                else
                                {
                                  v76 = @"?";
                                }

                                if (crownRotationDirection == 2)
                                {
                                  v77 = @"FrontToBack";
                                }

                                else
                                {
                                  v77 = v76;
                                }

                                if (!crownRotationDirection)
                                {
                                  goto LABEL_264;
                                }

                                v78 = crownRotationDirection;
                                crownRotationDirection2 = [deviceCopy crownRotationDirection];
                                if (matchCopy)
                                {
                                  if (!crownRotationDirection2)
                                  {
                                    goto LABEL_264;
                                  }

                                  if (crownRotationDirection2 == 1)
                                  {
                                    v80 = @"BackToFront";
                                  }

                                  else
                                  {
                                    v80 = @"?";
                                  }

                                  if (crownRotationDirection2 == 2)
                                  {
                                    v81 = @"FrontToBack";
                                  }

                                  else
                                  {
                                    v81 = v80;
                                  }

                                  if (crownRotationDirection2 == v78)
                                  {
                                    if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                    {
                                      [CBDevice isEqualToDevice:v77 exactMatch:v81];
                                    }

                                    LOBYTE(v27) = 1;
LABEL_264:
                                    deviceType = self->_deviceType;
                                    if (!deviceType)
                                    {
                                      goto LABEL_279;
                                    }

                                    deviceType = [deviceCopy deviceType];
                                    if (matchCopy)
                                    {
                                      if (!deviceType)
                                      {
                                        goto LABEL_279;
                                      }

                                      if (deviceType == deviceType)
                                      {
                                        if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                        {
                                          [CBDevice isEqualToDevice:? exactMatch:?];
                                        }

                                        LOBYTE(v27) = 1;
LABEL_279:
                                        doubleTapActionLeft = [(CBDevice *)self doubleTapActionLeft];
                                        if (!doubleTapActionLeft)
                                        {
                                          goto LABEL_294;
                                        }

                                        v87 = doubleTapActionLeft;
                                        doubleTapActionLeft2 = [deviceCopy doubleTapActionLeft];
                                        if (matchCopy)
                                        {
                                          if (!doubleTapActionLeft2)
                                          {
                                            goto LABEL_294;
                                          }

                                          if (v87 == doubleTapActionLeft2)
                                          {
                                            if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                            {
                                              [CBDevice isEqualToDevice:exactMatch:];
                                            }

                                            LOBYTE(v27) = 1;
LABEL_294:
                                            doubleTapActionRight = [(CBDevice *)self doubleTapActionRight];
                                            if (!doubleTapActionRight)
                                            {
                                              goto LABEL_309;
                                            }

                                            v90 = doubleTapActionRight;
                                            doubleTapActionRight2 = [deviceCopy doubleTapActionRight];
                                            if (matchCopy)
                                            {
                                              if (!doubleTapActionRight2)
                                              {
                                                goto LABEL_309;
                                              }

                                              if (v90 == doubleTapActionRight2)
                                              {
                                                if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                {
                                                  [CBDevice isEqualToDevice:exactMatch:];
                                                }

                                                LOBYTE(v27) = 1;
LABEL_309:
                                                doubleTapCapability = [(CBDevice *)self doubleTapCapability];
                                                if (!doubleTapCapability)
                                                {
                                                  goto LABEL_324;
                                                }

                                                v93 = doubleTapCapability;
                                                doubleTapCapability2 = [deviceCopy doubleTapCapability];
                                                if (matchCopy)
                                                {
                                                  if (!doubleTapCapability2)
                                                  {
                                                    goto LABEL_324;
                                                  }

                                                  if (v93 == doubleTapCapability2)
                                                  {
                                                    if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                    {
                                                      [CBDevice isEqualToDevice:exactMatch:];
                                                    }

                                                    LOBYTE(v27) = 1;
LABEL_324:
                                                    endCallCapability = [(CBDevice *)self endCallCapability];
                                                    if (!endCallCapability)
                                                    {
                                                      goto LABEL_339;
                                                    }

                                                    v96 = endCallCapability;
                                                    endCallCapability2 = [deviceCopy endCallCapability];
                                                    if (matchCopy)
                                                    {
                                                      if (!endCallCapability2)
                                                      {
                                                        goto LABEL_339;
                                                      }

                                                      if (endCallCapability2 == v96)
                                                      {
                                                        if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                        {
                                                          [CBDevice isEqualToDevice:exactMatch:];
                                                        }

                                                        LOBYTE(v27) = 1;
LABEL_339:
                                                        endCallConfig = [(CBDevice *)self endCallConfig];
                                                        if (endCallConfig)
                                                        {
                                                          v99 = endCallConfig;
                                                          endCallConfig2 = [deviceCopy endCallConfig];
                                                          if (endCallConfig2)
                                                          {
                                                            if (endCallConfig2 == v99)
                                                            {
                                                              if (gLogCategory_CBDevice >= 31)
                                                              {
                                                                LOBYTE(v27) = 1;
                                                                if (!matchCopy)
                                                                {
                                                                  goto LABEL_1235;
                                                                }
                                                              }

                                                              else if (gLogCategory_CBDevice != -1 || _LogCategory_Initialize())
                                                              {
                                                                [CBDevice isEqualToDevice:exactMatch:];
                                                                LOBYTE(v27) = 1;
                                                                if (!matchCopy)
                                                                {
                                                                  goto LABEL_1235;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                LOBYTE(v27) = 1;
                                                                if (!matchCopy)
                                                                {
                                                                  goto LABEL_1235;
                                                                }
                                                              }
                                                            }

                                                            else
                                                            {
                                                              LOBYTE(v27) = 0;
                                                            }
                                                          }
                                                        }

                                                        v101 = self->_firmwareVersion;
                                                        if (!v101)
                                                        {
LABEL_381:

                                                          frequencyBand = [(CBDevice *)self frequencyBand];
                                                          if (frequencyBand == 1)
                                                          {
                                                            v106 = "2.4";
                                                          }

                                                          else
                                                          {
                                                            v106 = "?";
                                                          }

                                                          if (frequencyBand == 2)
                                                          {
                                                            v107 = "5";
                                                          }

                                                          else
                                                          {
                                                            v107 = v106;
                                                          }

                                                          if (!frequencyBand)
                                                          {
                                                            goto LABEL_418;
                                                          }

                                                          v108 = frequencyBand;
                                                          frequencyBand2 = [deviceCopy frequencyBand];
                                                          if (matchCopy)
                                                          {
                                                            if (!frequencyBand2)
                                                            {
                                                              goto LABEL_418;
                                                            }

                                                            if (frequencyBand2 == 1)
                                                            {
                                                              v110 = "2.4";
                                                            }

                                                            else
                                                            {
                                                              v110 = "?";
                                                            }

                                                            if (frequencyBand2 == 2)
                                                            {
                                                              v111 = "5";
                                                            }

                                                            else
                                                            {
                                                              v111 = v110;
                                                            }

                                                            if (frequencyBand2 == v108)
                                                            {
                                                              if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                              {
                                                                v359 = v107;
                                                                v378 = v111;
                                                                LogPrintF_safe();
                                                              }

                                                              LOBYTE(v27) = 1;
LABEL_418:
                                                              v112 = [(CBDevice *)self gfpModelID:v359];
                                                              if (!v112)
                                                              {
                                                                goto LABEL_433;
                                                              }

                                                              v113 = v112;
                                                              gfpModelID = [deviceCopy gfpModelID];
                                                              if (matchCopy)
                                                              {
                                                                if (!gfpModelID)
                                                                {
                                                                  goto LABEL_433;
                                                                }

                                                                if (v113 == gfpModelID)
                                                                {
                                                                  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                  {
                                                                    [CBDevice isEqualToDevice:exactMatch:];
                                                                  }

                                                                  LOBYTE(v27) = 1;
LABEL_433:
                                                                  hearingAidSupport = [(CBDevice *)self hearingAidSupport];
                                                                  if (hearingAidSupport == 1)
                                                                  {
                                                                    v116 = "Yes";
                                                                  }

                                                                  else
                                                                  {
                                                                    v116 = "?";
                                                                  }

                                                                  if (hearingAidSupport == 2)
                                                                  {
                                                                    v117 = "No";
                                                                  }

                                                                  else
                                                                  {
                                                                    v117 = v116;
                                                                  }

                                                                  if (!hearingAidSupport)
                                                                  {
                                                                    goto LABEL_463;
                                                                  }

                                                                  v118 = hearingAidSupport;
                                                                  hearingAidSupport2 = [deviceCopy hearingAidSupport];
                                                                  if (matchCopy)
                                                                  {
                                                                    if (hearingAidSupport2)
                                                                    {
                                                                      if (hearingAidSupport2 == 1)
                                                                      {
                                                                        v120 = "Yes";
                                                                      }

                                                                      else
                                                                      {
                                                                        v120 = "?";
                                                                      }

                                                                      if (hearingAidSupport2 == 2)
                                                                      {
                                                                        v121 = "No";
                                                                      }

                                                                      else
                                                                      {
                                                                        v121 = v120;
                                                                      }

                                                                      if (v118 == hearingAidSupport2)
                                                                      {
                                                                        if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                        {
                                                                          v360 = v117;
                                                                          v379 = v121;
                                                                          LogPrintF_safe();
                                                                        }

                                                                        LOBYTE(v27) = 1;
                                                                        goto LABEL_463;
                                                                      }

                                                                      goto LABEL_454;
                                                                    }
                                                                  }

                                                                  else if (hearingAidSupport2)
                                                                  {
                                                                    if (v118 == hearingAidSupport2)
                                                                    {
                                                                      goto LABEL_484;
                                                                    }

LABEL_454:
                                                                    LOBYTE(v27) = 0;
                                                                  }

LABEL_463:
                                                                  v122 = [(CBDevice *)self hearingTestSupport:v360];
                                                                  if (v122 == 1)
                                                                  {
                                                                    v123 = "Yes";
                                                                  }

                                                                  else
                                                                  {
                                                                    v123 = "?";
                                                                  }

                                                                  if (v122 == 2)
                                                                  {
                                                                    v124 = "No";
                                                                  }

                                                                  else
                                                                  {
                                                                    v124 = v123;
                                                                  }

                                                                  if (!v122)
                                                                  {
                                                                    goto LABEL_493;
                                                                  }

                                                                  v125 = v122;
                                                                  hearingTestSupport = [deviceCopy hearingTestSupport];
                                                                  if (matchCopy)
                                                                  {
                                                                    if (!hearingTestSupport)
                                                                    {
                                                                      goto LABEL_493;
                                                                    }

                                                                    if (hearingTestSupport == 1)
                                                                    {
                                                                      v127 = "Yes";
                                                                    }

                                                                    else
                                                                    {
                                                                      v127 = "?";
                                                                    }

                                                                    if (hearingTestSupport == 2)
                                                                    {
                                                                      v128 = "No";
                                                                    }

                                                                    else
                                                                    {
                                                                      v128 = v127;
                                                                    }

                                                                    if (v125 == hearingTestSupport)
                                                                    {
                                                                      if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                      {
                                                                        v361 = v124;
                                                                        v380 = v128;
                                                                        LogPrintF_safe();
                                                                      }

                                                                      LOBYTE(v27) = 1;
LABEL_493:
                                                                      v129 = self->_identifier;
                                                                      if (!v129)
                                                                      {
                                                                        goto LABEL_512;
                                                                      }

                                                                      identifier = [deviceCopy identifier];
                                                                      if (identifier)
                                                                      {
                                                                        v65 = v129;
                                                                        v131 = identifier;
                                                                        v67 = v131;
                                                                        if (v129 == identifier)
                                                                        {

                                                                          if (!matchCopy)
                                                                          {
                                                                            if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
                                                                            {
                                                                              goto LABEL_1233;
                                                                            }

                                                                            goto LABEL_1232;
                                                                          }

                                                                          if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                          {
                                                                            v361 = v65;
                                                                            v380 = v67;
                                                                            LogPrintF_safe();
                                                                          }

                                                                          goto LABEL_510;
                                                                        }

                                                                        v132 = [(NSString *)v65 isEqual:v131];

                                                                        if (v132)
                                                                        {
                                                                          if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                          {
                                                                            v361 = v65;
                                                                            v380 = v67;
                                                                            LogPrintF_safe();
                                                                          }

                                                                          if (!matchCopy)
                                                                          {
                                                                            goto LABEL_1233;
                                                                          }

LABEL_510:
                                                                          LOBYTE(v27) = 1;
                                                                          goto LABEL_511;
                                                                        }

                                                                        LOBYTE(v27) = 0;
                                                                      }

LABEL_511:

LABEL_512:
                                                                      v133 = self->_idsDeviceID;
                                                                      if (!v133)
                                                                      {
                                                                        goto LABEL_531;
                                                                      }

                                                                      idsDeviceID = [deviceCopy idsDeviceID];
                                                                      if (idsDeviceID)
                                                                      {
                                                                        v65 = v133;
                                                                        v135 = idsDeviceID;
                                                                        v67 = v135;
                                                                        if (v133 == idsDeviceID)
                                                                        {

                                                                          if (!matchCopy)
                                                                          {
                                                                            if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
                                                                            {
                                                                              goto LABEL_1233;
                                                                            }

                                                                            goto LABEL_1232;
                                                                          }

                                                                          if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                          {
                                                                            v361 = v65;
                                                                            v380 = v67;
                                                                            LogPrintF_safe();
                                                                          }

                                                                          goto LABEL_529;
                                                                        }

                                                                        v136 = [(NSString *)v65 isEqual:v135];

                                                                        if (v136)
                                                                        {
                                                                          if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                          {
                                                                            v361 = v65;
                                                                            v380 = v67;
                                                                            LogPrintF_safe();
                                                                          }

                                                                          if (!matchCopy)
                                                                          {
                                                                            goto LABEL_1233;
                                                                          }

LABEL_529:
                                                                          LOBYTE(v27) = 1;
                                                                          goto LABEL_530;
                                                                        }

                                                                        LOBYTE(v27) = 0;
                                                                      }

LABEL_530:

LABEL_531:
                                                                      interval = self->_interval;
                                                                      if (!self->_interval)
                                                                      {
                                                                        goto LABEL_551;
                                                                      }

                                                                      interval = [deviceCopy interval];
                                                                      v139 = interval;
                                                                      if (matchCopy)
                                                                      {
                                                                        if (!interval)
                                                                        {
                                                                          goto LABEL_551;
                                                                        }

                                                                        if (interval == interval)
                                                                        {
                                                                          if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                          {
                                                                            v361 = interval;
                                                                            v380 = v139;
                                                                            LogPrintF_safe();
                                                                          }

                                                                          LOBYTE(v27) = 1;
LABEL_551:
                                                                          v140 = [(CBDevice *)self leAdvName:v361];
                                                                          if (!v140)
                                                                          {
                                                                            goto LABEL_570;
                                                                          }

                                                                          leAdvName = [deviceCopy leAdvName];
                                                                          if (leAdvName)
                                                                          {
                                                                            v65 = v140;
                                                                            v142 = leAdvName;
                                                                            v67 = v142;
                                                                            if (v140 == leAdvName)
                                                                            {

                                                                              if (!matchCopy)
                                                                              {
                                                                                if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
                                                                                {
                                                                                  goto LABEL_1233;
                                                                                }

                                                                                goto LABEL_1232;
                                                                              }

                                                                              if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                              {
                                                                                v362 = v65;
                                                                                v381 = v67;
                                                                                LogPrintF_safe();
                                                                              }

                                                                              goto LABEL_568;
                                                                            }

                                                                            v143 = [(NSString *)v65 isEqual:v142];

                                                                            if (v143)
                                                                            {
                                                                              if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                              {
                                                                                v362 = v65;
                                                                                v381 = v67;
                                                                                LogPrintF_safe();
                                                                              }

                                                                              if (!matchCopy)
                                                                              {
                                                                                goto LABEL_1233;
                                                                              }

LABEL_568:
                                                                              LOBYTE(v27) = 1;
                                                                              goto LABEL_569;
                                                                            }

                                                                            LOBYTE(v27) = 0;
                                                                          }

LABEL_569:

LABEL_570:
                                                                          listeningMode = [(CBDevice *)self listeningMode];
                                                                          if (!listeningMode)
                                                                          {
                                                                            goto LABEL_585;
                                                                          }

                                                                          v145 = listeningMode;
                                                                          listeningMode2 = [deviceCopy listeningMode];
                                                                          if (matchCopy)
                                                                          {
                                                                            if (!listeningMode2)
                                                                            {
                                                                              goto LABEL_585;
                                                                            }

                                                                            if (v145 == listeningMode2)
                                                                            {
                                                                              if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                              {
                                                                                [CBDevice isEqualToDevice:exactMatch:];
                                                                              }

                                                                              LOBYTE(v27) = 1;
LABEL_585:
                                                                              v147 = [(CBDevice *)self microphoneMode:v362];
                                                                              if (!v147)
                                                                              {
                                                                                goto LABEL_600;
                                                                              }

                                                                              v148 = v147;
                                                                              microphoneMode = [deviceCopy microphoneMode];
                                                                              if (matchCopy)
                                                                              {
                                                                                if (!microphoneMode)
                                                                                {
                                                                                  goto LABEL_600;
                                                                                }

                                                                                if (v148 == microphoneMode)
                                                                                {
                                                                                  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                  {
                                                                                    [CBDevice isEqualToDevice:exactMatch:];
                                                                                  }

                                                                                  LOBYTE(v27) = 1;
LABEL_600:
                                                                                  model = [(CBDevice *)self model];
                                                                                  if (!model)
                                                                                  {
                                                                                    goto LABEL_629;
                                                                                  }

                                                                                  model2 = [deviceCopy model];
                                                                                  if (model2)
                                                                                  {
                                                                                    v65 = model;
                                                                                    v152 = model2;
                                                                                    v67 = v152;
                                                                                    if (model == model2)
                                                                                    {

                                                                                      if (!matchCopy)
                                                                                      {
                                                                                        if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
                                                                                        {
                                                                                          goto LABEL_1233;
                                                                                        }

                                                                                        goto LABEL_1232;
                                                                                      }

                                                                                      if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                      {
                                                                                        v363 = v65;
                                                                                        v382 = v67;
                                                                                        LogPrintF_safe();
                                                                                      }

                                                                                      goto LABEL_627;
                                                                                    }

                                                                                    v153 = [(NSString *)v65 isEqual:v152];

                                                                                    if (v153)
                                                                                    {
                                                                                      if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                      {
                                                                                        v363 = v65;
                                                                                        v382 = v67;
                                                                                        LogPrintF_safe();
                                                                                      }

                                                                                      if (!matchCopy)
                                                                                      {
                                                                                        goto LABEL_1233;
                                                                                      }

LABEL_627:
                                                                                      LOBYTE(v27) = 1;
                                                                                      goto LABEL_628;
                                                                                    }

                                                                                    LOBYTE(v27) = 0;
                                                                                  }

LABEL_628:

LABEL_629:
                                                                                  modelUser = [(CBDevice *)self modelUser];
                                                                                  if (!modelUser)
                                                                                  {
                                                                                    goto LABEL_649;
                                                                                  }

                                                                                  modelUser2 = [deviceCopy modelUser];
                                                                                  if (modelUser2)
                                                                                  {
                                                                                    v65 = modelUser;
                                                                                    v156 = modelUser2;
                                                                                    v67 = v156;
                                                                                    if (modelUser == modelUser2)
                                                                                    {

                                                                                      if (!matchCopy)
                                                                                      {
                                                                                        if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
                                                                                        {
                                                                                          goto LABEL_1233;
                                                                                        }

                                                                                        goto LABEL_1232;
                                                                                      }

                                                                                      if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                      {
                                                                                        v363 = v65;
                                                                                        v382 = v67;
                                                                                        LogPrintF_safe();
                                                                                      }

                                                                                      goto LABEL_647;
                                                                                    }

                                                                                    v157 = [(NSString *)v65 isEqual:v156];

                                                                                    if (v157)
                                                                                    {
                                                                                      if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                      {
                                                                                        v363 = v65;
                                                                                        v382 = v67;
                                                                                        LogPrintF_safe();
                                                                                      }

                                                                                      if (!matchCopy)
                                                                                      {
                                                                                        goto LABEL_1233;
                                                                                      }

LABEL_647:
                                                                                      LOBYTE(v27) = 1;
                                                                                      goto LABEL_648;
                                                                                    }

                                                                                    LOBYTE(v27) = 0;
                                                                                  }

LABEL_648:

LABEL_649:
                                                                                  mspAddressData = [(CBDevice *)self mspAddressData];
                                                                                  if (!mspAddressData)
                                                                                  {
                                                                                    goto LABEL_665;
                                                                                  }

                                                                                  mspAddressData2 = [deviceCopy mspAddressData];
                                                                                  if (mspAddressData2)
                                                                                  {
                                                                                    v65 = mspAddressData;
                                                                                    v160 = mspAddressData2;
                                                                                    v67 = v160;
                                                                                    if (mspAddressData == mspAddressData2)
                                                                                    {

                                                                                      if (!matchCopy)
                                                                                      {
                                                                                        if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                        {
                                                                                          [CBDevice isEqualToDevice:v65 exactMatch:v67];
                                                                                        }

                                                                                        goto LABEL_1233;
                                                                                      }

                                                                                      if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                      {
                                                                                        [CBDevice isEqualToDevice:v65 exactMatch:v67];
                                                                                      }
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v161 = [(NSString *)v65 isEqual:v160];

                                                                                      if (!v161)
                                                                                      {
                                                                                        LOBYTE(v27) = 0;
                                                                                        goto LABEL_664;
                                                                                      }

                                                                                      if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                      {
                                                                                        [CBDevice isEqualToDevice:v65 exactMatch:v67];
                                                                                        if (!matchCopy)
                                                                                        {
                                                                                          goto LABEL_1233;
                                                                                        }
                                                                                      }

                                                                                      else if (!matchCopy)
                                                                                      {
                                                                                        goto LABEL_1233;
                                                                                      }
                                                                                    }

                                                                                    LOBYTE(v27) = 1;
                                                                                  }

LABEL_664:

LABEL_665:
                                                                                  mspDeviceClass = [(CBDevice *)self mspDeviceClass];
                                                                                  if (!mspDeviceClass)
                                                                                  {
                                                                                    goto LABEL_680;
                                                                                  }

                                                                                  v163 = mspDeviceClass;
                                                                                  mspDeviceClass2 = [deviceCopy mspDeviceClass];
                                                                                  if (matchCopy)
                                                                                  {
                                                                                    if (!mspDeviceClass2)
                                                                                    {
                                                                                      goto LABEL_680;
                                                                                    }

                                                                                    if (v163 == mspDeviceClass2)
                                                                                    {
                                                                                      if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                      {
                                                                                        [CBDevice isEqualToDevice:exactMatch:];
                                                                                      }

                                                                                      LOBYTE(v27) = 1;
LABEL_680:
                                                                                      v165 = [(CBDevice *)self mspDisplayName:v363];
                                                                                      if (!v165)
                                                                                      {
                                                                                        goto LABEL_715;
                                                                                      }

                                                                                      mspDisplayName = [deviceCopy mspDisplayName];
                                                                                      if (mspDisplayName)
                                                                                      {
                                                                                        v65 = v165;
                                                                                        v167 = mspDisplayName;
                                                                                        v67 = v167;
                                                                                        if (v165 == mspDisplayName)
                                                                                        {

                                                                                          if (!matchCopy)
                                                                                          {
                                                                                            if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
                                                                                            {
                                                                                              goto LABEL_1233;
                                                                                            }

                                                                                            goto LABEL_1232;
                                                                                          }

                                                                                          if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                          {
                                                                                            v364 = v65;
                                                                                            v383 = v67;
                                                                                            LogPrintF_safe();
                                                                                          }

                                                                                          goto LABEL_713;
                                                                                        }

                                                                                        v168 = [(NSString *)v65 isEqual:v167];

                                                                                        if (v168)
                                                                                        {
                                                                                          if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                          {
                                                                                            v364 = v65;
                                                                                            v383 = v67;
                                                                                            LogPrintF_safe();
                                                                                          }

                                                                                          if (!matchCopy)
                                                                                          {
                                                                                            goto LABEL_1233;
                                                                                          }

LABEL_713:
                                                                                          LOBYTE(v27) = 1;
                                                                                          goto LABEL_714;
                                                                                        }

                                                                                        LOBYTE(v27) = 0;
                                                                                      }

LABEL_714:

LABEL_715:
                                                                                      mspSubScenario = [(CBDevice *)self mspSubScenario];
                                                                                      if (mspSubScenario == 1)
                                                                                      {
                                                                                        v170 = "Clsc";
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v170 = "?";
                                                                                      }

                                                                                      if (mspSubScenario == 2)
                                                                                      {
                                                                                        v171 = "B+C";
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v171 = v170;
                                                                                      }

                                                                                      if (!mspSubScenario)
                                                                                      {
                                                                                        goto LABEL_747;
                                                                                      }

                                                                                      v172 = mspSubScenario;
                                                                                      mspSubScenario2 = [deviceCopy mspSubScenario];
                                                                                      if (matchCopy)
                                                                                      {
                                                                                        if (!mspSubScenario2)
                                                                                        {
                                                                                          goto LABEL_747;
                                                                                        }

                                                                                        if (mspSubScenario2 == 1)
                                                                                        {
                                                                                          v174 = "Clsc";
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v174 = "?";
                                                                                        }

                                                                                        if (mspSubScenario2 == 2)
                                                                                        {
                                                                                          v175 = "B+C";
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v175 = v174;
                                                                                        }

                                                                                        if (mspSubScenario2 == v172)
                                                                                        {
                                                                                          if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                          {
                                                                                            v364 = v171;
                                                                                            v383 = v175;
                                                                                            LogPrintF_safe();
                                                                                          }

                                                                                          LOBYTE(v27) = 1;
LABEL_747:
                                                                                          v176 = [(CBDevice *)self muteControlCapability:v364];
                                                                                          if (!v176)
                                                                                          {
                                                                                            goto LABEL_762;
                                                                                          }

                                                                                          v177 = v176;
                                                                                          muteControlCapability = [deviceCopy muteControlCapability];
                                                                                          if (matchCopy)
                                                                                          {
                                                                                            if (!muteControlCapability)
                                                                                            {
                                                                                              goto LABEL_762;
                                                                                            }

                                                                                            if (muteControlCapability == v177)
                                                                                            {
                                                                                              if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                              {
                                                                                                [CBDevice isEqualToDevice:exactMatch:];
                                                                                              }

                                                                                              LOBYTE(v27) = 1;
LABEL_762:
                                                                                              muteControlConfig = [(CBDevice *)self muteControlConfig];
                                                                                              if (muteControlConfig)
                                                                                              {
                                                                                                v180 = muteControlConfig;
                                                                                                muteControlConfig2 = [deviceCopy muteControlConfig];
                                                                                                if (muteControlConfig2)
                                                                                                {
                                                                                                  if (muteControlConfig2 == v180)
                                                                                                  {
                                                                                                    if (gLogCategory_CBDevice >= 31)
                                                                                                    {
                                                                                                      LOBYTE(v27) = 1;
                                                                                                      if (!matchCopy)
                                                                                                      {
                                                                                                        goto LABEL_1235;
                                                                                                      }
                                                                                                    }

                                                                                                    else if (gLogCategory_CBDevice != -1 || _LogCategory_Initialize())
                                                                                                    {
                                                                                                      [CBDevice isEqualToDevice:exactMatch:];
                                                                                                      LOBYTE(v27) = 1;
                                                                                                      if (!matchCopy)
                                                                                                      {
                                                                                                        goto LABEL_1235;
                                                                                                      }
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      LOBYTE(v27) = 1;
                                                                                                      if (!matchCopy)
                                                                                                      {
                                                                                                        goto LABEL_1235;
                                                                                                      }
                                                                                                    }
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    LOBYTE(v27) = 0;
                                                                                                  }
                                                                                                }
                                                                                              }

                                                                                              v182 = self->_name;
                                                                                              if (!v182)
                                                                                              {
LABEL_794:

                                                                                                placementMode = [(CBDevice *)self placementMode];
                                                                                                v187 = "Enabled";
                                                                                                if (placementMode != 1)
                                                                                                {
                                                                                                  v187 = "?";
                                                                                                }

                                                                                                if (placementMode == 2)
                                                                                                {
                                                                                                  v188 = "Disabled";
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v188 = v187;
                                                                                                }

                                                                                                if (placementMode)
                                                                                                {
                                                                                                  v189 = placementMode;
                                                                                                  placementMode2 = [deviceCopy placementMode];
                                                                                                  if (matchCopy)
                                                                                                  {
                                                                                                    if (!placementMode2)
                                                                                                    {
                                                                                                      goto LABEL_824;
                                                                                                    }

                                                                                                    v191 = "Enabled";
                                                                                                    if (placementMode2 != 1)
                                                                                                    {
                                                                                                      v191 = "?";
                                                                                                    }

                                                                                                    if (placementMode2 == 2)
                                                                                                    {
                                                                                                      v192 = "Disabled";
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v192 = v191;
                                                                                                    }

                                                                                                    if (v189 == placementMode2)
                                                                                                    {
                                                                                                      if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                      {
                                                                                                        v365 = v188;
                                                                                                        v384 = v192;
                                                                                                        LogPrintF_safe();
                                                                                                      }

                                                                                                      LOBYTE(v27) = 1;
                                                                                                      goto LABEL_824;
                                                                                                    }
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    if (!placementMode2)
                                                                                                    {
                                                                                                      goto LABEL_824;
                                                                                                    }

                                                                                                    if (v189 == placementMode2)
                                                                                                    {
                                                                                                      if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
                                                                                                      {
                                                                                                        goto LABEL_1234;
                                                                                                      }

                                                                                                      goto LABEL_1627;
                                                                                                    }
                                                                                                  }

                                                                                                  LOBYTE(v27) = 0;
                                                                                                }

LABEL_824:
                                                                                                v193 = [(CBDevice *)self primaryBudSide:v365];
                                                                                                if (v193 == 2)
                                                                                                {
                                                                                                  v194 = "Right";
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v194 = "?";
                                                                                                }

                                                                                                if (v193 == 1)
                                                                                                {
                                                                                                  v195 = "Left";
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v195 = v194;
                                                                                                }

                                                                                                if (!v193 || v193 == 3)
                                                                                                {
                                                                                                  goto LABEL_832;
                                                                                                }

                                                                                                v199 = v193;
                                                                                                primaryBudSide = [deviceCopy primaryBudSide];
                                                                                                if (primaryBudSide == 2)
                                                                                                {
                                                                                                  v201 = "Right";
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v201 = "?";
                                                                                                }

                                                                                                if (primaryBudSide == 1)
                                                                                                {
                                                                                                  v202 = "Left";
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v202 = v201;
                                                                                                }

                                                                                                if (matchCopy)
                                                                                                {
                                                                                                  if (!primaryBudSide || primaryBudSide == 3)
                                                                                                  {
                                                                                                    goto LABEL_832;
                                                                                                  }

                                                                                                  if (primaryBudSide == v199)
                                                                                                  {
                                                                                                    if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                    {
                                                                                                      v366 = v195;
                                                                                                      v385 = v202;
                                                                                                      LogPrintF_safe();
                                                                                                    }

                                                                                                    LOBYTE(v27) = 1;
LABEL_832:
                                                                                                    v196 = [(CBDevice *)self primaryPlacement:v366];
                                                                                                    if (!v196)
                                                                                                    {
                                                                                                      goto LABEL_860;
                                                                                                    }

                                                                                                    v197 = v196;
                                                                                                    primaryPlacement = [deviceCopy primaryPlacement];
                                                                                                    if (matchCopy)
                                                                                                    {
                                                                                                      if (!primaryPlacement)
                                                                                                      {
                                                                                                        goto LABEL_860;
                                                                                                      }

                                                                                                      if (v197 == primaryPlacement)
                                                                                                      {
                                                                                                        if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                        {
                                                                                                          [CBDevice isEqualToDevice:v197 exactMatch:?];
                                                                                                        }

                                                                                                        LOBYTE(v27) = 1;
LABEL_860:
                                                                                                        productID = self->_productID;
                                                                                                        if (!productID)
                                                                                                        {
                                                                                                          goto LABEL_875;
                                                                                                        }

                                                                                                        productID = [deviceCopy productID];
                                                                                                        if (matchCopy)
                                                                                                        {
                                                                                                          if (!productID)
                                                                                                          {
                                                                                                            goto LABEL_875;
                                                                                                          }

                                                                                                          if (productID == productID)
                                                                                                          {
                                                                                                            if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                            {
                                                                                                              [CBDevice isEqualToDevice:? exactMatch:?];
                                                                                                            }

                                                                                                            LOBYTE(v27) = 1;
LABEL_875:
                                                                                                            v205 = self->_productName;
                                                                                                            if (!v205)
                                                                                                            {
                                                                                                              goto LABEL_905;
                                                                                                            }

                                                                                                            productName = [deviceCopy productName];
                                                                                                            v207 = productName;
                                                                                                            if (matchCopy)
                                                                                                            {
                                                                                                              if (productName)
                                                                                                              {
                                                                                                                v208 = v205;
                                                                                                                v209 = v207;
                                                                                                                v210 = v209;
                                                                                                                if (v205 == v207)
                                                                                                                {
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  v211 = [(NSString *)v208 isEqual:v209];

                                                                                                                  if (!v211)
                                                                                                                  {
                                                                                                                    LOBYTE(v27) = 0;
                                                                                                                    goto LABEL_904;
                                                                                                                  }
                                                                                                                }

                                                                                                                if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                {
                                                                                                                  v367 = v208;
                                                                                                                  v386 = v210;
                                                                                                                  LogPrintF_safe();
                                                                                                                }

                                                                                                                LOBYTE(v27) = 1;
                                                                                                              }

LABEL_904:

LABEL_905:
                                                                                                              secondaryPlacement = [(CBDevice *)self secondaryPlacement];
                                                                                                              if (!secondaryPlacement)
                                                                                                              {
                                                                                                                goto LABEL_920;
                                                                                                              }

                                                                                                              v216 = secondaryPlacement;
                                                                                                              secondaryPlacement2 = [deviceCopy secondaryPlacement];
                                                                                                              if (matchCopy)
                                                                                                              {
                                                                                                                if (!secondaryPlacement2)
                                                                                                                {
                                                                                                                  goto LABEL_920;
                                                                                                                }

                                                                                                                if (v216 == secondaryPlacement2)
                                                                                                                {
                                                                                                                  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                  {
                                                                                                                    [CBDevice isEqualToDevice:v216 exactMatch:?];
                                                                                                                  }

                                                                                                                  LOBYTE(v27) = 1;
LABEL_920:
                                                                                                                  v218 = [(CBDevice *)self selectiveSpeechListeningCapability:v367];
                                                                                                                  if (v218 == 1)
                                                                                                                  {
                                                                                                                    v219 = @"Enabled";
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    v219 = @"?";
                                                                                                                  }

                                                                                                                  if (!v218)
                                                                                                                  {
                                                                                                                    goto LABEL_944;
                                                                                                                  }

                                                                                                                  v220 = v218;
                                                                                                                  selectiveSpeechListeningCapability = [deviceCopy selectiveSpeechListeningCapability];
                                                                                                                  if (matchCopy)
                                                                                                                  {
                                                                                                                    if (!selectiveSpeechListeningCapability)
                                                                                                                    {
                                                                                                                      goto LABEL_944;
                                                                                                                    }

                                                                                                                    if (selectiveSpeechListeningCapability == 1)
                                                                                                                    {
                                                                                                                      v222 = @"Enabled";
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v222 = @"?";
                                                                                                                    }

                                                                                                                    if (selectiveSpeechListeningCapability == v220)
                                                                                                                    {
                                                                                                                      if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                      {
                                                                                                                        [CBDevice isEqualToDevice:v219 exactMatch:v222];
                                                                                                                      }

                                                                                                                      LOBYTE(v27) = 1;
LABEL_944:
                                                                                                                      selectiveSpeechListeningConfig = [(CBDevice *)self selectiveSpeechListeningConfig];
                                                                                                                      if (!selectiveSpeechListeningConfig)
                                                                                                                      {
                                                                                                                        goto LABEL_959;
                                                                                                                      }

                                                                                                                      v225 = selectiveSpeechListeningConfig;
                                                                                                                      selectiveSpeechListeningConfig2 = [deviceCopy selectiveSpeechListeningConfig];
                                                                                                                      if (matchCopy)
                                                                                                                      {
                                                                                                                        if (!selectiveSpeechListeningConfig2)
                                                                                                                        {
                                                                                                                          goto LABEL_959;
                                                                                                                        }

                                                                                                                        if (selectiveSpeechListeningConfig2 == v225)
                                                                                                                        {
                                                                                                                          if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                          {
                                                                                                                            [CBDevice isEqualToDevice:exactMatch:];
                                                                                                                          }

                                                                                                                          LOBYTE(v27) = 1;
LABEL_959:
                                                                                                                          serialNumber = [(CBDevice *)self serialNumber];
                                                                                                                          if (!serialNumber)
                                                                                                                          {
                                                                                                                            goto LABEL_987;
                                                                                                                          }

                                                                                                                          serialNumber2 = [deviceCopy serialNumber];
                                                                                                                          if (serialNumber2)
                                                                                                                          {
                                                                                                                            v65 = serialNumber;
                                                                                                                            v229 = serialNumber2;
                                                                                                                            v67 = v229;
                                                                                                                            if (serialNumber == serialNumber2)
                                                                                                                            {

                                                                                                                              if (!matchCopy)
                                                                                                                              {
                                                                                                                                if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
                                                                                                                                {
                                                                                                                                  goto LABEL_1233;
                                                                                                                                }

                                                                                                                                goto LABEL_1232;
                                                                                                                              }

                                                                                                                              if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                              {
                                                                                                                                v368 = v65;
                                                                                                                                v387 = v67;
                                                                                                                                LogPrintF_safe();
                                                                                                                              }

                                                                                                                              goto LABEL_985;
                                                                                                                            }

                                                                                                                            v230 = [(NSString *)v65 isEqual:v229];

                                                                                                                            if (v230)
                                                                                                                            {
                                                                                                                              if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                              {
                                                                                                                                v368 = v65;
                                                                                                                                v387 = v67;
                                                                                                                                LogPrintF_safe();
                                                                                                                              }

                                                                                                                              if (!matchCopy)
                                                                                                                              {
                                                                                                                                goto LABEL_1233;
                                                                                                                              }

LABEL_985:
                                                                                                                              LOBYTE(v27) = 1;
                                                                                                                              goto LABEL_986;
                                                                                                                            }

                                                                                                                            LOBYTE(v27) = 0;
                                                                                                                          }

LABEL_986:

LABEL_987:
                                                                                                                          serialNumberLeft = [(CBDevice *)self serialNumberLeft];
                                                                                                                          if (!serialNumberLeft)
                                                                                                                          {
                                                                                                                            goto LABEL_1008;
                                                                                                                          }

                                                                                                                          serialNumberLeft2 = [deviceCopy serialNumberLeft];
                                                                                                                          if (serialNumberLeft2)
                                                                                                                          {
                                                                                                                            v65 = serialNumberLeft;
                                                                                                                            v233 = serialNumberLeft2;
                                                                                                                            v67 = v233;
                                                                                                                            if (serialNumberLeft == serialNumberLeft2)
                                                                                                                            {

                                                                                                                              if (!matchCopy)
                                                                                                                              {
                                                                                                                                if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
                                                                                                                                {
                                                                                                                                  goto LABEL_1233;
                                                                                                                                }

                                                                                                                                goto LABEL_1232;
                                                                                                                              }

                                                                                                                              if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                              {
                                                                                                                                v368 = v65;
                                                                                                                                v387 = v67;
                                                                                                                                LogPrintF_safe();
                                                                                                                              }

                                                                                                                              goto LABEL_1006;
                                                                                                                            }

                                                                                                                            v234 = [(NSString *)v65 isEqual:v233];

                                                                                                                            if (v234)
                                                                                                                            {
                                                                                                                              if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                              {
                                                                                                                                v368 = v65;
                                                                                                                                v387 = v67;
                                                                                                                                LogPrintF_safe();
                                                                                                                              }

                                                                                                                              if (!matchCopy)
                                                                                                                              {
                                                                                                                                goto LABEL_1233;
                                                                                                                              }

LABEL_1006:
                                                                                                                              LOBYTE(v27) = 1;
                                                                                                                              goto LABEL_1007;
                                                                                                                            }

                                                                                                                            LOBYTE(v27) = 0;
                                                                                                                          }

LABEL_1007:

LABEL_1008:
                                                                                                                          serialNumberRight = [(CBDevice *)self serialNumberRight];
                                                                                                                          if (!serialNumberRight)
                                                                                                                          {
                                                                                                                            goto LABEL_1029;
                                                                                                                          }

                                                                                                                          serialNumberRight2 = [deviceCopy serialNumberRight];
                                                                                                                          if (serialNumberRight2)
                                                                                                                          {
                                                                                                                            v65 = serialNumberRight;
                                                                                                                            v237 = serialNumberRight2;
                                                                                                                            v67 = v237;
                                                                                                                            if (serialNumberRight == serialNumberRight2)
                                                                                                                            {

                                                                                                                              if (!matchCopy)
                                                                                                                              {
                                                                                                                                if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
                                                                                                                                {
                                                                                                                                  goto LABEL_1233;
                                                                                                                                }

                                                                                                                                goto LABEL_1232;
                                                                                                                              }

                                                                                                                              if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                              {
                                                                                                                                v368 = v65;
                                                                                                                                v387 = v67;
                                                                                                                                LogPrintF_safe();
                                                                                                                              }

                                                                                                                              goto LABEL_1027;
                                                                                                                            }

                                                                                                                            v238 = [(NSString *)v65 isEqual:v237];

                                                                                                                            if (v238)
                                                                                                                            {
                                                                                                                              if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                              {
                                                                                                                                v368 = v65;
                                                                                                                                v387 = v67;
                                                                                                                                LogPrintF_safe();
                                                                                                                              }

                                                                                                                              if (!matchCopy)
                                                                                                                              {
                                                                                                                                goto LABEL_1233;
                                                                                                                              }

LABEL_1027:
                                                                                                                              LOBYTE(v27) = 1;
                                                                                                                              goto LABEL_1028;
                                                                                                                            }

                                                                                                                            LOBYTE(v27) = 0;
                                                                                                                          }

LABEL_1028:

LABEL_1029:
                                                                                                                          smartRoutingMode = [(CBDevice *)self smartRoutingMode];
                                                                                                                          v240 = "Enabled";
                                                                                                                          if (smartRoutingMode != 1)
                                                                                                                          {
                                                                                                                            v240 = "?";
                                                                                                                          }

                                                                                                                          if (smartRoutingMode == 2)
                                                                                                                          {
                                                                                                                            v241 = "Disabled";
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            v241 = v240;
                                                                                                                          }

                                                                                                                          if (smartRoutingMode)
                                                                                                                          {
                                                                                                                            v242 = smartRoutingMode;
                                                                                                                            smartRoutingMode2 = [deviceCopy smartRoutingMode];
                                                                                                                            if (matchCopy)
                                                                                                                            {
                                                                                                                              if (!smartRoutingMode2)
                                                                                                                              {
                                                                                                                                goto LABEL_1064;
                                                                                                                              }

                                                                                                                              v244 = "Enabled";
                                                                                                                              if (smartRoutingMode2 != 1)
                                                                                                                              {
                                                                                                                                v244 = "?";
                                                                                                                              }

                                                                                                                              if (smartRoutingMode2 == 2)
                                                                                                                              {
                                                                                                                                v245 = "Disabled";
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                v245 = v244;
                                                                                                                              }

                                                                                                                              if (v242 == smartRoutingMode2)
                                                                                                                              {
                                                                                                                                if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                {
                                                                                                                                  v368 = v241;
                                                                                                                                  v387 = v245;
                                                                                                                                  LogPrintF_safe();
                                                                                                                                }

                                                                                                                                LOBYTE(v27) = 1;
                                                                                                                                goto LABEL_1064;
                                                                                                                              }
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              if (!smartRoutingMode2)
                                                                                                                              {
                                                                                                                                goto LABEL_1064;
                                                                                                                              }

                                                                                                                              if (v242 == smartRoutingMode2)
                                                                                                                              {
                                                                                                                                if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
                                                                                                                                {
                                                                                                                                  goto LABEL_1234;
                                                                                                                                }

                                                                                                                                goto LABEL_1627;
                                                                                                                              }
                                                                                                                            }

                                                                                                                            LOBYTE(v27) = 0;
                                                                                                                          }

LABEL_1064:
                                                                                                                          v246 = [(CBDevice *)self spatialAudioMode:v368];
                                                                                                                          if (!v246 || v246 == 255)
                                                                                                                          {
                                                                                                                            goto LABEL_1066;
                                                                                                                          }

                                                                                                                          v250 = v246;
                                                                                                                          spatialAudioMode = [deviceCopy spatialAudioMode];
                                                                                                                          if (matchCopy)
                                                                                                                          {
                                                                                                                            if (!spatialAudioMode || spatialAudioMode == 255)
                                                                                                                            {
                                                                                                                              goto LABEL_1066;
                                                                                                                            }

                                                                                                                            if (v250 == spatialAudioMode)
                                                                                                                            {
                                                                                                                              if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                              {
                                                                                                                                [CBDevice isEqualToDevice:exactMatch:];
                                                                                                                              }

                                                                                                                              LOBYTE(v27) = 1;
LABEL_1066:
                                                                                                                              tipiConnectionStatus = [(CBDevice *)self tipiConnectionStatus];
                                                                                                                              if (!tipiConnectionStatus)
                                                                                                                              {
                                                                                                                                goto LABEL_1089;
                                                                                                                              }

                                                                                                                              v248 = tipiConnectionStatus;
                                                                                                                              tipiConnectionStatus2 = [deviceCopy tipiConnectionStatus];
                                                                                                                              if (matchCopy)
                                                                                                                              {
                                                                                                                                if (!tipiConnectionStatus2)
                                                                                                                                {
                                                                                                                                  goto LABEL_1089;
                                                                                                                                }

                                                                                                                                if (tipiConnectionStatus2 == v248)
                                                                                                                                {
                                                                                                                                  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                  {
                                                                                                                                    [CBDevice isEqualToDevice:exactMatch:];
                                                                                                                                  }

                                                                                                                                  LOBYTE(v27) = 1;
LABEL_1089:
                                                                                                                                  txAddressData = [(CBDevice *)self txAddressData];
                                                                                                                                  if (!txAddressData)
                                                                                                                                  {
                                                                                                                                    goto LABEL_1112;
                                                                                                                                  }

                                                                                                                                  txAddressData2 = [deviceCopy txAddressData];
                                                                                                                                  if (txAddressData2)
                                                                                                                                  {
                                                                                                                                    v65 = txAddressData;
                                                                                                                                    v254 = txAddressData2;
                                                                                                                                    v67 = v254;
                                                                                                                                    if (txAddressData == txAddressData2)
                                                                                                                                    {

                                                                                                                                      if (!matchCopy)
                                                                                                                                      {
                                                                                                                                        if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                        {
                                                                                                                                          [CBDevice isEqualToDevice:v65 exactMatch:v67];
                                                                                                                                        }

                                                                                                                                        goto LABEL_1233;
                                                                                                                                      }

                                                                                                                                      if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                      {
                                                                                                                                        [CBDevice isEqualToDevice:v65 exactMatch:v67];
                                                                                                                                      }
                                                                                                                                    }

                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                      v255 = [(NSString *)v65 isEqual:v254];

                                                                                                                                      if (!v255)
                                                                                                                                      {
                                                                                                                                        LOBYTE(v27) = 0;
                                                                                                                                        goto LABEL_1111;
                                                                                                                                      }

                                                                                                                                      if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                      {
                                                                                                                                        [CBDevice isEqualToDevice:v65 exactMatch:v67];
                                                                                                                                        if (!matchCopy)
                                                                                                                                        {
                                                                                                                                          goto LABEL_1233;
                                                                                                                                        }
                                                                                                                                      }

                                                                                                                                      else if (!matchCopy)
                                                                                                                                      {
                                                                                                                                        goto LABEL_1233;
                                                                                                                                      }
                                                                                                                                    }

                                                                                                                                    LOBYTE(v27) = 1;
                                                                                                                                  }

LABEL_1111:

LABEL_1112:
                                                                                                                                  vendorID = self->_vendorID;
                                                                                                                                  if (!vendorID)
                                                                                                                                  {
                                                                                                                                    goto LABEL_1127;
                                                                                                                                  }

                                                                                                                                  vendorID = [deviceCopy vendorID];
                                                                                                                                  if (matchCopy)
                                                                                                                                  {
                                                                                                                                    if (!vendorID)
                                                                                                                                    {
                                                                                                                                      goto LABEL_1127;
                                                                                                                                    }

                                                                                                                                    if (vendorID == vendorID)
                                                                                                                                    {
                                                                                                                                      if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                      {
                                                                                                                                        [CBDevice isEqualToDevice:? exactMatch:?];
                                                                                                                                      }

                                                                                                                                      LOBYTE(v27) = 1;
LABEL_1127:
                                                                                                                                      vendorIDSource = self->_vendorIDSource;
                                                                                                                                      if (vendorIDSource == 1)
                                                                                                                                      {
                                                                                                                                        v259 = "Bluetooth";
                                                                                                                                      }

                                                                                                                                      else
                                                                                                                                      {
                                                                                                                                        v259 = "?";
                                                                                                                                      }

                                                                                                                                      if (vendorIDSource == 2)
                                                                                                                                      {
                                                                                                                                        v260 = "USB";
                                                                                                                                      }

                                                                                                                                      else
                                                                                                                                      {
                                                                                                                                        v260 = v259;
                                                                                                                                      }

                                                                                                                                      if (!self->_vendorIDSource)
                                                                                                                                      {
                                                                                                                                        goto LABEL_1170;
                                                                                                                                      }

                                                                                                                                      vendorIDSource = [deviceCopy vendorIDSource];
                                                                                                                                      if (matchCopy)
                                                                                                                                      {
                                                                                                                                        if (!vendorIDSource)
                                                                                                                                        {
                                                                                                                                          goto LABEL_1170;
                                                                                                                                        }

                                                                                                                                        if (vendorIDSource == 1)
                                                                                                                                        {
                                                                                                                                          v262 = "Bluetooth";
                                                                                                                                        }

                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                          v262 = "?";
                                                                                                                                        }

                                                                                                                                        if (vendorIDSource == 2)
                                                                                                                                        {
                                                                                                                                          v263 = "USB";
                                                                                                                                        }

                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                          v263 = v262;
                                                                                                                                        }

                                                                                                                                        if (vendorIDSource == vendorIDSource)
                                                                                                                                        {
                                                                                                                                          if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                          {
                                                                                                                                            v369 = v260;
                                                                                                                                            v388 = v263;
                                                                                                                                            LogPrintF_safe();
                                                                                                                                          }

                                                                                                                                          LOBYTE(v27) = 1;
LABEL_1170:
                                                                                                                                          v264 = [(CBDevice *)self dsInfoVehicleState:v369];
                                                                                                                                          if (v264 == 1)
                                                                                                                                          {
                                                                                                                                            v265 = "InVehicle";
                                                                                                                                          }

                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                            v265 = "?";
                                                                                                                                          }

                                                                                                                                          if (v264 == 2)
                                                                                                                                          {
                                                                                                                                            v266 = "NotInVehicle";
                                                                                                                                          }

                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                            v266 = v265;
                                                                                                                                          }

                                                                                                                                          if (!v264)
                                                                                                                                          {
                                                                                                                                            goto LABEL_1199;
                                                                                                                                          }

                                                                                                                                          v267 = v264;
                                                                                                                                          dsInfoVehicleState = [deviceCopy dsInfoVehicleState];
                                                                                                                                          if (matchCopy)
                                                                                                                                          {
                                                                                                                                            if (!dsInfoVehicleState)
                                                                                                                                            {
                                                                                                                                              goto LABEL_1199;
                                                                                                                                            }

                                                                                                                                            if (dsInfoVehicleState == 1)
                                                                                                                                            {
                                                                                                                                              v269 = "InVehicle";
                                                                                                                                            }

                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                              v269 = "?";
                                                                                                                                            }

                                                                                                                                            if (dsInfoVehicleState == 2)
                                                                                                                                            {
                                                                                                                                              v270 = "NotInVehicle";
                                                                                                                                            }

                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                              v270 = v269;
                                                                                                                                            }

                                                                                                                                            if (dsInfoVehicleState == v267)
                                                                                                                                            {
                                                                                                                                              if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                              {
                                                                                                                                                v370 = v266;
                                                                                                                                                v389 = v270;
                                                                                                                                                LogPrintF_safe();
                                                                                                                                              }

                                                                                                                                              LOBYTE(v27) = 1;
LABEL_1199:
                                                                                                                                              v271 = [(CBDevice *)self findMyCaseIdentifier:v370];
                                                                                                                                              if (!v271)
                                                                                                                                              {
LABEL_1218:

                                                                                                                                                findMyGroupIdentifier = [(CBDevice *)self findMyGroupIdentifier];
                                                                                                                                                if (!findMyGroupIdentifier)
                                                                                                                                                {
                                                                                                                                                  goto LABEL_1242;
                                                                                                                                                }

                                                                                                                                                findMyGroupIdentifier2 = [deviceCopy findMyGroupIdentifier];
                                                                                                                                                if (!findMyGroupIdentifier2)
                                                                                                                                                {
                                                                                                                                                  goto LABEL_1241;
                                                                                                                                                }

                                                                                                                                                v65 = findMyGroupIdentifier;
                                                                                                                                                v277 = findMyGroupIdentifier2;
                                                                                                                                                v67 = v277;
                                                                                                                                                if (findMyGroupIdentifier != findMyGroupIdentifier2)
                                                                                                                                                {
                                                                                                                                                  v278 = [(NSString *)v65 isEqual:v277];

                                                                                                                                                  if (v278)
                                                                                                                                                  {
                                                                                                                                                    if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                                    {
                                                                                                                                                      v371 = v65;
                                                                                                                                                      v390 = v67;
                                                                                                                                                      LogPrintF_safe();
                                                                                                                                                    }

                                                                                                                                                    if (!matchCopy)
                                                                                                                                                    {
                                                                                                                                                      goto LABEL_1233;
                                                                                                                                                    }

                                                                                                                                                    goto LABEL_1240;
                                                                                                                                                  }

                                                                                                                                                  LOBYTE(v27) = 0;
LABEL_1241:

LABEL_1242:
                                                                                                                                                  heySiriDeviceClass = [(CBDevice *)self heySiriDeviceClass];
                                                                                                                                                  if (!heySiriDeviceClass)
                                                                                                                                                  {
                                                                                                                                                    goto LABEL_1257;
                                                                                                                                                  }

                                                                                                                                                  v281 = heySiriDeviceClass;
                                                                                                                                                  heySiriDeviceClass2 = [deviceCopy heySiriDeviceClass];
                                                                                                                                                  if (matchCopy)
                                                                                                                                                  {
                                                                                                                                                    if (!heySiriDeviceClass2)
                                                                                                                                                    {
                                                                                                                                                      goto LABEL_1257;
                                                                                                                                                    }

                                                                                                                                                    if (heySiriDeviceClass2 == v281)
                                                                                                                                                    {
                                                                                                                                                      if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                                      {
                                                                                                                                                        [CBDevice isEqualToDevice:v281 exactMatch:?];
                                                                                                                                                      }

                                                                                                                                                      LOBYTE(v27) = 1;
LABEL_1257:
                                                                                                                                                      v283 = [(CBDevice *)self heySiriProductType:v371];
                                                                                                                                                      if (!v283)
                                                                                                                                                      {
                                                                                                                                                        goto LABEL_1272;
                                                                                                                                                      }

                                                                                                                                                      v284 = v283;
                                                                                                                                                      heySiriProductType = [deviceCopy heySiriProductType];
                                                                                                                                                      if (matchCopy)
                                                                                                                                                      {
                                                                                                                                                        if (!heySiriProductType)
                                                                                                                                                        {
                                                                                                                                                          goto LABEL_1272;
                                                                                                                                                        }

                                                                                                                                                        if (heySiriProductType == v284)
                                                                                                                                                        {
                                                                                                                                                          if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                                          {
                                                                                                                                                            [CBDevice isEqualToDevice:exactMatch:];
                                                                                                                                                          }

                                                                                                                                                          LOBYTE(v27) = 1;
LABEL_1272:
                                                                                                                                                          nearbyActionDeviceClass = [(CBDevice *)self nearbyActionDeviceClass];
                                                                                                                                                          v287 = nearbyActionDeviceClass;
                                                                                                                                                          if (!nearbyActionDeviceClass)
                                                                                                                                                          {
                                                                                                                                                            goto LABEL_1298;
                                                                                                                                                          }

                                                                                                                                                          nearbyActionDeviceClass2 = [deviceCopy nearbyActionDeviceClass];
                                                                                                                                                          v289 = nearbyActionDeviceClass2;
                                                                                                                                                          if (matchCopy)
                                                                                                                                                          {
                                                                                                                                                            if (!nearbyActionDeviceClass2)
                                                                                                                                                            {
                                                                                                                                                              goto LABEL_1298;
                                                                                                                                                            }

                                                                                                                                                            if (v287 == nearbyActionDeviceClass2)
                                                                                                                                                            {
                                                                                                                                                              if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                                              {
                                                                                                                                                                v372 = v287;
                                                                                                                                                                v391 = v289;
                                                                                                                                                                LogPrintF_safe();
                                                                                                                                                              }

                                                                                                                                                              LOBYTE(v27) = 1;
LABEL_1298:
                                                                                                                                                              v290 = [(CBDevice *)self nearbyActionType:v372];
                                                                                                                                                              if (!v290)
                                                                                                                                                              {
                                                                                                                                                                goto LABEL_1313;
                                                                                                                                                              }

                                                                                                                                                              v291 = v290;
                                                                                                                                                              nearbyActionType = [deviceCopy nearbyActionType];
                                                                                                                                                              if (matchCopy)
                                                                                                                                                              {
                                                                                                                                                                if (!nearbyActionType)
                                                                                                                                                                {
                                                                                                                                                                  goto LABEL_1313;
                                                                                                                                                                }

                                                                                                                                                                if (nearbyActionType == v291)
                                                                                                                                                                {
                                                                                                                                                                  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                                                  {
                                                                                                                                                                    [CBDevice isEqualToDevice:v291 exactMatch:?];
                                                                                                                                                                  }

                                                                                                                                                                  LOBYTE(v27) = 1;
LABEL_1313:
                                                                                                                                                                  nearbyActionV2Type = [(CBDevice *)self nearbyActionV2Type];
                                                                                                                                                                  if (!nearbyActionV2Type)
                                                                                                                                                                  {
                                                                                                                                                                    goto LABEL_1328;
                                                                                                                                                                  }

                                                                                                                                                                  v294 = nearbyActionV2Type;
                                                                                                                                                                  nearbyActionV2Type2 = [deviceCopy nearbyActionV2Type];
                                                                                                                                                                  if (matchCopy)
                                                                                                                                                                  {
                                                                                                                                                                    if (!nearbyActionV2Type2)
                                                                                                                                                                    {
                                                                                                                                                                      goto LABEL_1328;
                                                                                                                                                                    }

                                                                                                                                                                    if (nearbyActionV2Type2 == v294)
                                                                                                                                                                    {
                                                                                                                                                                      if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                                                      {
                                                                                                                                                                        [CBDevice isEqualToDevice:v294 exactMatch:?];
                                                                                                                                                                      }

                                                                                                                                                                      LOBYTE(v27) = 1;
LABEL_1328:
                                                                                                                                                                      nearbyActionNoWakeType = [(CBDevice *)self nearbyActionNoWakeType];
                                                                                                                                                                      if (nearbyActionNoWakeType == 1)
                                                                                                                                                                      {
                                                                                                                                                                        v297 = "PrecisionFinding";
                                                                                                                                                                      }

                                                                                                                                                                      else
                                                                                                                                                                      {
                                                                                                                                                                        v297 = "?";
                                                                                                                                                                      }

                                                                                                                                                                      if (!nearbyActionNoWakeType)
                                                                                                                                                                      {
                                                                                                                                                                        goto LABEL_1353;
                                                                                                                                                                      }

                                                                                                                                                                      v298 = nearbyActionNoWakeType;
                                                                                                                                                                      nearbyActionNoWakeType2 = [deviceCopy nearbyActionNoWakeType];
                                                                                                                                                                      if (matchCopy)
                                                                                                                                                                      {
                                                                                                                                                                        if (!nearbyActionNoWakeType2)
                                                                                                                                                                        {
                                                                                                                                                                          goto LABEL_1353;
                                                                                                                                                                        }

                                                                                                                                                                        if (nearbyActionNoWakeType2 == 1)
                                                                                                                                                                        {
                                                                                                                                                                          v300 = "PrecisionFinding";
                                                                                                                                                                        }

                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                          v300 = "?";
                                                                                                                                                                        }

                                                                                                                                                                        if (nearbyActionNoWakeType2 == v298)
                                                                                                                                                                        {
                                                                                                                                                                          if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                                                          {
                                                                                                                                                                            v373 = v297;
                                                                                                                                                                            v392 = v300;
                                                                                                                                                                            LogPrintF_safe();
                                                                                                                                                                          }

                                                                                                                                                                          LOBYTE(v27) = 1;
LABEL_1353:
                                                                                                                                                                          v301 = [(CBDevice *)self nearbyInfoStatusType:v373];
                                                                                                                                                                          if (!v301)
                                                                                                                                                                          {
                                                                                                                                                                            goto LABEL_1368;
                                                                                                                                                                          }

                                                                                                                                                                          v302 = v301;
                                                                                                                                                                          nearbyInfoStatusType = [deviceCopy nearbyInfoStatusType];
                                                                                                                                                                          if (matchCopy)
                                                                                                                                                                          {
                                                                                                                                                                            if (!nearbyInfoStatusType)
                                                                                                                                                                            {
                                                                                                                                                                              goto LABEL_1368;
                                                                                                                                                                            }

                                                                                                                                                                            if (nearbyInfoStatusType == v302)
                                                                                                                                                                            {
                                                                                                                                                                              if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                                                              {
                                                                                                                                                                                [CBDevice isEqualToDevice:v302 exactMatch:?];
                                                                                                                                                                              }

                                                                                                                                                                              LOBYTE(v27) = 1;
LABEL_1368:
                                                                                                                                                                              nearbyInfoV2InvitationRouteType = [(CBDevice *)self nearbyInfoV2InvitationRouteType];
                                                                                                                                                                              if (!nearbyInfoV2InvitationRouteType)
                                                                                                                                                                              {
                                                                                                                                                                                goto LABEL_1383;
                                                                                                                                                                              }

                                                                                                                                                                              v305 = nearbyInfoV2InvitationRouteType;
                                                                                                                                                                              nearbyInfoV2InvitationRouteType2 = [deviceCopy nearbyInfoV2InvitationRouteType];
                                                                                                                                                                              if (matchCopy)
                                                                                                                                                                              {
                                                                                                                                                                                if (!nearbyInfoV2InvitationRouteType2)
                                                                                                                                                                                {
                                                                                                                                                                                  goto LABEL_1383;
                                                                                                                                                                                }

                                                                                                                                                                                if (nearbyInfoV2InvitationRouteType2 == v305)
                                                                                                                                                                                {
                                                                                                                                                                                  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                                                                  {
                                                                                                                                                                                    [CBDevice isEqualToDevice:v305 exactMatch:?];
                                                                                                                                                                                  }

                                                                                                                                                                                  LOBYTE(v27) = 1;
LABEL_1383:
                                                                                                                                                                                  objectDiscoveryBatteryState = [(CBDevice *)self objectDiscoveryBatteryState];
                                                                                                                                                                                  if (!objectDiscoveryBatteryState)
                                                                                                                                                                                  {
                                                                                                                                                                                    goto LABEL_1398;
                                                                                                                                                                                  }

                                                                                                                                                                                  v308 = objectDiscoveryBatteryState;
                                                                                                                                                                                  objectDiscoveryBatteryState2 = [deviceCopy objectDiscoveryBatteryState];
                                                                                                                                                                                  if (matchCopy)
                                                                                                                                                                                  {
                                                                                                                                                                                    if (!objectDiscoveryBatteryState2)
                                                                                                                                                                                    {
                                                                                                                                                                                      goto LABEL_1398;
                                                                                                                                                                                    }

                                                                                                                                                                                    if (objectDiscoveryBatteryState2 == v308)
                                                                                                                                                                                    {
                                                                                                                                                                                      if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                                                                      {
                                                                                                                                                                                        [CBDevice isEqualToDevice:exactMatch:];
                                                                                                                                                                                      }

                                                                                                                                                                                      LOBYTE(v27) = 1;
LABEL_1398:
                                                                                                                                                                                      objectDiscoveryMode = [(CBDevice *)self objectDiscoveryMode];
                                                                                                                                                                                      if (objectDiscoveryMode == 1)
                                                                                                                                                                                      {
                                                                                                                                                                                        v311 = "NearOwner";
                                                                                                                                                                                      }

                                                                                                                                                                                      else
                                                                                                                                                                                      {
                                                                                                                                                                                        v311 = "?";
                                                                                                                                                                                      }

                                                                                                                                                                                      if (objectDiscoveryMode == 2)
                                                                                                                                                                                      {
                                                                                                                                                                                        v312 = "Wild";
                                                                                                                                                                                      }

                                                                                                                                                                                      else
                                                                                                                                                                                      {
                                                                                                                                                                                        v312 = v311;
                                                                                                                                                                                      }

                                                                                                                                                                                      if (!objectDiscoveryMode)
                                                                                                                                                                                      {
                                                                                                                                                                                        goto LABEL_1429;
                                                                                                                                                                                      }

                                                                                                                                                                                      v313 = objectDiscoveryMode;
                                                                                                                                                                                      objectDiscoveryMode2 = [deviceCopy objectDiscoveryMode];
                                                                                                                                                                                      if (matchCopy)
                                                                                                                                                                                      {
                                                                                                                                                                                        if (!objectDiscoveryMode2)
                                                                                                                                                                                        {
                                                                                                                                                                                          goto LABEL_1429;
                                                                                                                                                                                        }

                                                                                                                                                                                        if (objectDiscoveryMode2 == 1)
                                                                                                                                                                                        {
                                                                                                                                                                                          v315 = "NearOwner";
                                                                                                                                                                                        }

                                                                                                                                                                                        else
                                                                                                                                                                                        {
                                                                                                                                                                                          v315 = "?";
                                                                                                                                                                                        }

                                                                                                                                                                                        if (objectDiscoveryMode2 == 2)
                                                                                                                                                                                        {
                                                                                                                                                                                          v316 = "Wild";
                                                                                                                                                                                        }

                                                                                                                                                                                        else
                                                                                                                                                                                        {
                                                                                                                                                                                          v316 = v315;
                                                                                                                                                                                        }

                                                                                                                                                                                        if (objectDiscoveryMode2 == v313)
                                                                                                                                                                                        {
                                                                                                                                                                                          if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                                                                          {
                                                                                                                                                                                            v374 = v312;
                                                                                                                                                                                            v393 = v316;
                                                                                                                                                                                            LogPrintF_safe();
                                                                                                                                                                                          }

                                                                                                                                                                                          LOBYTE(v27) = 1;
LABEL_1429:
                                                                                                                                                                                          v317 = [(CBDevice *)self objectDiscoveryNearOwnerID:v374];
                                                                                                                                                                                          if (!v317)
                                                                                                                                                                                          {
                                                                                                                                                                                            goto LABEL_1445;
                                                                                                                                                                                          }

                                                                                                                                                                                          objectDiscoveryNearOwnerID = [deviceCopy objectDiscoveryNearOwnerID];
                                                                                                                                                                                          if (objectDiscoveryNearOwnerID)
                                                                                                                                                                                          {
                                                                                                                                                                                            v65 = v317;
                                                                                                                                                                                            v319 = objectDiscoveryNearOwnerID;
                                                                                                                                                                                            v67 = v319;
                                                                                                                                                                                            if (v317 == objectDiscoveryNearOwnerID)
                                                                                                                                                                                            {

                                                                                                                                                                                              if (!matchCopy)
                                                                                                                                                                                              {
                                                                                                                                                                                                if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                                                                                {
                                                                                                                                                                                                  [CBDevice isEqualToDevice:v65 exactMatch:v67];
                                                                                                                                                                                                }

                                                                                                                                                                                                goto LABEL_1233;
                                                                                                                                                                                              }

                                                                                                                                                                                              if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                                                                              {
                                                                                                                                                                                                [CBDevice isEqualToDevice:v65 exactMatch:v67];
                                                                                                                                                                                              }
                                                                                                                                                                                            }

                                                                                                                                                                                            else
                                                                                                                                                                                            {
                                                                                                                                                                                              v320 = [(NSString *)v65 isEqual:v319];

                                                                                                                                                                                              if (!v320)
                                                                                                                                                                                              {
                                                                                                                                                                                                LOBYTE(v27) = 0;
                                                                                                                                                                                                goto LABEL_1444;
                                                                                                                                                                                              }

                                                                                                                                                                                              if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                                                                              {
                                                                                                                                                                                                [CBDevice isEqualToDevice:v65 exactMatch:v67];
                                                                                                                                                                                                if (!matchCopy)
                                                                                                                                                                                                {
                                                                                                                                                                                                  goto LABEL_1233;
                                                                                                                                                                                                }
                                                                                                                                                                                              }

                                                                                                                                                                                              else if (!matchCopy)
                                                                                                                                                                                              {
                                                                                                                                                                                                goto LABEL_1233;
                                                                                                                                                                                              }
                                                                                                                                                                                            }

                                                                                                                                                                                            LOBYTE(v27) = 1;
                                                                                                                                                                                          }

LABEL_1444:

LABEL_1445:
                                                                                                                                                                                          objectDiscoveryProductID = [(CBDevice *)self objectDiscoveryProductID];
                                                                                                                                                                                          if (!objectDiscoveryProductID)
                                                                                                                                                                                          {
                                                                                                                                                                                            goto LABEL_1460;
                                                                                                                                                                                          }

                                                                                                                                                                                          v322 = objectDiscoveryProductID;
                                                                                                                                                                                          objectDiscoveryProductID2 = [deviceCopy objectDiscoveryProductID];
                                                                                                                                                                                          if (matchCopy)
                                                                                                                                                                                          {
                                                                                                                                                                                            if (!objectDiscoveryProductID2)
                                                                                                                                                                                            {
                                                                                                                                                                                              goto LABEL_1460;
                                                                                                                                                                                            }

                                                                                                                                                                                            if (v322 == objectDiscoveryProductID2)
                                                                                                                                                                                            {
                                                                                                                                                                                              if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                                                                              {
                                                                                                                                                                                                [CBDevice isEqualToDevice:v322 exactMatch:?];
                                                                                                                                                                                              }

                                                                                                                                                                                              LOBYTE(v27) = 1;
LABEL_1460:
                                                                                                                                                                                              proximityPairingOtherBudProductID = [(CBDevice *)self proximityPairingOtherBudProductID];
                                                                                                                                                                                              if (!proximityPairingOtherBudProductID)
                                                                                                                                                                                              {
                                                                                                                                                                                                goto LABEL_1475;
                                                                                                                                                                                              }

                                                                                                                                                                                              v325 = proximityPairingOtherBudProductID;
                                                                                                                                                                                              proximityPairingOtherBudProductID2 = [deviceCopy proximityPairingOtherBudProductID];
                                                                                                                                                                                              if (matchCopy)
                                                                                                                                                                                              {
                                                                                                                                                                                                if (!proximityPairingOtherBudProductID2)
                                                                                                                                                                                                {
                                                                                                                                                                                                  goto LABEL_1475;
                                                                                                                                                                                                }

                                                                                                                                                                                                if (v325 == proximityPairingOtherBudProductID2)
                                                                                                                                                                                                {
                                                                                                                                                                                                  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                                                                                  {
                                                                                                                                                                                                    [CBDevice isEqualToDevice:v325 exactMatch:?];
                                                                                                                                                                                                  }

                                                                                                                                                                                                  LOBYTE(v27) = 1;
LABEL_1475:
                                                                                                                                                                                                  proximityPairingProductID = [(CBDevice *)self proximityPairingProductID];
                                                                                                                                                                                                  if (!proximityPairingProductID)
                                                                                                                                                                                                  {
                                                                                                                                                                                                    goto LABEL_1490;
                                                                                                                                                                                                  }

                                                                                                                                                                                                  v328 = proximityPairingProductID;
                                                                                                                                                                                                  proximityPairingProductID2 = [deviceCopy proximityPairingProductID];
                                                                                                                                                                                                  if (matchCopy)
                                                                                                                                                                                                  {
                                                                                                                                                                                                    if (!proximityPairingProductID2)
                                                                                                                                                                                                    {
                                                                                                                                                                                                      goto LABEL_1490;
                                                                                                                                                                                                    }

                                                                                                                                                                                                    if (v328 == proximityPairingProductID2)
                                                                                                                                                                                                    {
                                                                                                                                                                                                      if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                                                                                      {
                                                                                                                                                                                                        [CBDevice isEqualToDevice:v328 exactMatch:?];
                                                                                                                                                                                                      }

                                                                                                                                                                                                      LOBYTE(v27) = 1;
LABEL_1490:
                                                                                                                                                                                                      proximityPairingPrimaryPlacement = [(CBDevice *)self proximityPairingPrimaryPlacement];
                                                                                                                                                                                                      if (!proximityPairingPrimaryPlacement)
                                                                                                                                                                                                      {
                                                                                                                                                                                                        goto LABEL_1505;
                                                                                                                                                                                                      }

                                                                                                                                                                                                      v331 = proximityPairingPrimaryPlacement;
                                                                                                                                                                                                      proximityPairingPrimaryPlacement2 = [deviceCopy proximityPairingPrimaryPlacement];
                                                                                                                                                                                                      if (matchCopy)
                                                                                                                                                                                                      {
                                                                                                                                                                                                        if (!proximityPairingPrimaryPlacement2)
                                                                                                                                                                                                        {
                                                                                                                                                                                                          goto LABEL_1505;
                                                                                                                                                                                                        }

                                                                                                                                                                                                        if (v331 == proximityPairingPrimaryPlacement2)
                                                                                                                                                                                                        {
                                                                                                                                                                                                          if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                                                                                          {
                                                                                                                                                                                                            [CBDevice isEqualToDevice:v331 exactMatch:?];
                                                                                                                                                                                                          }

                                                                                                                                                                                                          LOBYTE(v27) = 1;
LABEL_1505:
                                                                                                                                                                                                          proximityPairingSecondaryPlacement = [(CBDevice *)self proximityPairingSecondaryPlacement];
                                                                                                                                                                                                          if (!proximityPairingSecondaryPlacement)
                                                                                                                                                                                                          {
                                                                                                                                                                                                            goto LABEL_1520;
                                                                                                                                                                                                          }

                                                                                                                                                                                                          v334 = proximityPairingSecondaryPlacement;
                                                                                                                                                                                                          proximityPairingSecondaryPlacement2 = [deviceCopy proximityPairingSecondaryPlacement];
                                                                                                                                                                                                          if (matchCopy)
                                                                                                                                                                                                          {
                                                                                                                                                                                                            if (!proximityPairingSecondaryPlacement2)
                                                                                                                                                                                                            {
                                                                                                                                                                                                              goto LABEL_1520;
                                                                                                                                                                                                            }

                                                                                                                                                                                                            if (v334 == proximityPairingSecondaryPlacement2)
                                                                                                                                                                                                            {
                                                                                                                                                                                                              if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                                                                                              {
                                                                                                                                                                                                                [CBDevice isEqualToDevice:v334 exactMatch:?];
                                                                                                                                                                                                              }

                                                                                                                                                                                                              LOBYTE(v27) = 1;
LABEL_1520:
                                                                                                                                                                                                              proximityPairingSubType = [(CBDevice *)self proximityPairingSubType];
                                                                                                                                                                                                              if (!proximityPairingSubType)
                                                                                                                                                                                                              {
                                                                                                                                                                                                                goto LABEL_1535;
                                                                                                                                                                                                              }

                                                                                                                                                                                                              v337 = proximityPairingSubType;
                                                                                                                                                                                                              proximityPairingSubType2 = [deviceCopy proximityPairingSubType];
                                                                                                                                                                                                              if (matchCopy)
                                                                                                                                                                                                              {
                                                                                                                                                                                                                if (!proximityPairingSubType2)
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  goto LABEL_1535;
                                                                                                                                                                                                                }

                                                                                                                                                                                                                if (proximityPairingSubType2 == v337)
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    [CBDevice isEqualToDevice:v337 exactMatch:?];
                                                                                                                                                                                                                  }

                                                                                                                                                                                                                  LOBYTE(v27) = 1;
LABEL_1535:
                                                                                                                                                                                                                  proximityServiceCategory = [(CBDevice *)self proximityServiceCategory];
                                                                                                                                                                                                                  if (!proximityServiceCategory)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    goto LABEL_1550;
                                                                                                                                                                                                                  }

                                                                                                                                                                                                                  v340 = proximityServiceCategory;
                                                                                                                                                                                                                  proximityServiceCategory2 = [deviceCopy proximityServiceCategory];
                                                                                                                                                                                                                  if (matchCopy)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    if (!proximityServiceCategory2)
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                      goto LABEL_1550;
                                                                                                                                                                                                                    }

                                                                                                                                                                                                                    if (proximityServiceCategory2 == v340)
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                      if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                                                                                                      {
                                                                                                                                                                                                                        [CBDevice isEqualToDevice:exactMatch:];
                                                                                                                                                                                                                      }

                                                                                                                                                                                                                      LOBYTE(v27) = 1;
LABEL_1550:
                                                                                                                                                                                                                      proximityServiceClassicAddress = [(CBDevice *)self proximityServiceClassicAddress];
                                                                                                                                                                                                                      if (!proximityServiceClassicAddress)
                                                                                                                                                                                                                      {
LABEL_1570:

                                                                                                                                                                                                                        proximityServiceProductID = [(CBDevice *)self proximityServiceProductID];
                                                                                                                                                                                                                        if (!proximityServiceProductID)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          goto LABEL_1585;
                                                                                                                                                                                                                        }

                                                                                                                                                                                                                        productID = proximityServiceProductID;
                                                                                                                                                                                                                        productID2 = [deviceCopy productID];
                                                                                                                                                                                                                        if (matchCopy)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          if (!productID2)
                                                                                                                                                                                                                          {
                                                                                                                                                                                                                            goto LABEL_1585;
                                                                                                                                                                                                                          }

                                                                                                                                                                                                                          if (productID == productID2)
                                                                                                                                                                                                                          {
                                                                                                                                                                                                                            if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              [CBDevice isEqualToDevice:? exactMatch:?];
                                                                                                                                                                                                                            }

                                                                                                                                                                                                                            LOBYTE(v27) = 1;
LABEL_1585:
                                                                                                                                                                                                                            proximityServiceSubType = [(CBDevice *)self proximityServiceSubType];
                                                                                                                                                                                                                            if (!proximityServiceSubType)
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              goto LABEL_1600;
                                                                                                                                                                                                                            }

                                                                                                                                                                                                                            v349 = proximityServiceSubType;
                                                                                                                                                                                                                            proximityServiceSubType2 = [deviceCopy proximityServiceSubType];
                                                                                                                                                                                                                            if (matchCopy)
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              if (!proximityServiceSubType2)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                goto LABEL_1600;
                                                                                                                                                                                                                              }

                                                                                                                                                                                                                              if (proximityServiceSubType2 == v349)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                  [CBDevice isEqualToDevice:exactMatch:];
                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                LOBYTE(v27) = 1;
LABEL_1600:
                                                                                                                                                                                                                                proximityServiceVendorID = [(CBDevice *)self proximityServiceVendorID];
                                                                                                                                                                                                                                if (proximityServiceVendorID)
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                  v352 = proximityServiceVendorID;
                                                                                                                                                                                                                                  proximityServiceVendorID2 = [deviceCopy proximityServiceVendorID];
                                                                                                                                                                                                                                  if (matchCopy)
                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                    if (proximityServiceVendorID2)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                      if (proximityServiceVendorID2 == v352)
                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                        if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                          [CBDevice isEqualToDevice:v352 exactMatch:?];
                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                        LOBYTE(v27) = 1;
                                                                                                                                                                                                                                        goto LABEL_1615;
                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                      goto LABEL_1614;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                  else if (proximityServiceVendorID2)
                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                    if (proximityServiceVendorID2 == v352)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                      if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                        [CBDevice isEqualToDevice:v352 exactMatch:?];
                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                      goto LABEL_1234;
                                                                                                                                                                                                                                    }

LABEL_1614:
                                                                                                                                                                                                                                    LOBYTE(v27) = 0;
                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                }

LABEL_1615:
                                                                                                                                                                                                                                proximityServiceVersion = [(CBDevice *)self proximityServiceVersion];
                                                                                                                                                                                                                                if (!proximityServiceVersion)
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                  goto LABEL_1235;
                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                proximityServiceVersion2 = [deviceCopy proximityServiceVersion];
                                                                                                                                                                                                                                if (matchCopy)
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                  if (!proximityServiceVersion2)
                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                    goto LABEL_1235;
                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                  if (proximityServiceVersion == proximityServiceVersion2)
                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                    if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                      goto LABEL_1234;
                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                    goto LABEL_1627;
                                                                                                                                                                                                                                  }

LABEL_1628:
                                                                                                                                                                                                                                  LOBYTE(v27) = 0;
                                                                                                                                                                                                                                  goto LABEL_1235;
                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                if (!proximityServiceVersion2)
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                  goto LABEL_1235;
                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                if (proximityServiceVersion != proximityServiceVersion2)
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                  goto LABEL_1628;
                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                  goto LABEL_1234;
                                                                                                                                                                                                                                }

LABEL_1627:
                                                                                                                                                                                                                                LogPrintF_safe();
                                                                                                                                                                                                                                goto LABEL_1234;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                            }

                                                                                                                                                                                                                            else
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              if (!proximityServiceSubType2)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                goto LABEL_1600;
                                                                                                                                                                                                                              }

                                                                                                                                                                                                                              if (proximityServiceSubType2 == v349)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                  [CBDevice isEqualToDevice:exactMatch:];
                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                goto LABEL_1234;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                            }

                                                                                                                                                                                                                            LOBYTE(v27) = 0;
                                                                                                                                                                                                                            goto LABEL_1600;
                                                                                                                                                                                                                          }

LABEL_1584:
                                                                                                                                                                                                                          LOBYTE(v27) = 0;
                                                                                                                                                                                                                          goto LABEL_1585;
                                                                                                                                                                                                                        }

                                                                                                                                                                                                                        if (!productID2)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          goto LABEL_1585;
                                                                                                                                                                                                                        }

                                                                                                                                                                                                                        if (productID != productID2)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          goto LABEL_1584;
                                                                                                                                                                                                                        }

                                                                                                                                                                                                                        if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          goto LABEL_1234;
                                                                                                                                                                                                                        }

LABEL_873:
                                                                                                                                                                                                                        [CBDevice isEqualToDevice:? exactMatch:?];
                                                                                                                                                                                                                        goto LABEL_1234;
                                                                                                                                                                                                                      }

                                                                                                                                                                                                                      proximityServiceClassicAddress2 = [deviceCopy proximityServiceClassicAddress];
                                                                                                                                                                                                                      if (!proximityServiceClassicAddress2)
                                                                                                                                                                                                                      {
LABEL_1569:

                                                                                                                                                                                                                        goto LABEL_1570;
                                                                                                                                                                                                                      }

                                                                                                                                                                                                                      v65 = proximityServiceClassicAddress;
                                                                                                                                                                                                                      v344 = proximityServiceClassicAddress2;
                                                                                                                                                                                                                      v67 = v344;
                                                                                                                                                                                                                      if (proximityServiceClassicAddress == proximityServiceClassicAddress2)
                                                                                                                                                                                                                      {

                                                                                                                                                                                                                        if (!matchCopy)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                                                                                                          {
                                                                                                                                                                                                                            [CBDevice isEqualToDevice:v65 exactMatch:v67];
                                                                                                                                                                                                                          }

                                                                                                                                                                                                                          goto LABEL_1233;
                                                                                                                                                                                                                        }

                                                                                                                                                                                                                        if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          [CBDevice isEqualToDevice:v65 exactMatch:v67];
                                                                                                                                                                                                                        }

                                                                                                                                                                                                                        goto LABEL_1567;
                                                                                                                                                                                                                      }

                                                                                                                                                                                                                      v345 = [(NSString *)v65 isEqual:v344];

                                                                                                                                                                                                                      if (!v345)
                                                                                                                                                                                                                      {
                                                                                                                                                                                                                        LOBYTE(v27) = 0;
                                                                                                                                                                                                                        goto LABEL_1569;
                                                                                                                                                                                                                      }

                                                                                                                                                                                                                      if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                                                                                                      {
                                                                                                                                                                                                                        [CBDevice isEqualToDevice:v65 exactMatch:v67];
                                                                                                                                                                                                                        if (matchCopy)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          goto LABEL_1567;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                      }

                                                                                                                                                                                                                      else if (matchCopy)
                                                                                                                                                                                                                      {
LABEL_1567:
                                                                                                                                                                                                                        LOBYTE(v27) = 1;
                                                                                                                                                                                                                        goto LABEL_1569;
                                                                                                                                                                                                                      }

LABEL_1233:

                                                                                                                                                                                                                      goto LABEL_1234;
                                                                                                                                                                                                                    }
                                                                                                                                                                                                                  }

                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    if (!proximityServiceCategory2)
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                      goto LABEL_1550;
                                                                                                                                                                                                                    }

                                                                                                                                                                                                                    if (proximityServiceCategory2 == v340)
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                      if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                                                                                                      {
                                                                                                                                                                                                                        [CBDevice isEqualToDevice:exactMatch:];
                                                                                                                                                                                                                      }

                                                                                                                                                                                                                      goto LABEL_1234;
                                                                                                                                                                                                                    }
                                                                                                                                                                                                                  }

                                                                                                                                                                                                                  LOBYTE(v27) = 0;
                                                                                                                                                                                                                  goto LABEL_1550;
                                                                                                                                                                                                                }
                                                                                                                                                                                                              }

                                                                                                                                                                                                              else
                                                                                                                                                                                                              {
                                                                                                                                                                                                                if (!proximityPairingSubType2)
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  goto LABEL_1535;
                                                                                                                                                                                                                }

                                                                                                                                                                                                                if (proximityPairingSubType2 == v337)
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    [CBDevice isEqualToDevice:v337 exactMatch:?];
                                                                                                                                                                                                                  }

                                                                                                                                                                                                                  goto LABEL_1234;
                                                                                                                                                                                                                }
                                                                                                                                                                                                              }

                                                                                                                                                                                                              LOBYTE(v27) = 0;
                                                                                                                                                                                                              goto LABEL_1535;
                                                                                                                                                                                                            }
                                                                                                                                                                                                          }

                                                                                                                                                                                                          else
                                                                                                                                                                                                          {
                                                                                                                                                                                                            if (!proximityPairingSecondaryPlacement2)
                                                                                                                                                                                                            {
                                                                                                                                                                                                              goto LABEL_1520;
                                                                                                                                                                                                            }

                                                                                                                                                                                                            if (v334 == proximityPairingSecondaryPlacement2)
                                                                                                                                                                                                            {
                                                                                                                                                                                                              if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                                                                                              {
                                                                                                                                                                                                                [CBDevice isEqualToDevice:v334 exactMatch:?];
                                                                                                                                                                                                              }

                                                                                                                                                                                                              goto LABEL_1234;
                                                                                                                                                                                                            }
                                                                                                                                                                                                          }

                                                                                                                                                                                                          LOBYTE(v27) = 0;
                                                                                                                                                                                                          goto LABEL_1520;
                                                                                                                                                                                                        }
                                                                                                                                                                                                      }

                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                        if (!proximityPairingPrimaryPlacement2)
                                                                                                                                                                                                        {
                                                                                                                                                                                                          goto LABEL_1505;
                                                                                                                                                                                                        }

                                                                                                                                                                                                        if (v331 == proximityPairingPrimaryPlacement2)
                                                                                                                                                                                                        {
                                                                                                                                                                                                          if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                                                                                          {
                                                                                                                                                                                                            [CBDevice isEqualToDevice:v331 exactMatch:?];
                                                                                                                                                                                                          }

                                                                                                                                                                                                          goto LABEL_1234;
                                                                                                                                                                                                        }
                                                                                                                                                                                                      }

                                                                                                                                                                                                      LOBYTE(v27) = 0;
                                                                                                                                                                                                      goto LABEL_1505;
                                                                                                                                                                                                    }
                                                                                                                                                                                                  }

                                                                                                                                                                                                  else
                                                                                                                                                                                                  {
                                                                                                                                                                                                    if (!proximityPairingProductID2)
                                                                                                                                                                                                    {
                                                                                                                                                                                                      goto LABEL_1490;
                                                                                                                                                                                                    }

                                                                                                                                                                                                    if (v328 == proximityPairingProductID2)
                                                                                                                                                                                                    {
                                                                                                                                                                                                      if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                                                                                      {
                                                                                                                                                                                                        [CBDevice isEqualToDevice:v328 exactMatch:?];
                                                                                                                                                                                                      }

                                                                                                                                                                                                      goto LABEL_1234;
                                                                                                                                                                                                    }
                                                                                                                                                                                                  }

                                                                                                                                                                                                  LOBYTE(v27) = 0;
                                                                                                                                                                                                  goto LABEL_1490;
                                                                                                                                                                                                }
                                                                                                                                                                                              }

                                                                                                                                                                                              else
                                                                                                                                                                                              {
                                                                                                                                                                                                if (!proximityPairingOtherBudProductID2)
                                                                                                                                                                                                {
                                                                                                                                                                                                  goto LABEL_1475;
                                                                                                                                                                                                }

                                                                                                                                                                                                if (v325 == proximityPairingOtherBudProductID2)
                                                                                                                                                                                                {
                                                                                                                                                                                                  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                                                                                  {
                                                                                                                                                                                                    [CBDevice isEqualToDevice:v325 exactMatch:?];
                                                                                                                                                                                                  }

                                                                                                                                                                                                  goto LABEL_1234;
                                                                                                                                                                                                }
                                                                                                                                                                                              }

                                                                                                                                                                                              LOBYTE(v27) = 0;
                                                                                                                                                                                              goto LABEL_1475;
                                                                                                                                                                                            }
                                                                                                                                                                                          }

                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                            if (!objectDiscoveryProductID2)
                                                                                                                                                                                            {
                                                                                                                                                                                              goto LABEL_1460;
                                                                                                                                                                                            }

                                                                                                                                                                                            if (v322 == objectDiscoveryProductID2)
                                                                                                                                                                                            {
                                                                                                                                                                                              if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                                                                              {
                                                                                                                                                                                                [CBDevice isEqualToDevice:v322 exactMatch:?];
                                                                                                                                                                                              }

                                                                                                                                                                                              goto LABEL_1234;
                                                                                                                                                                                            }
                                                                                                                                                                                          }

                                                                                                                                                                                          LOBYTE(v27) = 0;
                                                                                                                                                                                          goto LABEL_1460;
                                                                                                                                                                                        }
                                                                                                                                                                                      }

                                                                                                                                                                                      else
                                                                                                                                                                                      {
                                                                                                                                                                                        if (!objectDiscoveryMode2)
                                                                                                                                                                                        {
                                                                                                                                                                                          goto LABEL_1429;
                                                                                                                                                                                        }

                                                                                                                                                                                        if (objectDiscoveryMode2 == v313)
                                                                                                                                                                                        {
                                                                                                                                                                                          if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
                                                                                                                                                                                          {
                                                                                                                                                                                            goto LABEL_1234;
                                                                                                                                                                                          }

                                                                                                                                                                                          goto LABEL_1627;
                                                                                                                                                                                        }
                                                                                                                                                                                      }

                                                                                                                                                                                      LOBYTE(v27) = 0;
                                                                                                                                                                                      goto LABEL_1429;
                                                                                                                                                                                    }
                                                                                                                                                                                  }

                                                                                                                                                                                  else
                                                                                                                                                                                  {
                                                                                                                                                                                    if (!objectDiscoveryBatteryState2)
                                                                                                                                                                                    {
                                                                                                                                                                                      goto LABEL_1398;
                                                                                                                                                                                    }

                                                                                                                                                                                    if (objectDiscoveryBatteryState2 == v308)
                                                                                                                                                                                    {
                                                                                                                                                                                      if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                                                                      {
                                                                                                                                                                                        [CBDevice isEqualToDevice:exactMatch:];
                                                                                                                                                                                      }

                                                                                                                                                                                      goto LABEL_1234;
                                                                                                                                                                                    }
                                                                                                                                                                                  }

                                                                                                                                                                                  LOBYTE(v27) = 0;
                                                                                                                                                                                  goto LABEL_1398;
                                                                                                                                                                                }
                                                                                                                                                                              }

                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                if (!nearbyInfoV2InvitationRouteType2)
                                                                                                                                                                                {
                                                                                                                                                                                  goto LABEL_1383;
                                                                                                                                                                                }

                                                                                                                                                                                if (nearbyInfoV2InvitationRouteType2 == v305)
                                                                                                                                                                                {
                                                                                                                                                                                  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                                                                  {
                                                                                                                                                                                    [CBDevice isEqualToDevice:v305 exactMatch:?];
                                                                                                                                                                                  }

                                                                                                                                                                                  goto LABEL_1234;
                                                                                                                                                                                }
                                                                                                                                                                              }

                                                                                                                                                                              LOBYTE(v27) = 0;
                                                                                                                                                                              goto LABEL_1383;
                                                                                                                                                                            }
                                                                                                                                                                          }

                                                                                                                                                                          else
                                                                                                                                                                          {
                                                                                                                                                                            if (!nearbyInfoStatusType)
                                                                                                                                                                            {
                                                                                                                                                                              goto LABEL_1368;
                                                                                                                                                                            }

                                                                                                                                                                            if (nearbyInfoStatusType == v302)
                                                                                                                                                                            {
                                                                                                                                                                              if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                                                              {
                                                                                                                                                                                [CBDevice isEqualToDevice:v302 exactMatch:?];
                                                                                                                                                                              }

                                                                                                                                                                              goto LABEL_1234;
                                                                                                                                                                            }
                                                                                                                                                                          }

                                                                                                                                                                          LOBYTE(v27) = 0;
                                                                                                                                                                          goto LABEL_1368;
                                                                                                                                                                        }
                                                                                                                                                                      }

                                                                                                                                                                      else
                                                                                                                                                                      {
                                                                                                                                                                        if (!nearbyActionNoWakeType2)
                                                                                                                                                                        {
                                                                                                                                                                          goto LABEL_1353;
                                                                                                                                                                        }

                                                                                                                                                                        if (nearbyActionNoWakeType2 == v298)
                                                                                                                                                                        {
                                                                                                                                                                          if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
                                                                                                                                                                          {
                                                                                                                                                                            goto LABEL_1234;
                                                                                                                                                                          }

                                                                                                                                                                          goto LABEL_1627;
                                                                                                                                                                        }
                                                                                                                                                                      }

                                                                                                                                                                      LOBYTE(v27) = 0;
                                                                                                                                                                      goto LABEL_1353;
                                                                                                                                                                    }
                                                                                                                                                                  }

                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                    if (!nearbyActionV2Type2)
                                                                                                                                                                    {
                                                                                                                                                                      goto LABEL_1328;
                                                                                                                                                                    }

                                                                                                                                                                    if (nearbyActionV2Type2 == v294)
                                                                                                                                                                    {
                                                                                                                                                                      if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                                                      {
                                                                                                                                                                        [CBDevice isEqualToDevice:v294 exactMatch:?];
                                                                                                                                                                      }

                                                                                                                                                                      goto LABEL_1234;
                                                                                                                                                                    }
                                                                                                                                                                  }

                                                                                                                                                                  LOBYTE(v27) = 0;
                                                                                                                                                                  goto LABEL_1328;
                                                                                                                                                                }
                                                                                                                                                              }

                                                                                                                                                              else
                                                                                                                                                              {
                                                                                                                                                                if (!nearbyActionType)
                                                                                                                                                                {
                                                                                                                                                                  goto LABEL_1313;
                                                                                                                                                                }

                                                                                                                                                                if (nearbyActionType == v291)
                                                                                                                                                                {
                                                                                                                                                                  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                                                  {
                                                                                                                                                                    [CBDevice isEqualToDevice:v291 exactMatch:?];
                                                                                                                                                                  }

                                                                                                                                                                  goto LABEL_1234;
                                                                                                                                                                }
                                                                                                                                                              }

                                                                                                                                                              LOBYTE(v27) = 0;
                                                                                                                                                              goto LABEL_1313;
                                                                                                                                                            }
                                                                                                                                                          }

                                                                                                                                                          else
                                                                                                                                                          {
                                                                                                                                                            if (!nearbyActionDeviceClass2)
                                                                                                                                                            {
                                                                                                                                                              goto LABEL_1298;
                                                                                                                                                            }

                                                                                                                                                            if (v287 == nearbyActionDeviceClass2)
                                                                                                                                                            {
                                                                                                                                                              if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
                                                                                                                                                              {
                                                                                                                                                                goto LABEL_1234;
                                                                                                                                                              }

                                                                                                                                                              goto LABEL_1627;
                                                                                                                                                            }
                                                                                                                                                          }

                                                                                                                                                          LOBYTE(v27) = 0;
                                                                                                                                                          goto LABEL_1298;
                                                                                                                                                        }
                                                                                                                                                      }

                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                        if (!heySiriProductType)
                                                                                                                                                        {
                                                                                                                                                          goto LABEL_1272;
                                                                                                                                                        }

                                                                                                                                                        if (heySiriProductType == v284)
                                                                                                                                                        {
                                                                                                                                                          if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                                          {
                                                                                                                                                            [CBDevice isEqualToDevice:exactMatch:];
                                                                                                                                                          }

                                                                                                                                                          goto LABEL_1234;
                                                                                                                                                        }
                                                                                                                                                      }

                                                                                                                                                      LOBYTE(v27) = 0;
                                                                                                                                                      goto LABEL_1272;
                                                                                                                                                    }
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    if (!heySiriDeviceClass2)
                                                                                                                                                    {
                                                                                                                                                      goto LABEL_1257;
                                                                                                                                                    }

                                                                                                                                                    if (heySiriDeviceClass2 == v281)
                                                                                                                                                    {
                                                                                                                                                      if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                                      {
                                                                                                                                                        [CBDevice isEqualToDevice:v281 exactMatch:?];
                                                                                                                                                      }

                                                                                                                                                      goto LABEL_1234;
                                                                                                                                                    }
                                                                                                                                                  }

                                                                                                                                                  LOBYTE(v27) = 0;
                                                                                                                                                  goto LABEL_1257;
                                                                                                                                                }

                                                                                                                                                if (matchCopy)
                                                                                                                                                {
                                                                                                                                                  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                                  {
                                                                                                                                                    v371 = v65;
                                                                                                                                                    v390 = v67;
                                                                                                                                                    LogPrintF_safe();
                                                                                                                                                  }

LABEL_1240:
                                                                                                                                                  LOBYTE(v27) = 1;
                                                                                                                                                  goto LABEL_1241;
                                                                                                                                                }

                                                                                                                                                if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
                                                                                                                                                {
                                                                                                                                                  goto LABEL_1233;
                                                                                                                                                }

LABEL_1232:
                                                                                                                                                LogPrintF_safe();
                                                                                                                                                goto LABEL_1233;
                                                                                                                                              }

                                                                                                                                              findMyCaseIdentifier = [deviceCopy findMyCaseIdentifier];
                                                                                                                                              if (findMyCaseIdentifier)
                                                                                                                                              {
                                                                                                                                                v65 = v271;
                                                                                                                                                v273 = findMyCaseIdentifier;
                                                                                                                                                v67 = v273;
                                                                                                                                                if (v271 == findMyCaseIdentifier)
                                                                                                                                                {

                                                                                                                                                  if (!matchCopy)
                                                                                                                                                  {
                                                                                                                                                    if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
                                                                                                                                                    {
                                                                                                                                                      goto LABEL_1233;
                                                                                                                                                    }

                                                                                                                                                    goto LABEL_1232;
                                                                                                                                                  }

                                                                                                                                                  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                                  {
                                                                                                                                                    v371 = v65;
                                                                                                                                                    v390 = v67;
                                                                                                                                                    LogPrintF_safe();
                                                                                                                                                  }

                                                                                                                                                  goto LABEL_1216;
                                                                                                                                                }

                                                                                                                                                v274 = [(NSString *)v65 isEqual:v273];

                                                                                                                                                if (v274)
                                                                                                                                                {
                                                                                                                                                  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                                  {
                                                                                                                                                    v371 = v65;
                                                                                                                                                    v390 = v67;
                                                                                                                                                    LogPrintF_safe();
                                                                                                                                                  }

                                                                                                                                                  if (!matchCopy)
                                                                                                                                                  {
                                                                                                                                                    goto LABEL_1233;
                                                                                                                                                  }

LABEL_1216:
                                                                                                                                                  LOBYTE(v27) = 1;
                                                                                                                                                  goto LABEL_1217;
                                                                                                                                                }

                                                                                                                                                LOBYTE(v27) = 0;
                                                                                                                                              }

LABEL_1217:

                                                                                                                                              goto LABEL_1218;
                                                                                                                                            }
                                                                                                                                          }

                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                            if (!dsInfoVehicleState)
                                                                                                                                            {
                                                                                                                                              goto LABEL_1199;
                                                                                                                                            }

                                                                                                                                            if (dsInfoVehicleState == v267)
                                                                                                                                            {
                                                                                                                                              if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
                                                                                                                                              {
                                                                                                                                                goto LABEL_1234;
                                                                                                                                              }

                                                                                                                                              goto LABEL_1627;
                                                                                                                                            }
                                                                                                                                          }

                                                                                                                                          LOBYTE(v27) = 0;
                                                                                                                                          goto LABEL_1199;
                                                                                                                                        }
                                                                                                                                      }

                                                                                                                                      else
                                                                                                                                      {
                                                                                                                                        if (!vendorIDSource)
                                                                                                                                        {
                                                                                                                                          goto LABEL_1170;
                                                                                                                                        }

                                                                                                                                        if (vendorIDSource == vendorIDSource)
                                                                                                                                        {
                                                                                                                                          if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
                                                                                                                                          {
                                                                                                                                            goto LABEL_1234;
                                                                                                                                          }

                                                                                                                                          goto LABEL_1627;
                                                                                                                                        }
                                                                                                                                      }

                                                                                                                                      LOBYTE(v27) = 0;
                                                                                                                                      goto LABEL_1170;
                                                                                                                                    }
                                                                                                                                  }

                                                                                                                                  else
                                                                                                                                  {
                                                                                                                                    if (!vendorID)
                                                                                                                                    {
                                                                                                                                      goto LABEL_1127;
                                                                                                                                    }

                                                                                                                                    if (vendorID == vendorID)
                                                                                                                                    {
                                                                                                                                      if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                      {
                                                                                                                                        [CBDevice isEqualToDevice:? exactMatch:?];
                                                                                                                                      }

                                                                                                                                      goto LABEL_1234;
                                                                                                                                    }
                                                                                                                                  }

                                                                                                                                  LOBYTE(v27) = 0;
                                                                                                                                  goto LABEL_1127;
                                                                                                                                }
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                if (!tipiConnectionStatus2)
                                                                                                                                {
                                                                                                                                  goto LABEL_1089;
                                                                                                                                }

                                                                                                                                if (tipiConnectionStatus2 == v248)
                                                                                                                                {
                                                                                                                                  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                                  {
                                                                                                                                    [CBDevice isEqualToDevice:exactMatch:];
                                                                                                                                  }

                                                                                                                                  goto LABEL_1234;
                                                                                                                                }
                                                                                                                              }

                                                                                                                              LOBYTE(v27) = 0;
                                                                                                                              goto LABEL_1089;
                                                                                                                            }
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            if (!spatialAudioMode || spatialAudioMode == 255)
                                                                                                                            {
                                                                                                                              goto LABEL_1066;
                                                                                                                            }

                                                                                                                            if (v250 == spatialAudioMode)
                                                                                                                            {
                                                                                                                              if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                              {
                                                                                                                                [CBDevice isEqualToDevice:exactMatch:];
                                                                                                                              }

                                                                                                                              goto LABEL_1234;
                                                                                                                            }
                                                                                                                          }

                                                                                                                          LOBYTE(v27) = 0;
                                                                                                                          goto LABEL_1066;
                                                                                                                        }
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        if (!selectiveSpeechListeningConfig2)
                                                                                                                        {
                                                                                                                          goto LABEL_959;
                                                                                                                        }

                                                                                                                        if (selectiveSpeechListeningConfig2 == v225)
                                                                                                                        {
                                                                                                                          if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                          {
                                                                                                                            [CBDevice isEqualToDevice:exactMatch:];
                                                                                                                          }

                                                                                                                          goto LABEL_1234;
                                                                                                                        }
                                                                                                                      }

                                                                                                                      LOBYTE(v27) = 0;
                                                                                                                      goto LABEL_959;
                                                                                                                    }
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    if (!selectiveSpeechListeningCapability)
                                                                                                                    {
                                                                                                                      goto LABEL_944;
                                                                                                                    }

                                                                                                                    if (selectiveSpeechListeningCapability == 1)
                                                                                                                    {
                                                                                                                      v223 = @"Enabled";
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v223 = @"?";
                                                                                                                    }

                                                                                                                    if (selectiveSpeechListeningCapability == v220)
                                                                                                                    {
                                                                                                                      if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                      {
                                                                                                                        [CBDevice isEqualToDevice:v219 exactMatch:v223];
                                                                                                                      }

                                                                                                                      goto LABEL_1234;
                                                                                                                    }
                                                                                                                  }

                                                                                                                  LOBYTE(v27) = 0;
                                                                                                                  goto LABEL_944;
                                                                                                                }
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                if (!secondaryPlacement2)
                                                                                                                {
                                                                                                                  goto LABEL_920;
                                                                                                                }

                                                                                                                if (v216 == secondaryPlacement2)
                                                                                                                {
                                                                                                                  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                                  {
                                                                                                                    [CBDevice isEqualToDevice:v216 exactMatch:?];
                                                                                                                  }

                                                                                                                  goto LABEL_1234;
                                                                                                                }
                                                                                                              }

                                                                                                              LOBYTE(v27) = 0;
                                                                                                              goto LABEL_920;
                                                                                                            }

                                                                                                            if (!productName)
                                                                                                            {
                                                                                                              goto LABEL_905;
                                                                                                            }

                                                                                                            v212 = v205;
                                                                                                            v213 = v207;
                                                                                                            v214 = v213;
                                                                                                            if (v205 == v207)
                                                                                                            {
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              v27 = [(NSString *)v212 isEqual:v213];

                                                                                                              if (!v27)
                                                                                                              {
LABEL_976:

                                                                                                                goto LABEL_1235;
                                                                                                              }
                                                                                                            }

                                                                                                            if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                            {
                                                                                                              LogPrintF_safe();
                                                                                                            }

                                                                                                            LOBYTE(v27) = 1;
                                                                                                            goto LABEL_976;
                                                                                                          }
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          if (!productID)
                                                                                                          {
                                                                                                            goto LABEL_875;
                                                                                                          }

                                                                                                          if (productID == productID)
                                                                                                          {
                                                                                                            if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
                                                                                                            {
                                                                                                              goto LABEL_1234;
                                                                                                            }

                                                                                                            goto LABEL_873;
                                                                                                          }
                                                                                                        }

                                                                                                        LOBYTE(v27) = 0;
                                                                                                        goto LABEL_875;
                                                                                                      }
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      if (!primaryPlacement)
                                                                                                      {
                                                                                                        goto LABEL_860;
                                                                                                      }

                                                                                                      if (v197 == primaryPlacement)
                                                                                                      {
                                                                                                        if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                        {
                                                                                                          [CBDevice isEqualToDevice:v197 exactMatch:?];
                                                                                                        }

                                                                                                        goto LABEL_1234;
                                                                                                      }
                                                                                                    }

                                                                                                    LOBYTE(v27) = 0;
                                                                                                    goto LABEL_860;
                                                                                                  }
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  if (!primaryBudSide || primaryBudSide == 3)
                                                                                                  {
                                                                                                    goto LABEL_832;
                                                                                                  }

                                                                                                  if (primaryBudSide == v199)
                                                                                                  {
                                                                                                    if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
                                                                                                    {
                                                                                                      goto LABEL_1234;
                                                                                                    }

                                                                                                    goto LABEL_1627;
                                                                                                  }
                                                                                                }

                                                                                                LOBYTE(v27) = 0;
                                                                                                goto LABEL_832;
                                                                                              }

                                                                                              name = [deviceCopy name];
                                                                                              if (name)
                                                                                              {
                                                                                                v65 = v182;
                                                                                                v184 = name;
                                                                                                v67 = v184;
                                                                                                if (v182 == name)
                                                                                                {

                                                                                                  if (!matchCopy)
                                                                                                  {
                                                                                                    if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
                                                                                                    {
                                                                                                      goto LABEL_1233;
                                                                                                    }

                                                                                                    goto LABEL_1232;
                                                                                                  }

                                                                                                  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                  {
                                                                                                    v365 = v65;
                                                                                                    v384 = v67;
                                                                                                    LogPrintF_safe();
                                                                                                  }

                                                                                                  goto LABEL_792;
                                                                                                }

                                                                                                v185 = [(NSString *)v65 isEqual:v184];

                                                                                                if (v185)
                                                                                                {
                                                                                                  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                                  {
                                                                                                    v365 = v65;
                                                                                                    v384 = v67;
                                                                                                    LogPrintF_safe();
                                                                                                  }

                                                                                                  if (!matchCopy)
                                                                                                  {
                                                                                                    goto LABEL_1233;
                                                                                                  }

LABEL_792:
                                                                                                  LOBYTE(v27) = 1;
                                                                                                  goto LABEL_793;
                                                                                                }

                                                                                                LOBYTE(v27) = 0;
                                                                                              }

LABEL_793:

                                                                                              goto LABEL_794;
                                                                                            }
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            if (!muteControlCapability)
                                                                                            {
                                                                                              goto LABEL_762;
                                                                                            }

                                                                                            if (muteControlCapability == v177)
                                                                                            {
                                                                                              if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                              {
                                                                                                [CBDevice isEqualToDevice:exactMatch:];
                                                                                              }

                                                                                              goto LABEL_1234;
                                                                                            }
                                                                                          }

                                                                                          LOBYTE(v27) = 0;
                                                                                          goto LABEL_762;
                                                                                        }
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        if (!mspSubScenario2)
                                                                                        {
                                                                                          goto LABEL_747;
                                                                                        }

                                                                                        if (mspSubScenario2 == v172)
                                                                                        {
                                                                                          if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
                                                                                          {
                                                                                            goto LABEL_1234;
                                                                                          }

                                                                                          goto LABEL_1627;
                                                                                        }
                                                                                      }

                                                                                      LOBYTE(v27) = 0;
                                                                                      goto LABEL_747;
                                                                                    }
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    if (!mspDeviceClass2)
                                                                                    {
                                                                                      goto LABEL_680;
                                                                                    }

                                                                                    if (v163 == mspDeviceClass2)
                                                                                    {
                                                                                      if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                      {
                                                                                        [CBDevice isEqualToDevice:exactMatch:];
                                                                                      }

                                                                                      goto LABEL_1234;
                                                                                    }
                                                                                  }

                                                                                  LOBYTE(v27) = 0;
                                                                                  goto LABEL_680;
                                                                                }
                                                                              }

                                                                              else
                                                                              {
                                                                                if (!microphoneMode)
                                                                                {
                                                                                  goto LABEL_600;
                                                                                }

                                                                                if (v148 == microphoneMode)
                                                                                {
                                                                                  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                                  {
                                                                                    [CBDevice isEqualToDevice:exactMatch:];
                                                                                  }

                                                                                  goto LABEL_1234;
                                                                                }
                                                                              }

                                                                              LOBYTE(v27) = 0;
                                                                              goto LABEL_600;
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            if (!listeningMode2)
                                                                            {
                                                                              goto LABEL_585;
                                                                            }

                                                                            if (v145 == listeningMode2)
                                                                            {
                                                                              if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                              {
                                                                                [CBDevice isEqualToDevice:exactMatch:];
                                                                              }

                                                                              goto LABEL_1234;
                                                                            }
                                                                          }

                                                                          LOBYTE(v27) = 0;
                                                                          goto LABEL_585;
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        if (!interval)
                                                                        {
                                                                          goto LABEL_551;
                                                                        }

                                                                        if (interval == interval)
                                                                        {
                                                                          if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
                                                                          {
                                                                            goto LABEL_1234;
                                                                          }

                                                                          goto LABEL_1627;
                                                                        }
                                                                      }

                                                                      LOBYTE(v27) = 0;
                                                                      goto LABEL_551;
                                                                    }

LABEL_487:
                                                                    LOBYTE(v27) = 0;
                                                                    goto LABEL_493;
                                                                  }

                                                                  if (!hearingTestSupport)
                                                                  {
                                                                    goto LABEL_493;
                                                                  }

                                                                  if (v125 != hearingTestSupport)
                                                                  {
                                                                    goto LABEL_487;
                                                                  }

LABEL_484:
                                                                  if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
                                                                  {
                                                                    goto LABEL_1234;
                                                                  }

                                                                  goto LABEL_1627;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                if (!gfpModelID)
                                                                {
                                                                  goto LABEL_433;
                                                                }

                                                                if (v113 == gfpModelID)
                                                                {
                                                                  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                                  {
                                                                    [CBDevice isEqualToDevice:exactMatch:];
                                                                  }

                                                                  goto LABEL_1234;
                                                                }
                                                              }

                                                              LOBYTE(v27) = 0;
                                                              goto LABEL_433;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            if (!frequencyBand2)
                                                            {
                                                              goto LABEL_418;
                                                            }

                                                            if (frequencyBand2 == v108)
                                                            {
                                                              if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
                                                              {
                                                                goto LABEL_1234;
                                                              }

                                                              goto LABEL_1627;
                                                            }
                                                          }

                                                          LOBYTE(v27) = 0;
                                                          goto LABEL_418;
                                                        }

                                                        firmwareVersion = [deviceCopy firmwareVersion];
                                                        if (firmwareVersion)
                                                        {
                                                          v65 = v101;
                                                          v103 = firmwareVersion;
                                                          v67 = v103;
                                                          if (v101 == firmwareVersion)
                                                          {

                                                            if (!matchCopy)
                                                            {
                                                              if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
                                                              {
                                                                goto LABEL_1233;
                                                              }

                                                              goto LABEL_1232;
                                                            }

                                                            if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                            {
                                                              v359 = v65;
                                                              v378 = v67;
                                                              LogPrintF_safe();
                                                            }

                                                            goto LABEL_379;
                                                          }

                                                          v104 = [(NSString *)v65 isEqual:v103];

                                                          if (v104)
                                                          {
                                                            if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                            {
                                                              v359 = v65;
                                                              v378 = v67;
                                                              LogPrintF_safe();
                                                            }

                                                            if (!matchCopy)
                                                            {
                                                              goto LABEL_1233;
                                                            }

LABEL_379:
                                                            LOBYTE(v27) = 1;
                                                            goto LABEL_380;
                                                          }

                                                          LOBYTE(v27) = 0;
                                                        }

LABEL_380:

                                                        goto LABEL_381;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      if (!endCallCapability2)
                                                      {
                                                        goto LABEL_339;
                                                      }

                                                      if (endCallCapability2 == v96)
                                                      {
                                                        if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                        {
                                                          [CBDevice isEqualToDevice:exactMatch:];
                                                        }

                                                        goto LABEL_1234;
                                                      }
                                                    }

                                                    LOBYTE(v27) = 0;
                                                    goto LABEL_339;
                                                  }
                                                }

                                                else
                                                {
                                                  if (!doubleTapCapability2)
                                                  {
                                                    goto LABEL_324;
                                                  }

                                                  if (v93 == doubleTapCapability2)
                                                  {
                                                    if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                    {
                                                      [CBDevice isEqualToDevice:exactMatch:];
                                                    }

                                                    goto LABEL_1234;
                                                  }
                                                }

                                                LOBYTE(v27) = 0;
                                                goto LABEL_324;
                                              }
                                            }

                                            else
                                            {
                                              if (!doubleTapActionRight2)
                                              {
                                                goto LABEL_309;
                                              }

                                              if (v90 == doubleTapActionRight2)
                                              {
                                                if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                                {
                                                  [CBDevice isEqualToDevice:exactMatch:];
                                                }

                                                goto LABEL_1234;
                                              }
                                            }

                                            LOBYTE(v27) = 0;
                                            goto LABEL_309;
                                          }
                                        }

                                        else
                                        {
                                          if (!doubleTapActionLeft2)
                                          {
                                            goto LABEL_294;
                                          }

                                          if (v87 == doubleTapActionLeft2)
                                          {
                                            if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                            {
                                              [CBDevice isEqualToDevice:exactMatch:];
                                            }

                                            goto LABEL_1234;
                                          }
                                        }

                                        LOBYTE(v27) = 0;
                                        goto LABEL_294;
                                      }
                                    }

                                    else
                                    {
                                      if (!deviceType)
                                      {
                                        goto LABEL_279;
                                      }

                                      if (deviceType == deviceType)
                                      {
                                        if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                        {
                                          [CBDevice isEqualToDevice:? exactMatch:?];
                                        }

                                        goto LABEL_1234;
                                      }
                                    }

                                    LOBYTE(v27) = 0;
                                    goto LABEL_279;
                                  }
                                }

                                else
                                {
                                  if (!crownRotationDirection2)
                                  {
                                    goto LABEL_264;
                                  }

                                  if (crownRotationDirection2 == 1)
                                  {
                                    v82 = @"BackToFront";
                                  }

                                  else
                                  {
                                    v82 = @"?";
                                  }

                                  if (crownRotationDirection2 == 2)
                                  {
                                    v83 = @"FrontToBack";
                                  }

                                  else
                                  {
                                    v83 = v82;
                                  }

                                  if (crownRotationDirection2 == v78)
                                  {
                                    if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                    {
                                      [CBDevice isEqualToDevice:v77 exactMatch:v83];
                                    }

                                    goto LABEL_1234;
                                  }
                                }

                                LOBYTE(v27) = 0;
                                goto LABEL_264;
                              }
                            }

                            else
                            {
                              if (!conversationDetectConfig)
                              {
                                goto LABEL_231;
                              }

                              if (conversationDetectConfig == v73)
                              {
                                if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                                {
                                  [CBDevice isEqualToDevice:exactMatch:];
                                }

                                goto LABEL_1234;
                              }
                            }

                            LOBYTE(v27) = 0;
                            goto LABEL_231;
                          }
                        }

                        else
                        {
                          if (!conversationDetectCapability2)
                          {
                            goto LABEL_216;
                          }

                          if (conversationDetectCapability2 == v70)
                          {
                            if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                            {
                              [CBDevice isEqualToDevice:exactMatch:];
                            }

                            goto LABEL_1234;
                          }
                        }

                        LOBYTE(v27) = 0;
                        goto LABEL_216;
                      }

                      contactID = [deviceCopy contactID];
                      if (contactID)
                      {
                        v65 = v63;
                        v66 = contactID;
                        v67 = v66;
                        if (v63 == contactID)
                        {

                          if (!matchCopy)
                          {
                            if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
                            {
                              goto LABEL_1233;
                            }

                            goto LABEL_1232;
                          }

                          if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                          {
                            v358 = v65;
                            v377 = v67;
                            LogPrintF_safe();
                          }

                          goto LABEL_199;
                        }

                        v68 = [(NSString *)v65 isEqual:v66];

                        if (v68)
                        {
                          if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                          {
                            v358 = v65;
                            v377 = v67;
                            LogPrintF_safe();
                          }

                          if (!matchCopy)
                          {
                            goto LABEL_1233;
                          }

LABEL_199:
                          LOBYTE(v27) = 1;
                          goto LABEL_200;
                        }

                        LOBYTE(v27) = 0;
                      }

LABEL_200:

                      goto LABEL_201;
                    }

                    caseVersion = [deviceCopy caseVersion];
                    v30 = caseVersion;
                    if (!caseVersion)
                    {
                      goto LABEL_159;
                    }

                    if (bleAddressData != caseVersion)
                    {
                      v55 = bleAddressData;
                      v56 = [(NSString *)v55 isEqual:v30];

                      if (v56)
                      {
                        if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                        {
                          v357 = v55;
                          v376 = v30;
                          LogPrintF_safe();
                        }

                        if (!matchCopy)
                        {
                          goto LABEL_368;
                        }

                        goto LABEL_158;
                      }

                      LOBYTE(v27) = 0;
LABEL_159:

                      goto LABEL_160;
                    }

                    if (matchCopy)
                    {
                      if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                      {
                        v357 = bleAddressData;
                        v376 = v30;
                        LogPrintF_safe();
                      }

LABEL_158:
                      LOBYTE(v27) = 1;
                      goto LABEL_159;
                    }

                    if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
                    {
                      goto LABEL_368;
                    }

LABEL_151:
                    LogPrintF_safe();
LABEL_368:

LABEL_1234:
                    LOBYTE(v27) = 1;
                    goto LABEL_1235;
                  }

                  btAddressData = [deviceCopy btAddressData];
                  v30 = btAddressData;
                  if (btAddressData)
                  {
                    if (bleAddressData == btAddressData)
                    {
                      if (!matchCopy)
                      {
                        if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                        {
                          [CBDevice isEqualToDevice:bleAddressData exactMatch:v30];
                        }

                        goto LABEL_368;
                      }

                      if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                      {
                        [CBDevice isEqualToDevice:bleAddressData exactMatch:v30];
                      }
                    }

                    else
                    {
                      v52 = bleAddressData;
                      v53 = [(NSString *)v52 isEqual:v30];

                      if (!v53)
                      {
                        LOBYTE(v27) = 0;
                        goto LABEL_128;
                      }

                      if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                      {
                        [CBDevice isEqualToDevice:v52 exactMatch:v30];
                        if (!matchCopy)
                        {
                          goto LABEL_368;
                        }
                      }

                      else if (!matchCopy)
                      {
                        goto LABEL_368;
                      }
                    }

                    LOBYTE(v27) = 1;
                  }

LABEL_128:

                  goto LABEL_129;
                }
              }

              else
              {
                if (!autoAncCapability2)
                {
                  goto LABEL_95;
                }

                if (autoAncCapability2 == v46)
                {
                  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
                  {
                    [CBDevice isEqualToDevice:exactMatch:];
                  }

                  goto LABEL_1234;
                }
              }

              LOBYTE(v27) = 0;
              goto LABEL_95;
            }
          }

          else
          {
            if (!adaptiveVolumeConfig)
            {
              goto LABEL_56;
            }

            if (adaptiveVolumeConfig == v37)
            {
              if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
              {
                [CBDevice isEqualToDevice:exactMatch:];
              }

              goto LABEL_1234;
            }
          }

          LOBYTE(v27) = 0;
          goto LABEL_56;
        }
      }

      else
      {
        if (!adaptiveVolumeCapability2)
        {
          goto LABEL_41;
        }

        if (adaptiveVolumeCapability2 == v34)
        {
          if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
          {
            [CBDevice isEqualToDevice:exactMatch:];
          }

          goto LABEL_1234;
        }
      }

      LOBYTE(v27) = 0;
      goto LABEL_41;
    }

LABEL_12:

    adaptiveVolumeCapability = [(CBDevice *)self adaptiveVolumeCapability];
    if (!adaptiveVolumeCapability)
    {
      goto LABEL_41;
    }

    goto LABEL_27;
  }

LABEL_1235:

  return v27;
}

- (BOOL)_matchingFlags:(id)flags exactMatch:(BOOL)match
{
  flagsCopy = flags;
  v175 = 0;
  v176 = &v175;
  v177 = 0x3032000000;
  v178 = __Block_byref_object_copy__5;
  v179 = __Block_byref_object_dispose__5;
  v180 = @"?";
  v173[0] = MEMORY[0x1E69E9820];
  v173[1] = 3221225472;
  v173[2] = __38__CBDevice__matchingFlags_exactMatch___block_invoke;
  v173[3] = &unk_1E81215A0;
  v173[4] = &v175;
  matchCopy = match;
  v7 = MEMORY[0x1C68DF720](v173);
  accessoryStatusFlags = [(CBDevice *)self accessoryStatusFlags];
  if (!accessoryStatusFlags)
  {
    goto LABEL_13;
  }

  v9 = accessoryStatusFlags;
  if (!match)
  {
    accessoryStatusFlags2 = [flagsCopy accessoryStatusFlags];
    if (accessoryStatusFlags2 && v7[2](v7, v9, accessoryStatusFlags2))
    {
      if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_358;
      }

      [(CBDevice *)self accessoryStatusFlags];
      v14 = CUPrintFlags32();
      [flagsCopy accessoryStatusFlags];
      v15 = CUPrintFlags32();
      LogPrintF_safe();
      goto LABEL_357;
    }

    goto LABEL_13;
  }

  accessoryStatusFlags3 = [flagsCopy accessoryStatusFlags];
  if (!accessoryStatusFlags3 || !v7[2](v7, v9, accessoryStatusFlags3))
  {
LABEL_13:
    v16 = 0;
    goto LABEL_14;
  }

  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
  {
    v11 = v176[5];
    [(CBDevice *)self accessoryStatusFlags];
    v12 = CUPrintFlags32();
    [flagsCopy accessoryStatusFlags];
    CUPrintFlags32();
    v156 = v139 = v12;
    v122 = v11;
    LogPrintF_safe();
  }

  v16 = 1;
LABEL_14:
  v17 = [(CBDevice *)self connectedServices:v122];
  if (!v17)
  {
    goto LABEL_29;
  }

  v19 = v17;
  if (!match)
  {
    connectedServices = [flagsCopy connectedServices];
    if (connectedServices)
    {
      v25 = connectedServices;
      if (v7[2](v7, v19, connectedServices))
      {
        if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_358;
        }

        v14 = CBServiceFlagsToString(v19);
        v15 = CBServiceFlagsToString(v25);
        LogPrintF_safe();
        goto LABEL_357;
      }

      v16 = 0;
    }

LABEL_29:
    deviceFlags = self->_deviceFlags;
    if (!deviceFlags)
    {
      goto LABEL_53;
    }

    goto LABEL_30;
  }

  connectedServices2 = [flagsCopy connectedServices];
  if (!connectedServices2)
  {
    goto LABEL_29;
  }

  v21 = connectedServices2;
  if (!v7[2](v7, v19, connectedServices2))
  {
    v16 = 0;
    deviceFlags = self->_deviceFlags;
    if (!deviceFlags)
    {
      goto LABEL_53;
    }

LABEL_30:
    if (match)
    {
      deviceFlags = [flagsCopy deviceFlags];
      if (!deviceFlags)
      {
        goto LABEL_53;
      }

      if (v7[2](v7, deviceFlags, deviceFlags))
      {
        if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
        {
          v27 = v176[5];
          v28 = CBDeviceFlagsToString(self->_deviceFlags);
          CBDeviceFlagsToString([flagsCopy deviceFlags]);
          v157 = v140 = v28;
          v123 = v27;
          LogPrintF_safe();
        }

        v16 = 1;
        goto LABEL_53;
      }
    }

    else
    {
      deviceFlags = [flagsCopy deviceFlags];
      if (!deviceFlags)
      {
        goto LABEL_53;
      }

      if (v7[2](v7, deviceFlags, deviceFlags))
      {
        if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_358;
        }

        v14 = CBDeviceFlagsToString(self->_deviceFlags);
        v15 = CBDeviceFlagsToString([flagsCopy deviceFlags]);
        LogPrintF_safe();
        goto LABEL_357;
      }
    }

    v16 = 0;
    goto LABEL_53;
  }

  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
  {
    v22 = v176[5];
    v23 = CBServiceFlagsToString(v19);
    CBServiceFlagsToString(v21);
    v157 = v140 = v23;
    v123 = v22;
    LogPrintF_safe();
  }

  v16 = 1;
  deviceFlags = self->_deviceFlags;
  if (deviceFlags)
  {
    goto LABEL_30;
  }

LABEL_53:
  discoveryFlags = self->_discoveryFlags;
  if (!discoveryFlags)
  {
    goto LABEL_70;
  }

  if (!match)
  {
    discoveryFlags = [flagsCopy discoveryFlags];
    if (!discoveryFlags)
    {
      goto LABEL_70;
    }

    if (v7[2](v7, discoveryFlags, discoveryFlags))
    {
      if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_358;
      }

      v14 = CBDiscoveryFlagsToString(discoveryFlags);
      v15 = CBDiscoveryFlagsToString(discoveryFlags);
      LogPrintF_safe();
      goto LABEL_357;
    }

    goto LABEL_65;
  }

  discoveryFlags2 = [flagsCopy discoveryFlags];
  if (!discoveryFlags2)
  {
    goto LABEL_70;
  }

  if (!v7[2](v7, discoveryFlags, discoveryFlags2))
  {
LABEL_65:
    v16 = 0;
    goto LABEL_70;
  }

  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
  {
    v31 = v176[5];
    v32 = CBDiscoveryFlagsToString(discoveryFlags);
    CBDiscoveryFlagsToString(discoveryFlags2);
    v157 = v140 = v32;
    v123 = v31;
    LogPrintF_safe();
  }

  v16 = 1;
LABEL_70:
  v34 = [(CBDevice *)self gapaFlags:deviceFlags];
  if (!v34)
  {
    goto LABEL_87;
  }

  v35 = v34;
  if (!match)
  {
    gapaFlags = [flagsCopy gapaFlags];
    if (!gapaFlags)
    {
      goto LABEL_87;
    }

    if (v7[2](v7, v35, gapaFlags))
    {
      if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_358;
      }

      goto LABEL_356;
    }

    goto LABEL_82;
  }

  gapaFlags2 = [flagsCopy gapaFlags];
  if (!gapaFlags2)
  {
    goto LABEL_87;
  }

  if (!v7[2](v7, v35, gapaFlags2))
  {
LABEL_82:
    v16 = 0;
    goto LABEL_87;
  }

  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
  {
    v37 = v176[5];
    v38 = CUPrintFlags32();
    CUPrintFlags32();
    v158 = v141 = v38;
    v124 = v37;
    LogPrintF_safe();
  }

  v16 = 1;
LABEL_87:
  v40 = [(CBDevice *)self listeningModeConfigs:v124];
  if (!v40)
  {
    goto LABEL_102;
  }

  v41 = v40;
  if (!match)
  {
    listeningModeConfigs = [flagsCopy listeningModeConfigs];
    if (listeningModeConfigs)
    {
      if (v7[2](v7, v41, listeningModeConfigs))
      {
        if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_358;
        }

        goto LABEL_356;
      }

      v16 = 0;
    }

LABEL_102:
    supportedServices = self->_supportedServices;
    if (!supportedServices)
    {
      goto LABEL_124;
    }

    goto LABEL_103;
  }

  listeningModeConfigs2 = [flagsCopy listeningModeConfigs];
  if (!listeningModeConfigs2)
  {
    goto LABEL_102;
  }

  if (!v7[2](v7, v41, listeningModeConfigs2))
  {
    v16 = 0;
    supportedServices = self->_supportedServices;
    if (!supportedServices)
    {
      goto LABEL_124;
    }

LABEL_103:
    if (match)
    {
      supportedServices = [flagsCopy supportedServices];
      if (!supportedServices)
      {
        goto LABEL_124;
      }

      if (v7[2](v7, supportedServices, supportedServices))
      {
        if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
        {
          v47 = v176[5];
          v48 = CUPrintFlags32();
          CUPrintFlags32();
          v159 = v142 = v48;
          v125 = v47;
          LogPrintF_safe();
        }

        v16 = 1;
        goto LABEL_124;
      }
    }

    else
    {
      supportedServices2 = [flagsCopy supportedServices];
      if (!supportedServices2)
      {
        goto LABEL_124;
      }

      if (v7[2](v7, supportedServices, supportedServices2))
      {
        if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_358;
        }

        goto LABEL_356;
      }
    }

    v16 = 0;
    goto LABEL_124;
  }

  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
  {
    v43 = CUPrintFlags32();
    CUPrintFlags32();
    v142 = v125 = v43;
    LogPrintF_safe();
  }

  v16 = 1;
  supportedServices = self->_supportedServices;
  if (supportedServices)
  {
    goto LABEL_103;
  }

LABEL_124:
  v50 = [(CBDevice *)self airdropFlags:v125];
  if (!v50)
  {
    goto LABEL_141;
  }

  if (!match)
  {
    airdropFlags = [flagsCopy airdropFlags];
    if (!airdropFlags)
    {
      goto LABEL_141;
    }

    if (v7[2](v7, v50, airdropFlags))
    {
      if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_358;
      }

      goto LABEL_356;
    }

    goto LABEL_136;
  }

  airdropFlags2 = [flagsCopy airdropFlags];
  if (!airdropFlags2)
  {
    goto LABEL_141;
  }

  if (!v7[2](v7, v50, airdropFlags2))
  {
LABEL_136:
    v16 = 0;
    goto LABEL_141;
  }

  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
  {
    v52 = v176[5];
    v53 = CUPrintFlags32();
    CUPrintFlags32();
    v160 = v143 = v53;
    v126 = v52;
    LogPrintF_safe();
  }

  v16 = 1;
LABEL_141:
  v55 = [(CBDevice *)self airplaySourceFlags:v126];
  if (!v55)
  {
    goto LABEL_158;
  }

  if (!match)
  {
    airplaySourceFlags = [flagsCopy airplaySourceFlags];
    if (!airplaySourceFlags)
    {
      goto LABEL_158;
    }

    if (v7[2](v7, v55, airplaySourceFlags))
    {
      if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_358;
      }

      goto LABEL_356;
    }

    goto LABEL_153;
  }

  airplaySourceFlags2 = [flagsCopy airplaySourceFlags];
  if (!airplaySourceFlags2)
  {
    goto LABEL_158;
  }

  if (!v7[2](v7, v55, airplaySourceFlags2))
  {
LABEL_153:
    v16 = 0;
    goto LABEL_158;
  }

  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
  {
    v57 = v176[5];
    v58 = CUPrintFlags32();
    CUPrintFlags32();
    v161 = v144 = v58;
    v127 = v57;
    LogPrintF_safe();
  }

  v16 = 1;
LABEL_158:
  v60 = [(CBDevice *)self airplayTargetFlags:v127];
  if (!v60)
  {
    goto LABEL_175;
  }

  if (!match)
  {
    airplayTargetFlags = [flagsCopy airplayTargetFlags];
    if (!airplayTargetFlags)
    {
      goto LABEL_175;
    }

    if (v7[2](v7, v60, airplayTargetFlags))
    {
      if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_358;
      }

      goto LABEL_356;
    }

    goto LABEL_170;
  }

  airplayTargetFlags2 = [flagsCopy airplayTargetFlags];
  if (!airplayTargetFlags2)
  {
    goto LABEL_175;
  }

  if (!v7[2](v7, v60, airplayTargetFlags2))
  {
LABEL_170:
    v16 = 0;
    goto LABEL_175;
  }

  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
  {
    v62 = v176[5];
    v63 = CUPrintFlags32();
    CUPrintFlags32();
    v162 = v145 = v63;
    v128 = v62;
    LogPrintF_safe();
  }

  v16 = 1;
LABEL_175:
  v65 = [(CBDevice *)self dsActionFlags:v128];
  if (!v65)
  {
    goto LABEL_192;
  }

  if (!match)
  {
    dsActionFlags = [flagsCopy dsActionFlags];
    if (!dsActionFlags)
    {
      goto LABEL_192;
    }

    if (v7[2](v7, v65, dsActionFlags))
    {
      if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_358;
      }

      goto LABEL_356;
    }

    goto LABEL_187;
  }

  dsActionFlags2 = [flagsCopy dsActionFlags];
  if (!dsActionFlags2)
  {
    goto LABEL_192;
  }

  if (!v7[2](v7, v65, dsActionFlags2))
  {
LABEL_187:
    v16 = 0;
    goto LABEL_192;
  }

  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
  {
    v67 = v176[5];
    v68 = CUPrintFlags32();
    CUPrintFlags32();
    v163 = v146 = v68;
    v129 = v67;
    LogPrintF_safe();
  }

  v16 = 1;
LABEL_192:
  v70 = [(CBDevice *)self peerStatusFlag:v129];
  if (!v70)
  {
    goto LABEL_209;
  }

  if (!match)
  {
    peerStatusFlag = [flagsCopy peerStatusFlag];
    if (!peerStatusFlag)
    {
      goto LABEL_209;
    }

    if (v7[2](v7, v70, peerStatusFlag))
    {
      if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_358;
      }

      goto LABEL_356;
    }

    goto LABEL_204;
  }

  peerStatusFlag2 = [flagsCopy peerStatusFlag];
  if (!peerStatusFlag2)
  {
    goto LABEL_209;
  }

  if (!v7[2](v7, v70, peerStatusFlag2))
  {
LABEL_204:
    v16 = 0;
    goto LABEL_209;
  }

  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
  {
    v72 = v176[5];
    v73 = CUPrintFlags32();
    CUPrintFlags32();
    v164 = v147 = v73;
    v130 = v72;
    LogPrintF_safe();
  }

  v16 = 1;
LABEL_209:
  v75 = [(CBDevice *)self homeKitV1Flags:v130];
  if (!v75)
  {
    goto LABEL_226;
  }

  if (!match)
  {
    homeKitV1Flags = [flagsCopy homeKitV1Flags];
    if (!homeKitV1Flags)
    {
      goto LABEL_226;
    }

    if (v7[2](v7, v75, homeKitV1Flags))
    {
      if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_358;
      }

      goto LABEL_356;
    }

    goto LABEL_221;
  }

  homeKitV1Flags2 = [flagsCopy homeKitV1Flags];
  if (!homeKitV1Flags2)
  {
    goto LABEL_226;
  }

  if (!v7[2](v7, v75, homeKitV1Flags2))
  {
LABEL_221:
    v16 = 0;
    goto LABEL_226;
  }

  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
  {
    v77 = v176[5];
    v78 = CUPrintFlags32();
    CUPrintFlags32();
    v165 = v148 = v78;
    v131 = v77;
    LogPrintF_safe();
  }

  v16 = 1;
LABEL_226:
  v80 = [(CBDevice *)self nearbyActionFlags:v131];
  if (!v80)
  {
    goto LABEL_243;
  }

  v81 = v80;
  if (!match)
  {
    nearbyActionFlags = [flagsCopy nearbyActionFlags];
    if (!nearbyActionFlags)
    {
      goto LABEL_243;
    }

    if (v7[2](v7, v81, nearbyActionFlags))
    {
      if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_358;
      }

      goto LABEL_356;
    }

    goto LABEL_238;
  }

  nearbyActionFlags2 = [flagsCopy nearbyActionFlags];
  if (!nearbyActionFlags2)
  {
    goto LABEL_243;
  }

  if (!v7[2](v7, v81, nearbyActionFlags2))
  {
LABEL_238:
    v16 = 0;
    goto LABEL_243;
  }

  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
  {
    v83 = v176[5];
    v84 = CUPrintFlags32();
    CUPrintFlags32();
    v166 = v149 = v84;
    v132 = v83;
    LogPrintF_safe();
  }

  v16 = 1;
LABEL_243:
  v86 = [(CBDevice *)self nearbyActionV2Flags:v132];
  if (!v86)
  {
    goto LABEL_260;
  }

  v87 = v86;
  if (!match)
  {
    nearbyActionV2Flags = [flagsCopy nearbyActionV2Flags];
    if (!nearbyActionV2Flags)
    {
      goto LABEL_260;
    }

    if (v7[2](v7, v87, nearbyActionV2Flags))
    {
      if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_358;
      }

      goto LABEL_356;
    }

    goto LABEL_255;
  }

  nearbyActionV2Flags2 = [flagsCopy nearbyActionV2Flags];
  if (!nearbyActionV2Flags2)
  {
    goto LABEL_260;
  }

  if (!v7[2](v7, v87, nearbyActionV2Flags2))
  {
LABEL_255:
    v16 = 0;
    goto LABEL_260;
  }

  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
  {
    v89 = v176[5];
    v90 = CUPrintFlags32();
    CUPrintFlags32();
    v167 = v150 = v90;
    v133 = v89;
    LogPrintF_safe();
  }

  v16 = 1;
LABEL_260:
  v92 = [(CBDevice *)self nearbyInfoFlags:v133];
  if (!v92)
  {
    goto LABEL_277;
  }

  v93 = v92;
  if (!match)
  {
    nearbyInfoFlags = [flagsCopy nearbyInfoFlags];
    if (!nearbyInfoFlags)
    {
      goto LABEL_277;
    }

    if (v7[2](v7, v93, nearbyInfoFlags))
    {
      if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_358;
      }

      goto LABEL_356;
    }

    goto LABEL_272;
  }

  nearbyInfoFlags2 = [flagsCopy nearbyInfoFlags];
  if (!nearbyInfoFlags2)
  {
    goto LABEL_277;
  }

  if (!v7[2](v7, v93, nearbyInfoFlags2))
  {
LABEL_272:
    v16 = 0;
    goto LABEL_277;
  }

  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
  {
    v95 = v176[5];
    v96 = CUPrintFlags32();
    CUPrintFlags32();
    v168 = v151 = v96;
    v134 = v95;
    LogPrintF_safe();
  }

  v16 = 1;
LABEL_277:
  v98 = [(CBDevice *)self nearbyInfoV2Flags:v134];
  if (!v98)
  {
    goto LABEL_294;
  }

  if (!match)
  {
    nearbyInfoV2Flags = [flagsCopy nearbyInfoV2Flags];
    if (!nearbyInfoV2Flags)
    {
      goto LABEL_294;
    }

    if (v7[2](v7, v98, nearbyInfoV2Flags))
    {
      if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_358;
      }

      goto LABEL_356;
    }

    goto LABEL_289;
  }

  nearbyInfoV2Flags2 = [flagsCopy nearbyInfoV2Flags];
  if (!nearbyInfoV2Flags2)
  {
    goto LABEL_294;
  }

  if (!v7[2](v7, v98, nearbyInfoV2Flags2))
  {
LABEL_289:
    v16 = 0;
    goto LABEL_294;
  }

  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
  {
    v100 = v176[5];
    v101 = CUPrintFlags32();
    CUPrintFlags32();
    v169 = v152 = v101;
    v135 = v100;
    LogPrintF_safe();
  }

  v16 = 1;
LABEL_294:
  v103 = [(CBDevice *)self nearbyInfoV2InvitationTypes:v135];
  if (!v103)
  {
    goto LABEL_311;
  }

  if (!match)
  {
    nearbyInfoV2InvitationTypes = [flagsCopy nearbyInfoV2InvitationTypes];
    if (!nearbyInfoV2InvitationTypes)
    {
      goto LABEL_311;
    }

    if (v7[2](v7, v103, nearbyInfoV2InvitationTypes))
    {
      if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_358;
      }

      goto LABEL_356;
    }

    goto LABEL_306;
  }

  nearbyInfoV2InvitationTypes2 = [flagsCopy nearbyInfoV2InvitationTypes];
  if (!nearbyInfoV2InvitationTypes2)
  {
    goto LABEL_311;
  }

  if (!v7[2](v7, v103, nearbyInfoV2InvitationTypes2))
  {
LABEL_306:
    v16 = 0;
    goto LABEL_311;
  }

  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
  {
    v105 = v176[5];
    v106 = CUPrintFlags32();
    CUPrintFlags32();
    v170 = v153 = v106;
    v136 = v105;
    LogPrintF_safe();
  }

  v16 = 1;
LABEL_311:
  v108 = [(CBDevice *)self proximityServiceFlags:v136];
  if (!v108)
  {
    goto LABEL_328;
  }

  if (!match)
  {
    proximityServiceFlags = [flagsCopy proximityServiceFlags];
    if (!proximityServiceFlags)
    {
      goto LABEL_328;
    }

    if (v7[2](v7, v108, proximityServiceFlags))
    {
      if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_358;
      }

      goto LABEL_356;
    }

    goto LABEL_323;
  }

  proximityServiceFlags2 = [flagsCopy proximityServiceFlags];
  if (!proximityServiceFlags2)
  {
    goto LABEL_328;
  }

  if (!v7[2](v7, v108, proximityServiceFlags2))
  {
LABEL_323:
    v16 = 0;
    goto LABEL_328;
  }

  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
  {
    v110 = v176[5];
    v111 = CUPrintFlags32();
    CUPrintFlags32();
    v171 = v154 = v111;
    v137 = v110;
    LogPrintF_safe();
  }

  v16 = 1;
LABEL_328:
  v113 = [(CBDevice *)self spatialInteractionFlags:v137];
  if (!v113)
  {
    goto LABEL_345;
  }

  if (!match)
  {
    spatialInteractionFlags = [flagsCopy spatialInteractionFlags];
    if (!spatialInteractionFlags)
    {
      goto LABEL_345;
    }

    if (v7[2](v7, v113, spatialInteractionFlags))
    {
      if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_358;
      }

      goto LABEL_356;
    }

    goto LABEL_340;
  }

  spatialInteractionFlags2 = [flagsCopy spatialInteractionFlags];
  if (!spatialInteractionFlags2)
  {
    goto LABEL_345;
  }

  if (!v7[2](v7, v113, spatialInteractionFlags2))
  {
LABEL_340:
    v16 = 0;
    goto LABEL_345;
  }

  if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
  {
    v115 = v176[5];
    v116 = CUPrintFlags32();
    CUPrintFlags32();
    v172 = v155 = v116;
    v138 = v115;
    LogPrintF_safe();
  }

  v16 = 1;
LABEL_345:
  v118 = [(CBDevice *)self tipiState:v138];
  if (!v118)
  {
    goto LABEL_359;
  }

  if (!match)
  {
    tipiState = [flagsCopy tipiState];
    if (!tipiState)
    {
      goto LABEL_359;
    }

    if (!v7[2](v7, v118, tipiState))
    {
      goto LABEL_360;
    }

    if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_358;
    }

LABEL_356:
    v14 = CUPrintFlags32();
    v15 = CUPrintFlags32();
    LogPrintF_safe();
LABEL_357:

LABEL_358:
    v16 = 1;
    goto LABEL_359;
  }

  tipiState2 = [flagsCopy tipiState];
  if (tipiState2)
  {
    if (v7[2](v7, v118, tipiState2))
    {
      if (gLogCategory_CBDevice > 30 || gLogCategory_CBDevice == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_358;
      }

      goto LABEL_356;
    }

LABEL_360:
    v16 = 0;
  }

LABEL_359:

  _Block_object_dispose(&v175, 8);
  return v16;
}

BOOL __38__CBDevice__matchingFlags_exactMatch___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = @"=";

    return 1;
  }

  else
  {
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    if (*(a1 + 40) == 1)
    {
      *(v8 + 40) = @"!&~";

      return (a2 & ~a3) == 0;
    }

    else
    {
      *(v8 + 40) = @"&";

      return (a3 & a2) != 0;
    }
  }
}

+ (void)updateRemoteSendEvent:(id)event fromDeviceInfo:(id)info withDeviceKey:(id)key withCBXPCKey:(id)cKey
{
  eventCopy = event;
  infoCopy = info;
  keyCopy = key;
  cKeyCopy = cKey;
  v12 = [infoCopy objectForKeyedSubscript:keyCopy];

  if (v12)
  {
    v13 = [infoCopy objectForKeyedSubscript:keyCopy];
    [eventCopy setObject:v13 forKeyedSubscript:cKeyCopy];

    [infoCopy removeObjectForKey:keyCopy];
  }
}

+ (void)convertToWHBEvent:(id)event
{
  eventCopy = event;
  v4 = eventCopy;
  if (eventCopy)
  {
    v8 = eventCopy;
    v5 = [eventCopy objectForKeyedSubscript:@"dvIn"];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 mutableCopy];
      [v8 setObject:v7 forKeyedSubscript:@"dvIn"];
      [CBDevice updateRemoteSendEvent:v8 fromDeviceInfo:v7 withDeviceKey:@"bAMD" withCBXPCKey:@"blAM"];
      [CBDevice updateRemoteSendEvent:v8 fromDeviceInfo:v7 withDeviceKey:@"bATm" withCBXPCKey:@"blAt"];
      [CBDevice updateRemoteSendEvent:v8 fromDeviceInfo:v7 withDeviceKey:@"bTMC" withCBXPCKey:@"blATM"];
      [CBDevice updateRemoteSendEvent:v8 fromDeviceInfo:v7 withDeviceKey:@"blCH" withCBXPCKey:@"blCh"];
      [CBDevice updateRemoteSendEvent:v8 fromDeviceInfo:v7 withDeviceKey:@"blRS" withCBXPCKey:@"blRS"];
      [CBDevice updateRemoteSendEvent:v8 fromDeviceInfo:v7 withDeviceKey:@"btAD" withCBXPCKey:@"btAd"];
      [CBDevice updateRemoteSendEvent:v8 fromDeviceInfo:v7 withDeviceKey:@"h1Ca" withCBXPCKey:@"hkCa"];
      [CBDevice updateRemoteSendEvent:v8 fromDeviceInfo:v7 withDeviceKey:@"h1CV" withCBXPCKey:@"hkCV"];
      [CBDevice updateRemoteSendEvent:v8 fromDeviceInfo:v7 withDeviceKey:@"h1CN" withCBXPCKey:@"hkCN"];
      [CBDevice updateRemoteSendEvent:v8 fromDeviceInfo:v7 withDeviceKey:@"h1DI" withCBXPCKey:@"hkDI"];
      [CBDevice updateRemoteSendEvent:v8 fromDeviceInfo:v7 withDeviceKey:@"h1Fl" withCBXPCKey:@"hkFl"];
      [CBDevice updateRemoteSendEvent:v8 fromDeviceInfo:v7 withDeviceKey:@"h1SN" withCBXPCKey:@"hkS1"];
      [CBDevice updateRemoteSendEvent:v8 fromDeviceInfo:v7 withDeviceKey:@"h1SH" withCBXPCKey:@"hkSH"];
      [CBDevice updateRemoteSendEvent:v8 fromDeviceInfo:v7 withDeviceKey:@"h2AI" withCBXPCKey:@"hkAI"];
      [CBDevice updateRemoteSendEvent:v8 fromDeviceInfo:v7 withDeviceKey:@"h2AT" withCBXPCKey:@"hkAT"];
      [CBDevice updateRemoteSendEvent:v8 fromDeviceInfo:v7 withDeviceKey:@"h2II" withCBXPCKey:@"hkII"];
      [CBDevice updateRemoteSendEvent:v8 fromDeviceInfo:v7 withDeviceKey:@"h2SN" withCBXPCKey:@"hkS2"];
      [CBDevice updateRemoteSendEvent:v8 fromDeviceInfo:v7 withDeviceKey:@"h2Va" withCBXPCKey:@"hkVa"];
    }

    else if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
    {
      +[CBDevice convertToWHBEvent:];
    }

    goto LABEL_14;
  }

  if (gLogCategory_CBDevice <= 30)
  {
    v8 = 0;
    if (gLogCategory_CBDevice != -1 || (eventCopy = _LogCategory_Initialize(), v4 = 0, eventCopy))
    {
      eventCopy = +[CBDevice convertToWHBEvent:];
LABEL_14:
      v4 = v8;

      goto _objc_release_x1;
    }
  }

+ (void)updateRemoteReceivedEvent:(id)event withDeviceKey:(id)key withCBXPCKey:(id)cKey
{
  eventCopy = event;
  keyCopy = key;
  cKeyCopy = cKey;
  v9 = [eventCopy objectForKeyedSubscript:cKeyCopy];

  if (v9)
  {
    v10 = [eventCopy objectForKeyedSubscript:@"dvIn"];
    if (!v10)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [eventCopy setObject:v10 forKeyedSubscript:@"dvIn"];
    }

    v11 = [eventCopy objectForKeyedSubscript:cKeyCopy];
    [v10 setObject:v11 forKeyedSubscript:keyCopy];

    [eventCopy removeObjectForKey:cKeyCopy];
  }

  else if (gLogCategory_CBDevice <= 30 && (gLogCategory_CBDevice != -1 || _LogCategory_Initialize()))
  {
    +[CBDevice updateRemoteReceivedEvent:withDeviceKey:withCBXPCKey:];
  }
}

+ (void)convertFromWHBEvent:(id)event
{
  eventCopy = event;
  if (eventCopy)
  {
    v4 = eventCopy;
    [CBDevice updateRemoteReceivedEvent:eventCopy withDeviceKey:@"bAMD" withCBXPCKey:@"blAM"];
    [CBDevice updateRemoteReceivedEvent:v4 withDeviceKey:@"bATm" withCBXPCKey:@"blAt"];
    [CBDevice updateRemoteReceivedEvent:v4 withDeviceKey:@"bTMC" withCBXPCKey:@"blATM"];
    [CBDevice updateRemoteReceivedEvent:v4 withDeviceKey:@"blCH" withCBXPCKey:@"blCh"];
    [CBDevice updateRemoteReceivedEvent:v4 withDeviceKey:@"blRS" withCBXPCKey:@"blRS"];
    [CBDevice updateRemoteReceivedEvent:v4 withDeviceKey:@"btAD" withCBXPCKey:@"btAd"];
    [CBDevice updateRemoteReceivedEvent:v4 withDeviceKey:@"h1Ca" withCBXPCKey:@"hkCa"];
    [CBDevice updateRemoteReceivedEvent:v4 withDeviceKey:@"h1CV" withCBXPCKey:@"hkCV"];
    [CBDevice updateRemoteReceivedEvent:v4 withDeviceKey:@"h1CN" withCBXPCKey:@"hkCN"];
    [CBDevice updateRemoteReceivedEvent:v4 withDeviceKey:@"h1DI" withCBXPCKey:@"hkDI"];
    [CBDevice updateRemoteReceivedEvent:v4 withDeviceKey:@"h1Fl" withCBXPCKey:@"hkFl"];
    [CBDevice updateRemoteReceivedEvent:v4 withDeviceKey:@"h1SN" withCBXPCKey:@"hkS1"];
    [CBDevice updateRemoteReceivedEvent:v4 withDeviceKey:@"h1SH" withCBXPCKey:@"hkSH"];
    [CBDevice updateRemoteReceivedEvent:v4 withDeviceKey:@"h2AI" withCBXPCKey:@"hkAI"];
    [CBDevice updateRemoteReceivedEvent:v4 withDeviceKey:@"h2AT" withCBXPCKey:@"hkAT"];
    [CBDevice updateRemoteReceivedEvent:v4 withDeviceKey:@"h2II" withCBXPCKey:@"hkII"];
    [CBDevice updateRemoteReceivedEvent:v4 withDeviceKey:@"h2SN" withCBXPCKey:@"hkS2"];
    eventCopy = [CBDevice updateRemoteReceivedEvent:v4 withDeviceKey:@"h2Va" withCBXPCKey:@"hkVa"];
    goto LABEL_3;
  }

  if (gLogCategory_CBDevice <= 30)
  {
    if (gLogCategory_CBDevice != -1 || (eventCopy = _LogCategory_Initialize(), eventCopy))
    {
      eventCopy = +[CBDevice convertFromWHBEvent:];
LABEL_3:

      goto _objc_release_x2;
    }
  }

- (CBDevice)initWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  v219.receiver = self;
  v219.super_class = CBDevice;
  v7 = [(CBDevice *)&v219 init];

  if (!v7)
  {
    if (!error)
    {
      goto LABEL_148;
    }

    v215 = "CBDevice super init failed";
LABEL_147:
    CBErrorF(-6756, v215, v8, v9, v10, v11, v12, v13, v218);
    *error = v213 = 0;
    goto LABEL_142;
  }

  v14 = MEMORY[0x1C68DFDD0](objectCopy);
  v15 = MEMORY[0x1E69E9E80];
  if (v14 != MEMORY[0x1E69E9E80])
  {
    if (!error)
    {
      goto LABEL_148;
    }

    v215 = "XPC non-dict";
    goto LABEL_147;
  }

  OUTLINED_FUNCTION_4_7();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_148;
  }

  v220 = 0;
  OUTLINED_FUNCTION_1_10();
  v16 = CUXPCDecodeUInt64RangedEx();
  if (v16 == 6)
  {
    v7->_changeFlags = v220;
  }

  else if (v16 == 5)
  {
    goto LABEL_148;
  }

  v17 = OUTLINED_FUNCTION_4_7();
  if (!CBXPCDecodeDiscoveryTypes(v17, v18, v19))
  {
    goto LABEL_148;
  }

  OUTLINED_FUNCTION_4_7();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_148;
  }

  objc_opt_class();
  if (!CUXPCDecodeObject())
  {
    goto LABEL_148;
  }

  v220 = 0;
  OUTLINED_FUNCTION_1_10();
  v20 = CUXPCDecodeUInt64RangedEx();
  if (v20 == 6)
  {
    v7->_deviceFlags = v220;
  }

  else if (v20 == 5)
  {
    goto LABEL_148;
  }

  v220 = 0;
  v21 = OUTLINED_FUNCTION_1_10();
  v26 = OUTLINED_FUNCTION_14(v21, v22, v23, v24, v25);
  if (v26 == 6)
  {
    v7->_internalFlags = v220;
    goto LABEL_16;
  }

  if (v26 == 5)
  {
LABEL_148:
    v213 = 0;
    goto LABEL_142;
  }

LABEL_16:
  v27 = xpc_dictionary_get_value(objectCopy, "dvIn");
  v28 = v27;
  if (!v27)
  {
    goto LABEL_21;
  }

  if (MEMORY[0x1C68DFDD0](v27) != v15)
  {
    if (error)
    {
      CBErrorF(-6756, "Bad DeviceInfo XPC type", v29, v30, v31, v32, v33, v34, v218);
      *error = v213 = 0;
      goto LABEL_141;
    }

    goto LABEL_157;
  }

  v41 = CUXPCCreateCFObjectFromXPCObject();
  if (!v41)
  {
    if (error)
    {
      v216 = "XPC->CF failed";
      v217 = -6732;
LABEL_155:
      *error = CBErrorF(v217, v216, v35, v36, v37, v38, v39, v40, v218);
    }

LABEL_156:

    goto LABEL_157;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      v216 = "Bad DeviceInfo NS type";
      v217 = -6756;
      goto LABEL_155;
    }

    goto LABEL_156;
  }

  v42 = [v41 mutableCopy];
  deviceInfo = v7->_deviceInfo;
  v7->_deviceInfo = v42;

LABEL_21:
  v220 = 0;
  v44 = OUTLINED_FUNCTION_1_10();
  v49 = OUTLINED_FUNCTION_8_3(v44, v45, v46, v47, v48);
  if (v49 == 6)
  {
    v7->_deviceType = v220;
  }

  else if (v49 == 5)
  {
    goto LABEL_157;
  }

  v220 = 0;
  OUTLINED_FUNCTION_1_10();
  v50 = CUXPCDecodeUInt64RangedEx();
  if (v50 == 6)
  {
    v7->_discoveryFlags = v220;
  }

  else if (v50 == 5)
  {
    goto LABEL_157;
  }

  v51 = OUTLINED_FUNCTION_4_7();
  if (!CBXPCDecodeDiscoveryTypes(v51, v52, v53))
  {
    goto LABEL_157;
  }

  OUTLINED_FUNCTION_4_7();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_157;
  }

  OUTLINED_FUNCTION_4_7();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_157;
  }

  v220 = 0;
  OUTLINED_FUNCTION_1_10();
  v54 = CUXPCDecodeUInt64RangedEx();
  if (v54 == 6)
  {
    v7->_interval = v220;
  }

  else if (v54 == 5)
  {
    goto LABEL_157;
  }

  OUTLINED_FUNCTION_4_7();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_157;
  }

  OUTLINED_FUNCTION_4_7();
  v55 = CUXPCDecodeNSString();
  if (!v55)
  {
    goto LABEL_157;
  }

  v220 = 0;
  v59 = OUTLINED_FUNCTION_3_9(v55, "micM", v56, v57, v58);
  if (v59 == 6)
  {
    v7->_microphoneMode = v220;
  }

  else if (v59 == 5)
  {
    goto LABEL_157;
  }

  OUTLINED_FUNCTION_4_7();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_157;
  }

  v220 = 0;
  v60 = OUTLINED_FUNCTION_1_10();
  v65 = OUTLINED_FUNCTION_8_3(v60, v61, v62, v63, v64);
  if (v65 == 6)
  {
    v7->_muteControlCapability = v220;
  }

  else if (v65 == 5)
  {
    goto LABEL_157;
  }

  OUTLINED_FUNCTION_4_7();
  v66 = CUXPCDecodeNSString();
  if (!v66)
  {
    goto LABEL_157;
  }

  v220 = 0;
  v70 = OUTLINED_FUNCTION_13_0(v66, "dPrP", v67, v68, v69);
  if (v70 == 6)
  {
    v7->_primaryPlacement = v220;
  }

  else if (v70 == 5)
  {
    goto LABEL_157;
  }

  v220 = 0;
  v74 = OUTLINED_FUNCTION_13_0(v70, "dScP", v71, v72, v73);
  if (v74 == 6)
  {
    v7->_secondaryPlacement = v220;
  }

  else if (v74 == 5)
  {
    goto LABEL_157;
  }

  v220 = 0;
  v78 = OUTLINED_FUNCTION_3_9(v74, "dPlM", v75, v76, v77);
  if (v78 == 6)
  {
    v7->_placementMode = v220;
  }

  else if (v78 == 5)
  {
    goto LABEL_157;
  }

  v220 = 0;
  v79 = OUTLINED_FUNCTION_1_10();
  v84 = OUTLINED_FUNCTION_14(v79, v80, v81, v82, v83);
  if (v84 == 6)
  {
    v7->_productID = v220;
  }

  else if (v84 == 5)
  {
    goto LABEL_157;
  }

  OUTLINED_FUNCTION_4_7();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_157;
  }

  OUTLINED_FUNCTION_4_7();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_157;
  }

  OUTLINED_FUNCTION_4_7();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_157;
  }

  OUTLINED_FUNCTION_4_7();
  v85 = CUXPCDecodeNSString();
  if (!v85)
  {
    goto LABEL_157;
  }

  v220 = 0;
  v89 = OUTLINED_FUNCTION_3_9(v85, "srMd", v86, v87, v88);
  if (v89 == 6)
  {
    v7->_smartRoutingMode = v220;
  }

  else if (v89 == 5)
  {
    goto LABEL_157;
  }

  v220 = 0;
  v90 = OUTLINED_FUNCTION_1_10();
  v95 = OUTLINED_FUNCTION_14(v90, v91, v92, v93, v94);
  if (v95 == 6)
  {
    v7->_supportedServices = v220;
  }

  else if (v95 == 5)
  {
    goto LABEL_157;
  }

  if (!CUXPCDecodeNSDataOfLength())
  {
    goto LABEL_157;
  }

  v220 = 0;
  OUTLINED_FUNCTION_1_10();
  v96 = CUXPCDecodeUInt64RangedEx();
  if (v96 == 6)
  {
    v7->_vendorID = v220;
  }

  else if (v96 == 5)
  {
    goto LABEL_157;
  }

  v220 = 0;
  v97 = OUTLINED_FUNCTION_1_10();
  v102 = OUTLINED_FUNCTION_8_3(v97, v98, v99, v100, v101);
  if (v102 == 6)
  {
    v7->_vendorIDSource = v220;
  }

  else if (v102 == 5)
  {
    goto LABEL_157;
  }

  v220 = 0;
  v103 = OUTLINED_FUNCTION_1_10();
  v108 = OUTLINED_FUNCTION_8_3(v103, v104, v105, v106, v107);
  if (v108 == 6)
  {
    v7->_nearbyInfoV2InvitationCounter = v220;
  }

  else if (v108 == 5)
  {
    goto LABEL_157;
  }

  v220 = 0;
  v109 = OUTLINED_FUNCTION_1_10();
  v114 = OUTLINED_FUNCTION_8_3(v109, v110, v111, v112, v113);
  if (v114 == 6)
  {
    v7->_nearbyInfoV2InvitationTypes = v220;
  }

  else if (v114 == 5)
  {
    goto LABEL_157;
  }

  v220 = 0;
  v115 = OUTLINED_FUNCTION_1_10();
  v120 = OUTLINED_FUNCTION_8_3(v115, v116, v117, v118, v119);
  if (v120 == 6)
  {
    v7->_nearbyInfoV2InvitationRouteType = v220;
  }

  else if (v120 == 5)
  {
    goto LABEL_157;
  }

  OUTLINED_FUNCTION_4_7();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_157;
  }

  v220 = 0;
  v121 = OUTLINED_FUNCTION_1_10();
  v126 = OUTLINED_FUNCTION_8_3(v121, v122, v123, v124, v125);
  if (v126 == 6)
  {
    v7->_objectDiscoveryBatteryState = v220;
  }

  else if (v126 == 5)
  {
    goto LABEL_157;
  }

  v220 = 0;
  v127 = OUTLINED_FUNCTION_1_10();
  v132 = OUTLINED_FUNCTION_8_3(v127, v128, v129, v130, v131);
  if (v132 == 6)
  {
    v7->_objectDiscoveryMode = v220;
  }

  else if (v132 == 5)
  {
    goto LABEL_157;
  }

  OUTLINED_FUNCTION_4_7();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_157;
  }

  v220 = 0;
  v133 = OUTLINED_FUNCTION_1_10();
  v138 = OUTLINED_FUNCTION_14(v133, v134, v135, v136, v137);
  if (v138 == 6)
  {
    v7->_objectDiscoveryProductID = v220;
  }

  else if (v138 == 5)
  {
    goto LABEL_157;
  }

  OUTLINED_FUNCTION_4_7();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_157;
  }

  v220 = 0;
  v139 = OUTLINED_FUNCTION_1_10();
  v144 = OUTLINED_FUNCTION_14(v139, v140, v141, v142, v143);
  if (v144 == 6)
  {
    v7->_proximityPairingProductID = v220;
  }

  else if (v144 == 5)
  {
    goto LABEL_157;
  }

  v220 = 0;
  v145 = OUTLINED_FUNCTION_1_10();
  v150 = OUTLINED_FUNCTION_8_3(v145, v146, v147, v148, v149);
  if (v150 == 6)
  {
    v7->_proximityPairingSubType = v220;
  }

  else if (v150 == 5)
  {
    goto LABEL_157;
  }

  v220 = 0;
  v151 = OUTLINED_FUNCTION_1_10();
  v156 = OUTLINED_FUNCTION_8_3(v151, v152, v153, v154, v155);
  if (v156 == 6)
  {
    v7->_transmitPowerOne = v220;
  }

  else if (v156 == 5)
  {
    goto LABEL_157;
  }

  v220 = 0;
  v157 = OUTLINED_FUNCTION_1_10();
  v162 = OUTLINED_FUNCTION_8_3(v157, v158, v159, v160, v161);
  if (v162 == 6)
  {
    v7->_transmitPowerTwo = v220;
  }

  else if (v162 == 5)
  {
    goto LABEL_157;
  }

  v220 = 0;
  v163 = OUTLINED_FUNCTION_1_10();
  v168 = OUTLINED_FUNCTION_8_3(v163, v164, v165, v166, v167);
  if (v168 == 6)
  {
    v7->_transmitPowerThree = v220;
  }

  else if (v168 == 5)
  {
    goto LABEL_157;
  }

  OUTLINED_FUNCTION_4_7();
  if (!CUXPCDecodeNSData() || !CUXPCDecodeNSDataOfLength() || !CUXPCDecodeNSDataOfLength())
  {
    goto LABEL_157;
  }

  v220 = 0;
  v169 = OUTLINED_FUNCTION_1_10();
  v174 = OUTLINED_FUNCTION_8_3(v169, v170, v171, v172, v173);
  if (v174 == 6)
  {
    v7->_safetyAlertsVersion = v220;
  }

  else if (v174 == 5)
  {
    goto LABEL_157;
  }

  v220 = 0;
  v175 = OUTLINED_FUNCTION_1_10();
  v180 = OUTLINED_FUNCTION_8_3(v175, v176, v177, v178, v179);
  if (v180 == 6)
  {
    v7->_selectiveSpeechListeningCapability = v220;
  }

  else if (v180 == 5)
  {
    goto LABEL_157;
  }

  v220 = 0;
  v184 = OUTLINED_FUNCTION_3_9(v180, "HaSp", v181, v182, v183);
  if (v184 == 6)
  {
    v7->_hearingAidSupport = v220;
  }

  else if (v184 == 5)
  {
    goto LABEL_157;
  }

  v220 = 0;
  v188 = OUTLINED_FUNCTION_3_9(v184, "HtSp", v185, v186, v187);
  if (v188 == 6)
  {
    v7->_hearingTestSupport = v220;
  }

  else if (v188 == 5)
  {
    goto LABEL_157;
  }

  v220 = 0;
  v189 = OUTLINED_FUNCTION_1_10();
  v194 = OUTLINED_FUNCTION_8_3(v189, v190, v191, v192, v193);
  if (v194 == 6)
  {
    v7->_softwareUpdateActionType = v220;
  }

  else if (v194 == 5)
  {
    goto LABEL_157;
  }

  OUTLINED_FUNCTION_4_7();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_157;
  }

  v220 = 0;
  v195 = OUTLINED_FUNCTION_1_10();
  v200 = OUTLINED_FUNCTION_8_3(v195, v196, v197, v198, v199);
  if (v200 == 6)
  {
    v7->_tipiConnectionStatus = v220;
  }

  else if (v200 == 5)
  {
    goto LABEL_157;
  }

  objc_opt_class();
  if (!CUXPCDecodeNSArrayOfClass())
  {
    goto LABEL_157;
  }

  v220 = 0;
  v201 = OUTLINED_FUNCTION_1_10();
  v206 = OUTLINED_FUNCTION_8_3(v201, v202, v203, v204, v205);
  if (v206 == 6)
  {
    v7->_tipiState = v220;
  }

  else if (v206 == 5)
  {
    goto LABEL_157;
  }

  v220 = 0;
  v207 = OUTLINED_FUNCTION_1_10();
  v212 = OUTLINED_FUNCTION_8_3(v207, v208, v209, v210, v211);
  if (v212 != 6)
  {
    if (v212 != 5)
    {
      goto LABEL_137;
    }

LABEL_157:
    v213 = 0;
    goto LABEL_141;
  }

  v7->_nearbyActionNWPrecisionFindingStatus = v220;
LABEL_137:
  if (!CUXPCDecodeNSDataOfLength())
  {
    goto LABEL_157;
  }

  if (!CUXPCDecodeNSDataOfLength())
  {
    goto LABEL_157;
  }

  OUTLINED_FUNCTION_4_7();
  if (!CUXPCDecodeBool())
  {
    goto LABEL_157;
  }

  v213 = v7;
LABEL_141:

LABEL_142:
  return v213;
}

- (BOOL)decryptNearbyInfoV2PayloadPtr:(const char *)ptr payloadLength:(unint64_t)length key:(const char *)key keyLength:(unint64_t)keyLength decryptedPtr:(void *)decryptedPtr
{
  result = 0;
  v14 = *MEMORY[0x1E69E9840];
  if (ptr && length)
  {
    if (length >= 7)
    {
      lengthCopy = 7;
    }

    else
    {
      lengthCopy = length;
    }

    *(__src + 3) = 0;
    __src[0] = 0;
    __memcpy_chk();
    ccaes_ecb_encrypt_mode();
    v10 = ccecb_context_size();
    bzero(v11 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), (v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (ccecb_init())
    {
      return 0;
    }

    v12 = 0;
    memset(v11, 0, sizeof(v11));
    if (cclr_aes_init() || cclr_decrypt_block())
    {
      return 0;
    }

    else
    {
      memcpy(decryptedPtr, __src, lengthCopy);
      ccecb_context_size();
      cc_clear();
      return 1;
    }
  }

  return result;
}

- (void)_parseManufacturerPtr:(const char *)ptr end:(const char *)end
{
  if (end - ptr >= 2)
  {
    v6 = *ptr;
    v4 = ptr + 2;
    v5 = v6;
    if (v6 == 6)
    {
      [(CBDevice *)self _parseMicrosoftManufacturerPtr:v4 end:?];
    }

    else if (v5 == 76)
    {
      [(CBDevice *)self _parseAppleManufacturerPtr:v4 end:?];
    }
  }
}

- (void)_parseAppleManufacturerPtr:(const char *)ptr end:(const char *)end
{
  if (end - ptr >= 2)
  {
    ptrCopy = ptr;
    do
    {
      v6 = ptrCopy[1] & 0x1F;
      if (end - (ptrCopy + 2) < v6)
      {
        break;
      }

      v7 = *ptrCopy;
      ptrCopy += v6 + 2;
      switch(v7)
      {
        case 5:
          [OUTLINED_FUNCTION_6_2() _parseAirDropPtr:? end:?];
          break;
        case 6:
          [OUTLINED_FUNCTION_6_2() _parseHomeKitV1Ptr:? end:?];
          break;
        case 7:
          [OUTLINED_FUNCTION_6_2() _parseProximityPairingPtr:? end:?];
          break;
        case 8:
          [OUTLINED_FUNCTION_6_2() _parseHeySiriPtr:? end:?];
          break;
        case 9:
          [OUTLINED_FUNCTION_6_2() _parseAirPlayTargetPtr:? end:?];
          break;
        case 10:
          [OUTLINED_FUNCTION_6_2() _parseAirPlaySourcePtr:? end:?];
          break;
        case 15:
          [OUTLINED_FUNCTION_6_2() _parseNearbyActionPtr:? end:?];
          break;
        case 16:
          [OUTLINED_FUNCTION_6_2() _parseNearbyInfoPtr:? end:?];
          break;
        case 17:
          [OUTLINED_FUNCTION_6_2() _parseHomeKitV2Ptr:? end:?];
          break;
        case 18:
          [OUTLINED_FUNCTION_6_2() _parseObjectDiscoveryPtr:? end:?];
          break;
        case 19:
          [OUTLINED_FUNCTION_6_2() _parseSpatialInteractionPtr:? end:?];
          break;
        case 21:
          [OUTLINED_FUNCTION_6_2() _parseNearbyActionV2Ptr:? end:?];
          break;
        case 22:
          [OUTLINED_FUNCTION_6_2() _parseNearbyInfoV2Ptr:? end:?];
          break;
        case 24:
          [OUTLINED_FUNCTION_6_2() _parseDSInfoPtr:? end:?];
          break;
        case 26:
          [OUTLINED_FUNCTION_6_2() _parseNearbyActionNoWakePtr:? end:?];
          break;
        case 27:
          [OUTLINED_FUNCTION_6_2() _parseSoftwareUpdatePtr:? end:?];
          break;
        default:
          break;
      }
    }

    while (end - ptrCopy > 1);
  }
}

- (void)_parseNearbyInfoV2Ptr:(const char *)ptr end:(const char *)end
{
  if (end - ptr < 1)
  {
    OUTLINED_FUNCTION_17_0();
    return;
  }

  if (&end[~ptr] < 1 || end - (ptr + 2) < 3)
  {
    v10 = 0;
  }

  else
  {
    v8 = *ptr;
    v9 = *(ptr + 1);
    v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:ptr + 2 length:3];
    if (end - (ptr + 5) >= 3)
    {
      v36 = v10;
      v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:ptr + 5 length:3];
      if (!v11)
      {
LABEL_59:
        v10 = v36;
        goto LABEL_9;
      }

      v12 = v11;
      v13 = end - (ptr + 8);
      if (v13 < 7)
      {
        if (v13 == 5)
        {
          v15 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:ptr + 8 length:5];
          v14 = 0;
        }

        else
        {
          if (v13 == 2)
          {
            v14 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:ptr + 8 length:2];
          }

          else
          {
            v14 = 0;
          }

          v15 = 0;
        }
      }

      else
      {
        v14 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:ptr + 8 length:2];
        v15 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:ptr + 10 length:5];
      }

      if ((v8 & 4) != 0)
      {
        self->_discoveryTypesInternal.bitArray[2] |= 8u;
      }

      nearbyInfoV2Flags = [(CBDevice *)self nearbyInfoV2Flags];
      v17 = v8 != nearbyInfoV2Flags;
      if (v8 != nearbyInfoV2Flags)
      {
        if ((v8 & 4) != ([(CBDevice *)self nearbyInfoV2Flags]& 4))
        {
          self->_changedTypesInternal.bitArray[2] |= 8u;
        }

        [(CBDevice *)self setNearbyInfoV2Flags:v8];
      }

      if (v9 != [(CBDevice *)self nearbyInfoV2EncryptedFlags])
      {
        [(CBDevice *)self setNearbyInfoV2EncryptedFlags:v9];
        v17 = 1;
      }

      nearbyInfoV2AuthTagData = [(CBDevice *)self nearbyInfoV2AuthTagData];
      v36 = v36;
      v19 = nearbyInfoV2AuthTagData;
      if (v36 == v19)
      {

        goto LABEL_34;
      }

      if ((v36 != 0) != (v19 == 0))
      {
        v20 = [v36 isEqual:v19];

        if (v20)
        {
LABEL_34:
          nearbyInfoV2AuthIntegrityTagData = [(CBDevice *)self nearbyInfoV2AuthIntegrityTagData];
          v22 = v12;
          v23 = nearbyInfoV2AuthIntegrityTagData;
          v24 = v23;
          if (v22 == v23)
          {

            goto LABEL_41;
          }

          if (v23)
          {
            v25 = [v22 isEqual:v23];

            if (v25)
            {
LABEL_41:
              nearbyInfoV2EncryptedData = [(CBDevice *)self nearbyInfoV2EncryptedData];
              v27 = v14;
              v28 = nearbyInfoV2EncryptedData;
              v29 = v28;
              if (v27 == v28)
              {

                goto LABEL_48;
              }

              if ((v27 != 0) != (v28 == 0))
              {
                v30 = [v27 isEqual:v28];

                if (v30)
                {
LABEL_48:
                  nearbyInfoV2NearbyFaceTimeEncryptedData = [(CBDevice *)self nearbyInfoV2NearbyFaceTimeEncryptedData];
                  v32 = v15;
                  v33 = nearbyInfoV2NearbyFaceTimeEncryptedData;
                  v34 = v33;
                  if (v32 == v33)
                  {
                  }

                  else
                  {
                    if ((v32 != 0) == (v33 == 0))
                    {

LABEL_56:
                      objc_storeStrong(&self->_nearbyInfoV2NearbyFaceTimeEncryptedData, v15);
                      self->_discoveryTypesInternal.bitArray[0] |= 0x10u;
LABEL_57:
                      self->_changedTypesInternal.bitArray[0] |= 0x10u;
LABEL_58:

                      goto LABEL_59;
                    }

                    v35 = [v32 isEqual:v33];

                    if ((v35 & 1) == 0)
                    {
                      goto LABEL_56;
                    }
                  }

                  self->_discoveryTypesInternal.bitArray[0] |= 0x10u;
                  if (!v17)
                  {
                    goto LABEL_58;
                  }

                  goto LABEL_57;
                }
              }

              else
              {
              }

              [(CBDevice *)self setNearbyInfoV2EncryptedData:v27];
              v17 = 1;
              goto LABEL_48;
            }
          }

          else
          {
          }

          [(CBDevice *)self setNearbyInfoV2AuthIntegrityTagData:v22];
          v17 = 1;
          goto LABEL_41;
        }
      }

      else
      {
      }

      [(CBDevice *)self setNearbyInfoV2AuthTagData:v36];
      v17 = 1;
      goto LABEL_34;
    }
  }

LABEL_9:
}

- (void)_parseObjectDiscoveryPtr:(const char *)ptr end:(const char *)end
{
  v19 = *MEMORY[0x1E69E9840];
  if (end - ptr >= 1)
  {
    v8 = ptr + 1;
    v7 = *ptr;
    v9 = dword_1C0B84D28[(v7 >> 4) & 3];
    btAddressData = [(CBDevice *)self btAddressData];
    if ([btAddressData length] != 6)
    {
LABEL_14:

      return;
    }

    v11 = v7 >> 6;
    if (end - v8 < 22)
    {
      [btAddressData bytes];
      OUTLINED_FUNCTION_16_0();
      if (end - v8 >= 1)
      {
        v17[0] = v17[0] & 0x3F | (*v8 << 6);
      }

      v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v17 length:6];
      self->_objectDiscoveryBatteryState = v11;
      self->_objectDiscoveryMode = 1;
      self->_objectDiscoveryProductID = v9;
      v13 = 0x20000000000;
      if (!v12)
      {
        goto LABEL_13;
      }

      v14 = 272;
    }

    else
    {
      [btAddressData bytes];
      OUTLINED_FUNCTION_16_0();
      *v18 = *v8;
      *&v18[14] = *(v8 + 14);
      if (end - (ptr + 23) >= 1)
      {
        v17[0] = v17[0] & 0x3F | (ptr[23] << 6);
      }

      v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v17 length:28];
      self->_objectDiscoveryBatteryState = v11;
      self->_objectDiscoveryMode = 2;
      self->_objectDiscoveryProductID = v9;
      v13 = 0x40000000000;
      if (!v12)
      {
        goto LABEL_13;
      }

      v14 = 280;
    }

    v15 = *(&self->super.isa + v14);
    *(&self->super.isa + v14) = v12;
    v16 = v12;

LABEL_13:
    self->_discoveryFlags |= v13;
    goto LABEL_14;
  }
}

- (void)_parseSoftwareUpdatePtr:(const char *)ptr end:(const char *)end
{
  if (end - ptr < 1)
  {
    OUTLINED_FUNCTION_17_0();
    return;
  }

  v5 = *ptr;
  if ((v5 - 1) > 1 || end - (ptr + 1) < 10)
  {
    v8 = 0;
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:ptr + 1 length:10];
    if (v8)
    {
      v9 = v8;
      softwareUpdateActionType = [(CBDevice *)self softwareUpdateActionType];
      if (v5 != softwareUpdateActionType)
      {
        self->_softwareUpdateActionType = v5;
      }

      softwareUpdateData = [(CBDevice *)self softwareUpdateData];
      v14 = v9;
      v12 = softwareUpdateData;
      if (v14 == v12)
      {
      }

      else
      {
        if (!v12)
        {

LABEL_20:
          objc_storeStrong(&self->_softwareUpdateData, v9);
          self->_discoveryTypesInternal.bitArray[3] |= 0x10u;
LABEL_21:
          self->_changedTypesInternal.bitArray[3] |= 0x10u;
LABEL_22:
          v8 = v14;
          goto LABEL_23;
        }

        v13 = [v14 isEqual:v12];

        if ((v13 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      self->_discoveryTypesInternal.bitArray[3] |= 0x10u;
      if (v5 == softwareUpdateActionType)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

LABEL_23:
}

- (BOOL)_parseProximityPairingBattery1:(const char *)battery1
{
  OUTLINED_FUNCTION_7_3(self, a2, battery1);
  if (v4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_3();
  if (v9)
  {
    v6 = v8;
  }

  v10 = v7 | v6;
  if (v10 == [v5 batteryInfoCase])
  {
    return 0;
  }

  [v3 setBatteryInfoCase:v10];
  return 1;
}

- (BOOL)_parseProximityPairingBattery2:(const char *)battery2
{
  OUTLINED_FUNCTION_7_3(self, a2, battery2);
  if (v4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_3();
  if (v9)
  {
    v6 = v8;
  }

  v10 = v7 | v6;
  if (v10 == [v5 batteryInfoLeft])
  {
    return 0;
  }

  [v3 setBatteryInfoLeft:v10];
  return 1;
}

- (BOOL)_parseProximityPairingBattery3:(const char *)battery3
{
  OUTLINED_FUNCTION_7_3(self, a2, battery3);
  if (v4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_3();
  if (v9)
  {
    v6 = v8;
  }

  v10 = v7 | v6;
  if (v10 == [v5 batteryInfoRight])
  {
    return 0;
  }

  [v3 setBatteryInfoRight:v10];
  return 1;
}

- (BOOL)_parseProximityPairingStatus3:(const char *)status3 deviceFlags:(unint64_t *)flags
{
  v6 = *flags;
  v7 = (*status3)++;
  v8 = *v7;
  proximityPairingPrimaryPlacement = [(CBDevice *)self proximityPairingPrimaryPlacement];
  proximityPairingSecondaryPlacement = [(CBDevice *)self proximityPairingSecondaryPlacement];
  v11 = proximityPairingPrimaryPlacement == 3 && (v6 & 0x200000000) == 0;
  accessoryStatusLidOpenCount = [(CBDevice *)self accessoryStatusLidOpenCount];
  v13 = proximityPairingSecondaryPlacement != 3 && v11;
  v14 = proximityPairingSecondaryPlacement != 3 || (v6 & 0x200000000) == 0;
  if (!v13 && v14 && accessoryStatusLidOpenCount)
  {
    return 0;
  }

  v15 = v6 & 0xFFFFFFEFFFFFFFFFLL | ((((v8 & 8) >> 3) & 1) << 36);
  v16 = ((*flags ^ v15) & 0xFFFFFFF9FFFFFFFFLL) != 0;
  if ((v8 & 7) != [(CBDevice *)self accessoryStatusLidOpenCount])
  {
    [(CBDevice *)self setAccessoryStatusLidOpenCount:v8 & 7];
    v16 = 1;
  }

  *flags = v15;
  return v16;
}

- (void)_parseSafetyAlertsSegmentServiceData:(id)data
{
  dataCopy = data;
  dataCopy2 = data;
  bytes = [dataCopy2 bytes];
  v8 = [dataCopy2 length];

  if (v8 >= 1)
  {
    v9 = *bytes;
    if ((*bytes & 0xF) == 1)
    {
      self->_safetyAlertsVersion = 1;
      if (v8 != 1)
      {
        v10 = bytes[1];
        if ((v10 & 0xF) == 3 && v10 - 64 >= 0xFFFFFFD0)
        {
          self->_safetyAlertsSegmentSegmentsTotal = 3;
          self->_safetyAlertsSegmentSegmentNumber = v10 >> 4;
          if (v8 >= 5)
          {
            v11 = [MEMORY[0x1E695DEF0] dataWithBytes:bytes + 2 length:3];
            safetyAlertsAlertID = self->_safetyAlertsAlertID;
            self->_safetyAlertsAlertID = v11;

            btAddressData = [(CBDevice *)self btAddressData];

            if (btAddressData)
            {
              btAddressData2 = [(CBDevice *)self btAddressData];
              v15 = [btAddressData2 length];

              if (v15 == 6)
              {
                btAddressData3 = [(CBDevice *)self btAddressData];
                obj = [btAddressData3 mutableCopy];

                v17 = obj;
                mutableBytes = [obj mutableBytes];
                *mutableBytes = *mutableBytes & 0x3F | v9 & 0xC0;
                v19 = obj;
                if (self->_safetyAlertsSegmentSegmentNumber == self->_safetyAlertsSegmentSegmentsTotal)
                {
                  v20 = 12;
                }

                else
                {
                  v20 = 13;
                }

                if (v8 - 5 >= v20)
                {
                  v21 = &bytes[v8];
                  v22 = bytes + 5;
                  [obj appendBytes:v22 length:v20];
                  v23 = &v22[v20];
                  objc_storeStrong(&self->_safetyAlertsSegmentSignature, obj);
                  if (v21 - v23 >= 1)
                  {
                    v24 = [MEMORY[0x1E695DEF0] dataWithBytes:v23 length:(v21 - v23)];
                    safetyAlertsSegmentAlertData = self->_safetyAlertsSegmentAlertData;
                    self->_safetyAlertsSegmentAlertData = v24;
                  }

                  self->_discoveryTypesInternal.bitArray[3] |= 0x40u;
                  v19 = obj;
                }
              }
            }
          }
        }
      }
    }
  }
}

- (id)getSpatialInteractionDeviceTimestampArrayForClientID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    spatialInteractionDeviceTimestampArrayDictionary = self->_spatialInteractionDeviceTimestampArrayDictionary;
    if (!spatialInteractionDeviceTimestampArrayDictionary || !self->_spatialInteractionDeviceTimestampArrayClientIDs)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v7 = self->_spatialInteractionDeviceTimestampArrayDictionary;
      self->_spatialInteractionDeviceTimestampArrayDictionary = v6;

      v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
      spatialInteractionDeviceTimestampArrayClientIDs = self->_spatialInteractionDeviceTimestampArrayClientIDs;
      self->_spatialInteractionDeviceTimestampArrayClientIDs = v8;

      spatialInteractionDeviceTimestampArrayDictionary = self->_spatialInteractionDeviceTimestampArrayDictionary;
    }

    v10 = [(NSMutableDictionary *)spatialInteractionDeviceTimestampArrayDictionary objectForKeyedSubscript:dCopy];

    if (!v10)
    {
      v11 = self->_spatialInteractionDeviceTimestampArrayDictionary;
      v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [(NSMutableDictionary *)v11 setObject:v12 forKey:dCopy];

      [(NSMutableArray *)self->_spatialInteractionDeviceTimestampArrayClientIDs addObject:dCopy];
    }

    v13 = [(NSMutableDictionary *)self->_spatialInteractionDeviceTimestampArrayDictionary objectForKeyedSubscript:dCopy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)setSpatialInteractionDeviceTimestampArrayForClientID:(id)d clientID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  if (dCopy && iDCopy)
  {
    if (!self->_spatialInteractionDeviceTimestampArrayDictionary || (v7 = self->_spatialInteractionDeviceTimestampArrayClientIDs) == 0)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      spatialInteractionDeviceTimestampArrayDictionary = self->_spatialInteractionDeviceTimestampArrayDictionary;
      self->_spatialInteractionDeviceTimestampArrayDictionary = v8;

      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      spatialInteractionDeviceTimestampArrayClientIDs = self->_spatialInteractionDeviceTimestampArrayClientIDs;
      self->_spatialInteractionDeviceTimestampArrayClientIDs = v10;

      v7 = self->_spatialInteractionDeviceTimestampArrayClientIDs;
    }

    if ([(NSMutableArray *)v7 count]>= 6)
    {
      v12 = self->_spatialInteractionDeviceTimestampArrayDictionary;
      v13 = [(NSMutableArray *)self->_spatialInteractionDeviceTimestampArrayClientIDs objectAtIndexedSubscript:0];
      [(NSMutableDictionary *)v12 removeObjectForKey:v13];

      [(NSMutableArray *)self->_spatialInteractionDeviceTimestampArrayClientIDs removeObjectAtIndex:0];
    }

    [(NSMutableDictionary *)self->_spatialInteractionDeviceTimestampArrayDictionary setObject:dCopy forKeyedSubscript:iDCopy];
  }
}

- (void)decryptNearbyInfoV2PayloadWithIdentity:(char)a3 error:.cold.1(uint64_t a1, void *a2, char a3)
{
  objc_storeStrong((a1 + 264), a2);
  if ((a3 & 1) == 0)
  {
    *(a1 + 12) |= 1u;
  }

  *(a1 + 18) |= 1u;
}

- (void)updateWithSafetyAlertsSegments:(uint64_t)a3 error:(uint64_t)a4 .cold.1(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    result = CBErrorF(-6743, "Invalid signature length", a3, a4, a5, a6, a7, a8, v9);
    *v8 = result;
  }

  return result;
}

- (void)updateWithSafetyAlertsSegments:(uint64_t)a3 error:(uint64_t)a4 .cold.2(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    result = CBErrorF(-6743, "Invalid alert data length", a3, a4, a5, a6, a7, a8, v9);
    *v8 = result;
  }

  return result;
}

- (uint64_t)isEqualToDevice:(int)a1 exactMatch:.cold.5(int a1)
{
  if (!(!v2 & v1))
  {
    switch(a1)
    {
      case 2112:
      case 2113:
      case 2114:
      case 2115:
      case 2116:
      case 2117:
        return LogPrintF_safe();
      default:
        JUMPOUT(0);
    }
  }

  return LogPrintF_safe();
}

- (void)isEqualToDevice:(uint64_t)a1 exactMatch:(void *)a2 .cold.10(uint64_t a1, void *a2)
{
  CUPrintNSDataAddress();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5_6();
  v3 = CUPrintNSDataAddress();
  OUTLINED_FUNCTION_0_7(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  LogPrintF_safe();
}

- (void)isEqualToDevice:(uint64_t)a1 exactMatch:(void *)a2 .cold.13(uint64_t a1, void *a2)
{
  CUPrintNSDataAddress();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5_6();
  v3 = CUPrintNSDataAddress();
  OUTLINED_FUNCTION_0_7(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  LogPrintF_safe();
}

- (void)isEqualToDevice:(void *)a1 exactMatch:(void *)a2 .cold.22(void *a1, void *a2)
{
  v14 = a1;
  v3 = a2;
  OUTLINED_FUNCTION_0_7(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  LogPrintF_safe();
}

- (uint64_t)isEqualToDevice:(unsigned __int8)a1 exactMatch:.cold.24(unsigned __int8 a1)
{
  CBDeviceTypeToString(a1);
  CBDeviceTypeToString(a1);
  return LogPrintF_safe();
}

- (void)isEqualToDevice:(uint64_t)a1 exactMatch:(void *)a2 .cold.41(uint64_t a1, void *a2)
{
  CUPrintNSDataAddress();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5_6();
  v3 = CUPrintNSDataAddress();
  OUTLINED_FUNCTION_0_7(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  LogPrintF_safe();
}

- (void)isEqualToDevice:(void *)a1 exactMatch:(void *)a2 .cold.55(void *a1, void *a2)
{
  v14 = a1;
  v3 = a2;
  OUTLINED_FUNCTION_0_7(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  LogPrintF_safe();
}

- (void)isEqualToDevice:(uint64_t)a1 exactMatch:(void *)a2 .cold.63(uint64_t a1, void *a2)
{
  CUPrintNSDataAddress();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5_6();
  v3 = CUPrintNSDataAddress();
  OUTLINED_FUNCTION_0_7(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  LogPrintF_safe();
}

- (void)isEqualToDevice:(uint64_t)a1 exactMatch:(void *)a2 .cold.82(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_9_2();
  CUPrintNSDataHex();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_9_2();
  v3 = CUPrintNSDataHex();
  OUTLINED_FUNCTION_0_7(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  LogPrintF_safe();
}

- (void)isEqualToDevice:(uint64_t)a1 exactMatch:(void *)a2 .cold.99(uint64_t a1, void *a2)
{
  CUPrintNSDataAddress();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5_6();
  v3 = CUPrintNSDataAddress();
  OUTLINED_FUNCTION_0_7(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  LogPrintF_safe();
}

@end