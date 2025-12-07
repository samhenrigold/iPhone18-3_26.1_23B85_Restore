@interface BluetoothDevice
- ($70344DAF05348A783186C1CF166707C1)getCallManagementConfig;
- ($9BEB610D0CE1B1EDC3D89DA2464F985F)syncSettings;
- (BOOL)batteryStatus:(id *)status;
- (BOOL)featureCapability:(int)capability;
- (BOOL)getAACPCapabilityBit:(int)bit;
- (BOOL)getAdaptiveVolumeSupport;
- (BOOL)getAutoANCSupport;
- (BOOL)getConversationDetectSupport;
- (BOOL)getDeviceSoundProfileAllowed;
- (BOOL)getDeviceSoundProfileSupport;
- (BOOL)getSSLSupport;
- (BOOL)getWirelessSharingSpatialSupport;
- (BOOL)headTrackingAvailable;
- (BOOL)hearingAidEnabled;
- (BOOL)hearingAidEnrolled;
- (BOOL)inEarDetectEnabled;
- (BOOL)inEarStatusPrimary:(int *)primary secondary:(int *)secondary;
- (BOOL)isAccessory;
- (BOOL)isAppleAudioDevice;
- (BOOL)isGenuineAirPods;
- (BOOL)isGuestPairingMode;
- (BOOL)isProController;
- (BOOL)isProxCardShowedForFeature:(int)feature;
- (BOOL)isProxCardSupportedForFeature:(int)feature;
- (BOOL)isServiceSupported:(unsigned int)supported;
- (BOOL)pairedDeviceNameUpdated;
- (BOOL)setAutoAnswerMode:(int)mode;
- (BOOL)setCallConfig:(id)config;
- (BOOL)setChimeVolume:(unsigned int)volume;
- (BOOL)setClickHoldMode:(int)mode rightMode:(int)rightMode;
- (BOOL)setClickHoldModes:(id)modes;
- (BOOL)setCrownRotationDirection:(int)direction;
- (BOOL)setDoubleClickMode:(int)mode;
- (BOOL)setDoubleTapAction:(unsigned int)action;
- (BOOL)setDoubleTapActionEx:(unsigned int)ex rightAction:(unsigned int)action;
- (BOOL)setHeartRateMonitorEnabled:(unsigned int)enabled;
- (BOOL)setInEarDetectEnabled:(BOOL)enabled;
- (BOOL)setIsHidden:(BOOL)hidden;
- (BOOL)setListeningMode:(unsigned int)mode;
- (BOOL)setListeningModeConfigs:(unsigned int)configs;
- (BOOL)setMicMode:(unsigned int)mode;
- (BOOL)setSingleClickMode:(int)mode;
- (BOOL)setSmartRouteMode:(unsigned __int8)mode;
- (BOOL)setSpatialAudioAllowed:(BOOL)allowed;
- (BOOL)setSpatialAudioConfig:(id)config spatialMode:(int)mode headTracking:(BOOL)tracking;
- (BOOL)setSpatialAudioMode:(unsigned __int8)mode;
- (BOOL)setUserName:(id)name;
- (BOOL)setUserSelectedDeviceType:(int)type;
- (BOOL)smartRouteSupport;
- (BOOL)spatialAudioActive;
- (BOOL)spatialAudioAllowed;
- (BOOL)spatialAudioConfig:(id)config spatialMode:(int *)mode headTracking:(BOOL *)tracking;
- (BOOL)supportsBatteryLevel;
- (BOOL)supportsHS;
- (BluetoothDevice)initWithDevice:(BTDeviceImpl *)device address:(id)address;
- (id)accessoryInfo;
- (id)address;
- (id)copyWithZone:(_NSZone *)zone;
- (id)getAACPCapabilityBits;
- (id)getServiceSetting:(unsigned int)setting key:(id)key;
- (id)gyroInformation;
- (id)name;
- (id)productName;
- (id)syncGroups;
- (int)accessorySettingFeatureBitMask;
- (int)autoAnswerMode;
- (int)batteryLevel;
- (int)crownRotationDirection;
- (int)doubleClickMode;
- (int)getBehaviorForHIDDevice;
- (int)getDeviceColor:(unsigned int *)color;
- (int)getHexDeviceAddress:(id *)address;
- (int)getLowSecurityStatus;
- (int)getStereoHFPSupport;
- (int)getUserSelectedDeviceType;
- (int)primaryBudSide:(int *)side;
- (int)singleClickMode;
- (int)type;
- (int64_t)compare:(id)compare;
- (unsigned)SendSetupCommand:(unsigned __int8)command;
- (unsigned)chimeVolume;
- (unsigned)clickHoldMode:(int *)mode rightAction:(int *)action;
- (unsigned)clickHoldModes:(id *)modes;
- (unsigned)doubleTapAction;
- (unsigned)doubleTapActionEx:(unsigned int *)ex rightAction:(unsigned int *)action;
- (unsigned)doubleTapCapability;
- (unsigned)getAACPCapabilityInteger:(int)integer;
- (unsigned)getAdaptiveVolumeMode;
- (unsigned)getConversationDetectMode;
- (unsigned)getDeviceAdaptiveVolumeMode;
- (unsigned)getDeviceConversationDetect;
- (unsigned)getHeartRateMonitorEnabled;
- (unsigned)getSSLMode;
- (unsigned)getSpatialAudioPlatformSupport;
- (unsigned)listeningMode;
- (unsigned)listeningModeConfigs;
- (unsigned)majorClass;
- (unsigned)micMode;
- (unsigned)minorClass;
- (unsigned)productId;
- (unsigned)smartRouteMode;
- (unsigned)spatialAudioMode;
- (unsigned)vendorId;
- (unsigned)vendorIdSrc;
- (void)acceptSSP:(int64_t)p;
- (void)connect;
- (void)connectWithServices:(unsigned int)services;
- (void)dealloc;
- (void)disconnect;
- (void)endVoiceCommand;
- (void)isGuestPairingMode;
- (void)setAdaptiveVolumeMode:(int)mode;
- (void)setConversationDetectMode:(int)mode;
- (void)setDevice:(BTDeviceImpl *)device;
- (void)setDeviceAdaptiveVolumeMode:(int)mode;
- (void)setDeviceConversationDetect:(int)detect;
- (void)setDeviceSoundProfileAllowed:(BOOL)allowed;
- (void)setGuestPairingMode:(BOOL)mode;
- (void)setHearingAidEnabled:(BOOL)enabled;
- (void)setHearingAidEnrolled:(BOOL)enrolled;
- (void)setPIN:(id)n;
- (void)setProxCardShowedForFeature:(int)feature showed:(BOOL)showed;
- (void)setSSLMode:(int)mode;
- (void)setServiceSetting:(unsigned int)setting key:(id)key value:(id)value;
- (void)startVoiceCommand;
- (void)unpair;
@end

@implementation BluetoothDevice

- (id)address
{
  result = self->_address;
  if (!result)
  {
    result = AddressForBTDevice(self->_device);
    self->_address = result;
  }

  return result;
}

- (BluetoothDevice)initWithDevice:(BTDeviceImpl *)device address:(id)address
{
  v9.receiver = self;
  v9.super_class = BluetoothDevice;
  v6 = [(BluetoothDevice *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(BluetoothDevice *)v6 setDevice:device];
    v7->_address = address;
    v7->_connectingServiceMask = 0;
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BluetoothDevice;
  [(BluetoothDevice *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v5[1] = [(NSString *)self->_name copyWithZone:zone];
  v5[3] = [(NSString *)self->_address copyWithZone:zone];
  [v5 setDevice:self->_device];
  return v5;
}

- (int64_t)compare:(id)compare
{
  name = [(BluetoothDevice *)self name];
  name2 = [compare name];

  return [name compare:name2 options:1];
}

- (void)setDevice:(BTDeviceImpl *)device
{
  if (self->_device != device)
  {
    self->_device = device;
  }
}

- (id)name
{
  v23 = *MEMORY[0x277D85DE8];
  name = self->_name;
  if (!name)
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    if (BTDeviceGetName() || (v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:&v7]) == 0)
    {
      if (BTDeviceGetDefaultName())
      {
        return [(BluetoothDevice *)self address:v7];
      }

      else
      {
        return [MEMORY[0x277CCACA8] stringWithUTF8String:&v7];
      }
    }

    else
    {
      name = v5;
      self->_name = v5;
    }
  }

  return name;
}

- (id)productName
{
  v22 = *MEMORY[0x277D85DE8];
  productName = self->_productName;
  if (!productName)
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v6 = 0u;
    if (BTDeviceGetProductName())
    {
      return [(BluetoothDevice *)self address:v6];
    }

    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:&v6];
    if (!v4)
    {
      return [(BluetoothDevice *)self address:v6];
    }

    else
    {
      productName = v4;
      self->_productName = v4;
    }
  }

  return productName;
}

