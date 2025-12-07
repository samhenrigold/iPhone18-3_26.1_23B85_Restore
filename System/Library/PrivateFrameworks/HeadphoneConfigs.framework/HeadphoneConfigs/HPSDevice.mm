@interface HPSDevice
+ (id)headphoneDevice:(id)device btsDevice:(id)btsDevice;
- ($70344DAF05348A783186C1CF166707C1)getCallManagementConfig;
- ($9BEB610D0CE1B1EDC3D89DA2464F985F)syncSettings;
- (BOOL)ancsAuthorized;
- (BOOL)batteryStatus:(id *)status;
- (BOOL)cloudPaired;
- (BOOL)connected;
- (BOOL)featureCapability:(int)capability;
- (BOOL)getAACPCapabilityBit:(int)bit;
- (BOOL)getAdaptiveVolumeSupport;
- (BOOL)getAutoANCSupport;
- (BOOL)getConversationDetectSupport;
- (BOOL)getDeviceSoundProfileAllowed;
- (BOOL)getHexDeviceAddress:(id *)address;
- (BOOL)hearingAidEnabled;
- (BOOL)hearingAidEnrolled;
- (BOOL)hearingAidSupport;
- (BOOL)hearingTestSupport;
- (BOOL)inEarDetectEnabled;
- (BOOL)inEarStatusPrimary:(int *)primary secondary:(int *)secondary;
- (BOOL)isAppleAudioDevice;
- (BOOL)isFirmwareUpdateRequiredDevice;
- (BOOL)isGenuineAirPods;
- (BOOL)isGuestPairingMode;
- (BOOL)isLimitedConnectivityDevice;
- (BOOL)isServiceSupported:(unsigned int)supported;
- (BOOL)isTemporaryPaired;
- (BOOL)magicPaired;
- (BOOL)paired;
- (BOOL)setAutoAnswerMode:(int)mode;
- (BOOL)setCallConfig:(id)config;
- (BOOL)setClickHoldMode:(int)mode rightMode:(int)rightMode;
- (BOOL)setClickHoldModes:(id)modes;
- (BOOL)setCrownRotationDirection:(int)direction;
- (BOOL)setDoubleTapAction:(unsigned int)action;
- (BOOL)setDoubleTapActionEx:(unsigned int)ex rightAction:(unsigned int)action;
- (BOOL)setInEarDetectEnabled:(BOOL)enabled;
- (BOOL)setListeningMode:(unsigned int)mode;
- (BOOL)setListeningModeConfigs:(unsigned int)configs;
- (BOOL)setMicMode:(unsigned int)mode;
- (BOOL)setSmartRouteMode:(unsigned __int8)mode;
- (BOOL)setUserName:(id)name;
- (BOOL)setUserSelectedDeviceType:(int)type;
- (BOOL)smartRouteSupport;
- (BOOL)supportsANCS;
- (BTSDevice)btsDevice;
- (HPSDevice)initWithHeadphoneDevice:(id)device btsDevice:(id)btsDevice;
- (NSString)debugDescription;
- (id)accessoryInfo;
- (id)address;
- (id)getServiceSetting:(unsigned int)setting key:(id)key;
- (id)healthDeviceType;
- (id)identifier;
- (id)name;
- (id)productName;
- (id)syncGroups;
- (int)accessorySettingFeatureBitMask;
- (int)autoAnswerMode;
- (int)crownRotationDirection;
- (int)getDeviceColor:(unsigned int *)color;
- (int)getLowSecurityStatus;
- (int)getUserSelectedDeviceType;
- (unsigned)SendSetupCommand:(unsigned __int8)command;
- (unsigned)clickHoldMode:(int *)mode rightAction:(int *)action;
- (unsigned)clickHoldModes:(id *)modes;
- (unsigned)doubleTapAction;
- (unsigned)doubleTapActionEx:(unsigned int *)ex rightAction:(unsigned int *)action;
- (unsigned)doubleTapCapability;
- (unsigned)getAdaptiveVolumeMode;
- (unsigned)getConversationDetectMode;
- (unsigned)getDeviceAdaptiveVolumeMode;
- (unsigned)getSpatialAudioPlatformSupport;
- (unsigned)listeningMode;
- (unsigned)listeningModeConfigs;
- (unsigned)micMode;
- (unsigned)productId;
- (unsigned)smartRouteMode;
- (unsigned)userSelectedHealthDataSyncConfig;
- (unsigned)vendorId;
- (void)_logExpectationFormatStringForUsecase:(id)usecase queryValue:(id)value btsDeviceValue:(id)deviceValue headphoneDeviceValue:(id)headphoneDeviceValue;
- (void)_logSetterExpectationFormatStringForUsecase:(id)usecase inputValue:(id)value existingValue:(id)existingValue readBackValue:(id)backValue;
- (void)disconnect;
- (void)setANCSAuthorization:(BOOL)authorization;
- (void)setAdaptiveVolumeMode:(int)mode;
- (void)setConversationDetectMode:(int)mode;
- (void)setDeviceAdaptiveVolumeMode:(int)mode;
- (void)setDeviceSoundProfileAllowed:(BOOL)allowed;
- (void)setGuestPairingMode:(BOOL)mode;
- (void)setHearingAidEnabled:(BOOL)enabled;
- (void)setHearingAidEnrolled:(BOOL)enrolled;
- (void)setServiceSetting:(unsigned int)setting key:(id)key value:(id)value;
- (void)setSyncGroup:(int)group enabled:(BOOL)enabled;
- (void)setSyncSettings:(id)settings;
- (void)setUserSelectedHealthDataSyncConfig:(unsigned __int8)config;
- (void)unpair;
@end

@implementation HPSDevice

- (HPSDevice)initWithHeadphoneDevice:(id)device btsDevice:(id)btsDevice
{
  v29 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  btsDeviceCopy = btsDevice;
  v24.receiver = self;
  v24.super_class = HPSDevice;
  v9 = [(HPSDevice *)&v24 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_btsDevice, btsDevice);
    objc_storeStrong(&v10->_headphoneDevice, device);
    v11 = +[HPSHeadphoneManager sharedInstance];
    v10->_ffValue = [v11 isFeatureEnabled];

    v13 = sharedBluetoothSettingsLogComponent(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v26 = btsDeviceCopy;
      v27 = 2048;
      v28 = deviceCopy;
      _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: %p %p", buf, 0x16u);
    }

    if (btsDeviceCopy)
    {
      if (!v10->_headphoneDevice && v10->_ffValue)
      {
        mEMORY[0x277D0FC00] = [MEMORY[0x277D0FC00] shared];
        connectedHeadphones = [mEMORY[0x277D0FC00] connectedHeadphones];
        classicDevice = [btsDeviceCopy classicDevice];
        address = [classicDevice address];
        v18 = [address stringByReplacingOccurrencesOfString:@":" withString:@"-"];
        v19 = [connectedHeadphones objectForKey:v18];
        headphoneDevice = v10->_headphoneDevice;
        v10->_headphoneDevice = v19;

        if (!v10->_headphoneDevice)
        {
          v22 = sharedBluetoothSettingsLogComponent(v21);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [HPSDevice initWithHeadphoneDevice:btsDevice:];
          }
        }
      }
    }
  }

  return v10;
}

- (id)address
{
  v25 = *MEMORY[0x277D85DE8];
  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    btAddress = [headphoneDevice btAddress];
    v5 = [btAddress stringByReplacingOccurrencesOfString:@"-" withString:@":"];

    btsDevice = [(HPSDevice *)self btsDevice];
    classicDevice = [btsDevice classicDevice];
    address = [classicDevice address];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[address]" btsDeviceValue:address headphoneDeviceValue:v5];

    headphoneDevice2 = [(HPSDevice *)self headphoneDevice];
    btAddress2 = [headphoneDevice2 btAddress];
    if (btAddress2)
    {
      address2 = v5;
    }

    else
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address2 = [classicDevice2 address];
    }
  }

  else
  {
    btsDevice3 = [(HPSDevice *)self btsDevice];
    classicDevice3 = [btsDevice3 classicDevice];
    address2 = [classicDevice3 address];

    v5 = sharedBluetoothSettingsLogComponent(v14);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice4 = [(HPSDevice *)self btsDevice];
      classicDevice4 = [btsDevice4 classicDevice];
      address3 = [classicDevice4 address];
      v21 = 138412546;
      v22 = address3;
      v23 = 2112;
      v24 = address2;
      _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [address] [BTDevice-Only] btDevice: %@, returnValue:%@", &v21, 0x16u);
    }
  }

  return address2;
}

- (BOOL)batteryStatus:(id *)status
{
  v34 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  batteryStateCase = [classicDevice batteryStatus:status];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n battIsChagingCase: %i \nbattIsChargingLeft: %i \nbattIsChargingRight: %i \nbattIsChargingSingle: %i \nbattLevelCase: %i \nbattLevelLeft: %i \nbattLevelRight: %i \nbattLevelSingle: %i \n", status->var7, status->var5, status->var3, status->var1, status->var6, status->var4, status->var2, status->var0];
  v9 = v8;
  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    batteryStateCase = [headphoneDevice batteryStateCase];

    headphoneDevice2 = [(HPSDevice *)self headphoneDevice];
    LODWORD(headphoneDevice) = [headphoneDevice2 batteryStateLeft];

    headphoneDevice3 = [(HPSDevice *)self headphoneDevice];
    LODWORD(headphoneDevice2) = [headphoneDevice3 batteryStateRight];

    headphoneDevice4 = [(HPSDevice *)self headphoneDevice];
    LODWORD(headphoneDevice3) = [headphoneDevice4 batteryStateMain];

    headphoneDevice5 = [(HPSDevice *)self headphoneDevice];
    [headphoneDevice5 batteryLevelCase];
    status->var6 = (v15 * 100.0);

    headphoneDevice6 = [(HPSDevice *)self headphoneDevice];
    [headphoneDevice6 batteryLevelLeft];
    status->var4 = (v17 * 100.0);

    headphoneDevice7 = [(HPSDevice *)self headphoneDevice];
    [headphoneDevice7 batteryLevelRight];
    status->var2 = (v19 * 100.0);

    headphoneDevice8 = [(HPSDevice *)self headphoneDevice];
    [headphoneDevice8 batteryLevelMain];
    status->var0 = (v21 * 100.0);

    status->var7 = batteryStateCase == 1;
    status->var5 = headphoneDevice == 1;
    status->var3 = headphoneDevice2 == 1;
    status->var1 = headphoneDevice3 == 1;
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n battIsChagingCase: %i \nbattIsChargingLeft: %i \nbattIsChargingRight: %i \nbattIsChargingSingle: %i \nbattLevelCase: %i \nbattLevelLeft: %i \nbattLevelRight: %i \nbattLevelSingle: %i \n", batteryStateCase == 1, headphoneDevice == 1, headphoneDevice2 == 1, headphoneDevice3 == 1, status->var6, status->var4, status->var2, status->var0];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[batteryStatus:]" btsDeviceValue:v9 headphoneDeviceValue:v22];

    LOBYTE(batteryStateCase) = 1;
  }

  else
  {
    v23 = sharedBluetoothSettingsLogComponent(v8);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      *buf = 138412802;
      v29 = address;
      v30 = 2112;
      v31 = v9;
      v32 = 1024;
      v33 = batteryStateCase;
      _os_log_impl(&dword_251143000, v23, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [batteryStatus:] [BTDevice-Only] btDevice: %@, values:%@, returnValue:%i", buf, 0x1Cu);
    }
  }

  return batteryStateCase;
}

- (unsigned)clickHoldMode:(int *)mode rightAction:(int *)action
{
  v40 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  v9 = [classicDevice clickHoldMode:mode rightAction:action];

  v10 = MEMORY[0x277CCACA8];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*mode];
  stringValue = [v11 stringValue];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*action];
  stringValue2 = [v13 stringValue];
  v15 = [v10 stringWithFormat:@"%@-%@", stringValue, stringValue2];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    *mode = [headphoneDevice clickHoldModeLeft];

    headphoneDevice2 = [(HPSDevice *)self headphoneDevice];
    *action = [headphoneDevice2 clickHoldModeRight];

    v19 = MEMORY[0x277CCACA8];
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*mode];
    stringValue3 = [v20 stringValue];
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*action];
    stringValue4 = [v22 stringValue];
    v24 = [v19 stringWithFormat:@"%@-%@", stringValue3, stringValue4];

    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[clickHoldMode:rightAction:]" btsDeviceValue:v15 headphoneDeviceValue:v24];
    v9 = 1;
  }

  else
  {
    v25 = sharedBluetoothSettingsLogComponent(v16);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v29 = *mode;
      v30 = *action;
      *buf = 138413058;
      v33 = address;
      v34 = 1024;
      v35 = v29;
      v36 = 1024;
      v37 = v30;
      v38 = 1024;
      v39 = v9;
      _os_log_impl(&dword_251143000, v25, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [clickHoldMode:rightAction:] [BTDevice-Only] btDevice: %@, leftMode:%i, rightMode:%i, returnValue:%i", buf, 0x1Eu);
    }
  }

  return v9;
}

- (int)crownRotationDirection
{
  v23 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  crownRotationDirection = [classicDevice crownRotationDirection];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    crownRotationDirection2 = [headphoneDevice crownRotationDirection];

    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:crownRotationDirection];
    stringValue = [v9 stringValue];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:crownRotationDirection2];
    stringValue2 = [v11 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[crownRotationDirection]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    if (crownRotationDirection2 == 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (crownRotationDirection2)
    {
      LODWORD(crownRotationDirection) = v13;
    }

    else
    {
      LODWORD(crownRotationDirection) = 0;
    }
  }

  else
  {
    v14 = sharedBluetoothSettingsLogComponent(v6);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v19 = 138412546;
      v20 = address;
      v21 = 1024;
      v22 = crownRotationDirection;
      _os_log_impl(&dword_251143000, v14, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [crownRotationDirection] [BTDevice-Only] btDevice: %@,  returnValue:%i", &v19, 0x12u);
    }
  }

  return crownRotationDirection;
}

- (unsigned)doubleTapAction
{
  v22 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  doubleTapAction = [classicDevice doubleTapAction];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    doubleTapActionLeft = [headphoneDevice doubleTapActionLeft];
    if ((doubleTapActionLeft - 1) >= 5)
    {
      v9 = 0xFFFFLL;
    }

    else
    {
      v9 = (doubleTapActionLeft - 1);
    }

    doubleTapAction = [MEMORY[0x277CCABB0] numberWithUnsignedInt:doubleTapAction];
    stringValue = [doubleTapAction stringValue];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
    stringValue2 = [v11 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[doubleTapAction]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LODWORD(doubleTapAction) = v9;
  }

  else
  {
    v13 = sharedBluetoothSettingsLogComponent(v6);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v18 = 138412546;
      v19 = address;
      v20 = 1024;
      v21 = doubleTapAction;
      _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [doubleTapAction] [BTDevice-Only] btDevice: %@,  returnValue:%i", &v18, 0x12u);
    }
  }

  return doubleTapAction;
}

- (unsigned)doubleTapActionEx:(unsigned int *)ex rightAction:(unsigned int *)action
{
  v40 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  v9 = [classicDevice doubleTapActionEx:ex rightAction:action];

  if (self->_ffValue && self->_headphoneDevice)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*ex];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*action];
    v14 = [v11 stringWithFormat:@"%@-%@", v12, v13];

    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    doubleTapActionLeft = [headphoneDevice doubleTapActionLeft];
    if ((doubleTapActionLeft - 1) >= 5)
    {
      v17 = 0xFFFF;
    }

    else
    {
      v17 = (doubleTapActionLeft - 1);
    }

    *ex = v17;

    headphoneDevice2 = [(HPSDevice *)self headphoneDevice];
    doubleTapActionRight = [headphoneDevice2 doubleTapActionRight];
    if ((doubleTapActionRight - 1) >= 5)
    {
      v20 = 0xFFFF;
    }

    else
    {
      v20 = (doubleTapActionRight - 1);
    }

    *action = v20;

    v21 = MEMORY[0x277CCACA8];
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*ex];
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*action];
    v24 = [v21 stringWithFormat:@"%@-%@", v22, v23];

    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[doubleTapActionEx:rightAction:]" btsDeviceValue:v14 headphoneDeviceValue:v24];
    return 1;
  }

  else
  {
    v25 = sharedBluetoothSettingsLogComponent(v10);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v29 = *ex;
      v30 = *action;
      *buf = 138413058;
      v33 = address;
      v34 = 1024;
      v35 = v29;
      v36 = 1024;
      v37 = v30;
      v38 = 1024;
      v39 = v9;
      _os_log_impl(&dword_251143000, v25, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [doubleTapActionEx:rightAction:] [BTDevice-Only] btDevice: %@, inLeftAction:%i, inRightAction:%i,  returnValue:%i", buf, 0x1Eu);
    }
  }

  return v9;
}

