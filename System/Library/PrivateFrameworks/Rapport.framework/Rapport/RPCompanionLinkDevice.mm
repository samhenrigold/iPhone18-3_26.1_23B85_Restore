@interface RPCompanionLinkDevice
- (BOOL)isEqualToDevice:(id)device;
- (BOOL)isEqualToDeviceBasic:(id)basic;
- (NSString)effectiveIdentifier;
- (NSString)fileTransferTargetID;
- (RPCompanionLinkDevice)init;
- (RPCompanionLinkDevice)initWithCoder:(id)coder;
- (id)descriptionWithLevel:(int)level;
- (unsigned)updateWithBonjourDevice:(id)device;
- (unsigned)updateWithSFDevice:(id)device;
- (void)encodeWithCoder:(id)coder;
- (void)setFileTransferTargetID:(id)d;
@end

@implementation RPCompanionLinkDevice

- (RPCompanionLinkDevice)init
{
  v4.receiver = self;
  v4.super_class = RPCompanionLinkDevice;
  v2 = [(RPCompanionLinkDevice *)&v4 init];
  if (v2 && GestaltGetDeviceClass() != 6)
  {
    v2->_standaloneWatch = -1;
  }

  return v2;
}

- (NSString)effectiveIdentifier
{
  identifier = self->super._identifier;
  if (!identifier)
  {
    identifier = self->_publicIdentifier;
    if (!identifier)
    {
      identifier = &stru_1F2ED6FB8;
    }
  }

  return identifier;
}

