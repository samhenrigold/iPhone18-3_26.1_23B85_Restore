@interface CoreCECDevice
- (BOOL)deckControlSetDeckStatus:(unint64_t)status error:(id *)error;
- (BOOL)setAudioMuteStatus:(BOOL)status error:(id *)error;
- (BOOL)setAudioReturnChannelControlEnabled:(BOOL)enabled error:(id *)error;
- (BOOL)setAudioVolumeStatus:(unint64_t)status error:(id *)error;
- (BOOL)setPowerStatus:(unint64_t)status error:(id *)error;
- (BOOL)setSupportedAudioFormats:(id)formats error:(id *)error;
- (BOOL)setSystemAudioControlEnabled:(BOOL)enabled error:(id *)error;
- (BOOL)systemAudioModeRequest:(unint64_t)request error:(id *)error;
- (CoreCECDevice)initWithBus:(id)bus local:(BOOL)local;
- (CoreCECDevice)initWithBus:(id)bus local:(BOOL)local logicalAddress:(unsigned __int8)address physicalAddress:(unsigned __int16)physicalAddress attributes:(id)attributes;
- (CoreCECDevice)initWithBus:(id)bus local:(BOOL)local logicalAddress:(unsigned __int8)address physicalAddress:(unsigned __int16)physicalAddress deviceType:(unint64_t)type;
- (CoreCECDevice)initWithCoder:(id)coder;
- (CoreCECDevice)initWithDevice:(id)device;
- (NSString)analyticsDescription;
- (id)delegate;
- (id)description;
- (uint64_t)notifyDelegateActiveSourceStatusHasChanged;
- (unint64_t)defaultKnownDeviceFeaturesMaskForCECVersion:(unint64_t)version;
- (unint64_t)featureSupportStatus:(unint64_t)status;
- (void)dealloc;
- (void)deckControlCommandHasBeenReceived:(unint64_t)received fromDevice:(id)device;
- (void)deckControlPlayHasBeenReceived:(unint64_t)received fromDevice:(id)device;
- (void)deckControlStatusHasBeenUpdated:(unint64_t)updated fromDevice:(id)device;
- (void)didChangePowerStatus:(unint64_t)status;
- (void)encodeWithCoder:(id)coder;
- (void)notifyDelegateActiveSourceStatusHasChanged;
- (void)notifyDelegateAudioStatusReceived:(unint64_t)received muteStatus:(BOOL)status;
- (void)notifyDelegateDeckControlCommandHasBeenReceived:(id)received command:(unint64_t)command;
- (void)notifyDelegateDeckControlPlayHasBeenReceived:(id)received playMode:(unint64_t)mode;
- (void)notifyDelegateDeckControlStatusHasBeenUpdated:(id)updated deckInfo:(unint64_t)info;
- (void)notifyDelegateFeatureAbort:(id)abort;
- (void)notifyDelegateReceivedRequestAudioReturnChannelStatusChangeTo:(unint64_t)to fromDevice:(id)device;
- (void)notifyDelegateReceivedRequestSystemAudioModeStatusChangeTo:(unint64_t)to fromDevice:(id)device;
- (void)notifyDelegateRequestAudioReturnChannelStatusChangeTo:(unint64_t)to didFinishWithResult:(BOOL)result error:(id)error;
- (void)notifyDelegateRequestSystemAudioModeStatusChangeTo:(unint64_t)to didFinishWithResult:(BOOL)result error:(id)error;
- (void)notifyDelegateShouldAssertActiveSource;
- (void)notifyDelegateStandbyRequestHasBeenReceived:(id)received;
- (void)receivedRequestAudioReturnChannelStatusChangeTo:(unint64_t)to fromDevice:(id)device;
- (void)receivedRequestSystemAudioModeStatusChangeTo:(unint64_t)to fromDevice:(id)device;
- (void)removeFromBus;
- (void)requestAudioReturnChannelStatusChangeTo:(unint64_t)to didFinishWithResult:(BOOL)result error:(id)error;
- (void)requestSystemAudioModeStatusChangeTo:(unint64_t)to didFinishWithResult:(BOOL)result error:(id)error;
- (void)sendAnalyticsForErrorString:(id)string vendorID:(unsigned __int16)d productID:(unsigned __int16)iD serialNumber:(unsigned int)number week:(unsigned __int8)week year:(unsigned __int8)year monitorName:(id)name;
- (void)sendLogicalAddressErrorAnalyticsForMessage:(const char *)message;
- (void)setDeckStatus:(unint64_t)status;
- (void)setDelegate:(id)delegate;
- (void)setFeature:(unint64_t)feature supportStatus:(unint64_t)status;
- (void)setIsActiveSource:(BOOL)source;
- (void)standbyRequestHasBeenReceived:(id)received;
@end

@implementation CoreCECDevice

- (NSString)analyticsDescription
{
  v3 = MEMORY[0x277CCACA8];
  logicalAddress = [(CoreCECDevice *)self logicalAddress];
  physicalAddress = [(CoreCECDevice *)self physicalAddress];
  cecVersion = [(CoreCECDevice *)self cecVersion];
  vendorID = [(CoreCECDevice *)self vendorID];
  isLocalDevice = [(CoreRCDevice *)self isLocalDevice];
  v9 = @"R";
  if (isLocalDevice)
  {
    v9 = @"L";
  }

  return [v3 stringWithFormat:@"%02X_%04X_%02lX_%06lX_%@", logicalAddress, physicalAddress, cecVersion, vendorID, v9];
}