- (int)type
{
  if (BTDeviceGetDeviceType())
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

- (unsigned)majorClass
{
  if (BTDeviceGetDeviceClass())
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

- (unsigned)minorClass
{
  if (BTDeviceGetDeviceClass())
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

- (unsigned)vendorId
{
  if (BTDeviceGetDeviceId())
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

- (unsigned)vendorIdSrc
{
  if (BTDeviceGetDeviceId())
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

- (unsigned)productId
{
  if (BTDeviceGetDeviceId())
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

- (BOOL)supportsBatteryLevel
{
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  return BTAccessoryManagerGetDeviceBatteryLevel() == 0;
}

- (int)batteryLevel
{
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  if (BTAccessoryManagerGetDeviceBatteryLevel())
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

- (BOOL)batteryStatus:(id *)status
{
  if (status)
  {
    [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
    [(BluetoothDevice *)self device];
    LOBYTE(v4) = BTAccessoryManagerGetDeviceBatteryStatus() == 0;
  }

  else
  {
    v5 = sharedBluetoothManagerLogComponent(self, a2);
    v4 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (v4)
    {
      [BluetoothDevice batteryStatus:];
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (int)primaryBudSide:(int *)side
{
  _accessoryManager = [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  device = [(BluetoothDevice *)self device];

  return MEMORY[0x282186408](_accessoryManager, device, side);
}

- (BOOL)setIsHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v14 = *MEMORY[0x277D85DE8];
  v5 = sharedBluetoothManagerLogComponent(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "no";
    if (hiddenCopy)
    {
      v6 = "yes";
    }

    v12 = 136315138;
    v13 = v6;
    _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_INFO, "Set isHidden : %s", &v12, 0xCu);
  }

  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  IsHidden = BTAccessoryManagerSetIsHidden();
  v9 = IsHidden;
  if (IsHidden)
  {
    v10 = sharedBluetoothManagerLogComponent(IsHidden, v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice setIsHidden:];
    }
  }

  return v9 == 0;
}

- (BOOL)inEarDetectEnabled
{
  v11 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  v3 = BTAccessoryManagerGetInEarDetectionEnable();
  v4 = v3;
  v6 = sharedBluetoothManagerLogComponent(v3, v5);
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice inEarDetectEnabled];
    }

    return 1;
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v10 = 1;
      _os_log_impl(&dword_241BC5000, v7, OS_LOG_TYPE_INFO, "inEarDetectEnabled : %d", buf, 8u);
    }

    return 1;
  }
}

- (BOOL)setInEarDetectEnabled:(BOOL)enabled
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = enabled << 31 >> 31;
  v5 = sharedBluetoothManagerLogComponent(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11[0] = 67109120;
    v11[1] = v4;
    _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_INFO, "Set inEarDetectEnabled : %d", v11, 8u);
  }

  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  v6 = BTAccessoryManagerSetInEarDetectionEnable();
  v8 = v6;
  if (v6)
  {
    v9 = sharedBluetoothManagerLogComponent(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice setInEarDetectEnabled:];
    }
  }

  return v8 == 0;
}

- (BOOL)setSpatialAudioAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  v12 = *MEMORY[0x277D85DE8];
  v5 = sharedBluetoothManagerLogComponent(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = allowedCopy;
    _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_DEFAULT, "Set setSpatialAudioAllowed : %d", v11, 8u);
  }

  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  v6 = BTAccessoryManagerSpatialAudioAllowed();
  v8 = v6;
  if (v6)
  {
    v9 = sharedBluetoothManagerLogComponent(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice setSpatialAudioAllowed:];
    }
  }

  return v8 == 0;
}

- (BOOL)spatialAudioAllowed
{
  v12 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  SpatialAudioAllowed = BTAccessoryManagerGetSpatialAudioAllowed();
  v4 = SpatialAudioAllowed;
  v6 = sharedBluetoothManagerLogComponent(SpatialAudioAllowed, v5);
  v7 = v6;
  if (v4)
  {
    v8 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (v8)
    {
      [BluetoothDevice spatialAudioAllowed];
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v11 = 0;
      _os_log_impl(&dword_241BC5000, v7, OS_LOG_TYPE_INFO, "Spatial Audio User selection : %d", buf, 8u);
    }

    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)spatialAudioActive
{
  v12 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  SpatialAudioActive = BTAccessoryManagerGetSpatialAudioActive();
  v4 = SpatialAudioActive;
  v6 = sharedBluetoothManagerLogComponent(SpatialAudioActive, v5);
  v7 = v6;
  if (v4)
  {
    v8 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (v8)
    {
      [BluetoothDevice spatialAudioAllowed];
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v11 = 0;
      _os_log_impl(&dword_241BC5000, v7, OS_LOG_TYPE_INFO, "Spatial Audio Active  : %d", buf, 8u);
    }

    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)setSpatialAudioMode:(unsigned __int8)mode
{
  modeCopy = mode;
  v12 = *MEMORY[0x277D85DE8];
  v5 = sharedBluetoothManagerLogComponent(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11[0] = 67109120;
    v11[1] = modeCopy;
    _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_INFO, "Set SpatialAudioMode : %d", v11, 8u);
  }

  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  v6 = BTAccessoryManagerSpatialAudioConfig();
  v8 = v6;
  if (v6)
  {
    v9 = sharedBluetoothManagerLogComponent(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice setSpatialAudioMode:];
    }
  }

  return v8 == 0;
}

- (unsigned)spatialAudioMode
{
  v14 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  SpatialAudioConfig = BTAccessoryManagerGetSpatialAudioConfig();
  v4 = SpatialAudioConfig;
  v6 = sharedBluetoothManagerLogComponent(SpatialAudioConfig, v5);
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice spatialAudioMode];
    }

    return 0;
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v11 = 255;
      v12 = 1024;
      v13 = -1;
      _os_log_impl(&dword_241BC5000, v7, OS_LOG_TYPE_DEFAULT, "Spatial Audio : %d Head Tracking %d", buf, 0xEu);
    }

    return -1;
  }
}

- (BOOL)setSpatialAudioConfig:(id)config spatialMode:(int)mode headTracking:(BOOL)tracking
{
  trackingCopy = tracking;
  v21 = *MEMORY[0x277D85DE8];
  v9 = sharedBluetoothManagerLogComponent(self, a2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412802;
    configCopy = config;
    v17 = 1024;
    modeCopy = mode;
    v19 = 1024;
    v20 = trackingCopy;
    _os_log_impl(&dword_241BC5000, v9, OS_LOG_TYPE_DEFAULT, "set Spatial Audio Config : [%@] %d head Tracking %d", &v15, 0x18u);
  }

  if (!config)
  {
    goto LABEL_7;
  }

  [config UTF8String];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  v10 = BTAccessoryManagerSpatialAudioConfig();
  if (!v10)
  {
    LOBYTE(v13) = 1;
    return v13;
  }

  v12 = sharedBluetoothManagerLogComponent(v10, v11);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
  if (v13)
  {
    [BluetoothDevice setSpatialAudioMode:];
LABEL_7:
    LOBYTE(v13) = 0;
  }

  return v13;
}

- (BOOL)headTrackingAvailable
{
  v11 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  HeadphoneFeatureValue = BTAccessoryManagerGetHeadphoneFeatureValue();
  v4 = HeadphoneFeatureValue;
  v6 = sharedBluetoothManagerLogComponent(HeadphoneFeatureValue, v5);
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice headTrackingAvailable];
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v10 = 1;
    _os_log_impl(&dword_241BC5000, v7, OS_LOG_TYPE_DEFAULT, "HeadtrackingAvailable - %d", buf, 8u);
  }

  return 1;
}

- (BOOL)spatialAudioConfig:(id)config spatialMode:(int *)mode headTracking:(BOOL *)tracking
{
  v23 = *MEMORY[0x277D85DE8];
  *mode = 255;
  if (!config)
  {
    goto LABEL_5;
  }

  [config UTF8String];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  SpatialAudioConfig = BTAccessoryManagerGetSpatialAudioConfig();
  if (SpatialAudioConfig)
  {
    v11 = sharedBluetoothManagerLogComponent(SpatialAudioConfig, v10);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (v12)
    {
      [BluetoothDevice spatialAudioMode];
LABEL_5:
      LOBYTE(v12) = 0;
    }
  }

  else
  {
    *tracking = 1;
    v13 = sharedBluetoothManagerLogComponent(SpatialAudioConfig, v10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *mode;
      v15 = *tracking;
      *buf = 138412802;
      configCopy = config;
      v19 = 1024;
      v20 = v14;
      v21 = 1024;
      v22 = v15;
      _os_log_impl(&dword_241BC5000, v13, OS_LOG_TYPE_DEFAULT, "get SpatialAudio Config : [%@] %d Head Tracking %d", buf, 0x18u);
    }

    LOBYTE(v12) = 1;
  }

  return v12;
}

- (BOOL)setSmartRouteMode:(unsigned __int8)mode
{
  modeCopy = mode;
  v12 = *MEMORY[0x277D85DE8];
  v5 = sharedBluetoothManagerLogComponent(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11[0] = 67109120;
    v11[1] = modeCopy;
    _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_INFO, "Set smartRouteMode : %d", v11, 8u);
  }

  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  v6 = BTAccessoryManagerSmartRouteMode();
  v8 = v6;
  if (v6)
  {
    v9 = sharedBluetoothManagerLogComponent(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice setSmartRouteMode:];
    }
  }

  return v8 == 0;
}

- (unsigned)smartRouteMode
{
  v11 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  SmartRouteMode = BTAccessoryManagerGetSmartRouteMode();
  v4 = SmartRouteMode;
  v6 = sharedBluetoothManagerLogComponent(SmartRouteMode, v5);
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice smartRouteMode];
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v10 = "Manual";
    _os_log_impl(&dword_241BC5000, v7, OS_LOG_TYPE_INFO, "smart Routing : %s", buf, 0xCu);
  }

  return 2;
}

- (BOOL)smartRouteSupport
{
  v9 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  SmartRouteSupport = BTAccessoryManagerGetSmartRouteSupport();
  v5 = sharedBluetoothManagerLogComponent(SmartRouteSupport, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "NOT Supported";
    _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_INFO, "Smart Routing : %s", buf, 0xCu);
  }

  return 0;
}

- (BOOL)inEarStatusPrimary:(int *)primary secondary:(int *)secondary
{
  v18 = *MEMORY[0x277D85DE8];
  *primary = 3;
  *secondary = 3;
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  v7 = BTAccessoryManagerGetInEarStatus();
  v8 = v7;
  v10 = sharedBluetoothManagerLogComponent(v7, v9);
  v11 = v10;
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice inEarStatusPrimary:secondary:];
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *primary;
    v13 = *secondary;
    v15[0] = 67109376;
    v15[1] = v12;
    v16 = 1024;
    v17 = v13;
    _os_log_impl(&dword_241BC5000, v11, OS_LOG_TYPE_DEFAULT, "Retrieved inEarStatus Primary : %u, Secondary : %u", v15, 0xEu);
  }

  return v8 == 0;
}

- (unsigned)SendSetupCommand:(unsigned __int8)command
{
  if (command == 3)
  {
    v4 = sharedBluetoothManagerLogComponent(self, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      v5 = "SendSetupCommand Stop";
      v6 = &v8;
      goto LABEL_7;
    }

LABEL_8:
    [+[BluetoothManager _accessoryManager:v8]];
    [(BluetoothDevice *)self device];
    return BTAccessoryManagerSetupCommand();
  }

  if (command == 1)
  {
    v4 = sharedBluetoothManagerLogComponent(self, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 0;
      v5 = "SendSetupCommand Start";
      v6 = &v9;
LABEL_7:
      _os_log_impl(&dword_241BC5000, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  return 0;
}

- (unsigned)micMode
{
  v11 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  MicMode = BTAccessoryManagerGetMicMode();
  v4 = MicMode;
  v6 = sharedBluetoothManagerLogComponent(MicMode, v5);
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice micMode];
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v10 = 0;
    _os_log_impl(&dword_241BC5000, v7, OS_LOG_TYPE_INFO, "micMode : %d", buf, 8u);
  }

  return 0;
}

- (BOOL)setMicMode:(unsigned int)mode
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = sharedBluetoothManagerLogComponent(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11[0] = 67109120;
    v11[1] = mode;
    _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_INFO, "Set micMode : %d", v11, 8u);
  }

  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  v6 = BTAccessoryManagerSetMicMode();
  v8 = v6;
  if (v6)
  {
    v9 = sharedBluetoothManagerLogComponent(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice setMicMode:];
    }
  }

  return v8 == 0;
}

