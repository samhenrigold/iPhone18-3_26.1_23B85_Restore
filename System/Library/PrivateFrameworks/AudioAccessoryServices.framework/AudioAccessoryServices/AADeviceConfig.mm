@interface AADeviceConfig
- (AADeviceConfig)init;
- (AADeviceConfig)initWithCoder:(id)coder;
- (BOOL)needsUpdateToAAController;
- (id)descriptionWithLevel:(int)level;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AADeviceConfig

- (AADeviceConfig)init
{
  v6.receiver = self;
  v6.super_class = AADeviceConfig;
  v2 = [(AADeviceConfig *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_spatialAudioMode = 255;
    v4 = v2;
  }

  return v3;
}

- (AADeviceConfig)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(AADeviceConfig *)self init];

  if (v5)
  {
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_acceptReplyPlayPauseConfig = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_aclPriority = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_adaptiveVolumeConfig = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_allowsAutoRoute = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_allowTemporaryManagedPairing = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_audioRouteHidden = 0;
    }

    v6 = coderCopy;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_autoANCStrength = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_changeDynamicEndOfChargeState = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_changeOptimizedBatteryChargingState = 0;
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
      v5->_doubleTapActionLeft = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_doubleTapActionRight = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_enableChargingReminder = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_enableHearingAidGainSwipe = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_enableHearingAssist = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_enableHearingProtectionPPE = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_enableSiriMultitone = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_enableSleepDetection = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_endCallConfig = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_headGestureToggle = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_allowHealthKitDataWrite = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingAidEnrolled = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingAidToggle = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingAidV2SourceRegionSupport = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_enableHeartRateMonitor = 0;
    }

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

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_muteControlConfig = 0;
    }

    v7 = v6;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_placementMode = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_rawGesturesConfigFlags = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_relinquishAudioRoute = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_remoteCameraControlConfig = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_selectiveSpeechListeningConfig = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_smartRoutingMode = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_spatialAudioAllowed = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_spatialAudioMode = 0;
    }

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v11 = coderCopy;
  if (self->_acceptReplyPlayPauseConfig)
  {
    [coderCopy encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_aclPriority)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_adaptiveVolumeConfig)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_allowsAutoRoute)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_allowTemporaryManagedPairing)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_audioRouteHidden)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  audiogramEnrolledTimestamp = self->_audiogramEnrolledTimestamp;
  if (audiogramEnrolledTimestamp)
  {
    [v11 encodeObject:audiogramEnrolledTimestamp forKey:@"agET"];
    coderCopy = v11;
  }

  autoANCStrength = self->_autoANCStrength;
  if (autoANCStrength)
  {
    [v11 encodeInt64:autoANCStrength forKey:@"aaS"];
    coderCopy = v11;
  }

  if (self->_changeDynamicEndOfChargeState)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_changeOptimizedBatteryChargingState)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_clickHoldModeLeft)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_clickHoldModeRight)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_conversationDetectConfig)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_crownRotationDirection)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_declineDismissSkipConfig)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_doubleTapActionLeft)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_doubleTapActionRight)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_enableChargingReminder)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_enableHearingAidGainSwipe)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_enableHearingAssist)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_enableHearingProtectionPPE)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_enableSiriMultitone)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_enableSleepDetection)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_endCallConfig)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_headGestureToggle)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_allowHealthKitDataWrite)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_hearingAidEnrolled)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_hearingAidToggle)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_hearingAidV2SourceRegionSupport)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_enableHeartRateMonitor)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  listeningMode = self->_listeningMode;
  if (listeningMode)
  {
    [v11 encodeInteger:listeningMode forKey:@"lsmd"];
    coderCopy = v11;
  }

  listeningModeConfigs = self->_listeningModeConfigs;
  if (listeningModeConfigs)
  {
    [v11 encodeInt64:listeningModeConfigs forKey:@"lsmc"];
    coderCopy = v11;
  }

  if (self->_listeningModeOffAllowed)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_microphoneMode)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_muteControlConfig)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  name = self->_name;
  if (name)
  {
    [v11 encodeObject:name forKey:@"name"];
    coderCopy = v11;
  }

  if (self->_placementMode)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_rawGesturesConfigFlags)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_relinquishAudioRoute)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_remoteCameraControlConfig)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_selectiveSpeechListeningConfig)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_smartRoutingMode)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_spatialAudioAllowed)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  spatialAudioMode = self->_spatialAudioMode;
  if (spatialAudioMode && spatialAudioMode != 255)
  {
    [v11 encodeInteger:spatialAudioMode forKey:@"samd"];
    coderCopy = v11;
  }
}

