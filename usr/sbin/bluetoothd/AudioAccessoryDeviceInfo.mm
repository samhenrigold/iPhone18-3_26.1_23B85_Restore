@interface AudioAccessoryDeviceInfo
- (id)xpcObjectRepresentation;
- (unint64_t)updateWithClassicDevice:(void *)device;
@end

@implementation AudioAccessoryDeviceInfo

- (id)xpcObjectRepresentation
{
  v3 = xpc_dictionary_create(0, 0, 0);
  autoANCCapability = self->_autoANCCapability;
  v5 = v3;
  v6 = v5;
  if (autoANCCapability)
  {
    xpc_dictionary_set_uint64(v5, "aaCp", autoANCCapability);
  }

  autoANCStrength = self->_autoANCStrength;
  v8 = v6;
  v9 = v8;
  if (autoANCStrength)
  {
    xpc_dictionary_set_uint64(v8, "aaSt", autoANCStrength);
  }

  bobbleCapability = self->_bobbleCapability;
  v11 = v9;
  v12 = v11;
  if (bobbleCapability)
  {
    xpc_dictionary_set_uint64(v11, "bbCp", bobbleCapability);
  }

  caseSoundCapability = self->_caseSoundCapability;
  v14 = v12;
  v15 = v14;
  if (caseSoundCapability)
  {
    xpc_dictionary_set_uint64(v14, "caCp", caseSoundCapability);
  }

  cameraControlCapability = self->_cameraControlCapability;
  v17 = v15;
  v18 = v17;
  if (cameraControlCapability)
  {
    xpc_dictionary_set_uint64(v17, "ccCp", cameraControlCapability);
  }

  discoveryFlags = self->_discoveryFlags;
  v20 = v18;
  v21 = v20;
  if (discoveryFlags)
  {
    xpc_dictionary_set_uint64(v20, "disF", discoveryFlags);
  }

  dynamicEndOfChargeCapability = self->_dynamicEndOfChargeCapability;
  v23 = v21;
  v24 = v23;
  if (dynamicEndOfChargeCapability)
  {
    xpc_dictionary_set_uint64(v23, "deoc", dynamicEndOfChargeCapability);
  }

  dynamicEndOfChargeEnabled = self->_dynamicEndOfChargeEnabled;
  v26 = v24;
  v27 = v26;
  if (dynamicEndOfChargeEnabled)
  {
    xpc_dictionary_set_int64(v26, "deoE", dynamicEndOfChargeEnabled);
  }

  earTipFitTestCapability = self->_earTipFitTestCapability;
  v29 = v27;
  v30 = v29;
  if (earTipFitTestCapability)
  {
    xpc_dictionary_set_uint64(v29, "erFt", earTipFitTestCapability);
  }

  enhancedTransparencyVersion = self->_enhancedTransparencyVersion;
  v32 = v30;
  v33 = v32;
  if (enhancedTransparencyVersion)
  {
    xpc_dictionary_set_uint64(v32, "enTv", enhancedTransparencyVersion);
  }

  farFieldUplinkCapability = self->_farFieldUplinkCapability;
  v35 = v33;
  v36 = v35;
  if (farFieldUplinkCapability)
  {
    xpc_dictionary_set_uint64(v35, "fuCp", farFieldUplinkCapability);
  }

  frequencyBand = self->_frequencyBand;
  v38 = v36;
  v39 = v38;
  if (frequencyBand)
  {
    xpc_dictionary_set_uint64(v38, "fqBd", frequencyBand);
  }

  hearingAidCapability = self->_hearingAidCapability;
  v41 = v39;
  v42 = v41;
  if (hearingAidCapability)
  {
    xpc_dictionary_set_uint64(v41, "haCp", hearingAidCapability);
  }

  hearingAidConfig = self->_hearingAidConfig;
  v44 = v42;
  v45 = v44;
  if (hearingAidConfig)
  {
    xpc_dictionary_set_int64(v44, "haCg", hearingAidConfig);
  }

  hearingAidEnrolled = self->_hearingAidEnrolled;
  v47 = v45;
  v48 = v47;
  if (hearingAidEnrolled)
  {
    xpc_dictionary_set_int64(v47, "haEn", hearingAidEnrolled);
  }

  hearingAidGainSwipeEnabled = self->_hearingAidGainSwipeEnabled;
  v50 = v48;
  v51 = v50;
  if (hearingAidGainSwipeEnabled)
  {
    xpc_dictionary_set_int64(v50, "haGS", hearingAidGainSwipeEnabled);
  }

  hearingAidV2Capability = self->_hearingAidV2Capability;
  v53 = v51;
  v54 = v53;
  if (hearingAidV2Capability)
  {
    xpc_dictionary_set_uint64(v53, "haV2", hearingAidV2Capability);
  }

  hearingAssistEnabled = self->_hearingAssistEnabled;
  v56 = v54;
  v57 = v56;
  if (hearingAssistEnabled)
  {
    xpc_dictionary_set_int64(v56, "hrEn", hearingAssistEnabled);
  }

  hearingProtectionCapability = self->_hearingProtectionCapability;
  v59 = v57;
  v60 = v59;
  if (hearingProtectionCapability)
  {
    xpc_dictionary_set_uint64(v59, "hpCp", hearingProtectionCapability);
  }

  hearingProtectionPPECapability = self->_hearingProtectionPPECapability;
  v62 = v60;
  v63 = v62;
  if (hearingProtectionPPECapability)
  {
    xpc_dictionary_set_uint64(v62, "ppeC", hearingProtectionPPECapability);
  }

  hearingProtectionPPECapLevel = self->_hearingProtectionPPECapLevel;
  v65 = v63;
  v66 = v65;
  if (hearingProtectionPPECapLevel)
  {
    xpc_dictionary_set_uint64(v65, "ppeL", hearingProtectionPPECapLevel);
  }

  hearingProtectionPPEEnabled = self->_hearingProtectionPPEEnabled;
  v68 = v66;
  v69 = v68;
  if (hearingProtectionPPEEnabled)
  {
    xpc_dictionary_set_int64(v68, "ppeE", hearingProtectionPPEEnabled);
  }

  hearingTestCapability = self->_hearingTestCapability;
  v71 = v69;
  v72 = v71;
  if (hearingTestCapability)
  {
    xpc_dictionary_set_uint64(v71, "htcp", hearingTestCapability);
  }

  heartRateMonitorCapable = self->_heartRateMonitorCapable;
  v74 = v72;
  v75 = v74;
  if (heartRateMonitorCapable)
  {
    xpc_dictionary_set_uint64(v74, "hrCp", heartRateMonitorCapable);
  }

  heartRateMonitorEnabled = self->_heartRateMonitorEnabled;
  v77 = v75;
  v78 = v77;
  if (heartRateMonitorEnabled)
  {
    xpc_dictionary_set_int64(v77, "hrmt", heartRateMonitorEnabled);
  }

  hideEarDetectionCapability = self->_hideEarDetectionCapability;
  v80 = v78;
  v81 = v80;
  if (hideEarDetectionCapability)
  {
    xpc_dictionary_set_uint64(v80, "hiED", hideEarDetectionCapability);
  }

  hideOffListeningModeCapability = self->_hideOffListeningModeCapability;
  v83 = v81;
  v84 = v83;
  if (hideOffListeningModeCapability)
  {
    xpc_dictionary_set_uint64(v83, "hoCp", hideOffListeningModeCapability);
  }

  identifier = self->_identifier;
  v86 = v84;
  v87 = identifier;
  uTF8String = [(NSString *)v87 UTF8String];
  if (uTF8String)
  {
    xpc_dictionary_set_string(v86, "aaID", uTF8String);
  }

  lastSeenTime = self->_lastSeenTime;
  v90 = v86;
  v91 = v90;
  if (lastSeenTime)
  {
    xpc_dictionary_set_int64(v90, "laST", lastSeenTime);
  }

  pmeEverywhereCapability = self->_pmeEverywhereCapability;
  v93 = v91;
  v94 = v93;
  if (pmeEverywhereCapability)
  {
    xpc_dictionary_set_uint64(v93, "pmee", pmeEverywhereCapability);
  }

  ovadStreamingCapability = self->_ovadStreamingCapability;
  v96 = v94;
  v97 = v96;
  if (ovadStreamingCapability)
  {
    xpc_dictionary_set_uint64(v96, "osCp", ovadStreamingCapability);
  }

  siriMultitoneCapability = self->_siriMultitoneCapability;
  v99 = v97;
  v100 = v99;
  if (siriMultitoneCapability)
  {
    xpc_dictionary_set_uint64(v99, "smcp", siriMultitoneCapability);
  }

  sleepDetectionCapability = self->_sleepDetectionCapability;
  v102 = v100;
  v103 = v102;
  if (sleepDetectionCapability)
  {
    xpc_dictionary_set_uint64(v102, "sdcp", sleepDetectionCapability);
  }

  sleepDetectionEnabled = self->_sleepDetectionEnabled;
  v105 = v103;
  v106 = v105;
  if (sleepDetectionEnabled)
  {
    xpc_dictionary_set_int64(v105, "esld", sleepDetectionEnabled);
  }

  streamStateAoS = self->_streamStateAoS;
  v108 = v106;
  v109 = v108;
  if (streamStateAoS)
  {
    xpc_dictionary_set_uint64(v108, "aoST", streamStateAoS);
  }

  temporaryManagedPairedStatus = self->_temporaryManagedPairedStatus;
  v111 = v109;
  v112 = v111;
  if (temporaryManagedPairedStatus)
  {
    xpc_dictionary_set_int64(v111, "tmpM", temporaryManagedPairedStatus);
  }

  v113 = v112;
  return v112;
}