- (unsigned)doubleTapAction
{
  v10 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  DoubleTapAction = BTAccessoryManagerGetDoubleTapAction();
  if (DoubleTapAction)
  {
    v5 = sharedBluetoothManagerLogComponent(DoubleTapAction, v4);
    DoubleTapAction = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (DoubleTapAction)
    {
      [BluetoothDevice doubleTapAction];
    }
  }

  v6 = sharedBluetoothManagerLogComponent(DoubleTapAction, v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v9 = 1;
    _os_log_impl(&dword_241BC5000, v6, OS_LOG_TYPE_INFO, "doubleTapAction : %d", buf, 8u);
  }

  return 1;
}

- (BOOL)setDoubleTapAction:(unsigned int)action
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = sharedBluetoothManagerLogComponent(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11[0] = 67109120;
    v11[1] = action;
    _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_INFO, "Set doubleTapAction : %d", v11, 8u);
  }

  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  v6 = BTAccessoryManagerSetDoubleTapAction();
  v8 = v6;
  if (v6)
  {
    v9 = sharedBluetoothManagerLogComponent(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice setDoubleTapAction:];
    }
  }

  return v8 == 0;
}

- (unsigned)doubleTapCapability
{
  v10 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  DoubleTapCapability = BTAccessoryManagerGetDoubleTapCapability();
  if (DoubleTapCapability)
  {
    v5 = sharedBluetoothManagerLogComponent(DoubleTapCapability, v4);
    DoubleTapCapability = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (DoubleTapCapability)
    {
      [BluetoothDevice doubleTapCapability];
    }
  }

  v6 = sharedBluetoothManagerLogComponent(DoubleTapCapability, v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v9 = 0;
    _os_log_impl(&dword_241BC5000, v6, OS_LOG_TYPE_INFO, "doubleTapCapability : %d", buf, 8u);
  }

  return 0;
}

- (BOOL)featureCapability:(int)capability
{
  v14 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  FeatureCapability = BTAccessoryManagerGetFeatureCapability();
  if (FeatureCapability)
  {
    v7 = sharedBluetoothManagerLogComponent(FeatureCapability, v6);
    FeatureCapability = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (FeatureCapability)
    {
      [BluetoothDevice featureCapability:];
    }
  }

  v8 = sharedBluetoothManagerLogComponent(FeatureCapability, v6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    capabilityCopy = capability;
    v12 = 1024;
    v13 = 0;
    _os_log_impl(&dword_241BC5000, v8, OS_LOG_TYPE_INFO, "%d capability : %d", buf, 0xEu);
  }

  return 0;
}

- (unsigned)doubleTapActionEx:(unsigned int *)ex rightAction:(unsigned int *)action
{
  v18 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  DoubleTapAction = BTAccessoryManagerGetDoubleTapActionEx();
  v9 = DoubleTapAction;
  if (DoubleTapAction)
  {
    v10 = sharedBluetoothManagerLogComponent(DoubleTapAction, v8);
    DoubleTapAction = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (DoubleTapAction)
    {
      [BluetoothDevice doubleTapActionEx:rightAction:];
    }
  }

  v11 = sharedBluetoothManagerLogComponent(DoubleTapAction, v8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = *ex;
    v13 = *action;
    v15[0] = 67109376;
    v15[1] = v12;
    v16 = 1024;
    v17 = v13;
    _os_log_impl(&dword_241BC5000, v11, OS_LOG_TYPE_INFO, "doubleTapActionEx Left : %d, Right : %d", v15, 0xEu);
  }

  return v9;
}

- (BOOL)setDoubleTapActionEx:(unsigned int)ex rightAction:(unsigned int)action
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = sharedBluetoothManagerLogComponent(self, a2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v13[0] = 67109376;
    v13[1] = ex;
    v14 = 1024;
    actionCopy = action;
    _os_log_impl(&dword_241BC5000, v7, OS_LOG_TYPE_INFO, "Set doubleTapActionEx Left : %d, Right : %d", v13, 0xEu);
  }

  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  v8 = BTAccessoryManagerSetDoubleTapActionEx();
  v10 = v8;
  if (v8)
  {
    v11 = sharedBluetoothManagerLogComponent(v8, v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice setDoubleTapActionEx:rightAction:];
    }
  }

  return v10 == 0;
}

- (unsigned)listeningMode
{
  v10 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  ControlCommand = BTAccessoryManagerGetControlCommand();
  if (ControlCommand)
  {
    v5 = sharedBluetoothManagerLogComponent(ControlCommand, v4);
    ControlCommand = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (ControlCommand)
    {
      [BluetoothDevice listeningMode];
    }
  }

  v6 = sharedBluetoothManagerLogComponent(ControlCommand, v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v9 = 0;
    _os_log_impl(&dword_241BC5000, v6, OS_LOG_TYPE_INFO, "listening mode : %d", buf, 8u);
  }

  return 0;
}

- (BOOL)setListeningMode:(unsigned int)mode
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = sharedBluetoothManagerLogComponent(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11[0] = 67109120;
    v11[1] = mode;
    _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_INFO, "Set listening mode : %d", v11, 8u);
  }

  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  v6 = BTAccessoryManagerSendControlCommand();
  v8 = v6;
  if (v6)
  {
    v9 = sharedBluetoothManagerLogComponent(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice setListeningMode:];
    }
  }

  return v8 == 0;
}

- (BOOL)setHeartRateMonitorEnabled:(unsigned int)enabled
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = sharedBluetoothManagerLogComponent(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11[0] = 67109120;
    v11[1] = enabled;
    _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_INFO, "Set Heart Rate Monitor State : %d", v11, 8u);
  }

  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  v6 = BTAccessoryManagerSendControlCommand();
  v8 = v6;
  if (v6)
  {
    v9 = sharedBluetoothManagerLogComponent(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice setHeartRateMonitorEnabled:];
    }
  }

  return v8 == 0;
}

- (unsigned)getHeartRateMonitorEnabled
{
  v10 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  ControlCommand = BTAccessoryManagerGetControlCommand();
  if (ControlCommand)
  {
    v5 = sharedBluetoothManagerLogComponent(ControlCommand, v4);
    ControlCommand = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (ControlCommand)
    {
      [BluetoothDevice getHeartRateMonitorEnabled];
    }
  }

  v6 = sharedBluetoothManagerLogComponent(ControlCommand, v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v9 = 0;
    _os_log_impl(&dword_241BC5000, v6, OS_LOG_TYPE_INFO, "HRM state : %d", buf, 8u);
  }

  return 0;
}

- (unsigned)listeningModeConfigs
{
  v10 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  ControlCommand = BTAccessoryManagerGetControlCommand();
  if (ControlCommand)
  {
    v5 = sharedBluetoothManagerLogComponent(ControlCommand, v4);
    ControlCommand = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (ControlCommand)
    {
      [BluetoothDevice listeningModeConfigs];
    }
  }

  v6 = sharedBluetoothManagerLogComponent(ControlCommand, v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v9 = 0;
    _os_log_impl(&dword_241BC5000, v6, OS_LOG_TYPE_INFO, "listening mode configs : %d", buf, 8u);
  }

  return 0;
}

- (BOOL)setListeningModeConfigs:(unsigned int)configs
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = sharedBluetoothManagerLogComponent(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11[0] = 67109120;
    v11[1] = configs;
    _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_INFO, "Set listening mode configs : %d", v11, 8u);
  }

  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  v6 = BTAccessoryManagerSendControlCommand();
  v8 = v6;
  if (v6)
  {
    v9 = sharedBluetoothManagerLogComponent(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice setListeningModeConfigs:];
    }
  }

  return v8 == 0;
}

- (int)singleClickMode
{
  v10 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  ControlCommand = BTAccessoryManagerGetControlCommand();
  if (ControlCommand)
  {
    v5 = sharedBluetoothManagerLogComponent(ControlCommand, v4);
    ControlCommand = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (ControlCommand)
    {
      [BluetoothDevice singleClickMode];
    }
  }

  v6 = sharedBluetoothManagerLogComponent(ControlCommand, v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v9 = 0;
    _os_log_impl(&dword_241BC5000, v6, OS_LOG_TYPE_INFO, "single click mode : %d", buf, 8u);
  }

  return 0;
}

- (BOOL)setSingleClickMode:(int)mode
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = sharedBluetoothManagerLogComponent(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11[0] = 67109120;
    v11[1] = mode;
    _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_INFO, "Set single click mode : %d", v11, 8u);
  }

  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  v6 = BTAccessoryManagerSendControlCommand();
  v8 = v6;
  if (v6)
  {
    v9 = sharedBluetoothManagerLogComponent(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice setSingleClickMode:];
    }
  }

  return v8 == 0;
}

- (int)doubleClickMode
{
  v10 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  ControlCommand = BTAccessoryManagerGetControlCommand();
  if (ControlCommand)
  {
    v5 = sharedBluetoothManagerLogComponent(ControlCommand, v4);
    ControlCommand = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (ControlCommand)
    {
      [BluetoothDevice doubleClickMode];
    }
  }

  v6 = sharedBluetoothManagerLogComponent(ControlCommand, v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v9 = 0;
    _os_log_impl(&dword_241BC5000, v6, OS_LOG_TYPE_INFO, "double click mode : %d", buf, 8u);
  }

  return 0;
}

- (BOOL)setDoubleClickMode:(int)mode
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = sharedBluetoothManagerLogComponent(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11[0] = 67109120;
    v11[1] = mode;
    _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_INFO, "Set double click mode : %d", v11, 8u);
  }

  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  v6 = BTAccessoryManagerSendControlCommand();
  v8 = v6;
  if (v6)
  {
    v9 = sharedBluetoothManagerLogComponent(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice setDoubleClickMode:];
    }
  }

  return v8 == 0;
}

