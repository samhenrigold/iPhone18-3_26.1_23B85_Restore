@interface AudioAccessoryDevice
- (AudioAccessoryDevice)initWithCoder:(id)coder;
- (AudioAccessoryDevice)initWithIdentifier:(id)identifier;
- (BOOL)connectedInfoComplete;
- (BOOL)pairedInfoComplete;
- (BOOL)setDefaultConfigurationsForCloudSyncedPropertiesIfNeeded;
- (BOOL)updateWithAADeviceConfig:(id)config;
- (BOOL)updateWithConnectedAADeviceInfo:(id)info;
- (BOOL)updateWithConnectedCBDevice:(id)device;
- (BOOL)updateWithPairedAADevice:(id)device;
- (BOOL)updateWithPairedAADeviceInfo:(id)info;
- (BOOL)updateWithPairedCBDevice:(id)device;
- (NSString)bluetoothAddress;
- (char)dynamicEndOfChargeState;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithLevel:(int)level;
- (unsigned)CBCapToAACap:(unsigned __int8)cap;
- (unsigned)chargingReminderCapability;
- (unsigned)computePersonalTranslatorCapability;
- (unsigned)optimizedBatteryChargingCapability;
- (void)encodeWithCoder:(id)coder;
- (void)setBatteryInfo:(id)info;
- (void)setBluetoothAddressData:(id)data;
- (void)setCloudRecordInfoLoaded:(BOOL)loaded;
- (void)setConnected:(BOOL)connected;
- (void)setDetectedHeadGesture:(unsigned __int8)gesture;
- (void)setDynamicEndOfChargeEnabled:(char)enabled;
- (void)setDynamicEndOfChargeTempDisabled:(char)disabled;
- (void)setFarFieldSessionOnGoing:(char)going;
- (void)setHeartRateMonitorCapabilityChanged:(BOOL)changed;
- (void)setHeartRateMonitorCapabilityValueOriginatedFromDevice:(BOOL)device;
- (void)setIdentifier:(id)identifier;
- (void)setOnConnectionActionsCalled:(BOOL)called;
- (void)setOptimizedBatteryChargingState:(char)state;
- (void)setPaired:(BOOL)paired;
- (void)setSiriMultitoneEnabled:(char)enabled;
- (void)setSmartRoutingStateFlags:(unsigned int)flags;
@end

@implementation AudioAccessoryDevice

- (AudioAccessoryDevice)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = [(AudioAccessoryDevice *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
    v8 = v7;
  }

  return v7;
}

- (AudioAccessoryDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(AudioAccessoryDevice *)self init];

  if (v5)
  {
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_acceptReplyPlayPauseConfig = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_adaptiveVolumeCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_adaptiveVolumeConfig = 0;
    }

    v6 = coderCopy;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_audioStreamState = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_autoANCCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_peerAutoANCCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_autoANCStrength = 0;
    }

    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_bobbleCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_bobbleConfig = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_cameraControlCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_caseSoundCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_chargingReminderEnabled = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_clickHoldModeLeft = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_clickHoldModeRight = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_conversationDetectCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_conversationDetectConfig = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_crownRotationDirection = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_declineDismissSkipConfig = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_detectedHeadGesture = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_doubleTapActionLeft = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_doubleTapActionRight = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_doubleTapCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_dynamicEndOfChargeCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_dynamicEndOfChargeEnabled = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_dynamicEndOfChargeState = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_dynamicEndOfChargeTempDisabled = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_earTipFitTestCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_endCallCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_endCallConfig = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_enhancedTransparencyVersion = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_farFieldUplinkCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_farFieldSessionOnGoing = 0;
    }

    objc_opt_class();
    NSDecodeObjectIfPresent();
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_frequencyBand = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_gapaFlags = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_guestPaired = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_headGestureToggle = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_healthKitDataWriteAllowed = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingAidCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingAidEnabled = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingAidEnrolled = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingAidGainSwipeEnabled = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingAidV2Capability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingAssistEnabled = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingProtectionCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingProtectionPPECapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingProtectionPPECapLevel = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingProtectionPPEEnabled = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingTestCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_heartRateMonitorCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_heartRateMonitorEnabled = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hideEarDetectionCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hideOffListeningModeCapability = 0;
    }

    v7 = v6;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_listeningMode = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_listeningModeConfigs = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_listeningModeOffAllowed = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_microphoneMode = 0;
    }

    v8 = v7;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_muteControlCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_muteControlConfig = 0;
    }

    v9 = v8;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_optimizedBatteryChargingState = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_ovadStreamingCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_personalTranslatorCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_placementMode = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_pmeEverywhereCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_primaryPlacement = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_productID = 0;
    }

    v10 = v9;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_rawGesturesConfigFlags = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_remoteCameraControlConfig = 0;
    }

    v11 = v10;
    if ([v11 containsValueForKey:@"rutd"])
    {
      v5->_routed = [v11 decodeBoolForKey:@"rutd"];
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_classicRSSI = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_secondaryPlacement = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_selectiveSpeechListeningCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_selectiveSpeechListeningConfig = 0;
    }

    v12 = v11;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v13 = v12;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v14 = v13;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_siriMultitoneCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_siriMultitoneEnabled = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_sleepDetectionCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_sleepDetectionEnabled = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_smartRoutingCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_smartRoutingMode = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_smartRoutingStateFlags = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_spatialAudioAllowed = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_streamStateAoS = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_temporaryManagedPairedStatus = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_vendorID = 0;
    }

    v15 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v28 = coderCopy;
  if (self->_acceptReplyPlayPauseConfig)
  {
    [coderCopy encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_adaptiveVolumeConfig)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
    if (self->_adaptiveVolumeConfig)
    {
      [v28 encodeInteger:? forKey:?];
      coderCopy = v28;
    }
  }

  audiogramEnrolledTimestamp = self->_audiogramEnrolledTimestamp;
  if (audiogramEnrolledTimestamp)
  {
    [v28 encodeObject:audiogramEnrolledTimestamp forKey:@"agET"];
    coderCopy = v28;
  }

  audioStreamState = self->_audioStreamState;
  if (audioStreamState)
  {
    [v28 encodeInteger:audioStreamState forKey:@"auss"];
    coderCopy = v28;
  }

  autoANCCapability = self->_autoANCCapability;
  if (autoANCCapability)
  {
    [v28 encodeInt64:autoANCCapability forKey:@"aaCp"];
    coderCopy = v28;
  }

  if (self->_peerAutoANCCapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  autoANCStrength = self->_autoANCStrength;
  if (autoANCStrength)
  {
    [v28 encodeInt64:autoANCStrength forKey:@"aaSt"];
    coderCopy = v28;
  }

  coreBluetoothDevice = self->_coreBluetoothDevice;
  if (coreBluetoothDevice)
  {
    [v28 encodeObject:coreBluetoothDevice forKey:@"cbd"];
    coderCopy = v28;
  }

  batteryInfo = self->_batteryInfo;
  if (batteryInfo)
  {
    [v28 encodeObject:batteryInfo forKey:@"baIn"];
    coderCopy = v28;
  }

  bluetoothAddressData = self->_bluetoothAddressData;
  if (bluetoothAddressData)
  {
    [v28 encodeObject:bluetoothAddressData forKey:@"btAd"];
    coderCopy = v28;
  }

  if (self->_bobbleCapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_bobbleConfig)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_cameraControlCapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_caseSoundCapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_chargingReminderEnabled)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_clickHoldModeLeft)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_clickHoldModeRight)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_conversationDetectCapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_conversationDetectConfig)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_crownRotationDirection)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_declineDismissSkipConfig)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_detectedHeadGesture)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_doubleTapActionLeft)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_doubleTapActionRight)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_doubleTapCapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_dynamicEndOfChargeCapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_dynamicEndOfChargeEnabled)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_dynamicEndOfChargeState)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_dynamicEndOfChargeTempDisabled)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_earTipFitTestCapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_endCallCapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_endCallConfig)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_enhancedTransparencyVersion)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_farFieldUplinkCapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_farFieldSessionOnGoing)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  firmwareVersion = self->_firmwareVersion;
  if (firmwareVersion)
  {
    [v28 encodeObject:firmwareVersion forKey:@"frmV"];
    coderCopy = v28;
  }

  if (self->_frequencyBand)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  gapaFlags = self->_gapaFlags;
  if (gapaFlags)
  {
    [v28 encodeInt64:gapaFlags forKey:@"gapa"];
    coderCopy = v28;
  }

  if (self->_guestPaired)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_headGestureToggle)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_healthKitDataWriteAllowed)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_hearingAidCapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_hearingAidEnabled)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_hearingAidEnrolled)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_hearingAidGainSwipeEnabled)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_hearingAidV2Capability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_hearingAssistEnabled)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_hearingProtectionCapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_hearingProtectionPPECapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  hearingProtectionPPECapLevel = self->_hearingProtectionPPECapLevel;
  if (hearingProtectionPPECapLevel)
  {
    [v28 encodeInt64:hearingProtectionPPECapLevel forKey:@"ppeL"];
    coderCopy = v28;
  }

  if (self->_hearingProtectionPPEEnabled)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_hearingTestCapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_heartRateMonitorCapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_heartRateMonitorEnabled)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_hideEarDetectionCapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_hideOffListeningModeCapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v28 encodeObject:identifier forKey:@"did"];
    coderCopy = v28;
  }

  listeningMode = self->_listeningMode;
  if (listeningMode)
  {
    [v28 encodeInteger:listeningMode forKey:@"lsnM"];
    coderCopy = v28;
  }

  listeningModeConfigs = self->_listeningModeConfigs;
  if (listeningModeConfigs)
  {
    [v28 encodeInt64:listeningModeConfigs forKey:@"lsMC"];
    coderCopy = v28;
  }

  if (self->_listeningModeOffAllowed)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_microphoneMode)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  model = self->_model;
  if (model)
  {
    [v28 encodeObject:model forKey:@"modl"];
    coderCopy = v28;
  }

  if (self->_muteControlCapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_muteControlConfig)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  name = self->_name;
  if (name)
  {
    [v28 encodeObject:name forKey:@"name"];
    coderCopy = v28;
  }

  if (self->_optimizedBatteryChargingState)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_ovadStreamingCapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_personalTranslatorCapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_placementMode)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_pmeEverywhereCapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  primaryPlacement = self->_primaryPlacement;
  if (primaryPlacement)
  {
    [v28 encodeInteger:primaryPlacement forKey:@"prpl"];
    coderCopy = v28;
  }

  productID = self->_productID;
  if (productID)
  {
    [v28 encodeInt64:productID forKey:@"prID"];
    coderCopy = v28;
  }

  productName = self->_productName;
  if (productName)
  {
    [v28 encodeObject:productName forKey:@"prN"];
    coderCopy = v28;
  }

  if (self->_rawGesturesConfigFlags)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_remoteCameraControlConfig)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_routed)
  {
    [v28 encodeBool:1 forKey:@"rutd"];
    coderCopy = v28;
  }

  if (self->_classicRSSI)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  secondaryPlacement = self->_secondaryPlacement;
  if (secondaryPlacement)
  {
    [v28 encodeInteger:secondaryPlacement forKey:@"scpl"];
    coderCopy = v28;
  }

  if (self->_selectiveSpeechListeningCapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_selectiveSpeechListeningConfig)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  serialNumber = self->_serialNumber;
  if (serialNumber)
  {
    [v28 encodeObject:serialNumber forKey:@"sn"];
    coderCopy = v28;
  }

  serialNumberLeft = self->_serialNumberLeft;
  if (serialNumberLeft)
  {
    [v28 encodeObject:serialNumberLeft forKey:@"snLe"];
    coderCopy = v28;
  }

  serialNumberRight = self->_serialNumberRight;
  if (serialNumberRight)
  {
    [v28 encodeObject:serialNumberRight forKey:@"snRi"];
    coderCopy = v28;
  }

  if (self->_siriMultitoneCapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_siriMultitoneEnabled)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_sleepDetectionCapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_sleepDetectionEnabled)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_smartRoutingCapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_smartRoutingMode)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  smartRoutingStateFlags = self->_smartRoutingStateFlags;
  if (smartRoutingStateFlags)
  {
    [v28 encodeInt64:smartRoutingStateFlags forKey:@"smRtS"];
    coderCopy = v28;
  }

  if (self->_spatialAudioAllowed)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_streamStateAoS)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_temporaryManagedPairedStatus)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_vendorID)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }
}

