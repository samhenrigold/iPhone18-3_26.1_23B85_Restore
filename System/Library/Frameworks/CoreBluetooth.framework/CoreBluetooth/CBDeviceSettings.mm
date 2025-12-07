@interface CBDeviceSettings
- (CBDeviceSettings)init;
- (CBDeviceSettings)initWithXPCObject:(id)object error:(id *)error;
- (id)description;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation CBDeviceSettings

- (CBDeviceSettings)init
{
  v6.receiver = self;
  v6.super_class = CBDeviceSettings;
  v2 = [(CBDeviceSettings *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_spatialAudioMode = 255;
    v4 = v2;
  }

  return v3;
}

- (void)encodeWithXPCObject:(id)object
{
  objectCopy = object;
  v5 = objectCopy;
  if (self->_aclLinkState)
  {
    xpc_dictionary_set_uint64(objectCopy, "aLS", self->_aclLinkState);
  }

  if (self->_aclPriority)
  {
    xpc_dictionary_set_int64(v5, "aclP", self->_aclPriority);
  }

  if (self->_adaptiveVolumeConfig)
  {
    xpc_dictionary_set_uint64(v5, "avCf", self->_adaptiveVolumeConfig);
  }

  if (self->_allowsAutoRoute)
  {
    xpc_dictionary_set_int64(v5, "alAR", self->_allowsAutoRoute);
  }

  if (self->_audioRouteHidden)
  {
    xpc_dictionary_set_int64(v5, "auRH", self->_audioRouteHidden);
  }

  if (self->_clickHoldModeLeft)
  {
    xpc_dictionary_set_uint64(v5, "clHL", self->_clickHoldModeLeft);
  }

  if (self->_clickHoldModeRight)
  {
    xpc_dictionary_set_uint64(v5, "clHR", self->_clickHoldModeRight);
  }

  if (self->_crownRotationDirection)
  {
    xpc_dictionary_set_uint64(v5, "crRD", self->_crownRotationDirection);
  }

  if (self->_conversationDetectConfig)
  {
    xpc_dictionary_set_uint64(v5, "cdCf", self->_conversationDetectConfig);
  }

  deviceFlagsMask = self->_deviceFlagsMask;
  if (deviceFlagsMask)
  {
    xpc_dictionary_set_uint64(v5, "dvFM", deviceFlagsMask);
  }

  deviceFlagsValue = self->_deviceFlagsValue;
  if (deviceFlagsValue)
  {
    xpc_dictionary_set_uint64(v5, "dvFV", deviceFlagsValue);
  }

  if (self->_doubleTapActionLeft)
  {
    xpc_dictionary_set_int64(v5, "dtAL", self->_doubleTapActionLeft);
  }

  if (self->_doubleTapActionRight)
  {
    xpc_dictionary_set_int64(v5, "dtAR", self->_doubleTapActionRight);
  }

  if (self->_endCallConfig)
  {
    xpc_dictionary_set_uint64(v5, "eCC", self->_endCallConfig);
  }

  listeningMode = self->_listeningMode;
  if (listeningMode)
  {
    xpc_dictionary_set_int64(v5, "lsnM", listeningMode);
  }

  listeningModeConfigs = self->_listeningModeConfigs;
  if (listeningModeConfigs)
  {
    xpc_dictionary_set_uint64(v5, "lsMC", listeningModeConfigs);
  }

  if (self->_microphoneMode)
  {
    xpc_dictionary_set_int64(v5, "micM", self->_microphoneMode);
  }

  if (self->_muteControlConfig)
  {
    xpc_dictionary_set_uint64(v5, "mCC", self->_muteControlConfig);
  }

  name = self->_name;
  xdict = v5;
  uTF8String = [(NSString *)name UTF8String];
  if (uTF8String)
  {
    xpc_dictionary_set_string(xdict, "nm", uTF8String);
  }

  if (self->_placementMode)
  {
    xpc_dictionary_set_int64(xdict, "dPlM", self->_placementMode);
  }

  CUXPCEncodeObject();
  if (self->_relinquishAudioRoute)
  {
    xpc_dictionary_set_int64(xdict, "rlAR", self->_relinquishAudioRoute);
  }

  if (self->_selectiveSpeechListeningConfig)
  {
    xpc_dictionary_set_uint64(xdict, "ssCf", self->_selectiveSpeechListeningConfig);
  }

  v12 = xdict;
  if (self->_smartRoutingMode)
  {
    xpc_dictionary_set_int64(xdict, "srMd", self->_smartRoutingMode);
    v12 = xdict;
  }

  if (self->_spatialAudioAllowed)
  {
    xpc_dictionary_set_int64(xdict, "SpAA", self->_spatialAudioAllowed);
    v12 = xdict;
  }

  spatialAudioMode = self->_spatialAudioMode;
  if (spatialAudioMode != 255)
  {
    xpc_dictionary_set_int64(xdict, "SpAM", spatialAudioMode);
    v12 = xdict;
  }
}

- (id)description
{
  v113 = 0;
  v3 = [objc_opt_class() description];
  NSAppendPrintF_safe(&v113, "%@", v3);
  v4 = v113;

  aclPriority = self->_aclPriority;
  if (self->_aclPriority)
  {
    v112 = v4;
    if (aclPriority > 49)
    {
      if (aclPriority == 50)
      {
        v6 = "Medium";
        goto LABEL_12;
      }

      if (aclPriority == 80)
      {
        v6 = "High";
        goto LABEL_12;
      }
    }

    else
    {
      if (aclPriority == 1)
      {
        v6 = "Default";
        goto LABEL_12;
      }

      if (aclPriority == 20)
      {
        v6 = "Low";
LABEL_12:
        NSAppendPrintF_safe(&v112, ", AclP %s", v6);
        v7 = v112;

        v4 = v7;
        goto LABEL_13;
      }
    }

    v6 = "?";
    goto LABEL_12;
  }

LABEL_13:
  adaptiveVolumeConfig = self->_adaptiveVolumeConfig;
  if (self->_adaptiveVolumeConfig)
  {
    v111 = v4;
    if (adaptiveVolumeConfig > 3)
    {
      v9 = @"?";
    }

    else
    {
      v9 = *(&off_1E81224A8 + adaptiveVolumeConfig - 1);
    }

    NSAppendPrintF_safe(&v111, ", AVC %@", v9);
    v10 = v111;

    v4 = v10;
  }

  allowsAutoRoute = self->_allowsAutoRoute;
  if (self->_allowsAutoRoute)
  {
    v12 = "?";
    if (allowsAutoRoute == 1)
    {
      v12 = "Yes";
    }

    if (allowsAutoRoute == 2)
    {
      v13 = "No";
    }

    else
    {
      v13 = v12;
    }

    v110 = v4;
    NSAppendPrintF_safe(&v110, ", AlAR %s", v13);
    v14 = v110;

    v4 = v14;
  }

  audioRouteHidden = self->_audioRouteHidden;
  if (self->_audioRouteHidden)
  {
    v16 = "?";
    if (audioRouteHidden == 1)
    {
      v16 = "Yes";
    }

    if (audioRouteHidden == 2)
    {
      v17 = "No";
    }

    else
    {
      v17 = v16;
    }

    v109 = v4;
    NSAppendPrintF_safe(&v109, ", AuRH %s", v17);
    v18 = v109;

    v4 = v18;
  }

  clickHoldModeLeft = self->_clickHoldModeLeft;
  if (*&self->_clickHoldModeLeft)
  {
    clickHoldModeRight = self->_clickHoldModeRight;
    v108 = v4;
    NSAppendPrintF_safe(&v108, ", ClkH");
    v21 = v108;

    if (clickHoldModeLeft)
    {
      v107 = v21;
      if (clickHoldModeLeft > 7)
      {
        v22 = @"?";
      }

      else
      {
        v22 = *(&off_1E81223F0 + clickHoldModeLeft - 1);
      }

      NSAppendPrintF_safe(&v107, " L %@", v22);
      v23 = v107;

      v21 = v23;
    }

    if (clickHoldModeRight)
    {
      v106 = v21;
      if (clickHoldModeRight > 7)
      {
        v24 = @"?";
      }

      else
      {
        v24 = *(&off_1E81223F0 + clickHoldModeRight - 1);
      }

      NSAppendPrintF_safe(&v106, " R %@", v24);
      v4 = v106;
    }

    else
    {
      v4 = v21;
    }
  }

  conversationDetectConfig = self->_conversationDetectConfig;
  if (self->_conversationDetectConfig)
  {
    v105 = v4;
    if (conversationDetectConfig > 3)
    {
      v26 = @"?";
    }

    else
    {
      v26 = *(&off_1E81224A8 + conversationDetectConfig - 1);
    }

    NSAppendPrintF_safe(&v105, ", CDC %@", v26);
    v27 = v105;

    v4 = v27;
  }

  crownRotationDirection = self->_crownRotationDirection;
  if (self->_crownRotationDirection)
  {
    v29 = @"?";
    if (crownRotationDirection == 1)
    {
      v29 = @"BackToFront";
    }

    if (crownRotationDirection == 2)
    {
      v30 = @"FrontToBack";
    }

    else
    {
      v30 = v29;
    }

    v104 = v4;
    v31 = v30;
    NSAppendPrintF_safe(&v104, ", CrRD %@", v31);
    v32 = v104;

    v4 = v32;
  }

  if (*&self->_deviceFlagsMask == 0)
  {
    doubleTapActionLeft = self->_doubleTapActionLeft;
    doubleTapActionRight = self->_doubleTapActionRight;
    if (!*&self->_doubleTapActionLeft)
    {
      goto LABEL_58;
    }

LABEL_66:
    v44 = doubleTapActionRight;
    v102 = v4;
    NSAppendPrintF_safe(&v102, ", DbTp");
    v45 = v102;

    if (doubleTapActionLeft)
    {
      v101 = v45;
      if (doubleTapActionLeft > 5)
      {
        v46 = "?";
      }

      else
      {
        v46 = off_1E8122428[doubleTapActionLeft - 1];
      }

      NSAppendPrintF_safe(&v101, " L %s", v46);
      v81 = v101;

      v45 = v81;
    }

    if (v44)
    {
      v100 = v45;
      if (v44 > 5)
      {
        v82 = "?";
      }

      else
      {
        v82 = off_1E8122428[v44 - 1];
      }

      NSAppendPrintF_safe(&v100, " R %s", v82);
      v4 = v100;

      endCallConfig = self->_endCallConfig;
      if (self->_endCallConfig)
      {
        goto LABEL_128;
      }
    }

    else
    {
      v4 = v45;
      endCallConfig = self->_endCallConfig;
      if (self->_endCallConfig)
      {
        goto LABEL_128;
      }
    }

LABEL_59:
    listeningMode = self->_listeningMode;
    if (!listeningMode)
    {
      goto LABEL_60;
    }

    goto LABEL_132;
  }

  v103 = v4;
  v41 = CUPrintFlags64();
  v42 = CUPrintFlags64();
  NSAppendPrintF_safe(&v103, ", DevF %@ / %@", v41, v42);
  v43 = v103;

  v4 = v43;
  doubleTapActionLeft = self->_doubleTapActionLeft;
  doubleTapActionRight = self->_doubleTapActionRight;
  if (*&self->_doubleTapActionLeft)
  {
    goto LABEL_66;
  }

LABEL_58:
  endCallConfig = self->_endCallConfig;
  if (!self->_endCallConfig)
  {
    goto LABEL_59;
  }

LABEL_128:
  v99 = v4;
  if (endCallConfig > 4)
  {
    v83 = @"?";
  }

  else
  {
    v83 = *(&off_1E8122488 + endCallConfig - 1);
  }

  NSAppendPrintF_safe(&v99, ", ECC %@", v83);
  v84 = v99;

  v4 = v84;
  listeningMode = self->_listeningMode;
  if (!listeningMode)
  {
LABEL_60:
    if (!self->_listeningModeConfigs)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

LABEL_132:
  v98 = v4;
  if (listeningMode > 4)
  {
    v85 = "?";
  }

  else
  {
    v85 = off_1E8122450[listeningMode - 1];
  }

  NSAppendPrintF_safe(&v98, ", LsnM %s", v85);
  v86 = v98;

  v4 = v86;
  if (self->_listeningModeConfigs)
  {
LABEL_61:
    v97 = v4;
    v37 = CUPrintFlags32();
    NSAppendPrintF_safe(&v97, ", LsMC %@", v37);
    v38 = v97;

    v4 = v38;
  }

LABEL_62:
  microphoneMode = self->_microphoneMode;
  if (self->_microphoneMode)
  {
    v96 = v4;
    if (microphoneMode > 3)
    {
      v40 = "?";
    }

    else
    {
      v40 = off_1E8122470[microphoneMode - 1];
    }

    NSAppendPrintF_safe(&v96, ", MicM %s", v40);
    v47 = v96;

    v4 = v47;
  }

  muteControlConfig = self->_muteControlConfig;
  if (self->_muteControlConfig)
  {
    v95 = v4;
    if (muteControlConfig > 4)
    {
      v49 = @"?";
    }

    else
    {
      v49 = *(&off_1E8122488 + muteControlConfig - 1);
    }

    NSAppendPrintF_safe(&v95, ", MCC %@", v49);
    v50 = v95;

    v4 = v50;
  }

  v51 = self->_name;
  v52 = v51;
  if (v51)
  {
    v94 = v4;
    NSAppendPrintF_safe(&v94, ", Name '%@'", v51);
    v53 = v94;

    v4 = v53;
  }

  placementMode = self->_placementMode;
  if (self->_placementMode)
  {
    v55 = "?";
    if (placementMode == 1)
    {
      v55 = "Enabled";
    }

    if (placementMode == 2)
    {
      v56 = "Disabled";
    }

    else
    {
      v56 = v55;
    }

    v93 = v4;
    NSAppendPrintF_safe(&v93, ", PlcM %s", v56);
    v57 = v93;

    v4 = v57;
  }

  v58 = self->_powerSourceMock;
  v59 = v58;
  if (v58)
  {
    v92 = v4;
    NSAppendPrintF_safe(&v92, ", %@", v58);
    v60 = v92;

    v4 = v60;
  }

  relinquishAudioRoute = self->_relinquishAudioRoute;
  if (self->_relinquishAudioRoute)
  {
    v62 = "?";
    if (relinquishAudioRoute == 1)
    {
      v62 = "Yes";
    }

    if (relinquishAudioRoute == 2)
    {
      v63 = "No";
    }

    else
    {
      v63 = v62;
    }

    v91 = v4;
    NSAppendPrintF_safe(&v91, ", RlAR %s", v63);
    v64 = v91;

    v4 = v64;
  }

  selectiveSpeechListeningConfig = self->_selectiveSpeechListeningConfig;
  if (self->_selectiveSpeechListeningConfig)
  {
    v90 = v4;
    if (selectiveSpeechListeningConfig > 3)
    {
      v66 = @"?";
    }

    else
    {
      v66 = *(&off_1E81224A8 + selectiveSpeechListeningConfig - 1);
    }

    NSAppendPrintF_safe(&v90, ", SSLC %@", v66);
    v67 = v90;

    v4 = v67;
  }

  smartRoutingMode = self->_smartRoutingMode;
  if (self->_smartRoutingMode)
  {
    v69 = "?";
    if (smartRoutingMode == 1)
    {
      v69 = "Enabled";
    }

    if (smartRoutingMode == 2)
    {
      v70 = "Disabled";
    }

    else
    {
      v70 = v69;
    }

    v89 = v4;
    NSAppendPrintF_safe(&v89, ", srMd %s", v70);
    v71 = v89;

    v4 = v71;
  }

  spatialAudioAllowed = self->_spatialAudioAllowed;
  if (self->_spatialAudioAllowed)
  {
    v73 = "?";
    if (spatialAudioAllowed == 1)
    {
      v73 = "Yes";
    }

    if (spatialAudioAllowed == 2)
    {
      v74 = "No";
    }

    else
    {
      v74 = v73;
    }

    v88 = v4;
    NSAppendPrintF_safe(&v88, ", SpAA %s", v74);
    v75 = v88;

    v4 = v75;
  }

  spatialAudioMode = self->_spatialAudioMode;
  if (spatialAudioMode != 255)
  {
    v87 = v4;
    if (spatialAudioMode > 3)
    {
      v77 = "?";
    }

    else
    {
      v77 = off_1E81224C0[spatialAudioMode];
    }

    NSAppendPrintF_safe(&v87, ", SpAM %s", v77);
    v78 = v87;

    v4 = v78;
  }

  v79 = v4;

  return v4;
}

- (CBDeviceSettings)initWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  v7 = [(CBDeviceSettings *)self init];
  if (!v7)
  {
    if (error)
    {
      v98 = [objc_opt_class() description];
      *error = CBErrorF(-6756, "%@ super init failed", v99, v100, v101, v102, v103, v104, v98);
    }

    goto LABEL_83;
  }

  if (MEMORY[0x1C68DFDD0](objectCopy) != MEMORY[0x1E69E9E80])
  {
    if (error)
    {
      CBErrorF(-6756, "XPC non-dict", v8, v9, v10, v11, v12, v13, v105);
      *error = v96 = 0;
      goto LABEL_78;
    }

    goto LABEL_83;
  }

  v14 = OUTLINED_FUNCTION_0();
  v19 = OUTLINED_FUNCTION_3_1(v14, v15, v16, v17, v18);
  if (v19 == 6)
  {
    v7->_aclLinkState = 0;
  }

  else if (v19 == 5)
  {
    goto LABEL_83;
  }

  v21 = OUTLINED_FUNCTION_1_3(v19, "aclP", v20);
  if (v21 == 6)
  {
    v7->_aclPriority = 0;
  }

  else if (v21 == 5)
  {
    goto LABEL_83;
  }

  v22 = OUTLINED_FUNCTION_0();
  v27 = OUTLINED_FUNCTION_3_1(v22, v23, v24, v25, v26);
  if (v27 == 6)
  {
    v7->_adaptiveVolumeConfig = 0;
  }

  else if (v27 == 5)
  {
    goto LABEL_83;
  }

  v29 = OUTLINED_FUNCTION_1_3(v27, "alAR", v28);
  if (v29 == 6)
  {
    v7->_allowsAutoRoute = 0;
  }

  else if (v29 == 5)
  {
    goto LABEL_83;
  }

  v31 = OUTLINED_FUNCTION_1_3(v29, "auRH", v30);
  if (v31 == 6)
  {
    v7->_audioRouteHidden = 0;
  }

  else if (v31 == 5)
  {
    goto LABEL_83;
  }

  v32 = OUTLINED_FUNCTION_0();
  v37 = OUTLINED_FUNCTION_3_1(v32, v33, v34, v35, v36);
  if (v37 == 6)
  {
    v7->_clickHoldModeLeft = 0;
  }

  else if (v37 == 5)
  {
    goto LABEL_83;
  }

  v38 = OUTLINED_FUNCTION_0();
  v43 = OUTLINED_FUNCTION_3_1(v38, v39, v40, v41, v42);
  if (v43 == 6)
  {
    v7->_clickHoldModeRight = 0;
  }

  else if (v43 == 5)
  {
    goto LABEL_83;
  }

  v44 = OUTLINED_FUNCTION_0();
  v49 = OUTLINED_FUNCTION_3_1(v44, v45, v46, v47, v48);
  if (v49 == 6)
  {
    v7->_conversationDetectConfig = 0;
  }

  else if (v49 == 5)
  {
    goto LABEL_83;
  }

  v50 = OUTLINED_FUNCTION_0();
  v55 = OUTLINED_FUNCTION_3_1(v50, v51, v52, v53, v54);
  if (v55 == 6)
  {
    v7->_crownRotationDirection = 0;
  }

  else if (v55 == 5)
  {
    goto LABEL_83;
  }

  OUTLINED_FUNCTION_0();
  v56 = CUXPCDecodeUInt64RangedEx();
  if (v56 == 6)
  {
    v7->_deviceFlagsMask = 0;
  }

  else if (v56 == 5)
  {
    goto LABEL_83;
  }

  OUTLINED_FUNCTION_0();
  v57 = CUXPCDecodeUInt64RangedEx();
  if (v57 == 6)
  {
    v7->_deviceFlagsValue = 0;
  }

  else if (v57 == 5)
  {
    goto LABEL_83;
  }

  v59 = OUTLINED_FUNCTION_1_3(v57, "dtAL", v58);
  if (v59 == 6)
  {
    v7->_doubleTapActionLeft = 0;
  }

  else if (v59 == 5)
  {
    goto LABEL_83;
  }

  v61 = OUTLINED_FUNCTION_1_3(v59, "dtAR", v60);
  if (v61 == 6)
  {
    v7->_doubleTapActionRight = 0;
  }

  else if (v61 == 5)
  {
    goto LABEL_83;
  }

  v62 = OUTLINED_FUNCTION_0();
  v67 = OUTLINED_FUNCTION_3_1(v62, v63, v64, v65, v66);
  if (v67 == 6)
  {
    v7->_endCallConfig = 0;
  }

  else if (v67 == 5)
  {
    goto LABEL_83;
  }

  v69 = OUTLINED_FUNCTION_3_10(v67, "lsnM", v68);
  if (v69 == 6)
  {
    v7->_listeningMode = 0;
  }

  else if (v69 == 5)
  {
    goto LABEL_83;
  }

  OUTLINED_FUNCTION_0();
  v70 = CUXPCDecodeUInt64RangedEx();
  if (v70 == 6)
  {
    v7->_listeningModeConfigs = 0;
  }

  else if (v70 == 5)
  {
    goto LABEL_83;
  }

  v72 = OUTLINED_FUNCTION_1_3(v70, "micM", v71);
  if (v72 == 6)
  {
    v7->_microphoneMode = 0;
  }

  else if (v72 == 5)
  {
    goto LABEL_83;
  }

  v73 = OUTLINED_FUNCTION_0();
  v78 = OUTLINED_FUNCTION_3_1(v73, v74, v75, v76, v77);
  if (v78 == 6)
  {
    v7->_muteControlConfig = 0;
  }

  else if (v78 == 5)
  {
    goto LABEL_83;
  }

  if (!CUXPCDecodeNSString())
  {
    goto LABEL_83;
  }

  objc_opt_class();
  v79 = CUXPCDecodeObject();
  if (!v79)
  {
    goto LABEL_83;
  }

  v81 = OUTLINED_FUNCTION_1_3(v79, "dPlM", v80);
  if (v81 == 6)
  {
    v7->_placementMode = 0;
  }

  else if (v81 == 5)
  {
    goto LABEL_83;
  }

  v83 = OUTLINED_FUNCTION_1_3(v81, "rlAR", v82);
  if (v83 == 6)
  {
    v7->_relinquishAudioRoute = 0;
  }

  else if (v83 == 5)
  {
    goto LABEL_83;
  }

  v84 = OUTLINED_FUNCTION_0();
  v89 = OUTLINED_FUNCTION_3_1(v84, v85, v86, v87, v88);
  if (v89 == 6)
  {
    v7->_selectiveSpeechListeningConfig = 0;
  }

  else if (v89 == 5)
  {
    goto LABEL_83;
  }

  v91 = OUTLINED_FUNCTION_1_3(v89, "srMd", v90);
  if (v91 == 6)
  {
    v7->_smartRoutingMode = 0;
  }

  else if (v91 == 5)
  {
    goto LABEL_83;
  }

  v93 = OUTLINED_FUNCTION_1_3(v91, "SpAA", v92);
  if (v93 == 6)
  {
    v7->_spatialAudioAllowed = 0;
  }

  else if (v93 == 5)
  {
    goto LABEL_83;
  }

  v95 = OUTLINED_FUNCTION_3_10(v93, "SpAM", v94);
  if (v95 != 6)
  {
    if (v95 != 5)
    {
      goto LABEL_77;
    }

LABEL_83:
    v96 = 0;
    goto LABEL_78;
  }

  v7->_spatialAudioMode = 0;
LABEL_77:
  v96 = v7;
LABEL_78:

  return v96;
}

@end