- (unsigned)clickHoldModes:(id *)modes
{
  v23 = *MEMORY[0x277D85DE8];
  *&modes->var0 = 0;
  *&modes->var2 = 0;
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  ControlCommand = BTAccessoryManagerGetControlCommand();
  v7 = ControlCommand;
  if (ControlCommand)
  {
    v8 = sharedBluetoothManagerLogComponent(ControlCommand, v6);
    ControlCommand = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (ControlCommand)
    {
      [BluetoothDevice clickHoldModes:];
    }
  }

  modes->var0 = 0;
  *&modes->var1 = vand_s8(vshl_u32(vdup_n_s32(0), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL);
  modes->var3 = 0;
  v9 = sharedBluetoothManagerLogComponent(ControlCommand, v6);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    var0 = modes->var0;
    var1 = modes->var1;
    var2 = modes->var2;
    var3 = modes->var3;
    *buf = 67109888;
    v16 = var0;
    v17 = 1024;
    v18 = var1;
    v19 = 1024;
    v20 = var2;
    v21 = 1024;
    v22 = var3;
    _os_log_impl(&dword_241BC5000, v9, OS_LOG_TYPE_INFO, "Click Hold Modes: right 0x%02X, left 0x%02X, prevRightMode 0x%02X, prevLeftMode 0x%02X", buf, 0x1Au);
  }

  return v7;
}

- (unsigned)clickHoldMode:(int *)mode rightAction:(int *)action
{
  v19 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  ControlCommand = BTAccessoryManagerGetControlCommand();
  v9 = ControlCommand;
  if (ControlCommand)
  {
    v10 = sharedBluetoothManagerLogComponent(ControlCommand, v8);
    ControlCommand = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (ControlCommand)
    {
      [BluetoothDevice clickHoldModes:];
    }
  }

  *mode = 0;
  *action = 0;
  v11 = sharedBluetoothManagerLogComponent(ControlCommand, v8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = *mode;
    v13 = *action;
    *buf = 67109376;
    v16 = v12;
    v17 = 1024;
    v18 = v13;
    _os_log_impl(&dword_241BC5000, v11, OS_LOG_TYPE_INFO, "click hold leftMode : %d rightMode : %d", buf, 0xEu);
  }

  return v9;
}

- (BOOL)setClickHoldMode:(int)mode rightMode:(int)rightMode
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = sharedBluetoothManagerLogComponent(self, a2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v13[0] = 67109376;
    v13[1] = mode;
    v14 = 1024;
    rightModeCopy = rightMode;
    _os_log_impl(&dword_241BC5000, v7, OS_LOG_TYPE_INFO, "Set click hold leftMode : %d rightMode : %d", v13, 0xEu);
  }

  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  v8 = BTAccessoryManagerSendControlCommand();
  v10 = v8;
  if (v8)
  {
    v11 = sharedBluetoothManagerLogComponent(v8, v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice setClickHoldMode:rightMode:];
    }
  }

  return v10 == 0;
}

- (BOOL)setClickHoldModes:(id)modes
{
  var2 = modes.var2;
  var0 = modes.var0;
  v21 = *MEMORY[0x277D85DE8];
  var1 = modes.var1;
  var3 = modes.var3;
  v8 = sharedBluetoothManagerLogComponent(self, a2);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v14[0] = 67109888;
    v14[1] = var1;
    v15 = 1024;
    v16 = var3;
    v17 = 1024;
    v18 = var0;
    v19 = 1024;
    v20 = var2;
    _os_log_impl(&dword_241BC5000, v8, OS_LOG_TYPE_INFO, "Set click hold currentLeftMode : %d previousLeftMode : %d currentRightMode : %d previousRightMode %d", v14, 0x1Au);
  }

  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  v9 = BTAccessoryManagerSendControlCommand();
  v11 = v9;
  if (v9)
  {
    v12 = sharedBluetoothManagerLogComponent(v9, v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice setClickHoldMode:rightMode:];
    }
  }

  return v11 == 0;
}

- (int)crownRotationDirection
{
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  ControlCommand = BTAccessoryManagerGetControlCommand();
  if (ControlCommand)
  {
    v5 = sharedBluetoothManagerLogComponent(ControlCommand, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice crownRotationDirection];
    }
  }

  return 0;
}

- (BOOL)setCrownRotationDirection:(int)direction
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = sharedBluetoothManagerLogComponent(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11[0] = 67109120;
    v11[1] = direction;
    _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_INFO, "Set crown rotation dir : %d", v11, 8u);
  }

  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  v6 = BTAccessoryManagerSendControlCommand();
  v8 = v6;
  if (v6)
  {
    v9 = sharedBluetoothManagerLogComponent(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice setCrownRotationDirection:];
    }
  }

  return v8 == 0;
}

- (unsigned)chimeVolume
{
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  ControlCommand = BTAccessoryManagerGetControlCommand();
  if (ControlCommand)
  {
    v5 = sharedBluetoothManagerLogComponent(ControlCommand, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice chimeVolume];
    }
  }

  return 0;
}

- (BOOL)setChimeVolume:(unsigned int)volume
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = sharedBluetoothManagerLogComponent(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11[0] = 67109120;
    v11[1] = volume;
    _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_INFO, "Set chime volume : %d", v11, 8u);
  }

  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  v6 = BTAccessoryManagerSendControlCommand();
  v8 = v6;
  if (v6)
  {
    v9 = sharedBluetoothManagerLogComponent(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice setChimeVolume:];
    }
  }

  return v8 == 0;
}

- (int)autoAnswerMode
{
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  ControlCommand = BTAccessoryManagerGetControlCommand();
  if (ControlCommand)
  {
    v5 = sharedBluetoothManagerLogComponent(ControlCommand, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice autoAnswerMode];
    }
  }

  return 0;
}

- (BOOL)setAutoAnswerMode:(int)mode
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = sharedBluetoothManagerLogComponent(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11[0] = 67109120;
    v11[1] = mode;
    _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_INFO, "Set auto answer mode : %d", v11, 8u);
  }

  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  v6 = BTAccessoryManagerSendControlCommand();
  v8 = v6;
  if (v6)
  {
    v9 = sharedBluetoothManagerLogComponent(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice setAutoAnswerMode:];
    }
  }

  return v8 == 0;
}

- (int)accessorySettingFeatureBitMask
{
  v10 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  SettingFeatureBitMask = BTAccessoryManagerGetSettingFeatureBitMask();
  if (SettingFeatureBitMask)
  {
    v5 = sharedBluetoothManagerLogComponent(SettingFeatureBitMask, v4);
    SettingFeatureBitMask = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (SettingFeatureBitMask)
    {
      [BluetoothDevice accessorySettingFeatureBitMask];
    }
  }

  v6 = sharedBluetoothManagerLogComponent(SettingFeatureBitMask, v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v9 = 0;
    _os_log_impl(&dword_241BC5000, v6, OS_LOG_TYPE_INFO, "Accessory feature bitmask : %x", buf, 8u);
  }

  return 0;
}

- (BOOL)pairedDeviceNameUpdated
{
  v16 = *MEMORY[0x277D85DE8];
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  if (BTDeviceGetName())
  {
LABEL_2:
    LOBYTE(v3) = 0;
    return v3;
  }

  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:v14];
  if (!v3)
  {
    return v3;
  }

  v4 = v3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0 || (isKindOfClass = objc_opt_respondsToSelector(), (isKindOfClass & 1) == 0))
  {
    v8 = sharedBluetoothManagerLogComponent(isKindOfClass, v6);
    LODWORD(v3) = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (!v3)
    {
      return v3;
    }

    [BluetoothDevice pairedDeviceNameUpdated];
    goto LABEL_2;
  }

  v7 = sharedBluetoothManagerLogComponent(isKindOfClass, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    v11 = v4;
    v12 = 2048;
    v13 = [v4 length];
    _os_log_impl(&dword_241BC5000, v7, OS_LOG_TYPE_INFO, "Magic paired device name updated to %@ (%lu)", &v10, 0x16u);
  }

  [(BluetoothDevice *)self _clearName];
  self->_name = [v4 copy];
  LOBYTE(v3) = 1;
  return v3;
}

- (id)accessoryInfo
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = malloc_type_malloc(0x1F40uLL, 0x86D86027uLL);
  if (!v3)
  {
    return MEMORY[0x277CBEC10];
  }

  v4 = v3;
  v18 = 0;
  v19 = 0;
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  AccessoryInfo = BTAccessoryManagerGetAccessoryInfo();
  if (AccessoryInfo || v19 == 0)
  {
    v9 = 0;
    v8 = 0;
  }

  else
  {
    v7 = [MEMORY[0x277CBEA90] dataWithBytes:v4 length:?];
    v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:&v18];
    v9 = v18 != 0;
  }

  free(v4);
  if (!AccessoryInfo && !v9)
  {
    v15 = 0;
  }

  else
  {
    v13 = sharedBluetoothManagerLogComponent(v10, v11);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    v15 = v18;
    if (v14)
    {
      *buf = 67109378;
      v21 = AccessoryInfo;
      v22 = 2112;
      v23 = v18;
      _os_log_error_impl(&dword_241BC5000, v13, OS_LOG_TYPE_ERROR, "BTAccessoryManagerGetAccessoryInfo result %d, JSON error %@", buf, 0x12u);
      v15 = v18;
    }
  }

  v16 = !AccessoryInfo && v15 == 0;
  if (v16 && [v8 count])
  {
    return [v8 copy];
  }

  else
  {
    return MEMORY[0x277CBEC10];
  }
}

- (BOOL)getAACPCapabilityBit:(int)bit
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = malloc_type_malloc(0x3E8uLL, 0x6CC44251uLL);
  if (v5)
  {
    v6 = v5;
    [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
    [(BluetoothDevice *)self device];
    AACPCapabilityBits = BTAccessoryManagerGetAACPCapabilityBits();
    v9 = sharedBluetoothManagerLogComponent(AACPCapabilityBits, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      bitCopy = bit;
      v13 = 1024;
      v14 = 0;
      _os_log_impl(&dword_241BC5000, v9, OS_LOG_TYPE_DEFAULT, "getAACPCapabilityBit: bit %d retval %d", buf, 0xEu);
    }

    free(v6);
  }

  return 0;
}