- (unsigned)CBCapToAACap:(unsigned __int8)cap
{
  if (cap)
  {
    return 2 * (cap == 1);
  }

  else
  {
    return 1;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [objc_opt_class() allocWithZone:zone];
  [v5 setAcceptReplyPlayPauseConfig:selfCopy->_acceptReplyPlayPauseConfig];
  [v5 setAdaptiveVolumeCapability:selfCopy->_adaptiveVolumeCapability];
  [v5 setAdaptiveVolumeConfig:selfCopy->_adaptiveVolumeConfig];
  v6 = [(NSDate *)selfCopy->_audiogramEnrolledTimestamp copyWithZone:zone];
  [v5 setAudiogramEnrolledTimestamp:v6];

  [v5 setAudioStreamState:selfCopy->_audioStreamState];
  [v5 setAutoANCCapability:selfCopy->_autoANCCapability];
  [v5 setAutoANCStrength:selfCopy->_autoANCStrength];
  v7 = [(AADeviceBatteryInfo *)selfCopy->_batteryInfo copy];
  [v5 setBatteryInfo:v7];

  v8 = [(NSData *)selfCopy->_bluetoothAddressData copyWithZone:zone];
  [v5 setBluetoothAddressData:v8];

  [v5 setBobbleCapability:selfCopy->_bobbleCapability];
  [v5 setBobbleConfig:selfCopy->_bobbleConfig];
  [v5 setCameraControlCapability:selfCopy->_cameraControlCapability];
  [v5 setCaseSoundCapability:selfCopy->_caseSoundCapability];
  [v5 setChargingReminderEnabled:selfCopy->_chargingReminderEnabled];
  [v5 setClassicRSSI:selfCopy->_classicRSSI];
  [v5 setClickHoldModeLeft:selfCopy->_clickHoldModeLeft];
  [v5 setClickHoldModeRight:selfCopy->_clickHoldModeRight];
  [v5 setCloudRecordInfoLoaded:selfCopy->_cloudRecordInfoLoaded];
  [v5 setConnected:selfCopy->_connected];
  [v5 setConnectedAADeviceInfoReceived:selfCopy->_connectedAADeviceInfoReceived];
  [v5 setConnectedCBDeviceReceived:selfCopy->_connectedCBDeviceReceived];
  [v5 setConversationDetectCapability:selfCopy->_conversationDetectCapability];
  [v5 setConversationDetectConfig:selfCopy->_conversationDetectConfig];
  v9 = [(CBDevice *)selfCopy->_coreBluetoothDevice copy];
  v10 = v5[31];
  v5[31] = v9;

  [v5 setCrownRotationDirection:selfCopy->_crownRotationDirection];
  [v5 setDeclineDismissSkipConfig:selfCopy->_declineDismissSkipConfig];
  [v5 setDetectedHeadGesture:selfCopy->_detectedHeadGesture];
  [v5 setDoubleTapActionLeft:selfCopy->_doubleTapActionLeft];
  [v5 setDoubleTapActionRight:selfCopy->_doubleTapActionRight];
  [v5 setDoubleTapCapability:selfCopy->_doubleTapCapability];
  [v5 setDynamicEndOfChargeCapability:selfCopy->_dynamicEndOfChargeCapability];
  [v5 setDynamicEndOfChargeEnabled:selfCopy->_dynamicEndOfChargeEnabled];
  [v5 setDynamicEndOfChargeState:{-[AudioAccessoryDevice dynamicEndOfChargeState](selfCopy, "dynamicEndOfChargeState")}];
  [v5 setDynamicEndOfChargeTempDisabled:selfCopy->_dynamicEndOfChargeTempDisabled];
  [v5 setEarTipFitTestCapability:selfCopy->_earTipFitTestCapability];
  [v5 setEndCallCapability:selfCopy->_endCallCapability];
  [v5 setEndCallConfig:selfCopy->_endCallConfig];
  [v5 setEnhancedTransparencyVersion:selfCopy->_enhancedTransparencyVersion];
  [v5 setFarFieldUplinkCapability:selfCopy->_farFieldUplinkCapability];
  [v5 setFarFieldSessionOnGoing:selfCopy->_farFieldSessionOnGoing];
  [v5 setFrequencyBand:selfCopy->_frequencyBand];
  v11 = [(NSString *)selfCopy->_firmwareVersion copyWithZone:zone];
  [v5 setFirmwareVersion:v11];

  [v5 setGapaFlags:selfCopy->_gapaFlags];
  [v5 setGuestPaired:selfCopy->_guestPaired];
  [v5 setHeadGestureToggle:selfCopy->_headGestureToggle];
  [v5 setHeadGestureProxCardShown:selfCopy->_headGestureProxCardShown];
  [v5 setHealthKitDataWriteAllowed:selfCopy->_healthKitDataWriteAllowed];
  [v5 setHearingAidCapability:selfCopy->_hearingAidCapability];
  [v5 setHearingAidEnrolled:selfCopy->_hearingAidEnrolled];
  [v5 setHearingAidEnabled:selfCopy->_hearingAidEnabled];
  [v5 setHearingAidGainSwipeEnabled:selfCopy->_hearingAidGainSwipeEnabled];
  [v5 setHearingAidV2Capability:selfCopy->_hearingAidV2Capability];
  [v5 setHearingAssistEnabled:selfCopy->_hearingAssistEnabled];
  [v5 setHearingProtectionCapability:selfCopy->_hearingProtectionCapability];
  [v5 setHearingProtectionPPECapability:selfCopy->_hearingProtectionPPECapability];
  [v5 setHearingProtectionPPECapLevel:selfCopy->_hearingProtectionPPECapLevel];
  [v5 setHearingProtectionPPEEnabled:selfCopy->_hearingProtectionPPEEnabled];
  [v5 setHearingTestCapability:selfCopy->_hearingTestCapability];
  [v5 setHeartRateMonitorCapability:selfCopy->_heartRateMonitorCapability];
  [v5 setHeartRateMonitorCapabilityChanged:selfCopy->_heartRateMonitorCapabilityChanged];
  [v5 setHeartRateMonitorCapabilityValueOriginatedFromDevice:selfCopy->_heartRateMonitorCapabilityValueOriginatedFromDevice];
  [v5 setHeartRateMonitorEnabled:selfCopy->_heartRateMonitorEnabled];
  [v5 setHideEarDetectionCapability:selfCopy->_hideEarDetectionCapability];
  [v5 setHideOffListeningModeCapability:selfCopy->_hideOffListeningModeCapability];
  v12 = [(NSString *)selfCopy->_identifier copyWithZone:zone];
  [v5 setIdentifier:v12];

  v13 = [(NSDate *)selfCopy->_lastSeenConnectedTime copyWithZone:zone];
  [v5 setLastSeenConnectedTime:v13];

  [v5 setListeningMode:selfCopy->_listeningMode];
  [v5 setListeningModeConfigs:selfCopy->_listeningModeConfigs];
  [v5 setListeningModeOffAllowed:selfCopy->_listeningModeOffAllowed];
  [v5 setMicrophoneMode:selfCopy->_microphoneMode];
  v14 = [(NSString *)selfCopy->_model copyWithZone:zone];
  [v5 setModel:v14];

  [v5 setMuteControlCapability:selfCopy->_muteControlCapability];
  [v5 setMuteControlConfig:selfCopy->_muteControlConfig];
  v15 = [(NSString *)selfCopy->_name copyWithZone:zone];
  [v5 setName:v15];

  [v5 setOnConnectionActionsCalled:selfCopy->_onConnectionActionsCalled];
  [v5 setOptimizedBatteryChargingState:selfCopy->_optimizedBatteryChargingState];
  [v5 setOvadStreamingCapability:selfCopy->_ovadStreamingCapability];
  [v5 setPaired:selfCopy->_paired];
  [v5 setPairedAADeviceInfoReceived:selfCopy->_pairedAADeviceInfoReceived];
  [v5 setPairedCBDeviceReceived:selfCopy->_pairedCBDeviceReceived];
  [v5 setPeerAutoANCCapability:selfCopy->_peerAutoANCCapability];
  [v5 setPersonalTranslatorCapability:selfCopy->_personalTranslatorCapability];
  [v5 setPlacementMode:selfCopy->_placementMode];
  [v5 setPmeEverywhereCapability:selfCopy->_pmeEverywhereCapability];
  [v5 setPrimaryPlacement:selfCopy->_primaryPlacement];
  [v5 setProductID:selfCopy->_productID];
  v16 = [(NSString *)selfCopy->_productName copyWithZone:zone];
  [v5 setProductName:v16];

  [v5 setRawGesturesConfigFlags:selfCopy->_rawGesturesConfigFlags];
  [v5 setRemoteCameraControlConfig:selfCopy->_remoteCameraControlConfig];
  [v5 setRouted:{-[AudioAccessoryDevice routed](selfCopy, "routed")}];
  [v5 setSecondaryPlacement:selfCopy->_secondaryPlacement];
  [v5 setSelectiveSpeechListeningCapability:selfCopy->_selectiveSpeechListeningCapability];
  [v5 setSelectiveSpeechListeningConfig:selfCopy->_selectiveSpeechListeningConfig];
  v17 = [(NSString *)selfCopy->_serialNumber copyWithZone:zone];
  [v5 setSerialNumber:v17];

  v18 = [(NSString *)selfCopy->_serialNumberLeft copyWithZone:zone];
  [v5 setSerialNumberLeft:v18];

  v19 = [(NSString *)selfCopy->_serialNumberRight copyWithZone:zone];
  [v5 setSerialNumberRight:v19];

  [v5 setSiriMultitoneCapability:selfCopy->_siriMultitoneCapability];
  [v5 setSiriMultitoneEnabled:selfCopy->_siriMultitoneEnabled];
  [v5 setSleepDetectionCapability:selfCopy->_sleepDetectionCapability];
  [v5 setSleepDetectionEnabled:selfCopy->_sleepDetectionEnabled];
  [v5 setSmartRoutingCapability:selfCopy->_smartRoutingCapability];
  [v5 setSmartRoutingMode:selfCopy->_smartRoutingMode];
  [v5 setSmartRoutingStateFlags:selfCopy->_smartRoutingStateFlags];
  [v5 setSpatialAudioAllowed:selfCopy->_spatialAudioAllowed];
  [v5 setStreamStateAoS:selfCopy->_streamStateAoS];
  [v5 setTemporaryManagedPairedStatus:selfCopy->_temporaryManagedPairedStatus];
  [v5 setVendorID:selfCopy->_vendorID];
  objc_sync_exit(selfCopy);

  return v5;
}

- (id)descriptionWithLevel:(int)level
{
  levelCopy = level;
  v451[0] = 0;
  NSAppendPrintF_safe(v451, "AADevice id: %@, ", self->_identifier);
  v4 = v451[0];
  v5 = self->_name;
  v6 = v5;
  if (v5)
  {
    v450 = v4;
    NSAppendPrintF_safe(&v450, "nm %@, ", v5);
    v7 = v450;

    v4 = v7;
  }

  v8 = self->_model;
  v9 = v8;
  if (v8)
  {
    v449 = v4;
    NSAppendPrintF_safe(&v449, "ml %@, ", v8);
    v10 = v449;

    v4 = v10;
  }

  productID = self->_productID;
  if (productID)
  {
    v448 = v4;
    NSAppendPrintF_safe(&v448, "pid %u, ", productID);
    v12 = v448;

    v4 = v12;
  }

  v447 = v4;
  NSAppendPrintF_safe(&v447, "\n");
  v13 = v447;

  v14 = [v13 length];
  v446 = v13;
  NSAppendPrintF_safe(&v446, "AutoANC: ");
  v15 = v446;

  autoANCCapability = self->_autoANCCapability;
  if (autoANCCapability)
  {
    v445 = v15;
    if (autoANCCapability > 3)
    {
      v17 = "?";
    }

    else
    {
      v17 = off_278CDDA98[autoANCCapability - 1];
    }

    v18 = ShorthandString(v17);
    NSAppendPrintF_safe(&v445, "cap %s, ", v18);
    v19 = v445;

    v15 = v19;
  }

  autoANCStrength = self->_autoANCStrength;
  if (autoANCStrength)
  {
    v444 = v15;
    v21 = "High";
    v22 = "?";
    if (autoANCStrength == 1050)
    {
      v22 = "Medium";
    }

    if (autoANCStrength != 1100)
    {
      v21 = v22;
    }

    if (autoANCStrength == 1000)
    {
      v23 = "Low";
    }

    else
    {
      v23 = v21;
    }

    v24 = ShorthandString(v23);
    NSAppendPrintF_safe(&v444, "cfg %s, ", v24);
    v25 = v444;

    v15 = v25;
  }

  if ([v15 length] > v14)
  {
    v443 = v15;
    NSAppendPrintF_safe(&v443, "\n");
    v26 = v443;

    v15 = v26;
  }

  v27 = [v15 length];
  batteryInfo = self->_batteryInfo;
  if (batteryInfo)
  {
    batteryMain = [(AADeviceBatteryInfo *)batteryInfo batteryMain];
    v30 = batteryMain;
    if (batteryMain)
    {
      v442 = v15;
      NSAppendPrintF_safe(&v442, "%@, ", batteryMain);
      v31 = v442;

      v15 = v31;
    }

    batteryCase = [(AADeviceBatteryInfo *)self->_batteryInfo batteryCase];
    v33 = batteryCase;
    if (batteryCase)
    {
      v441 = v15;
      NSAppendPrintF_safe(&v441, "%@, ", batteryCase);
      v34 = v441;

      v15 = v34;
    }

    batteryCombinedLeftRight = [(AADeviceBatteryInfo *)self->_batteryInfo batteryCombinedLeftRight];
    v36 = batteryCombinedLeftRight;
    if (batteryCombinedLeftRight)
    {
      v440 = v15;
      NSAppendPrintF_safe(&v440, ", comb LR %@", batteryCombinedLeftRight);
      v37 = v440;

      v15 = v37;
    }

    batteryLeft = [(AADeviceBatteryInfo *)self->_batteryInfo batteryLeft];
    v39 = batteryLeft;
    if (batteryLeft)
    {
      v439 = v15;
      NSAppendPrintF_safe(&v439, "%@, ", batteryLeft);
      v40 = v439;

      v15 = v40;
    }

    batteryRight = [(AADeviceBatteryInfo *)self->_batteryInfo batteryRight];
    v42 = batteryRight;
    if (batteryRight)
    {
      v438 = v15;
      NSAppendPrintF_safe(&v438, "%@, ", batteryRight);
      v43 = v438;

      v15 = v43;
    }

    if ([v15 length] > v27)
    {
      v437 = v15;
      NSAppendPrintF_safe(&v437, "\n");
      v44 = v437;

      v15 = v44;
    }

    v27 = [v15 length];
  }

  v436 = v15;
  NSAppendPrintF_safe(&v436, "Bbl: ");
  v45 = v436;

  bobbleCapability = self->_bobbleCapability;
  if (self->_bobbleCapability)
  {
    if (bobbleCapability == 1)
    {
      v47 = "Unsupported";
    }

    else
    {
      v47 = "?";
    }

    if (bobbleCapability == 2)
    {
      v48 = "Supported";
    }

    else
    {
      v48 = v47;
    }

    v49 = ShorthandString(v48);
    v435 = v45;
    NSAppendPrintF_safe(&v435, "cap %s, ", v49);
    v50 = v435;

    v45 = v50;
  }

  bobbleConfig = self->_bobbleConfig;
  if (self->_bobbleConfig)
  {
    if (bobbleConfig == 1)
    {
      v52 = "Disabled";
    }

    else
    {
      v52 = "?";
    }

    if (bobbleConfig == 2)
    {
      v53 = "Enabled";
    }

    else
    {
      v53 = v52;
    }

    v54 = ShorthandString(v53);
    v434 = v45;
    NSAppendPrintF_safe(&v434, "cfg %s, ", v54);
    v55 = v434;

    v45 = v55;
  }

  if ([v45 length] > v27)
  {
    v433 = v45;
    NSAppendPrintF_safe(&v433, "\n");
    v56 = v433;

    v45 = v56;
  }

  v57 = [v45 length];
  v432 = v45;
  NSAppendPrintF_safe(&v432, "Cam ctl: ");
  v58 = v432;

  cameraControlCapability = self->_cameraControlCapability;
  if (self->_cameraControlCapability)
  {
    if (cameraControlCapability == 1)
    {
      v60 = "Unsupported";
    }

    else
    {
      v60 = "?";
    }

    if (cameraControlCapability == 2)
    {
      v61 = "Supported";
    }

    else
    {
      v61 = v60;
    }

    v62 = ShorthandString(v61);
    v431 = v58;
    NSAppendPrintF_safe(&v431, "cap %s, ", v62);
    v63 = v431;

    v58 = v63;
  }

  remoteCameraControlConfig = self->_remoteCameraControlConfig;
  if (self->_remoteCameraControlConfig)
  {
    v430 = v58;
    if (remoteCameraControlConfig > 3)
    {
      v65 = "?";
    }

    else
    {
      v65 = off_278CDDAB0[remoteCameraControlConfig - 1];
    }

    v66 = ShorthandString(v65);
    NSAppendPrintF_safe(&v430, "cfg %s, ", v66);
    v67 = v430;

    v58 = v67;
  }

  if ([v58 length] > v57)
  {
    v429 = v58;
    NSAppendPrintF_safe(&v429, "\n");
    v68 = v429;

    v58 = v68;
  }

  v69 = [v58 length];
  v428 = v58;
  NSAppendPrintF_safe(&v428, "Chr rem: ");
  v70 = v428;

  chargingReminderCapability = [(AudioAccessoryDevice *)self chargingReminderCapability];
  if (chargingReminderCapability)
  {
    if (chargingReminderCapability == 1)
    {
      v72 = "Unsupported";
    }

    else
    {
      v72 = "?";
    }

    if (chargingReminderCapability == 2)
    {
      v73 = "Supported";
    }

    else
    {
      v73 = v72;
    }

    v74 = ShorthandString(v73);
    v427 = v70;
    NSAppendPrintF_safe(&v427, "cap %s, ", v74);
    v75 = v427;

    v70 = v75;
  }

  chargingReminderEnabled = self->_chargingReminderEnabled;
  if (self->_chargingReminderEnabled)
  {
    if (chargingReminderEnabled == 1)
    {
      v77 = "Yes";
    }

    else
    {
      v77 = "?";
    }

    if (chargingReminderEnabled == 2)
    {
      v78 = "No";
    }

    else
    {
      v78 = v77;
    }

    v79 = ShorthandString(v78);
    v426 = v70;
    NSAppendPrintF_safe(&v426, "en %s, ", v79);
    v80 = v426;

    v70 = v80;
  }

  v425 = v70;
  NSAppendPrintF_safe(&v425, "DEOC: ");
  v81 = v425;

  dynamicEndOfChargeCapability = self->_dynamicEndOfChargeCapability;
  if (self->_dynamicEndOfChargeCapability)
  {
    if (dynamicEndOfChargeCapability == 1)
    {
      v83 = "Unsupported";
    }

    else
    {
      v83 = "?";
    }

    if (dynamicEndOfChargeCapability == 2)
    {
      v84 = "Supported";
    }

    else
    {
      v84 = v83;
    }

    v85 = ShorthandString(v84);
    v424 = v81;
    NSAppendPrintF_safe(&v424, "cap %s, ", v85);
    v86 = v424;

    v81 = v86;
  }

  dynamicEndOfChargeState = [(AudioAccessoryDevice *)self dynamicEndOfChargeState];
  if (dynamicEndOfChargeState)
  {
    v423 = v81;
    if (dynamicEndOfChargeState > 3)
    {
      v88 = "?";
    }

    else
    {
      v88 = off_278CDDAC8[dynamicEndOfChargeState - 1];
    }

    v89 = ShorthandString(v88);
    NSAppendPrintF_safe(&v423, "st %s, ", v89);
    v90 = v423;

    v81 = v90;
  }

  v422 = v81;
  NSAppendPrintF_safe(&v422, "OBC: ");
  v91 = v422;

  optimizedBatteryChargingCapability = [(AudioAccessoryDevice *)self optimizedBatteryChargingCapability];
  if (optimizedBatteryChargingCapability)
  {
    if (optimizedBatteryChargingCapability == 1)
    {
      v93 = "Unsupported";
    }

    else
    {
      v93 = "?";
    }

    if (optimizedBatteryChargingCapability == 2)
    {
      v94 = "Supported";
    }

    else
    {
      v94 = v93;
    }

    v95 = ShorthandString(v94);
    v421 = v91;
    NSAppendPrintF_safe(&v421, "cap %s, ", v95);
    v96 = v421;

    v91 = v96;
  }

  optimizedBatteryChargingState = self->_optimizedBatteryChargingState;
  if (self->_optimizedBatteryChargingState)
  {
    v420 = v91;
    if (optimizedBatteryChargingState > 3)
    {
      v98 = "?";
    }

    else
    {
      v98 = off_278CDDAC8[optimizedBatteryChargingState - 1];
    }

    v99 = ShorthandString(v98);
    NSAppendPrintF_safe(&v420, "en %s, ", v99);
    v100 = v420;

    v91 = v100;
  }

  if ([v91 length] > v69)
  {
    v419 = v91;
    NSAppendPrintF_safe(&v419, "\n");
    v101 = v419;

    v91 = v101;
  }

  v102 = [v91 length];
  v418 = v91;
  NSAppendPrintF_safe(&v418, "HG: ");
  v103 = v418;

  detectedHeadGesture = self->_detectedHeadGesture;
  if (self->_detectedHeadGesture)
  {
    v417 = v103;
    if (detectedHeadGesture > 4)
    {
      v105 = "?";
    }

    else
    {
      v105 = off_278CDDAE0[detectedHeadGesture - 1];
    }

    v106 = ShorthandString(v105);
    NSAppendPrintF_safe(&v417, "det %s, ", v106);
    v107 = v417;

    v103 = v107;
  }

  headGestureToggle = self->_headGestureToggle;
  if (self->_headGestureToggle)
  {
    if (headGestureToggle == 1)
    {
      v109 = "Yes";
    }

    else
    {
      v109 = "?";
    }

    if (headGestureToggle == 2)
    {
      v110 = "No";
    }

    else
    {
      v110 = v109;
    }

    v111 = ShorthandString(v110);
    v416 = v103;
    NSAppendPrintF_safe(&v416, "tgl %s, ", v111);
    v112 = v416;

    v103 = v112;
  }

  acceptReplyPlayPauseConfig = self->_acceptReplyPlayPauseConfig;
  if (self->_acceptReplyPlayPauseConfig)
  {
    v415 = v103;
    if (acceptReplyPlayPauseConfig > 3)
    {
      v114 = "?";
    }

    else
    {
      v114 = off_278CDDB00[acceptReplyPlayPauseConfig - 1];
    }

    v115 = ShorthandString(v114);
    NSAppendPrintF_safe(&v415, "acct %s, ", v115);
    v116 = v415;

    v103 = v116;
  }

  declineDismissSkipConfig = self->_declineDismissSkipConfig;
  if (self->_declineDismissSkipConfig)
  {
    v414 = v103;
    if (declineDismissSkipConfig > 3)
    {
      v118 = "?";
    }

    else
    {
      v118 = off_278CDDB00[declineDismissSkipConfig - 1];
    }

    v119 = ShorthandString(v118);
    NSAppendPrintF_safe(&v414, "decl %s, ", v119);
    v120 = v414;

    v103 = v120;
  }

  if (self->_rawGesturesConfigFlags)
  {
    v413 = v103;
    v121 = CUPrintFlags32();
    NSAppendPrintF_safe(&v413, "rgCg %@, ", v121);
    v122 = v413;

    v103 = v122;
  }

  if ([v103 length] > v102)
  {
    v412 = v103;
    NSAppendPrintF_safe(&v412, "\n");
    v123 = v412;

    v103 = v123;
  }

  v124 = [v103 length];
  v411 = v103;
  NSAppendPrintF_safe(&v411, "HA: ");
  v125 = v411;

  hearingAidCapability = self->_hearingAidCapability;
  if (self->_hearingAidCapability)
  {
    if (hearingAidCapability == 1)
    {
      v127 = "Disabled";
    }

    else
    {
      v127 = "?";
    }

    if (hearingAidCapability == 2)
    {
      v128 = "Enabled";
    }

    else
    {
      v128 = v127;
    }

    v129 = ShorthandString(v128);
    v410 = v125;
    NSAppendPrintF_safe(&v410, "cap %s, ", v129);
    v130 = v410;

    v125 = v130;
  }

  hearingAidEnabled = self->_hearingAidEnabled;
  if (self->_hearingAidEnabled)
  {
    if (hearingAidEnabled == 1)
    {
      v132 = "Yes";
    }

    else
    {
      v132 = "?";
    }

    if (hearingAidEnabled == 2)
    {
      v133 = "No";
    }

    else
    {
      v133 = v132;
    }

    v134 = ShorthandString(v133);
    v409 = v125;
    NSAppendPrintF_safe(&v409, "en %s, ", v134);
    v135 = v409;

    v125 = v135;
  }

  hearingAidEnrolled = self->_hearingAidEnrolled;
  if (self->_hearingAidEnrolled)
  {
    if (hearingAidEnrolled == 1)
    {
      v137 = "Yes";
    }

    else
    {
      v137 = "?";
    }

    if (hearingAidEnrolled == 2)
    {
      v138 = "No";
    }

    else
    {
      v138 = v137;
    }

    v139 = ShorthandString(v138);
    v408 = v125;
    NSAppendPrintF_safe(&v408, "enr %s, ", v139);
    v140 = v408;

    v125 = v140;
  }

  hearingAidGainSwipeEnabled = self->_hearingAidGainSwipeEnabled;
  if (self->_hearingAidGainSwipeEnabled)
  {
    if (hearingAidGainSwipeEnabled == 1)
    {
      v142 = "Yes";
    }

    else
    {
      v142 = "?";
    }

    if (hearingAidGainSwipeEnabled == 2)
    {
      v143 = "No";
    }

    else
    {
      v143 = v142;
    }

    v144 = ShorthandString(v143);
    v407 = v125;
    NSAppendPrintF_safe(&v407, "gs %s, ", v144);
    v145 = v407;

    v125 = v145;
  }

  hearingAidV2Capability = self->_hearingAidV2Capability;
  if (self->_hearingAidV2Capability)
  {
    if (hearingAidV2Capability == 1)
    {
      v147 = "Unsupported";
    }

    else
    {
      v147 = "?";
    }

    if (hearingAidV2Capability == 2)
    {
      v148 = "Supported";
    }

    else
    {
      v148 = v147;
    }

    v149 = ShorthandString(v148);
    v406 = v125;
    NSAppendPrintF_safe(&v406, "v2 cap %s, ", v149);
    v150 = v406;

    v125 = v150;
  }

  hearingAssistEnabled = self->_hearingAssistEnabled;
  if (self->_hearingAssistEnabled)
  {
    if (hearingAssistEnabled == 1)
    {
      v152 = "Yes";
    }

    else
    {
      v152 = "?";
    }

    if (hearingAssistEnabled == 2)
    {
      v153 = "No";
    }

    else
    {
      v153 = v152;
    }

    v154 = ShorthandString(v153);
    v405 = v125;
    NSAppendPrintF_safe(&v405, "top lvl %s, ", v154);
    v155 = v405;

    v125 = v155;
  }

  v404 = v125;
  NSAppendPrintF_safe(&v404, "HP: ");
  v156 = v404;

  hearingProtectionCapability = self->_hearingProtectionCapability;
  if (self->_hearingProtectionCapability)
  {
    if (hearingProtectionCapability == 1)
    {
      v158 = "Unsupported";
    }

    else
    {
      v158 = "?";
    }

    if (hearingProtectionCapability == 2)
    {
      v159 = "Supported";
    }

    else
    {
      v159 = v158;
    }

    v160 = ShorthandString(v159);
    v403 = v156;
    NSAppendPrintF_safe(&v403, "cap %s, ", v160);
    v161 = v403;

    v156 = v161;
  }

  v402 = v156;
  NSAppendPrintF_safe(&v402, "PPE: ");
  v162 = v402;

  hearingProtectionPPECapability = self->_hearingProtectionPPECapability;
  if (self->_hearingProtectionPPECapability)
  {
    if (hearingProtectionPPECapability == 1)
    {
      v164 = "Unsupported";
    }

    else
    {
      v164 = "?";
    }

    if (hearingProtectionPPECapability == 2)
    {
      v165 = "Supported";
    }

    else
    {
      v165 = v164;
    }

    v166 = ShorthandString(v165);
    v401 = v162;
    NSAppendPrintF_safe(&v401, "cap %s, ", v166);
    v167 = v401;

    v162 = v167;
  }

  hearingProtectionPPECapLevel = self->_hearingProtectionPPECapLevel;
  if (hearingProtectionPPECapLevel)
  {
    v400 = v162;
    NSAppendPrintF_safe(&v400, "lvl %u, ", hearingProtectionPPECapLevel);
    v169 = v400;

    v162 = v169;
  }

  hearingProtectionPPEEnabled = self->_hearingProtectionPPEEnabled;
  if (self->_hearingProtectionPPEEnabled)
  {
    if (hearingProtectionPPEEnabled == 1)
    {
      v171 = "Yes";
    }

    else
    {
      v171 = "?";
    }

    if (hearingProtectionPPEEnabled == 2)
    {
      v172 = "No";
    }

    else
    {
      v172 = v171;
    }

    v173 = ShorthandString(v172);
    v399 = v162;
    NSAppendPrintF_safe(&v399, "en %s, ", v173);
    v174 = v399;

    v162 = v174;
  }

  v398 = v162;
  NSAppendPrintF_safe(&v398, "HT: ");
  v175 = v398;

  hearingTestCapability = self->_hearingTestCapability;
  if (self->_hearingTestCapability)
  {
    if (hearingTestCapability == 1)
    {
      v177 = "Disabled";
    }

    else
    {
      v177 = "?";
    }

    if (hearingTestCapability == 2)
    {
      v178 = "Enabled";
    }

    else
    {
      v178 = v177;
    }

    v179 = ShorthandString(v178);
    v397 = v175;
    NSAppendPrintF_safe(&v397, "cap %s, ", v179);
    v180 = v397;

    v175 = v180;
  }

  v181 = self->_audiogramEnrolledTimestamp;
  v182 = v181;
  if (v181)
  {
    v396 = v175;
    NSAppendPrintF_safe(&v396, "ag enr '%@', ", v181);
    v183 = v396;

    v175 = v183;
  }

  if ([v175 length] > v124)
  {
    v395 = v175;
    NSAppendPrintF_safe(&v395, "\n");
    v184 = v395;

    v175 = v184;
  }

  v185 = [v175 length];
  v394 = v175;
  NSAppendPrintF_safe(&v394, "HR: ");
  v186 = v394;

  heartRateMonitorCapability = self->_heartRateMonitorCapability;
  if (self->_heartRateMonitorCapability)
  {
    if (heartRateMonitorCapability == 1)
    {
      v188 = "Unsupported";
    }

    else
    {
      v188 = "?";
    }

    if (heartRateMonitorCapability == 2)
    {
      v189 = "Supported";
    }

    else
    {
      v189 = v188;
    }

    v190 = ShorthandString(v189);
    v393 = v186;
    NSAppendPrintF_safe(&v393, "cap %s, ", v190);
    v191 = v393;

    v186 = v191;
  }

  heartRateMonitorEnabled = self->_heartRateMonitorEnabled;
  if (self->_heartRateMonitorEnabled)
  {
    if (heartRateMonitorEnabled == 1)
    {
      v193 = "Yes";
    }

    else
    {
      v193 = "?";
    }

    if (heartRateMonitorEnabled == 2)
    {
      v194 = "No";
    }

    else
    {
      v194 = v193;
    }

    v195 = ShorthandString(v194);
    v392 = v186;
    NSAppendPrintF_safe(&v392, "en %s, ", v195);
    v196 = v392;

    v186 = v196;
  }

  if ([v186 length] > v185)
  {
    v391 = v186;
    NSAppendPrintF_safe(&v391, "\n");
    v197 = v391;

    v186 = v197;
  }

  v198 = [v186 length];
  v390 = v186;
  NSAppendPrintF_safe(&v390, "Lsn: ");
  v199 = v390;

  listeningMode = self->_listeningMode;
  if (listeningMode)
  {
    v389 = v199;
    if (listeningMode > 4)
    {
      v201 = "?";
    }

    else
    {
      v201 = off_278CDDB18[listeningMode - 1];
    }

    v202 = ShorthandString(v201);
    NSAppendPrintF_safe(&v389, "md %s, ", v202);
    v203 = v389;

    v199 = v203;
  }

  if (self->_listeningModeConfigs)
  {
    v388 = v199;
    v204 = CUPrintFlags32();
    NSAppendPrintF_safe(&v388, "cfg %@, ", v204);
    v205 = v388;

    v199 = v205;
  }

  listeningModeOffAllowed = self->_listeningModeOffAllowed;
  if (self->_listeningModeOffAllowed)
  {
    if (listeningModeOffAllowed == 1)
    {
      v207 = "Yes";
    }

    else
    {
      v207 = "?";
    }

    if (listeningModeOffAllowed == 2)
    {
      v208 = "No";
    }

    else
    {
      v208 = v207;
    }

    v209 = ShorthandString(v208);
    v387 = v199;
    NSAppendPrintF_safe(&v387, "off %s, ", v209);
    v210 = v387;

    v199 = v210;
  }

  if ([v199 length] > v198)
  {
    v386 = v199;
    NSAppendPrintF_safe(&v386, "\n");
    v211 = v386;

    v199 = v211;
  }

  v212 = [v199 length];
  v385 = v199;
  NSAppendPrintF_safe(&v385, "Pl: ");
  v213 = v385;

  placementMode = self->_placementMode;
  if (self->_placementMode)
  {
    v215 = "Enabled";
    if (placementMode != 1)
    {
      v215 = "?";
    }

    if (placementMode == 2)
    {
      v216 = "Disabled";
    }

    else
    {
      v216 = v215;
    }

    v217 = ShorthandString(v216);
    v384 = v213;
    NSAppendPrintF_safe(&v384, "md %s, ", v217);
    v218 = v384;

    v213 = v218;
  }

  primaryPlacement = self->_primaryPlacement;
  if (primaryPlacement)
  {
    v383 = v213;
    if (primaryPlacement > 7)
    {
      v220 = "?";
    }

    else
    {
      v220 = off_278CDDB38[primaryPlacement - 1];
    }

    v221 = ShorthandString(v220);
    NSAppendPrintF_safe(&v383, "pr %s, ", v221);
    v222 = v383;

    v213 = v222;
  }

  secondaryPlacement = self->_secondaryPlacement;
  if (secondaryPlacement)
  {
    v382 = v213;
    if (secondaryPlacement > 7)
    {
      v224 = "?";
    }

    else
    {
      v224 = off_278CDDB38[secondaryPlacement - 1];
    }

    v225 = ShorthandString(v224);
    NSAppendPrintF_safe(&v382, "sc %s, ", v225);
    v226 = v382;

    v213 = v226;
  }

  if ([v213 length] > v212)
  {
    v381 = v213;
    NSAppendPrintF_safe(&v381, "\n");
    v227 = v381;

    v213 = v227;
  }

  v228 = [v213 length];
  if (self->_smartRoutingStateFlags)
  {
    v380 = v213;
    v229 = CUPrintFlags32();
    NSAppendPrintF_safe(&v380, "smRtS %@, ", v229);
    v230 = v380;

    v213 = v230;
  }

  temporaryManagedPairedStatus = self->_temporaryManagedPairedStatus;
  if (self->_temporaryManagedPairedStatus)
  {
    if (temporaryManagedPairedStatus == 1)
    {
      v232 = "Yes";
    }

    else
    {
      v232 = "?";
    }

    if (temporaryManagedPairedStatus == 2)
    {
      v233 = "No";
    }

    else
    {
      v233 = v232;
    }

    v234 = ShorthandString(v233);
    v379 = v213;
    NSAppendPrintF_safe(&v379, "temp mg %s, ", v234);
    v235 = v379;

    v213 = v235;
  }

  if ([v213 length] > v228)
  {
    v378 = v213;
    NSAppendPrintF_safe(&v378, "\n");
    v236 = v378;

    v213 = v236;
  }

  v237 = [v213 length];
  v377 = v213;
  NSAppendPrintF_safe(&v377, "SrMt: ");
  v238 = v377;

  siriMultitoneCapability = self->_siriMultitoneCapability;
  if (self->_siriMultitoneCapability)
  {
    if (siriMultitoneCapability == 1)
    {
      v240 = "Unsupported";
    }

    else
    {
      v240 = "?";
    }

    if (siriMultitoneCapability == 2)
    {
      v241 = "Supported";
    }

    else
    {
      v241 = v240;
    }

    v242 = ShorthandString(v241);
    v376 = v238;
    NSAppendPrintF_safe(&v376, "cap %s, ", v242);
    v243 = v376;

    v238 = v243;
  }

  siriMultitoneEnabled = self->_siriMultitoneEnabled;
  if (self->_siriMultitoneEnabled)
  {
    if (siriMultitoneEnabled == 1)
    {
      v245 = "Yes";
    }

    else
    {
      v245 = "?";
    }

    if (siriMultitoneEnabled == 2)
    {
      v246 = "No";
    }

    else
    {
      v246 = v245;
    }

    v247 = ShorthandString(v246);
    v375 = v238;
    NSAppendPrintF_safe(&v375, "tg %s, ", v247);
    v248 = v375;

    v238 = v248;
  }

  if ([v238 length] > v237)
  {
    v374 = v238;
    NSAppendPrintF_safe(&v374, "\n");
    v249 = v374;

    v238 = v249;
  }

  v250 = [v238 length];
  v373 = v238;
  NSAppendPrintF_safe(&v373, "Sldt: ");
  v251 = v373;

  sleepDetectionCapability = self->_sleepDetectionCapability;
  if (self->_sleepDetectionCapability)
  {
    if (sleepDetectionCapability == 1)
    {
      v253 = "Unsupported";
    }

    else
    {
      v253 = "?";
    }

    if (sleepDetectionCapability == 2)
    {
      v254 = "Supported";
    }

    else
    {
      v254 = v253;
    }

    v255 = ShorthandString(v254);
    v372 = v251;
    NSAppendPrintF_safe(&v372, "cap %s, ", v255);
    v256 = v372;

    v251 = v256;
  }

  sleepDetectionEnabled = self->_sleepDetectionEnabled;
  if (self->_sleepDetectionEnabled)
  {
    if (sleepDetectionEnabled == 1)
    {
      v258 = "Yes";
    }

    else
    {
      v258 = "?";
    }

    if (sleepDetectionEnabled == 2)
    {
      v259 = "No";
    }

    else
    {
      v259 = v258;
    }

    v260 = ShorthandString(v259);
    v371 = v251;
    NSAppendPrintF_safe(&v371, "tg %s, ", v260);
    v261 = v371;

    v251 = v261;
  }

  if ([v251 length] > v250)
  {
    v370 = v251;
    NSAppendPrintF_safe(&v370, "\n");
    v262 = v370;

    v251 = v262;
  }

  v263 = [v251 length];
  v369 = v251;
  NSAppendPrintF_safe(&v369, "SS: ");
  v264 = v369;

  audioStreamState = self->_audioStreamState;
  if (audioStreamState)
  {
    v368 = v264;
    if (audioStreamState > 3)
    {
      v266 = "?";
    }

    else
    {
      v266 = off_278CDDB70[audioStreamState - 1];
    }

    v267 = ShorthandString(v266);
    NSAppendPrintF_safe(&v368, "as %s, ", v267);
    v268 = v368;

    v264 = v268;
  }

  frequencyBand = self->_frequencyBand;
  if (self->_frequencyBand)
  {
    v270 = "2.4";
    if (frequencyBand != 1)
    {
      v270 = "?";
    }

    if (frequencyBand == 2)
    {
      v271 = "5";
    }

    else
    {
      v271 = v270;
    }

    v272 = ShorthandString(v271);
    v367 = v264;
    NSAppendPrintF_safe(&v367, "fqBd %s, ", v272);
    v273 = v367;

    v264 = v273;
  }

  streamStateAoS = self->_streamStateAoS;
  if (self->_streamStateAoS)
  {
    v366 = v264;
    if (streamStateAoS > 3)
    {
      v275 = "?";
    }

    else
    {
      v275 = off_278CDDB88[streamStateAoS - 1];
    }

    v276 = ShorthandString(v275);
    NSAppendPrintF_safe(&v366, "aos %s, ", v276);
    v277 = v366;

    v264 = v277;
  }

  if ([v264 length] > v263)
  {
    v365 = v264;
    NSAppendPrintF_safe(&v365, "\n");
    v278 = v365;

    v264 = v278;
  }

  v279 = [v264 length];
  if ([v264 length] > v279)
  {
    v364 = v264;
    NSAppendPrintF_safe(&v364, "\n");
    v280 = v364;

    v264 = v280;
  }

  [v264 length];
  v363 = v264;
  NSAppendPrintF_safe(&v363, "Misc Caps: ");
  v281 = v363;

  caseSoundCapability = self->_caseSoundCapability;
  if (self->_caseSoundCapability)
  {
    if (caseSoundCapability == 1)
    {
      v283 = "Unsupported";
    }

    else
    {
      v283 = "?";
    }

    if (caseSoundCapability == 2)
    {
      v284 = "Supported";
    }

    else
    {
      v284 = v283;
    }

    v285 = ShorthandString(v284);
    v362 = v281;
    NSAppendPrintF_safe(&v362, "cas snd %s, ", v285);
    v286 = v362;

    v281 = v286;
  }

  earTipFitTestCapability = self->_earTipFitTestCapability;
  if (self->_earTipFitTestCapability)
  {
    if (earTipFitTestCapability == 1)
    {
      v288 = "Unsupported";
    }

    else
    {
      v288 = "?";
    }

    if (earTipFitTestCapability == 2)
    {
      v289 = "Supported";
    }

    else
    {
      v289 = v288;
    }

    v290 = ShorthandString(v289);
    v361 = v281;
    NSAppendPrintF_safe(&v361, "ear fit %s, ", v290);
    v291 = v361;

    v281 = v291;
  }

  farFieldUplinkCapability = self->_farFieldUplinkCapability;
  if (self->_farFieldUplinkCapability)
  {
    if (farFieldUplinkCapability == 1)
    {
      v293 = "Unsupported";
    }

    else
    {
      v293 = "?";
    }

    if (farFieldUplinkCapability == 2)
    {
      v294 = "Supported";
    }

    else
    {
      v294 = v293;
    }

    v295 = ShorthandString(v294);
    v360 = v281;
    NSAppendPrintF_safe(&v360, "ff upl %s, ", v295);
    v296 = v360;

    v281 = v296;
  }

  hideEarDetectionCapability = self->_hideEarDetectionCapability;
  if (self->_hideEarDetectionCapability)
  {
    if (hideEarDetectionCapability == 1)
    {
      v298 = "Unsupported";
    }

    else
    {
      v298 = "?";
    }

    if (hideEarDetectionCapability == 2)
    {
      v299 = "Supported";
    }

    else
    {
      v299 = v298;
    }

    v300 = ShorthandString(v299);
    v359 = v281;
    NSAppendPrintF_safe(&v359, "hide er %s, ", v300);
    v301 = v359;

    v281 = v301;
  }

  hideOffListeningModeCapability = self->_hideOffListeningModeCapability;
  if (self->_hideOffListeningModeCapability)
  {
    if (hideOffListeningModeCapability == 1)
    {
      v303 = "Unsupported";
    }

    else
    {
      v303 = "?";
    }

    if (hideOffListeningModeCapability == 2)
    {
      v304 = "Supported";
    }

    else
    {
      v304 = v303;
    }

    v305 = ShorthandString(v304);
    v358 = v281;
    NSAppendPrintF_safe(&v358, "hide off %s, ", v305);
    v306 = v358;

    v281 = v306;
  }

  ovadStreamingCapability = self->_ovadStreamingCapability;
  if (self->_ovadStreamingCapability)
  {
    if (ovadStreamingCapability == 1)
    {
      v308 = "Unsupported";
    }

    else
    {
      v308 = "?";
    }

    if (ovadStreamingCapability == 2)
    {
      v309 = "Supported";
    }

    else
    {
      v309 = v308;
    }

    v310 = ShorthandString(v309);
    v357 = v281;
    NSAppendPrintF_safe(&v357, "ovd str %s, ", v310);
    v311 = v357;

    v281 = v311;
  }

  pmeEverywhereCapability = self->_pmeEverywhereCapability;
  if (self->_pmeEverywhereCapability)
  {
    if (pmeEverywhereCapability == 1)
    {
      v313 = "Unsupported";
    }

    else
    {
      v313 = "?";
    }

    if (pmeEverywhereCapability == 2)
    {
      v314 = "Supported";
    }

    else
    {
      v314 = v313;
    }

    v315 = ShorthandString(v314);
    v356 = v281;
    NSAppendPrintF_safe(&v356, "pmee %s, ", v315);
    v316 = v356;

    v281 = v316;
  }

  personalTranslatorCapability = self->_personalTranslatorCapability;
  if (self->_personalTranslatorCapability)
  {
    if (personalTranslatorCapability == 1)
    {
      v318 = "Unsupported";
    }

    else
    {
      v318 = "?";
    }

    if (personalTranslatorCapability == 2)
    {
      v319 = "Supported";
    }

    else
    {
      v319 = v318;
    }

    v320 = ShorthandString(v319);
    v355 = v281;
    NSAppendPrintF_safe(&v355, "pt %s, ", v320);
    v321 = v355;

    v281 = v321;
  }

  v354 = v281;
  NSAppendPrintF_safe(&v354, "Misc Info: ");
  v322 = v354;

  enhancedTransparencyVersion = self->_enhancedTransparencyVersion;
  if (self->_enhancedTransparencyVersion)
  {
    v353 = v322;
    if (enhancedTransparencyVersion > 4)
    {
      v324 = "Unknown";
    }

    else
    {
      v324 = off_278CDDBA0[enhancedTransparencyVersion - 1];
    }

    NSAppendPrintF_safe(&v353, "enh trn %s,", v324);
    v325 = v353;

    v322 = v325;
  }

  farFieldSessionOnGoing = self->_farFieldSessionOnGoing;
  if (self->_farFieldSessionOnGoing)
  {
    if (farFieldSessionOnGoing == 1)
    {
      v327 = "Yes";
    }

    else
    {
      v327 = "?";
    }

    if (farFieldSessionOnGoing == 2)
    {
      v328 = "No";
    }

    else
    {
      v328 = v327;
    }

    v329 = ShorthandString(v328);
    v352 = v322;
    NSAppendPrintF_safe(&v352, "ffsog %s, ", v329);
    v330 = v352;

    v322 = v330;
  }

  healthKitDataWriteAllowed = self->_healthKitDataWriteAllowed;
  if (self->_healthKitDataWriteAllowed)
  {
    if (healthKitDataWriteAllowed == 1)
    {
      v332 = "Yes";
    }

    else
    {
      v332 = "?";
    }

    if (healthKitDataWriteAllowed == 2)
    {
      v333 = "No";
    }

    else
    {
      v333 = v332;
    }

    v334 = ShorthandString(v333);
    v351 = v322;
    NSAppendPrintF_safe(&v351, "hk wr %s", v334);
    v335 = v351;

    v322 = v335;
  }

  v336 = self->_lastSeenConnectedTime;
  v337 = v336;
  if (v336)
  {
    v350 = v322;
    NSAppendPrintF_safe(&v350, "lst conn '%@', ", v336);
    v338 = v350;

    v322 = v338;
  }

  v349 = v322;
  NSAppendPrintF_safe(&v349, "\n");
  v339 = v349;

  v340 = self->_coreBluetoothDevice;
  v341 = v340;
  if (v340)
  {
    v348 = v339;
    NSAppendPrintF_safe(&v348, "\n%@", v340);
    v342 = v348;

    v339 = v342;
  }

  if (levelCopy < 0x15u)
  {
    v347 = v339;
    NSAppendPrintF_safe(&v347, "\n");
    v343 = v347;

    v339 = v343;
  }

  v344 = v339;

  return v339;
}

- (NSString)bluetoothAddress
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  bluetoothAddress = selfCopy->_bluetoothAddress;
  if (!bluetoothAddress)
  {
    if (selfCopy->_bluetoothAddressData)
    {
      v4 = CUPrintNSDataAddress();
      v5 = selfCopy->_bluetoothAddress;
      selfCopy->_bluetoothAddress = v4;

      bluetoothAddress = selfCopy->_bluetoothAddress;
    }

    else
    {
      bluetoothAddress = 0;
    }
  }

  v6 = bluetoothAddress;
  objc_sync_exit(selfCopy);

  return v6;
}