- (unsigned)getAdaptiveVolumeMode
{
  v21 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  getAdaptiveVolumeMode = [classicDevice getAdaptiveVolumeMode];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    if ([headphoneDevice adaptiveVolume])
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    getAdaptiveVolumeMode = [MEMORY[0x277CCABB0] numberWithUnsignedChar:getAdaptiveVolumeMode];
    stringValue = [getAdaptiveVolumeMode stringValue];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v8];
    stringValue2 = [v10 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[getAdaptiveVolumeMode]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LOBYTE(getAdaptiveVolumeMode) = v8;
  }

  else
  {
    v12 = sharedBluetoothSettingsLogComponent(v6);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v17 = 138412546;
      v18 = address;
      v19 = 1024;
      v20 = getAdaptiveVolumeMode;
      _os_log_impl(&dword_251143000, v12, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [getAdaptiveVolumeMode] [BTDevice-Only] btDevice: %@, returnValue:%i", &v17, 0x12u);
    }
  }

  return getAdaptiveVolumeMode;
}

- (BOOL)getAdaptiveVolumeSupport
{
  v21 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  getAdaptiveVolumeSupport = [classicDevice getAdaptiveVolumeSupport];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    v8 = [headphoneDevice supportsFeatureWithFeature:20];

    getAdaptiveVolumeSupport = [MEMORY[0x277CCABB0] numberWithBool:getAdaptiveVolumeSupport];
    stringValue = [getAdaptiveVolumeSupport stringValue];
    v10 = [MEMORY[0x277CCABB0] numberWithBool:v8];
    stringValue2 = [v10 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[getAdaptiveVolumeSupport]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LOBYTE(getAdaptiveVolumeSupport) = v8;
  }

  else
  {
    v12 = sharedBluetoothSettingsLogComponent(v6);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v17 = 138412546;
      v18 = address;
      v19 = 1024;
      v20 = getAdaptiveVolumeSupport;
      _os_log_impl(&dword_251143000, v12, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [getAdaptiveVolumeSupport] [BTDevice-Only] btDevice: %@, returnValue:%i", &v17, 0x12u);
    }
  }

  return getAdaptiveVolumeSupport;
}

- (BOOL)getAutoANCSupport
{
  v22 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  getAutoANCSupport = [classicDevice getAutoANCSupport];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    cbDevice = [headphoneDevice cbDevice];
    autoAncCapability = [cbDevice autoAncCapability];

    getAutoANCSupport = [MEMORY[0x277CCABB0] numberWithBool:getAutoANCSupport];
    stringValue = [getAutoANCSupport stringValue];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:autoAncCapability];
    stringValue2 = [v11 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[getAutoANCSupport]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LOBYTE(getAutoANCSupport) = autoAncCapability != 0;
  }

  else
  {
    v13 = sharedBluetoothSettingsLogComponent(v6);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v18 = 138412546;
      v19 = address;
      v20 = 1024;
      v21 = getAutoANCSupport;
      _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [getAutoANCSupport] [BTDevice-Only] btDevice: %@, returnValue:%i", &v18, 0x12u);
    }
  }

  return getAutoANCSupport;
}

- (BOOL)getConversationDetectSupport
{
  v21 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  getConversationDetectSupport = [classicDevice getConversationDetectSupport];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    v8 = [headphoneDevice supportsFeatureWithFeature:19];

    getConversationDetectSupport = [MEMORY[0x277CCABB0] numberWithBool:getConversationDetectSupport];
    stringValue = [getConversationDetectSupport stringValue];
    v10 = [MEMORY[0x277CCABB0] numberWithBool:v8];
    stringValue2 = [v10 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[getConversationDetectSupport]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LOBYTE(getConversationDetectSupport) = v8;
  }

  else
  {
    v12 = sharedBluetoothSettingsLogComponent(v6);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v17 = 138412546;
      v18 = address;
      v19 = 1024;
      v20 = getConversationDetectSupport;
      _os_log_impl(&dword_251143000, v12, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [getConversationDetectSupport] [BTDevice-Only] btDevice: %@, returnValue:%i", &v17, 0x12u);
    }
  }

  return getConversationDetectSupport;
}

- (unsigned)getDeviceAdaptiveVolumeMode
{
  v22 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  getDeviceAdaptiveVolumeMode = [classicDevice getDeviceAdaptiveVolumeMode];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    cbDevice = [headphoneDevice cbDevice];
    adaptiveVolumeConfig = [cbDevice adaptiveVolumeConfig];

    getDeviceAdaptiveVolumeMode = [MEMORY[0x277CCABB0] numberWithUnsignedChar:getDeviceAdaptiveVolumeMode];
    stringValue = [getDeviceAdaptiveVolumeMode stringValue];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:adaptiveVolumeConfig];
    stringValue2 = [v11 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[getDeviceAdaptiveVolumeMode]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LOBYTE(getDeviceAdaptiveVolumeMode) = adaptiveVolumeConfig;
  }

  else
  {
    v13 = sharedBluetoothSettingsLogComponent(v6);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v18 = 138412546;
      v19 = address;
      v20 = 1024;
      v21 = getDeviceAdaptiveVolumeMode;
      _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [getDeviceAdaptiveVolumeMode] [BTDevice-Only] btDevice: %@, returnValue:%i", &v18, 0x12u);
    }
  }

  return getDeviceAdaptiveVolumeMode;
}

- (BOOL)getHexDeviceAddress:(id *)address
{
  v43 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  v7 = [classicDevice getHexDeviceAddress:address];

  v8 = [MEMORY[0x277CBEA90] dataWithBytes:address length:6];
  v9 = v8;
  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    cbDevice = [headphoneDevice cbDevice];
    btAddressData = [cbDevice btAddressData];

    address->var0[0] = *[btAddressData bytes];
    address->var0[1] = *([btAddressData bytes] + 1);
    address->var0[2] = *([btAddressData bytes] + 2);
    address->var0[3] = *([btAddressData bytes] + 3);
    address->var0[4] = *([btAddressData bytes] + 4);
    address->var0[5] = *([btAddressData bytes] + 5);
    v13 = [v9 description];
    v14 = [btAddressData description];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[getHexDeviceAddress:]" btsDeviceValue:v13 headphoneDeviceValue:v14];

    v15 = 1;
  }

  else
  {
    v16 = sharedBluetoothSettingsLogComponent(v8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v20 = address->var0[0];
      v21 = address->var0[1];
      v22 = address->var0[2];
      v23 = address->var0[3];
      v24 = address->var0[4];
      v25 = address->var0[5];
      v27 = 138414082;
      v28 = address;
      v29 = 1024;
      v30 = v20;
      v31 = 1024;
      v32 = v21;
      v33 = 1024;
      v34 = v22;
      v35 = 1024;
      v36 = v23;
      v37 = 1024;
      v38 = v24;
      v39 = 1024;
      v40 = v25;
      v41 = 1024;
      v42 = v7;
      _os_log_impl(&dword_251143000, v16, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [getHexDeviceAddress:] [BTDevice-Only] btDevice: %@, inAddress:0x%02X%02X%02X%02X%02X%02X, returnValue:%i", &v27, 0x36u);
    }

    v15 = v7 == 0;
  }

  return v15;
}

- (BOOL)inEarDetectEnabled
{
  v22 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  inEarDetectEnabled = [classicDevice inEarDetectEnabled];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    cbDevice = [headphoneDevice cbDevice];
    v9 = [cbDevice placementMode] == 1;

    inEarDetectEnabled = [MEMORY[0x277CCABB0] numberWithBool:inEarDetectEnabled];
    stringValue = [inEarDetectEnabled stringValue];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:v9];
    stringValue2 = [v11 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[inEarDetectEnabled]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LOBYTE(inEarDetectEnabled) = v9;
  }

  else
  {
    v13 = sharedBluetoothSettingsLogComponent(v6);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v18 = 138412546;
      v19 = address;
      v20 = 1024;
      v21 = inEarDetectEnabled;
      _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [inEarDetectEnabled] [BTDevice-Only] btDevice: %@, returnValue:%i", &v18, 0x12u);
    }
  }

  return inEarDetectEnabled;
}

- (BOOL)inEarStatusPrimary:(int *)primary secondary:(int *)secondary
{
  v39 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  LODWORD(v9) = [classicDevice inEarStatusPrimary:primary secondary:secondary];

  v10 = MEMORY[0x277CCACA8];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*primary];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*secondary];
  v13 = [v10 stringWithFormat:@"%@-%@", v11, v12];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    cbDevice = [headphoneDevice cbDevice];
    primaryPlacement = [cbDevice primaryPlacement];
    *primary = __42__HPSDevice_inEarStatusPrimary_secondary___block_invoke(primaryPlacement, primaryPlacement);

    headphoneDevice2 = [(HPSDevice *)self headphoneDevice];
    cbDevice2 = [headphoneDevice2 cbDevice];
    secondaryPlacement = [cbDevice2 secondaryPlacement];
    *secondary = __42__HPSDevice_inEarStatusPrimary_secondary___block_invoke(secondaryPlacement, secondaryPlacement);

    v21 = MEMORY[0x277CCACA8];
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*primary];
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*secondary];
    v9 = [v21 stringWithFormat:@"%@-%@", v22, v23];

    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[inEarStatusPrimary:secondary:]" btsDeviceValue:v13 headphoneDeviceValue:v9];
    LOBYTE(v9) = 1;
  }

  else
  {
    v24 = sharedBluetoothSettingsLogComponent(v14);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v28 = *primary;
      v29 = *secondary;
      *buf = 138413058;
      v32 = address;
      v33 = 1024;
      v34 = v28;
      v35 = 1024;
      v36 = v29;
      v37 = 1024;
      v38 = v9;
      _os_log_impl(&dword_251143000, v24, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [inEarStatusPrimary:secondary:] [BTDevice-Only] btDevice: %@, inPrimary:%i, inSecondary:%i, returnValue:%i", buf, 0x1Eu);
    }
  }

  return v9;
}

uint64_t __42__HPSDevice_inEarStatusPrimary_secondary___block_invoke(uint64_t a1, int a2)
{
  if ((a2 - 1) > 6)
  {
    return 3;
  }

  else
  {
    return dword_251217CE0[a2 - 1];
  }
}

- (BOOL)isAppleAudioDevice
{
  v23 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  isAppleAudioDevice = [classicDevice isAppleAudioDevice];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    cbDevice = [headphoneDevice cbDevice];
    productID = [cbDevice productID];
    v10 = ((productID - 8194) < 0x2E) & (0x207C7BB7FF9BuLL >> (productID - 2));

    isAppleAudioDevice = [MEMORY[0x277CCABB0] numberWithBool:isAppleAudioDevice];
    stringValue = [isAppleAudioDevice stringValue];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:v10];
    stringValue2 = [v12 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[isAppleAudioDevice]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LOBYTE(isAppleAudioDevice) = v10;
  }

  else
  {
    v14 = sharedBluetoothSettingsLogComponent(v6);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v19 = 138412546;
      v20 = address;
      v21 = 1024;
      v22 = isAppleAudioDevice;
      _os_log_impl(&dword_251143000, v14, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [isAppleAudioDevice] [BTDevice-Only] btDevice: %@, returnValue:%i", &v19, 0x12u);
    }
  }

  return isAppleAudioDevice;
}

- (BOOL)isGenuineAirPods
{
  v22 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  isGenuineAirPods = [classicDevice isGenuineAirPods];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    cbDevice = [headphoneDevice cbDevice];
    v9 = ([cbDevice gapaFlags] & 2) == 0;

    isGenuineAirPods = [MEMORY[0x277CCABB0] numberWithBool:isGenuineAirPods];
    stringValue = [isGenuineAirPods stringValue];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:v9];
    stringValue2 = [v11 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[isGenuineAirPods]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LOBYTE(isGenuineAirPods) = v9;
  }

  else
  {
    v13 = sharedBluetoothSettingsLogComponent(v6);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v18 = 138412546;
      v19 = address;
      v20 = 1024;
      v21 = isGenuineAirPods;
      _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [isGenuineAirPods] [BTDevice-Only] btDevice: %@, returnValue:%i", &v18, 0x12u);
    }
  }

  return isGenuineAirPods;
}

- (unsigned)listeningModeConfigs
{
  v21 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  listeningModeConfigs = [classicDevice listeningModeConfigs];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    listeningModeConfigs2 = [headphoneDevice listeningModeConfigs];

    listeningModeConfigs = [MEMORY[0x277CCABB0] numberWithUnsignedInt:listeningModeConfigs];
    stringValue = [listeningModeConfigs stringValue];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:listeningModeConfigs2];
    stringValue2 = [v10 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[listeningModeConfigs]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LODWORD(listeningModeConfigs) = listeningModeConfigs2;
  }

  else
  {
    v12 = sharedBluetoothSettingsLogComponent(v6);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v17 = 138412546;
      v18 = address;
      v19 = 1024;
      v20 = listeningModeConfigs;
      _os_log_impl(&dword_251143000, v12, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [listeningModeConfigs] [BTDevice-Only] btDevice: %@, returnValue:%i", &v17, 0x12u);
    }
  }

  return listeningModeConfigs;
}

- (unsigned)micMode
{
  v22 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  micMode = [classicDevice micMode];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    microphoneMode = [headphoneDevice microphoneMode];
    if (microphoneMode == 3)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2 * (microphoneMode == 2);
    }

    micMode = [MEMORY[0x277CCABB0] numberWithUnsignedInt:micMode];
    stringValue = [micMode stringValue];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
    stringValue2 = [v11 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[micMode]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LODWORD(micMode) = v9;
  }

  else
  {
    v13 = sharedBluetoothSettingsLogComponent(v6);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v18 = 138412546;
      v19 = address;
      v20 = 1024;
      v21 = micMode;
      _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [micMode] [BTDevice-Only] btDevice: %@, returnValue:%i", &v18, 0x12u);
    }
  }

  return micMode;
}

- (unsigned)productId
{
  v22 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  productId = [classicDevice productId];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    productInfo = [headphoneDevice productInfo];
    productID = [productInfo productID];

    productId = [MEMORY[0x277CCABB0] numberWithUnsignedInt:productId];
    stringValue = [productId stringValue];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:productID];
    stringValue2 = [v11 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[productId]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LODWORD(productId) = productID;
  }

  else
  {
    v13 = sharedBluetoothSettingsLogComponent(v6);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v18 = 138412546;
      v19 = address;
      v20 = 1024;
      v21 = productId;
      _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [productId] [BTDevice-Only] btDevice: %@, returnValue:%i", &v18, 0x12u);
    }
  }

  return productId;
}

- (void)setAdaptiveVolumeMode:(int)mode
{
  v3 = *&mode;
  v26 = *MEMORY[0x277D85DE8];
  if (self->_ffValue && self->_headphoneDevice)
  {
    btsDevice = [(HPSDevice *)self btsDevice];
    classicDevice = [btsDevice classicDevice];
    getAdaptiveVolumeMode = [classicDevice getAdaptiveVolumeMode];

    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    [headphoneDevice setAdaptiveVolume:v3 == 1];

    headphoneDevice2 = [(HPSDevice *)self headphoneDevice];
    [headphoneDevice2 updateFeatureValuesWithFeature:20];

    v10 = dispatch_time(0, 5000000000);
    v11 = dispatch_get_global_queue(0, 0);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __35__HPSDevice_setAdaptiveVolumeMode___block_invoke;
    v19[3] = &unk_2796AE390;
    v19[4] = self;
    v20 = v3;
    v21 = getAdaptiveVolumeMode;
    dispatch_after(v10, v11, v19);
  }

  else
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice2 = [btsDevice2 classicDevice];
    [classicDevice2 setAdaptiveVolumeMode:v3];

    v15 = sharedBluetoothSettingsLogComponent(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice3 = [(HPSDevice *)self btsDevice];
      classicDevice3 = [btsDevice3 classicDevice];
      address = [classicDevice3 address];
      *buf = 138412546;
      v23 = address;
      v24 = 1024;
      v25 = v3;
      _os_log_impl(&dword_251143000, v15, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [setAdaptiveVolumeMode:] [BTDevice-Only] btDevice: %@, inputAdaptiveVolumeMode:%i", buf, 0x12u);
    }
  }
}