- (id)getAACPCapabilityBits
{
  result = malloc_type_malloc(0x3E8uLL, 0xD4C12529uLL);
  if (result)
  {
    v4 = result;
    [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
    [(BluetoothDevice *)self device];
    BTAccessoryManagerGetAACPCapabilityBits();
    free(v4);
    return [0 copy];
  }

  return result;
}

- (unsigned)getAACPCapabilityInteger:(int)integer
{
  if (integer > 0xFF)
  {
    return 3;
  }

  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  AACPCapabilityInteger = BTAccessoryManagerGetAACPCapabilityInteger();
  if (AACPCapabilityInteger)
  {
    v7 = sharedBluetoothManagerLogComponent(AACPCapabilityInteger, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice getAACPCapabilityInteger:];
    }
  }

  return 0;
}

- (BOOL)isAccessory
{
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  BTAccessoryManagerIsAccessory();
  return 0;
}

- (BOOL)isServiceSupported:(unsigned int)supported
{
  v15 = *MEMORY[0x277D85DE8];
  SupportedServices = BTDeviceGetSupportedServices();
  v5 = SupportedServices;
  v7 = sharedBluetoothManagerLogComponent(SupportedServices, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 67109632;
    supportedCopy = supported;
    v11 = 1024;
    v12 = 0;
    v13 = 1024;
    v14 = v5;
    _os_log_impl(&dword_241BC5000, v7, OS_LOG_TYPE_INFO, "Asking for service 0x%x supported, services 0x%x, result %d", buf, 0x14u);
  }

  return 0;
}

- (id)getServiceSetting:(unsigned int)setting key:(id)key
{
  v6 = *MEMORY[0x277D85DE8];
  [key UTF8String];
  if (BTDeviceGetServiceSettings())
  {
    return 0;
  }

  else
  {
    return [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v5];
  }
}

- (void)setServiceSetting:(unsigned int)setting key:(id)key value:(id)value
{
  [key UTF8String];
  [value UTF8String];
  v7 = BTDeviceSetServiceSettings();
  if (v7)
  {
    v9 = sharedBluetoothManagerLogComponent(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice setServiceSetting:v9 key:? value:?];
    }
  }
}

- (void)connect
{
  v3 = +[BluetoothManager sharedInstance];

  [(BluetoothManager *)v3 connectDevice:self];
}

- (void)connectWithServices:(unsigned int)services
{
  v3 = *&services;
  v5 = +[BluetoothManager sharedInstance];

  [(BluetoothManager *)v5 connectDevice:self withServices:v3];
}

- (void)disconnect
{
  v3 = +[BluetoothManager sharedInstance];

  [(BluetoothManager *)v3 disconnectDevice:self];
}

- (void)setPIN:(id)n
{
  v5 = +[BluetoothManager sharedInstance];

  [(BluetoothManager *)v5 setPincode:n forDevice:self];
}

- (void)acceptSSP:(int64_t)p
{
  v5 = +[BluetoothManager sharedInstance];

  [(BluetoothManager *)v5 acceptSSP:p forDevice:self];
}

- (void)unpair
{
  v3 = +[BluetoothManager sharedInstance];

  [(BluetoothManager *)v3 unpairDevice:self];
}

- (void)startVoiceCommand
{
  v3 = +[BluetoothManager sharedInstance];

  [(BluetoothManager *)v3 startVoiceCommand:self];
}

- (void)endVoiceCommand
{
  v3 = +[BluetoothManager sharedInstance];

  [(BluetoothManager *)v3 endVoiceCommand:self];
}

- ($9BEB610D0CE1B1EDC3D89DA2464F985F)syncSettings
{
  BTDeviceGetSyncSettings();
  v2 = vmovl_u16((*&vshl_u16((*&vdup_n_s16(0) & 0xFF00FF00FF00FFLL), 0xFFFFFFFDFFFEFFFCLL) & 0xFF01FF01FF01FF01));
  v3.i64[0] = v2.u32[0];
  v3.i64[1] = v2.u32[1];
  v4.i64[0] = 255;
  v4.i64[1] = 255;
  v5 = vandq_s8(v3, v4);
  v3.i64[0] = v2.u32[2];
  v3.i64[1] = v2.u32[3];
  v6 = vorrq_s8(vshlq_u64(v5, xmmword_241BD80B0), vshlq_u64(vandq_s8(v3, v4), xmmword_241BD80A0));
  return *&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL));
}

- (id)syncGroups
{
  v5 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  bzero(v4, 0x400uLL);
  BTDeviceGetGroups();
  return array;
}

- (BOOL)isAppleAudioDevice
{
  IsAppleAudioDevice = BTDeviceIsAppleAudioDevice();
  if (IsAppleAudioDevice)
  {
    NSLog(&cfstr_BtmFailedToChe.isa, IsAppleAudioDevice);
  }

  return 0;
}

- (BOOL)supportsHS
{
  v2 = BTDeviceSupportsHS();
  if (v2)
  {
    NSLog(&cfstr_BtmFailedToChe_0.isa, v2);
  }

  return 0;
}

- (BOOL)isProController
{
  IsProController = BTDeviceIsProController();
  if (IsProController)
  {
    NSLog(&cfstr_BtmFailedToChe_1.isa, IsProController);
  }

  return 0;
}

- (BOOL)setUserName:(id)name
{
  if (![(NSString *)self->_name isEqualToString:?])
  {
    [name cStringUsingEncoding:4];
    v5 = BTDeviceSetUserName();
    if (v5)
    {
      NSLog(&cfstr_BtmFailedToSet.isa, v5);
      return 0;
    }

    [(BluetoothDevice *)self _clearName];
    self->_name = [name copy];
  }

  return 1;
}

- (int)getLowSecurityStatus
{
  LowSecurityStatus = BTDeviceGetLowSecurityStatus();
  if (LowSecurityStatus)
  {
    NSLog(&cfstr_BtmFailedToChe_2.isa, LowSecurityStatus);
  }

  return 0;
}

- (int)getBehaviorForHIDDevice
{
  HIDDeviceBehavior = BTDeviceGetHIDDeviceBehavior();
  if (HIDDeviceBehavior)
  {
    v4 = sharedBluetoothManagerLogComponent(HIDDeviceBehavior, v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice getBehaviorForHIDDevice];
    }
  }

  return 0;
}

- (int)getStereoHFPSupport
{
  v10 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  StereoHFPSupport = BTAccessoryManagerGetStereoHFPSupport();
  if (StereoHFPSupport)
  {
    v5 = sharedBluetoothManagerLogComponent(StereoHFPSupport, v4);
    result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (result)
    {
      [BluetoothDevice getStereoHFPSupport];
      return 0;
    }
  }

  else
  {
    v7 = sharedBluetoothManagerLogComponent(StereoHFPSupport, v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v9 = "spatial not supported";
      _os_log_impl(&dword_241BC5000, v7, OS_LOG_TYPE_INFO, "Support for Stereo HFP : %s", buf, 0xCu);
    }

    return 0;
  }

  return result;
}

- (BOOL)getDeviceSoundProfileSupport
{
  v12 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  DeviceSoundProfileSupport = BTAccessoryManagerGetDeviceSoundProfileSupport();
  v4 = DeviceSoundProfileSupport;
  v6 = sharedBluetoothManagerLogComponent(DeviceSoundProfileSupport, v5);
  v7 = v6;
  if (v4)
  {
    v8 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (v8)
    {
      [BluetoothDevice getDeviceSoundProfileSupport];
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v11 = "NOT Supported";
      _os_log_impl(&dword_241BC5000, v7, OS_LOG_TYPE_INFO, "Accessory support for Spatial Profile: : %s", buf, 0xCu);
    }

    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)getDeviceSoundProfileAllowed
{
  v12 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  DeviceSoundProfileAllowed = BTAccessoryManagerGetDeviceSoundProfileAllowed();
  v4 = DeviceSoundProfileAllowed;
  v6 = sharedBluetoothManagerLogComponent(DeviceSoundProfileAllowed, v5);
  v7 = v6;
  if (v4)
  {
    v8 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (v8)
    {
      [BluetoothDevice getDeviceSoundProfileAllowed];
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v11 = "NOT Allowed";
      _os_log_impl(&dword_241BC5000, v7, OS_LOG_TYPE_INFO, "Accessory Allowed for Spatial Profile: %s", buf, 0xCu);
    }

    LOBYTE(v8) = 0;
  }

  return v8;
}

- (void)setDeviceSoundProfileAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  v12 = *MEMORY[0x277D85DE8];
  v5 = sharedBluetoothManagerLogComponent(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "NOT Allowed";
    if (allowedCopy)
    {
      v6 = "Allowed";
    }

    v10 = 136315138;
    v11 = v6;
    _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_INFO, "Accessory Allowed for Spatial Profile: %s", &v10, 0xCu);
  }

  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  v7 = BTAccessoryManagerSetDeviceSoundProfileAllowed();
  if (v7)
  {
    v9 = sharedBluetoothManagerLogComponent(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice getDeviceSoundProfileAllowed];
    }
  }
}

- (unsigned)getSpatialAudioPlatformSupport
{
  v11 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  SpatialAudioPlatformSupport = BTAccessoryManagerGetSpatialAudioPlatformSupport();
  v4 = SpatialAudioPlatformSupport;
  v6 = sharedBluetoothManagerLogComponent(SpatialAudioPlatformSupport, v5);
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice getSpatialAudioPlatformSupport];
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v10 = "NOT Supported";
    _os_log_impl(&dword_241BC5000, v7, OS_LOG_TYPE_INFO, "Platform Spatial Audio Support : %s", buf, 0xCu);
  }

  return 2;
}

- (int)getUserSelectedDeviceType
{
  if (BTDeviceGetUserSelectedDeviceType())
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

- (BOOL)setUserSelectedDeviceType:(int)type
{
  v3 = BTDeviceSetUserSelectedDeviceType();
  v4 = v3;
  if (v3)
  {
    NSLog(&cfstr_BtmFailedToSet_0.isa, v3);
  }

  return v4 == 0;
}

- (id)gyroInformation
{
  v13 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  GyroInformation = BTAccessoryManagerGetGyroInformation();
  if (GyroInformation)
  {
    v6 = sharedBluetoothManagerLogComponent(GyroInformation, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice gyroInformation];
    }
  }

  else
  {
    v7 = sharedBluetoothManagerLogComponent(GyroInformation, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v10 = dictionary;
      v11 = 1024;
      v12 = 0;
      _os_log_impl(&dword_241BC5000, v7, OS_LOG_TYPE_DEFAULT, "gyroInformation - Generated gyro information %@ from data with length %u", buf, 0x12u);
    }
  }

  return dictionary;
}

- (int)getHexDeviceAddress:(id *)address
{
  [(NSString *)self->_address UTF8String];

  return BTDeviceAddressFromString();
}