- (unsigned)chargingReminderCapability
{
  productID = [(AudioAccessoryDevice *)self productID];
  if (productID - 8212 > 0x14 || ((1 << (productID - 20)) & 0x190081) == 0)
  {
    return productID != 0;
  }

  else
  {
    return 2;
  }
}

- (BOOL)connectedInfoComplete
{
  if (![(AudioAccessoryDevice *)self connectedCBDeviceReceived]|| ![(AudioAccessoryDevice *)self connectedAADeviceInfoReceived])
  {
    return 0;
  }

  return [(AudioAccessoryDevice *)self pairedInfoComplete];
}

- (char)dynamicEndOfChargeState
{
  dynamicEndOfChargeEnabled = [(AudioAccessoryDevice *)self dynamicEndOfChargeEnabled];
  if (dynamicEndOfChargeEnabled)
  {
    dynamicEndOfChargeEnabled2 = [(AudioAccessoryDevice *)self dynamicEndOfChargeEnabled];
    if ([(AudioAccessoryDevice *)self dynamicEndOfChargeTempDisabled]== 1)
    {
      v5 = 3;
    }

    else
    {
      v5 = 1;
    }

    if (dynamicEndOfChargeEnabled2 == 1)
    {
      LOBYTE(dynamicEndOfChargeEnabled) = v5;
    }

    else
    {
      LOBYTE(dynamicEndOfChargeEnabled) = 2;
    }
  }

  return dynamicEndOfChargeEnabled;
}