- (RPCompanionLinkDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = RPCompanionLinkDevice;
  v5 = [(RPEndpoint *)&v21 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = coderCopy;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v22 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_deviceCapabilityFlags = v22;
    }

    v7 = v6;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v8 = v7;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v22 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_deviceFlags = v22;
    }

    v22 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_flags = v22;
    }

    v9 = v8;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v10 = v9;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v11 = v10;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v22 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_listeningPort = v22;
    }

    v22 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_mediaAccessControlSetting = v22;
    }

    v12 = v11;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v13 = v12;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v22 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_mediaSystemRole = v22;
    }

    v22 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_mediaSystemState = v22;
    }

    v14 = v13;
    if ([v14 containsValueForKey:@"pers"])
    {
      v5->_personal = [v14 decodeBoolForKey:@"pers"];
    }

    v22 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_personalDeviceState = v22;
    }

    v22 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_personalRequestsState = v22;
    }

    v15 = v14;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v16 = v15;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v17 = v16;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v18 = v17;
    objc_opt_class();
    NSDecodeStandardContainerIfPresent();

    v22 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_standaloneWatch = v22;
    }

    v19 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = RPCompanionLinkDevice;
  [(RPEndpoint *)&v25 encodeWithCoder:coderCopy];
  activeUserAltDSID = self->_activeUserAltDSID;
  if (activeUserAltDSID)
  {
    [coderCopy encodeObject:activeUserAltDSID forKey:@"altDSID"];
  }

  deviceCapabilityFlags = self->_deviceCapabilityFlags;
  if (deviceCapabilityFlags)
  {
    [coderCopy encodeInt64:deviceCapabilityFlags forKey:@"dCapF"];
  }

  deviceColor = self->_deviceColor;
  if (deviceColor)
  {
    [coderCopy encodeObject:deviceColor forKey:@"dCl"];
  }

  if (self->_deviceFlags)
  {
    [coderCopy encodeInteger:? forKey:?];
  }

  fileTransferTargetID = self->_fileTransferTargetID;
  if (fileTransferTargetID)
  {
    [coderCopy encodeObject:fileTransferTargetID forKey:@"dFtTID"];
  }

  flags = self->_flags;
  if (flags)
  {
    [coderCopy encodeInt64:flags forKey:@"flags"];
  }

  homeKitIdentifier = self->_homeKitIdentifier;
  if (homeKitIdentifier)
  {
    [coderCopy encodeObject:homeKitIdentifier forKey:@"hkID"];
  }

  idsCorrelationIdentifier = self->super._idsCorrelationIdentifier;
  if (idsCorrelationIdentifier)
  {
    [coderCopy encodeObject:idsCorrelationIdentifier forKey:@"idsCID"];
  }

  idsPersonalDeviceIdentifier = self->_idsPersonalDeviceIdentifier;
  if (idsPersonalDeviceIdentifier)
  {
    [coderCopy encodeObject:idsPersonalDeviceIdentifier forKey:@"idsP"];
  }

  listeningPort = self->_listeningPort;
  if (listeningPort)
  {
    [coderCopy encodeInteger:listeningPort forKey:@"lP"];
  }

  mediaAccessControlSetting = self->_mediaAccessControlSetting;
  if (mediaAccessControlSetting)
  {
    [coderCopy encodeInteger:mediaAccessControlSetting forKey:@"MAc"];
  }

  mediaSystemIdentifier = self->_mediaSystemIdentifier;
  if (mediaSystemIdentifier)
  {
    [coderCopy encodeObject:mediaSystemIdentifier forKey:@"MSi"];
  }

  mediaSystemName = self->_mediaSystemName;
  if (mediaSystemName)
  {
    [coderCopy encodeObject:mediaSystemName forKey:@"MSn"];
  }

  mediaSystemRole = self->_mediaSystemRole;
  if (mediaSystemRole)
  {
    [coderCopy encodeInteger:mediaSystemRole forKey:@"MSr"];
  }

  mediaSystemState = self->_mediaSystemState;
  if (mediaSystemState)
  {
    [coderCopy encodeInteger:mediaSystemState forKey:@"MSs"];
  }

  if (self->_personal)
  {
    [coderCopy encodeBool:1 forKey:@"pers"];
  }

  personalDeviceState = self->_personalDeviceState;
  if (personalDeviceState)
  {
    [coderCopy encodeInteger:personalDeviceState forKey:@"pds"];
  }

  personalRequestsState = self->_personalRequestsState;
  if (personalRequestsState)
  {
    [coderCopy encodeInteger:personalRequestsState forKey:@"prs"];
  }

  publicIdentifier = self->_publicIdentifier;
  if (publicIdentifier)
  {
    [coderCopy encodeObject:publicIdentifier forKey:@"pubID"];
  }

  role = self->_role;
  if (role)
  {
    [coderCopy encodeObject:role forKey:@"role"];
  }

  roomName = self->_roomName;
  if (roomName)
  {
    [coderCopy encodeObject:roomName forKey:@"rn"];
  }

  siriInfo = self->_siriInfo;
  if (siriInfo)
  {
    [coderCopy encodeObject:siriInfo forKey:@"siriInfo"];
  }

  if (self->_standaloneWatch)
  {
    [coderCopy encodeInteger:? forKey:?];
  }
}