- (unint64_t)updateWithClassicDevice:(void *)device
{
  v5 = *(device + 1435);
  if (v5 == [(AudioAccessoryDeviceInfo *)self streamStateAoS])
  {
    v6 = 0;
  }

  else
  {
    [(AudioAccessoryDeviceInfo *)self setStreamStateAoS:v5];
    v6 = 0x80000000000;
  }

  v7 = sub_1000E3218(device, 0xB0u);
  if (v7 < 3)
  {
    LODWORD(v10) = v7 + 1;
  }

  else
  {
    if (dword_100B51310 <= 90)
    {
      if (dword_100B51310 != -1 || (v7 = _LogCategory_Initialize(), v7))
      {
        sub_10080F4A0(v7, v8, v9);
      }
    }

    LODWORD(v10) = 0;
  }

  v11 = sub_1000E3218(device, 0x18u);
  if (v11)
  {
    v10 = (v11 + 1);
  }

  else
  {
    v10 = v10;
  }

  if (v10 != [(AudioAccessoryDeviceInfo *)self autoANCCapability])
  {
    [(AudioAccessoryDeviceInfo *)self setAutoANCCapability:v10];
    v6 = 0x80000000000;
  }

  v12 = sub_100549574(device);
  if (v12)
  {
    if (v12 == 50 || v12 == 100)
    {
      v15 = (v12 + 1000);
    }

    else
    {
      if (dword_100B51310 <= 90)
      {
        if (dword_100B51310 != -1 || (v12 = _LogCategory_Initialize(), v12))
        {
          sub_10080F4BC(v12, v13, v14);
        }
      }

      v15 = 0;
    }
  }

  else
  {
    v15 = 1000;
  }

  if (v15 != [(AudioAccessoryDeviceInfo *)self autoANCStrength])
  {
    [(AudioAccessoryDeviceInfo *)self setAutoANCStrength:v15];
    v6 = 0x80000000000;
  }

  if (sub_1000E3218(device, 0xF0u) == 1)
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  if (v16 != [(AudioAccessoryDeviceInfo *)self bobbleCapability])
  {
    [(AudioAccessoryDeviceInfo *)self setBobbleCapability:v16];
    v6 = 0x80000000000;
  }

  if (sub_1000E3218(device, 0x23u))
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  if (v17 != [(AudioAccessoryDeviceInfo *)self cameraControlCapability])
  {
    [(AudioAccessoryDeviceInfo *)self setCameraControlCapability:v17];
    v6 |= 0x80000000000uLL;
  }

  if (sub_1000E012C(device, 0x12u))
  {
    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

  if (v18 != [(AudioAccessoryDeviceInfo *)self caseSoundCapability])
  {
    [(AudioAccessoryDeviceInfo *)self setCaseSoundCapability:v18];
    v6 |= 0x80000000000uLL;
  }

  if (sub_1000E3218(device, 0x29u))
  {
    v19 = 2;
  }

  else
  {
    v19 = 1;
  }

  if (v19 != [(AudioAccessoryDeviceInfo *)self dynamicEndOfChargeCapability])
  {
    [(AudioAccessoryDeviceInfo *)self setDynamicEndOfChargeCapability:v19];
    v6 |= 0x80000000000uLL;
  }

  v20 = sub_10054976C(device);
  if (v20 == 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = 2 * (v20 == 2);
  }

  if (v21 != [(AudioAccessoryDeviceInfo *)self dynamicEndOfChargeEnabled])
  {
    [(AudioAccessoryDeviceInfo *)self setDynamicEndOfChargeEnabled:v21];
    v6 |= 0x80000000000uLL;
  }

  if (sub_1000E3218(device, 0x17u))
  {
    v22 = 2;
  }

  else
  {
    v22 = 1;
  }

  if (v22 != [(AudioAccessoryDeviceInfo *)self earTipFitTestCapability])
  {
    [(AudioAccessoryDeviceInfo *)self setEarTipFitTestCapability:v22];
    v6 |= 0x80000000000uLL;
  }

  v23 = sub_1000E3218(device, 6u);
  if ((v23 - 1) >= 3)
  {
    v24 = 4 * (v23 == 4);
  }

  else
  {
    v24 = v23;
  }

  if ([(AudioAccessoryDeviceInfo *)self enhancedTransparencyVersion]!= v24)
  {
    [(AudioAccessoryDeviceInfo *)self setEnhancedTransparencyVersion:v24];
    v6 |= 0x80000000000uLL;
  }

  if (sub_1000E3218(device, 0x25u) == 1)
  {
    v25 = 2;
  }

  else
  {
    v25 = 1;
  }

  if (v25 != [(AudioAccessoryDeviceInfo *)self farFieldUplinkCapability])
  {
    [(AudioAccessoryDeviceInfo *)self setFarFieldUplinkCapability:v25];
    v6 |= 0x80000000000uLL;
  }

  if (*(device + 1437))
  {
    v26 = 2;
  }

  else
  {
    v26 = 1;
  }

  if (v26 != [(AudioAccessoryDeviceInfo *)self frequencyBand])
  {
    [(AudioAccessoryDeviceInfo *)self setFrequencyBand:v26];
    v6 |= 0x80000000000uLL;
  }

  if (sub_1000E3218(device, 0x24u) == 1)
  {
    v27 = 2;
  }

  else
  {
    v27 = 1;
  }

  if (v27 != [(AudioAccessoryDeviceInfo *)self ovadStreamingCapability])
  {
    [(AudioAccessoryDeviceInfo *)self setOvadStreamingCapability:v27];
    v6 |= 0x80000000000uLL;
  }

  if (sub_1000E3218(device, 0xC0u) == 2)
  {
    v28 = 2;
  }

  else
  {
    v28 = 1;
  }

  if (v28 != [(AudioAccessoryDeviceInfo *)self hearingAidCapability])
  {
    [(AudioAccessoryDeviceInfo *)self setHearingAidCapability:v28];
    v6 |= 0x80000000000uLL;
  }

  v29 = sub_10054FC88(device);
  if (v29 == 1)
  {
    v30 = 1;
  }

  else
  {
    v30 = 2 * (v29 == 2);
  }

  if (v30 != [(AudioAccessoryDeviceInfo *)self hearingAidConfig])
  {
    [(AudioAccessoryDeviceInfo *)self setHearingAidConfig:v30];
    v6 |= 0x80000000000uLL;
  }

  v31 = sub_10054FBB0(device);
  if (v31 == 1)
  {
    v32 = 1;
  }

  else
  {
    v32 = 2 * (v31 == 2);
  }

  if (v32 != [(AudioAccessoryDeviceInfo *)self hearingAidEnrolled])
  {
    [(AudioAccessoryDeviceInfo *)self setHearingAidEnrolled:v32];
    v6 |= 0x80000000000uLL;
  }

  v33 = sub_1005495BC(device);
  if (v33 == 1)
  {
    v34 = 1;
  }

  else
  {
    v34 = 2 * (v33 == 2);
  }

  if (v34 != [(AudioAccessoryDeviceInfo *)self hearingAidGainSwipeEnabled])
  {
    [(AudioAccessoryDeviceInfo *)self setHearingAidGainSwipeEnabled:v34];
    v6 |= 0x80000000000uLL;
  }

  v35 = sub_100549604(device);
  if (v35 == 1)
  {
    v36 = 1;
  }

  else
  {
    v36 = 2 * (v35 == 2);
  }

  if (v36 != [(AudioAccessoryDeviceInfo *)self hearingAssistEnabled])
  {
    [(AudioAccessoryDeviceInfo *)self setHearingAssistEnabled:v36];
    v6 |= 0x80000000000uLL;
  }

  if (sub_1000E3218(device, 0x30u) == 1)
  {
    v37 = 2;
  }

  else
  {
    v37 = 1;
  }

  if (v37 != [(AudioAccessoryDeviceInfo *)self hearingProtectionCapability])
  {
    [(AudioAccessoryDeviceInfo *)self setHearingProtectionCapability:v37];
    v6 |= 0x80000000000uLL;
  }

  if (sub_1000E3218(device, 0xD0u) == 2)
  {
    v38 = 2;
  }

  else
  {
    v38 = 1;
  }

  if (v38 != [(AudioAccessoryDeviceInfo *)self hearingTestCapability])
  {
    [(AudioAccessoryDeviceInfo *)self setHearingTestCapability:v38];
    v6 |= 0x80000000000uLL;
  }

  if (sub_1000E3218(device, 0x31u))
  {
    v39 = 2;
  }

  else
  {
    v39 = 1;
  }

  if (v39 != [(AudioAccessoryDeviceInfo *)self hearingAidV2Capability])
  {
    [(AudioAccessoryDeviceInfo *)self setHearingAidV2Capability:v39];
    v6 |= 0x80000000000uLL;
  }

  if (sub_1000E3218(device, 0x28u) == 1)
  {
    v40 = 2;
  }

  else
  {
    v40 = 1;
  }

  if (v40 != [(AudioAccessoryDeviceInfo *)self hearingProtectionPPECapability])
  {
    [(AudioAccessoryDeviceInfo *)self setHearingProtectionPPECapability:v40];
    v6 |= 0x80000000000uLL;
  }

  v41 = sub_1005496DC(device);
  if (v41 != [(AudioAccessoryDeviceInfo *)self hearingProtectionPPECapLevel])
  {
    [(AudioAccessoryDeviceInfo *)self setHearingProtectionPPECapLevel:v41];
    v6 |= 0x80000000000uLL;
  }

  v42 = sub_100549724(device);
  if (v42 == 1)
  {
    v43 = 1;
  }

  else
  {
    v43 = 2 * (v42 == 2);
  }

  if (v43 != [(AudioAccessoryDeviceInfo *)self hearingProtectionPPEEnabled])
  {
    [(AudioAccessoryDeviceInfo *)self setHearingProtectionPPEEnabled:v43];
    v6 |= 0x80000000000uLL;
  }

  if (sub_1000E3218(device, 0x26u))
  {
    v44 = 2;
  }

  else
  {
    v44 = 1;
  }

  if (v44 != [(AudioAccessoryDeviceInfo *)self heartRateMonitorCapable])
  {
    [(AudioAccessoryDeviceInfo *)self setHeartRateMonitorCapable:v44];
    v6 |= 0x80000000000uLL;
  }

  v45 = sub_100549694(device);
  if (v45 == 1)
  {
    v46 = 1;
  }

  else
  {
    v46 = 2 * (v45 == 2);
  }

  if (v46 != [(AudioAccessoryDeviceInfo *)self heartRateMonitorEnabled])
  {
    [(AudioAccessoryDeviceInfo *)self setHeartRateMonitorEnabled:v46];
    v6 |= 0x80000000000uLL;
  }

  if (sub_1000E3218(device, 0x16u))
  {
    v47 = 2;
  }

  else
  {
    v47 = 1;
  }

  if (v47 != [(AudioAccessoryDeviceInfo *)self hideEarDetectionCapability])
  {
    [(AudioAccessoryDeviceInfo *)self setHideEarDetectionCapability:v47];
    v6 |= 0x80000000000uLL;
  }

  if (sub_1000E3218(device, 0x13u) == 1)
  {
    v48 = 2;
  }

  else
  {
    v48 = 1;
  }

  if (v48 != [(AudioAccessoryDeviceInfo *)self hideOffListeningModeCapability])
  {
    [(AudioAccessoryDeviceInfo *)self setHideOffListeningModeCapability:v48];
    v6 |= 0x80000000000uLL;
  }

  v49 = sub_10054D4E0(device);
  if (v49 >= 1)
  {
    v50 = v49;
    if (v49 != [(AudioAccessoryDeviceInfo *)self lastSeenTime])
    {
      [(AudioAccessoryDeviceInfo *)self setLastSeenTime:v50];
      v6 |= 0x80000000000uLL;
    }
  }

  if (sub_1000E012C(device, 0x11u))
  {
    v51 = 2;
  }

  else
  {
    v51 = 1;
  }

  if (v51 != [(AudioAccessoryDeviceInfo *)self pmeEverywhereCapability])
  {
    [(AudioAccessoryDeviceInfo *)self setPmeEverywhereCapability:v51];
    v6 |= 0x80000000000uLL;
  }

  if (sub_1000E3218(device, 0x15u) == 1)
  {
    v52 = 2;
  }

  else
  {
    v52 = 1;
  }

  if (v52 != [(AudioAccessoryDeviceInfo *)self siriMultitoneCapability])
  {
    [(AudioAccessoryDeviceInfo *)self setSiriMultitoneCapability:v52];
    v6 |= 0x80000000000uLL;
  }

  if (sub_1000E3218(device, 0x21u) == 1)
  {
    v53 = 2;
  }

  else
  {
    v53 = 1;
  }

  if (v53 != [(AudioAccessoryDeviceInfo *)self sleepDetectionCapability])
  {
    [(AudioAccessoryDeviceInfo *)self setSleepDetectionCapability:v53];
    v6 |= 0x80000000000uLL;
  }

  v54 = sub_10054991C(device);
  if (v54 == 1)
  {
    v55 = 1;
  }

  else
  {
    v55 = 2 * (v54 == 2);
  }

  if (v55 != [(AudioAccessoryDeviceInfo *)self sleepDetectionEnabled])
  {
    [(AudioAccessoryDeviceInfo *)self setSleepDetectionEnabled:v55];
    v6 |= 0x80000000000uLL;
  }

  if (_os_feature_enabled_impl())
  {
    if (*(device + 1045))
    {
      v56 = 1;
    }

    else
    {
      v56 = 2;
    }

    if (v56 != [(AudioAccessoryDeviceInfo *)self temporaryManagedPairedStatus])
    {
      [(AudioAccessoryDeviceInfo *)self setTemporaryManagedPairedStatus:v56];
      v6 |= 0x80000000000uLL;
    }
  }

  return v6;
}

@end