void __35__HPSDevice_setAdaptiveVolumeMode___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 40)];
  v3 = [v11 stringValue];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(a1 + 44)];
  v5 = [v4 stringValue];
  v6 = MEMORY[0x277CCABB0];
  v7 = [*(a1 + 32) btsDevice];
  v8 = [v7 classicDevice];
  v9 = [v6 numberWithUnsignedChar:{objc_msgSend(v8, "getAdaptiveVolumeMode")}];
  v10 = [v9 stringValue];
  [v2 _logSetterExpectationFormatStringForUsecase:@"[setAdaptiveVolumeMode:]" inputValue:v3 existingValue:v5 readBackValue:v10];
}

- (BOOL)setClickHoldMode:(int)mode rightMode:(int)rightMode
{
  v4 = *&rightMode;
  v5 = *&mode;
  v46 = *MEMORY[0x277D85DE8];
  if (self->_ffValue && self->_headphoneDevice)
  {
    v37 = 0;
    *buf = 0;
    [(HPSDevice *)self clickHoldMode:buf rightAction:&v37];
    v7 = MEMORY[0x277CCACA8];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*buf];
    stringValue = [v8 stringValue];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v37];
    stringValue2 = [v10 stringValue];
    v12 = [v7 stringWithFormat:@"%@-%@", stringValue, stringValue2];

    v13 = MEMORY[0x277CCACA8];
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5];
    stringValue3 = [v14 stringValue];
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
    stringValue4 = [v16 stringValue];
    v18 = [v13 stringWithFormat:@"%@-%@", stringValue3, stringValue4];

    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    [headphoneDevice setClickHoldModeLeft:v5];

    headphoneDevice2 = [(HPSDevice *)self headphoneDevice];
    [headphoneDevice2 setClickHoldModeRight:v4];

    headphoneDevice3 = [(HPSDevice *)self headphoneDevice];
    [headphoneDevice3 updateFeatureValuesWithFeature:2];

    v22 = dispatch_time(0, 5000000000);
    v23 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__HPSDevice_setClickHoldMode_rightMode___block_invoke;
    block[3] = &unk_2796ADE70;
    block[4] = self;
    v35 = v18;
    v36 = v12;
    v24 = v12;
    v25 = v18;
    dispatch_after(v22, v23, block);

    LOBYTE(v25) = 1;
  }

  else
  {
    btsDevice = [(HPSDevice *)self btsDevice];
    classicDevice = [btsDevice classicDevice];
    LODWORD(v25) = [classicDevice setClickHoldMode:v5 rightMode:v4];

    v29 = sharedBluetoothSettingsLogComponent(v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      *buf = 138413058;
      v39 = address;
      v40 = 1024;
      v41 = v5;
      v42 = 1024;
      v43 = v4;
      v44 = 1024;
      v45 = v25;
      _os_log_impl(&dword_251143000, v29, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [setClickHoldMode:rightMode:] [BTDevice-Only] btDevice: %@, inputLeftMode:%i, inputRightMode:%i, returnValue:%i", buf, 0x1Eu);
    }
  }

  return v25;
}

void __40__HPSDevice_setClickHoldMode_rightMode___block_invoke(uint64_t a1)
{
  v8 = 0;
  [*(a1 + 32) clickHoldMode:&v8 + 4 rightAction:&v8];
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v8)];
  v4 = [v3 stringValue];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
  v6 = [v5 stringValue];
  v7 = [v2 stringWithFormat:@"%@-%@", v4, v6];

  [*(a1 + 32) _logSetterExpectationFormatStringForUsecase:@"[setClickHoldMode:rightMode:]" inputValue:*(a1 + 40) existingValue:*(a1 + 48) readBackValue:v7];
}

- (void)setConversationDetectMode:(int)mode
{
  v3 = *&mode;
  v24 = *MEMORY[0x277D85DE8];
  if (self->_ffValue && self->_headphoneDevice)
  {
    modeCopy = mode;
    btsDevice = [(HPSDevice *)self btsDevice];
    classicDevice = [btsDevice classicDevice];
    getConversationDetectMode = [classicDevice getConversationDetectMode];

    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    [headphoneDevice setConversationDetect:v3 == 1];

    headphoneDevice2 = [(HPSDevice *)self headphoneDevice];
    [headphoneDevice2 updateFeatureValuesWithFeature:19];

    v11 = dispatch_time(0, 5000000000);
    v12 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__HPSDevice_setConversationDetectMode___block_invoke;
    block[3] = &unk_2796ADE98;
    block[4] = self;
    block[5] = modeCopy;
    block[6] = getConversationDetectMode;
    dispatch_after(v11, v12, block);
  }

  else
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice2 = [btsDevice2 classicDevice];
    [classicDevice2 setConversationDetectMode:v3];

    v12 = sharedBluetoothSettingsLogComponent(v15);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice3 = [(HPSDevice *)self btsDevice];
      classicDevice3 = [btsDevice3 classicDevice];
      address = [classicDevice3 address];
      *buf = 138412546;
      v21 = address;
      v22 = 1024;
      v23 = v3;
      _os_log_impl(&dword_251143000, v12, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [setConversationDetectMode:] [BTDevice-Only] btDevice: %@, inputConversationDetectMode:%i", buf, 0x12u);
    }
  }
}

void __39__HPSDevice_setConversationDetectMode___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 40)];
  v3 = [v11 stringValue];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 48)];
  v5 = [v4 stringValue];
  v6 = MEMORY[0x277CCABB0];
  v7 = [*(a1 + 32) btsDevice];
  v8 = [v7 classicDevice];
  v9 = [v6 numberWithUnsignedChar:{objc_msgSend(v8, "getConversationDetectMode")}];
  v10 = [v9 stringValue];
  [v2 _logSetterExpectationFormatStringForUsecase:@"[setConversationDetectMode:]" inputValue:v3 existingValue:v5 readBackValue:v10];
}

- (BOOL)setCrownRotationDirection:(int)direction
{
  v3 = *&direction;
  v28 = *MEMORY[0x277D85DE8];
  if (self->_ffValue && self->_headphoneDevice)
  {
    directionCopy = direction;
    btsDevice = [(HPSDevice *)self btsDevice];
    classicDevice = [btsDevice classicDevice];
    crownRotationDirection = [classicDevice crownRotationDirection];

    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    [headphoneDevice setCrownRotationDirection:v3];

    headphoneDevice2 = [(HPSDevice *)self headphoneDevice];
    [headphoneDevice2 updateFeatureValuesWithFeature:4];

    v11 = dispatch_time(0, 5000000000);
    v12 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__HPSDevice_setCrownRotationDirection___block_invoke;
    block[3] = &unk_2796ADE98;
    block[4] = self;
    block[5] = directionCopy;
    block[6] = crownRotationDirection;
    dispatch_after(v11, v12, block);

    LOBYTE(v12) = 1;
  }

  else
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice2 = [btsDevice2 classicDevice];
    LODWORD(v12) = [classicDevice2 setCrownRotationDirection:v3];

    v16 = sharedBluetoothSettingsLogComponent(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice3 = [(HPSDevice *)self btsDevice];
      classicDevice3 = [btsDevice3 classicDevice];
      address = [classicDevice3 address];
      *buf = 138412802;
      v23 = address;
      v24 = 1024;
      v25 = v3;
      v26 = 1024;
      v27 = v12;
      _os_log_impl(&dword_251143000, v16, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [setCrownRotationDirection:] [BTDevice-Only] btDevice: %@, inputCrownDirection:%i, resultValue:%i", buf, 0x18u);
    }
  }

  return v12;
}

void __39__HPSDevice_setCrownRotationDirection___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 40)];
  v3 = [v11 stringValue];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 48)];
  v5 = [v4 stringValue];
  v6 = MEMORY[0x277CCABB0];
  v7 = [*(a1 + 32) btsDevice];
  v8 = [v7 classicDevice];
  v9 = [v6 numberWithUnsignedInt:{objc_msgSend(v8, "crownRotationDirection")}];
  v10 = [v9 stringValue];
  [v2 _logSetterExpectationFormatStringForUsecase:@"[setCrownRotationDirection:]" inputValue:v3 existingValue:v5 readBackValue:v10];
}

- (void)setDeviceSoundProfileAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  v28 = *MEMORY[0x277D85DE8];
  if (self->_ffValue && self->_headphoneDevice)
  {
    btsDevice = [(HPSDevice *)self btsDevice];
    classicDevice = [btsDevice classicDevice];
    getDeviceSoundProfileAllowed = [classicDevice getDeviceSoundProfileAllowed];

    v8 = objc_alloc_init(MEMORY[0x277CBE018]);
    v9 = v8;
    if (allowedCopy)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    [v8 setSpatialSoundProfileAllowed:v10];
    v11 = objc_alloc_init(MEMORY[0x277CBE010]);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __42__HPSDevice_setDeviceSoundProfileAllowed___block_invoke;
    v19[3] = &unk_2796AE3B8;
    v20 = v11;
    selfCopy = self;
    v22 = allowedCopy;
    v23 = getDeviceSoundProfileAllowed;
    v12 = v11;
    [v12 modifyControllerSettings:v9 completionHandler:v19];
  }

  else
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice2 = [btsDevice2 classicDevice];
    [classicDevice2 setDeviceSoundProfileAllowed:allowedCopy];

    v9 = sharedBluetoothSettingsLogComponent(v15);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice3 = [(HPSDevice *)self btsDevice];
      classicDevice3 = [btsDevice3 classicDevice];
      address = [classicDevice3 address];
      *buf = 138412546;
      v25 = address;
      v26 = 1024;
      v27 = allowedCopy;
      _os_log_impl(&dword_251143000, v9, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [setDeviceSoundProfileAllowed:] [BTDevice-Only] btDevice: %@, inputEnabled:%i,", buf, 0x12u);
    }
  }
}

void __42__HPSDevice_setDeviceSoundProfileAllowed___block_invoke(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(a1 + 40);
  v11 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
  v3 = [v11 stringValue];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 49)];
  v5 = [v4 stringValue];
  v6 = MEMORY[0x277CCABB0];
  v7 = [*(a1 + 40) btsDevice];
  v8 = [v7 classicDevice];
  v9 = [v6 numberWithInt:{objc_msgSend(v8, "getDeviceSoundProfileAllowed")}];
  v10 = [v9 stringValue];
  [v2 _logSetterExpectationFormatStringForUsecase:@"[setDeviceSoundProfileAllowed:]" inputValue:v3 existingValue:v5 readBackValue:v10];
}

- (BOOL)setDoubleTapAction:(unsigned int)action
{
  v3 = *&action;
  v31 = *MEMORY[0x277D85DE8];
  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    doubleTapActionRight = [headphoneDevice doubleTapActionRight];
    if ((doubleTapActionRight - 1) >= 5)
    {
      v7 = 0xFFFFLL;
    }

    else
    {
      v7 = (doubleTapActionRight - 1);
    }

    v8 = cbTapActionForBT(v3);
    headphoneDevice2 = [(HPSDevice *)self headphoneDevice];
    v10 = v8;
    [headphoneDevice2 setDoubleTapActionLeft:v10];

    headphoneDevice3 = [(HPSDevice *)self headphoneDevice];
    [headphoneDevice3 setDoubleTapActionRight:v10];

    headphoneDevice4 = [(HPSDevice *)self headphoneDevice];
    [headphoneDevice4 updateFeatureValuesWithFeature:3];

    v14 = dispatch_time(0, 5000000000);
    v13 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__HPSDevice_setDoubleTapAction___block_invoke;
    block[3] = &unk_2796AE3E0;
    v24 = v3;
    block[4] = self;
    block[5] = v7;
    dispatch_after(v14, v13, block);

    LOBYTE(v14) = 1;
  }

  else
  {
    btsDevice = [(HPSDevice *)self btsDevice];
    classicDevice = [btsDevice classicDevice];
    LODWORD(v14) = [classicDevice setDoubleTapAction:v3];

    v18 = sharedBluetoothSettingsLogComponent(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      *buf = 138412802;
      v26 = address;
      v27 = 1024;
      v28 = v3;
      v29 = 1024;
      v30 = v14;
      _os_log_impl(&dword_251143000, v18, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [setDoubleTapAction:] [BTDevice-Only] btDevice: %@, inputAction:%i, resultValue:%i", buf, 0x18u);
    }
  }

  return v14;
}

void __32__HPSDevice_setDoubleTapAction___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 48)];
  v3 = [v11 stringValue];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 40)];
  v5 = [v4 stringValue];
  v6 = MEMORY[0x277CCABB0];
  v7 = [*(a1 + 32) btsDevice];
  v8 = [v7 classicDevice];
  v9 = [v6 numberWithUnsignedInt:{objc_msgSend(v8, "doubleTapAction")}];
  v10 = [v9 stringValue];
  [v2 _logSetterExpectationFormatStringForUsecase:@"[setDoubleTapAction:]" inputValue:v3 existingValue:v5 readBackValue:v10];
}

- (BOOL)setDoubleTapActionEx:(unsigned int)ex rightAction:(unsigned int)action
{
  v4 = *&action;
  v5 = *&ex;
  v46 = *MEMORY[0x277D85DE8];
  if (self->_ffValue && self->_headphoneDevice)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*&ex];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
    v10 = [v7 stringWithFormat:@"%@-%@", v8, v9];

    v37 = 0;
    *buf = 0;
    btsDevice = [(HPSDevice *)self btsDevice];
    classicDevice = [btsDevice classicDevice];
    [classicDevice doubleTapActionEx:buf rightAction:&v37];

    v13 = MEMORY[0x277CCACA8];
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*buf];
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v37];
    v16 = [v13 stringWithFormat:@"%@-%@", v14, v15];

    v17 = cbTapActionForBT(v5);
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    [headphoneDevice setDoubleTapActionLeft:v17];

    v19 = cbTapActionForBT(v4);
    headphoneDevice2 = [(HPSDevice *)self headphoneDevice];
    [headphoneDevice2 setDoubleTapActionRight:v19];

    headphoneDevice3 = [(HPSDevice *)self headphoneDevice];
    [headphoneDevice3 updateFeatureValuesWithFeature:3];

    v22 = dispatch_time(0, 5000000000);
    v23 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__HPSDevice_setDoubleTapActionEx_rightAction___block_invoke;
    block[3] = &unk_2796ADE70;
    block[4] = self;
    v35 = v10;
    v36 = v16;
    v24 = v16;
    v25 = v10;
    dispatch_after(v22, v23, block);

    LOBYTE(v25) = 1;
  }

  else
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice2 = [btsDevice2 classicDevice];
    LODWORD(v25) = [classicDevice2 setDoubleTapActionEx:v5 rightAction:v4];

    v29 = sharedBluetoothSettingsLogComponent(v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice3 = [(HPSDevice *)self btsDevice];
      classicDevice3 = [btsDevice3 classicDevice];
      address = [classicDevice3 address];
      *buf = 138413058;
      v39 = address;
      v40 = 1024;
      v41 = v5;
      v42 = 1024;
      v43 = v4;
      v44 = 1024;
      v45 = v25;
      _os_log_impl(&dword_251143000, v29, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [setDoubleTapActionEx:rightAction:] [BTDevice-Only] btDevice: %@, inputLeftAction:%i, inputRightAction:%i, returnValue:%i", buf, 0x1Eu);
    }
  }

  return v25;
}

void __46__HPSDevice_setDoubleTapActionEx_rightAction___block_invoke(uint64_t a1)
{
  v8 = 0;
  v2 = [*(a1 + 32) btsDevice];
  v3 = [v2 classicDevice];
  [v3 doubleTapActionEx:&v8 + 4 rightAction:&v8];

  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v8)];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
  v7 = [v4 stringWithFormat:@"%@-%@", v5, v6];

  [*(a1 + 32) _logSetterExpectationFormatStringForUsecase:@"[setDoubleTapActionEx:rightAction:]" inputValue:*(a1 + 40) existingValue:*(a1 + 48) readBackValue:v7];
}