- (void)sendAnalyticsForErrorString:(id)string vendorID:(unsigned __int16)d productID:(unsigned __int16)iD serialNumber:(unsigned int)number week:(unsigned __int8)week year:(unsigned __int8)year monitorName:(id)name
{
  yearCopy = year;
  weekCopy = week;
  v11 = *&number;
  iDCopy = iD;
  v17[7] = *MEMORY[0x277D85DE8];
  v14 = MEMORY[0x277CBEB38];
  v17[0] = string;
  v16[0] = @"error";
  v16[1] = @"edidVendorID";
  v17[1] = [MEMORY[0x277CCABB0] numberWithUnsignedShort:d];
  v16[2] = @"edidProductID";
  v17[2] = [MEMORY[0x277CCABB0] numberWithUnsignedShort:iDCopy];
  v16[3] = @"edidSerialNumber";
  v17[3] = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v11];
  v16[4] = @"edidWeek";
  v17[4] = [MEMORY[0x277CCABB0] numberWithUnsignedChar:weekCopy];
  v16[5] = @"edidYear";
  v16[6] = @"edidMonitorName";
  v17[5] = [MEMORY[0x277CCABB0] numberWithUnsignedChar:yearCopy];
  v17[6] = name;
  v15 = [v14 dictionaryWithDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v17, v16, 7)}];
  [v15 addEntriesFromDictionary:{objc_msgSend(-[CoreRCDevice bus](self, "bus"), "analyticsContext")}];
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice(Analytics) sendAnalyticsForErrorString:v15 vendorID:? productID:? serialNumber:? week:? year:? monitorName:?];
  }

  [MEMORY[0x277CCA9B8] sendCECErrorAnalyticsWithContext:v15];
}

- (void)sendLogicalAddressErrorAnalyticsForMessage:(const char *)message
{
  v5 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:&unk_28593C0C8];
  [v5 addEntriesFromDictionary:{objc_msgSend(-[CoreRCDevice bus](self, "bus"), "analyticsContext")}];
  if (gLogCategory_CoreRCDevice <= 90 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [(CoreCECDevice(Analytics) *)self sendLogicalAddressErrorAnalyticsForMessage:message];
  }

  v6 = MEMORY[0x277CCA9B8];

  [v6 sendCECErrorAnalyticsWithContext:v5];
}

- (CoreCECDevice)initWithDevice:(id)device
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7.receiver = self;
    v7.super_class = CoreCECDevice;
    v5 = [(CoreRCDevice *)&v7 initWithDevice:device];
    if (v5)
    {
      v5->_logicalAddress = [device logicalAddress];
      v5->_physicalAddress = [device physicalAddress];
      v5->_deviceType = [device deviceType];
      v5->_cecVersion = [device cecVersion];
      v5->_vendorID = [device vendorID];
      v5->_powerStatus = [device powerStatus];
      v5->_deckStatus = [device deckStatus];
      v5->_isActiveSource = [device isActiveSource];
      v5->_systemAudioControlEnabled = [device systemAudioControlEnabled];
      v5->_allDeviceTypes = [device allDeviceTypes];
      v5->_deviceFeatures = [device deviceFeatures];
      v5->_knownDeviceFeatures = [device knownDeviceFeatures];
      v5->_rcProfile = [objc_msgSend(device "rcProfile")];
      v5->_audioReturnChannelControlEnabled = [device audioReturnChannelControlEnabled];
      v5->_audioVolumeStatus = [device audioVolumeStatus];
      v5->_audioMuteStatus = [device audioMuteStatus];
      v5->_audioFormats = [objc_msgSend(device "audioFormats")];
      v5->_audioFormatsCount = [device audioFormatsCount];
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

- (CoreCECDevice)initWithBus:(id)bus local:(BOOL)local
{
  localCopy = local;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8.receiver = self;
    v8.super_class = CoreCECDevice;
    result = [(CoreRCDevice *)&v8 initWithBus:bus local:localCopy];
    if (result)
    {
      result->_logicalAddress = 15;
      result->_physicalAddress = -1;
      result->_deviceType = 0;
      result->_cecVersion = -1;
      result->_vendorID = -1;
      result->_powerStatus = 0;
      result->_deckStatus = 0;
      result->_isActiveSource = 0;
      result->_systemAudioControlEnabled = 0;
      result->_allDeviceTypes = 0;
      result->_deviceFeatures = 0;
      result->_knownDeviceFeatures = 0;
      result->_rcProfile = 0;
      result->_audioReturnChannelControlEnabled = 0;
      result->_audioVolumeStatus = 0;
      result->_audioMuteStatus = 0;
      result->_audioFormats = 0;
      result->_audioFormatsCount = 0;
    }
  }

  else
  {

    return 0;
  }

  return result;
}

- (CoreCECDevice)initWithBus:(id)bus local:(BOOL)local logicalAddress:(unsigned __int8)address physicalAddress:(unsigned __int16)physicalAddress deviceType:(unint64_t)type
{
  physicalAddressCopy = physicalAddress;
  addressCopy = address;
  localCopy = local;
  v12 = [CoreCECDeviceBasicAttributes deviceAttributesWithPrimaryType:type otherTypes:0 features:0 rcProfile:0 vendorID:-1 version:-1];

  return [(CoreCECDevice *)self initWithBus:bus local:localCopy logicalAddress:addressCopy physicalAddress:physicalAddressCopy attributes:v12];
}