- (int)getDeviceColor:(unsigned int *)color
{
  _accessoryManager = [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  device = [(BluetoothDevice *)self device];

  return MEMORY[0x282186398](_accessoryManager, device, color);
}

- (BOOL)isGenuineAirPods
{
  v11 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  IsGenuineAirPods = BTAccessoryManagerIsGenuineAirPods();
  v4 = IsGenuineAirPods;
  v6 = sharedBluetoothManagerLogComponent(IsGenuineAirPods, v5);
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice isGenuineAirPods];
    }

    return 1;
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v10 = -1;
      _os_log_impl(&dword_241BC5000, v7, OS_LOG_TYPE_INFO, "Is Genuine AirPods : %d", buf, 8u);
    }

    return 1;
  }
}

- ($70344DAF05348A783186C1CF166707C1)getCallManagementConfig
{
  v7 = 0;
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  v3 = BTAccessoryManagerGetCallManagementConfig();
  if (v3)
  {
    v5 = sharedBluetoothManagerLogComponent(v3, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice getCallManagementConfig];
    }

    BYTE1(v7) = 0;
  }

  return (*(&v7 + 1) << 32);
}

- (BOOL)setCallConfig:(id)config
{
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  v4 = BTAccessoryManagerSendControlCommand();
  v6 = v4;
  if (v4)
  {
    v7 = sharedBluetoothManagerLogComponent(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice setCallConfig:];
    }
  }

  return v6 == 0;
}

- (unsigned)getDeviceAdaptiveVolumeMode
{
  v10 = *MEMORY[0x277D85DE8];
  HeadphoneFeatureValue = _os_feature_enabled_impl();
  if (HeadphoneFeatureValue && ([[BluetoothManager _accessoryManager] sharedInstance:HeadphoneFeatureValue = BTAccessoryManagerGetHeadphoneFeatureValue()])
  {
    v5 = sharedBluetoothManagerLogComponent(HeadphoneFeatureValue, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice getDeviceAdaptiveVolumeMode];
    }
  }

  else
  {
    v6 = sharedBluetoothManagerLogComponent(HeadphoneFeatureValue, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v9 = 0;
      _os_log_impl(&dword_241BC5000, v6, OS_LOG_TYPE_DEFAULT, "Adaptive Volume: Get Mode - %d", buf, 8u);
    }
  }

  return 0;
}

- (void)setDeviceAdaptiveVolumeMode:(int)mode
{
  modeCopy = mode;
  v12 = *MEMORY[0x277D85DE8];
  v5 = _os_feature_enabled_impl();
  if (v5)
  {
    v7 = sharedBluetoothManagerLogComponent(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 67109120;
      v11[1] = modeCopy;
      _os_log_impl(&dword_241BC5000, v7, OS_LOG_TYPE_DEFAULT, "Adaptive Volume: Set Mode - %d", v11, 8u);
    }

    [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
    [(BluetoothDevice *)self device];
    v8 = BTAccessoryManagerSendControlCommand();
    if (v8)
    {
      v10 = sharedBluetoothManagerLogComponent(v8, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [BluetoothDevice setDeviceAdaptiveVolumeMode:];
      }
    }
  }
}

- (BOOL)getAdaptiveVolumeSupport
{
  if (_os_feature_enabled_impl())
  {
    [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
    [(BluetoothDevice *)self device];
    HeadphoneFeatureValue = BTAccessoryManagerGetHeadphoneFeatureValue();
    if (HeadphoneFeatureValue)
    {
      v5 = sharedBluetoothManagerLogComponent(HeadphoneFeatureValue, v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [BluetoothDevice getAdaptiveVolumeSupport];
      }
    }
  }

  return 0;
}

- (unsigned)getAdaptiveVolumeMode
{
  v10 = *MEMORY[0x277D85DE8];
  HeadphoneFeatureValue = _os_feature_enabled_impl();
  if (HeadphoneFeatureValue && ([[BluetoothManager _accessoryManager] sharedInstance:HeadphoneFeatureValue = BTAccessoryManagerGetHeadphoneFeatureValue()])
  {
    v5 = sharedBluetoothManagerLogComponent(HeadphoneFeatureValue, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice getDeviceAdaptiveVolumeMode];
    }
  }

  else
  {
    v6 = sharedBluetoothManagerLogComponent(HeadphoneFeatureValue, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v9 = 0;
      _os_log_impl(&dword_241BC5000, v6, OS_LOG_TYPE_DEFAULT, "Adaptive Volume: Get Mode - %d", buf, 8u);
    }
  }

  return 0;
}

- (void)setAdaptiveVolumeMode:(int)mode
{
  modeCopy = mode;
  v12 = *MEMORY[0x277D85DE8];
  v5 = _os_feature_enabled_impl();
  if (v5)
  {
    v7 = sharedBluetoothManagerLogComponent(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 67109120;
      v11[1] = modeCopy;
      _os_log_impl(&dword_241BC5000, v7, OS_LOG_TYPE_DEFAULT, "Adaptive Volume: Set Mode - %d", v11, 8u);
    }

    [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
    [(BluetoothDevice *)self device];
    v8 = BTAccessoryManagerSendControlCommand();
    if (v8)
    {
      v10 = sharedBluetoothManagerLogComponent(v8, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [BluetoothDevice setDeviceAdaptiveVolumeMode:];
      }
    }
  }
}

- (BOOL)getAutoANCSupport
{
  if (_os_feature_enabled_impl())
  {
    [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
    [(BluetoothDevice *)self device];
    HeadphoneFeatureValue = BTAccessoryManagerGetHeadphoneFeatureValue();
    if (HeadphoneFeatureValue)
    {
      v5 = sharedBluetoothManagerLogComponent(HeadphoneFeatureValue, v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [BluetoothDevice getAutoANCSupport];
      }
    }
  }

  return 0;
}

- (unsigned)getDeviceConversationDetect
{
  v10 = *MEMORY[0x277D85DE8];
  HeadphoneFeatureValue = _os_feature_enabled_impl();
  if (HeadphoneFeatureValue && ([[BluetoothManager _accessoryManager] sharedInstance:HeadphoneFeatureValue = BTAccessoryManagerGetHeadphoneFeatureValue()])
  {
    v5 = sharedBluetoothManagerLogComponent(HeadphoneFeatureValue, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice getDeviceConversationDetect];
    }
  }

  else
  {
    v6 = sharedBluetoothManagerLogComponent(HeadphoneFeatureValue, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v9 = 0;
      _os_log_impl(&dword_241BC5000, v6, OS_LOG_TYPE_DEFAULT, "Conversation Detect: mode - %d", buf, 8u);
    }
  }

  return 0;
}

- (void)setDeviceConversationDetect:(int)detect
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = _os_feature_enabled_impl();
  if (v5)
  {
    v7 = sharedBluetoothManagerLogComponent(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 67109120;
      v11[1] = detect;
      _os_log_impl(&dword_241BC5000, v7, OS_LOG_TYPE_DEFAULT, "Conversation Detect: Set Mode - %d", v11, 8u);
    }

    [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
    [(BluetoothDevice *)self device];
    v8 = BTAccessoryManagerSendControlCommand();
    if (v8)
    {
      v10 = sharedBluetoothManagerLogComponent(v8, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [BluetoothDevice setDeviceConversationDetect:];
      }
    }
  }
}

- (BOOL)getConversationDetectSupport
{
  if (_os_feature_enabled_impl())
  {
    [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
    [(BluetoothDevice *)self device];
    HeadphoneFeatureValue = BTAccessoryManagerGetHeadphoneFeatureValue();
    if (HeadphoneFeatureValue)
    {
      v5 = sharedBluetoothManagerLogComponent(HeadphoneFeatureValue, v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [BluetoothDevice getConversationDetectSupport];
      }
    }
  }

  return 0;
}

- (unsigned)getConversationDetectMode
{
  v10 = *MEMORY[0x277D85DE8];
  HeadphoneFeatureValue = _os_feature_enabled_impl();
  if (HeadphoneFeatureValue && ([[BluetoothManager _accessoryManager] sharedInstance:HeadphoneFeatureValue = BTAccessoryManagerGetHeadphoneFeatureValue()])
  {
    v5 = sharedBluetoothManagerLogComponent(HeadphoneFeatureValue, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice getDeviceConversationDetect];
    }
  }

  else
  {
    v6 = sharedBluetoothManagerLogComponent(HeadphoneFeatureValue, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v9 = 0;
      _os_log_impl(&dword_241BC5000, v6, OS_LOG_TYPE_DEFAULT, "Conversation Detect: mode - %d", buf, 8u);
    }
  }

  return 0;
}

- (void)setConversationDetectMode:(int)mode
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = _os_feature_enabled_impl();
  if (v5)
  {
    v7 = sharedBluetoothManagerLogComponent(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 67109120;
      v11[1] = mode;
      _os_log_impl(&dword_241BC5000, v7, OS_LOG_TYPE_DEFAULT, "Conversation Detect: Set Mode - %d", v11, 8u);
    }

    [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
    [(BluetoothDevice *)self device];
    v8 = BTAccessoryManagerSendControlCommand();
    if (v8)
    {
      v10 = sharedBluetoothManagerLogComponent(v8, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [BluetoothDevice setDeviceConversationDetect:];
      }
    }
  }
}

- (BOOL)getSSLSupport
{
  if (_os_feature_enabled_impl())
  {
    [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
    [(BluetoothDevice *)self device];
    HeadphoneFeatureValue = BTAccessoryManagerGetHeadphoneFeatureValue();
    if (HeadphoneFeatureValue)
    {
      v5 = sharedBluetoothManagerLogComponent(HeadphoneFeatureValue, v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [BluetoothDevice getSSLSupport];
      }
    }
  }

  return 0;
}

- (unsigned)getSSLMode
{
  v10 = *MEMORY[0x277D85DE8];
  HeadphoneFeatureValue = _os_feature_enabled_impl();
  if (HeadphoneFeatureValue && ([[BluetoothManager _accessoryManager] sharedInstance:HeadphoneFeatureValue = BTAccessoryManagerGetHeadphoneFeatureValue()])
  {
    v5 = sharedBluetoothManagerLogComponent(HeadphoneFeatureValue, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice getSSLMode];
    }
  }

  else
  {
    v6 = sharedBluetoothManagerLogComponent(HeadphoneFeatureValue, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v9 = 0;
      _os_log_impl(&dword_241BC5000, v6, OS_LOG_TYPE_DEFAULT, "SSL: mode - %d", buf, 8u);
    }
  }

  return 0;
}

- (void)setSSLMode:(int)mode
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = _os_feature_enabled_impl();
  if (v5)
  {
    v7 = sharedBluetoothManagerLogComponent(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 67109120;
      v11[1] = mode;
      _os_log_impl(&dword_241BC5000, v7, OS_LOG_TYPE_DEFAULT, "SSL: Set Mode - %d", v11, 8u);
    }

    [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
    [(BluetoothDevice *)self device];
    v8 = BTAccessoryManagerSendControlCommand();
    if (v8)
    {
      v10 = sharedBluetoothManagerLogComponent(v8, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [BluetoothDevice setSSLMode:];
      }
    }
  }
}

- (BOOL)getWirelessSharingSpatialSupport
{
  v10 = *MEMORY[0x277D85DE8];
  WirelessSharingSpatial = _os_feature_enabled_impl();
  if (WirelessSharingSpatial && ([[BluetoothManager _accessoryManager] sharedInstance:WirelessSharingSpatial = BTAccessoryManagerGetWirelessSharingSpatial()])
  {
    v5 = sharedBluetoothManagerLogComponent(WirelessSharingSpatial, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice getWirelessSharingSpatialSupport];
    }

    return 1;
  }

  else
  {
    v7 = sharedBluetoothManagerLogComponent(WirelessSharingSpatial, v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v9 = 1;
      _os_log_impl(&dword_241BC5000, v7, OS_LOG_TYPE_INFO, "Is Spatial Supported during Wireless splitter : %d", buf, 8u);
    }

    return 1;
  }
}

- (BOOL)isGuestPairingMode
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = _os_feature_enabled_impl();
  if (v3)
  {
    [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
    [(BluetoothDevice *)self device];
    HeadphoneFeatureValue = BTAccessoryManagerGetHeadphoneFeatureValue();
    v6 = HeadphoneFeatureValue;
    v8 = sharedBluetoothManagerLogComponent(HeadphoneFeatureValue, v7);
    v9 = v8;
    if (v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [BluetoothDevice isGuestPairingMode];
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v13 = 0;
      v14 = 1024;
      v15 = 0;
      _os_log_impl(&dword_241BC5000, v9, OS_LOG_TYPE_DEFAULT, "Guest Pairing: Result: %u, Mode:  %u", buf, 0xEu);
    }
  }

  else
  {
    v10 = sharedBluetoothManagerLogComponent(v3, v4);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice isGuestPairingMode];
    }
  }

  return 0;
}

- (void)setGuestPairingMode:(BOOL)mode
{
  modeCopy = mode;
  v16 = *MEMORY[0x277D85DE8];
  v5 = _os_feature_enabled_impl();
  if (v5)
  {
    [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
    [(BluetoothDevice *)self device];
    v7 = BTAccessoryManagerSetHeadphoneFeatureValue();
    v8 = v7;
    v10 = sharedBluetoothManagerLogComponent(v7, v9);
    v11 = v10;
    if (v8)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [BluetoothDevice setGuestPairingMode:];
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13[0] = 67109376;
      v13[1] = 0;
      v14 = 1024;
      v15 = modeCopy;
      _os_log_impl(&dword_241BC5000, v11, OS_LOG_TYPE_DEFAULT, "Guest Pairing: Result: %u, Mode Set To:  %u", v13, 0xEu);
    }
  }

  else
  {
    v12 = sharedBluetoothManagerLogComponent(v5, v6);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice setGuestPairingMode:];
    }
  }
}

- (BOOL)isProxCardSupportedForFeature:(int)feature
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = _os_feature_enabled_impl();
  if ((v5 & 1) == 0)
  {
    v15 = sharedBluetoothManagerLogComponent(v5, v6);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice isProxCardSupportedForFeature:];
    }

    goto LABEL_13;
  }

  productId = [(BluetoothDevice *)self productId];
  v8 = productId;
  v10 = sharedBluetoothManagerLogComponent(productId, v9);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    *buf = 67109120;
    LODWORD(v47) = v8;
    _os_log_impl(&dword_241BC5000, v10, OS_LOG_TYPE_DEFAULT, "Prox Card Status: Product ID is %i", buf, 8u);
  }

  if (feature != 2)
  {
    if (feature != 1)
    {
      v13 = 0x8C1u >> (v8 - 11);
      if ((v8 - 8203) >= 0xC)
      {
        LOBYTE(v13) = 0;
      }

      if (feature)
      {
        LOBYTE(v14) = 0;
      }

      else
      {
        LOBYTE(v14) = v13;
      }

      return v14 & 1;
    }

    if (v8 == 8218)
    {
      v28 = sharedBluetoothManagerLogComponent(v11, v12);
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      goto LABEL_18;
    }

    if (v8 == 8230)
    {
      v17 = sharedBluetoothManagerLogComponent(v11, v12);
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
LABEL_13:
        LOBYTE(v14) = 0;
        return v14 & 1;
      }

LABEL_18:
      [BluetoothDevice isProxCardSupportedForFeature:];
      goto LABEL_13;
    }

    [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
    [(BluetoothDevice *)self device];
    v29 = BTAccessoryManagerGetCallManagementConfig();
    if (v29)
    {
      v31 = sharedBluetoothManagerLogComponent(v29, v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [BluetoothDevice isProxCardSupportedForFeature:];
      }

      goto LABEL_13;
    }

    LOBYTE(v14) = 0;
    v40 = sharedBluetoothManagerLogComponent(v29, v30);
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      return v14 & 1;
    }

    *buf = 136315394;
    v47 = "No";
    v48 = 1024;
    LODWORD(v49) = 0;
    v25 = "Prox Card Status: Mute Call: Support: %s -> Version: %d";
    v26 = v40;
    v27 = 18;