- (BOOL)setListeningModeConfigs:(unsigned int)configs
{
  v3 = *&configs;
  v29 = *MEMORY[0x277D85DE8];
  if (self->_ffValue && self->_headphoneDevice)
  {
    btsDevice = [(HPSDevice *)self btsDevice];
    classicDevice = [btsDevice classicDevice];
    listeningModeConfigs = [classicDevice listeningModeConfigs];

    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    [headphoneDevice setListeningModeConfigs:v3];

    v8 = objc_opt_new();
    [v8 setListeningModeConfigs:v3];
    v9 = objc_opt_new();
    headphoneDevice2 = [(HPSDevice *)self headphoneDevice];
    cbDevice = [headphoneDevice2 cbDevice];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __37__HPSDevice_setListeningModeConfigs___block_invoke;
    v20[3] = &unk_2796AE408;
    v20[4] = self;
    v21 = v3;
    v22 = listeningModeConfigs;
    [v9 modifyDevice:cbDevice settings:v8 completion:v20];

    LOBYTE(listeningModeConfigs) = 1;
  }

  else
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice2 = [btsDevice2 classicDevice];
    listeningModeConfigs = [classicDevice2 setListeningModeConfigs:v3];

    v8 = sharedBluetoothSettingsLogComponent(v15);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice3 = [(HPSDevice *)self btsDevice];
      classicDevice3 = [btsDevice3 classicDevice];
      address = [classicDevice3 address];
      *buf = 138412802;
      v24 = address;
      v25 = 1024;
      v26 = v3;
      v27 = 1024;
      v28 = listeningModeConfigs;
      _os_log_impl(&dword_251143000, v8, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [setListeningModeConfigs:] [BTDevice-Only] btDevice: %@, inputModeConfigs:%i, returnValue:%i", buf, 0x18u);
    }
  }

  return listeningModeConfigs;
}

void __37__HPSDevice_setListeningModeConfigs___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v7 = *(a1 + 32);
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 40)];
    v6 = [v5 stringValue];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 44)];
    v9 = [v8 stringValue];
    v10 = MEMORY[0x277CCABB0];
    v11 = [*(a1 + 32) btsDevice];
    v12 = [v11 classicDevice];
    v13 = [v10 numberWithUnsignedInt:{objc_msgSend(v12, "listeningModeConfigs")}];
    v14 = [v13 stringValue];
    [v7 _logSetterExpectationFormatStringForUsecase:@"[setListeningModeConfigs:]" inputValue:v6 existingValue:v9 readBackValue:v14];

    goto LABEL_5;
  }

  v5 = sharedBluetoothSettingsLogComponent(v3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 localizedDescription];
    v15 = 138412290;
    v16 = v6;
    _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: setListeningModeConfigs: unable to modify modeCofig %@", &v15, 0xCu);
LABEL_5:
  }
}

- (BOOL)setMicMode:(unsigned int)mode
{
  v3 = *&mode;
  v30 = *MEMORY[0x277D85DE8];
  if (self->_ffValue && self->_headphoneDevice)
  {
    micMode = [(HPSDevice *)self micMode];
    LOBYTE(v6) = 1;
    if (v3 == 2)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    if (v3 == 1)
    {
      v8 = 3;
    }

    else
    {
      v8 = v7;
    }

    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    [headphoneDevice setMicrophoneMode:v8];

    headphoneDevice2 = [(HPSDevice *)self headphoneDevice];
    [headphoneDevice2 updateFeatureValuesWithFeature:7];

    v11 = dispatch_time(0, 5000000000);
    v12 = dispatch_get_global_queue(0, 0);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __24__HPSDevice_setMicMode___block_invoke;
    v21[3] = &unk_2796AD640;
    v21[4] = self;
    v22 = v3;
    v23 = micMode;
    dispatch_after(v11, v12, v21);
  }

  else
  {
    btsDevice = [(HPSDevice *)self btsDevice];
    classicDevice = [btsDevice classicDevice];
    v6 = [classicDevice setMicMode:v3];

    v16 = sharedBluetoothSettingsLogComponent(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      *buf = 138412802;
      v25 = address;
      v26 = 1024;
      v27 = v3;
      v28 = 1024;
      v29 = v6;
      _os_log_impl(&dword_251143000, v16, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [setMicMode:] [BTDevice-Only] btDevice: %@, inputMode:%i, returnValue:%i", buf, 0x18u);
    }
  }

  return v6;
}

void __24__HPSDevice_setMicMode___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 40)];
  v3 = [v11 stringValue];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 44)];
  v5 = [v4 stringValue];
  v6 = MEMORY[0x277CCABB0];
  v7 = [*(a1 + 32) btsDevice];
  v8 = [v7 classicDevice];
  v9 = [v6 numberWithUnsignedInt:{objc_msgSend(v8, "micMode")}];
  v10 = [v9 stringValue];
  [v2 _logSetterExpectationFormatStringForUsecase:@"[setMicMode:]" inputValue:v3 existingValue:v5 readBackValue:v10];
}

- (BOOL)setSmartRouteMode:(unsigned __int8)mode
{
  modeCopy = mode;
  v28 = *MEMORY[0x277D85DE8];
  if (self->_ffValue && self->_headphoneDevice)
  {
    btsDevice = [(HPSDevice *)self btsDevice];
    classicDevice = [btsDevice classicDevice];
    smartRouteMode = [classicDevice smartRouteMode];

    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    [headphoneDevice setSmartRoutingMode:modeCopy];

    headphoneDevice2 = [(HPSDevice *)self headphoneDevice];
    [headphoneDevice2 updateFeatureValuesWithFeature:6];

    v11 = dispatch_time(0, 5000000000);
    v10 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __31__HPSDevice_setSmartRouteMode___block_invoke;
    block[3] = &unk_2796AE430;
    v21 = modeCopy;
    block[4] = self;
    block[5] = smartRouteMode;
    dispatch_after(v11, v10, block);

    LOBYTE(v11) = 1;
  }

  else
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice2 = [btsDevice2 classicDevice];
    LODWORD(v11) = [classicDevice2 setSmartRouteMode:modeCopy];

    v15 = sharedBluetoothSettingsLogComponent(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice3 = [(HPSDevice *)self btsDevice];
      classicDevice3 = [btsDevice3 classicDevice];
      address = [classicDevice3 address];
      *buf = 138412802;
      v23 = address;
      v24 = 1024;
      v25 = modeCopy;
      v26 = 1024;
      v27 = v11;
      _os_log_impl(&dword_251143000, v15, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [setSmartRouteMode:] [BTDevice-Only] btDevice: %@, inputSRMode:%i, returnValue:%i", buf, 0x18u);
    }
  }

  return v11;
}

void __31__HPSDevice_setSmartRouteMode___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(a1 + 48)];
  v3 = [v11 stringValue];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 40)];
  v5 = [v4 stringValue];
  v6 = MEMORY[0x277CCABB0];
  v7 = [*(a1 + 32) btsDevice];
  v8 = [v7 classicDevice];
  v9 = [v6 numberWithUnsignedChar:{objc_msgSend(v8, "smartRouteMode")}];
  v10 = [v9 stringValue];
  [v2 _logSetterExpectationFormatStringForUsecase:@"[setSmartRouteMode:]" inputValue:v3 existingValue:v5 readBackValue:v10];
}

- (unsigned)smartRouteMode
{
  v21 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  smartRouteMode = [classicDevice smartRouteMode];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    smartRoutingMode = [headphoneDevice smartRoutingMode];

    smartRouteMode = [MEMORY[0x277CCABB0] numberWithUnsignedChar:smartRouteMode];
    stringValue = [smartRouteMode stringValue];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:smartRoutingMode];
    stringValue2 = [v10 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[smartRouteMode]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LOBYTE(smartRouteMode) = smartRoutingMode;
  }

  else
  {
    v12 = sharedBluetoothSettingsLogComponent(v6);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v17 = 138412546;
      v18 = address;
      v19 = 1024;
      v20 = smartRouteMode;
      _os_log_impl(&dword_251143000, v12, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [smartRouteMode] [BTDevice-Only] btDevice: %@, returnValue:%i", &v17, 0x12u);
    }
  }

  return smartRouteMode;
}

- (BOOL)smartRouteSupport
{
  v21 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  smartRouteSupport = [classicDevice smartRouteSupport];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    v8 = [headphoneDevice supportsFeatureWithFeature:6];

    smartRouteSupport = [MEMORY[0x277CCABB0] numberWithBool:smartRouteSupport];
    stringValue = [smartRouteSupport stringValue];
    v10 = [MEMORY[0x277CCABB0] numberWithBool:v8];
    stringValue2 = [v10 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[smartRouteSupport]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LOBYTE(smartRouteSupport) = v8;
  }

  else
  {
    v12 = sharedBluetoothSettingsLogComponent(v6);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v17 = 138412546;
      v18 = address;
      v19 = 1024;
      v20 = smartRouteSupport;
      _os_log_impl(&dword_251143000, v12, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [smartRouteSupport] [BTDevice-Only] btDevice: %@, returnValue:%i", &v17, 0x12u);
    }
  }

  return smartRouteSupport;
}

- (unsigned)vendorId
{
  v23 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  vendorId = [classicDevice vendorId];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    cbDevice = [headphoneDevice cbDevice];
    vendorID = [cbDevice vendorID];

    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:vendorId];
    stringValue = [v10 stringValue];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:vendorID];
    stringValue2 = [v12 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[vendorId]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];
  }

  else
  {
    v14 = sharedBluetoothSettingsLogComponent(v6);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      LODWORD(vendorID) = vendorId;
      v19 = 138412546;
      v20 = address;
      v21 = 1024;
      v22 = vendorId;
      _os_log_impl(&dword_251143000, v14, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [vendorId] [BTDevice-Only] btDevice: %@, returnValue:%i", &v19, 0x12u);
    }

    else
    {
      LODWORD(vendorID) = vendorId;
    }
  }

  return vendorID;
}

- (BOOL)connected
{
  v25 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  connected = [classicDevice connected];

  if (self->_ffValue && self->_headphoneDevice)
  {
    mEMORY[0x277D0FC00] = [MEMORY[0x277D0FC00] shared];
    connectedHeadphones = [mEMORY[0x277D0FC00] connectedHeadphones];
    address = [(HPSDevice *)self address];
    v10 = [address stringByReplacingOccurrencesOfString:@":" withString:@"-"];
    v11 = [connectedHeadphones objectForKey:v10];
    v12 = v11 != 0;

    connected = [MEMORY[0x277CCABB0] numberWithBool:connected];
    stringValue = [connected stringValue];
    v14 = [MEMORY[0x277CCABB0] numberWithBool:v12];
    stringValue2 = [v14 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[connected]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LOBYTE(connected) = v12;
  }

  else
  {
    v16 = sharedBluetoothSettingsLogComponent(v6);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address2 = [classicDevice2 address];
      v21 = 138412546;
      v22 = address2;
      v23 = 1024;
      v24 = connected;
      _os_log_impl(&dword_251143000, v16, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [connected] [BTDevice-Only] btDevice: %@, returnValue:%i", &v21, 0x12u);
    }
  }

  return connected;
}

- (BOOL)featureCapability:(int)capability
{
  v3 = *&capability;
  v32 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  v7 = [classicDevice featureCapability:v3];

  if (self->_ffValue && self->_headphoneDevice)
  {
    switch(v3)
    {
      case 0x1C:
        headphoneDevice = [(HPSDevice *)self headphoneDevice];
        cbDevice = [headphoneDevice cbDevice];
        if ([cbDevice autoAncCapability] == 1)
        {
          v14 = 1;
        }

        else
        {
          headphoneDevice2 = [(HPSDevice *)self headphoneDevice];
          v14 = [headphoneDevice2 supportsFeatureWithFeature:1];
        }

        v15 = @"FEATURE_LISTENING_MODE_CYCLABLE";
        break;
      case 0x20:
        headphoneDevice = [(HPSDevice *)self headphoneDevice];
        v14 = [headphoneDevice supportsFeatureWithFeature:6];
        v15 = @"FEATURE_TIPI";
        break;
      case 0x1E:
        headphoneDevice3 = [(HPSDevice *)self headphoneDevice];
        productInfo = [headphoneDevice3 productInfo];
        flags = [productInfo flags];

        headphoneDevice = [(HPSDevice *)self headphoneDevice];
        v13 = [headphoneDevice supportsFeatureWithFeature:2];
        if ((flags & 8) != 0)
        {
          v14 = 0;
        }

        else
        {
          v14 = v13;
        }

        v15 = @"FEATURE_CLICK_HOLD";
        break;
      default:
        [HPSDevice featureCapability:];
    }

    v7 = [MEMORY[0x277CCABB0] numberWithBool:v7];
    stringValue = [v7 stringValue];
    v23 = [MEMORY[0x277CCABB0] numberWithBool:v14];
    stringValue2 = [v23 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[featureCapability:]" queryValue:v15 btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LOBYTE(v7) = v14;
  }

  else
  {
    v16 = sharedBluetoothSettingsLogComponent(v8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v26 = 138412802;
      v27 = address;
      v28 = 1024;
      v29 = v3;
      v30 = 1024;
      v31 = v7;
      _os_log_impl(&dword_251143000, v16, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [featureCapability:] [BTDevice-Only] btDevice: %@, inputFeaturet:%i, returnValue:%i", &v26, 0x18u);
    }
  }

  return v7;
}

- (id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  identifier = [btsDevice identifier];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    btAddress = [headphoneDevice btAddress];
    v8 = [btAddress stringByReplacingOccurrencesOfString:@"-" withString:@":"];

    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[identifier]" btsDeviceValue:identifier headphoneDeviceValue:v8];
  }

  else
  {
    v9 = sharedBluetoothSettingsLogComponent(v5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice = [btsDevice2 classicDevice];
      address = [classicDevice address];
      v14 = 138412546;
      v15 = address;
      v16 = 2112;
      v17 = identifier;
      _os_log_impl(&dword_251143000, v9, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [identifier] [BTDevice-Only] btDevice: %@, returnValue:%@", &v14, 0x16u);
    }

    v8 = identifier;
  }

  return v8;
}

- (unsigned)listeningMode
{
  v21 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  listeningMode = [classicDevice listeningMode];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    listeningMode2 = [headphoneDevice listeningMode];

    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:listeningMode];
    stringValue = [v9 stringValue];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:listeningMode2];
    stringValue2 = [v11 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[listeningMode]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];
  }

  else
  {
    v9 = sharedBluetoothSettingsLogComponent(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      LODWORD(listeningMode2) = listeningMode;
      v17 = 138412546;
      v18 = address;
      v19 = 1024;
      v20 = listeningMode;
      _os_log_impl(&dword_251143000, v9, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [listeningMode] [BTDevice-Only] btDevice: %@, returnValue:%i", &v17, 0x12u);
    }

    else
    {
      LODWORD(listeningMode2) = listeningMode;
    }
  }

  return listeningMode2;
}

- (id)name
{
  v17 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  name = [btsDevice name];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    name2 = [headphoneDevice name];

    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[name]" btsDeviceValue:name headphoneDeviceValue:name2];
  }

  else
  {
    v8 = sharedBluetoothSettingsLogComponent(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice = [btsDevice2 classicDevice];
      address = [classicDevice address];
      v13 = 138412546;
      v14 = address;
      v15 = 2112;
      v16 = name;
      _os_log_impl(&dword_251143000, v8, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [name] [BTDevice-Only] btDevice: %@, returnValue:%@", &v13, 0x16u);
    }

    name2 = name;
  }

  return name2;
}

- (BOOL)setListeningMode:(unsigned int)mode
{
  v3 = *&mode;
  v40 = *MEMORY[0x277D85DE8];
  if (self->_ffValue && self->_headphoneDevice)
  {
    btsDevice = [(HPSDevice *)self btsDevice];
    classicDevice = [btsDevice classicDevice];
    listeningMode = [classicDevice listeningMode];

    v8 = dispatch_group_create();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v39 = 0;
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 1;
    dispatch_group_enter(v8);
    v9 = objc_opt_new();
    [v9 setListeningMode:v3];
    v10 = objc_opt_new();
    v11 = dispatch_get_global_queue(0, 0);
    [v10 setDispatchQueue:v11];

    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    [headphoneDevice setIsUpdatingDeviceConfig:1];

    headphoneDevice2 = [(HPSDevice *)self headphoneDevice];
    [headphoneDevice2 setListeningMode:v3];

    headphoneDevice3 = [(HPSDevice *)self headphoneDevice];
    cbDevice = [headphoneDevice3 cbDevice];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __30__HPSDevice_setListeningMode___block_invoke;
    v28[3] = &unk_2796AE458;
    v28[4] = self;
    v30 = buf;
    v33 = v3;
    v31 = &v34;
    v32 = listeningMode;
    v16 = v8;
    v29 = v16;
    [v10 modifyDevice:cbDevice settings:v9 completion:v28];

    v17 = dispatch_time(0, 100000000);
    v18 = dispatch_group_wait(v16, v17);
    if (*(v35 + 24) == 1)
    {
      v19 = sharedBluetoothSettingsLogComponent(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [HPSDevice setListeningMode:v19];
      }
    }

    LOBYTE(v20) = *(*&buf[8] + 24);

    _Block_object_dispose(&v34, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice2 = [btsDevice2 classicDevice];
    v20 = [classicDevice2 setListeningMode:v3];

    v16 = sharedBluetoothSettingsLogComponent(v23);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice3 = [(HPSDevice *)self btsDevice];
      classicDevice3 = [btsDevice3 classicDevice];
      address = [classicDevice3 address];
      *buf = 138412802;
      *&buf[4] = address;
      *&buf[12] = 1024;
      *&buf[14] = v3;
      *&buf[18] = 1024;
      *&buf[20] = v20;
      _os_log_impl(&dword_251143000, v16, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [setListeningMode:] [BTDevice-Only] btDevice: %@, inputMode:%i, returnValue:%i", buf, 0x18u);
    }
  }

  return v20 & 1;
}

void __30__HPSDevice_setListeningMode___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 64);
    v5 = [*(a1 + 32) headphoneDevice];
    [v5 setListeningMode:v4];

    v7 = sharedBluetoothSettingsLogComponent(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v3 localizedDescription];
      *buf = 138412290;
      v16 = v8;
      _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [setListeningMode]: unable to modify mode %@", buf, 0xCu);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v9 = dispatch_time(0, 1000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __30__HPSDevice_setListeningMode___block_invoke_154;
    block[3] = &unk_2796AE3E0;
    v10 = *(a1 + 32);
    v14 = *(a1 + 72);
    v11 = *(a1 + 64);
    block[4] = v10;
    block[5] = v11;
    dispatch_after(v9, MEMORY[0x277D85CD0], block);
  }

  v12 = [*(a1 + 32) headphoneDevice];
  [v12 setIsUpdatingDeviceConfig:0];

  *(*(*(a1 + 56) + 8) + 24) = 0;
  dispatch_group_leave(*(a1 + 40));
}