- (CoreCECDevice)initWithBus:(id)bus local:(BOOL)local logicalAddress:(unsigned __int8)address physicalAddress:(unsigned __int16)physicalAddress attributes:(id)attributes
{
  v10 = [(CoreCECDevice *)self initWithBus:bus local:local];
  v11 = v10;
  if (v10)
  {
    v10->_logicalAddress = address;
    v10->_physicalAddress = physicalAddress;
    v10->_deviceType = [attributes deviceType];
    v11->_allDeviceTypes = [attributes allDeviceTypes];
    v11->_deviceFeatures = [attributes deviceFeatures];
    v11->_cecVersion = [attributes cecVersion];
    v11->_vendorID = [attributes vendorID];
    v11->_rcProfile = [objc_msgSend(attributes "rcProfile")];
    v11->_knownDeviceFeatures = [(CoreCECDevice *)v11 defaultKnownDeviceFeaturesMaskForCECVersion:v11->_cecVersion];
  }

  return v11;
}

- (CoreCECDevice)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = CoreCECDevice;
  v4 = [(CoreRCDevice *)&v9 initWithCoder:?];
  if (v4)
  {
    v4->_logicalAddress = [coder decodeIntegerForKey:@"logicalAddress"];
    v4->_physicalAddress = [coder decodeIntegerForKey:@"physicalAddress"];
    v4->_deviceType = [coder decodeIntegerForKey:@"deviceType"];
    v4->_cecVersion = [coder decodeIntegerForKey:@"cecVersion"];
    v4->_vendorID = [coder decodeIntegerForKey:@"vendorID"];
    v4->_powerStatus = [coder decodeIntegerForKey:@"powerStatus"];
    v4->_deckStatus = [coder decodeIntegerForKey:@"deckStatus"];
    v4->_isActiveSource = [coder decodeBoolForKey:@"isActiveSource"];
    v4->_systemAudioControlEnabled = [coder decodeBoolForKey:@"systemAudioControlEnabled"];
    v4->_allDeviceTypes = [coder decodeIntegerForKey:@"allDeviceTypes"];
    v4->_deviceFeatures = [coder decodeIntegerForKey:@"deviceFeatures"];
    v4->_knownDeviceFeatures = [coder decodeIntegerForKey:@"knownDeviceFeatures"];
    v4->_rcProfile = [objc_msgSend(coder decodeObjectOfClasses:objc_msgSend(+[CoreCECTypesInternal defaultTypes](CoreCECTypesInternal forKey:{"defaultTypes"), "rcProfileClasses"), @"rcProfile", "copy"}];
    v4->_audioReturnChannelControlEnabled = [coder decodeBoolForKey:@"audioReturnChannelControlEnabled"];
    v4->_audioVolumeStatus = [coder decodeIntegerForKey:@"audioVolumeStatus"];
    v4->_audioMuteStatus = [coder decodeBoolForKey:@"audioMuteStatus"];
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v4->_audioFormats = [objc_msgSend(coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, v7, objc_opt_class(), 0), @"audioFormats", "copy"}];
    v4->_audioFormatsCount = [coder decodeIntegerForKey:@"audioFormatsCount"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CoreCECDevice;
  [(CoreRCDevice *)&v5 encodeWithCoder:?];
  [coder encodeInteger:self->_logicalAddress forKey:@"logicalAddress"];
  [coder encodeInteger:self->_physicalAddress forKey:@"physicalAddress"];
  [coder encodeInteger:self->_deviceType forKey:@"deviceType"];
  [coder encodeInteger:self->_cecVersion forKey:@"cecVersion"];
  [coder encodeInteger:self->_vendorID forKey:@"vendorID"];
  [coder encodeInteger:self->_powerStatus forKey:@"powerStatus"];
  [coder encodeInteger:self->_deckStatus forKey:@"deckStatus"];
  [coder encodeBool:self->_isActiveSource forKey:@"isActiveSource"];
  [coder encodeBool:self->_systemAudioControlEnabled forKey:@"systemAudioControlEnabled"];
  [coder encodeInteger:self->_allDeviceTypes forKey:@"allDeviceTypes"];
  [coder encodeInteger:self->_deviceFeatures forKey:@"deviceFeatures"];
  [coder encodeInteger:self->_knownDeviceFeatures forKey:@"knownDeviceFeatures"];
  [coder encodeObject:self->_rcProfile forKey:@"rcProfile"];
  [coder encodeBool:self->_audioReturnChannelControlEnabled forKey:@"audioReturnChannelControlEnabled"];
  [coder encodeInteger:self->_audioVolumeStatus forKey:@"audioVolumeStatus"];
  [coder encodeBool:self->_audioMuteStatus forKey:@"audioMuteStatus"];
  [coder encodeObject:self->_audioFormats forKey:@"audioFormats"];
  [coder encodeInteger:self->_audioFormatsCount forKey:@"audioFormatsCount"];
}

- (id)description
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = CoreCECDevice;
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:{-[CoreRCDevice description](&v9, sel_description)}];
  [v3 appendFormat:@" LA: %u (%@);", -[CoreCECDevice logicalAddress](self, "logicalAddress"), CoreCECAddressString(-[CoreCECDevice logicalAddress](self, "logicalAddress"))];
  v10[0] = CECPhysicalAddressStringWithAddress([(CoreCECDevice *)self physicalAddress]);
  [v3 appendFormat:@" PA: %s;", v10];
  [v3 appendFormat:@" Type: %@;", CoreCECDeviceTypeString(-[CoreCECDevice deviceType](self, "deviceType"))];
  [v3 appendFormat:@" CEC: %@;", CoreCECVersionString(-[CoreCECDevice cecVersion](self, "cecVersion"))];
  [v3 appendFormat:@" Vendor: %@;", CoreCECVendorIDString(-[CoreCECDevice vendorID](self, "vendorID"))];
  [v3 appendFormat:@" Power: %@;", CoreCECPowerStatusString(-[CoreCECDevice powerStatus](self, "powerStatus"))];
  if ([(CoreCECDevice *)self deviceType]== 2 || [(CoreCECDevice *)self deviceType]== 4)
  {
    [v3 appendFormat:@" Deck: %@;", CoreCECDeckInfoString(-[CoreCECDevice deckStatus](self, "deckStatus"))];
  }

  if ([(CoreRCDevice *)self isLocalDevice])
  {
    if ([(CoreCECDevice *)self systemAudioControlEnabled])
    {
      v4 = "Y";
    }

    else
    {
      v4 = "N";
    }

    [v3 appendFormat:@" System Audio Control: %s;", v4];
  }

  if ([(CoreCECDevice *)self deviceType]== 1)
  {
    [v3 appendFormat:@" Volume: %lu;", -[CoreCECDevice audioVolumeStatus](self, "audioVolumeStatus")];
    if ([(CoreCECDevice *)self audioMuteStatus])
    {
      v5 = "Y";
    }

    else
    {
      v5 = "N";
    }

    [v3 appendFormat:@" Mute: %s;", v5];
    if ([(CoreCECDevice *)self audioReturnChannelControlEnabled])
    {
      v6 = "Y";
    }

    else
    {
      v6 = "N";
    }

    [v3 appendFormat:@" ARC Enable: %s;", v6];
    [v3 appendFormat:@" AudFmts: %lu;", -[CoreCECDevice audioFormatsCount](self, "audioFormatsCount")];
  }

  if (self->_isActiveSource)
  {
    v7 = "Y";
  }

  else
  {
    v7 = "N";
  }

  [v3 appendFormat:@" Active Source: %s;", v7];
  [v3 appendFormat:@" All Device Types: 0x%02X;", -[CoreCECDevice allDeviceTypes](self, "allDeviceTypes")];
  [v3 appendFormat:@" Features: 0x%08lX;", -[CoreCECDevice deviceFeatures](self, "deviceFeatures")];
  [v3 appendFormat:@" KnownFeatures: 0x%08lX;", -[CoreCECDevice knownDeviceFeatures](self, "knownDeviceFeatures")];
  [v3 appendFormat:@" RCProfile: %@;", CoreCECRCProfileString(-[CoreCECDevice rcProfile](self, "rcProfile"))];
  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CoreCECDevice;
  [(CoreRCDevice *)&v3 dealloc];
}