- (id)descriptionWithLevel:(int)level
{
  v175[3] = *MEMORY[0x1E69E9840];
  if (level <= 49)
  {
    v5 = 100;
  }

  else
  {
    v5 = 8;
  }

  v6 = shouldPrintSensitiveData(self, a2);
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 8;
  }

  v8 = self->super._identifier;
  v9 = self->super._idsDeviceIdentifier;
  if ([(NSString *)v9 isEqual:v8])
  {

    v8 = 0;
  }

  v10 = self->_publicIdentifier;
  if ([(NSString *)v10 isEqual:v8])
  {

    v8 = 0;
    goto LABEL_16;
  }

  if (!v8)
  {
LABEL_16:
    v14 = 0;
    if (!v9)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  v174 = 0;
  v11 = formatSensitiveData("%sID ", v6);
  v12 = [0 length];
  v13 = ", ";
  if (!v12)
  {
    v13 = "";
  }

  NSAppendPrintF(&v174, v11, v13, v8);
  v14 = v174;
  if (v9)
  {
LABEL_17:
    v173 = v14;
    v15 = formatSensitiveData("%sIDS ", v6);
    v16 = [v14 length];
    v17 = ", ";
    if (!v16)
    {
      v17 = "";
    }

    NSAppendPrintF(&v173, v15, v17, v9);
    v18 = v173;

    v14 = v18;
  }

LABEL_20:
  if (v10)
  {
    v172 = v14;
    v19 = formatSensitiveData("%sPI ", v6);
    v20 = [v14 length];
    v21 = ", ";
    if (!v20)
    {
      v21 = "";
    }

    NSAppendPrintF(&v172, v19, v21, v10);
    v22 = v172;

    v14 = v22;
  }

  v130 = v7;
  v23 = self->super._name;
  if (v23)
  {
    v171 = v14;
    v24 = formatSensitiveData(", Nm ", v6);
    NSAppendPrintF(&v171, v24, v23);
    v25 = v171;

    v14 = v25;
  }

  v26 = self->super._model;
  if (v26)
  {
    v170 = v14;
    v27 = formatSensitiveData(", Md ", v6);
    NSAppendPrintF(&v170, v27, v26);
    v28 = v170;

    v14 = v28;
  }

  v169.receiver = self;
  v169.super_class = RPCompanionLinkDevice;
  activityLevel = [(RPEndpoint *)&v169 activityLevel];
  if (activityLevel)
  {
    v168 = v14;
    if (activityLevel > 0xE)
    {
      v30 = "?";
    }

    else
    {
      v30 = off_1E7C93870[activityLevel - 1];
    }

    NSAppendPrintF(&v168, ", AcLv = %s (%d)", v30, activityLevel);
    v31 = v168;

    v14 = v31;
  }

  if (level <= 20)
  {
    v32 = self->super._accountID;
    if (v32)
    {
      v167 = v14;
      v33 = formatSensitiveData(", AID ", v6);
      NSAppendPrintF(&v167, v33, v32);
      v34 = v167;

      v14 = v34;
    }

    v35 = self->super._idsCorrelationIdentifier;
    if (v35)
    {
      v166 = v14;
      v36 = formatSensitiveData(", CID ", v6);
      NSAppendPrintF(&v166, v36, v35);
      v37 = v166;

      v14 = v37;
    }

    v38 = self->_deviceColor;
    if (v38)
    {
      v165 = v14;
      v39 = formatSensitiveData(", Cl ", v6);
      NSAppendPrintF(&v165, v39, v38);
      v40 = v165;

      v14 = v40;
    }

    v41 = self->_roomName;
    if (v41)
    {
      v164 = v14;
      v42 = formatSensitiveData(", Rm ", v6);
      NSAppendPrintF(&v164, v42, v41);
      v43 = v164;

      v14 = v43;
    }

    v44 = self->_homeKitIdentifier;
    if (v44)
    {
      v163 = v14;
      v45 = formatSensitiveData(", HKI ", v6);
      NSAppendPrintF(&v163, v45, v44);
      v46 = v163;

      v14 = v46;
    }

    hotspotInfo = self->super._hotspotInfo;
    if (hotspotInfo)
    {
      v162 = v14;
      NSAppendPrintF(&v162, ", HSI 0x%X", hotspotInfo);
      v48 = v162;

      v14 = v48;
    }

    v49 = self->_idsPersonalDeviceIdentifier;
    if (v49)
    {
      v161 = v14;
      v50 = formatSensitiveData(", IDP ", v6);
      NSAppendPrintF(&v161, v50, v49);
      v51 = v161;

      v14 = v51;
    }

    deviceCapabilityFlags = self->_deviceCapabilityFlags;
    if (deviceCapabilityFlags)
    {
      v160 = v14;
      NSAppendPrintF(&v160, ", dCapF %#{flags}", deviceCapabilityFlags, &unk_1B6F2D60D);
      v53 = v160;

      v14 = v53;
    }
  }

  v54 = self->_activeUserAltDSID;
  if (v54)
  {
    v159 = v14;
    v55 = formatSensitiveData(", ADSID ", v6);
    NSAppendPrintF(&v159, v55, v54);
    v56 = v159;

    v14 = v56;
  }

  v57 = self->super._sourceVersion;
  if (v57)
  {
    v158 = v14;
    v58 = formatSensitiveData(", SV ", v6);
    NSAppendPrintF(&v158, v58, v57);
    v59 = v158;

    v14 = v59;
  }

  v60 = v130;

  v157.receiver = self;
  v157.super_class = RPCompanionLinkDevice;
  [(RPEndpoint *)&v157 operatingSystemVersion];
  if (v156[1])
  {
    v156[0] = v14;
    v61 = formatSensitiveData(", OSV ", v6);
    v155.receiver = self;
    v155.super_class = RPCompanionLinkDevice;
    [(RPEndpoint *)&v155 operatingSystemVersion];
    v62 = RPNSOperatingSystemVersionToString(v175);
    NSAppendPrintF(v156, v61, v62);
    v63 = v156[0];

    v14 = v63;
  }

  linkType = self->super._linkType;
  if (linkType)
  {
    v154 = v14;
    if (linkType > 0xB)
    {
      v65 = "?";
    }

    else
    {
      v65 = off_1E7C938E0[linkType - 1];
    }

    NSAppendPrintF(&v154, ", LT %s", v65);
    v66 = v154;

    v14 = v66;
  }

  if (self->_uiTriggered)
  {
    v153 = v14;
    NSAppendPrintF(&v153, ", UI Triggered");
    v67 = v153;

    v14 = v67;
  }

  statusFlags = self->super._statusFlags;
  if (statusFlags)
  {
    v152 = v14;
    NSAppendPrintF(&v152, ", SF %#ll{flags}", statusFlags, &unk_1B6F2D62D);
    v69 = v152;

    v14 = v69;
  }

  deviceFlags = self->_deviceFlags;
  if (self->_deviceFlags)
  {
    v151 = v14;
    NSAppendPrintF(&v151, ", DFl %#{flags}", deviceFlags, &unk_1B6F2D7FC);
    v71 = v151;

    v14 = v71;
  }

  if (level <= 20)
  {
    v72 = self->super._hotspotInfo;
    if (v72)
    {
      v150 = v14;
      NSAppendPrintF(&v150, ", HSI 0x%X", v72);
      v73 = v150;

      v14 = v73;
    }

    listeningPort = self->_listeningPort;
    if (listeningPort)
    {
      v149 = v14;
      NSAppendPrintF(&v149, ", LP '%d'", listeningPort);
      v75 = v149;

      v14 = v75;
    }

    v76 = self->_launchInstanceID;
    v77 = v76;
    if (v76)
    {
      v148 = v14;
      uUIDString = [(NSUUID *)v76 UUIDString];
      NSAppendPrintF(&v148, ", LID '%@'", uUIDString);
      v79 = v148;

      v14 = v79;
    }

    mediaAccessControlSetting = self->_mediaAccessControlSetting;
    if (mediaAccessControlSetting)
    {
      v147 = v14;
      if (mediaAccessControlSetting > 3)
      {
        v81 = "?";
      }

      else
      {
        v81 = off_1E7C93938[mediaAccessControlSetting - 1];
      }

      NSAppendPrintF(&v147, ", MAc %s", v81);
      v82 = v147;

      v14 = v82;
    }

    v83 = self->super._mediaRemoteIdentifier;
    v84 = v83;
    if (v83)
    {
      v146 = v14;
      NSAppendPrintF(&v146, ", MRI '%.*@'", v130, v83);
      v85 = v146;

      v14 = v85;
    }

    v86 = self->super._mediaRouteIdentifier;
    v87 = v86;
    if (v86)
    {
      v145 = v14;
      NSAppendPrintF(&v145, ", MRtI '%.*@'", v130, v86);
      v88 = v145;

      v14 = v88;
    }

    v89 = self->super._sessionPairingIdentifier;
    v90 = v89;
    if (v89)
    {
      v144 = v14;
      NSAppendPrintF(&v144, ", spID '%.*@'", v130, v89);
      v91 = v144;

      v14 = v91;
    }

    mediaSystemIdentifier = self->_mediaSystemIdentifier;
    if (mediaSystemIdentifier)
    {
      v143 = v14;
      NSAppendPrintF(&v143, ", MSi '%.*@'", v130, mediaSystemIdentifier);
      v93 = v143;

      if (self->_daemon)
      {
        v94 = [(NSUUID *)self->_mediaSystemIdentifierEffective isEqual:self->_mediaSystemIdentifier];
        v142 = v93;
        if (v94)
        {
          mediaSystemIdentifierEffective = @"=";
        }

        else
        {
          mediaSystemIdentifierEffective = self->_mediaSystemIdentifierEffective;
        }

        NSAppendPrintF(&v142, " (%.*@)", v130, mediaSystemIdentifierEffective);
        v14 = v142;
      }

      else
      {
        v14 = v93;
      }
    }

    mediaSystemName = self->_mediaSystemName;
    if (mediaSystemName)
    {
      v141 = v14;
      NSAppendPrintF(&v141, ", MSn '%@'", mediaSystemName);
      v97 = v141;

      v14 = v97;
    }

    mediaSystemRole = self->_mediaSystemRole;
    if (mediaSystemRole)
    {
      v140 = v14;
      if (mediaSystemRole > 3)
      {
        v99 = "?";
      }

      else
      {
        v99 = off_1E7C93950[mediaSystemRole - 1];
      }

      NSAppendPrintF(&v140, ", MSr %s", v99);
      v100 = v140;

      if (self->_daemon)
      {
        v139 = v100;
        mediaSystemRoleEffective = self->_mediaSystemRoleEffective;
        if (mediaSystemRoleEffective > 3)
        {
          v102 = "?";
        }

        else
        {
          v102 = off_1E7C93968[mediaSystemRoleEffective];
        }

        NSAppendPrintF(&v139, " (%s)", v102);
        v14 = v139;
      }

      else
      {
        v14 = v100;
      }
    }

    mediaSystemState = self->_mediaSystemState;
    v104 = mediaSystemState >= 2;
    v105 = mediaSystemState - 2;
    if (v104)
    {
      v138 = v14;
      if (v105 > 2)
      {
        v106 = "?";
      }

      else
      {
        v106 = off_1E7C93988[v105];
      }

      NSAppendPrintF(&v138, ", MSs %s", v106);
      v107 = v138;

      v14 = v107;
    }

    if ((self->_flags & 0x40) != 0)
    {
      personalDeviceState = self->_personalDeviceState;
      v137 = v14;
      if (personalDeviceState >= 8)
      {
        if (personalDeviceState <= 9)
        {
          v109 = "-";
        }

        else
        {
          v109 = "U";
        }
      }

      else
      {
        v109 = off_1E7C939A0[personalDeviceState];
      }

      NSAppendPrintF(&v137, ", PDS %s", v109);
      v110 = v137;

      v136 = v110;
      personalRequestsState = self->_personalRequestsState;
      if (personalRequestsState >= 8)
      {
        if (personalRequestsState <= 9)
        {
          v112 = "-";
        }

        else
        {
          v112 = "U";
        }
      }

      else
      {
        v112 = off_1E7C939A0[personalRequestsState];
      }

      v60 = v130;
      NSAppendPrintF(&v136, ", PRS %s", v112);
      v14 = v136;
    }

    v113 = self->_siriInfo;
    v114 = v113;
    if (v113)
    {
      v135 = v14;
      NSAppendPrintF(&v135, ", SiriInfo %d item(s)", [(NSDictionary *)v113 count]);
      v115 = v135;

      v14 = v115;
    }

    v116 = v14;

    v134 = v14;
    v117 = RPCompanionLinkFlagsToShortString(self->_flags, v175);
    NSAppendPrintF(&v134, ", <%s>", v117);
    v14 = v134;

    v118 = self->super._serviceTypes;
    v119 = v118;
    if (v118)
    {
      v133 = v14;
      NSAppendPrintF(&v133, ", STA %##@", v118);
      v120 = v133;

      v14 = v120;
    }

    v121 = self->_activeUserAltDSID;
    v122 = v121;
    if (v121)
    {
      v132 = v14;
      NSAppendPrintF(&v132, ", ADSID '%.*@'", v60, v121);
      v123 = v132;

      v14 = v123;
    }

    if ((self->_standaloneWatch & 0x80000000) == 0)
    {
      standaloneWatch = self->_standaloneWatch;
      v125 = "?";
      v131 = v14;
      if (!standaloneWatch)
      {
        v125 = "Paired";
      }

      if (standaloneWatch == 1)
      {
        v126 = "Standalone";
      }

      else
      {
        v126 = v125;
      }

      NSAppendPrintF(&v131, ", SaW %s", v126);
      v127 = v131;

      v14 = v127;
    }
  }

  v128 = v14;

  return v128;
}