void __30__HPSDevice_setListeningMode___block_invoke_154(uint64_t a1)
{
  v2 = *(a1 + 32);
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 48)];
  v3 = [v11 stringValue];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 40)];
  v5 = [v4 stringValue];
  v6 = MEMORY[0x277CCABB0];
  v7 = [*(a1 + 32) headphoneDevice];
  v8 = [v7 cbDevice];
  v9 = [v6 numberWithInt:{objc_msgSend(v8, "listeningMode")}];
  v10 = [v9 stringValue];
  [v2 _logSetterExpectationFormatStringForUsecase:@"setListeningMode:" inputValue:v3 existingValue:v5 readBackValue:v10];
}

- (void)disconnect
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_ffValue && self->_headphoneDevice)
  {
    btsDevice = [(HPSDevice *)self btsDevice];
    classicDevice = [btsDevice classicDevice];
    connected = [classicDevice connected];

    v6 = objc_opt_new();
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    cbDevice = [headphoneDevice cbDevice];
    [v6 setPeerDevice:cbDevice];

    [v6 setServiceFlags:0xFFFFFFFFLL];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __23__HPSDevice_disconnect__block_invoke;
    v12[3] = &unk_2796AE408;
    v12[4] = self;
    v12[5] = connected;
    [v6 disconnectWithCompletion:v12];
  }

  else
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    [btsDevice2 disconnect];

    v6 = sharedBluetoothSettingsLogComponent(v10);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice3 = [(HPSDevice *)self btsDevice];
      *buf = 138412290;
      v14 = btsDevice3;
      _os_log_impl(&dword_251143000, v6, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [disconnect] [BTDevice-Only] btDevice: %@", buf, 0xCu);
    }
  }
}

void __23__HPSDevice_disconnect__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = sharedBluetoothSettingsLogComponent(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __23__HPSDevice_disconnect__block_invoke_cold_1(v4);
    }
  }

  else
  {
    v6 = *(a1 + 32);
    v5 = [&unk_28634DC30 stringValue];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 40)];
    v8 = [v7 stringValue];
    v9 = MEMORY[0x277CCABB0];
    v10 = [*(a1 + 32) btsDevice];
    v11 = [v10 classicDevice];
    v12 = [v9 numberWithBool:{objc_msgSend(v11, "connected")}];
    v13 = [v12 stringValue];
    [v6 _logSetterExpectationFormatStringForUsecase:@"[setListeningMode:]" inputValue:v5 existingValue:v8 readBackValue:v13];
  }
}

- (BOOL)paired
{
  v24 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  paired = [btsDevice paired];

  if (self->_ffValue && self->_headphoneDevice)
  {
    mEMORY[0x277D0FC00] = [MEMORY[0x277D0FC00] shared];
    connectedHeadphones = [mEMORY[0x277D0FC00] connectedHeadphones];
    address = [(HPSDevice *)self address];
    v9 = [address stringByReplacingOccurrencesOfString:@":" withString:@"-"];
    v10 = [connectedHeadphones objectForKey:v9];
    v11 = v10 != 0;

    paired = [MEMORY[0x277CCABB0] numberWithBool:paired];
    stringValue = [paired stringValue];
    v13 = [MEMORY[0x277CCABB0] numberWithBool:v11];
    stringValue2 = [v13 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[paired]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LOBYTE(paired) = v11;
  }

  else
  {
    v15 = sharedBluetoothSettingsLogComponent(v5);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice = [btsDevice2 classicDevice];
      address2 = [classicDevice address];
      v20 = 138412546;
      v21 = address2;
      v22 = 1024;
      v23 = paired;
      _os_log_impl(&dword_251143000, v15, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [paired] [BTDevice-Only] btDevice: %@, returnValue:%i", &v20, 0x12u);
    }
  }

  return paired;
}

- (id)productName
{
  v18 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  productName = [btsDevice productName];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    cbDevice = [headphoneDevice cbDevice];
    productName2 = [cbDevice productName];

    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[productName]" btsDeviceValue:productName headphoneDeviceValue:productName2];
  }

  else
  {
    v9 = sharedBluetoothSettingsLogComponent(v5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice = [btsDevice2 classicDevice];
      address = [classicDevice address];
      v14 = 138412546;
      v15 = address;
      v16 = 2112;
      v17 = productName;
      _os_log_impl(&dword_251143000, v9, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [productName] [BTDevice-Only] btDevice: %@, returnValue:%@", &v14, 0x16u);
    }

    productName2 = productName;
  }

  return productName2;
}

- (void)unpair
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_ffValue && self->_headphoneDevice)
  {
    btsDevice = [(HPSDevice *)self btsDevice];
    classicDevice = [btsDevice classicDevice];
    paired = [classicDevice paired];

    v6 = objc_opt_new();
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    cbDevice = [headphoneDevice cbDevice];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __19__HPSDevice_unpair__block_invoke;
    v12[3] = &unk_2796AE408;
    v12[4] = self;
    v12[5] = paired;
    [v6 deleteDevice:cbDevice completion:v12];
  }

  else
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    [btsDevice2 unpair];

    v6 = sharedBluetoothSettingsLogComponent(v10);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice3 = [(HPSDevice *)self btsDevice];
      *buf = 138412290;
      v14 = btsDevice3;
      _os_log_impl(&dword_251143000, v6, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [unpair] [BTDevice-Only] btDevice: %@", buf, 0xCu);
    }
  }
}

void __19__HPSDevice_unpair__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = sharedBluetoothSettingsLogComponent(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __19__HPSDevice_unpair__block_invoke_cold_1(v4);
    }
  }

  else
  {
    v6 = *(a1 + 32);
    v5 = [&unk_28634DC30 stringValue];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 40)];
    v8 = [v7 stringValue];
    v9 = MEMORY[0x277CCABB0];
    v10 = [*(a1 + 32) btsDevice];
    v11 = [v10 classicDevice];
    v12 = [v9 numberWithBool:{objc_msgSend(v11, "paired")}];
    v13 = [v12 stringValue];
    [v6 _logSetterExpectationFormatStringForUsecase:@"[unpair]" inputValue:v5 existingValue:v8 readBackValue:v13];
  }
}

- (unsigned)doubleTapCapability
{
  v23 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  doubleTapCapability = [classicDevice doubleTapCapability];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    cbDevice = [headphoneDevice cbDevice];
    doubleTapCapability2 = [cbDevice doubleTapCapability];
    if (doubleTapCapability2 == 3)
    {
      v10 = 2;
    }

    else
    {
      v10 = doubleTapCapability2 == 2;
    }

    doubleTapCapability = [MEMORY[0x277CCABB0] numberWithUnsignedInt:doubleTapCapability];
    stringValue = [doubleTapCapability stringValue];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v10];
    stringValue2 = [v12 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[doubleTapCapability]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LODWORD(doubleTapCapability) = v10;
  }

  else
  {
    v14 = sharedBluetoothSettingsLogComponent(v6);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v19 = 138412546;
      v20 = address;
      v21 = 1024;
      v22 = doubleTapCapability;
      _os_log_impl(&dword_251143000, v14, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [doubleTapCapability] [BTDevice-Only] btDevice: %@, returnValue:%i", &v19, 0x12u);
    }
  }

  return doubleTapCapability;
}

- (unsigned)getConversationDetectMode
{
  v21 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  getConversationDetectMode = [classicDevice getConversationDetectMode];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    if ([headphoneDevice conversationDetect])
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    getConversationDetectMode = [MEMORY[0x277CCABB0] numberWithUnsignedChar:getConversationDetectMode];
    stringValue = [getConversationDetectMode stringValue];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
    stringValue2 = [v10 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[getConversationDetectMode]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LOBYTE(getConversationDetectMode) = v8;
  }

  else
  {
    v12 = sharedBluetoothSettingsLogComponent(v6);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v17 = 138412546;
      v18 = address;
      v19 = 1024;
      v20 = getConversationDetectMode;
      _os_log_impl(&dword_251143000, v12, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [getConversationDetectMode] [BTDevice-Only] btDevice: %@, returnValue:%i", &v17, 0x12u);
    }
  }

  return getConversationDetectMode;
}

- (void)setDeviceAdaptiveVolumeMode:(int)mode
{
  v3 = *&mode;
  v24 = *MEMORY[0x277D85DE8];
  if (self->_ffValue && self->_headphoneDevice)
  {
    btsDevice = [(HPSDevice *)self btsDevice];
    classicDevice = [btsDevice classicDevice];
    getDeviceAdaptiveVolumeMode = [classicDevice getDeviceAdaptiveVolumeMode];

    [(HPSDevice *)self setAdaptiveVolumeMode:v3];
    v8 = dispatch_time(0, 5000000000);
    v9 = dispatch_get_global_queue(0, 0);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __41__HPSDevice_setDeviceAdaptiveVolumeMode___block_invoke;
    v17[3] = &unk_2796AE390;
    v17[4] = self;
    v18 = v3;
    v19 = getDeviceAdaptiveVolumeMode;
    dispatch_after(v8, v9, v17);
  }

  else
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice2 = [btsDevice2 classicDevice];
    [classicDevice2 setDeviceAdaptiveVolumeMode:v3];

    v13 = sharedBluetoothSettingsLogComponent(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice3 = [(HPSDevice *)self btsDevice];
      classicDevice3 = [btsDevice3 classicDevice];
      address = [classicDevice3 address];
      *buf = 138412546;
      v21 = address;
      v22 = 1024;
      v23 = v3;
      _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [setDeviceAdaptiveVolumeMode:] [BTDevice-Only] btDevice: %@, volMode:%i", buf, 0x12u);
    }
  }
}

void __41__HPSDevice_setDeviceAdaptiveVolumeMode___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 40)];
  v3 = [v11 stringValue];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(a1 + 44)];
  v5 = [v4 stringValue];
  v6 = MEMORY[0x277CCABB0];
  v7 = [*(a1 + 32) btsDevice];
  v8 = [v7 classicDevice];
  v9 = [v6 numberWithUnsignedChar:{objc_msgSend(v8, "getDeviceAdaptiveVolumeMode")}];
  v10 = [v9 stringValue];
  [v2 _logSetterExpectationFormatStringForUsecase:@"[setDeviceAdaptiveVolumeMode:]" inputValue:v3 existingValue:v5 readBackValue:v10];
}

- (BOOL)setUserName:(id)name
{
  v31 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = nameCopy;
  if (self->_ffValue && self->_headphoneDevice)
  {
    v6 = nameCopy;
    btsDevice = [(HPSDevice *)self btsDevice];
    name = [btsDevice name];

    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    [headphoneDevice setName:v6];

    headphoneDevice2 = [(HPSDevice *)self headphoneDevice];
    [headphoneDevice2 updateFeatureValuesWithFeature:0];

    v10 = dispatch_time(0, 5000000000);
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __25__HPSDevice_setUserName___block_invoke;
    block[3] = &unk_2796ADE70;
    block[4] = self;
    v23 = v6;
    v24 = name;
    v12 = name;
    v13 = v6;
    dispatch_after(v10, v11, block);

    LOBYTE(name) = 1;
  }

  else
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice = [btsDevice2 classicDevice];
    LODWORD(name) = [classicDevice setUserName:v5];

    v13 = sharedBluetoothSettingsLogComponent(v17);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice3 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice3 classicDevice];
      address = [classicDevice2 address];
      *buf = 138412802;
      v26 = address;
      v27 = 2112;
      v28 = v5;
      v29 = 1024;
      v30 = name;
      _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [setUserName:] [BTDevice-Only] btDevice: %@, inputName:%@ didSet:%i", buf, 0x1Cu);
    }
  }

  return name;
}

void __25__HPSDevice_setUserName___block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v5 = [v1 btsDevice];
  v4 = [v5 name];
  [v1 _logSetterExpectationFormatStringForUsecase:@"[setUserName:]" inputValue:v2 existingValue:v3 readBackValue:v4];
}

- (BOOL)setInEarDetectEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v30 = *MEMORY[0x277D85DE8];
  if (self->_ffValue && self->_headphoneDevice)
  {
    btsDevice = [(HPSDevice *)self btsDevice];
    classicDevice = [btsDevice classicDevice];
    inEarDetectEnabled = [classicDevice inEarDetectEnabled];

    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    [headphoneDevice setInEarDetection:enabledCopy];

    headphoneDevice2 = [(HPSDevice *)self headphoneDevice];
    [headphoneDevice2 updateFeatureValuesWithFeature:5];

    v10 = dispatch_time(0, 5000000000);
    v11 = dispatch_get_global_queue(0, 0);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __35__HPSDevice_setInEarDetectEnabled___block_invoke;
    v21[3] = &unk_2796AE480;
    v21[4] = self;
    v22 = enabledCopy;
    v23 = inEarDetectEnabled;
    dispatch_after(v10, v11, v21);

    LOBYTE(v12) = 1;
  }

  else
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice2 = [btsDevice2 classicDevice];
    v12 = [classicDevice2 setInEarDetectEnabled:enabledCopy];

    v16 = sharedBluetoothSettingsLogComponent(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice3 = [(HPSDevice *)self btsDevice];
      classicDevice3 = [btsDevice3 classicDevice];
      address = [classicDevice3 address];
      *buf = 138412802;
      v25 = address;
      v26 = 1024;
      v27 = enabledCopy;
      v28 = 1024;
      v29 = v12;
      _os_log_impl(&dword_251143000, v16, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [setInEarDetectEnabled:] [BTDevice-Only] btDevice: %@, inputEnabled:%i, returnValue:%i", buf, 0x18u);
    }
  }

  return v12;
}