- (id)delegate
{
  v3.receiver = self;
  v3.super_class = CoreCECDevice;
  return [(CoreRCDevice *)&v3 delegate];
}

- (void)setDelegate:(id)delegate
{
  v3.receiver = self;
  v3.super_class = CoreCECDevice;
  [(CoreRCDevice *)&v3 setDelegate:delegate];
}

- (unint64_t)defaultKnownDeviceFeaturesMaskForCECVersion:(unint64_t)version
{
  if ([(CoreCECDevice *)self cecVersion]< 6 || [(CoreCECDevice *)self cecVersion]>= 0x40)
  {
    return 0;
  }

  else
  {
    return 0x1FFFFFLL;
  }
}

- (void)setIsActiveSource:(BOOL)source
{
  if (self->_isActiveSource != source)
  {
    self->_isActiveSource = source;
    [(CoreCECDevice *)self notifyDelegateActiveSourceStatusHasChanged];
  }
}

- (BOOL)deckControlSetDeckStatus:(unint64_t)status error:(id *)error
{
  if ([(CoreCECDevice *)self deviceType]!= 2 && [(CoreCECDevice *)self deviceType]!= 4)
  {
    [CoreCECDevice deckControlSetDeckStatus:? error:?];
LABEL_9:
    v7 = v9;
    if (!error)
    {
      return v7 == 0;
    }

    goto LABEL_5;
  }

  if (!status)
  {
    [CoreIRBusProvider addDeviceWithType:? matching:? learningSession:? error:?];
    goto LABEL_9;
  }

  v7 = 0;
  self->_deckStatus = status;
  if (error)
  {
LABEL_5:
    *error = v7;
  }

  return v7 == 0;
}

- (BOOL)setSystemAudioControlEnabled:(BOOL)enabled error:(id *)error
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice setSystemAudioControlEnabled:enabled error:?];
  }

  self->_systemAudioControlEnabled = enabled;
  return 1;
}

- (BOOL)systemAudioModeRequest:(unint64_t)request error:(id *)error
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice systemAudioModeRequest:request error:?];
  }

  return 1;
}

- (BOOL)setPowerStatus:(unint64_t)status error:(id *)error
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice setPowerStatus:status error:?];
  }

  if (self->_powerStatus != status)
  {
    [(CoreCECDevice *)self willChangePowerStatus:status];
    self->_powerStatus = status;
    [(CoreCECDevice *)self didChangePowerStatus:status];
  }

  return 1;
}

- (void)didChangePowerStatus:(unint64_t)status
{
  v4 = [(CoreRCDevice *)self bus];

  [v4 notifyDelegateDeviceUpdated:self];
}

- (BOOL)setAudioReturnChannelControlEnabled:(BOOL)enabled error:(id *)error
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice setAudioReturnChannelControlEnabled:enabled error:?];
  }

  self->_audioReturnChannelControlEnabled = enabled;
  return 1;
}

- (BOOL)setAudioVolumeStatus:(unint64_t)status error:(id *)error
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice setAudioVolumeStatus:status error:?];
  }

  if (status > 0x64)
  {
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6737 userInfo:0];
    }
  }

  else
  {
    self->_audioVolumeStatus = status;
  }

  return status < 0x65;
}