LABEL_72:
    _os_log_impl(&dword_241BC5000, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
    return v14 & 1;
  }

  if (v8 > 8221)
  {
    if (v8 == 8222)
    {
      goto LABEL_28;
    }

    if (v8 != 8228)
    {
LABEL_56:
      getAdaptiveVolumeSupport = [(BluetoothDevice *)self getAdaptiveVolumeSupport];
      if (getAdaptiveVolumeSupport)
      {
        getAdaptiveVolumeSupport = [(BluetoothDevice *)self getConversationDetectSupport];
        v14 = getAdaptiveVolumeSupport;
      }

      else
      {
        v14 = 0;
      }

      v41 = sharedBluetoothManagerLogComponent(getAdaptiveVolumeSupport, v39);
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        return v14 & 1;
      }

      if (v14)
      {
        v42 = "Yes";
      }

      else
      {
        v42 = "No";
      }

      if ([(BluetoothDevice *)self getAdaptiveVolumeSupport])
      {
        v43 = "Yes";
      }

      else
      {
        v43 = "No";
      }

      getConversationDetectSupport = [(BluetoothDevice *)self getConversationDetectSupport];
      *buf = 136315650;
      if (getConversationDetectSupport)
      {
        v45 = "Yes";
      }

      else
      {
        v45 = "No";
      }

      v47 = v42;
      v48 = 2080;
      v49 = v43;
      v50 = 2080;
      v51 = v45;
      v25 = "Prox Card Status: Adaptive Controls: Support: %s -> AdaptiveVolume: %s, CD: %s";
      v26 = v41;
      v27 = 32;
      goto LABEL_72;
    }
  }

  else if (v8 != 8212)
  {
    if (v8 != 8217)
    {
      goto LABEL_56;
    }

LABEL_28:
    getAdaptiveVolumeSupport2 = [(BluetoothDevice *)self getAdaptiveVolumeSupport];
    v14 = getAdaptiveVolumeSupport2;
    v22 = sharedBluetoothManagerLogComponent(getAdaptiveVolumeSupport2, v21);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      return v14 & 1;
    }

    if (v14)
    {
      v23 = "Yes";
    }

    else
    {
      v23 = "No";
    }

    if ([(BluetoothDevice *)self getAdaptiveVolumeSupport])
    {
      v24 = "Yes";
    }

    else
    {
      v24 = "No";
    }

    *buf = 136315394;
    v47 = v23;
    v48 = 2080;
    v49 = v24;
    v25 = "Prox Card Status: Adaptive Controls: Support: %s -> AdaptiveVolume: %s";
    v26 = v22;
    v27 = 22;
    goto LABEL_72;
  }

  getSSLSupport = [(BluetoothDevice *)self getSSLSupport];
  if (getSSLSupport && (getSSLSupport = [(BluetoothDevice *)self getAdaptiveVolumeSupport], getSSLSupport))
  {
    getSSLSupport = [(BluetoothDevice *)self getConversationDetectSupport];
    v14 = getSSLSupport;
  }

  else
  {
    v14 = 0;
  }

  v32 = sharedBluetoothManagerLogComponent(getSSLSupport, v19);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    if (v14)
    {
      v33 = "Yes";
    }

    else
    {
      v33 = "No";
    }

    if ([(BluetoothDevice *)self getSSLSupport])
    {
      v34 = "Yes";
    }

    else
    {
      v34 = "No";
    }

    if ([(BluetoothDevice *)self getAdaptiveVolumeSupport])
    {
      v35 = "Yes";
    }

    else
    {
      v35 = "No";
    }

    getConversationDetectSupport2 = [(BluetoothDevice *)self getConversationDetectSupport];
    *buf = 136315906;
    if (getConversationDetectSupport2)
    {
      v37 = "Yes";
    }

    else
    {
      v37 = "No";
    }

    v47 = v33;
    v48 = 2080;
    v49 = v34;
    v50 = 2080;
    v51 = v35;
    v52 = 2080;
    v53 = v37;
    v25 = "Prox Card Status: Adaptive Controls: Support: %s -> SSL: %s, AV: %s, CD: %s";
    v26 = v32;
    v27 = 42;
    goto LABEL_72;
  }

  return v14 & 1;
}