- (id)descriptionWithLevel:(int)level
{
  v216 = 0;
  v4 = [objc_opt_class() description];
  NSAppendPrintF_safe(&v216, "%@", v4);
  v5 = v216;

  aclPriority = self->_aclPriority;
  if (self->_aclPriority)
  {
    v215 = v5;
    if (aclPriority > 49)
    {
      if (aclPriority == 50)
      {
        v7 = "Medium";
        goto LABEL_12;
      }

      if (aclPriority == 80)
      {
        v7 = "High";
        goto LABEL_12;
      }
    }

    else
    {
      if (aclPriority == 1)
      {
        v7 = "Default";
        goto LABEL_12;
      }

      if (aclPriority == 20)
      {
        v7 = "Low";
LABEL_12:
        NSAppendPrintF_safe(&v215, ", AclP %s", v7);
        v8 = v215;

        v5 = v8;
        goto LABEL_13;
      }
    }

    v7 = "?";
    goto LABEL_12;
  }

LABEL_13:
  allowsAutoRoute = self->_allowsAutoRoute;
  if (self->_allowsAutoRoute)
  {
    v10 = "?";
    if (allowsAutoRoute == 1)
    {
      v10 = "Yes";
    }

    if (allowsAutoRoute == 2)
    {
      v11 = "No";
    }

    else
    {
      v11 = v10;
    }

    v214 = v5;
    NSAppendPrintF_safe(&v214, ", AlAR %s", v11);
    v12 = v214;

    v5 = v12;
  }

  v13 = self->_audiogramEnrolledTimestamp;
  v14 = v13;
  if (v13)
  {
    v213 = v5;
    NSAppendPrintF_safe(&v213, ", AG EnrolledTime '%@'", v13);
    v15 = v213;

    v5 = v15;
  }

  audioRouteHidden = self->_audioRouteHidden;
  if (self->_audioRouteHidden)
  {
    v17 = "?";
    if (audioRouteHidden == 1)
    {
      v17 = "Yes";
    }

    if (audioRouteHidden == 2)
    {
      v18 = "No";
    }

    else
    {
      v18 = v17;
    }

    v212 = v5;
    NSAppendPrintF_safe(&v212, ", AuRH %s", v18);
    v19 = v212;

    v5 = v19;
  }

  autoANCStrength = self->_autoANCStrength;
  if (autoANCStrength)
  {
    v211 = v5;
    switch(autoANCStrength)
    {
      case 0x3E8u:
        v21 = "Low";
        break;
      case 0x44Cu:
        v21 = "High";
        break;
      case 0x41Au:
        v21 = "Medium";
        break;
      default:
        v21 = "?";
        break;
    }

    NSAppendPrintF_safe(&v211, ", autoANC Strength %s", v21);
    v22 = v211;

    v5 = v22;
  }

  adaptiveVolumeConfig = self->_adaptiveVolumeConfig;
  if (self->_adaptiveVolumeConfig)
  {
    v210 = v5;
    if (adaptiveVolumeConfig > 3)
    {
      v24 = @"?";
    }

    else
    {
      v24 = *(&off_278CDDDB0 + adaptiveVolumeConfig - 1);
    }

    NSAppendPrintF_safe(&v210, ", AVC %@", v24);
    v25 = v210;

    v5 = v25;
  }

  bobbleConfig = self->_bobbleConfig;
  if (self->_bobbleConfig)
  {
    v27 = "?";
    if (bobbleConfig == 1)
    {
      v27 = "Disabled";
    }

    if (bobbleConfig == 2)
    {
      v28 = "Enabled";
    }

    else
    {
      v28 = v27;
    }

    v209 = v5;
    NSAppendPrintF_safe(&v209, ", BCC %s", v28);
    v29 = v209;

    v5 = v29;
  }

  changeDynamicEndOfChargeState = self->_changeDynamicEndOfChargeState;
  if (self->_changeDynamicEndOfChargeState)
  {
    v208 = v5;
    if (changeDynamicEndOfChargeState > 3)
    {
      v31 = "?";
    }

    else
    {
      v31 = off_278CDDCB0[changeDynamicEndOfChargeState - 1];
    }

    NSAppendPrintF_safe(&v208, ", DEOC %s", v31);
    v32 = v208;

    v5 = v32;
  }

  changeOptimizedBatteryChargingState = self->_changeOptimizedBatteryChargingState;
  if (self->_changeOptimizedBatteryChargingState)
  {
    v207 = v5;
    if (changeOptimizedBatteryChargingState > 3)
    {
      v34 = "?";
    }

    else
    {
      v34 = off_278CDDCB0[changeOptimizedBatteryChargingState - 1];
    }

    NSAppendPrintF_safe(&v207, ", OBC %s", v34);
    v35 = v207;

    v5 = v35;
  }

  clickHoldModeLeft = self->_clickHoldModeLeft;
  if (*&self->_clickHoldModeLeft)
  {
    clickHoldModeRight = self->_clickHoldModeRight;
    v206 = v5;
    NSAppendPrintF_safe(&v206, ", ClkH");
    v38 = v206;

    if (clickHoldModeLeft)
    {
      v205 = v38;
      if (clickHoldModeLeft > 7)
      {
        v39 = @"?";
      }

      else
      {
        v39 = *(&off_278CDDCC8 + clickHoldModeLeft - 1);
      }

      NSAppendPrintF_safe(&v205, " L %@", v39);
      v40 = v205;

      v38 = v40;
    }

    if (clickHoldModeRight)
    {
      v204 = v38;
      if (clickHoldModeRight > 7)
      {
        v41 = @"?";
      }

      else
      {
        v41 = *(&off_278CDDCC8 + clickHoldModeRight - 1);
      }

      NSAppendPrintF_safe(&v204, " R %@", v41);
      v5 = v204;
    }

    else
    {
      v5 = v38;
    }
  }

  conversationDetectConfig = self->_conversationDetectConfig;
  if (self->_conversationDetectConfig)
  {
    v203 = v5;
    if (conversationDetectConfig > 3)
    {
      v43 = @"?";
    }

    else
    {
      v43 = *(&off_278CDDDB0 + conversationDetectConfig - 1);
    }

    NSAppendPrintF_safe(&v203, ", CDC %@", v43);
    v44 = v203;

    v5 = v44;
  }

  crownRotationDirection = self->_crownRotationDirection;
  if (self->_crownRotationDirection)
  {
    v46 = @"?";
    if (crownRotationDirection == 1)
    {
      v46 = @"BackToFront";
    }

    if (crownRotationDirection == 2)
    {
      v47 = @"FrontToBack";
    }

    else
    {
      v47 = v46;
    }

    v202 = v5;
    v48 = v47;
    NSAppendPrintF_safe(&v202, ", CrRD %@", v48);
    v49 = v202;

    v5 = v49;
  }

  doubleTapActionLeft = self->_doubleTapActionLeft;
  if (*&self->_doubleTapActionLeft)
  {
    doubleTapActionRight = self->_doubleTapActionRight;
    v201 = v5;
    NSAppendPrintF_safe(&v201, ", DbTp");
    v52 = v201;

    if (doubleTapActionLeft)
    {
      v200 = v52;
      if (doubleTapActionLeft > 5)
      {
        v53 = "?";
      }

      else
      {
        v53 = off_278CDDD00[doubleTapActionLeft - 1];
      }

      NSAppendPrintF_safe(&v200, " L %s", v53);
      v54 = v200;

      v52 = v54;
    }

    if (doubleTapActionRight)
    {
      v199 = v52;
      if (doubleTapActionRight > 5)
      {
        v55 = "?";
      }

      else
      {
        v55 = off_278CDDD00[doubleTapActionRight - 1];
      }

      NSAppendPrintF_safe(&v199, " R %s", v55);
      v5 = v199;
    }

    else
    {
      v5 = v52;
    }
  }

  endCallConfig = self->_endCallConfig;
  if (self->_endCallConfig)
  {
    v198 = v5;
    if (endCallConfig > 4)
    {
      v57 = @"?";
    }

    else
    {
      v57 = *(&off_278CDDD78 + endCallConfig - 1);
    }

    NSAppendPrintF_safe(&v198, ", ECC %@", v57);
    v58 = v198;

    v5 = v58;
  }

  enableChargingReminder = self->_enableChargingReminder;
  if (self->_enableChargingReminder)
  {
    v60 = "?";
    if (enableChargingReminder == 1)
    {
      v60 = "Yes";
    }

    if (enableChargingReminder == 2)
    {
      v61 = "No";
    }

    else
    {
      v61 = v60;
    }

    v197 = v5;
    NSAppendPrintF_safe(&v197, ", En Chr R %s", v61);
    v62 = v197;

    v5 = v62;
  }

  enableHearingAidGainSwipe = self->_enableHearingAidGainSwipe;
  if (self->_enableHearingAidGainSwipe)
  {
    v64 = "?";
    if (enableHearingAidGainSwipe == 1)
    {
      v64 = "Yes";
    }

    if (enableHearingAidGainSwipe == 2)
    {
      v65 = "No";
    }

    else
    {
      v65 = v64;
    }

    v196 = v5;
    NSAppendPrintF_safe(&v196, ", En HA GS %s", v65);
    v66 = v196;

    v5 = v66;
  }

  enableHearingProtectionPPE = self->_enableHearingProtectionPPE;
  if (self->_enableHearingProtectionPPE)
  {
    v68 = "?";
    if (enableHearingProtectionPPE == 1)
    {
      v68 = "Yes";
    }

    if (enableHearingProtectionPPE == 2)
    {
      v69 = "No";
    }

    else
    {
      v69 = v68;
    }

    v195 = v5;
    NSAppendPrintF_safe(&v195, ", En HPPPE %s", v69);
    v70 = v195;

    v5 = v70;
  }

  enableHeartRateMonitor = self->_enableHeartRateMonitor;
  if (self->_enableHeartRateMonitor)
  {
    v72 = "?";
    if (enableHeartRateMonitor == 1)
    {
      v72 = "Yes";
    }

    if (enableHeartRateMonitor == 2)
    {
      v73 = "No";
    }

    else
    {
      v73 = v72;
    }

    v194 = v5;
    NSAppendPrintF_safe(&v194, ", En HRM %s", v73);
    v74 = v194;

    v5 = v74;
  }

  enableHearingAssist = self->_enableHearingAssist;
  if (self->_enableHearingAssist)
  {
    v76 = "?";
    if (enableHearingAssist == 1)
    {
      v76 = "Yes";
    }

    if (enableHearingAssist == 2)
    {
      v77 = "No";
    }

    else
    {
      v77 = v76;
    }

    v193 = v5;
    NSAppendPrintF_safe(&v193, ", En Tp HA %s", v77);
    v78 = v193;

    v5 = v78;
  }

  enableSleepDetection = self->_enableSleepDetection;
  if (self->_enableSleepDetection)
  {
    v80 = "?";
    if (enableSleepDetection == 1)
    {
      v80 = "Yes";
    }

    if (enableSleepDetection == 2)
    {
      v81 = "No";
    }

    else
    {
      v81 = v80;
    }

    v192 = v5;
    NSAppendPrintF_safe(&v192, ", En SlDt %s", v81);
    v82 = v192;

    v5 = v82;
  }

  hearingAidToggle = self->_hearingAidToggle;
  if (self->_hearingAidToggle)
  {
    v84 = "?";
    if (hearingAidToggle == 1)
    {
      v84 = "Yes";
    }

    if (hearingAidToggle == 2)
    {
      v85 = "No";
    }

    else
    {
      v85 = v84;
    }

    v191 = v5;
    NSAppendPrintF_safe(&v191, ", HA Cfg %s", v85);
    v86 = v191;

    v5 = v86;
  }

  hearingAidEnrolled = self->_hearingAidEnrolled;
  if (self->_hearingAidEnrolled)
  {
    v88 = "?";
    if (hearingAidEnrolled == 1)
    {
      v88 = "Yes";
    }

    if (hearingAidEnrolled == 2)
    {
      v89 = "No";
    }

    else
    {
      v89 = v88;
    }

    v190 = v5;
    NSAppendPrintF_safe(&v190, ", HA Enr %s", v89);
    v90 = v190;

    v5 = v90;
  }

  hearingAidV2SourceRegionSupport = self->_hearingAidV2SourceRegionSupport;
  if (self->_hearingAidV2SourceRegionSupport)
  {
    v92 = "?";
    if (hearingAidV2SourceRegionSupport == 1)
    {
      v92 = "Yes";
    }

    if (hearingAidV2SourceRegionSupport == 2)
    {
      v93 = "No";
    }

    else
    {
      v93 = v92;
    }

    v189 = v5;
    NSAppendPrintF_safe(&v189, ", HAv2 Rg %s", v93);
    v94 = v189;

    v5 = v94;
  }

  acceptReplyPlayPauseConfig = self->_acceptReplyPlayPauseConfig;
  if (self->_acceptReplyPlayPauseConfig)
  {
    v188 = v5;
    if (acceptReplyPlayPauseConfig > 3)
    {
      v96 = "?";
    }

    else
    {
      v96 = off_278CDDD28[acceptReplyPlayPauseConfig - 1];
    }

    NSAppendPrintF_safe(&v188, ", HG ARPP %s", v96);
    v97 = v188;

    v5 = v97;
  }

  declineDismissSkipConfig = self->_declineDismissSkipConfig;
  if (self->_declineDismissSkipConfig)
  {
    v187 = v5;
    if (declineDismissSkipConfig > 3)
    {
      v99 = "?";
    }

    else
    {
      v99 = off_278CDDD28[declineDismissSkipConfig - 1];
    }

    NSAppendPrintF_safe(&v187, ", HG DDS %s", v99);
    v100 = v187;

    v5 = v100;
  }

  headGestureToggle = self->_headGestureToggle;
  if (self->_headGestureToggle)
  {
    v102 = "?";
    if (headGestureToggle == 1)
    {
      v102 = "Yes";
    }

    if (headGestureToggle == 2)
    {
      v103 = "No";
    }

    else
    {
      v103 = v102;
    }

    v186 = v5;
    NSAppendPrintF_safe(&v186, ", HG En %s", v103);
    v104 = v186;

    v5 = v104;
  }

  headGestureProxCardShown = self->_headGestureProxCardShown;
  if (self->_headGestureProxCardShown)
  {
    v106 = "?";
    if (headGestureProxCardShown == 1)
    {
      v106 = "Yes";
    }

    if (headGestureProxCardShown == 2)
    {
      v107 = "No";
    }

    else
    {
      v107 = v106;
    }

    v185 = v5;
    NSAppendPrintF_safe(&v185, ", HGPC %s", v107);
    v108 = v185;

    v5 = v108;
  }

  allowHealthKitDataWrite = self->_allowHealthKitDataWrite;
  if (self->_allowHealthKitDataWrite)
  {
    v110 = "?";
    if (allowHealthKitDataWrite == 1)
    {
      v110 = "Yes";
    }

    if (allowHealthKitDataWrite == 2)
    {
      v111 = "No";
    }

    else
    {
      v111 = v110;
    }

    v184 = v5;
    NSAppendPrintF_safe(&v184, ", HK Wr En %s ", v111);
    v112 = v184;

    v5 = v112;
  }

  listeningModeOffAllowed = self->_listeningModeOffAllowed;
  if (self->_listeningModeOffAllowed)
  {
    v114 = "?";
    if (listeningModeOffAllowed == 1)
    {
      v114 = "Yes";
    }

    if (listeningModeOffAllowed == 2)
    {
      v115 = "No";
    }

    else
    {
      v115 = v114;
    }

    v183 = v5;
    NSAppendPrintF_safe(&v183, ", Ls OFF %s", v115);
    v116 = v183;

    v5 = v116;
  }

  if (self->_listeningModeConfigs)
  {
    v182 = v5;
    v117 = CUPrintFlags32();
    NSAppendPrintF_safe(&v182, ", LsMC %@", v117);
    v118 = v182;

    v5 = v118;
  }

  listeningMode = self->_listeningMode;
  if (listeningMode)
  {
    v181 = v5;
    if (listeningMode > 4)
    {
      v120 = "?";
    }

    else
    {
      v120 = off_278CDDD40[listeningMode - 1];
    }

    NSAppendPrintF_safe(&v181, ", LsnM %s", v120);
    v121 = v181;

    v5 = v121;
  }

  microphoneMode = self->_microphoneMode;
  if (self->_microphoneMode)
  {
    v180 = v5;
    if (microphoneMode > 3)
    {
      v123 = "?";
    }

    else
    {
      v123 = off_278CDDD60[microphoneMode - 1];
    }

    NSAppendPrintF_safe(&v180, ", MicM %s", v123);
    v124 = v180;

    v5 = v124;
  }

  muteControlConfig = self->_muteControlConfig;
  if (self->_muteControlConfig)
  {
    v179 = v5;
    if (muteControlConfig > 4)
    {
      v126 = @"?";
    }

    else
    {
      v126 = *(&off_278CDDD78 + muteControlConfig - 1);
    }

    NSAppendPrintF_safe(&v179, ", MCC %@", v126);
    v127 = v179;

    v5 = v127;
  }

  v128 = self->_name;
  v129 = v128;
  if (v128)
  {
    v178 = v5;
    NSAppendPrintF_safe(&v178, ", Name '%@'", v128);
    v130 = v178;

    v5 = v130;
  }

  placementMode = self->_placementMode;
  if (self->_placementMode)
  {
    v132 = "?";
    if (placementMode == 1)
    {
      v132 = "Enabled";
    }

    if (placementMode == 2)
    {
      v133 = "Disabled";
    }

    else
    {
      v133 = v132;
    }

    v177 = v5;
    NSAppendPrintF_safe(&v177, ", PlcM %s", v133);
    v134 = v177;

    v5 = v134;
  }

  if (self->_rawGesturesConfigFlags)
  {
    v176 = v5;
    v135 = CUPrintFlags32();
    NSAppendPrintF_safe(&v176, ", rgCg %@", v135);
    v136 = v176;

    v5 = v136;
  }

  relinquishAudioRoute = self->_relinquishAudioRoute;
  if (self->_relinquishAudioRoute)
  {
    v138 = "?";
    if (relinquishAudioRoute == 1)
    {
      v138 = "Yes";
    }

    if (relinquishAudioRoute == 2)
    {
      v139 = "No";
    }

    else
    {
      v139 = v138;
    }

    v175 = v5;
    NSAppendPrintF_safe(&v175, ", RlAR %s", v139);
    v140 = v175;

    v5 = v140;
  }

  remoteCameraControlConfig = self->_remoteCameraControlConfig;
  if (self->_remoteCameraControlConfig)
  {
    v174 = v5;
    if (remoteCameraControlConfig > 3)
    {
      v142 = "?";
    }

    else
    {
      v142 = off_278CDDD98[remoteCameraControlConfig - 1];
    }

    NSAppendPrintF_safe(&v174, ", RcamCC %s", v142);
    v143 = v174;

    v5 = v143;
  }

  selectiveSpeechListeningConfig = self->_selectiveSpeechListeningConfig;
  if (self->_selectiveSpeechListeningConfig)
  {
    v173 = v5;
    if (selectiveSpeechListeningConfig > 3)
    {
      v145 = @"?";
    }

    else
    {
      v145 = *(&off_278CDDDB0 + selectiveSpeechListeningConfig - 1);
    }

    NSAppendPrintF_safe(&v173, ", SSLC %@", v145);
    v146 = v173;

    v5 = v146;
  }

  smartRoutingMode = self->_smartRoutingMode;
  if (self->_smartRoutingMode)
  {
    v148 = "?";
    if (smartRoutingMode == 1)
    {
      v148 = "Enabled";
    }

    if (smartRoutingMode == 2)
    {
      v149 = "Disabled";
    }

    else
    {
      v149 = v148;
    }

    v172 = v5;
    NSAppendPrintF_safe(&v172, ", srMd %s", v149);
    v150 = v172;

    v5 = v150;
  }

  enableSiriMultitone = self->_enableSiriMultitone;
  if (self->_enableSiriMultitone)
  {
    v152 = "?";
    if (enableSiriMultitone == 1)
    {
      v152 = "Yes";
    }

    if (enableSiriMultitone == 2)
    {
      v153 = "No";
    }

    else
    {
      v153 = v152;
    }

    v171 = v5;
    NSAppendPrintF_safe(&v171, ", SRMT %s", v153);
    v154 = v171;

    v5 = v154;
  }

  spatialAudioAllowed = self->_spatialAudioAllowed;
  if (self->_spatialAudioAllowed)
  {
    v156 = "?";
    if (spatialAudioAllowed == 1)
    {
      v156 = "Yes";
    }

    if (spatialAudioAllowed == 2)
    {
      v157 = "No";
    }

    else
    {
      v157 = v156;
    }

    v170 = v5;
    NSAppendPrintF_safe(&v170, ", SpAA %s", v157);
    v158 = v170;

    v5 = v158;
  }

  spatialAudioMode = self->_spatialAudioMode;
  if (spatialAudioMode != 255)
  {
    v169 = v5;
    if (spatialAudioMode > 3)
    {
      v160 = "?";
    }

    else
    {
      v160 = off_278CDDDC8[spatialAudioMode];
    }

    NSAppendPrintF_safe(&v169, ", SpAM %s", v160);
    v161 = v169;

    v5 = v161;
  }

  allowTemporaryManagedPairing = self->_allowTemporaryManagedPairing;
  if (self->_allowTemporaryManagedPairing)
  {
    v163 = "?";
    if (allowTemporaryManagedPairing == 1)
    {
      v163 = "Yes";
    }

    if (allowTemporaryManagedPairing == 2)
    {
      v164 = "No";
    }

    else
    {
      v164 = v163;
    }

    v168 = v5;
    NSAppendPrintF_safe(&v168, ", Temp Mg Paired %s", v164);
    v165 = v168;

    v5 = v165;
  }

  v166 = v5;

  return v5;
}

- (BOOL)needsUpdateToAAController
{
  if (self->_changeDynamicEndOfChargeState)
  {
    return 1;
  }

  if (_os_feature_enabled_impl() && (self->_enableHearingAidGainSwipe || self->_enableHearingAssist || self->_hearingAidToggle || self->_hearingAidEnrolled) || _os_feature_enabled_impl() && self->_enableHearingProtectionPPE || _os_feature_enabled_impl() && self->_hearingAidV2SourceRegionSupport || _os_feature_enabled_impl() && self->_listeningModeOffAllowed || self->_autoANCStrength || self->_enableHeartRateMonitor || self->_enableSiriMultitone || self->_enableSleepDetection || _os_feature_enabled_impl() && self->_allowTemporaryManagedPairing)
  {
    return 1;
  }

  return self->_rawGesturesConfigFlags != 0;
}

@end