- (BOOL)setAudioMuteStatus:(BOOL)status error:(id *)error
{
  statusCopy = status;
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice setAudioMuteStatus:statusCopy error:?];
  }

  self->_audioMuteStatus = statusCopy;
  return 1;
}

- (BOOL)setSupportedAudioFormats:(id)formats error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice setSupportedAudioFormats:a2 error:?];
    if (formats)
    {
      goto LABEL_5;
    }

LABEL_19:
    v14 = 0;
    self->_audioFormats = 0;
    goto LABEL_20;
  }

  if (!formats)
  {
    goto LABEL_19;
  }

LABEL_5:
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  allKeys = [formats allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    v10 = &stru_285935118;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v16 = 0;
        [objc_msgSend(formats objectForKeyedSubscript:{v12), "getBytes:length:", &v16, 3}];
        integerValue = [v12 integerValue];
        v10 = [(__CFString *)v10 stringByAppendingFormat:@"0x%02lx:0x%02x%02x%02x ", integerValue, v16, SBYTE1(v16), SBYTE2(v16)];
      }

      v8 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = &stru_285935118;
  }

  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice setSupportedAudioFormats:v10 error:?];
  }

  self->_audioFormats = formats;
  v14 = [formats count];
LABEL_20:
  self->_audioFormatsCount = v14;
  return 1;
}

- (unint64_t)featureSupportStatus:(unint64_t)status
{
  v4 = 1 << status;
  if (([(CoreCECDevice *)self deviceFeatures]& v4) != 0)
  {
    return 2;
  }

  if (([(CoreCECDevice *)self knownDeviceFeatures]& v4) != 0)
  {
    if (gLogCategory_CoreRCDevice > 40)
    {
      return 1;
    }

    else if (gLogCategory_CoreRCDevice == -1)
    {
      v5 = 1;
      if (_LogCategory_Initialize())
      {
        LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDevice featureSupportStatus:]", 40, "featureSupportStatus:%lu is not supported\n");
      }
    }

    else
    {
      v5 = 1;
      LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDevice featureSupportStatus:]", 40, "featureSupportStatus:%lu is not supported\n");
    }
  }

  else
  {
    if (gLogCategory_CoreRCDevice <= 40)
    {
      if (gLogCategory_CoreRCDevice == -1)
      {
        v5 = 0;
        if (!_LogCategory_Initialize())
        {
          return v5;
        }
      }

      else
      {
        v5 = 0;
      }

      LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDevice featureSupportStatus:]", 40, "featureSupportStatus:%lu is currently unknown\n");
      return v5;
    }

    return 0;
  }

  return v5;
}

- (void)setFeature:(unint64_t)feature supportStatus:(unint64_t)status
{
  switch(status)
  {
    case 0uLL:
      v10 = ~(1 << feature);
      [(CoreCECDevice *)self setDeviceFeatures:[(CoreCECDevice *)self deviceFeatures]& v10];
      v9 = [(CoreCECDevice *)self knownDeviceFeatures]& v10;
      goto LABEL_8;
    case 1uLL:
      v7 = 1 << feature;
      v8 = [(CoreCECDevice *)self deviceFeatures]& ~v7;
      goto LABEL_6;
    case 2uLL:
      v7 = 1 << feature;
      v8 = [(CoreCECDevice *)self deviceFeatures]| v7;
LABEL_6:
      [(CoreCECDevice *)self setDeviceFeatures:v8];
      v9 = [(CoreCECDevice *)self knownDeviceFeatures]| v7;
LABEL_8:

      [(CoreCECDevice *)self setKnownDeviceFeatures:v9];
      return;
  }

  if (gLogCategory_CoreRCDevice <= 90 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDevice setFeature:supportStatus:]", 90, "Error: setFeature:%lu supportStatus:%lu : invalid feature support status value\n", feature, status);
  }
}

- (void)removeFromBus
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [(CoreCECDevice *)self removeFromBus];
  }

  v3 = [(CoreRCDevice *)self bus];

  [v3 removeDevice:self];
}

- (void)deckControlCommandHasBeenReceived:(unint64_t)received fromDevice:(id)device
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice deckControlCommandHasBeenReceived:received fromDevice:?];
  }

  [(CoreCECDevice *)self notifyDelegateDeckControlCommandHasBeenReceived:device command:received];
}

- (void)deckControlPlayHasBeenReceived:(unint64_t)received fromDevice:(id)device
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice deckControlPlayHasBeenReceived:received fromDevice:?];
  }

  [(CoreCECDevice *)self notifyDelegateDeckControlPlayHasBeenReceived:device playMode:received];
}

- (void)deckControlStatusHasBeenUpdated:(unint64_t)updated fromDevice:(id)device
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice deckControlStatusHasBeenUpdated:updated fromDevice:?];
  }

  [(CoreCECDevice *)self notifyDelegateDeckControlStatusHasBeenUpdated:device deckInfo:updated];
}

- (void)standbyRequestHasBeenReceived:(id)received
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [(CoreCECDevice *)self standbyRequestHasBeenReceived:received];
  }

  [(CoreCECDevice *)self notifyDelegateStandbyRequestHasBeenReceived:received];
}

- (void)receivedRequestSystemAudioModeStatusChangeTo:(unint64_t)to fromDevice:(id)device
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice receivedRequestSystemAudioModeStatusChangeTo:to fromDevice:?];
  }

  [(CoreCECDevice *)self notifyDelegateReceivedRequestSystemAudioModeStatusChangeTo:to fromDevice:device];
}