void __35__HPSDevice_setInEarDetectEnabled___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v11 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  v3 = [v11 stringValue];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 41)];
  v5 = [v4 stringValue];
  v6 = MEMORY[0x277CCABB0];
  v7 = [*(a1 + 32) btsDevice];
  v8 = [v7 classicDevice];
  v9 = [v6 numberWithBool:{objc_msgSend(v8, "inEarDetectEnabled")}];
  v10 = [v9 stringValue];
  [v2 _logSetterExpectationFormatStringForUsecase:@"[setInEarDetectEnabled:]" inputValue:v3 existingValue:v5 readBackValue:v10];
}

- ($70344DAF05348A783186C1CF166707C1)getCallManagementConfig
{
  selfCopy = self;
  v28 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  getCallManagementConfig = [classicDevice getCallManagementConfig];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n version: %i  \nstatus: NA \nendCall: %i \nendCallStatus: NA \nendCallConfig: %i \nmuteControlStatus: NA \nmuteControlConfig: %i \n", getCallManagementConfig, BYTE2(getCallManagementConfig), BYTE4(getCallManagementConfig), BYTE6(getCallManagementConfig)];
  v7 = v6;
  if (selfCopy->_ffValue && selfCopy->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)selfCopy headphoneDevice];
    cbDevice = [headphoneDevice cbDevice];
    muteControlCapability = [cbDevice muteControlCapability];

    headphoneDevice2 = [(HPSDevice *)selfCopy headphoneDevice];
    endCallGesture = [headphoneDevice2 endCallGesture];
    v13 = endCallGesture;
    if (muteControlCapability)
    {
      headphoneDevice3 = [(HPSDevice *)selfCopy headphoneDevice];
      muteControlGesture = [headphoneDevice3 muteControlGesture];

      v16 = 0;
    }

    else
    {
      muteControlGesture = 0;
      v16 = endCallGesture;
      v13 = 0;
    }

    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n version: %i  \nstatus: NA \nendCall: %i \nendCallStatus: NA \nendCallConfig: %i \nmuteControlStatus: NA \nmuteControlConfig: %i \n", muteControlCapability, v16, v13, muteControlGesture];
    [(HPSDevice *)selfCopy _logExpectationFormatStringForUsecase:@"[getCallManagementConfig]" btsDeviceValue:v7 headphoneDeviceValue:v22];

    v21 = 0;
    LOBYTE(v20) = 0;
    LOBYTE(selfCopy) = 0;
  }

  else
  {
    muteControlCapability = sharedBluetoothSettingsLogComponent(v6);
    if (os_log_type_enabled(muteControlCapability, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)selfCopy btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      *buf = 138412546;
      v25 = address;
      v26 = 2112;
      v27 = v7;
      _os_log_impl(&dword_251143000, muteControlCapability, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [getCallManagementConfig] [BTDevice-Only] btDevice: %@, returnValue:%@", buf, 0x16u);
    }

    selfCopy = (getCallManagementConfig >> 8);
    v20 = getCallManagementConfig >> 24;
    v13 = HIDWORD(getCallManagementConfig) & 0xFFFFFF;
    muteControlGesture = BYTE6(getCallManagementConfig);
    v16 = getCallManagementConfig >> 16;
    LOBYTE(muteControlCapability) = getCallManagementConfig;
    v21 = BYTE5(getCallManagementConfig);
  }

  return ((muteControlGesture << 48) | (v21 << 40) | (v13 << 32) | (v20 << 24) | (v16 << 16) | (selfCopy << 8) | muteControlCapability);
}

- (BOOL)setCallConfig:(id)config
{
  v3 = *&config.var0;
  v34 = *MEMORY[0x277D85DE8];
  if (self->_ffValue && self->_headphoneDevice)
  {
    btsDevice = [(HPSDevice *)self btsDevice];
    classicDevice = [btsDevice classicDevice];
    getCallManagementConfig = [classicDevice getCallManagementConfig];

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n version: %i  \nstatus: NA \nendCall: %i \nendCallStatus: NA \nendCallConfig: %i \nmuteControlStatus: NA \nmuteControlConfig: %i \n", getCallManagementConfig, BYTE2(getCallManagementConfig), BYTE4(getCallManagementConfig), BYTE6(getCallManagementConfig)];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n version: %i  \nstatus: NA \nendCall: %i \nendCallStatus: NA \nendCallConfig: %i \nmuteControlStatus: NA \nmuteControlConfig: %i \n", v3, BYTE2(v3), BYTE4(v3), BYTE6(v3)];
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    headphoneDevice2 = headphoneDevice;
    if (v3)
    {
      [headphoneDevice setEndCallGesture:BYTE4(v3)];

      headphoneDevice2 = [(HPSDevice *)self headphoneDevice];
      [headphoneDevice2 setMuteControlGesture:BYTE6(v3)];
    }

    else
    {
      [headphoneDevice setEndCallGesture:BYTE2(v3)];
    }

    headphoneDevice3 = [(HPSDevice *)self headphoneDevice];
    [headphoneDevice3 updateFeatureValuesWithFeature:17];

    v21 = dispatch_time(0, 5000000000);
    v22 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __27__HPSDevice_setCallConfig___block_invoke;
    block[3] = &unk_2796ADE70;
    block[4] = self;
    v26 = v9;
    v27 = v8;
    v23 = v8;
    v15 = v9;
    dispatch_after(v21, v22, block);

    LOBYTE(v9) = 1;
  }

  else
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice2 = [btsDevice2 classicDevice];
    LODWORD(v9) = [classicDevice2 setCallConfig:v3 & 0xFFFFFFFFFFFFFFLL];

    v15 = sharedBluetoothSettingsLogComponent(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice3 = [(HPSDevice *)self btsDevice];
      classicDevice3 = [btsDevice3 classicDevice];
      address = [classicDevice3 address];
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n version: %i  \nstatus: NA \nendCall: %i \nendCallStatus: NA \nendCallConfig: %i \nmuteControlStatus: NA \nmuteControlConfig: %i \n", v3, BYTE2(v3), BYTE4(v3), (v3 & 0xFFFFFFFFFFFFFFuLL) >> 48];
      *buf = 138412802;
      v29 = address;
      v30 = 2112;
      v31 = v19;
      v32 = 1024;
      v33 = v9;
      _os_log_impl(&dword_251143000, v15, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [setCallConfig:] [BTDevice-Only] btDevice: %@, inputConfig:%@, returnValue:%i", buf, 0x1Cu);
    }
  }

  return v9;
}

void __27__HPSDevice_setCallConfig___block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v7 = [v1 btsDevice];
  v4 = [v7 classicDevice];
  v5 = [v4 getCallManagementConfig];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n version: %i  \nstatus: NA \nendCall: %i \nendCallStatus: NA \nendCallConfig: %i \nmuteControlStatus: NA \nmuteControlConfig: %i \n", v5, BYTE2(v5), BYTE4(v5), BYTE6(v5)];
  [v1 _logSetterExpectationFormatStringForUsecase:@"[setCallConfig:]" inputValue:v2 existingValue:v3 readBackValue:v6];
}

- (BOOL)isTemporaryPaired
{
  v23 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  isTemporaryPaired = [classicDevice isTemporaryPaired];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    cbDevice = [headphoneDevice cbDevice];
    deviceFlags = [cbDevice deviceFlags];

    v10 = (deviceFlags >> 25) & 1;
    isTemporaryPaired = [MEMORY[0x277CCABB0] numberWithBool:isTemporaryPaired];
    stringValue = [isTemporaryPaired stringValue];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:v10];
    stringValue2 = [v12 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[isTemporaryPaired]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LOBYTE(isTemporaryPaired) = v10;
  }

  else
  {
    v14 = sharedBluetoothSettingsLogComponent(v6);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v19 = 138412546;
      v20 = address;
      v21 = 1024;
      v22 = isTemporaryPaired;
      _os_log_impl(&dword_251143000, v14, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [isTemporaryPaired] [BTDevice-Only] btDevice: %@, returnValue:%i", &v19, 0x12u);
    }
  }

  return isTemporaryPaired;
}

- (BOOL)magicPaired
{
  v23 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  magicPaired = [classicDevice magicPaired];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    cbDevice = [headphoneDevice cbDevice];
    deviceFlags = [cbDevice deviceFlags];

    v10 = (deviceFlags >> 1) & 1;
    magicPaired = [MEMORY[0x277CCABB0] numberWithBool:magicPaired];
    stringValue = [magicPaired stringValue];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:v10];
    stringValue2 = [v12 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[magicPaired]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LOBYTE(magicPaired) = v10;
  }

  else
  {
    v14 = sharedBluetoothSettingsLogComponent(v6);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v19 = 138412546;
      v20 = address;
      v21 = 1024;
      v22 = magicPaired;
      _os_log_impl(&dword_251143000, v14, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [magicPaired] [BTDevice-Only] btDevice: %@, returnValue:%i", &v19, 0x12u);
    }
  }

  return magicPaired;
}

- (BOOL)getDeviceSoundProfileAllowed
{
  v23 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  getDeviceSoundProfileAllowed = [classicDevice getDeviceSoundProfileAllowed];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    cbDevice = [headphoneDevice cbDevice];
    deviceFlags = [cbDevice deviceFlags];

    v10 = (deviceFlags >> 28) & 1;
    getDeviceSoundProfileAllowed = [MEMORY[0x277CCABB0] numberWithBool:getDeviceSoundProfileAllowed];
    stringValue = [getDeviceSoundProfileAllowed stringValue];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:v10];
    stringValue2 = [v12 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[getDeviceSoundProfileAllowed]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LOBYTE(getDeviceSoundProfileAllowed) = v10;
  }

  else
  {
    v14 = sharedBluetoothSettingsLogComponent(v6);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v19 = 138412546;
      v20 = address;
      v21 = 1024;
      v22 = getDeviceSoundProfileAllowed;
      _os_log_impl(&dword_251143000, v14, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [getDeviceSoundProfileAllowed] [BTDevice-Only] btDevice: %@, returnValue:%i", &v19, 0x12u);
    }
  }

  return getDeviceSoundProfileAllowed;
}

- (BOOL)cloudPaired
{
  v22 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  cloudPaired = [btsDevice cloudPaired];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    cbDevice = [headphoneDevice cbDevice];
    deviceFlags = [cbDevice deviceFlags];

    v9 = (deviceFlags >> 15) & 1;
    cloudPaired = [MEMORY[0x277CCABB0] numberWithBool:cloudPaired];
    stringValue = [cloudPaired stringValue];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:v9];
    stringValue2 = [v11 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[cloudPaired]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LOBYTE(cloudPaired) = v9;
  }

  else
  {
    v13 = sharedBluetoothSettingsLogComponent(v5);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice = [btsDevice2 classicDevice];
      address = [classicDevice address];
      v18 = 138412546;
      v19 = address;
      v20 = 1024;
      v21 = cloudPaired;
      _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [cloudPaired] [BTDevice-Only] btDevice: %@, returnValue:%i", &v18, 0x12u);
    }
  }

  return cloudPaired;
}

- (int)autoAnswerMode
{
  v23 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  autoAnswerMode = [classicDevice autoAnswerMode];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    cbDevice = [headphoneDevice cbDevice];
    deviceFlags = [cbDevice deviceFlags];

    if (deviceFlags < 0)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    autoAnswerMode = [MEMORY[0x277CCABB0] numberWithUnsignedInt:autoAnswerMode];
    stringValue = [autoAnswerMode stringValue];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v10];
    stringValue2 = [v12 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[autoAnswerMode]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LODWORD(autoAnswerMode) = v10;
  }

  else
  {
    v14 = sharedBluetoothSettingsLogComponent(v6);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v19 = 138412546;
      v20 = address;
      v21 = 1024;
      v22 = autoAnswerMode;
      _os_log_impl(&dword_251143000, v14, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [autoAnswerMode] [BTDevice-Only] btDevice: %@, returnValue:%i", &v19, 0x12u);
    }
  }

  return autoAnswerMode;
}

- (BOOL)setAutoAnswerMode:(int)mode
{
  v3 = *&mode;
  v28 = *MEMORY[0x277D85DE8];
  if (self->_ffValue && self->_headphoneDevice)
  {
    btsDevice = [(HPSDevice *)self btsDevice];
    classicDevice = [btsDevice classicDevice];
    v7 = [classicDevice autoAnswerMode] != 0;

    v8 = objc_opt_new();
    [v8 setDeviceFlagsMask:0x80000000];
    [v8 setDeviceFlagsValue:(v3 == 1) << 31];
    v11 = objc_opt_new();
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    cbDevice = [headphoneDevice cbDevice];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __31__HPSDevice_setAutoAnswerMode___block_invoke;
    v19[3] = &unk_2796AE4A8;
    v19[4] = self;
    v20 = v3;
    v21 = v7;
    [v11 modifyDevice:cbDevice settings:v8 completion:v19];

    LOBYTE(v11) = 1;
  }

  else
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice2 = [btsDevice2 classicDevice];
    LODWORD(v11) = [classicDevice2 setAutoAnswerMode:v3];

    v8 = sharedBluetoothSettingsLogComponent(v14);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice3 = [(HPSDevice *)self btsDevice];
      classicDevice3 = [btsDevice3 classicDevice];
      address = [classicDevice3 address];
      *buf = 138412802;
      v23 = address;
      v24 = 1024;
      v25 = v3;
      v26 = 1024;
      v27 = v11;
      _os_log_impl(&dword_251143000, v8, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [setAutoAnswerMode:] [BTDevice-Only] btDevice: %@, inputMode:%i didSet:%i", buf, 0x18u);
    }
  }

  return v11;
}

void __31__HPSDevice_setAutoAnswerMode___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v7 = *(a1 + 32);
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 40)];
    v6 = [v5 stringValue];
    v8 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 44)];
    v9 = [v8 stringValue];
    v10 = MEMORY[0x277CCABB0];
    v11 = [*(a1 + 32) btsDevice];
    v12 = [v11 classicDevice];
    v13 = [v10 numberWithUnsignedInt:{objc_msgSend(v12, "autoAnswerMode")}];
    v14 = [v13 stringValue];
    [v7 _logSetterExpectationFormatStringForUsecase:@"setAutoAnswerMode:" inputValue:v6 existingValue:v9 readBackValue:v14];

    goto LABEL_5;
  }

  v5 = sharedBluetoothSettingsLogComponent(v3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 localizedDescription];
    v15 = 138412290;
    v16 = v6;
    _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [setListeningModeConfigs]: unable to modify modeCofig %@", &v15, 0xCu);
LABEL_5:
  }
}

- (unsigned)getSpatialAudioPlatformSupport
{
  v23 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  getSpatialAudioPlatformSupport = [classicDevice getSpatialAudioPlatformSupport];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    cbDevice = [headphoneDevice cbDevice];
    deviceFlags = [cbDevice deviceFlags];

    if ((deviceFlags & 0x10000000) != 0)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    getSpatialAudioPlatformSupport = [MEMORY[0x277CCABB0] numberWithUnsignedChar:getSpatialAudioPlatformSupport];
    stringValue = [getSpatialAudioPlatformSupport stringValue];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v10];
    stringValue2 = [v12 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[getSpatialAudioPlatformSupport]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LOBYTE(getSpatialAudioPlatformSupport) = v10;
  }

  else
  {
    v14 = sharedBluetoothSettingsLogComponent(v6);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v19 = 138412546;
      v20 = address;
      v21 = 1024;
      v22 = getSpatialAudioPlatformSupport;
      _os_log_impl(&dword_251143000, v14, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [getSpatialAudioPlatformSupport] [BTDevice-Only] btDevice: %@, returnValue:%i", &v19, 0x12u);
    }
  }

  return getSpatialAudioPlatformSupport;
}