- (BOOL)isProxCardShowedForFeature:(int)feature
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = _os_feature_enabled_impl();
  if ((v5 & 1) == 0)
  {
    v8 = sharedBluetoothManagerLogComponent(v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice isProxCardShowedForFeature:];
    }

    return 1;
  }

  if (feature <= 1)
  {
    v7 = sharedBluetoothManagerLogComponent(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241BC5000, v7, OS_LOG_TYPE_DEFAULT, "Prox Card Status: Mute Call: Card Discontinued, Return as Showed", buf, 2u);
    }

    return 1;
  }

  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  FeatureProxCardStatus = BTAccessoryManagerGetFeatureProxCardStatus();
  if (FeatureProxCardStatus)
  {
    v11 = sharedBluetoothManagerLogComponent(FeatureProxCardStatus, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice isProxCardShowedForFeature:];
    }

    return 1;
  }

  if (feature != 2)
  {
    return 1;
  }

  v12 = sharedBluetoothManagerLogComponent(FeatureProxCardStatus, v10);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "No";
    v16 = 2048;
    v17 = 0;
    _os_log_impl(&dword_241BC5000, v12, OS_LOG_TYPE_DEFAULT, "Prox Card Status: Adaptive Controls: Showed: %s -> Prox Card Status: 0x%08llx", buf, 0x16u);
  }

  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  BTAccessoryManagerSetFeatureProxCardStatus();
  return 0;
}

- (void)setProxCardShowedForFeature:(int)feature showed:(BOOL)showed
{
  showedCopy = showed;
  v52 = *MEMORY[0x277D85DE8];
  v7 = _os_feature_enabled_impl();
  if (v7)
  {
    if (feature <= 1)
    {
      *(&v39 + 3) = 0;
      LODWORD(v39) = 0;
      [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
      [(BluetoothDevice *)self device];
      v9 = BTAccessoryManagerGetCallManagementConfig();
      if (v9)
      {
        v11 = sharedBluetoothManagerLogComponent(v9, v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [BluetoothDevice setProxCardShowedForFeature:showed:];
        }

        return;
      }

      v16 = sharedBluetoothManagerLogComponent(v9, v10);
      v17 = v16;
      v22 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (v22)
      {
        *buf = 67110656;
        *v41 = v39;
        *&v41[4] = 1024;
        *&v41[6] = BYTE1(v39);
        v42 = 1024;
        v43 = BYTE2(v39);
        v44 = 1024;
        v45 = BYTE3(v39);
        v46 = 1024;
        v47 = BYTE4(v39);
        v48 = 1024;
        v49 = BYTE5(v39);
        v50 = 1024;
        v51 = BYTE6(v39);
        _os_log_impl(&dword_241BC5000, v17, OS_LOG_TYPE_DEFAULT, "Prox Card Status: Set: Call Management Version: %d, [0] status: %u, endCall: %u, [1] End Call Status: %u, End Call Config: %u, Mute Call Status: %u, Mute Call Config: %u", buf, 0x2Cu);
      }

      v24 = v39;
      if (feature)
      {
        if (v39 != 1)
        {
          v30 = sharedBluetoothManagerLogComponent(v22, v23);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            [(BluetoothDevice *)&v39 setProxCardShowedForFeature:v30 showed:v32, v33, v34, v35, v36, v37];
          }

          return;
        }

        if (showedCopy)
        {
          v24 = v39 + 1;
        }

        BYTE5(v39) = v24;
        v25 = sharedBluetoothManagerLogComponent(v22, v23);
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
LABEL_50:
          [(BluetoothDevice *)self setCallConfig:v39 | ((WORD2(v39) | (BYTE6(v39) << 16)) << 32)];
          return;
        }

        if (BYTE5(v39) == 2)
        {
          v26 = "Set";
        }

        else
        {
          v26 = "Disabled";
        }

        *buf = 136315138;
        *v41 = v26;
        v27 = "Prox Card Status: Mute Call: Set: Version: 1, Mute Call Status: %s";
      }

      else if (v39 == 1)
      {
        if (showedCopy)
        {
          v24 = v39 + 1;
        }

        BYTE3(v39) = v24;
        v25 = sharedBluetoothManagerLogComponent(v22, v23);
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_50;
        }

        if (BYTE3(v39) == 2)
        {
          v38 = "Set";
        }

        else
        {
          v38 = "Disabled";
        }

        *buf = 136315138;
        *v41 = v38;
        v27 = "Prox Card Status: End Call: Set: Version: 1, End Call Status: %s";
      }

      else
      {
        if (showedCopy)
        {
          v28 = 2;
        }

        else
        {
          v28 = 1;
        }

        BYTE1(v39) = v28;
        v25 = sharedBluetoothManagerLogComponent(v22, v23);
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_50;
        }

        if (BYTE1(v39) == 2)
        {
          v29 = "Set";
        }

        else
        {
          v29 = "Disabled";
        }

        *buf = 136315138;
        *v41 = v29;
        v27 = "Prox Card Status: End Call: Set: Version: 0, End Call Status: %s";
      }

      _os_log_impl(&dword_241BC5000, v25, OS_LOG_TYPE_DEFAULT, v27, buf, 0xCu);
      goto LABEL_50;
    }

    v39 = 0;
    [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
    [(BluetoothDevice *)self device];
    FeatureProxCardStatus = BTAccessoryManagerGetFeatureProxCardStatus();
    if (FeatureProxCardStatus)
    {
      v15 = sharedBluetoothManagerLogComponent(FeatureProxCardStatus, v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [BluetoothDevice setProxCardShowedForFeature:showed:];
      }
    }

    else
    {
      if (feature == 2 && showedCopy)
      {
        v39 |= 3uLL;
        v18 = sharedBluetoothManagerLogComponent(FeatureProxCardStatus, v14);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *v41 = "Set";
          _os_log_impl(&dword_241BC5000, v18, OS_LOG_TYPE_DEFAULT, "Prox Card Status: Adaptive Controls: Set: Status: %s", buf, 0xCu);
        }
      }

      [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
      [(BluetoothDevice *)self device];
      v19 = BTAccessoryManagerSetFeatureProxCardStatus();
      if (v19)
      {
        v21 = sharedBluetoothManagerLogComponent(v19, v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [BluetoothDevice setProxCardShowedForFeature:showed:];
        }
      }
    }
  }

  else
  {
    v12 = sharedBluetoothManagerLogComponent(v7, v8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice setProxCardShowedForFeature:showed:];
    }
  }
}

- (BOOL)hearingAidEnrolled
{
  v14 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  HeadphoneFeatureValue = BTAccessoryManagerGetHeadphoneFeatureValue();
  v4 = HeadphoneFeatureValue;
  v6 = sharedBluetoothManagerLogComponent(HeadphoneFeatureValue, v5);
  v7 = v6;
  if (v4)
  {
    v8 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (v8)
    {
      [BluetoothDevice hearingAidEnrolled];
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v11 = 0;
      v12 = 1024;
      v13 = 0;
      _os_log_impl(&dword_241BC5000, v7, OS_LOG_TYPE_DEFAULT, "Hearing Aid: Result: %d, Get Enrolled:  %u", buf, 0xEu);
    }

    LOBYTE(v8) = 0;
  }

  return v8;
}

- (void)setHearingAidEnrolled:(BOOL)enrolled
{
  enrolledCopy = enrolled;
  v13 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  v5 = BTAccessoryManagerSetHeadphoneFeatureValue();
  v6 = v5;
  v8 = sharedBluetoothManagerLogComponent(v5, v7);
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice setHearingAidEnrolled:];
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109376;
    v10[1] = 0;
    v11 = 1024;
    v12 = enrolledCopy;
    _os_log_impl(&dword_241BC5000, v9, OS_LOG_TYPE_DEFAULT, "Hearing Aid: Result: %d, Set Enrolled:  %u", v10, 0xEu);
  }
}

- (BOOL)hearingAidEnabled
{
  v14 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  HeadphoneFeatureValue = BTAccessoryManagerGetHeadphoneFeatureValue();
  v4 = HeadphoneFeatureValue;
  v6 = sharedBluetoothManagerLogComponent(HeadphoneFeatureValue, v5);
  v7 = v6;
  if (v4)
  {
    v8 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (v8)
    {
      [BluetoothDevice hearingAidEnabled];
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v11 = 0;
      v12 = 1024;
      v13 = 0;
      _os_log_impl(&dword_241BC5000, v7, OS_LOG_TYPE_DEFAULT, "Hearing Aid: Result: %d, Get Enabled:  %u", buf, 0xEu);
    }

    LOBYTE(v8) = 0;
  }

  return v8;
}

- (void)setHearingAidEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v13 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  v5 = BTAccessoryManagerSetHeadphoneFeatureValue();
  v6 = v5;
  v8 = sharedBluetoothManagerLogComponent(v5, v7);
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice setHearingAidEnabled:];
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109376;
    v10[1] = 0;
    v11 = 1024;
    v12 = enabledCopy;
    _os_log_impl(&dword_241BC5000, v9, OS_LOG_TYPE_DEFAULT, "Hearing Aid: Result: %d, Set Enabled:  %u", v10, 0xEu);
  }
}

- (void)batteryStatus:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)featureCapability:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v3 = 1024;
  v4 = v0;
  _os_log_error_impl(&dword_241BC5000, v1, OS_LOG_TYPE_ERROR, "Failed to get %d capability : %d", v2, 0xEu);
}

- (void)setServiceSetting:(void *)a1 key:(NSObject *)a2 value:.cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = [a1 name];
  _os_log_error_impl(&dword_241BC5000, a2, OS_LOG_TYPE_ERROR, "Failed to set service setting for device %@", &v3, 0xCu);
}

- (void)isGuestPairingMode
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setGuestPairingMode:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)isProxCardSupportedForFeature:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)isProxCardSupportedForFeature:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)isProxCardShowedForFeature:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setProxCardShowedForFeature:showed:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setProxCardShowedForFeature:(uint64_t)a3 showed:(uint64_t)a4 .cold.5(unsigned __int8 *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 67109120;
  HIDWORD(v8) = *a1;
  OUTLINED_FUNCTION_0(&dword_241BC5000, a2, a3, "Prox Card Status: Mute Call: Set: Invalid Call Management Version: %u", a5, a6, a7, a8, v8);
}

- (void)setProxCardShowedForFeature:(uint64_t)a3 showed:(uint64_t)a4 .cold.6(unsigned __int8 *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 67109120;
  HIDWORD(v8) = *a1;
  OUTLINED_FUNCTION_0(&dword_241BC5000, a2, a3, "Prox Card Status: Set: End Call: Invalid Call Management Version: %u", a5, a6, a7, a8, v8);
}

- (void)setProxCardShowedForFeature:(uint64_t)a3 showed:(uint64_t)a4 .cold.7(unsigned __int8 *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 67109120;
  HIDWORD(v8) = *a1;
  OUTLINED_FUNCTION_0(&dword_241BC5000, a2, a3, "Prox Card Status: Set: Invalid Call Management Version: %u, Cannot Set", a5, a6, a7, a8, v8);
}

@end