- (void)requestSystemAudioModeStatusChangeTo:(unint64_t)to didFinishWithResult:(BOOL)result error:(id)error
{
  resultCopy = result;
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    v9 = objc_opt_class();
    v10 = CoreCECActivationStatusString(to);
    v11 = @"NO";
    if (resultCopy)
    {
      v11 = @"YES";
    }

    LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDevice requestSystemAudioModeStatusChangeTo:didFinishWithResult:error:]", 10, "%@ %@ SYSTEM AUDIO MODE REQUEST FINISHED:%@ success:%@ error:%@\n", v9, self, v10, v11, error);
  }

  [(CoreCECDevice *)self notifyDelegateRequestSystemAudioModeStatusChangeTo:to didFinishWithResult:resultCopy error:error];
}

- (void)receivedRequestAudioReturnChannelStatusChangeTo:(unint64_t)to fromDevice:(id)device
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice receivedRequestAudioReturnChannelStatusChangeTo:to fromDevice:?];
  }

  [(CoreCECDevice *)self notifyDelegateReceivedRequestAudioReturnChannelStatusChangeTo:to fromDevice:device];
}

- (void)requestAudioReturnChannelStatusChangeTo:(unint64_t)to didFinishWithResult:(BOOL)result error:(id)error
{
  resultCopy = result;
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    v9 = objc_opt_class();
    v10 = CoreCECActivationStatusString(to);
    v11 = @"NO";
    if (resultCopy)
    {
      v11 = @"YES";
    }

    LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDevice requestAudioReturnChannelStatusChangeTo:didFinishWithResult:error:]", 10, "%@ %@ AUDIO RETURN CHANNEL REQUEST FINISHED:%@ success:%@ error:%@\n", v9, self, v10, v11, error);
  }

  [(CoreCECDevice *)self notifyDelegateRequestAudioReturnChannelStatusChangeTo:to didFinishWithResult:resultCopy error:error];
}

- (void)notifyDelegateShouldAssertActiveSource
{
  delegate = [(CoreCECDevice *)self delegate];
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [(CoreCECDevice *)self notifyDelegateShouldAssertActiveSource];
  }

  if (objc_opt_respondsToSelector())
  {

    [delegate cecDeviceShouldAssertActiveSource:self];
  }
}

- (void)notifyDelegateActiveSourceStatusHasChanged
{
  delegate = [(CoreCECDevice *)self delegate];
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [(CoreCECDevice *)self notifyDelegateActiveSourceStatusHasChanged];
  }

  if (objc_opt_respondsToSelector())
  {
    isActiveSource = [(CoreCECDevice *)self isActiveSource];

    [delegate cecDevice:self activeSourceStatusHasChanged:isActiveSource];
  }
}

- (void)notifyDelegateDeckControlCommandHasBeenReceived:(id)received command:(unint64_t)command
{
  delegate = [(CoreCECDevice *)self delegate];
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice notifyDelegateDeckControlCommandHasBeenReceived:command command:?];
  }

  if (objc_opt_respondsToSelector())
  {

    [delegate cecDevice:self deckControlCommandHasBeenReceived:command fromDevice:received];
  }
}

- (void)notifyDelegateDeckControlPlayHasBeenReceived:(id)received playMode:(unint64_t)mode
{
  delegate = [(CoreCECDevice *)self delegate];
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice notifyDelegateDeckControlPlayHasBeenReceived:mode playMode:?];
  }

  if (objc_opt_respondsToSelector())
  {

    [delegate cecDevice:self deckControlPlayHasBeenReceived:mode fromDevice:received];
  }
}

- (void)notifyDelegateDeckControlStatusHasBeenUpdated:(id)updated deckInfo:(unint64_t)info
{
  delegate = [(CoreCECDevice *)self delegate];
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice notifyDelegateDeckControlStatusHasBeenUpdated:info deckInfo:?];
  }

  if (objc_opt_respondsToSelector())
  {

    [delegate cecDevice:self deckControlStatusHasBeenUpdated:info fromDevice:updated];
  }
}

- (void)notifyDelegateFeatureAbort:(id)abort
{
  delegate = [(CoreCECDevice *)self delegate];
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [(CoreCECDevice *)self notifyDelegateFeatureAbort:abort];
  }

  if (objc_opt_respondsToSelector())
  {

    [delegate cecDevice:self featureAbort:abort];
  }
}

- (void)notifyDelegateStandbyRequestHasBeenReceived:(id)received
{
  delegate = [(CoreCECDevice *)self delegate];
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [(CoreCECDevice *)self notifyDelegateStandbyRequestHasBeenReceived:received];
  }

  if (objc_opt_respondsToSelector())
  {

    [delegate cecDevice:self standbyRequestHasBeenReceived:received];
  }
}

- (void)notifyDelegateReceivedRequestSystemAudioModeStatusChangeTo:(unint64_t)to fromDevice:(id)device
{
  delegate = [(CoreCECDevice *)self delegate];
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice notifyDelegateReceivedRequestSystemAudioModeStatusChangeTo:to fromDevice:?];
  }

  if (objc_opt_respondsToSelector())
  {

    [delegate cecDevice:self receivedRequestSystemAudioModeStatusChangeTo:to fromDevice:device];
  }
}

- (void)notifyDelegateRequestSystemAudioModeStatusChangeTo:(unint64_t)to didFinishWithResult:(BOOL)result error:(id)error
{
  resultCopy = result;
  delegate = [(CoreCECDevice *)self delegate];
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice notifyDelegateRequestSystemAudioModeStatusChangeTo:to didFinishWithResult:? error:?];
  }

  if (objc_opt_respondsToSelector())
  {

    [delegate cecDevice:self requestSystemAudioModeStatusChangeTo:to didFinishWithResult:resultCopy error:error];
  }
}