- (int)accessorySettingFeatureBitMask
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = +[HPSHeadphoneManager sharedInstance];
  if ([v3 allowReplayAccessory])
  {
    btsDevice = [(HPSDevice *)self btsDevice];

    if (!btsDevice)
    {
      headphoneDevice = [(HPSDevice *)self headphoneDevice];
      accessorySettingFeatureBitMask = [headphoneDevice accessorySettingFeatureBitMask];

      return accessorySettingFeatureBitMask;
    }
  }

  else
  {
  }

  btsDevice2 = [(HPSDevice *)self btsDevice];
  if (btsDevice2)
  {
  }

  else if (_os_feature_enabled_impl())
  {
    headphoneDevice2 = [(HPSDevice *)self headphoneDevice];
    productInfo = [headphoneDevice2 productInfo];
    flags = [productInfo flags];

    headphoneDevice3 = [(HPSDevice *)self headphoneDevice];
    v13 = [headphoneDevice3 supportsFeatureWithFeature:0];

    headphoneDevice4 = [(HPSDevice *)self headphoneDevice];
    v15 = [headphoneDevice4 supportsFeatureWithFeature:3];

    if (v15)
    {
      v16 = v13 | 2;
    }

    else
    {
      v16 = v13;
    }

    headphoneDevice5 = [(HPSDevice *)self headphoneDevice];
    cbDevice = [headphoneDevice5 cbDevice];
    doubleTapCapability = [cbDevice doubleTapCapability];

    if (doubleTapCapability == 2)
    {
      v20 = v16 | 4;
    }

    else
    {
      v20 = v16;
    }

    headphoneDevice6 = [(HPSDevice *)self headphoneDevice];
    v22 = [headphoneDevice6 supportsFeatureWithFeature:5];

    if ((*&v22 & ((flags & 8) >> 3)) != 0)
    {
      v20 |= 0x20u;
    }

    headphoneDevice7 = [(HPSDevice *)self headphoneDevice];
    v24 = [headphoneDevice7 supportsFeatureWithFeature:5];

    if (v24)
    {
      v25 = v20 | 8;
    }

    else
    {
      v25 = v20;
    }

    headphoneDevice8 = [(HPSDevice *)self headphoneDevice];
    v27 = [headphoneDevice8 supportsFeatureWithFeature:7];
    v28 = v25 | 0x10;
    if (!v27)
    {
      v28 = v25;
    }

    if ((flags & 8) != 0)
    {
      accessorySettingFeatureBitMask2 = v28;
    }

    else
    {
      accessorySettingFeatureBitMask2 = v28 | 0x400;
    }

    return accessorySettingFeatureBitMask2;
  }

  btsDevice3 = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice3 classicDevice];
  accessorySettingFeatureBitMask2 = [classicDevice accessorySettingFeatureBitMask];

  v33 = sharedBluetoothSettingsLogComponent(v32);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    btsDevice4 = [(HPSDevice *)self btsDevice];
    classicDevice2 = [btsDevice4 classicDevice];
    address = [classicDevice2 address];
    v37 = 138412546;
    v38 = address;
    v39 = 1024;
    v40 = accessorySettingFeatureBitMask2;
    _os_log_impl(&dword_251143000, v33, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [accessorySettingFeatureBitMask] [BTDevice-Only] btDevice: %@, returnValue:%i", &v37, 0x12u);
  }

  return accessorySettingFeatureBitMask2;
}