- (NSString)fileTransferTargetID
{
  v3 = self->_fileTransferTargetID;
  if (!v3)
  {
    v3 = self->super._idsDeviceIdentifier;
  }

  return v3;
}

- (void)setFileTransferTargetID:(id)d
{
  v4 = [d copy];
  fileTransferTargetID = self->_fileTransferTargetID;
  self->_fileTransferTargetID = v4;
}

- (unsigned)updateWithBonjourDevice:(id)device
{
  v19.receiver = self;
  v19.super_class = RPCompanionLinkDevice;
  deviceCopy = device;
  v5 = [(RPEndpoint *)&v19 updateWithBonjourDevice:deviceCopy];
  txtDictionary = [deviceCopy txtDictionary];

  Int64 = CFDictionaryGetInt64();
  flags = self->_flags;
  RPCompanionLinkFlagsWithUpdateBonjourFlags(&flags, Int64);
  if (flags != self->_flags)
  {
    self->_flags = flags;
    v5 |= 2u;
  }

  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  v9 = v8;
  if (v8)
  {
    publicIdentifier = self->_publicIdentifier;
    v11 = v8;
    v12 = publicIdentifier;
    v13 = v12;
    if (v11 == v12)
    {

      goto LABEL_11;
    }

    if (v12)
    {
      v14 = [(NSString *)v11 isEqual:v12];

      if (v14)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_publicIdentifier, v9);
    v5 |= 2u;
  }

LABEL_11:
  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (self->_mediaAccessControlSetting != Int64Ranged)
  {
    self->_mediaAccessControlSetting = Int64Ranged;
    v5 |= 2u;
  }

  CFStringGetTypeID();
  v16 = CFDictionaryGetTypedValue();
  if (v16)
  {
    objc_storeStrong(&self->super._mediaRouteIdentifier, v16);
    v5 |= 2u;
  }

  return v5;
}