- (void)notifyDelegateReceivedRequestAudioReturnChannelStatusChangeTo:(unint64_t)to fromDevice:(id)device
{
  delegate = [(CoreCECDevice *)self delegate];
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice notifyDelegateReceivedRequestAudioReturnChannelStatusChangeTo:to fromDevice:?];
  }

  if (objc_opt_respondsToSelector())
  {

    [delegate cecDevice:self receivedRequestAudioReturnChannelStatusChangeTo:to fromDevice:device];
  }
}

- (void)notifyDelegateRequestAudioReturnChannelStatusChangeTo:(unint64_t)to didFinishWithResult:(BOOL)result error:(id)error
{
  resultCopy = result;
  delegate = [(CoreCECDevice *)self delegate];
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    v10 = objc_opt_class();
    v11 = CoreCECActivationStatusString(to);
    v12 = @"NO";
    if (resultCopy)
    {
      v12 = @"YES";
    }

    LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDevice notifyDelegateRequestAudioReturnChannelStatusChangeTo:didFinishWithResult:error:]", 10, "NOTIFY %@ %@ ARC REQUEST FINISHED:%@ success:%@, error:%@\n", v10, self, v11, v12, error);
  }

  if (objc_opt_respondsToSelector())
  {

    [delegate cecDevice:self requestAudioReturnChannelStatusChangeTo:to didFinishWithResult:resultCopy error:error];
  }
}

- (void)notifyDelegateAudioStatusReceived:(unint64_t)received muteStatus:(BOOL)status
{
  statusCopy = status;
  delegate = [(CoreCECDevice *)self delegate];
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDevice notifyDelegateAudioStatusReceived:v7 muteStatus:?];
  }

  if (objc_opt_respondsToSelector())
  {

    [delegate cecDevice:self audioStatusReceived:received muteStatus:statusCopy];
  }
}

- (void)setDeckStatus:(unint64_t)status
{
  if (status)
  {
    self->_deckStatus = status;
  }
}

- (void)deckControlSetDeckStatus:(void *)a1 error:.cold.1(void *a1)
{
  result = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6756 userInfo:0];
  *a1 = result;
  return result;
}

- (uint64_t)setSystemAudioControlEnabled:(char)a1 error:.cold.1(char a1)
{
  v1 = "NO";
  if (a1)
  {
    v1 = "YES";
  }

  return LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDevice setSystemAudioControlEnabled:error:]", 40, "Setting SAM enable=%s", v1);
}

- (uint64_t)setPowerStatus:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_3(a1, a2);
  v4 = OUTLINED_FUNCTION_5_1();
  v5 = CoreCECPowerStatusString(v4);
  return LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDevice setPowerStatus:error:]", 10, "%@ %@ setPowerStatus: %@\n", v3, v2, v5);
}

- (uint64_t)setAudioReturnChannelControlEnabled:(char)a1 error:.cold.1(char a1)
{
  v1 = "NO";
  if (a1)
  {
    v1 = "YES";
  }

  return LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDevice setAudioReturnChannelControlEnabled:error:]", 40, "Setting ARC enable=%s\n", v1);
}

- (uint64_t)setAudioMuteStatus:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = objc_opt_class();
  v5 = "NO";
  if (v2)
  {
    v5 = "YES";
  }

  return LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDevice setAudioMuteStatus:error:]", 10, "%@ %@ setAudioMuteStatus: %s\n", v4, a1, v5);
}

- (uint64_t)deckControlCommandHasBeenReceived:(uint64_t)a1 fromDevice:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_3(a1, a2);
  v2 = OUTLINED_FUNCTION_3_1();
  CoreCECDeckControlModeString(v2);
  OUTLINED_FUNCTION_2_4();
  objc_opt_class();
  OUTLINED_FUNCTION_0_5();
  return LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDevice deckControlCommandHasBeenReceived:fromDevice:]", 10, "%@ %@ DECK CONTROL COMMAND %@ HAS BEEN RECEIVED by %@ %@\n");
}

- (uint64_t)deckControlPlayHasBeenReceived:(uint64_t)a1 fromDevice:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_3(a1, a2);
  v2 = OUTLINED_FUNCTION_3_1();
  CoreCECPlayModeString(v2);
  OUTLINED_FUNCTION_2_4();
  objc_opt_class();
  OUTLINED_FUNCTION_0_5();
  return LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDevice deckControlPlayHasBeenReceived:fromDevice:]", 10, "%@ %@ DECK CONTROL PLAY MODE %@ HAS BEEN RECEIVED by %@ %@\n");
}

- (uint64_t)deckControlStatusHasBeenUpdated:(uint64_t)a1 fromDevice:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_3(a1, a2);
  v2 = OUTLINED_FUNCTION_3_1();
  CoreCECDeckInfoString(v2);
  OUTLINED_FUNCTION_2_4();
  objc_opt_class();
  OUTLINED_FUNCTION_0_5();
  return LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDevice deckControlStatusHasBeenUpdated:fromDevice:]", 10, "%@ %@ DECK CONTROL STATUS %@ HAS BEEN UPDATED by %@ %@\n");
}

- (uint64_t)standbyRequestHasBeenReceived:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_3(a1, a2);
  OUTLINED_FUNCTION_5_1();
  v5 = objc_opt_class();
  return LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDevice standbyRequestHasBeenReceived:]", 10, "%@ %@ STANDBY REQUEST HAS BEEN RECEIVED by %@ %@\n", v4, v3, v5, v2);
}