- (unsigned)optimizedBatteryChargingCapability
{
  productID = [(AudioAccessoryDevice *)self productID];
  if (productID - 8206 > 0x1A || ((1 << (productID - 14)) & 0x6452861) == 0)
  {
    return productID != 0;
  }

  else
  {
    return 2;
  }
}

- (BOOL)pairedInfoComplete
{
  pairedCBDeviceReceived = [(AudioAccessoryDevice *)self pairedCBDeviceReceived];
  if (pairedCBDeviceReceived)
  {

    LOBYTE(pairedCBDeviceReceived) = [(AudioAccessoryDevice *)self pairedAADeviceInfoReceived];
  }

  return pairedCBDeviceReceived;
}

- (unsigned)computePersonalTranslatorCapability
{
  if (![(AudioAccessoryDevice *)self ovadStreamingCapability]&& ![(AudioAccessoryDevice *)self farFieldUplinkCapability])
  {
    return 0;
  }

  if ([(AudioAccessoryDevice *)self ovadStreamingCapability]== 2 && [(AudioAccessoryDevice *)self farFieldUplinkCapability]== 2)
  {
    os_eligibility_get_domain_answer();
    if (gLogCategory_AudioAccessoryDevice <= 30 && (gLogCategory_AudioAccessoryDevice != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (gLogCategory_AudioAccessoryDevice <= 30 && (gLogCategory_AudioAccessoryDevice != -1 || _LogCategory_Initialize()))
    {
      [AudioAccessoryDevice computePersonalTranslatorCapability];
    }

    return 1;
  }

  else
  {
    if (gLogCategory_AudioAccessoryDevice <= 30 && (gLogCategory_AudioAccessoryDevice != -1 || _LogCategory_Initialize()))
    {
      [AudioAccessoryDevice computePersonalTranslatorCapability];
    }

    return 1;
  }
}

- (void)setBatteryInfo:(id)info
{
  infoCopy = info;
  p_batteryInfo = &self->_batteryInfo;
  if (self->_batteryInfo != infoCopy)
  {
    v8 = infoCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_storeStrong(p_batteryInfo, info);
    objc_sync_exit(selfCopy);

    infoCopy = v8;
  }
}

- (void)setBluetoothAddressData:(id)data
{
  dataCopy = data;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_storeStrong(&selfCopy->_bluetoothAddressData, data);
  v6 = CUPrintNSDataAddress();
  bluetoothAddress = selfCopy->_bluetoothAddress;
  selfCopy->_bluetoothAddress = v6;

  objc_sync_exit(selfCopy);
}

- (void)setCloudRecordInfoLoaded:(BOOL)loaded
{
  if (self->_cloudRecordInfoLoaded != loaded)
  {
    obj = self;
    objc_sync_enter(obj);
    self->_cloudRecordInfoLoaded = loaded;
    objc_sync_exit(obj);
  }
}

- (void)setConnected:(BOOL)connected
{
  if (self->_connected != connected)
  {
    obj = self;
    objc_sync_enter(obj);
    self->_connected = connected;
    objc_sync_exit(obj);
  }
}

- (BOOL)setDefaultConfigurationsForCloudSyncedPropertiesIfNeeded
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_bobbleCapability == 2 && !selfCopy->_headGestureToggle)
  {
    selfCopy->_headGestureToggle = 2;
    v3 = 1;
    selfCopy->_acceptReplyPlayPauseConfig = 1;
    selfCopy->_declineDismissSkipConfig = 2;
  }

  else
  {
    v3 = 0;
  }

  if ([(AudioAccessoryDevice *)selfCopy heartRateMonitorCapability]== 2 && !selfCopy->_healthKitDataWriteAllowed)
  {
    v3 = 1;
    selfCopy->_healthKitDataWriteAllowed = 1;
  }

  if (_os_feature_enabled_impl() && [(AudioAccessoryDevice *)selfCopy chargingReminderCapability]== 2 && !selfCopy->_chargingReminderEnabled)
  {
    v3 = 1;
    selfCopy->_chargingReminderEnabled = 1;
  }

  if (_os_feature_enabled_impl() && selfCopy->_cameraControlCapability == 2 && !selfCopy->_remoteCameraControlConfig)
  {
    v3 = 1;
    selfCopy->_remoteCameraControlConfig = 1;
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setDetectedHeadGesture:(unsigned __int8)gesture
{
  if (self->_detectedHeadGesture != gesture)
  {
    obj = self;
    objc_sync_enter(obj);
    self->_detectedHeadGesture = gesture;
    objc_sync_exit(obj);
  }
}

- (void)setDynamicEndOfChargeEnabled:(char)enabled
{
  if (self->_dynamicEndOfChargeEnabled != enabled)
  {
    obj = self;
    objc_sync_enter(obj);
    self->_dynamicEndOfChargeEnabled = enabled;
    objc_sync_exit(obj);
  }
}

- (void)setHeartRateMonitorCapabilityChanged:(BOOL)changed
{
  if (self->_heartRateMonitorCapabilityChanged != changed)
  {
    obj = self;
    objc_sync_enter(obj);
    self->_heartRateMonitorCapabilityChanged = changed;
    objc_sync_exit(obj);
  }
}

- (void)setHeartRateMonitorCapabilityValueOriginatedFromDevice:(BOOL)device
{
  if (self->_heartRateMonitorCapabilityValueOriginatedFromDevice != device)
  {
    obj = self;
    objc_sync_enter(obj);
    self->_heartRateMonitorCapabilityValueOriginatedFromDevice = device;
    objc_sync_exit(obj);
  }
}

- (void)setDynamicEndOfChargeTempDisabled:(char)disabled
{
  if (self->_dynamicEndOfChargeTempDisabled != disabled)
  {
    obj = self;
    objc_sync_enter(obj);
    self->_dynamicEndOfChargeTempDisabled = disabled;
    objc_sync_exit(obj);
  }
}

- (void)setIdentifier:(id)identifier
{
  identifierCopy = identifier;
  obj = self;
  objc_sync_enter(obj);
  identifier = obj->_identifier;
  obj->_identifier = identifierCopy;

  objc_sync_exit(obj);
}

- (void)setOnConnectionActionsCalled:(BOOL)called
{
  if (self->_onConnectionActionsCalled != called)
  {
    obj = self;
    objc_sync_enter(obj);
    self->_onConnectionActionsCalled = called;
    objc_sync_exit(obj);
  }
}

- (void)setOptimizedBatteryChargingState:(char)state
{
  if (self->_optimizedBatteryChargingState != state)
  {
    obj = self;
    objc_sync_enter(obj);
    self->_optimizedBatteryChargingState = state;
    objc_sync_exit(obj);
  }
}

- (void)setPaired:(BOOL)paired
{
  if (self->_paired != paired)
  {
    obj = self;
    objc_sync_enter(obj);
    self->_paired = paired;
    objc_sync_exit(obj);
  }
}

- (void)setSiriMultitoneEnabled:(char)enabled
{
  if (self->_siriMultitoneEnabled != enabled)
  {
    obj = self;
    objc_sync_enter(obj);
    self->_siriMultitoneEnabled = enabled;
    objc_sync_exit(obj);
  }
}

- (void)setSmartRoutingStateFlags:(unsigned int)flags
{
  if (self->_smartRoutingStateFlags != flags)
  {
    obj = self;
    objc_sync_enter(obj);
    self->_smartRoutingStateFlags = flags;
    objc_sync_exit(obj);
  }
}

- (void)setFarFieldSessionOnGoing:(char)going
{
  if (self->_farFieldSessionOnGoing != going)
  {
    obj = self;
    objc_sync_enter(obj);
    self->_farFieldSessionOnGoing = going;
    objc_sync_exit(obj);
  }
}

- (BOOL)updateWithPairedAADevice:(id)device
{
  deviceCopy = device;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  acceptReplyPlayPauseConfig = [deviceCopy acceptReplyPlayPauseConfig];
  if (acceptReplyPlayPauseConfig && [(AudioAccessoryDevice *)selfCopy acceptReplyPlayPauseConfig]!= acceptReplyPlayPauseConfig)
  {
    [(AudioAccessoryDevice *)selfCopy setAcceptReplyPlayPauseConfig:acceptReplyPlayPauseConfig];
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  autoANCCapability = [deviceCopy autoANCCapability];
  if (autoANCCapability && [(AudioAccessoryDevice *)selfCopy autoANCCapability]!= autoANCCapability)
  {
    [(AudioAccessoryDevice *)selfCopy setAutoANCCapability:autoANCCapability];
    v7 = 1;
  }

  audiogramEnrolledTimestamp = [deviceCopy audiogramEnrolledTimestamp];
  if (audiogramEnrolledTimestamp)
  {
    audiogramEnrolledTimestamp2 = [(AudioAccessoryDevice *)selfCopy audiogramEnrolledTimestamp];
    v11 = audiogramEnrolledTimestamp;
    v12 = v11;
    if (audiogramEnrolledTimestamp2 == v11)
    {
    }

    else
    {
      if (audiogramEnrolledTimestamp2)
      {
        v13 = [audiogramEnrolledTimestamp2 isEqual:v11];

        if (v13)
        {
          goto LABEL_16;
        }
      }

      else
      {
      }

      [(AudioAccessoryDevice *)selfCopy setAudiogramEnrolledTimestamp:v12];
      v7 = 1;
    }
  }

LABEL_16:
  bobbleCapability = [deviceCopy bobbleCapability];
  if (bobbleCapability && [(AudioAccessoryDevice *)selfCopy bobbleCapability]!= bobbleCapability)
  {
    [(AudioAccessoryDevice *)selfCopy setBobbleCapability:bobbleCapability];
    v7 = 1;
  }

  cameraControlCapability = [deviceCopy cameraControlCapability];
  if (cameraControlCapability && [(AudioAccessoryDevice *)selfCopy cameraControlCapability]!= cameraControlCapability)
  {
    [(AudioAccessoryDevice *)selfCopy setCameraControlCapability:cameraControlCapability];
    v7 = 1;
  }

  caseSoundCapability = [deviceCopy caseSoundCapability];
  if (caseSoundCapability && [(AudioAccessoryDevice *)selfCopy caseSoundCapability]!= caseSoundCapability)
  {
    [(AudioAccessoryDevice *)selfCopy setCaseSoundCapability:caseSoundCapability];
    v7 = 1;
  }

  chargingReminderEnabled = [deviceCopy chargingReminderEnabled];
  if (chargingReminderEnabled && [(AudioAccessoryDevice *)selfCopy chargingReminderEnabled]!= chargingReminderEnabled)
  {
    [(AudioAccessoryDevice *)selfCopy setChargingReminderEnabled:chargingReminderEnabled];
    v7 = 1;
  }

  declineDismissSkipConfig = [deviceCopy declineDismissSkipConfig];
  if (declineDismissSkipConfig && [(AudioAccessoryDevice *)selfCopy declineDismissSkipConfig]!= declineDismissSkipConfig)
  {
    [(AudioAccessoryDevice *)selfCopy setDeclineDismissSkipConfig:declineDismissSkipConfig];
    v7 = 1;
  }

  dynamicEndOfChargeCapability = [deviceCopy dynamicEndOfChargeCapability];
  if (dynamicEndOfChargeCapability != [(AudioAccessoryDevice *)selfCopy dynamicEndOfChargeCapability])
  {
    [(AudioAccessoryDevice *)selfCopy setDynamicEndOfChargeCapability:dynamicEndOfChargeCapability];
    v7 = 1;
  }

  earTipFitTestCapability = [deviceCopy earTipFitTestCapability];
  if (earTipFitTestCapability && [(AudioAccessoryDevice *)selfCopy earTipFitTestCapability]!= earTipFitTestCapability)
  {
    [(AudioAccessoryDevice *)selfCopy setEarTipFitTestCapability:earTipFitTestCapability];
    v7 = 1;
  }

  enhancedTransparencyVersion = [deviceCopy enhancedTransparencyVersion];
  if (enhancedTransparencyVersion != [(AudioAccessoryDevice *)selfCopy enhancedTransparencyVersion])
  {
    [(AudioAccessoryDevice *)selfCopy setEnhancedTransparencyVersion:enhancedTransparencyVersion];
    v7 = 1;
  }

  farFieldUplinkCapability = [deviceCopy farFieldUplinkCapability];
  if (farFieldUplinkCapability && [(AudioAccessoryDevice *)selfCopy farFieldUplinkCapability]!= farFieldUplinkCapability)
  {
    [(AudioAccessoryDevice *)selfCopy setFarFieldUplinkCapability:farFieldUplinkCapability];
    v7 = 1;
  }

  headGestureToggle = [deviceCopy headGestureToggle];
  if (headGestureToggle && [(AudioAccessoryDevice *)selfCopy headGestureToggle]!= headGestureToggle)
  {
    [(AudioAccessoryDevice *)selfCopy setHeadGestureToggle:headGestureToggle];
    v7 = 1;
  }

  ovadStreamingCapability = [deviceCopy ovadStreamingCapability];
  if (ovadStreamingCapability && [(AudioAccessoryDevice *)selfCopy ovadStreamingCapability]!= ovadStreamingCapability)
  {
    [(AudioAccessoryDevice *)selfCopy setOvadStreamingCapability:ovadStreamingCapability];
    v7 = 1;
  }

  healthKitDataWriteAllowed = [deviceCopy healthKitDataWriteAllowed];
  if (healthKitDataWriteAllowed && [(AudioAccessoryDevice *)selfCopy healthKitDataWriteAllowed]!= healthKitDataWriteAllowed)
  {
    [(AudioAccessoryDevice *)selfCopy setHealthKitDataWriteAllowed:healthKitDataWriteAllowed];
    v7 = 1;
  }

  hearingAidCapability = [deviceCopy hearingAidCapability];
  if (hearingAidCapability && [(AudioAccessoryDevice *)selfCopy hearingAidCapability]!= hearingAidCapability)
  {
    [(AudioAccessoryDevice *)selfCopy setHearingAidCapability:hearingAidCapability];
    v7 = 1;
  }

  hearingAidV2Capability = [deviceCopy hearingAidV2Capability];
  if (hearingAidV2Capability != [(AudioAccessoryDevice *)selfCopy hearingAidV2Capability])
  {
    [(AudioAccessoryDevice *)selfCopy setHearingAidV2Capability:hearingAidV2Capability];
    v7 = 1;
  }

  hearingProtectionCapability = [deviceCopy hearingProtectionCapability];
  if (hearingProtectionCapability && [(AudioAccessoryDevice *)selfCopy hearingProtectionCapability]!= hearingProtectionCapability)
  {
    [(AudioAccessoryDevice *)selfCopy setHearingProtectionCapability:hearingProtectionCapability];
    v7 = 1;
  }

  hearingProtectionPPECapability = [deviceCopy hearingProtectionPPECapability];
  if (hearingProtectionPPECapability != [(AudioAccessoryDevice *)selfCopy hearingProtectionPPECapability])
  {
    [(AudioAccessoryDevice *)selfCopy setHearingProtectionPPECapability:hearingProtectionPPECapability];
    v7 = 1;
  }

  hearingTestCapability = [deviceCopy hearingTestCapability];
  if (hearingTestCapability && [(AudioAccessoryDevice *)selfCopy hearingTestCapability]!= hearingTestCapability)
  {
    [(AudioAccessoryDevice *)selfCopy setHearingTestCapability:hearingTestCapability];
    v7 = 1;
  }

  heartRateMonitorCapability = [deviceCopy heartRateMonitorCapability];
  if (heartRateMonitorCapability && [(AudioAccessoryDevice *)selfCopy heartRateMonitorCapability]!= heartRateMonitorCapability)
  {
    [(AudioAccessoryDevice *)selfCopy setHeartRateMonitorCapability:heartRateMonitorCapability];
    v7 = 1;
  }

  hideEarDetectionCapability = [deviceCopy hideEarDetectionCapability];
  if (hideEarDetectionCapability && [(AudioAccessoryDevice *)selfCopy hideEarDetectionCapability]!= hideEarDetectionCapability)
  {
    [(AudioAccessoryDevice *)selfCopy setHideEarDetectionCapability:hideEarDetectionCapability];
    v7 = 1;
  }

  hideOffListeningModeCapability = [deviceCopy hideOffListeningModeCapability];
  if (hideOffListeningModeCapability && [(AudioAccessoryDevice *)selfCopy hideOffListeningModeCapability]!= hideOffListeningModeCapability)
  {
    [(AudioAccessoryDevice *)selfCopy setHideOffListeningModeCapability:hideOffListeningModeCapability];
    v7 = 1;
  }

  lastSeenConnectedTime = [deviceCopy lastSeenConnectedTime];
  lastSeenConnectedTime2 = [(AudioAccessoryDevice *)selfCopy lastSeenConnectedTime];
  v36 = lastSeenConnectedTime;
  v37 = lastSeenConnectedTime2;
  v38 = v37;
  if (v36 == v37)
  {
  }

  else
  {
    if ((v36 != 0) != (v37 == 0))
    {
      v39 = [v36 isEqual:v37];

      if (v39)
      {
        goto LABEL_79;
      }
    }

    else
    {
    }

    [(AudioAccessoryDevice *)selfCopy setLastSeenConnectedTime:v36];
    v7 = 1;
  }

LABEL_79:
  listeningModeOffAllowed = [deviceCopy listeningModeOffAllowed];
  if (listeningModeOffAllowed && [(AudioAccessoryDevice *)selfCopy listeningModeOffAllowed]!= listeningModeOffAllowed)
  {
    [(AudioAccessoryDevice *)selfCopy setListeningModeOffAllowed:listeningModeOffAllowed];
    v7 = 1;
  }

  model = [deviceCopy model];
  if (model)
  {
    model2 = [(AudioAccessoryDevice *)selfCopy model];
    v43 = model;
    v44 = v43;
    if (model2 == v43)
    {

      goto LABEL_90;
    }

    if (model2)
    {
      v45 = [model2 isEqual:v43];

      if (v45)
      {
        goto LABEL_90;
      }
    }

    else
    {
    }

    [(AudioAccessoryDevice *)selfCopy setModel:v44];
    v7 = 1;
  }

LABEL_90:
  name = [deviceCopy name];
  if (name)
  {
    name2 = [(AudioAccessoryDevice *)selfCopy name];
    v48 = name;
    v49 = v48;
    if (name2 == v48)
    {
    }

    else
    {
      if (name2)
      {
        v50 = [name2 isEqual:v48];

        if (v50)
        {
          goto LABEL_98;
        }
      }

      else
      {
      }

      [(AudioAccessoryDevice *)selfCopy setName:v49];
      v7 = 1;
    }
  }

LABEL_98:
  if ([deviceCopy paired] && !-[AudioAccessoryDevice paired](selfCopy, "paired"))
  {
    v7 = 1;
    [(AudioAccessoryDevice *)selfCopy setPaired:1];
  }

  computePersonalTranslatorCapability = [(AudioAccessoryDevice *)selfCopy computePersonalTranslatorCapability];
  if (computePersonalTranslatorCapability != [(AudioAccessoryDevice *)selfCopy personalTranslatorCapability])
  {
    [(AudioAccessoryDevice *)selfCopy setPersonalTranslatorCapability:computePersonalTranslatorCapability];
    v7 = 1;
  }

  productID = [deviceCopy productID];
  if (productID && [(AudioAccessoryDevice *)selfCopy productID]!= productID)
  {
    [(AudioAccessoryDevice *)selfCopy setProductID:productID];
    v7 = 1;
  }

  if (_os_feature_enabled_impl())
  {
    remoteCameraControlConfig = [deviceCopy remoteCameraControlConfig];
    if (remoteCameraControlConfig)
    {
      if ([(AudioAccessoryDevice *)selfCopy remoteCameraControlConfig]!= remoteCameraControlConfig)
      {
        -[AudioAccessoryDevice setRemoteCameraControlConfig:](selfCopy, "setRemoteCameraControlConfig:", [deviceCopy remoteCameraControlConfig]);
        v7 = 1;
      }
    }
  }

  siriMultitoneCapability = [deviceCopy siriMultitoneCapability];
  if (siriMultitoneCapability && [(AudioAccessoryDevice *)selfCopy siriMultitoneCapability]!= siriMultitoneCapability)
  {
    [(AudioAccessoryDevice *)selfCopy setSiriMultitoneCapability:siriMultitoneCapability];
    v7 = 1;
  }

  sleepDetectionCapability = [deviceCopy sleepDetectionCapability];
  if (sleepDetectionCapability && [(AudioAccessoryDevice *)selfCopy sleepDetectionCapability]!= sleepDetectionCapability)
  {
    [(AudioAccessoryDevice *)selfCopy setSleepDetectionCapability:sleepDetectionCapability];
    v7 = 1;
  }

  if (_os_feature_enabled_impl())
  {
    temporaryManagedPairedStatus = [deviceCopy temporaryManagedPairedStatus];
    if (temporaryManagedPairedStatus != [(AudioAccessoryDevice *)selfCopy temporaryManagedPairedStatus])
    {
      [(AudioAccessoryDevice *)selfCopy setTemporaryManagedPairedStatus:temporaryManagedPairedStatus];
      v7 = 1;
    }
  }

  pairedAADeviceInfoReceived = [deviceCopy pairedAADeviceInfoReceived];
  if (pairedAADeviceInfoReceived != [(AudioAccessoryDevice *)selfCopy pairedAADeviceInfoReceived])
  {
    [(AudioAccessoryDevice *)selfCopy setPairedAADeviceInfoReceived:pairedAADeviceInfoReceived];
    v7 = 1;
  }

  pairedCBDeviceReceived = [deviceCopy pairedCBDeviceReceived];
  if (pairedCBDeviceReceived != [(AudioAccessoryDevice *)selfCopy pairedCBDeviceReceived])
  {
    [(AudioAccessoryDevice *)selfCopy setPairedCBDeviceReceived:pairedCBDeviceReceived];
    v7 = 1;
  }

  pmeEverywhereCapability = [deviceCopy pmeEverywhereCapability];
  if (pmeEverywhereCapability && [(AudioAccessoryDevice *)selfCopy pmeEverywhereCapability]!= pmeEverywhereCapability)
  {
    [(AudioAccessoryDevice *)selfCopy setPmeEverywhereCapability:pmeEverywhereCapability];
    v7 = 1;
  }

  objc_sync_exit(selfCopy);
  return v7;
}

- (BOOL)updateWithAADeviceConfig:(id)config
{
  configCopy = config;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  headGestureToggle = [configCopy headGestureToggle];
  v7 = headGestureToggle != 0;
  if (headGestureToggle)
  {
    -[AudioAccessoryDevice setHeadGestureToggle:](selfCopy, "setHeadGestureToggle:", [configCopy headGestureToggle]);
  }

  if ([configCopy acceptReplyPlayPauseConfig])
  {
    -[AudioAccessoryDevice setAcceptReplyPlayPauseConfig:](selfCopy, "setAcceptReplyPlayPauseConfig:", [configCopy acceptReplyPlayPauseConfig]);
    v7 = 1;
  }

  if ([configCopy declineDismissSkipConfig])
  {
    -[AudioAccessoryDevice setDeclineDismissSkipConfig:](selfCopy, "setDeclineDismissSkipConfig:", [configCopy declineDismissSkipConfig]);
    v7 = 1;
  }

  if (_os_feature_enabled_impl())
  {
    audiogramEnrolledTimestamp = [configCopy audiogramEnrolledTimestamp];

    if (audiogramEnrolledTimestamp)
    {
      audiogramEnrolledTimestamp2 = [configCopy audiogramEnrolledTimestamp];
      [(AudioAccessoryDevice *)selfCopy setAudiogramEnrolledTimestamp:audiogramEnrolledTimestamp2];

      v7 = 1;
    }
  }

  if (_os_feature_enabled_impl() && _os_feature_enabled_impl() && [configCopy listeningModeOffAllowed])
  {
    -[AudioAccessoryDevice setListeningModeOffAllowed:](selfCopy, "setListeningModeOffAllowed:", [configCopy listeningModeOffAllowed]);
    v7 = 1;
  }

  if (_os_feature_enabled_impl() && [configCopy enableChargingReminder])
  {
    -[AudioAccessoryDevice setChargingReminderEnabled:](selfCopy, "setChargingReminderEnabled:", [configCopy enableChargingReminder]);
    v7 = 1;
  }

  if ([configCopy enableHeartRateMonitor])
  {
    -[AudioAccessoryDevice setHeartRateMonitorEnabled:](selfCopy, "setHeartRateMonitorEnabled:", [configCopy enableHeartRateMonitor]);
    v7 = 1;
  }

  if (_os_feature_enabled_impl() && [configCopy remoteCameraControlConfig])
  {
    -[AudioAccessoryDevice setRemoteCameraControlConfig:](selfCopy, "setRemoteCameraControlConfig:", [configCopy remoteCameraControlConfig]);
    v7 = 1;
  }

  if ([configCopy allowHealthKitDataWrite])
  {
    -[AudioAccessoryDevice setHealthKitDataWriteAllowed:](selfCopy, "setHealthKitDataWriteAllowed:", [configCopy allowHealthKitDataWrite]);
    v7 = 1;
  }

  objc_sync_exit(selfCopy);

  return v7;
}

- (BOOL)updateWithConnectedAADeviceInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  autoANCStrength = [infoCopy autoANCStrength];
  autoANCStrength2 = [(AudioAccessoryDevice *)selfCopy autoANCStrength];
  v8 = autoANCStrength != autoANCStrength2;
  if (autoANCStrength != autoANCStrength2)
  {
    [(AudioAccessoryDevice *)selfCopy setAutoANCStrength:autoANCStrength];
  }

  streamStateAoS = [infoCopy streamStateAoS];
  if (streamStateAoS != [(AudioAccessoryDevice *)selfCopy streamStateAoS])
  {
    [(AudioAccessoryDevice *)selfCopy setStreamStateAoS:streamStateAoS];
    v8 = 1;
  }

  dynamicEndOfChargeEnabled = [infoCopy dynamicEndOfChargeEnabled];
  if (dynamicEndOfChargeEnabled != [(AudioAccessoryDevice *)selfCopy dynamicEndOfChargeEnabled])
  {
    [(AudioAccessoryDevice *)selfCopy setDynamicEndOfChargeEnabled:dynamicEndOfChargeEnabled];
    v8 = 1;
  }

  frequencyBand = [infoCopy frequencyBand];
  if (frequencyBand != [(AudioAccessoryDevice *)selfCopy frequencyBand])
  {
    [(AudioAccessoryDevice *)selfCopy setFrequencyBand:frequencyBand];
    v8 = 1;
  }

  if (_os_feature_enabled_impl())
  {
    hearingAidEnabled = [infoCopy hearingAidEnabled];
    if ([(AudioAccessoryDevice *)selfCopy hearingAidEnabled]!= hearingAidEnabled)
    {
      [(AudioAccessoryDevice *)selfCopy setHearingAidEnabled:?];
      v8 = 1;
    }

    hearingAidEnrolled = [infoCopy hearingAidEnrolled];
    if ([(AudioAccessoryDevice *)selfCopy hearingAidEnrolled]!= hearingAidEnrolled)
    {
      [(AudioAccessoryDevice *)selfCopy setHearingAidEnrolled:?];
      v8 = 1;
    }

    hearingAidGainSwipeEnabled = [infoCopy hearingAidGainSwipeEnabled];
    if ([(AudioAccessoryDevice *)selfCopy hearingAidGainSwipeEnabled]!= hearingAidGainSwipeEnabled)
    {
      [(AudioAccessoryDevice *)selfCopy setHearingAidGainSwipeEnabled:?];
      v8 = 1;
    }

    hearingAssistEnabled = [infoCopy hearingAssistEnabled];
    if ([(AudioAccessoryDevice *)selfCopy hearingAssistEnabled]!= hearingAssistEnabled)
    {
      [(AudioAccessoryDevice *)selfCopy setHearingAssistEnabled:?];
      v8 = 1;
    }
  }

  heartRateMonitorEnabled = [infoCopy heartRateMonitorEnabled];
  if ([(AudioAccessoryDevice *)selfCopy heartRateMonitorEnabled]!= heartRateMonitorEnabled)
  {
    [(AudioAccessoryDevice *)selfCopy setHeartRateMonitorEnabled:?];
    v8 = 1;
  }

  rawGesturesConfigFlags = [infoCopy rawGesturesConfigFlags];
  if (rawGesturesConfigFlags != [(AudioAccessoryDevice *)selfCopy rawGesturesConfigFlags])
  {
    [(AudioAccessoryDevice *)selfCopy setRawGesturesConfigFlags:rawGesturesConfigFlags];
    v8 = 1;
  }

  sleepDetectionEnabled = [infoCopy sleepDetectionEnabled];
  if ([(AudioAccessoryDevice *)selfCopy sleepDetectionEnabled]!= sleepDetectionEnabled)
  {
    [(AudioAccessoryDevice *)selfCopy setSleepDetectionEnabled:?];
    v8 = 1;
  }

  hearingProtectionPPECapabilityLevel = [infoCopy hearingProtectionPPECapabilityLevel];
  if (hearingProtectionPPECapabilityLevel != [(AudioAccessoryDevice *)selfCopy hearingProtectionPPECapLevel])
  {
    [(AudioAccessoryDevice *)selfCopy setHearingProtectionPPECapLevel:hearingProtectionPPECapabilityLevel];
    v8 = 1;
  }

  hearingProtectionPPEEnabled = [infoCopy hearingProtectionPPEEnabled];
  if ([(AudioAccessoryDevice *)selfCopy hearingProtectionPPEEnabled]!= hearingProtectionPPEEnabled)
  {
    [(AudioAccessoryDevice *)selfCopy setHearingProtectionPPEEnabled:?];
    v8 = 1;
  }

  if (![(AudioAccessoryDevice *)selfCopy connectedAADeviceInfoReceived])
  {
    v8 = 1;
    [(AudioAccessoryDevice *)selfCopy setConnectedAADeviceInfoReceived:1];
  }

  objc_sync_exit(selfCopy);

  return v8;
}

- (BOOL)updateWithConnectedCBDevice:(id)device
{
  deviceCopy = device;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  bluetoothAddressData = [(AudioAccessoryDevice *)selfCopy bluetoothAddressData];
  btAddressData = [deviceCopy btAddressData];
  btAddressData2 = bluetoothAddressData;
  v10 = btAddressData;
  v11 = v10;
  v12 = btAddressData2 != v10;
  if (btAddressData2 == v10)
  {

LABEL_8:
    goto LABEL_9;
  }

  if ((btAddressData2 != 0) == (v10 == 0))
  {

    goto LABEL_7;
  }

  v13 = [btAddressData2 isEqual:v10];

  if ((v13 & 1) == 0)
  {
LABEL_7:
    btAddressData2 = [deviceCopy btAddressData];
    [(AudioAccessoryDevice *)selfCopy setBluetoothAddressData:btAddressData2];
    goto LABEL_8;
  }

  v12 = 0;
LABEL_9:
  v14 = -[AudioAccessoryDevice CBCapToAACap:](selfCopy, "CBCapToAACap:", [deviceCopy adaptiveVolumeCapability]);
  if (v14 && [(AudioAccessoryDevice *)selfCopy adaptiveVolumeCapability]!= v14)
  {
    [(AudioAccessoryDevice *)selfCopy setAdaptiveVolumeCapability:v14];
    v12 = 1;
  }

  adaptiveVolumeConfig = [deviceCopy adaptiveVolumeConfig];
  if (adaptiveVolumeConfig && [(AudioAccessoryDevice *)selfCopy adaptiveVolumeConfig]!= adaptiveVolumeConfig)
  {
    [(AudioAccessoryDevice *)selfCopy setAdaptiveVolumeConfig:adaptiveVolumeConfig];
    v12 = 1;
  }

  audioStreamState = [deviceCopy audioStreamState];
  if (audioStreamState && audioStreamState != [(AudioAccessoryDevice *)selfCopy audioStreamState])
  {
    [(AudioAccessoryDevice *)selfCopy setAudioStreamState:audioStreamState];
    v12 = 1;
  }

  clickHoldModeLeft = [deviceCopy clickHoldModeLeft];
  if (clickHoldModeLeft && [(AudioAccessoryDevice *)selfCopy clickHoldModeLeft]!= clickHoldModeLeft)
  {
    [(AudioAccessoryDevice *)selfCopy setClickHoldModeLeft:clickHoldModeLeft];
    v12 = 1;
  }

  clickHoldModeRight = [deviceCopy clickHoldModeRight];
  if (clickHoldModeRight && [(AudioAccessoryDevice *)selfCopy clickHoldModeRight]!= clickHoldModeRight)
  {
    [(AudioAccessoryDevice *)selfCopy setClickHoldModeRight:clickHoldModeRight];
    v12 = 1;
  }

  v19 = -[AudioAccessoryDevice CBCapToAACap:](selfCopy, "CBCapToAACap:", [deviceCopy conversationDetectCapability]);
  if (v19 && [(AudioAccessoryDevice *)selfCopy conversationDetectCapability]!= v19)
  {
    [(AudioAccessoryDevice *)selfCopy setConversationDetectCapability:v19];
    v12 = 1;
  }

  conversationDetectConfig = [deviceCopy conversationDetectConfig];
  if (conversationDetectConfig && [(AudioAccessoryDevice *)selfCopy conversationDetectConfig]!= conversationDetectConfig)
  {
    [(AudioAccessoryDevice *)selfCopy setConversationDetectConfig:conversationDetectConfig];
    v12 = 1;
  }

  crownRotationDirection = [deviceCopy crownRotationDirection];
  if (crownRotationDirection && [(AudioAccessoryDevice *)selfCopy crownRotationDirection]!= crownRotationDirection)
  {
    [(AudioAccessoryDevice *)selfCopy setCrownRotationDirection:crownRotationDirection];
    v12 = 1;
  }

  doubleTapActionLeft = [deviceCopy doubleTapActionLeft];
  if (doubleTapActionLeft && doubleTapActionLeft != [(AudioAccessoryDevice *)selfCopy doubleTapActionLeft])
  {
    [(AudioAccessoryDevice *)selfCopy setDoubleTapActionLeft:doubleTapActionLeft];
    v12 = 1;
  }

  doubleTapActionRight = [deviceCopy doubleTapActionRight];
  if (doubleTapActionRight && doubleTapActionRight != [(AudioAccessoryDevice *)selfCopy doubleTapActionRight])
  {
    [(AudioAccessoryDevice *)selfCopy setDoubleTapActionRight:doubleTapActionRight];
    v12 = 1;
  }

  doubleTapCapability = [deviceCopy doubleTapCapability];
  if (doubleTapCapability && doubleTapCapability != [(AudioAccessoryDevice *)selfCopy doubleTapCapability])
  {
    [(AudioAccessoryDevice *)selfCopy setDoubleTapCapability:doubleTapCapability];
    v12 = 1;
  }

  v25 = -[AudioAccessoryDevice CBCapToAACap:](selfCopy, "CBCapToAACap:", [deviceCopy endCallCapability]);
  if (v25 && [(AudioAccessoryDevice *)selfCopy endCallCapability]!= v25)
  {
    [(AudioAccessoryDevice *)selfCopy setEndCallCapability:v25];
    v12 = 1;
  }

  endCallConfig = [deviceCopy endCallConfig];
  if (endCallConfig && endCallConfig != [(AudioAccessoryDevice *)selfCopy endCallConfig])
  {
    [(AudioAccessoryDevice *)selfCopy setEndCallConfig:endCallConfig];
    v12 = 1;
  }

  firmwareVersion = [(AudioAccessoryDevice *)selfCopy firmwareVersion];
  firmwareVersion2 = [deviceCopy firmwareVersion];
  firmwareVersion3 = firmwareVersion;
  v30 = firmwareVersion2;
  v31 = v30;
  if (firmwareVersion3 == v30)
  {
  }

  else
  {
    if ((firmwareVersion3 != 0) == (v30 == 0))
    {
    }

    else
    {
      v32 = [firmwareVersion3 isEqual:v30];

      if (v32)
      {
        goto LABEL_56;
      }
    }

    firmwareVersion3 = [deviceCopy firmwareVersion];
    [(AudioAccessoryDevice *)selfCopy setFirmwareVersion:firmwareVersion3];
    v12 = 1;
  }

LABEL_56:
  gapaFlags = [deviceCopy gapaFlags];
  if (gapaFlags && [(AudioAccessoryDevice *)selfCopy gapaFlags]!= gapaFlags)
  {
    [(AudioAccessoryDevice *)selfCopy setGapaFlags:gapaFlags];
    v12 = 1;
  }

  if (([deviceCopy deviceFlags] & 0x2000000) != 0)
  {
    v34 = 1;
  }

  else
  {
    v34 = 2;
  }

  if (v34 != [(AudioAccessoryDevice *)selfCopy guestPaired])
  {
    [(AudioAccessoryDevice *)selfCopy setGuestPaired:v34];
    v12 = 1;
  }

  listeningMode = [deviceCopy listeningMode];
  if (listeningMode && listeningMode != [(AudioAccessoryDevice *)selfCopy listeningMode])
  {
    [(AudioAccessoryDevice *)selfCopy setListeningMode:listeningMode];
    v12 = 1;
  }

  listeningModeConfigs = [deviceCopy listeningModeConfigs];
  if (listeningModeConfigs && listeningModeConfigs != [(AudioAccessoryDevice *)selfCopy listeningModeConfigs])
  {
    [(AudioAccessoryDevice *)selfCopy setListeningModeConfigs:listeningModeConfigs];
    v12 = 1;
  }

  microphoneMode = [deviceCopy microphoneMode];
  if (microphoneMode && microphoneMode != [(AudioAccessoryDevice *)selfCopy microphoneMode])
  {
    [(AudioAccessoryDevice *)selfCopy setMicrophoneMode:microphoneMode];
    v12 = 1;
  }

  v38 = -[AudioAccessoryDevice CBCapToAACap:](selfCopy, "CBCapToAACap:", [deviceCopy muteControlCapability]);
  if (v38 && [(AudioAccessoryDevice *)selfCopy muteControlCapability]!= v38)
  {
    [(AudioAccessoryDevice *)selfCopy setMuteControlCapability:v38];
    v12 = 1;
  }

  muteControlConfig = [deviceCopy muteControlConfig];
  if (muteControlConfig && muteControlConfig != [(AudioAccessoryDevice *)selfCopy muteControlConfig])
  {
    [(AudioAccessoryDevice *)selfCopy setMuteControlConfig:muteControlConfig];
    v12 = 1;
  }

  v40 = -[AudioAccessoryDevice CBCapToAACap:](selfCopy, "CBCapToAACap:", [deviceCopy autoAncCapability]);
  if (v40 && [(AudioAccessoryDevice *)selfCopy peerAutoANCCapability]!= v40)
  {
    [(AudioAccessoryDevice *)selfCopy setPeerAutoANCCapability:v40];
    v12 = 1;
  }

  placementMode = [deviceCopy placementMode];
  if (placementMode && placementMode != [(AudioAccessoryDevice *)selfCopy placementMode])
  {
    [(AudioAccessoryDevice *)selfCopy setPlacementMode:placementMode];
    v12 = 1;
  }

  primaryPlacement = [deviceCopy primaryPlacement];
  if (primaryPlacement && primaryPlacement != [(AudioAccessoryDevice *)selfCopy primaryPlacement])
  {
    [(AudioAccessoryDevice *)selfCopy setPrimaryPlacement:primaryPlacement];
    v12 = 1;
  }

  secondaryPlacement = [deviceCopy secondaryPlacement];
  if (secondaryPlacement && secondaryPlacement != [(AudioAccessoryDevice *)selfCopy secondaryPlacement])
  {
    [(AudioAccessoryDevice *)selfCopy setSecondaryPlacement:secondaryPlacement];
    v12 = 1;
  }

  rssi = [deviceCopy rssi];
  if (rssi && rssi != [(AudioAccessoryDevice *)selfCopy classicRSSI])
  {
    [(AudioAccessoryDevice *)selfCopy setClassicRSSI:rssi];
  }

  v45 = -[AudioAccessoryDevice CBCapToAACap:](selfCopy, "CBCapToAACap:", [deviceCopy selectiveSpeechListeningCapability]);
  if (v45 && [(AudioAccessoryDevice *)selfCopy selectiveSpeechListeningCapability]!= v45)
  {
    [(AudioAccessoryDevice *)selfCopy setSelectiveSpeechListeningCapability:v45];
    v12 = 1;
  }

  selectiveSpeechListeningConfig = [deviceCopy selectiveSpeechListeningConfig];
  if (selectiveSpeechListeningConfig && selectiveSpeechListeningConfig != [(AudioAccessoryDevice *)selfCopy selectiveSpeechListeningConfig])
  {
    [(AudioAccessoryDevice *)selfCopy setSelectiveSpeechListeningConfig:selectiveSpeechListeningConfig];
    v12 = 1;
  }

  serialNumber = [(AudioAccessoryDevice *)selfCopy serialNumber];
  serialNumber2 = [deviceCopy serialNumber];
  serialNumber3 = serialNumber;
  v50 = serialNumber2;
  v51 = v50;
  if (serialNumber3 == v50)
  {

LABEL_107:
    goto LABEL_108;
  }

  if ((serialNumber3 != 0) == (v50 == 0))
  {

    goto LABEL_106;
  }

  v52 = [serialNumber3 isEqual:v50];

  if ((v52 & 1) == 0)
  {
LABEL_106:
    serialNumber3 = [deviceCopy serialNumber];
    [(AudioAccessoryDevice *)selfCopy setSerialNumber:serialNumber3];
    v12 = 1;
    goto LABEL_107;
  }

LABEL_108:
  serialNumberLeft = [(AudioAccessoryDevice *)selfCopy serialNumberLeft];
  serialNumberLeft2 = [deviceCopy serialNumberLeft];
  serialNumberLeft3 = serialNumberLeft;
  v56 = serialNumberLeft2;
  v57 = v56;
  if (serialNumberLeft3 == v56)
  {

LABEL_115:
    goto LABEL_116;
  }

  if ((serialNumberLeft3 != 0) == (v56 == 0))
  {

    goto LABEL_114;
  }

  v58 = [serialNumberLeft3 isEqual:v56];

  if ((v58 & 1) == 0)
  {
LABEL_114:
    serialNumberLeft3 = [deviceCopy serialNumberLeft];
    [(AudioAccessoryDevice *)selfCopy setSerialNumberLeft:serialNumberLeft3];
    v12 = 1;
    goto LABEL_115;
  }

LABEL_116:
  serialNumberRight = [(AudioAccessoryDevice *)selfCopy serialNumberRight];
  serialNumberRight2 = [deviceCopy serialNumberRight];
  serialNumberRight3 = serialNumberRight;
  v62 = serialNumberRight2;
  v63 = v62;
  if (serialNumberRight3 == v62)
  {

LABEL_123:
    goto LABEL_124;
  }

  if ((serialNumberRight3 != 0) == (v62 == 0))
  {

    goto LABEL_122;
  }

  v64 = [serialNumberRight3 isEqual:v62];

  if ((v64 & 1) == 0)
  {
LABEL_122:
    serialNumberRight3 = [deviceCopy serialNumberRight];
    [(AudioAccessoryDevice *)selfCopy setSerialNumberRight:serialNumberRight3];
    v12 = 1;
    goto LABEL_123;
  }

LABEL_124:
  if (([deviceCopy deviceFlags] & 0x10000000000) != 0)
  {
    v65 = 2;
  }

  else
  {
    v65 = 1;
  }

  if (v65 != [(AudioAccessoryDevice *)selfCopy smartRoutingCapability])
  {
    [(AudioAccessoryDevice *)selfCopy setSmartRoutingCapability:v65];
    v12 = 1;
  }

  smartRoutingMode = [deviceCopy smartRoutingMode];
  if (smartRoutingMode && smartRoutingMode != [(AudioAccessoryDevice *)selfCopy smartRoutingMode])
  {
    [(AudioAccessoryDevice *)selfCopy setSmartRoutingMode:smartRoutingMode];
    v12 = 1;
  }

  if (([deviceCopy deviceFlags] & 0x10000000) != 0)
  {
    v67 = 1;
  }

  else
  {
    v67 = 2;
  }

  if (v67 != [(AudioAccessoryDevice *)selfCopy spatialAudioAllowed])
  {
    [(AudioAccessoryDevice *)selfCopy setSpatialAudioAllowed:v67];
    v12 = 1;
  }

  objc_storeStrong(&selfCopy->_coreBluetoothDevice, device);
  if (![(AudioAccessoryDevice *)selfCopy connectedCBDeviceReceived])
  {
    v12 = 1;
    [(AudioAccessoryDevice *)selfCopy setConnectedCBDeviceReceived:1];
  }

  objc_sync_exit(selfCopy);

  return v12;
}

- (BOOL)updateWithPairedAADeviceInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  autoANCCapability = [infoCopy autoANCCapability];
  autoANCCapability2 = [(AudioAccessoryDevice *)selfCopy autoANCCapability];
  v8 = autoANCCapability != autoANCCapability2;
  if (autoANCCapability != autoANCCapability2)
  {
    [(AudioAccessoryDevice *)selfCopy setAutoANCCapability:autoANCCapability];
  }

  bobbleCapability = [infoCopy bobbleCapability];
  if (bobbleCapability != [(AudioAccessoryDevice *)selfCopy bobbleCapability])
  {
    [(AudioAccessoryDevice *)selfCopy setBobbleCapability:bobbleCapability];
    v8 = 1;
  }

  if (_os_feature_enabled_impl())
  {
    cameraControlCapability = [infoCopy cameraControlCapability];
    if (cameraControlCapability != [(AudioAccessoryDevice *)selfCopy cameraControlCapability])
    {
      [(AudioAccessoryDevice *)selfCopy setCameraControlCapability:cameraControlCapability];
      v8 = 1;
    }
  }

  caseSoundCapability = [infoCopy caseSoundCapability];
  if (caseSoundCapability != [(AudioAccessoryDevice *)selfCopy caseSoundCapability])
  {
    [(AudioAccessoryDevice *)selfCopy setCaseSoundCapability:caseSoundCapability];
    v8 = 1;
  }

  dynamicEndOfChargeCapability = [infoCopy dynamicEndOfChargeCapability];
  if (dynamicEndOfChargeCapability != [(AudioAccessoryDevice *)selfCopy dynamicEndOfChargeCapability])
  {
    [(AudioAccessoryDevice *)selfCopy setDynamicEndOfChargeCapability:dynamicEndOfChargeCapability];
    v8 = 1;
  }

  earTipFitTestCapability = [infoCopy earTipFitTestCapability];
  if (earTipFitTestCapability != [(AudioAccessoryDevice *)selfCopy earTipFitTestCapability])
  {
    [(AudioAccessoryDevice *)selfCopy setEarTipFitTestCapability:earTipFitTestCapability];
    v8 = 1;
  }

  enhancedTransparencyVersion = [infoCopy enhancedTransparencyVersion];
  if (enhancedTransparencyVersion != [(AudioAccessoryDevice *)selfCopy enhancedTransparencyVersion])
  {
    [(AudioAccessoryDevice *)selfCopy setEnhancedTransparencyVersion:enhancedTransparencyVersion];
    v8 = 1;
  }

  farFieldUplinkCapability = [infoCopy farFieldUplinkCapability];
  if (farFieldUplinkCapability != [(AudioAccessoryDevice *)selfCopy farFieldUplinkCapability])
  {
    [(AudioAccessoryDevice *)selfCopy setFarFieldUplinkCapability:farFieldUplinkCapability];
    v8 = 1;
  }

  ovadStreamingCapability = [infoCopy ovadStreamingCapability];
  if (ovadStreamingCapability != [(AudioAccessoryDevice *)selfCopy ovadStreamingCapability])
  {
    [(AudioAccessoryDevice *)selfCopy setOvadStreamingCapability:ovadStreamingCapability];
    v8 = 1;
  }

  if (_os_feature_enabled_impl())
  {
    hearingAidCapability = [infoCopy hearingAidCapability];
    if (hearingAidCapability != [(AudioAccessoryDevice *)selfCopy hearingAidCapability])
    {
      [(AudioAccessoryDevice *)selfCopy setHearingAidCapability:hearingAidCapability];
      v8 = 1;
    }
  }

  if (_os_feature_enabled_impl())
  {
    hearingProtectionCapability = [infoCopy hearingProtectionCapability];
    if (hearingProtectionCapability != [(AudioAccessoryDevice *)selfCopy hearingProtectionCapability])
    {
      [(AudioAccessoryDevice *)selfCopy setHearingProtectionCapability:hearingProtectionCapability];
      v8 = 1;
    }
  }

  if (_os_feature_enabled_impl())
  {
    hearingTestCapability = [infoCopy hearingTestCapability];
    if (hearingTestCapability != [(AudioAccessoryDevice *)selfCopy hearingTestCapability])
    {
      [(AudioAccessoryDevice *)selfCopy setHearingTestCapability:hearingTestCapability];
      v8 = 1;
    }
  }

  heartRateMonitorCapability = [infoCopy heartRateMonitorCapability];
  if (heartRateMonitorCapability != [(AudioAccessoryDevice *)selfCopy heartRateMonitorCapability])
  {
    [(AudioAccessoryDevice *)selfCopy setHeartRateMonitorCapability:heartRateMonitorCapability];
    [(AudioAccessoryDevice *)selfCopy setHeartRateMonitorCapabilityValueOriginatedFromDevice:1];
    v8 = 1;
    [(AudioAccessoryDevice *)selfCopy setHeartRateMonitorCapabilityChanged:1];
  }

  heartRateMonitorEnabled = [infoCopy heartRateMonitorEnabled];
  if ([(AudioAccessoryDevice *)selfCopy heartRateMonitorEnabled]!= heartRateMonitorEnabled)
  {
    [(AudioAccessoryDevice *)selfCopy setHeartRateMonitorEnabled:?];
    v8 = 1;
  }

  hideEarDetectionCapability = [infoCopy hideEarDetectionCapability];
  if (hideEarDetectionCapability != [(AudioAccessoryDevice *)selfCopy hideEarDetectionCapability])
  {
    [(AudioAccessoryDevice *)selfCopy setHideEarDetectionCapability:hideEarDetectionCapability];
    v8 = 1;
  }

  hideOffListeningModeCapability = [infoCopy hideOffListeningModeCapability];
  if (hideOffListeningModeCapability != [(AudioAccessoryDevice *)selfCopy hideOffListeningModeCapability])
  {
    [(AudioAccessoryDevice *)selfCopy setHideOffListeningModeCapability:hideOffListeningModeCapability];
    v8 = 1;
  }

  lastSeenTime = [infoCopy lastSeenTime];
  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  v26 = lastSeenTime - [localTimeZone secondsFromGMT];

  if (v26 >= 1)
  {
    lastSeenConnectedTime = [(AudioAccessoryDevice *)selfCopy lastSeenConnectedTime];
    if (!lastSeenConnectedTime || (-[AudioAccessoryDevice lastSeenConnectedTime](selfCopy, "lastSeenConnectedTime"), v28 = objc_claimAutoreleasedReturnValue(), [v28 timeIntervalSince1970], v30 = v29, v28, lastSeenConnectedTime, v30 < v26))
    {
      v31 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v26];
      [(AudioAccessoryDevice *)selfCopy setLastSeenConnectedTime:v31];

      v8 = 1;
    }
  }

  pmeEverywhereCapability = [(AudioAccessoryDevice *)selfCopy pmeEverywhereCapability];
  if (pmeEverywhereCapability != [infoCopy pmeEverywhereCapability])
  {
    -[AudioAccessoryDevice setPmeEverywhereCapability:](selfCopy, "setPmeEverywhereCapability:", [infoCopy pmeEverywhereCapability]);
    v8 = 1;
  }

  siriMultitoneCapability = [infoCopy siriMultitoneCapability];
  if (siriMultitoneCapability != [(AudioAccessoryDevice *)selfCopy siriMultitoneCapability])
  {
    [(AudioAccessoryDevice *)selfCopy setSiriMultitoneCapability:siriMultitoneCapability];
    v8 = 1;
  }

  sleepDetectionCapability = [infoCopy sleepDetectionCapability];
  if (sleepDetectionCapability != [(AudioAccessoryDevice *)selfCopy sleepDetectionCapability])
  {
    [(AudioAccessoryDevice *)selfCopy setSleepDetectionCapability:sleepDetectionCapability];
    v8 = 1;
  }

  hearingAidV2Capability = [infoCopy hearingAidV2Capability];
  if (hearingAidV2Capability != [(AudioAccessoryDevice *)selfCopy hearingAidV2Capability])
  {
    [(AudioAccessoryDevice *)selfCopy setHearingAidV2Capability:hearingAidV2Capability];
    v8 = 1;
  }

  hearingProtectionPPECapability = [infoCopy hearingProtectionPPECapability];
  if (hearingProtectionPPECapability != [(AudioAccessoryDevice *)selfCopy hearingProtectionPPECapability])
  {
    [(AudioAccessoryDevice *)selfCopy setHearingProtectionPPECapability:hearingProtectionPPECapability];
    v8 = 1;
  }

  if (_os_feature_enabled_impl())
  {
    temporaryManagedPairedStatus = [infoCopy temporaryManagedPairedStatus];
    if ([(AudioAccessoryDevice *)selfCopy temporaryManagedPairedStatus]!= temporaryManagedPairedStatus)
    {
      [(AudioAccessoryDevice *)selfCopy setTemporaryManagedPairedStatus:?];
      v8 = 1;
    }
  }

  if (![(AudioAccessoryDevice *)selfCopy pairedAADeviceInfoReceived])
  {
    v8 = 1;
    [(AudioAccessoryDevice *)selfCopy setPairedAADeviceInfoReceived:1];
  }

  objc_sync_exit(selfCopy);

  return v8;
}