- (unsigned)updateWithSFDevice:(id)device
{
  v9.receiver = self;
  v9.super_class = RPCompanionLinkDevice;
  v4 = [(RPEndpoint *)&v9 updateWithSFDevice:device];
  flags = self->_flags;
  v6 = self->super._model;
  if ([(NSString *)v6 hasPrefix:@"AudioAccessory1, "]|| [(NSString *)v6 hasPrefix:@"AudioAccessory5, "]|| [(NSString *)v6 hasPrefix:@"AudioAccessory6, "]|| [(NSString *)v6 hasPrefix:@"HomePod"])
  {

    v7 = flags | 2;
  }

  else
  {

    v7 = flags;
  }

  if ((self->super._statusFlags & 0x10000) != 0)
  {
    v7 |= 0x1D00u;
  }

  if (v7 != flags)
  {
    self->_flags = v7;
    v4 |= 2u;
  }

  return v4;
}

- (BOOL)isEqualToDevice:(id)device
{
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  if (identifier)
  {
    v6 = identifier;
    identifier2 = [deviceCopy identifier];
    v36.receiver = self;
    v36.super_class = RPCompanionLinkDevice;
    v8 = [(RPEndpoint *)&v36 compareWithDeviceIdentifier:identifier2];

    if (v8)
    {
      goto LABEL_13;
    }
  }

  idsDeviceIdentifier = [deviceCopy idsDeviceIdentifier];
  if (idsDeviceIdentifier)
  {
    v10 = idsDeviceIdentifier;
    idsDeviceIdentifier2 = [deviceCopy idsDeviceIdentifier];
    v35.receiver = self;
    v35.super_class = RPCompanionLinkDevice;
    v12 = [(RPEndpoint *)&v35 compareWithDeviceIdentifier:idsDeviceIdentifier2];

    if (v12)
    {
      goto LABEL_13;
    }
  }

  if (([deviceCopy statusFlags] & 0x2000) == 0 && (self->super._statusFlags & 0x2000) == 0)
  {
    verifiedIdentity = [deviceCopy verifiedIdentity];
    if (verifiedIdentity)
    {
      v14 = verifiedIdentity;
      verifiedIdentity2 = [deviceCopy verifiedIdentity];
      v34.receiver = self;
      v34.super_class = RPCompanionLinkDevice;
      v16 = [(RPEndpoint *)&v34 compareWithDeviceIdentifier:verifiedIdentity2];

      if (v16)
      {
        goto LABEL_13;
      }
    }
  }

  publicIdentifier = [deviceCopy publicIdentifier];
  if (publicIdentifier)
  {
    v18 = publicIdentifier;
    publicIdentifier2 = [deviceCopy publicIdentifier];
    v33.receiver = self;
    v33.super_class = RPCompanionLinkDevice;
    v20 = [(RPEndpoint *)&v33 compareWithDeviceIdentifier:publicIdentifier2];

    if (v20)
    {
      goto LABEL_13;
    }
  }

  bleDevice = [deviceCopy bleDevice];
  rapportIdentifier = [bleDevice rapportIdentifier];
  if (rapportIdentifier)
  {
    v23 = rapportIdentifier;
    bleDevice2 = [deviceCopy bleDevice];
    rapportIdentifier2 = [bleDevice2 rapportIdentifier];
    v32.receiver = self;
    v32.super_class = RPCompanionLinkDevice;
    v26 = [(RPEndpoint *)&v32 compareWithDeviceIdentifier:rapportIdentifier2];

    if (v26)
    {
LABEL_13:
      v27 = 1;
      goto LABEL_19;
    }
  }

  else
  {
  }

  sessionPairingIdentifier = [deviceCopy sessionPairingIdentifier];
  if (sessionPairingIdentifier)
  {
    sessionPairingIdentifier2 = [deviceCopy sessionPairingIdentifier];
    v31.receiver = self;
    v31.super_class = RPCompanionLinkDevice;
    v27 = [(RPEndpoint *)&v31 compareWithDeviceIdentifier:sessionPairingIdentifier2];
  }

  else
  {
    v27 = 0;
  }

LABEL_19:
  return v27;
}

- (BOOL)isEqualToDeviceBasic:(id)basic
{
  basicCopy = basic;
  v5 = basicCopy;
  if (self->super._idsDeviceIdentifier && ([basicCopy idsDeviceIdentifier], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    idsDeviceIdentifier = self->super._idsDeviceIdentifier;
    idsDeviceIdentifier = [v5 idsDeviceIdentifier];
  }

  else if (self->super._identifier && ([v5 identifier], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    idsDeviceIdentifier = self->super._identifier;
    idsDeviceIdentifier = [v5 identifier];
  }

  else
  {
    idsDeviceIdentifier = self->_publicIdentifier;
    idsDeviceIdentifier = [v5 publicIdentifier];
  }

  v10 = idsDeviceIdentifier;
  v11 = idsDeviceIdentifier;
  v12 = v10;
  v13 = v12;
  if (v11 == v12)
  {
    v14 = 1;
  }

  else if ((v11 != 0) == (v12 == 0))
  {
    v14 = 0;
  }

  else
  {
    v14 = [(NSString *)v11 isEqual:v12];
  }

  return v14;
}

@end