@interface AudioAccessoryDeviceInfo
- (AudioAccessoryDeviceInfo)initWithXPCObject:(id)object error:(id *)error;
- (id)descriptionWithLevel:(int)level;
@end

@implementation AudioAccessoryDeviceInfo

- (id)descriptionWithLevel:(int)level
{
  levelCopy = level;
  v176[0] = 0;
  NSAppendPrintF_safe(v176, "AudioAccessoryDeviceInfo identifier: %@", self->_identifier);
  v4 = v176[0];
  v5 = v4;
  autoANCCapability = self->_autoANCCapability;
  if (autoANCCapability)
  {
    v175 = v4;
    if (autoANCCapability > 3)
    {
      v7 = "?";
    }

    else
    {
      v7 = off_1002BB620[autoANCCapability - 1];
    }

    NSAppendPrintF_safe(&v175, ", autoANC Cap %s", v7);
    v8 = v175;

    v5 = v8;
  }

  autoANCStrength = self->_autoANCStrength;
  if (autoANCStrength)
  {
    v174 = v5;
    switch(autoANCStrength)
    {
      case 0x3E8u:
        v10 = "Low";
        break;
      case 0x44Cu:
        v10 = "High";
        break;
      case 0x41Au:
        v10 = "Medium";
        break;
      default:
        v10 = "?";
        break;
    }

    NSAppendPrintF_safe(&v174, ", autoANC Strength %s", v10);
    v11 = v174;

    v5 = v11;
  }

  bobbleCapability = self->_bobbleCapability;
  if (self->_bobbleCapability)
  {
    if (bobbleCapability == 1)
    {
      v13 = "Unsupported";
    }

    else
    {
      v13 = "?";
    }

    if (bobbleCapability == 2)
    {
      v14 = "Supported";
    }

    else
    {
      v14 = v13;
    }

    v173 = v5;
    NSAppendPrintF_safe(&v173, ", bbl Cap %s", v14);
    v15 = v173;

    v5 = v15;
  }

  cameraControlCapability = self->_cameraControlCapability;
  if (self->_cameraControlCapability)
  {
    if (cameraControlCapability == 1)
    {
      v17 = "Unsupported";
    }

    else
    {
      v17 = "?";
    }

    if (cameraControlCapability == 2)
    {
      v18 = "Supported";
    }

    else
    {
      v18 = v17;
    }

    v172 = v5;
    NSAppendPrintF_safe(&v172, ", cam ctl Cap %s", v18);
    v19 = v172;

    v5 = v19;
  }

  caseSoundCapability = self->_caseSoundCapability;
  if (self->_caseSoundCapability)
  {
    if (caseSoundCapability == 1)
    {
      v21 = "Unsupported";
    }

    else
    {
      v21 = "?";
    }

    if (caseSoundCapability == 2)
    {
      v22 = "Supported";
    }

    else
    {
      v22 = v21;
    }

    v171 = v5;
    NSAppendPrintF_safe(&v171, ", cas snd Cap %s", v22);
    v23 = v171;

    v5 = v23;
  }

  discoveryFlags = self->_discoveryFlags;
  if (discoveryFlags)
  {
    v170 = v5;
    NSAppendPrintF_safe(&v170, ", dFlags %llu", discoveryFlags);
    v25 = v170;

    v5 = v25;
  }

  dynamicEndOfChargeCapability = self->_dynamicEndOfChargeCapability;
  if (self->_dynamicEndOfChargeCapability)
  {
    if (dynamicEndOfChargeCapability == 1)
    {
      v27 = "Unsupported";
    }

    else
    {
      v27 = "?";
    }

    if (dynamicEndOfChargeCapability == 2)
    {
      v28 = "Supported";
    }

    else
    {
      v28 = v27;
    }

    v169 = v5;
    NSAppendPrintF_safe(&v169, ", deoc Cap %s", v28);
    v29 = v169;

    v5 = v29;
  }

  dynamicEndOfChargeEnabled = self->_dynamicEndOfChargeEnabled;
  if (self->_dynamicEndOfChargeEnabled)
  {
    if (dynamicEndOfChargeEnabled == 1)
    {
      v31 = "Yes";
    }

    else
    {
      v31 = "?";
    }

    if (dynamicEndOfChargeEnabled == 2)
    {
      v32 = "No";
    }

    else
    {
      v32 = v31;
    }

    v168 = v5;
    NSAppendPrintF_safe(&v168, ", deoc En %s", v32);
    v33 = v168;

    v5 = v33;
  }

  earTipFitTestCapability = self->_earTipFitTestCapability;
  if (self->_earTipFitTestCapability)
  {
    if (earTipFitTestCapability == 1)
    {
      v35 = "Unsupported";
    }

    else
    {
      v35 = "?";
    }

    if (earTipFitTestCapability == 2)
    {
      v36 = "Supported";
    }

    else
    {
      v36 = v35;
    }

    v167 = v5;
    NSAppendPrintF_safe(&v167, ", ear fit Cap %s", v36);
    v37 = v167;

    v5 = v37;
  }

  enhancedTransparencyVersion = self->_enhancedTransparencyVersion;
  if (self->_enhancedTransparencyVersion)
  {
    v166 = v5;
    if (enhancedTransparencyVersion > 4)
    {
      v39 = "Unknown";
    }

    else
    {
      v39 = off_1002BB638[enhancedTransparencyVersion - 1];
    }

    NSAppendPrintF_safe(&v166, ", enh trn Ver %s", v39);
    v40 = v166;

    v5 = v40;
  }

  farFieldUplinkCapability = self->_farFieldUplinkCapability;
  if (self->_farFieldUplinkCapability)
  {
    if (farFieldUplinkCapability == 1)
    {
      v42 = "Unsupported";
    }

    else
    {
      v42 = "?";
    }

    if (farFieldUplinkCapability == 2)
    {
      v43 = "Supported";
    }

    else
    {
      v43 = v42;
    }

    v165 = v5;
    NSAppendPrintF_safe(&v165, ", ff upl Cap %s", v43);
    v44 = v165;

    v5 = v44;
  }

  frequencyBand = self->_frequencyBand;
  if (self->_frequencyBand)
  {
    v46 = "2.4";
    if (frequencyBand != 1)
    {
      v46 = "?";
    }

    if (frequencyBand == 2)
    {
      v47 = "5";
    }

    else
    {
      v47 = v46;
    }

    v164 = v5;
    NSAppendPrintF_safe(&v164, ", fqBd %s", v47);
    v48 = v164;

    v5 = v48;
  }

  hearingAidCapability = self->_hearingAidCapability;
  if (self->_hearingAidCapability)
  {
    if (hearingAidCapability == 1)
    {
      v50 = "Disabled";
    }

    else
    {
      v50 = "?";
    }

    if (hearingAidCapability == 2)
    {
      v51 = "Enabled";
    }

    else
    {
      v51 = v50;
    }

    v163 = v5;
    NSAppendPrintF_safe(&v163, ", HA Cap %s", v51);
    v52 = v163;

    v5 = v52;
  }

  hearingAidEnabled = self->_hearingAidEnabled;
  if (self->_hearingAidEnabled)
  {
    if (hearingAidEnabled == 1)
    {
      v54 = "Yes";
    }

    else
    {
      v54 = "?";
    }

    if (hearingAidEnabled == 2)
    {
      v55 = "No";
    }

    else
    {
      v55 = v54;
    }

    v162 = v5;
    NSAppendPrintF_safe(&v162, ", Hr Aid En %s", v55);
    v56 = v162;

    v5 = v56;
  }

  hearingAidEnrolled = self->_hearingAidEnrolled;
  if (self->_hearingAidEnrolled)
  {
    if (hearingAidEnrolled == 1)
    {
      v58 = "Yes";
    }

    else
    {
      v58 = "?";
    }

    if (hearingAidEnrolled == 2)
    {
      v59 = "No";
    }

    else
    {
      v59 = v58;
    }

    v161 = v5;
    NSAppendPrintF_safe(&v161, ", HA Enr %s", v59);
    v60 = v161;

    v5 = v60;
  }

  hearingAidGainSwipeEnabled = self->_hearingAidGainSwipeEnabled;
  if (self->_hearingAidGainSwipeEnabled)
  {
    if (hearingAidGainSwipeEnabled == 1)
    {
      v62 = "Yes";
    }

    else
    {
      v62 = "?";
    }

    if (hearingAidGainSwipeEnabled == 2)
    {
      v63 = "No";
    }

    else
    {
      v63 = v62;
    }

    v160 = v5;
    NSAppendPrintF_safe(&v160, ", HA GS %s", v63);
    v64 = v160;

    v5 = v64;
  }

  hearingAidV2Capability = self->_hearingAidV2Capability;
  if (self->_hearingAidV2Capability)
  {
    if (hearingAidV2Capability == 1)
    {
      v66 = "Unsupported";
    }

    else
    {
      v66 = "?";
    }

    if (hearingAidV2Capability == 2)
    {
      v67 = "Supported";
    }

    else
    {
      v67 = v66;
    }

    v159 = v5;
    NSAppendPrintF_safe(&v159, ", haV2 Cap %s", v67);
    v68 = v159;

    v5 = v68;
  }

  hearingAssistEnabled = self->_hearingAssistEnabled;
  if (self->_hearingAssistEnabled)
  {
    if (hearingAssistEnabled == 1)
    {
      v70 = "Yes";
    }

    else
    {
      v70 = "?";
    }

    if (hearingAssistEnabled == 2)
    {
      v71 = "No";
    }

    else
    {
      v71 = v70;
    }

    v158 = v5;
    NSAppendPrintF_safe(&v158, ", HA Top Level %s", v71);
    v72 = v158;

    v5 = v72;
  }

  hearingProtectionCapability = self->_hearingProtectionCapability;
  if (self->_hearingProtectionCapability)
  {
    if (hearingProtectionCapability == 1)
    {
      v74 = "Unsupported";
    }

    else
    {
      v74 = "?";
    }

    if (hearingProtectionCapability == 2)
    {
      v75 = "Supported";
    }

    else
    {
      v75 = v74;
    }

    v157 = v5;
    NSAppendPrintF_safe(&v157, ", HP Cap %s", v75);
    v76 = v157;

    v5 = v76;
  }

  hearingProtectionPPECapability = self->_hearingProtectionPPECapability;
  if (self->_hearingProtectionPPECapability)
  {
    if (hearingProtectionPPECapability == 1)
    {
      v78 = "Unsupported";
    }

    else
    {
      v78 = "?";
    }

    if (hearingProtectionPPECapability == 2)
    {
      v79 = "Supported";
    }

    else
    {
      v79 = v78;
    }

    v156 = v5;
    NSAppendPrintF_safe(&v156, ", hpPPE Cap %s", v79);
    v80 = v156;

    v5 = v80;
  }

  hearingProtectionPPEEnabled = self->_hearingProtectionPPEEnabled;
  if (self->_hearingProtectionPPEEnabled)
  {
    if (hearingProtectionPPEEnabled == 1)
    {
      v82 = "Yes";
    }

    else
    {
      v82 = "?";
    }

    if (hearingProtectionPPEEnabled == 2)
    {
      v83 = "No";
    }

    else
    {
      v83 = v82;
    }

    v155 = v5;
    NSAppendPrintF_safe(&v155, ", hpPPE En %s", v83);
    v84 = v155;

    v5 = v84;
  }

  hearingTestCapability = self->_hearingTestCapability;
  if (self->_hearingTestCapability)
  {
    if (hearingTestCapability == 1)
    {
      v86 = "Disabled";
    }

    else
    {
      v86 = "?";
    }

    if (hearingTestCapability == 2)
    {
      v87 = "Enabled";
    }

    else
    {
      v87 = v86;
    }

    v154 = v5;
    NSAppendPrintF_safe(&v154, ", HT Cap %s", v87);
    v88 = v154;

    v5 = v88;
  }

  heartRateMonitorCapability = self->_heartRateMonitorCapability;
  if (self->_heartRateMonitorCapability)
  {
    if (heartRateMonitorCapability == 1)
    {
      v90 = "Unsupported";
    }

    else
    {
      v90 = "?";
    }

    if (heartRateMonitorCapability == 2)
    {
      v91 = "Supported";
    }

    else
    {
      v91 = v90;
    }

    v153 = v5;
    NSAppendPrintF_safe(&v153, ", HRM Cap %s", v91);
    v92 = v153;

    v5 = v92;
  }

  heartRateMonitorEnabled = self->_heartRateMonitorEnabled;
  if (self->_heartRateMonitorEnabled)
  {
    if (heartRateMonitorEnabled == 1)
    {
      v94 = "Yes";
    }

    else
    {
      v94 = "?";
    }

    if (heartRateMonitorEnabled == 2)
    {
      v95 = "No";
    }

    else
    {
      v95 = v94;
    }

    v152 = v5;
    NSAppendPrintF_safe(&v152, ", HRM En %s", v95);
    v96 = v152;

    v5 = v96;
  }

  hideEarDetectionCapability = self->_hideEarDetectionCapability;
  if (self->_hideEarDetectionCapability)
  {
    if (hideEarDetectionCapability == 1)
    {
      v98 = "Unsupported";
    }

    else
    {
      v98 = "?";
    }

    if (hideEarDetectionCapability == 2)
    {
      v99 = "Supported";
    }

    else
    {
      v99 = v98;
    }

    v151 = v5;
    NSAppendPrintF_safe(&v151, ", Hide Er Dt Cap %s", v99);
    v100 = v151;

    v5 = v100;
  }

  hideOffListeningModeCapability = self->_hideOffListeningModeCapability;
  if (self->_hideOffListeningModeCapability)
  {
    if (hideOffListeningModeCapability == 1)
    {
      v102 = "Unsupported";
    }

    else
    {
      v102 = "?";
    }

    if (hideOffListeningModeCapability == 2)
    {
      v103 = "Supported";
    }

    else
    {
      v103 = v102;
    }

    v150 = v5;
    NSAppendPrintF_safe(&v150, ", Hide Off Cap %s", v103);
    v104 = v150;

    v5 = v104;
  }

  lastSeenTime = self->_lastSeenTime;
  if (lastSeenTime)
  {
    v149 = v5;
    NSAppendPrintF_safe(&v149, ", last seen %ds", lastSeenTime);
    v106 = v149;

    v5 = v106;
  }

  pmeEverywhereCapability = self->_pmeEverywhereCapability;
  if (self->_pmeEverywhereCapability)
  {
    if (pmeEverywhereCapability == 1)
    {
      v108 = "Unsupported";
    }

    else
    {
      v108 = "?";
    }

    if (pmeEverywhereCapability == 2)
    {
      v109 = "Supported";
    }

    else
    {
      v109 = v108;
    }

    v148 = v5;
    NSAppendPrintF_safe(&v148, ", pmee Cap %s", v109);
    v110 = v148;

    v5 = v110;
  }

  ovadStreamingCapability = self->_ovadStreamingCapability;
  if (self->_ovadStreamingCapability)
  {
    if (ovadStreamingCapability == 1)
    {
      v112 = "Unsupported";
    }

    else
    {
      v112 = "?";
    }

    if (ovadStreamingCapability == 2)
    {
      v113 = "Supported";
    }

    else
    {
      v113 = v112;
    }

    v147 = v5;
    NSAppendPrintF_safe(&v147, ", ovd str Cap %s", v113);
    v114 = v147;

    v5 = v114;
  }

  if (self->_rawGesturesConfigFlags)
  {
    v146 = v5;
    v115 = CUPrintFlags32();
    NSAppendPrintF_safe(&v146, ", rgCg %@", v115);
    v116 = v146;

    v5 = v116;
  }

  siriMultitoneCapability = self->_siriMultitoneCapability;
  if (self->_siriMultitoneCapability)
  {
    if (siriMultitoneCapability == 1)
    {
      v118 = "Unsupported";
    }

    else
    {
      v118 = "?";
    }

    if (siriMultitoneCapability == 2)
    {
      v119 = "Supported";
    }

    else
    {
      v119 = v118;
    }

    v145 = v5;
    NSAppendPrintF_safe(&v145, ", srMt Cap %s", v119);
    v120 = v145;

    v5 = v120;
  }

  sleepDetectionCapability = self->_sleepDetectionCapability;
  if (self->_sleepDetectionCapability)
  {
    if (sleepDetectionCapability == 1)
    {
      v122 = "Unsupported";
    }

    else
    {
      v122 = "?";
    }

    if (sleepDetectionCapability == 2)
    {
      v123 = "Supported";
    }

    else
    {
      v123 = v122;
    }

    v144 = v5;
    NSAppendPrintF_safe(&v144, ", sldt Cap %s", v123);
    v124 = v144;

    v5 = v124;
  }

  sleepDetectionEnabled = self->_sleepDetectionEnabled;
  if (self->_sleepDetectionEnabled)
  {
    if (sleepDetectionEnabled == 1)
    {
      v126 = "Yes";
    }

    else
    {
      v126 = "?";
    }

    if (sleepDetectionEnabled == 2)
    {
      v127 = "No";
    }

    else
    {
      v127 = v126;
    }

    v143 = v5;
    NSAppendPrintF_safe(&v143, ", sldt Tg %s", v127);
    v128 = v143;

    v5 = v128;
  }

  streamStateAoS = self->_streamStateAoS;
  if (self->_streamStateAoS)
  {
    v142 = v5;
    if (streamStateAoS > 3)
    {
      v130 = "?";
    }

    else
    {
      v130 = off_1002BB658[streamStateAoS - 1];
    }

    NSAppendPrintF_safe(&v142, ", stAoS %s", v130);
    v131 = v142;

    v5 = v131;
  }

  temporaryManagedPairedStatus = self->_temporaryManagedPairedStatus;
  if (self->_temporaryManagedPairedStatus)
  {
    if (temporaryManagedPairedStatus == 1)
    {
      v133 = "Yes";
    }

    else
    {
      v133 = "?";
    }

    if (temporaryManagedPairedStatus == 2)
    {
      v134 = "No";
    }

    else
    {
      v134 = v133;
    }

    v141 = v5;
    NSAppendPrintF_safe(&v141, ", Temp Mg Paired %s", v134);
    v135 = v141;

    v5 = v135;
  }

  if (levelCopy < 0x15u)
  {
    v140 = v5;
    NSAppendPrintF_safe(&v140, "\n");
    v136 = v140;

    v5 = v136;
  }

  v137 = v5;

  return v5;
}