- (BOOL)setClickHoldModes:(id)modes
{
  v3 = *&modes.var2;
  v4 = *&modes.var0;
  v22 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  v8 = [classicDevice setClickHoldModes:{v4, v3}];

  v10 = sharedBluetoothSettingsLogComponent(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice2 = [btsDevice2 classicDevice];
    address = [classicDevice2 address];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n rightMode: %i \nleftMode: %i \nprevRightMode: %i \nprevLeftMode: %i \n", v4, HIDWORD(v4), v3, HIDWORD(v3)];
    *buf = 138412802;
    v17 = address;
    v18 = 2112;
    v19 = v14;
    v20 = 1024;
    v21 = v8;
    _os_log_impl(&dword_251143000, v10, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [setClickHoldModes:] [BTDevice-Only] btDevice: %@, clockHoldModes:%@, result:%i", buf, 0x1Cu);
  }

  return v8;
}

- (unsigned)clickHoldModes:(id *)modes
{
  v21 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  v7 = [classicDevice clickHoldModes:modes];

  v9 = sharedBluetoothSettingsLogComponent(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice2 = [btsDevice2 classicDevice];
    address = [classicDevice2 address];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n rightMode: %i \nleftMode: %i \nprevRightMode: %i \nprevLeftMode: %i \n", *&modes->var0, HIDWORD(*&modes->var0), *&modes->var2, HIDWORD(*&modes->var2)];
    *buf = 138412802;
    v16 = address;
    v17 = 2112;
    v18 = v13;
    v19 = 1024;
    v20 = v7;
    _os_log_impl(&dword_251143000, v9, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [clickHoldModes:] [BTDevice-Only] btDevice: %@, inputModes:%@ returnValue:%i", buf, 0x1Cu);
  }

  return v7;
}

- (int)getDeviceColor:(unsigned int *)color
{
  v23 = *MEMORY[0x277D85DE8];
  headphoneDevice = +[HPSHeadphoneManager sharedInstance];
  if ([headphoneDevice allowReplayAccessory])
  {
    btsDevice = [(HPSDevice *)self btsDevice];

    if (btsDevice)
    {
      goto LABEL_5;
    }

    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    *color = [headphoneDevice deviceColor];
  }

LABEL_5:
  btsDevice2 = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice2 classicDevice];
  v9 = [classicDevice getDeviceColor:color];

  v11 = sharedBluetoothSettingsLogComponent(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    btsDevice3 = [(HPSDevice *)self btsDevice];
    classicDevice2 = [btsDevice3 classicDevice];
    address = [classicDevice2 address];
    v15 = *color;
    v17 = 138412802;
    v18 = address;
    v19 = 1024;
    v20 = v15;
    v21 = 1024;
    v22 = v9;
    _os_log_impl(&dword_251143000, v11, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [getDeviceColor:] [BTDevice-Only] btDevice: %@, inColor:%i, returnValue:%i", &v17, 0x18u);
  }

  return v9;
}

- (BOOL)getAACPCapabilityBit:(int)bit
{
  v3 = *&bit;
  v29 = *MEMORY[0x277D85DE8];
  headphoneDevice = [(HPSDevice *)self headphoneDevice];
  productInfo = [headphoneDevice productInfo];
  flags = [productInfo flags];

  btsDevice = [(HPSDevice *)self btsDevice];
  if (btsDevice)
  {

LABEL_9:
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice = [btsDevice2 classicDevice];
    v10 = [classicDevice getAACPCapabilityBit:v3];

    v16 = sharedBluetoothSettingsLogComponent(v15);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
LABEL_12:

      return v10;
    }

    btsDevice3 = [(HPSDevice *)self btsDevice];
    classicDevice2 = [btsDevice3 classicDevice];
    address = [classicDevice2 address];
    v23 = 138412802;
    v24 = address;
    v25 = 1024;
    v26 = v3;
    v27 = 1024;
    LODWORD(v28) = v10;
    _os_log_impl(&dword_251143000, v16, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [getAACPCapabilityBit:] [BTDevice-Only] btDevice: %@, inputBit:%i, returnValue:%i", &v23, 0x18u);

LABEL_11:
    goto LABEL_12;
  }

  v9 = _os_feature_enabled_impl();
  if (!v9)
  {
    goto LABEL_9;
  }

  LOBYTE(v10) = 0;
  if (v3 > 79)
  {
    switch(v3)
    {
      case 0xA0:
        v11 = @"BT_ACCESSORY_AACP_CAP_CONVERSATION_DETECT";
        v12 = 19;
        break;
      case 0x90:
        v11 = @"BT_ACCESSORY_AACP_CAP_ADAPTIVE_VOLUME";
        v12 = 20;
        break;
      case 0x50:
        v11 = @"BT_ACCESSORY_AACP_CAP_CALL_MANAGEMENT_CONFIG";
        v12 = 17;
        break;
      default:
        return v10;
    }

    goto LABEL_22;
  }

  switch(v3)
  {
    case 0xC:
      v10 = (flags >> 17) & 1;
      v11 = @"BT_ACCESSORY_AACP_CAP_VOLUME_CONTROL_BUTTON_CONFIG";
LABEL_23:
      v16 = sharedBluetoothSettingsLogComponent(v9);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      btsDevice3 = [(HPSDevice *)self headphoneDevice];
      v22 = [btsDevice3 debugDescription];
      v23 = 138412802;
      v24 = v11;
      v25 = 1024;
      v26 = v10;
      v27 = 2112;
      v28 = v22;
      _os_log_impl(&dword_251143000, v16, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [getAACPCapabilityBit:] [HeadphoneManager-Only] capabilityName: %@,  bitEnabled: %i, device: %@", &v23, 0x1Cu);

      goto LABEL_11;
    case 0x20:
      v11 = @"BT_ACCESSORY_AACP_CAP_CROWN_VOLUME";
      v12 = 4;
      goto LABEL_22;
    case 0x40:
      v11 = @"BT_ACCESSORY_AACP_CAP_SPATIAL_AUDIO";
      v12 = 15;
LABEL_22:
      headphoneDevice2 = [(HPSDevice *)self headphoneDevice];
      v10 = [headphoneDevice2 supportsFeatureWithFeature:v12];

      goto LABEL_23;
  }

  return v10;
}

- (BOOL)hearingAidSupport
{
  v22 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  hearingAidSupport = [classicDevice hearingAidSupport];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    cbDevice = [headphoneDevice cbDevice];
    v9 = [cbDevice hearingAidSupport] == 1;

    hearingAidSupport = [MEMORY[0x277CCABB0] numberWithBool:hearingAidSupport];
    stringValue = [hearingAidSupport stringValue];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:v9];
    stringValue2 = [v11 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[hearingAidSupport]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LOBYTE(hearingAidSupport) = v9;
  }

  else
  {
    v13 = sharedBluetoothSettingsLogComponent(v6);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v18 = 138412546;
      v19 = address;
      v20 = 1024;
      v21 = hearingAidSupport;
      _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [hearingAidSupport] [BTDevice-Only] btDevice: %@, returnValue:%i", &v18, 0x12u);
    }
  }

  return hearingAidSupport;
}

- (BOOL)hearingAidEnrolled
{
  v16 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  hearingAidEnrolled = [classicDevice hearingAidEnrolled];

  v7 = sharedBluetoothSettingsLogComponent(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice2 = [btsDevice2 classicDevice];
    address = [classicDevice2 address];
    v12 = 138412546;
    v13 = address;
    v14 = 1024;
    v15 = hearingAidEnrolled;
    _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [hearingAidEnrolled] [BTDevice-Only] btDevice: %@, returnValue:%i", &v12, 0x12u);
  }

  return hearingAidEnrolled;
}

- (void)setHearingAidEnrolled:(BOOL)enrolled
{
  enrolledCopy = enrolled;
  v16 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  [classicDevice setHearingAidEnrolled:enrolledCopy];

  v8 = sharedBluetoothSettingsLogComponent(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice2 = [btsDevice2 classicDevice];
    address = [classicDevice2 address];
    v12 = 138412546;
    v13 = address;
    v14 = 1024;
    v15 = enrolledCopy;
    _os_log_impl(&dword_251143000, v8, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [setHearingAidEnrolled:] [BTDevice-Only] btDevice: %@, inputEnrolled:%i", &v12, 0x12u);
  }
}

- (BOOL)hearingAidEnabled
{
  v16 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  hearingAidEnabled = [classicDevice hearingAidEnabled];

  v7 = sharedBluetoothSettingsLogComponent(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice2 = [btsDevice2 classicDevice];
    address = [classicDevice2 address];
    v12 = 138412546;
    v13 = address;
    v14 = 1024;
    v15 = hearingAidEnabled;
    _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [hearingAidEnabled] [BTDevice-Only] btDevice: %@, returnValue:%i", &v12, 0x12u);
  }

  return hearingAidEnabled;
}

- (void)setHearingAidEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v16 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  [classicDevice setHearingAidEnabled:enabledCopy];

  v8 = sharedBluetoothSettingsLogComponent(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice2 = [btsDevice2 classicDevice];
    address = [classicDevice2 address];
    v12 = 138412546;
    v13 = address;
    v14 = 1024;
    v15 = enabledCopy;
    _os_log_impl(&dword_251143000, v8, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [setHearingAidEnabled:] [BTDevice-Only] btDevice: %@, inputEnrolled:%i", &v12, 0x12u);
  }
}

- (BOOL)hearingTestSupport
{
  v16 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  hearingTestSupport = [classicDevice hearingTestSupport];

  v7 = sharedBluetoothSettingsLogComponent(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice2 = [btsDevice2 classicDevice];
    address = [classicDevice2 address];
    v12 = 138412546;
    v13 = address;
    v14 = 1024;
    v15 = hearingTestSupport;
    _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [hearingTestSupport] [BTDevice-Only] btDevice: %@, returnValue:%i", &v12, 0x12u);
  }

  return hearingTestSupport;
}

- (BOOL)isServiceSupported:(unsigned int)supported
{
  v3 = *&supported;
  v26 = *MEMORY[0x277D85DE8];
  v5 = +[HPSHeadphoneManager sharedInstance];
  if ([v5 allowReplayAccessory])
  {
    btsDevice = [(HPSDevice *)self btsDevice];

    if (!btsDevice)
    {
      headphoneDevice = [(HPSDevice *)self headphoneDevice];
      v8 = [headphoneDevice isServiceSupported:v3];

      return v8;
    }
  }

  else
  {
  }

  if (!_os_feature_enabled_impl())
  {
    goto LABEL_8;
  }

  btsDevice2 = [(HPSDevice *)self btsDevice];
  if (btsDevice2)
  {

    goto LABEL_8;
  }

  headphoneDevice2 = [(HPSDevice *)self headphoneDevice];

  if (v3 != 0x80000 || !headphoneDevice2)
  {
LABEL_8:
    btsDevice3 = [(HPSDevice *)self btsDevice];
    classicDevice = [btsDevice3 classicDevice];
    v13 = [classicDevice isServiceSupported:v3];

    v15 = sharedBluetoothSettingsLogComponent(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice4 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice4 classicDevice];
      address = [classicDevice2 address];
      v20 = 138412802;
      v21 = address;
      v22 = 1024;
      v23 = v3;
      v24 = 1024;
      v25 = v13;
      _os_log_impl(&dword_251143000, v15, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [isServiceSupported:] ff == off btDevice: %@, inputService:%i didSet:%i", &v20, 0x18u);
    }

    return v13;
  }

  LOBYTE(v13) = 1;
  return v13;
}

- (id)healthDeviceType
{
  btsDevice = [(HPSDevice *)self btsDevice];
  healthDeviceType = [btsDevice healthDeviceType];

  return healthDeviceType;
}

- (unsigned)userSelectedHealthDataSyncConfig
{
  btsDevice = [(HPSDevice *)self btsDevice];
  userSelectedHealthDataSyncConfig = [btsDevice userSelectedHealthDataSyncConfig];

  return userSelectedHealthDataSyncConfig;
}

- (void)setUserSelectedHealthDataSyncConfig:(unsigned __int8)config
{
  configCopy = config;
  btsDevice = [(HPSDevice *)self btsDevice];
  [btsDevice setUserSelectedHealthDataSyncConfig:configCopy];
}

- (unsigned)SendSetupCommand:(unsigned __int8)command
{
  commandCopy = command;
  v19 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  v7 = [classicDevice SendSetupCommand:commandCopy];

  v9 = sharedBluetoothSettingsLogComponent(v8);
  v10 = v7 != 0;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice2 = [btsDevice2 classicDevice];
    address = [classicDevice2 address];
    v15 = 138412546;
    v16 = address;
    v17 = 1024;
    v18 = v10;
    _os_log_impl(&dword_251143000, v9, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [SendSetupCommand:] [BTDevice-Only] btDevice: %@, returnValue:%i", &v15, 0x12u);
  }

  return v10;
}

- (int)getUserSelectedDeviceType
{
  v16 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  getUserSelectedDeviceType = [classicDevice getUserSelectedDeviceType];

  v7 = sharedBluetoothSettingsLogComponent(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice2 = [btsDevice2 classicDevice];
    address = [classicDevice2 address];
    v12 = 138412546;
    v13 = address;
    v14 = 1024;
    v15 = getUserSelectedDeviceType;
    _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [getUserSelectedDeviceType] [BTDevice-Only] btDevice: %@, returnValue:%i", &v12, 0x12u);
  }

  return getUserSelectedDeviceType;
}

- (id)accessoryInfo
{
  v16 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  accessoryInfo = [classicDevice accessoryInfo];

  v7 = sharedBluetoothSettingsLogComponent(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice2 = [btsDevice2 classicDevice];
    address = [classicDevice2 address];
    v12 = 138412546;
    v13 = address;
    v14 = 2112;
    v15 = accessoryInfo;
    _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [accessoryInfo] [BTDevice-Only] btDevice: %@, returnValue:%@", &v12, 0x16u);
  }

  return accessoryInfo;
}

- (id)getServiceSetting:(unsigned int)setting key:(id)key
{
  v4 = *&setting;
  v24 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  v9 = [classicDevice getServiceSetting:v4 key:keyCopy];

  v11 = sharedBluetoothSettingsLogComponent(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice2 = [btsDevice2 classicDevice];
    address = [classicDevice2 address];
    v16 = 138413058;
    v17 = address;
    v18 = 1024;
    v19 = v4;
    v20 = 2112;
    v21 = keyCopy;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_251143000, v11, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [getServiceSetting:key:] [BTDevice-Only] btDevice: %@, serviceID:%i, key:%@, returnVal:%@", &v16, 0x26u);
  }

  return v9;
}

- (int)getLowSecurityStatus
{
  v16 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  getLowSecurityStatus = [classicDevice getLowSecurityStatus];

  v7 = sharedBluetoothSettingsLogComponent(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice2 = [btsDevice2 classicDevice];
    address = [classicDevice2 address];
    v12 = 138412546;
    v13 = address;
    v14 = 1024;
    v15 = getLowSecurityStatus;
    _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [getLowSecurityStatus] [BTDevice-Only] btDevice: %@, returnValue:%i", &v12, 0x12u);
  }

  return getLowSecurityStatus;
}

- (BOOL)ancsAuthorized
{
  v15 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  ancsAuthorized = [btsDevice ancsAuthorized];

  v6 = sharedBluetoothSettingsLogComponent(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice = [btsDevice2 classicDevice];
    address = [classicDevice address];
    v11 = 138412546;
    v12 = address;
    v13 = 1024;
    v14 = ancsAuthorized;
    _os_log_impl(&dword_251143000, v6, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [ancsAuthorized] [BTDevice-Only] btDevice: %@, returnValue:%i", &v11, 0x12u);
  }

  return ancsAuthorized;
}

- (BOOL)isFirmwareUpdateRequiredDevice
{
  v15 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  isFirmwareUpdateRequiredDevice = [btsDevice isFirmwareUpdateRequiredDevice];

  v6 = sharedBluetoothSettingsLogComponent(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice = [btsDevice2 classicDevice];
    address = [classicDevice address];
    v11 = 138412546;
    v12 = address;
    v13 = 1024;
    v14 = isFirmwareUpdateRequiredDevice;
    _os_log_impl(&dword_251143000, v6, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [isFirmwareUpdateRequiredDevice] [BTDevice-Only] btDevice: %@, returnValue:%i", &v11, 0x12u);
  }

  return isFirmwareUpdateRequiredDevice;
}

- (BOOL)isLimitedConnectivityDevice
{
  v15 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  isLimitedConnectivityDevice = [btsDevice isLimitedConnectivityDevice];

  v6 = sharedBluetoothSettingsLogComponent(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice = [btsDevice2 classicDevice];
    address = [classicDevice address];
    v11 = 138412546;
    v12 = address;
    v13 = 1024;
    v14 = isLimitedConnectivityDevice;
    _os_log_impl(&dword_251143000, v6, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [isLimitedConnectivityDevice] [BTDevice-Only] btDevice: %@, returnValue:%i", &v11, 0x12u);
  }

  return isLimitedConnectivityDevice;
}

- (void)setANCSAuthorization:(BOOL)authorization
{
  authorizationCopy = authorization;
  v11 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  [btsDevice setANCSAuthorization:authorizationCopy];

  v7 = sharedBluetoothSettingsLogComponent(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    v9 = 138412290;
    v10 = btsDevice2;
    _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [setANCSAuthorization:] [BTDevice-Only] btDevice: %@", &v9, 0xCu);
  }
}

- (BOOL)supportsANCS
{
  v15 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  supportsANCS = [btsDevice supportsANCS];

  v6 = sharedBluetoothSettingsLogComponent(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice = [btsDevice2 classicDevice];
    address = [classicDevice address];
    v11 = 138412546;
    v12 = address;
    v13 = 1024;
    v14 = supportsANCS;
    _os_log_impl(&dword_251143000, v6, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [supportsANCS] [BTDevice-Only] btDevice: %@, returnValue:%i", &v11, 0x12u);
  }

  return supportsANCS;
}

- (BOOL)isGuestPairingMode
{
  v16 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  isGuestPairingMode = [classicDevice isGuestPairingMode];

  v7 = sharedBluetoothSettingsLogComponent(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice2 = [btsDevice2 classicDevice];
    address = [classicDevice2 address];
    v12 = 138412546;
    v13 = address;
    v14 = 1024;
    v15 = isGuestPairingMode;
    _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [isGuestPairingMode] [BTDevice-Only] btDevice: %@, returnValue:%i", &v12, 0x12u);
  }

  return isGuestPairingMode;
}

- (void)setGuestPairingMode:(BOOL)mode
{
  modeCopy = mode;
  v16 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  [classicDevice setGuestPairingMode:modeCopy];

  v8 = sharedBluetoothSettingsLogComponent(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice2 = [btsDevice2 classicDevice];
    address = [classicDevice2 address];
    v12 = 138412546;
    v13 = address;
    v14 = 1024;
    v15 = modeCopy;
    _os_log_impl(&dword_251143000, v8, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [setGuestPairingMode:] [BTDevice-Only] btDevice: %@, mode:%i", &v12, 0x12u);
  }
}

- (void)setServiceSetting:(unsigned int)setting key:(id)key value:(id)value
{
  v6 = *&setting;
  v25 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  valueCopy = value;
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  [classicDevice setServiceSetting:v6 key:keyCopy value:valueCopy];

  v13 = sharedBluetoothSettingsLogComponent(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice2 = [btsDevice2 classicDevice];
    address = [classicDevice2 address];
    v17 = 138413058;
    v18 = address;
    v19 = 1024;
    v20 = v6;
    v21 = 2112;
    v22 = keyCopy;
    v23 = 2112;
    v24 = valueCopy;
    _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [setServiceSetting:key:value:] [BTDevice-Only] btDevice: %@, serviceID:%i, key:%@, value:%@", &v17, 0x26u);
  }
}

- (void)setSyncGroup:(int)group enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = *&group;
  v20 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  [classicDevice setSyncGroup:v5 enabled:enabledCopy];

  v10 = sharedBluetoothSettingsLogComponent(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice2 = [btsDevice2 classicDevice];
    address = [classicDevice2 address];
    v14 = 138412802;
    v15 = address;
    v16 = 1024;
    v17 = v5;
    v18 = 1024;
    v19 = enabledCopy;
    _os_log_impl(&dword_251143000, v10, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [setSyncGroup:enabled:] [BTDevice-Only] btDevice: %@, inputSyncGroup:%i, inputEnabled:%i", &v14, 0x18u);
  }
}

- (void)setSyncSettings:(id)settings
{
  v3 = *&settings.var0;
  v17 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  [classicDevice setSyncSettings:v3 & 0xFFFFFFFFFFLL];

  v8 = sharedBluetoothSettingsLogComponent(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice2 = [btsDevice2 classicDevice];
    address = [classicDevice2 address];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n supported: %i \nenabled: %i \nfavorites: %i \nrecents: %i \nuserPermissionGranted: %i \n", v3 & 1, (v3 >> 8) & 1, WORD1(v3) & 1, BYTE3(v3) & 1, HIDWORD(v3) & 1];
    *buf = 138412546;
    v14 = address;
    v15 = 2112;
    v16 = v12;
    _os_log_impl(&dword_251143000, v8, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [setSyncSettings:] [BTDevice-Only] btDevice: %@, inputSettings:%@", buf, 0x16u);
  }
}

- (BOOL)setUserSelectedDeviceType:(int)type
{
  v3 = *&type;
  v20 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  v7 = [classicDevice setUserSelectedDeviceType:v3];

  v9 = sharedBluetoothSettingsLogComponent(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice2 = [btsDevice2 classicDevice];
    address = [classicDevice2 address];
    v14 = 138412802;
    v15 = address;
    v16 = 1024;
    v17 = v3;
    v18 = 1024;
    v19 = v7;
    _os_log_impl(&dword_251143000, v9, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [setUserSelectedDeviceType:] [BTDevice-Only] btDevice: %@, inputType:%i didSet:%i", &v14, 0x18u);
  }

  return v7;
}

- (id)syncGroups
{
  v16 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  syncGroups = [classicDevice syncGroups];

  v7 = sharedBluetoothSettingsLogComponent(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice2 = [btsDevice2 classicDevice];
    address = [classicDevice2 address];
    v12 = 138412546;
    v13 = address;
    v14 = 2112;
    v15 = syncGroups;
    _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [syncGroups] [BTDevice-Only] btDevice: %@, value:%@", &v12, 0x16u);
  }

  return syncGroups;
}

- ($9BEB610D0CE1B1EDC3D89DA2464F985F)syncSettings
{
  v17 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  syncSettings = [classicDevice syncSettings];

  v7 = sharedBluetoothSettingsLogComponent(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice2 = [btsDevice2 classicDevice];
    address = [classicDevice2 address];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n supported: %i \nenabled: %i \nfavorites: %i \nrecents: %i \nuserPermissionGranted: %i \n", syncSettings & 1, (syncSettings >> 8) & 1, WORD1(syncSettings) & 1, BYTE3(syncSettings) & 1, HIDWORD(syncSettings) & 1];
    *buf = 138412546;
    v14 = address;
    v15 = 2112;
    v16 = v11;
    _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [syncSettings] [BTDevice-Only] btDevice: %@, value:%@", buf, 0x16u);
  }

  return syncSettings;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  address = [classicDevice address];
  headphoneDevice = [(HPSDevice *)self headphoneDevice];
  address2 = [(HPSDevice *)self address];
  name = [(HPSDevice *)self name];
  v11 = [v3 stringWithFormat:@"<%@: %p> btsDevice:%@ headphoneDevice:%@  address:%@  name:%@", v4, self, address, headphoneDevice, address2, name];

  return v11;
}

- (BTSDevice)btsDevice
{
  if (!self->_ffValue)
  {
    if (self->_headphoneDevice)
    {
      btsDevice = self->_btsDevice;
      if (!btsDevice || ([(BTSDevice *)btsDevice classicDevice], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
      {
        v5 = sharedBluetoothSettingsLogComponent(btsDevice);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          [(HPSDevice *)v5 btsDevice];
        }
      }
    }
  }

  v6 = self->_btsDevice;

  return v6;
}

- (void)_logExpectationFormatStringForUsecase:(id)usecase queryValue:(id)value btsDeviceValue:(id)deviceValue headphoneDeviceValue:(id)headphoneDeviceValue
{
  v34 = *MEMORY[0x277D85DE8];
  usecaseCopy = usecase;
  valueCopy = value;
  deviceValueCopy = deviceValue;
  headphoneDeviceValueCopy = headphoneDeviceValue;
  v14 = headphoneDeviceValueCopy;
  if (self->_ffValue || !self->_headphoneDevice)
  {
    v15 = sharedBluetoothSettingsLogComponent(headphoneDeviceValueCopy);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [HPSDevice _logExpectationFormatStringForUsecase:v15 queryValue:? btsDeviceValue:? headphoneDeviceValue:?];
    }

    v16 = [deviceValueCopy isEqualToString:v14];
    if ((v16 & 1) == 0)
    {
      v17 = sharedBluetoothSettingsLogComponent(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        btsDevice = [(HPSDevice *)self btsDevice];
        classicDevice = [btsDevice classicDevice];
        address = [classicDevice address];
        headphoneDevice = [(HPSDevice *)self headphoneDevice];
        v22 = 138413570;
        v23 = usecaseCopy;
        v24 = 2112;
        v25 = valueCopy;
        v26 = 2112;
        v27 = deviceValueCopy;
        v28 = 2112;
        v29 = v14;
        v30 = 2112;
        v31 = address;
        v32 = 2112;
        v33 = headphoneDevice;
        _os_log_error_impl(&dword_251143000, v17, OS_LOG_TYPE_ERROR, "HeadphoneInfrastructureReDesign: %@, [Query]=%@, btsDevice.value: %@, headphoneDevice.value:%@, btsDevice:%@, headphoneDevice:%@", &v22, 0x3Eu);
      }
    }
  }
}

- (void)_logSetterExpectationFormatStringForUsecase:(id)usecase inputValue:(id)value existingValue:(id)existingValue readBackValue:(id)backValue
{
  v39 = *MEMORY[0x277D85DE8];
  usecaseCopy = usecase;
  valueCopy = value;
  existingValueCopy = existingValue;
  backValueCopy = backValue;
  v14 = backValueCopy;
  if (self->_ffValue || !self->_headphoneDevice)
  {
    v15 = sharedBluetoothSettingsLogComponent(backValueCopy);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      mEMORY[0x277D0FC00] = [MEMORY[0x277D0FC00] shared];
      [mEMORY[0x277D0FC00] connectedHeadphones];
      v17 = v26 = usecaseCopy;
      headphoneDevice = [(HPSDevice *)self headphoneDevice];
      headphoneDevice2 = [(HPSDevice *)self headphoneDevice];
      cbDevice = [headphoneDevice2 cbDevice];
      *buf = 138412802;
      v28 = v17;
      v29 = 2048;
      v30 = headphoneDevice;
      v31 = 2048;
      v32 = cbDevice;
      _os_log_impl(&dword_251143000, v15, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: State log connected: %@ , headphoneDevice: %p, cbDevice: %p", buf, 0x20u);

      usecaseCopy = v26;
    }

    v21 = [valueCopy isEqualToString:v14];
    if ((v21 & 1) == 0)
    {
      v22 = sharedBluetoothSettingsLogComponent(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        btsDevice = [(HPSDevice *)self btsDevice];
        v24 = [btsDevice debugDescription];
        headphoneDevice3 = [(HPSDevice *)self headphoneDevice];
        *buf = 138413570;
        v28 = usecaseCopy;
        v29 = 2112;
        v30 = valueCopy;
        v31 = 2112;
        v32 = existingValueCopy;
        v33 = 2112;
        v34 = v14;
        v35 = 2112;
        v36 = v24;
        v37 = 2112;
        v38 = headphoneDevice3;
        _os_log_error_impl(&dword_251143000, v22, OS_LOG_TYPE_ERROR, "HeadphoneInfrastructureReDesign: %@, input.value: %@, existing.value: %@, readback.value: %@, btsDevice:%@, headphoneDevice:%@", buf, 0x3Eu);
      }
    }
  }
}

+ (id)headphoneDevice:(id)device btsDevice:(id)btsDevice
{
  btsDeviceCopy = btsDevice;
  deviceCopy = device;
  v7 = [[HPSDevice alloc] initWithHeadphoneDevice:deviceCopy btsDevice:btsDeviceCopy];

  return v7;
}

- (void)initWithHeadphoneDevice:btsDevice:.cold.1()
{
  v0 = [MEMORY[0x277D0FC00] shared];
  v1 = [v0 connectedHeadphones];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_0_2(&dword_251143000, v2, v3, "HeadphoneInfrastructureReDesign: unable to get headphoneDevice falling back to [BTDevice-Only]! %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

void __23__HPSDevice_disconnect__block_invoke_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_0_2(&dword_251143000, v2, v3, "HeadphoneInfrastructureReDesign: [disconnect] Failed! %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

void __19__HPSDevice_unpair__block_invoke_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_0_2(&dword_251143000, v2, v3, "HeadphoneInfrastructureReDesign: [unpair] Failed! %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

- (void)_logExpectationFormatStringForUsecase:(void *)a1 queryValue:(NSObject *)a2 btsDeviceValue:headphoneDeviceValue:.cold.1(void *a1, NSObject *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D0FC00] shared];
  v5 = [v4 connectedHeadphones];
  v6 = [a1 headphoneDevice];
  v7 = [a1 headphoneDevice];
  v8 = [v7 cbDevice];
  v9 = 138412802;
  v10 = v5;
  v11 = 2048;
  v12 = v6;
  v13 = 2048;
  v14 = v8;
  _os_log_debug_impl(&dword_251143000, a2, OS_LOG_TYPE_DEBUG, "HeadphoneInfrastructureReDesign: State log connected: %@ , headphoneDevice: %p, cbDevice: %p", &v9, 0x20u);
}

@end