- (uint64_t)receivedRequestSystemAudioModeStatusChangeTo:(uint64_t)a1 fromDevice:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_3(a1, a2);
  v2 = OUTLINED_FUNCTION_3_1();
  CoreCECActivationStatusString(v2);
  OUTLINED_FUNCTION_2_4();
  objc_opt_class();
  OUTLINED_FUNCTION_0_5();
  return LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDevice receivedRequestSystemAudioModeStatusChangeTo:fromDevice:]", 10, "%@ %@ SYSTEM AUDIO MODE CHANGE REQUEST: %@ HAS BEEN RECEIVED from %@ %@\n");
}

- (uint64_t)receivedRequestAudioReturnChannelStatusChangeTo:(uint64_t)a1 fromDevice:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_3(a1, a2);
  v2 = OUTLINED_FUNCTION_3_1();
  CoreCECActivationStatusString(v2);
  OUTLINED_FUNCTION_2_4();
  objc_opt_class();
  OUTLINED_FUNCTION_0_5();
  return LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDevice receivedRequestAudioReturnChannelStatusChangeTo:fromDevice:]", 10, "%@ %@ AUDIO RETURN CHANNEL CHANGE REQUEST: %@ HAS BEEN RECEIVED from %@ %@\n");
}

- (uint64_t)notifyDelegateActiveSourceStatusHasChanged
{
  objc_opt_class();
  isActiveSource = [OUTLINED_FUNCTION_2_4() isActiveSource];
  v5 = "NO";
  if (isActiveSource)
  {
    v5 = "YES";
  }

  return LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDevice notifyDelegateActiveSourceStatusHasChanged]", 10, "NOTIFY %@ %@ ACTIVE SOURCE STATUS CHANGED to %s\n", v2, self, v5);
}

- (uint64_t)notifyDelegateDeckControlCommandHasBeenReceived:(uint64_t)a1 command:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_3(a1, a2);
  v2 = OUTLINED_FUNCTION_3_1();
  CoreCECDeckControlModeString(v2);
  OUTLINED_FUNCTION_2_4();
  objc_opt_class();
  OUTLINED_FUNCTION_0_5();
  return LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDevice notifyDelegateDeckControlCommandHasBeenReceived:command:]", 10, "NOTIFY %@ %@ DECK CONTROL COMMAND %@ FROM %@ %@\n");
}

- (uint64_t)notifyDelegateDeckControlPlayHasBeenReceived:(uint64_t)a1 playMode:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_3(a1, a2);
  v2 = OUTLINED_FUNCTION_3_1();
  CoreCECPlayModeString(v2);
  OUTLINED_FUNCTION_2_4();
  objc_opt_class();
  OUTLINED_FUNCTION_0_5();
  return LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDevice notifyDelegateDeckControlPlayHasBeenReceived:playMode:]", 10, "NOTIFY %@ %@ DECK PLAY %@ RX FROM %@ %@\n");
}

- (uint64_t)notifyDelegateDeckControlStatusHasBeenUpdated:(uint64_t)a1 deckInfo:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_3(a1, a2);
  v2 = OUTLINED_FUNCTION_3_1();
  CoreCECDeckInfoString(v2);
  OUTLINED_FUNCTION_2_4();
  objc_opt_class();
  OUTLINED_FUNCTION_0_5();
  return LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDevice notifyDelegateDeckControlStatusHasBeenUpdated:deckInfo:]", 10, "NOTIFY %@ %@ DECK STATUS %@ RX FROM %@ %@\n");
}

- (uint64_t)notifyDelegateStandbyRequestHasBeenReceived:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_3(a1, a2);
  OUTLINED_FUNCTION_5_1();
  v5 = objc_opt_class();
  return LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDevice notifyDelegateStandbyRequestHasBeenReceived:]", 10, "NOTIFY %@ %@ STANDBY RX FROM %@ %@\n", v4, v3, v5, v2);
}

- (uint64_t)notifyDelegateReceivedRequestSystemAudioModeStatusChangeTo:(uint64_t)a1 fromDevice:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_3(a1, a2);
  v2 = OUTLINED_FUNCTION_3_1();
  CoreCECActivationStatusString(v2);
  OUTLINED_FUNCTION_2_4();
  objc_opt_class();
  OUTLINED_FUNCTION_0_5();
  return LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDevice notifyDelegateReceivedRequestSystemAudioModeStatusChangeTo:fromDevice:]", 10, "NOTIFY %@ %@ SYSTEM AUDIO MODE REQUEST:%@ FROM %@ %@\n");
}

- (uint64_t)notifyDelegateRequestSystemAudioModeStatusChangeTo:(uint64_t)a1 didFinishWithResult:(uint64_t)a2 error:.cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_3(a1, a2);
  v4 = OUTLINED_FUNCTION_5_1();
  v5 = CoreCECActivationStatusString(v4);
  return LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDevice notifyDelegateRequestSystemAudioModeStatusChangeTo:didFinishWithResult:error:]", 10, "NOTIFY %@ %@ SYSTEM AUDIO MODE REQUEST COMPLETED: %@\n", v3, v2, v5);
}

- (uint64_t)notifyDelegateReceivedRequestAudioReturnChannelStatusChangeTo:(uint64_t)a1 fromDevice:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_3(a1, a2);
  v2 = OUTLINED_FUNCTION_3_1();
  CoreCECActivationStatusString(v2);
  OUTLINED_FUNCTION_2_4();
  objc_opt_class();
  OUTLINED_FUNCTION_0_5();
  return LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDevice notifyDelegateReceivedRequestAudioReturnChannelStatusChangeTo:fromDevice:]", 10, "NOTIFY %@ %@ AUDIO RETURN CHANNEL REQUEST: %@ FROM %@ %@\n");
}

@end