- (AudioAccessoryDeviceInfo)initWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  v133.receiver = self;
  v133.super_class = AudioAccessoryDeviceInfo;
  v7 = [(AudioAccessoryDeviceInfo *)&v133 init];

  if (!v7)
  {
    if (!error)
    {
      goto LABEL_119;
    }

    NSErrorF(NSOSStatusErrorDomain, 4294960540, "AADeviceInfo super init failed");
LABEL_118:
    *error = v131 = 0;
    goto LABEL_113;
  }

  if (xpc_get_type(objectCopy) != &_xpc_type_dictionary)
  {
    if (!error)
    {
      goto LABEL_119;
    }

    NSErrorF(NSOSStatusErrorDomain, 4294960540, "XPC non-dict");
    goto LABEL_118;
  }

  v134 = 0;
  sub_1000DACDC();
  v8 = CUXPCDecodeUInt64RangedEx();
  if (v8 == 6)
  {
    v7->_autoANCCapability = v134;
  }

  else if (v8 == 5)
  {
    goto LABEL_119;
  }

  v134 = 0;
  sub_1000DACDC();
  v9 = CUXPCDecodeUInt64RangedEx();
  if (v9 == 6)
  {
    v7->_autoANCStrength = v134;
  }

  else if (v9 == 5)
  {
    goto LABEL_119;
  }

  v134 = 0;
  v13 = sub_1000DACB8(v9, "bbCp", v10, v11, v12);
  if (v13 == 6)
  {
    v7->_bobbleCapability = v134;
  }

  else if (v13 == 5)
  {
    goto LABEL_119;
  }

  v134 = 0;
  v17 = sub_1000DACB8(v13, "ccCp", v14, v15, v16);
  if (v17 == 6)
  {
    v7->_cameraControlCapability = v134;
  }

  else if (v17 == 5)
  {
    goto LABEL_119;
  }

  v134 = 0;
  v21 = sub_1000DACB8(v17, "caCp", v18, v19, v20);
  if (v21 == 6)
  {
    v7->_caseSoundCapability = v134;
  }

  else if (v21 == 5)
  {
    goto LABEL_119;
  }

  v134 = 0;
  sub_1000DACDC();
  v22 = CUXPCDecodeUInt64RangedEx();
  if (v22 == 6)
  {
    v7->_discoveryFlags = v134;
  }

  else if (v22 == 5)
  {
    goto LABEL_119;
  }

  v134 = 0;
  v26 = sub_1000DACB8(v22, "deoc", v23, v24, v25);
  if (v26 == 6)
  {
    v7->_dynamicEndOfChargeCapability = v134;
  }

  else if (v26 == 5)
  {
    goto LABEL_119;
  }

  v134 = 0;
  v27 = CUXPCDecodeSInt64RangedEx();
  if (v27 == 6)
  {
    v7->_dynamicEndOfChargeEnabled = v134;
  }

  else if (v27 == 5)
  {
    goto LABEL_119;
  }

  v134 = 0;
  v31 = sub_1000DACB8(v27, "erFt", v28, v29, v30);
  if (v31 == 6)
  {
    v7->_earTipFitTestCapability = v134;
  }

  else if (v31 == 5)
  {
    goto LABEL_119;
  }

  v134 = 0;
  v35 = sub_1000DACB8(v31, "enTv", v32, v33, v34);
  if (v35 == 6)
  {
    v7->_enhancedTransparencyVersion = v134;
  }

  else if (v35 == 5)
  {
    goto LABEL_119;
  }

  v134 = 0;
  v39 = sub_1000DACB8(v35, "fuCp", v36, v37, v38);
  if (v39 == 6)
  {
    v7->_farFieldUplinkCapability = v134;
  }

  else if (v39 == 5)
  {
    goto LABEL_119;
  }

  v134 = 0;
  v43 = sub_1000DACB8(v39, "fqBd", v40, v41, v42);
  if (v43 == 6)
  {
    v7->_frequencyBand = v134;
  }

  else if (v43 == 5)
  {
    goto LABEL_119;
  }

  v134 = 0;
  v47 = sub_1000DACB8(v43, "osCp", v44, v45, v46);
  if (v47 == 6)
  {
    v7->_ovadStreamingCapability = v134;
  }

  else if (v47 == 5)
  {
    goto LABEL_119;
  }

  v134 = 0;
  v51 = sub_1000DACB8(v47, "haCp", v48, v49, v50);
  if (v51 == 6)
  {
    v7->_hearingAidCapability = v134;
  }

  else if (v51 == 5)
  {
    goto LABEL_119;
  }

  v134 = 0;
  v55 = sub_1000DACB8(v51, "haCg", v52, v53, v54);
  if (v55 == 6)
  {
    v7->_hearingAidEnabled = v134;
  }

  else if (v55 == 5)
  {
    goto LABEL_119;
  }

  v134 = 0;
  v59 = sub_1000DACB8(v55, "haEn", v56, v57, v58);
  if (v59 == 6)
  {
    v7->_hearingAidEnrolled = v134;
  }

  else if (v59 == 5)
  {
    goto LABEL_119;
  }

  v134 = 0;
  v63 = sub_1000DACB8(v59, "haGS", v60, v61, v62);
  if (v63 == 6)
  {
    v7->_hearingAidGainSwipeEnabled = v134;
  }

  else if (v63 == 5)
  {
    goto LABEL_119;
  }

  v134 = 0;
  v67 = sub_1000DACB8(v63, "haV2", v64, v65, v66);
  if (v67 == 6)
  {
    v7->_hearingAidV2Capability = v134;
  }

  else if (v67 == 5)
  {
    goto LABEL_119;
  }

  v134 = 0;
  v71 = sub_1000DACB8(v67, "hrEn", v68, v69, v70);
  if (v71 == 6)
  {
    v7->_hearingAssistEnabled = v134;
  }

  else if (v71 == 5)
  {
    goto LABEL_119;
  }

  v134 = 0;
  v75 = sub_1000DACB8(v71, "hpCp", v72, v73, v74);
  if (v75 == 6)
  {
    v7->_hearingProtectionCapability = v134;
  }

  else if (v75 == 5)
  {
    goto LABEL_119;
  }

  v134 = 0;
  v79 = sub_1000DACB8(v75, "ppeC", v76, v77, v78);
  if (v79 == 6)
  {
    v7->_hearingProtectionPPECapability = v134;
  }

  else if (v79 == 5)
  {
    goto LABEL_119;
  }

  v134 = 0;
  sub_1000DACDC();
  v80 = CUXPCDecodeUInt64RangedEx();
  if (v80 == 6)
  {
    v7->_hearingProtectionPPECapabilityLevel = v134;
  }

  else if (v80 == 5)
  {
    goto LABEL_119;
  }

  v134 = 0;
  v84 = sub_1000DACB8(v80, "ppeE", v81, v82, v83);
  if (v84 == 6)
  {
    v7->_hearingProtectionPPEEnabled = v134;
  }

  else if (v84 == 5)
  {
    goto LABEL_119;
  }

  v134 = 0;
  v88 = sub_1000DACB8(v84, "htcp", v85, v86, v87);
  if (v88 == 6)
  {
    v7->_hearingTestCapability = v134;
  }

  else if (v88 == 5)
  {
    goto LABEL_119;
  }

  v134 = 0;
  v92 = sub_1000DACB8(v88, "hrCp", v89, v90, v91);
  if (v92 == 6)
  {
    v7->_heartRateMonitorCapability = v134;
  }

  else if (v92 == 5)
  {
    goto LABEL_119;
  }

  v134 = 0;
  v96 = sub_1000DACB8(v92, "hrmt", v93, v94, v95);
  if (v96 == 6)
  {
    v7->_heartRateMonitorEnabled = v134;
  }

  else if (v96 == 5)
  {
    goto LABEL_119;
  }

  v134 = 0;
  v100 = sub_1000DACB8(v96, "hiED", v97, v98, v99);
  if (v100 == 6)
  {
    v7->_hideEarDetectionCapability = v134;
  }

  else if (v100 == 5)
  {
    goto LABEL_119;
  }

  v134 = 0;
  v104 = sub_1000DACB8(v100, "hoCp", v101, v102, v103);
  if (v104 == 6)
  {
    v7->_hideOffListeningModeCapability = v134;
  }

  else if (v104 == 5)
  {
    goto LABEL_119;
  }

  if (!CUXPCDecodeNSString())
  {
    goto LABEL_119;
  }

  v134 = 0;
  v105 = CUXPCDecodeSInt64RangedEx();
  if (v105 == 6)
  {
    v7->_lastSeenTime = v134;
  }

  else if (v105 == 5)
  {
    goto LABEL_119;
  }

  v134 = 0;
  v109 = sub_1000DACB8(v105, "pmee", v106, v107, v108);
  if (v109 == 6)
  {
    v7->_pmeEverywhereCapability = v134;
  }

  else if (v109 == 5)
  {
    goto LABEL_119;
  }

  v134 = 0;
  sub_1000DACDC();
  v110 = CUXPCDecodeUInt64RangedEx();
  if (v110 == 6)
  {
    v7->_rawGesturesConfigFlags = v134;
  }

  else if (v110 == 5)
  {
    goto LABEL_119;
  }

  v134 = 0;
  v114 = sub_1000DACB8(v110, "smcp", v111, v112, v113);
  if (v114 == 6)
  {
    v7->_siriMultitoneCapability = v134;
  }

  else if (v114 == 5)
  {
    goto LABEL_119;
  }

  v134 = 0;
  v118 = sub_1000DACB8(v114, "sdcp", v115, v116, v117);
  if (v118 == 6)
  {
    v7->_sleepDetectionCapability = v134;
  }

  else if (v118 == 5)
  {
    goto LABEL_119;
  }

  v134 = 0;
  v122 = sub_1000DACB8(v118, "esld", v119, v120, v121);
  if (v122 == 6)
  {
    v7->_sleepDetectionEnabled = v134;
  }

  else if (v122 == 5)
  {
    goto LABEL_119;
  }

  v134 = 0;
  v126 = sub_1000DACB8(v122, "tmpM", v123, v124, v125);
  if (v126 == 6)
  {
    v7->_temporaryManagedPairedStatus = v134;
  }

  else if (v126 == 5)
  {
    goto LABEL_119;
  }

  v134 = 0;
  v130 = sub_1000DACB8(v126, "aoST", v127, v128, v129);
  if (v130 != 6)
  {
    if (v130 != 5)
    {
      goto LABEL_112;
    }

LABEL_119:
    v131 = 0;
    goto LABEL_113;
  }

  v7->_streamStateAoS = v134;
LABEL_112:
  v131 = v7;
LABEL_113:

  return v131;
}

@end