- (BOOL)updateWithPairedCBDevice:(id)device
{
  deviceCopy = device;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_storeStrong(&selfCopy->_coreBluetoothDevice, device);
  bluetoothAddressData = [(AudioAccessoryDevice *)selfCopy bluetoothAddressData];
  btAddressData = [deviceCopy btAddressData];
  btAddressData2 = bluetoothAddressData;
  v10 = btAddressData;
  v11 = v10;
  v12 = btAddressData2 != v10;
  if (btAddressData2 == v10)
  {
  }

  else
  {
    if ((btAddressData2 != 0) == (v10 == 0))
    {
    }

    else
    {
      v13 = [btAddressData2 isEqual:v10];

      if (v13)
      {
        v12 = 0;
        goto LABEL_9;
      }
    }

    btAddressData2 = [deviceCopy btAddressData];
    [(AudioAccessoryDevice *)selfCopy setBluetoothAddressData:btAddressData2];
  }

LABEL_9:
  model = [(AudioAccessoryDevice *)selfCopy model];
  model2 = [deviceCopy model];
  model3 = model;
  v17 = model2;
  v18 = v17;
  if (model3 == v17)
  {

LABEL_16:
    goto LABEL_17;
  }

  if ((model3 != 0) == (v17 == 0))
  {

    goto LABEL_15;
  }

  v19 = [model3 isEqual:v17];

  if ((v19 & 1) == 0)
  {
LABEL_15:
    model3 = [deviceCopy model];
    [(AudioAccessoryDevice *)selfCopy setModel:model3];
    v12 = 1;
    goto LABEL_16;
  }

LABEL_17:
  name = [(AudioAccessoryDevice *)selfCopy name];
  name2 = [deviceCopy name];
  name3 = name;
  v23 = name2;
  v24 = v23;
  if (name3 == v23)
  {

LABEL_24:
    goto LABEL_25;
  }

  if ((name3 != 0) == (v23 == 0))
  {

    goto LABEL_23;
  }

  v25 = [name3 isEqual:v23];

  if ((v25 & 1) == 0)
  {
LABEL_23:
    name3 = [deviceCopy name];
    [(AudioAccessoryDevice *)selfCopy setName:name3];
    v12 = 1;
    goto LABEL_24;
  }

LABEL_25:
  productID = [(AudioAccessoryDevice *)selfCopy productID];
  if (productID != [deviceCopy productID])
  {
    -[AudioAccessoryDevice setProductID:](selfCopy, "setProductID:", [deviceCopy productID]);
    v12 = 1;
  }

  productName = [(AudioAccessoryDevice *)selfCopy productName];
  productName2 = [deviceCopy productName];
  productName3 = productName;
  v30 = productName2;
  v31 = v30;
  if (productName3 == v30)
  {
  }

  else
  {
    if ((productName3 != 0) == (v30 == 0))
    {
    }

    else
    {
      v32 = [productName3 isEqual:v30];

      if (v32)
      {
        goto LABEL_35;
      }
    }

    productName3 = [deviceCopy productName];
    [(AudioAccessoryDevice *)selfCopy setProductName:productName3];
    v12 = 1;
  }

LABEL_35:
  vendorID = [deviceCopy vendorID];
  if (vendorID && [(AudioAccessoryDevice *)selfCopy vendorID]!= vendorID)
  {
    [(AudioAccessoryDevice *)selfCopy setVendorID:vendorID];
    v12 = 1;
  }

  if (![(AudioAccessoryDevice *)selfCopy pairedCBDeviceReceived])
  {
    v12 = 1;
    [(AudioAccessoryDevice *)selfCopy setPairedCBDeviceReceived:1];
  }

  objc_sync_exit(selfCopy);

  return v12;
}

@end