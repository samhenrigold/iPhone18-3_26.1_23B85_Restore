@interface HMDeviceRecord
+ (char)getHMMultiStateFromPMEState:(unsigned __int8)state;
+ (char)multiStateForAAFeatureCapability:(unsigned __int8)capability;
- (BOOL)setOcclusionResult:(int)result forFeatureID:(int)d;
- (BOOL)updateWithAADevice:(id)device;
- (BOOL)updateWithCloudRecordInfo:(id)info;
- (BOOL)updateWithHearingAidConfigData:(id)data;
- (BOOL)updateWithHearingProtectionValue:(unsigned __int8)value;
- (BOOL)updateWithPMEConfigData:(id)data;
- (HMDeviceRecord)init;
- (HMDeviceRecord)initWithCoder:(id)coder;
- (id)descriptionWithLevel:(int)level;
- (int)getOcclusionResultForFeatureID:(int)d;
- (void)_deriveMediaAssistStateIfNeeded;
- (void)encodeWithCoder:(id)coder;
- (void)getSafetyInformation:(unsigned int)information;
- (void)invokePendingOcclusionCompletionsWithError:(id)error;
@end

@implementation HMDeviceRecord

+ (char)getHMMultiStateFromPMEState:(unsigned __int8)state
{
  if (state == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (state == 2);
  }
}

+ (char)multiStateForAAFeatureCapability:(unsigned __int8)capability
{
  if (capability == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (capability == 1);
  }
}

- (HMDeviceRecord)init
{
  v10.receiver = self;
  v10.super_class = HMDeviceRecord;
  v2 = [(HMDeviceRecord *)&v10 init];
  v3 = v2;
  if (v2)
  {
    amplification = v2->_amplification;
    v2->_amplification = &unk_286437A40;

    balance = v3->_balance;
    v3->_balance = &unk_286437A40;

    ownVoiceLevelGain = v3->_ownVoiceLevelGain;
    v3->_ownVoiceLevelGain = &unk_286437A40;

    tone = v3->_tone;
    v3->_tone = &unk_286437A40;

    v8 = v3;
  }

  return v3;
}

- (HMDeviceRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(HMDeviceRecord *)self init];
  if (v5)
  {
    objc_opt_class();
    NSDecodeObjectIfPresent();
    v6 = coderCopy;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    v7 = v6;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v8 = v7;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_earTipFitTestCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingAidEnabled = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingAidV2Capability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingAidV2RegionStatus = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingAssistCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingAssistEnabled = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingAssistEnrolled = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingAssistRegionStatus = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingProtectionCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingProtectionEnabled = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingProtectionOcclusionResult = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingProtectionPPECapability = 0;
    }

    objc_opt_class();
    NSDecodeObjectIfPresent();
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingProtectionPPEEnabled = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingProtectionPPERegionStatus = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingProtectionRegionStatus = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingTestCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingTestRegionStatus = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hideOffModeCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_listeningModeOffAllowed = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_mediaAssistEnabled = 0;
    }

    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_pmeMediaEnabled = 0;
    }

    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_pmeVoiceEnabled = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_pmeVoiceEnrolled = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_swipeGainEnabled = 0;
    }

    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    earLossDataLeft = v5->_earLossDataLeft;
    if (earLossDataLeft)
    {
      v10 = HMEarLossDataToArray(earLossDataLeft);
      earLossArrayLeft = v5->_earLossArrayLeft;
      v5->_earLossArrayLeft = v10;
    }

    earLossDataRight = v5->_earLossDataRight;
    if (earLossDataRight)
    {
      v13 = HMEarLossDataToArray(earLossDataRight);
      earLossArrayRight = v5->_earLossArrayRight;
      v5->_earLossArrayRight = v13;
    }

    pmeMediaLossDataLeft = v5->_pmeMediaLossDataLeft;
    if (pmeMediaLossDataLeft)
    {
      v16 = HMEarLossDataToArray(pmeMediaLossDataLeft);
      pmeMediaLossPresetsLeft = v5->_pmeMediaLossPresetsLeft;
      v5->_pmeMediaLossPresetsLeft = v16;
    }

    pmeMediaLossDataRight = v5->_pmeMediaLossDataRight;
    if (pmeMediaLossDataRight)
    {
      v19 = HMEarLossDataToArray(pmeMediaLossDataRight);
      pmeMediaLossPresetsRight = v5->_pmeMediaLossPresetsRight;
      v5->_pmeMediaLossPresetsRight = v19;
    }

    pmeVoiceLossDataLeft = v5->_pmeVoiceLossDataLeft;
    if (pmeVoiceLossDataLeft)
    {
      v22 = HMEarLossDataToArray(pmeVoiceLossDataLeft);
      pmeVoiceLossPresetsLeft = v5->_pmeVoiceLossPresetsLeft;
      v5->_pmeVoiceLossPresetsLeft = v22;
    }

    pmeVoiceLossDataRight = v5->_pmeVoiceLossDataRight;
    if (pmeVoiceLossDataRight)
    {
      v25 = HMEarLossDataToArray(pmeVoiceLossDataRight);
      pmeVoiceLossPresetsRight = v5->_pmeVoiceLossPresetsRight;
      v5->_pmeVoiceLossPresetsRight = v25;
    }

    v27 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  amplification = self->_amplification;
  v24 = coderCopy;
  if (amplification)
  {
    [coderCopy encodeObject:amplification forKey:@"ampl"];
    coderCopy = v24;
  }

  audiogramEnrolledTimestamp = self->_audiogramEnrolledTimestamp;
  if (audiogramEnrolledTimestamp)
  {
    [v24 encodeObject:audiogramEnrolledTimestamp forKey:@"agET"];
    coderCopy = v24;
  }

  balance = self->_balance;
  if (balance)
  {
    [v24 encodeObject:balance forKey:@"balc"];
    coderCopy = v24;
  }

  beamFormer = self->_beamFormer;
  if (beamFormer)
  {
    [v24 encodeObject:beamFormer forKey:@"bmFm"];
    coderCopy = v24;
  }

  bluetoothUUID = self->_bluetoothUUID;
  if (bluetoothUUID)
  {
    [v24 encodeObject:bluetoothUUID forKey:@"btUUID"];
    coderCopy = v24;
  }

  bluetoothAddress = self->_bluetoothAddress;
  if (bluetoothAddress)
  {
    [v24 encodeObject:bluetoothAddress forKey:@"btAdS"];
    coderCopy = v24;
  }

  bluetoothAddressData = self->_bluetoothAddressData;
  if (bluetoothAddressData)
  {
    [v24 encodeObject:bluetoothAddressData forKey:@"btAd"];
    coderCopy = v24;
  }

  if (self->_earTipFitTestCapability)
  {
    [v24 encodeInteger:? forKey:?];
    coderCopy = v24;
  }

  earLossDataLeft = self->_earLossDataLeft;
  if (earLossDataLeft)
  {
    [v24 encodeObject:earLossDataLeft forKey:@"ElLT"];
    coderCopy = v24;
  }

  earLossDataRight = self->_earLossDataRight;
  if (earLossDataRight)
  {
    [v24 encodeObject:earLossDataRight forKey:@"ELRT"];
    coderCopy = v24;
  }

  if (self->_hearingAidV2Capability)
  {
    [v24 encodeInteger:? forKey:?];
    coderCopy = v24;
  }

  if (self->_hearingAidEnabled)
  {
    [v24 encodeInteger:? forKey:?];
    coderCopy = v24;
  }

  if (self->_hearingAssistCapability)
  {
    [v24 encodeInteger:? forKey:?];
    coderCopy = v24;
  }

  if (self->_hearingAssistEnabled)
  {
    [v24 encodeInteger:? forKey:?];
    coderCopy = v24;
  }

  if (self->_hearingAssistEnrolled)
  {
    [v24 encodeInteger:? forKey:?];
    coderCopy = v24;
  }

  if (self->_hearingAssistRegionStatus)
  {
    [v24 encodeInteger:? forKey:?];
    coderCopy = v24;
  }

  if (self->_hearingProtectionCapability)
  {
    [v24 encodeInteger:? forKey:?];
    coderCopy = v24;
  }

  if (self->_hearingProtectionEnabled)
  {
    [v24 encodeInteger:? forKey:?];
    coderCopy = v24;
  }

  hearingProtectionOcclusionResult = self->_hearingProtectionOcclusionResult;
  if (hearingProtectionOcclusionResult)
  {
    [v24 encodeInteger:hearingProtectionOcclusionResult forKey:@"hPOc"];
    coderCopy = v24;
  }

  if (self->_hearingProtectionPPECapability)
  {
    [v24 encodeInteger:? forKey:?];
    coderCopy = v24;
  }

  hearingProtectionPPECapLevel = self->_hearingProtectionPPECapLevel;
  if (hearingProtectionPPECapLevel)
  {
    [v24 encodeObject:hearingProtectionPPECapLevel forKey:@"ppeL"];
    coderCopy = v24;
  }

  if (self->_hearingProtectionPPEEnabled)
  {
    [v24 encodeInteger:? forKey:?];
    coderCopy = v24;
  }

  if (self->_hearingProtectionRegionStatus)
  {
    [v24 encodeInteger:? forKey:?];
    coderCopy = v24;
  }

  if (self->_hearingTestCapability)
  {
    [v24 encodeInteger:? forKey:?];
    coderCopy = v24;
  }

  if (self->_hearingTestRegionStatus)
  {
    [v24 encodeInteger:? forKey:?];
    coderCopy = v24;
  }

  if (self->_hideOffModeCapability)
  {
    [v24 encodeInteger:? forKey:?];
    coderCopy = v24;
  }

  if (self->_listeningModeOffAllowed)
  {
    [v24 encodeInteger:? forKey:?];
    coderCopy = v24;
  }

  if (self->_mediaAssistEnabled)
  {
    [v24 encodeInteger:? forKey:?];
    coderCopy = v24;
  }

  noiseSuppression = self->_noiseSuppression;
  if (noiseSuppression)
  {
    [v24 encodeObject:noiseSuppression forKey:@"nsSp"];
    coderCopy = v24;
  }

  if (self->_hearingAidV2RegionStatus)
  {
    [v24 encodeInteger:? forKey:?];
    coderCopy = v24;
  }

  if (self->_hearingProtectionPPERegionStatus)
  {
    [v24 encodeInteger:? forKey:?];
    coderCopy = v24;
  }

  if (self->_pmeMediaEnabled)
  {
    [v24 encodeInteger:? forKey:?];
    coderCopy = v24;
  }

  pmeMediaLossDataLeft = self->_pmeMediaLossDataLeft;
  if (pmeMediaLossDataLeft)
  {
    [v24 encodeObject:pmeMediaLossDataLeft forKey:@"pmML"];
    coderCopy = v24;
  }

  pmeMediaLossDataRight = self->_pmeMediaLossDataRight;
  if (pmeMediaLossDataRight)
  {
    [v24 encodeObject:pmeMediaLossDataRight forKey:@"pmMR"];
    coderCopy = v24;
  }

  pmeVoiceLossDataLeft = self->_pmeVoiceLossDataLeft;
  if (pmeVoiceLossDataLeft)
  {
    [v24 encodeObject:pmeVoiceLossDataLeft forKey:@"pmVL"];
    coderCopy = v24;
  }

  pmeVoiceLossDataRight = self->_pmeVoiceLossDataRight;
  if (pmeVoiceLossDataRight)
  {
    [v24 encodeObject:pmeVoiceLossDataRight forKey:@"pmVR"];
    coderCopy = v24;
  }

  if (self->_pmeVoiceEnabled)
  {
    [v24 encodeInteger:? forKey:?];
    coderCopy = v24;
  }

  if (self->_pmeVoiceEnrolled)
  {
    [v24 encodeInteger:? forKey:?];
    coderCopy = v24;
  }

  if (self->_swipeGainEnabled)
  {
    [v24 encodeInteger:? forKey:?];
    coderCopy = v24;
  }

  tone = self->_tone;
  if (tone)
  {
    [v24 encodeObject:tone forKey:@"tone"];
    coderCopy = v24;
  }

  safetyInformation = self->_safetyInformation;
  if (safetyInformation)
  {
    [v24 encodeObject:safetyInformation forKey:@"sInf"];
    coderCopy = v24;
  }

  ownVoiceLevelGain = self->_ownVoiceLevelGain;
  if (ownVoiceLevelGain)
  {
    [v24 encodeObject:ownVoiceLevelGain forKey:@"oVLG"];
    coderCopy = v24;
  }
}

- (id)descriptionWithLevel:(int)level
{
  v169 = 0;
  v5 = [objc_opt_class() description];
  NSAppendPrintF_safe(&v169, "%@", v5);
  v6 = v169;

  v7 = self->_amplification;
  v8 = v7;
  if (v7)
  {
    v168 = v6;
    NSAppendPrintF_safe(&v168, ", Amp %@", v7);
    v9 = v168;

    v6 = v9;
  }

  v10 = self->_audiogramEnrolledTimestamp;
  v11 = v10;
  if (v10)
  {
    v167 = v6;
    NSAppendPrintF_safe(&v167, ", AG EnrolledTime '%@'", v10);
    v12 = v167;

    v6 = v12;
  }

  v13 = self->_balance;
  v14 = v13;
  if (v13)
  {
    v166 = v6;
    NSAppendPrintF_safe(&v166, ", Bal %@", v13);
    v15 = v166;

    v6 = v15;
  }

  v16 = self->_beamFormer;
  v17 = v16;
  if (v16)
  {
    v165 = v6;
    NSAppendPrintF_safe(&v165, ", BmFm %@", v16);
    v18 = v165;

    v6 = v18;
  }

  v19 = self->_bluetoothAddress;
  v20 = v19;
  if (v19)
  {
    v164 = v6;
    NSAppendPrintF_safe(&v164, ", Bt Addr %@", v19);
    v21 = v164;

    v6 = v21;
  }

  v22 = self->_bluetoothUUID;
  v23 = v22;
  if (v22)
  {
    v163 = v6;
    NSAppendPrintF_safe(&v163, ", Bt UUID %@", v22);
    v24 = v163;

    v6 = v24;
  }

  hearingAidEnabled = self->_hearingAidEnabled;
  if (self->_hearingAidEnabled)
  {
    if (hearingAidEnabled == 1)
    {
      v26 = "Yes";
    }

    else
    {
      v26 = "?";
    }

    if (hearingAidEnabled == 2)
    {
      v27 = "No";
    }

    else
    {
      v27 = v26;
    }

    v162 = v6;
    NSAppendPrintF_safe(&v162, ", Hr Aid En %s", v27);
    v28 = v162;

    v6 = v28;
  }

  hearingAidV2Capability = self->_hearingAidV2Capability;
  if (self->_hearingAidV2Capability)
  {
    if (hearingAidV2Capability == 1)
    {
      v30 = "Yes";
    }

    else
    {
      v30 = "?";
    }

    if (hearingAidV2Capability == 2)
    {
      v31 = "No";
    }

    else
    {
      v31 = v30;
    }

    v161 = v6;
    NSAppendPrintF_safe(&v161, ", Hr Aidv2 Cp %s", v31);
    v32 = v161;

    v6 = v32;
  }

  hearingAidV2RegionStatus = self->_hearingAidV2RegionStatus;
  if (self->_hearingAidV2RegionStatus)
  {
    v160 = v6;
    if (hearingAidV2RegionStatus > 3)
    {
      v34 = "?";
    }

    else
    {
      v34 = off_2796EE8D8[hearingAidV2RegionStatus - 1];
    }

    NSAppendPrintF_safe(&v160, ", Hr Aidv2 Reg St %s", v34);
    v35 = v160;

    v6 = v35;
  }

  hearingAssistCapability = self->_hearingAssistCapability;
  if (self->_hearingAssistCapability)
  {
    if (hearingAssistCapability == 1)
    {
      v37 = "Yes";
    }

    else
    {
      v37 = "?";
    }

    if (hearingAssistCapability == 2)
    {
      v38 = "No";
    }

    else
    {
      v38 = v37;
    }

    v159 = v6;
    NSAppendPrintF_safe(&v159, ", HA Cp %s", v38);
    v39 = v159;

    v6 = v39;
  }

  hearingAssistEnabled = self->_hearingAssistEnabled;
  if (self->_hearingAssistEnabled)
  {
    if (hearingAssistEnabled == 1)
    {
      v41 = "Yes";
    }

    else
    {
      v41 = "?";
    }

    if (hearingAssistEnabled == 2)
    {
      v42 = "No";
    }

    else
    {
      v42 = v41;
    }

    v158 = v6;
    NSAppendPrintF_safe(&v158, ", HA En %s", v42);
    v43 = v158;

    v6 = v43;
  }

  hearingAssistEnrolled = self->_hearingAssistEnrolled;
  if (self->_hearingAssistEnrolled)
  {
    if (hearingAssistEnrolled == 1)
    {
      v45 = "Yes";
    }

    else
    {
      v45 = "?";
    }

    if (hearingAssistEnrolled == 2)
    {
      v46 = "No";
    }

    else
    {
      v46 = v45;
    }

    v157 = v6;
    NSAppendPrintF_safe(&v157, ", HA Er %s", v46);
    v47 = v157;

    v6 = v47;
  }

  hearingAssistRegionStatus = self->_hearingAssistRegionStatus;
  if (self->_hearingAssistRegionStatus)
  {
    v156 = v6;
    if (hearingAssistRegionStatus > 3)
    {
      v49 = "?";
    }

    else
    {
      v49 = off_2796EE8D8[hearingAssistRegionStatus - 1];
    }

    NSAppendPrintF_safe(&v156, ", HA Reg St %s", v49);
    v50 = v156;

    v6 = v50;
  }

  hearingProtectionCapability = self->_hearingProtectionCapability;
  if (self->_hearingProtectionCapability)
  {
    if (hearingProtectionCapability == 1)
    {
      v52 = "Yes";
    }

    else
    {
      v52 = "?";
    }

    if (hearingProtectionCapability == 2)
    {
      v53 = "No";
    }

    else
    {
      v53 = v52;
    }

    v155 = v6;
    NSAppendPrintF_safe(&v155, ", HP Cap %s", v53);
    v54 = v155;

    v6 = v54;
  }

  hearingProtectionEnabled = self->_hearingProtectionEnabled;
  if (self->_hearingProtectionEnabled)
  {
    if (hearingProtectionEnabled == 1)
    {
      v56 = "Yes";
    }

    else
    {
      v56 = "?";
    }

    if (hearingProtectionEnabled == 2)
    {
      v57 = "No";
    }

    else
    {
      v57 = v56;
    }

    v154 = v6;
    NSAppendPrintF_safe(&v154, ", HP En %s", v57);
    v58 = v154;

    v6 = v58;
  }

  hearingProtectionOcclusionResult = self->_hearingProtectionOcclusionResult;
  if (hearingProtectionOcclusionResult)
  {
    v153 = v6;
    if (hearingProtectionOcclusionResult > 7)
    {
      v60 = "?";
    }

    else
    {
      v60 = off_2796EE8A0[hearingProtectionOcclusionResult - 1];
    }

    NSAppendPrintF_safe(&v153, ", HP Occlusion %s", v60);
    v61 = v153;

    v6 = v61;
  }

  hearingProtectionPPECapability = self->_hearingProtectionPPECapability;
  if (self->_hearingProtectionPPECapability)
  {
    if (hearingProtectionPPECapability == 1)
    {
      v63 = "Yes";
    }

    else
    {
      v63 = "?";
    }

    if (hearingProtectionPPECapability == 2)
    {
      v64 = "No";
    }

    else
    {
      v64 = v63;
    }

    v152 = v6;
    NSAppendPrintF_safe(&v152, ", HP PPE Cp %s", v64);
    v65 = v152;

    v6 = v65;
  }

  v66 = self->_hearingProtectionPPECapLevel;
  v67 = v66;
  if (v66)
  {
    v151 = v6;
    NSAppendPrintF_safe(&v151, ", HP PPE CapLvl %@", v66);
    v68 = v151;

    v6 = v68;
  }

  hearingProtectionPPEEnabled = self->_hearingProtectionPPEEnabled;
  if (self->_hearingProtectionPPEEnabled)
  {
    if (hearingProtectionPPEEnabled == 1)
    {
      v70 = "Yes";
    }

    else
    {
      v70 = "?";
    }

    if (hearingProtectionPPEEnabled == 2)
    {
      v71 = "No";
    }

    else
    {
      v71 = v70;
    }

    v150 = v6;
    NSAppendPrintF_safe(&v150, ", HP PPE En %s", v71);
    v72 = v150;

    v6 = v72;
  }

  hearingProtectionPPERegionStatus = self->_hearingProtectionPPERegionStatus;
  if (self->_hearingProtectionPPERegionStatus)
  {
    v149 = v6;
    if (hearingProtectionPPERegionStatus > 3)
    {
      v74 = "?";
    }

    else
    {
      v74 = off_2796EE8D8[hearingProtectionPPERegionStatus - 1];
    }

    NSAppendPrintF_safe(&v149, ", HP PPE Reg St %s", v74);
    v75 = v149;

    v6 = v75;
  }

  hearingProtectionRegionStatus = self->_hearingProtectionRegionStatus;
  if (self->_hearingProtectionRegionStatus)
  {
    v148 = v6;
    if (hearingProtectionRegionStatus > 3)
    {
      v77 = "?";
    }

    else
    {
      v77 = off_2796EE8D8[hearingProtectionRegionStatus - 1];
    }

    NSAppendPrintF_safe(&v148, ", HP Reg St %s", v77);
    v78 = v148;

    v6 = v78;
  }

  hearingTestCapability = self->_hearingTestCapability;
  if (self->_hearingTestCapability)
  {
    if (hearingTestCapability == 1)
    {
      v80 = "Yes";
    }

    else
    {
      v80 = "?";
    }

    if (hearingTestCapability == 2)
    {
      v81 = "No";
    }

    else
    {
      v81 = v80;
    }

    v147 = v6;
    NSAppendPrintF_safe(&v147, ", HT Cap %s", v81);
    v82 = v147;

    v6 = v82;
  }

  hearingTestOcclusionResult = self->_hearingTestOcclusionResult;
  if (hearingTestOcclusionResult)
  {
    v146 = v6;
    if (hearingTestOcclusionResult > 7)
    {
      v84 = "?";
    }

    else
    {
      v84 = off_2796EE8A0[hearingTestOcclusionResult - 1];
    }

    NSAppendPrintF_safe(&v146, ", HT Occlusion %s", v84);
    v85 = v146;

    v6 = v85;
  }

  hearingTestRegionStatus = self->_hearingTestRegionStatus;
  if (self->_hearingTestRegionStatus)
  {
    v145 = v6;
    if (hearingTestRegionStatus > 3)
    {
      v87 = "?";
    }

    else
    {
      v87 = off_2796EE8D8[hearingTestRegionStatus - 1];
    }

    NSAppendPrintF_safe(&v145, ", HT Reg St %s", v87);
    v88 = v145;

    v6 = v88;
  }

  hideOffModeCapability = self->_hideOffModeCapability;
  if (self->_hideOffModeCapability)
  {
    if (hideOffModeCapability == 1)
    {
      v90 = "Yes";
    }

    else
    {
      v90 = "?";
    }

    if (hideOffModeCapability == 2)
    {
      v91 = "No";
    }

    else
    {
      v91 = v90;
    }

    v144 = v6;
    NSAppendPrintF_safe(&v144, ", LsMd Off Cap %s", v91);
    v92 = v144;

    v6 = v92;
  }

  listeningModeOffAllowed = self->_listeningModeOffAllowed;
  if (self->_listeningModeOffAllowed)
  {
    if (listeningModeOffAllowed == 1)
    {
      v94 = "Yes";
    }

    else
    {
      v94 = "?";
    }

    if (listeningModeOffAllowed == 2)
    {
      v95 = "No";
    }

    else
    {
      v95 = v94;
    }

    v143 = v6;
    NSAppendPrintF_safe(&v143, ", LsMd Off %s", v95);
    v96 = v143;

    v6 = v96;
  }

  mediaAssistEnabled = self->_mediaAssistEnabled;
  if (self->_mediaAssistEnabled)
  {
    if (mediaAssistEnabled == 1)
    {
      v98 = "Yes";
    }

    else
    {
      v98 = "?";
    }

    if (mediaAssistEnabled == 2)
    {
      v99 = "No";
    }

    else
    {
      v99 = v98;
    }

    v142 = v6;
    NSAppendPrintF_safe(&v142, ", MA En %s", v99);
    v100 = v142;

    v6 = v100;
  }

  v101 = self->_noiseSuppression;
  v102 = v101;
  if (v101)
  {
    v141 = v6;
    NSAppendPrintF_safe(&v141, ", Noise Sup %@", v101);
    v103 = v141;

    v6 = v103;
  }

  pmeMediaEnabled = self->_pmeMediaEnabled;
  if (self->_pmeMediaEnabled)
  {
    if (pmeMediaEnabled == 1)
    {
      v105 = "Yes";
    }

    else
    {
      v105 = "?";
    }

    if (pmeMediaEnabled == 2)
    {
      v106 = "No";
    }

    else
    {
      v106 = v105;
    }

    v140 = v6;
    NSAppendPrintF_safe(&v140, ", PME Md En %s", v106);
    v107 = v140;

    v6 = v107;
  }

  pmeVoiceEnabled = self->_pmeVoiceEnabled;
  if (self->_pmeVoiceEnabled)
  {
    if (pmeVoiceEnabled == 1)
    {
      v109 = "Yes";
    }

    else
    {
      v109 = "?";
    }

    if (pmeVoiceEnabled == 2)
    {
      v110 = "No";
    }

    else
    {
      v110 = v109;
    }

    v139 = v6;
    NSAppendPrintF_safe(&v139, ", PME Vc En %s", v110);
    v111 = v139;

    v6 = v111;
  }

  pmeVoiceEnrolled = self->_pmeVoiceEnrolled;
  if (self->_pmeVoiceEnrolled)
  {
    if (pmeVoiceEnrolled == 1)
    {
      v113 = "Yes";
    }

    else
    {
      v113 = "?";
    }

    if (pmeVoiceEnrolled == 2)
    {
      v114 = "No";
    }

    else
    {
      v114 = v113;
    }

    v138 = v6;
    NSAppendPrintF_safe(&v138, ", PME Vc Er %s", v114);
    v115 = v138;

    v6 = v115;
  }

  swipeGainEnabled = self->_swipeGainEnabled;
  if (self->_swipeGainEnabled)
  {
    if (swipeGainEnabled == 1)
    {
      v117 = "Yes";
    }

    else
    {
      v117 = "?";
    }

    if (swipeGainEnabled == 2)
    {
      v118 = "No";
    }

    else
    {
      v118 = v117;
    }

    v137 = v6;
    NSAppendPrintF_safe(&v137, ", Swp Gn En %s", v118);
    v119 = v137;

    v6 = v119;
  }

  v120 = self->_tone;
  v121 = v120;
  if (v120)
  {
    v136 = v6;
    NSAppendPrintF_safe(&v136, ", Tone %@", v120);
    v122 = v136;

    v6 = v122;
  }

  v123 = self->_ownVoiceLevelGain;
  v124 = v123;
  if (v123)
  {
    v135 = v6;
    NSAppendPrintF_safe(&v135, ", Own Vc LG %@", v123);
    v125 = v135;

    v6 = v125;
  }

  earTipFitTestCapability = self->_earTipFitTestCapability;
  if (self->_earTipFitTestCapability)
  {
    if (earTipFitTestCapability == 1)
    {
      v127 = "Yes";
    }

    else
    {
      v127 = "?";
    }

    if (earTipFitTestCapability == 2)
    {
      v128 = "No";
    }

    else
    {
      v128 = v127;
    }

    v134 = v6;
    NSAppendPrintF_safe(&v134, ", Ear Tip Fit Cap %s", v128);
    v129 = v134;

    v6 = v129;
  }

  if (level < 21)
  {
    v133 = v6;
    NSAppendPrintF_safe(&v133, "\n");
    v130 = v133;

    v6 = v130;
  }

  v131 = v6;

  return v6;
}

- (int)getOcclusionResultForFeatureID:(int)d
{
  if (d == 2)
  {
    return self->_hearingProtectionOcclusionResult;
  }

  if (d == 3)
  {
    return self->_hearingTestOcclusionResult;
  }

  if (gLogCategory_HMDeviceRecord > 90)
  {
    return 0;
  }

  if (gLogCategory_HMDeviceRecord != -1 || (result = _LogCategory_Initialize()) != 0)
  {
    [HMDeviceRecord getOcclusionResultForFeatureID:];
    return 0;
  }

  return result;
}

- (BOOL)setOcclusionResult:(int)result forFeatureID:(int)d
{
  if (d == 2)
  {
    if (self->_hearingProtectionOcclusionResult != result)
    {
      self->_hearingProtectionOcclusionResult = result;
      goto LABEL_7;
    }

LABEL_12:
    LOBYTE(v4) = 0;
    return v4;
  }

  if (d == 3)
  {
    if (self->_hearingTestOcclusionResult != result)
    {
      self->_hearingTestOcclusionResult = result;
LABEL_7:
      LOBYTE(v4) = 1;
      return v4;
    }

    goto LABEL_12;
  }

  if (gLogCategory_HMDeviceRecord > 90)
  {
    goto LABEL_12;
  }

  if (gLogCategory_HMDeviceRecord != -1 || (v4 = _LogCategory_Initialize()) != 0)
  {
    [HMDeviceRecord setOcclusionResult:forFeatureID:];
    goto LABEL_12;
  }

  return v4;
}

- (void)invokePendingOcclusionCompletionsWithError:(id)error
{
  errorCopy = error;
  pendingOcclusionCompletionsMap = self->_pendingOcclusionCompletionsMap;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __61__HMDeviceRecord_invokePendingOcclusionCompletionsWithError___block_invoke;
  v11 = &unk_2796EE880;
  selfCopy = self;
  v13 = errorCopy;
  v6 = errorCopy;
  [(NSMutableDictionary *)pendingOcclusionCompletionsMap enumerateKeysAndObjectsUsingBlock:&v8];
  [(NSMutableDictionary *)self->_pendingOcclusionCompletionsMap removeAllObjects:v8];
  v7 = self->_pendingOcclusionCompletionsMap;
  self->_pendingOcclusionCompletionsMap = 0;
}

void __61__HMDeviceRecord_invokePendingOcclusionCompletionsWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = [*(a1 + 32) getOcclusionResultForFeatureID:{objc_msgSend(v5, "unsignedIntValue")}];
        if (gLogCategory_HMDeviceRecord <= 30 && (gLogCategory_HMDeviceRecord != -1 || _LogCategory_Initialize()))
        {
          __61__HMDeviceRecord_invokePendingOcclusionCompletionsWithError___block_invoke_cold_1(v11, a1 + 32, v12);
        }

        (*(v11 + 16))(v11, v12, *(a1 + 40));
        ++v10;
      }

      while (v8 != v10);
      v13 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v8 = v13;
    }

    while (v13);
  }
}

- (BOOL)updateWithAADevice:(id)device
{
  deviceCopy = device;
  bluetoothAddressData = [deviceCopy bluetoothAddressData];
  bluetoothAddress = self->_bluetoothAddressData;
  v7 = bluetoothAddressData;
  v8 = v7;
  v9 = bluetoothAddress != v7;
  if (bluetoothAddress == v7)
  {
  }

  else
  {
    if ((v7 == 0) != (bluetoothAddress != 0))
    {
      v10 = [(NSData *)bluetoothAddress isEqual:v7];

      if (v10)
      {
        v9 = 0;
        goto LABEL_9;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_bluetoothAddressData, bluetoothAddressData);
    v11 = CUPrintNSDataAddress();
    bluetoothAddress = self->_bluetoothAddress;
    self->_bluetoothAddress = v11;
  }

LABEL_9:
  identifier = [deviceCopy identifier];
  bluetoothUUID = self->_bluetoothUUID;
  v14 = identifier;
  v15 = v14;
  if (bluetoothUUID == v14)
  {
  }

  else
  {
    if ((v14 == 0) != (bluetoothUUID != 0))
    {
      v16 = [(NSString *)bluetoothUUID isEqual:v14];

      if (v16)
      {
        goto LABEL_17;
      }
    }

    else
    {
    }

    v17 = v15;
    bluetoothUUID = self->_bluetoothUUID;
    self->_bluetoothUUID = v17;
    v9 = 1;
  }

LABEL_17:
  audiogramEnrolledTimestamp = [deviceCopy audiogramEnrolledTimestamp];
  v19 = audiogramEnrolledTimestamp;
  if (audiogramEnrolledTimestamp && ([audiogramEnrolledTimestamp isEqualToDate:self->_audiogramEnrolledTimestamp] & 1) == 0)
  {
    objc_storeStrong(&self->_audiogramEnrolledTimestamp, v19);
    v9 = 1;
  }

  audioStreamState = [deviceCopy audioStreamState];
  v21 = audioStreamState != [(AudioAccessoryDevice *)self->_aaDevice audioStreamState]|| v9;
  hearingAidCapability = [deviceCopy hearingAidCapability];
  if (hearingAidCapability == 1)
  {
    hearingAssistCapability = 2;
  }

  else
  {
    hearingAssistCapability = self->_hearingAssistCapability;
  }

  if (hearingAidCapability == 2)
  {
    hearingAssistCapability = 1;
  }

  if (hearingAssistCapability != self->_hearingAssistCapability)
  {
    self->_hearingAssistCapability = hearingAssistCapability;
    v21 = 1;
  }

  hearingAidEnabled = [deviceCopy hearingAidEnabled];
  if (self->_hearingAidEnabled != hearingAidEnabled)
  {
    self->_hearingAidEnabled = hearingAidEnabled;
    v21 = 1;
  }

  hearingAssistEnabled = [deviceCopy hearingAssistEnabled];
  if (self->_hearingAssistEnabled != hearingAssistEnabled)
  {
    self->_hearingAssistEnabled = hearingAssistEnabled;
    v21 = 1;
  }

  hearingAidEnrolled = [deviceCopy hearingAidEnrolled];
  if (self->_hearingAssistEnrolled != hearingAidEnrolled)
  {
    self->_hearingAssistEnrolled = hearingAidEnrolled;
    v21 = 1;
  }

  hearingProtectionCapability = [deviceCopy hearingProtectionCapability];
  v28 = 2 * (hearingProtectionCapability == 1);
  if (hearingProtectionCapability == 2)
  {
    v28 = 1;
  }

  if (v28 != self->_hearingProtectionCapability)
  {
    self->_hearingProtectionCapability = v28;
    v21 = 1;
  }

  if (_os_feature_enabled_impl())
  {
    hearingAidV2Capability = [deviceCopy hearingAidV2Capability];
    v30 = 2 * (hearingAidV2Capability == 1);
    if (hearingAidV2Capability == 2)
    {
      v30 = 1;
    }

    if (v30 != self->_hearingAidV2Capability)
    {
      self->_hearingAidV2Capability = v30;
      v21 = 1;
    }
  }

  if (_os_feature_enabled_impl())
  {
    hearingProtectionPPECapability = [deviceCopy hearingProtectionPPECapability];
    v32 = 2 * (hearingProtectionPPECapability == 1);
    if (hearingProtectionPPECapability == 2)
    {
      v32 = 1;
    }

    if (v32 != self->_hearingProtectionPPECapability)
    {
      self->_hearingProtectionPPECapability = v32;
      v21 = 1;
    }
  }

  if ([deviceCopy hearingProtectionPPEEnabled] == 1)
  {
    v33 = 1;
  }

  else
  {
    v33 = 2;
  }

  if (_os_feature_enabled_impl() && v33 != [(HMDeviceRecord *)self hearingProtectionPPEEnabled])
  {
    self->_hearingProtectionPPEEnabled = v33;
    v21 = 1;
  }

  v34 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(deviceCopy, "hearingProtectionPPECapLevel")}];
  if (_os_feature_enabled_impl())
  {
    hearingProtectionPPECapLevel = [(HMDeviceRecord *)self hearingProtectionPPECapLevel];

    if (v34 != hearingProtectionPPECapLevel)
    {
      objc_storeStrong(&self->_hearingProtectionPPECapLevel, v34);
      v21 = 1;
    }
  }

  hearingTestCapability = [deviceCopy hearingTestCapability];
  v37 = 2 * (hearingTestCapability == 1);
  if (hearingTestCapability == 2)
  {
    v37 = 1;
  }

  if (v37 != self->_hearingTestCapability)
  {
    self->_hearingTestCapability = v37;
    v21 = 1;
  }

  v38 = +[HMDeviceRecord multiStateForAAFeatureCapability:](HMDeviceRecord, "multiStateForAAFeatureCapability:", [deviceCopy hideOffListeningModeCapability]);
  if (self->_hideOffModeCapability != v38)
  {
    self->_hideOffModeCapability = v38;
    v21 = 1;
  }

  v56 = v15;
  listeningModeOffAllowed = [deviceCopy listeningModeOffAllowed];
  v40 = v19;
  v41 = v8;
  if (_os_feature_enabled_impl() && self->_listeningModeOffAllowed != listeningModeOffAllowed)
  {
    self->_listeningModeOffAllowed = listeningModeOffAllowed;
    v21 = 1;
  }

  placementMode = [deviceCopy placementMode];
  placementMode2 = [(AudioAccessoryDevice *)self->_aaDevice placementMode];
  primaryPlacement = [deviceCopy primaryPlacement];
  primaryPlacement2 = [(AudioAccessoryDevice *)self->_aaDevice primaryPlacement];
  secondaryPlacement = [deviceCopy secondaryPlacement];
  v49 = secondaryPlacement != [(AudioAccessoryDevice *)self->_aaDevice secondaryPlacement]|| primaryPlacement != primaryPlacement2 || placementMode != placementMode2;
  hearingAidGainSwipeEnabled = [deviceCopy hearingAidGainSwipeEnabled];
  if (self->_swipeGainEnabled == hearingAidGainSwipeEnabled)
  {
    v51 = v49 | v21;
  }

  else
  {
    self->_swipeGainEnabled = hearingAidGainSwipeEnabled;
    v51 = 1;
  }

  [(HMDeviceRecord *)self _deriveMediaAssistStateIfNeeded];
  if ([deviceCopy earTipFitTestCapability] == 2)
  {
    v52 = 1;
  }

  else
  {
    v52 = 2 * ([deviceCopy earTipFitTestCapability] == 1);
  }

  if (v52 != self->_earTipFitTestCapability)
  {
    self->_earTipFitTestCapability = v52;
    v51 = 1;
  }

  aaDevice = self->_aaDevice;
  self->_aaDevice = deviceCopy;

  return v51 & 1;
}

- (BOOL)updateWithCloudRecordInfo:(id)info
{
  infoCopy = info;
  if (!self->_cloudRecord)
  {
    v5 = [objc_alloc(MEMORY[0x277CEF830]) initWithBluetoothAddress:self->_bluetoothAddress];
    cloudRecord = self->_cloudRecord;
    self->_cloudRecord = v5;
  }

  mediaAssistEnabled = [infoCopy mediaAssistEnabled];
  if (mediaAssistEnabled && self->_mediaAssistEnabled != mediaAssistEnabled)
  {
    self->_mediaAssistEnabled = mediaAssistEnabled;
    [(HMDeviceCloudRecordInfo *)self->_cloudRecord setMediaAssistEnabled:?];
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  if ([infoCopy pmeMediaEnabled])
  {
    -[HMDeviceCloudRecordInfo setPmeMediaEnabled:](self->_cloudRecord, "setPmeMediaEnabled:", [infoCopy pmeMediaEnabled]);
  }

  if ([infoCopy pmeVoiceEnabled])
  {
    -[HMDeviceCloudRecordInfo setPmeVoiceEnabled:](self->_cloudRecord, "setPmeVoiceEnabled:", [infoCopy pmeVoiceEnabled]);
  }

  if ([infoCopy swipeGainEnabled])
  {
    -[HMDeviceCloudRecordInfo setSwipeGainEnabled:](self->_cloudRecord, "setSwipeGainEnabled:", [infoCopy swipeGainEnabled]);
  }

  diagnosticMeasurementsCount = [infoCopy diagnosticMeasurementsCount];

  if (diagnosticMeasurementsCount)
  {
    diagnosticMeasurementsCount2 = [infoCopy diagnosticMeasurementsCount];
    [(HMDeviceCloudRecordInfo *)self->_cloudRecord setDiagnosticMeasurementsCount:diagnosticMeasurementsCount2];
  }

  bottomMicFaultCountLeft = [infoCopy bottomMicFaultCountLeft];

  if (bottomMicFaultCountLeft)
  {
    bottomMicFaultCountLeft2 = [infoCopy bottomMicFaultCountLeft];
    [(HMDeviceCloudRecordInfo *)self->_cloudRecord setBottomMicFaultCountLeft:bottomMicFaultCountLeft2];
  }

  topMicFaultCountLeft = [infoCopy topMicFaultCountLeft];

  if (topMicFaultCountLeft)
  {
    topMicFaultCountLeft2 = [infoCopy topMicFaultCountLeft];
    [(HMDeviceCloudRecordInfo *)self->_cloudRecord setTopMicFaultCountLeft:topMicFaultCountLeft2];
  }

  innerMicFaultCountLeft = [infoCopy innerMicFaultCountLeft];

  if (innerMicFaultCountLeft)
  {
    innerMicFaultCountLeft2 = [infoCopy innerMicFaultCountLeft];
    [(HMDeviceCloudRecordInfo *)self->_cloudRecord setInnerMicFaultCountLeft:innerMicFaultCountLeft2];
  }

  speakerFaultCountLeft = [infoCopy speakerFaultCountLeft];

  if (speakerFaultCountLeft)
  {
    speakerFaultCountLeft2 = [infoCopy speakerFaultCountLeft];
    [(HMDeviceCloudRecordInfo *)self->_cloudRecord setSpeakerFaultCountLeft:speakerFaultCountLeft2];
  }

  frontVentFaultCountLeft = [infoCopy frontVentFaultCountLeft];

  if (frontVentFaultCountLeft)
  {
    frontVentFaultCountLeft2 = [infoCopy frontVentFaultCountLeft];
    [(HMDeviceCloudRecordInfo *)self->_cloudRecord setFrontVentFaultCountLeft:frontVentFaultCountLeft2];
  }

  rearVentFaultCountLeft = [infoCopy rearVentFaultCountLeft];

  if (rearVentFaultCountLeft)
  {
    rearVentFaultCountLeft2 = [infoCopy rearVentFaultCountLeft];
    [(HMDeviceCloudRecordInfo *)self->_cloudRecord setRearVentFaultCountLeft:rearVentFaultCountLeft2];
  }

  totalHarmonicDistortionFaultCountLeft = [infoCopy totalHarmonicDistortionFaultCountLeft];

  if (totalHarmonicDistortionFaultCountLeft)
  {
    totalHarmonicDistortionFaultCountLeft2 = [infoCopy totalHarmonicDistortionFaultCountLeft];
    [(HMDeviceCloudRecordInfo *)self->_cloudRecord setTotalHarmonicDistortionFaultCountLeft:totalHarmonicDistortionFaultCountLeft2];
  }

  freqAccuracyFaultCountLeft = [infoCopy freqAccuracyFaultCountLeft];

  if (freqAccuracyFaultCountLeft)
  {
    freqAccuracyFaultCountLeft2 = [infoCopy freqAccuracyFaultCountLeft];
    [(HMDeviceCloudRecordInfo *)self->_cloudRecord setFreqAccuracyFaultCountLeft:freqAccuracyFaultCountLeft2];
  }

  latestDiagnosticTimestampLeft = [infoCopy latestDiagnosticTimestampLeft];

  if (latestDiagnosticTimestampLeft)
  {
    latestDiagnosticTimestampLeft2 = [infoCopy latestDiagnosticTimestampLeft];
    [(HMDeviceCloudRecordInfo *)self->_cloudRecord setLatestDiagnosticTimestampLeft:latestDiagnosticTimestampLeft2];
  }

  bottomMicFaultCountRight = [infoCopy bottomMicFaultCountRight];

  if (bottomMicFaultCountRight)
  {
    bottomMicFaultCountRight2 = [infoCopy bottomMicFaultCountRight];
    [(HMDeviceCloudRecordInfo *)self->_cloudRecord setBottomMicFaultCountRight:bottomMicFaultCountRight2];
  }

  topMicFaultCountRight = [infoCopy topMicFaultCountRight];

  if (topMicFaultCountRight)
  {
    topMicFaultCountRight2 = [infoCopy topMicFaultCountRight];
    [(HMDeviceCloudRecordInfo *)self->_cloudRecord setTopMicFaultCountRight:topMicFaultCountRight2];
  }

  innerMicFaultCountRight = [infoCopy innerMicFaultCountRight];

  if (innerMicFaultCountRight)
  {
    innerMicFaultCountRight2 = [infoCopy innerMicFaultCountRight];
    [(HMDeviceCloudRecordInfo *)self->_cloudRecord setInnerMicFaultCountRight:innerMicFaultCountRight2];
  }

  speakerFaultCountRight = [infoCopy speakerFaultCountRight];

  if (speakerFaultCountRight)
  {
    speakerFaultCountRight2 = [infoCopy speakerFaultCountRight];
    [(HMDeviceCloudRecordInfo *)self->_cloudRecord setSpeakerFaultCountRight:speakerFaultCountRight2];
  }

  frontVentFaultCountRight = [infoCopy frontVentFaultCountRight];

  if (frontVentFaultCountRight)
  {
    frontVentFaultCountRight2 = [infoCopy frontVentFaultCountRight];
    [(HMDeviceCloudRecordInfo *)self->_cloudRecord setFrontVentFaultCountRight:frontVentFaultCountRight2];
  }

  rearVentFaultCountRight = [infoCopy rearVentFaultCountRight];

  if (rearVentFaultCountRight)
  {
    rearVentFaultCountRight2 = [infoCopy rearVentFaultCountRight];
    [(HMDeviceCloudRecordInfo *)self->_cloudRecord setRearVentFaultCountRight:rearVentFaultCountRight2];
  }

  totalHarmonicDistortionFaultCountRight = [infoCopy totalHarmonicDistortionFaultCountRight];

  if (totalHarmonicDistortionFaultCountRight)
  {
    totalHarmonicDistortionFaultCountRight2 = [infoCopy totalHarmonicDistortionFaultCountRight];
    [(HMDeviceCloudRecordInfo *)self->_cloudRecord setTotalHarmonicDistortionFaultCountRight:totalHarmonicDistortionFaultCountRight2];
  }

  freqAccuracyFaultCountRight = [infoCopy freqAccuracyFaultCountRight];

  if (freqAccuracyFaultCountRight)
  {
    freqAccuracyFaultCountRight2 = [infoCopy freqAccuracyFaultCountRight];
    [(HMDeviceCloudRecordInfo *)self->_cloudRecord setFreqAccuracyFaultCountRight:freqAccuracyFaultCountRight2];
  }

  latestDiagnosticTimestampRight = [infoCopy latestDiagnosticTimestampRight];

  if (latestDiagnosticTimestampRight)
  {
    latestDiagnosticTimestampRight2 = [infoCopy latestDiagnosticTimestampRight];
    [(HMDeviceCloudRecordInfo *)self->_cloudRecord setLatestDiagnosticTimestampRight:latestDiagnosticTimestampRight2];
  }

  return v8;
}

- (BOOL)updateWithPMEConfigData:(id)data
{
  dataCopy = data;
  v6 = dataCopy;
  if (dataCopy)
  {
    v46 = 0;
    memset(v45, 0, sizeof(v45));
    [dataCopy getBytes:v45 length:132];
    v7 = [HMDeviceRecord getHMMultiStateFromPMEState:BYTE3(v45[0])];
    pmeMediaEnabled = self->_pmeMediaEnabled;
    v9 = v7 != pmeMediaEnabled;
    if (v7 != pmeMediaEnabled)
    {
      self->_pmeMediaEnabled = v7;
    }

    v10 = [HMDeviceRecord getHMMultiStateFromPMEState:BYTE2(v45[0])];
    if (self->_pmeVoiceEnabled != v10)
    {
      self->_pmeVoiceEnabled = v10;
      v9 = 1;
    }

    v11 = [HMDeviceRecord getHMMultiStateFromPMEState:BYTE1(v45[0])];
    if (self->_pmeVoiceEnrolled != v11)
    {
      self->_pmeVoiceEnrolled = v11;
      v9 = 1;
    }

    if (self->_hearingAssistEnabled == 1)
    {
      goto LABEL_46;
    }

    v12 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v45 + 4 length:32];
    pmeVoiceLossDataLeft = self->_pmeVoiceLossDataLeft;
    v14 = v12;
    v15 = pmeVoiceLossDataLeft;
    v16 = v15;
    if (v14 == v15)
    {

      v18 = v14;
    }

    else
    {
      if ((v14 != 0) != (v15 == 0))
      {
        v17 = [(NSData *)v14 isEqual:v15];

        if (v17)
        {
LABEL_21:
          v20 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v45[2] + 4 length:32];
          pmeMediaLossDataLeft = self->_pmeMediaLossDataLeft;
          v22 = v20;
          v23 = pmeMediaLossDataLeft;
          v24 = v23;
          if (v22 == v23)
          {

            v26 = v22;
          }

          else
          {
            if ((v22 != 0) != (v23 == 0))
            {
              v25 = [(NSData *)v22 isEqual:v23];

              if (v25)
              {
LABEL_29:
                v28 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v45[4] + 4 length:32];
                pmeVoiceLossDataRight = self->_pmeVoiceLossDataRight;
                v30 = v28;
                v31 = pmeVoiceLossDataRight;
                v32 = v31;
                if (v30 == v31)
                {

                  v34 = v30;
                }

                else
                {
                  if ((v30 != 0) != (v31 == 0))
                  {
                    v33 = [(NSData *)v30 isEqual:v31];

                    if (v33)
                    {
LABEL_37:
                      v36 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v45[6] + 4 length:32];
                      pmeMediaLossDataRight = self->_pmeMediaLossDataRight;
                      v38 = v36;
                      v39 = pmeMediaLossDataRight;
                      v40 = v39;
                      if (v38 == v39)
                      {

                        v42 = v38;
                      }

                      else
                      {
                        if ((v38 != 0) != (v39 == 0))
                        {
                          v41 = [(NSData *)v38 isEqual:v39];

                          if (v41)
                          {
                            goto LABEL_45;
                          }
                        }

                        else
                        {
                        }

                        v43 = v38;
                        v42 = self->_pmeMediaLossDataRight;
                        self->_pmeMediaLossDataRight = v43;
                        v9 = 1;
                      }

LABEL_45:
LABEL_46:
                      objc_storeStrong(&self->_configDataPME, data);
                      [(HMDeviceRecord *)self _deriveMediaAssistStateIfNeeded];
                      goto LABEL_47;
                    }
                  }

                  else
                  {
                  }

                  v35 = v30;
                  v34 = self->_pmeVoiceLossDataRight;
                  self->_pmeVoiceLossDataRight = v35;
                  v9 = 1;
                }

                goto LABEL_37;
              }
            }

            else
            {
            }

            v27 = v22;
            v26 = self->_pmeMediaLossDataLeft;
            self->_pmeMediaLossDataLeft = v27;
            v9 = 1;
          }

          goto LABEL_29;
        }
      }

      else
      {
      }

      v19 = v14;
      v18 = self->_pmeVoiceLossDataLeft;
      self->_pmeVoiceLossDataLeft = v19;
      v9 = 1;
    }

    goto LABEL_21;
  }

  if (gLogCategory_HMDeviceRecord <= 90 && (gLogCategory_HMDeviceRecord != -1 || _LogCategory_Initialize()))
  {
    [HMDeviceRecord updateWithPMEConfigData:?];
  }

  v9 = 0;
LABEL_47:

  return v9;
}

- (void)getSafetyInformation:(unsigned int)information
{
  if (information && !self->_safetyInformation)
  {
    v4 = *&information;
    v5 = objc_alloc_init(HMInfo);
    [(HMInfo *)v5 setConstantsWith:v4];
    safetyInformation = self->_safetyInformation;
    self->_safetyInformation = v5;
  }
}

- (void)_deriveMediaAssistStateIfNeeded
{
  hearingAssistEnabled = self->_hearingAssistEnabled;
  if ((self->_hearingAssistEnabled || self->_pmeMediaEnabled || self->_pmeVoiceEnabled) && !self->_mediaAssistEnabled)
  {
    mediaAssistEnabled = 1;
    if (self->_pmeMediaEnabled != 1)
    {
      if (self->_pmeVoiceEnabled == 1)
      {
        mediaAssistEnabled = 1;
      }

      else
      {
        mediaAssistEnabled = 2;
      }
    }

    if (hearingAssistEnabled == 2)
    {
      mediaAssistEnabled = 2;
    }

    else if (hearingAssistEnabled != 1)
    {
      return;
    }

    self->_mediaAssistEnabled = mediaAssistEnabled;
    if (gLogCategory_HMDeviceRecord > 30)
    {
      return;
    }

    if (gLogCategory_HMDeviceRecord == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      mediaAssistEnabled = self->_mediaAssistEnabled;
    }

    if (mediaAssistEnabled > 2)
    {
      v5 = "?";
    }

    else
    {
      v5 = off_2796EE930[mediaAssistEnabled];
    }

    LogPrintF(&gLogCategory_HMDeviceRecord, "[HMDeviceRecord _deriveMediaAssistStateIfNeeded]", 30, "HMDeviceRecord identifier %@, mediaAssistEnabled changed %s --> %s", self->_bluetoothUUID, "Unknown", v5);
  }
}

- (BOOL)updateWithHearingAidConfigData:(id)data
{
  dataCopy = data;
  if (_os_feature_enabled_impl())
  {
    if (dataCopy)
    {
      memset(v149, 0, 100);
      v148 = 0;
      memset(v147, 0, sizeof(v147));
      [dataCopy getBytes:v149 length:100];
      *&v6 = LOBYTE(v149[0]);
      version = self->_version;
      v8 = LOBYTE(v149[0]) != version;
      if (LOBYTE(v149[0]) != version)
      {
        self->_version = v149[0];
      }

      if (BYTE1(v149[0]) == 2)
      {
        v10 = *(&v149[2] + 3);
        v9 = *&v149[3];
        v11 = fmax(fmin(*(&v149[2] + 1), 1.5), -1.5);
        v12 = fmax(fmin(*(&v149[5] + 1), 1.5), -1.5);
        v13 = fmaxf(fminf(*(&v149[5] + 2), 1.0), -1.0);
        *(&v142 + 1) = v11;
        v14 = v12 - v11;
        v15 = v12 + ((v12 - v11) * -0.5);
        if (gLogCategory_HMDeviceRecord > 10)
        {
          goto LABEL_18;
        }

        if (gLogCategory_HMDeviceRecord == -1)
        {
          if (!_LogCategory_Initialize())
          {
LABEL_18:
            v16 = (v14 + 1.0) * 0.5;
            *&v17 = OUTLINED_FUNCTION_7();
            v19 = [v18 numberWithFloat:v17];
            amplification = self->_amplification;
            v21 = v19;
            v22 = amplification;
            OUTLINED_FUNCTION_3_0();
            if (v23)
            {
            }

            else
            {
              OUTLINED_FUNCTION_2_0();
              if ((v24 ^ (amplification == 0)))
              {
                v25 = OUTLINED_FUNCTION_4();

                if (v25)
                {
LABEL_26:
                  *&v26 = v16;
                  v30 = [MEMORY[0x277CCABB0] numberWithFloat:v26];
                  balance = self->_balance;
                  v32 = v30;
                  v33 = balance;
                  OUTLINED_FUNCTION_3_0();
                  if (v23)
                  {
                  }

                  else
                  {
                    OUTLINED_FUNCTION_2_0();
                    if ((v34 ^ (balance == 0)))
                    {
                      v35 = OUTLINED_FUNCTION_4();

                      if (v35)
                      {
LABEL_34:
                        *&v38 = OUTLINED_FUNCTION_7();
                        v40 = [v39 numberWithFloat:v38];
                        tone = self->_tone;
                        v42 = v40;
                        v43 = tone;
                        OUTLINED_FUNCTION_3_0();
                        if (v23)
                        {
                        }

                        else
                        {
                          OUTLINED_FUNCTION_2_0();
                          if ((v44 ^ (tone == 0)))
                          {
                            v45 = OUTLINED_FUNCTION_4();

                            if (v45)
                            {
LABEL_42:
                              *&v46 = v10;
                              v50 = [MEMORY[0x277CCABB0] numberWithFloat:v46];
                              beamFormer = self->_beamFormer;
                              v52 = v50;
                              v53 = beamFormer;
                              OUTLINED_FUNCTION_3_0();
                              if (v23)
                              {
                              }

                              else
                              {
                                OUTLINED_FUNCTION_2_0();
                                if ((v54 ^ (beamFormer == 0)))
                                {
                                  v55 = OUTLINED_FUNCTION_4();

                                  if (v55)
                                  {
LABEL_50:
                                    *&v58 = OUTLINED_FUNCTION_6();
                                    v60 = [v59 numberWithFloat:v58];
                                    noiseSuppression = self->_noiseSuppression;
                                    v62 = v60;
                                    v63 = noiseSuppression;
                                    OUTLINED_FUNCTION_3_0();
                                    if (v23)
                                    {
                                    }

                                    else
                                    {
                                      OUTLINED_FUNCTION_2_0();
                                      if ((v64 ^ (noiseSuppression == 0)))
                                      {
                                        v65 = OUTLINED_FUNCTION_4();

                                        if (v65)
                                        {
LABEL_58:
                                          v146[0] = *(v149 + 4);
                                          v146[1] = *(&v149[1] + 4);
                                          v146[2] = *(&v149[2] + 4);
                                          v143 = *(&v149[3] + 4);
                                          v144 = *(&v149[4] + 4);
                                          v145 = *(&v149[5] + 4);
                                          v69 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v146 length:32];
                                          earLossDataLeft = self->_earLossDataLeft;
                                          v71 = v69;
                                          v72 = earLossDataLeft;
                                          v73 = v72;
                                          if (v71 == v72)
                                          {

                                            earLossArrayLeft = v71;
                                          }

                                          else
                                          {
                                            OUTLINED_FUNCTION_2_0();
                                            if ((v74 ^ (v73 == 0)))
                                            {
                                              v75 = [(NSArray *)v71 isEqual:v73];

                                              if (v75)
                                              {
LABEL_66:
                                                v78 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v143 length:32];
                                                earLossDataRight = self->_earLossDataRight;
                                                v80 = v78;
                                                v81 = earLossDataRight;
                                                v82 = v81;
                                                if (v80 == v81)
                                                {

                                                  earLossArrayRight = v80;
                                                }

                                                else
                                                {
                                                  if ((v80 != 0) != (v81 == 0))
                                                  {
                                                    v83 = [(NSArray *)v80 isEqual:v81];

                                                    if (v83)
                                                    {
LABEL_74:
                                                      if (self->_version < 2u)
                                                      {
                                                        goto LABEL_78;
                                                      }

                                                      [dataCopy getBytes:v147 length:104];
                                                      *&v94 = OUTLINED_FUNCTION_6();
                                                      v96 = [v95 numberWithFloat:v94];
                                                      ownVoiceLevelGain = self->_ownVoiceLevelGain;
                                                      v98 = v96;
                                                      v99 = ownVoiceLevelGain;
                                                      v100 = v99;
                                                      if (v98 == v99)
                                                      {

                                                        if (!v8)
                                                        {
                                                          goto LABEL_83;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        if ((v98 != 0) != (v99 == 0))
                                                        {
                                                          v101 = [(NSNumber *)v98 isEqual:v99];

                                                          if (v101)
                                                          {
LABEL_78:
                                                            if (v8)
                                                            {
                                                              goto LABEL_86;
                                                            }

LABEL_83:
                                                            v102 = 0;
LABEL_97:
                                                            objc_storeStrong(&self->_configDataHearingAid, data);

                                                            goto LABEL_98;
                                                          }
                                                        }

                                                        else
                                                        {
                                                        }

                                                        *&v103 = OUTLINED_FUNCTION_6();
                                                        v105 = [v104 numberWithFloat:v103];
                                                        v106 = self->_ownVoiceLevelGain;
                                                        self->_ownVoiceLevelGain = v105;
                                                      }

LABEL_86:
                                                      if (self->_version < 2u)
                                                      {
                                                        if (gLogCategory_HMDeviceRecord <= 30 && (gLogCategory_HMDeviceRecord != -1 || _LogCategory_Initialize()))
                                                        {
                                                          v117 = OUTLINED_FUNCTION_0_1(v84, v85, v86, v87, v88, v89, v90, v91, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v141, v142, *&v143, *(&v143 + 1), *&v144, *(&v144 + 1), *&v145, *(&v145 + 1), *v146);
                                                          LogPrintF(&gLogCategory_HMDeviceRecord, "[HMDeviceRecord updateWithHearingAidConfigData:]", 30, "HMDeviceRecord UUID %@, settings received: version: %d, LEFT ear loss_01_dBHL: %lf, RIGHT ear loss_01_dBHL: %lf, leftGain: %lf, rightGain: %lf, tone: %lf, amplification: %lf, balance: %lf, beamFormer: %lf, noiseSuppression: %lf", v119, v118, *&v117, v124, v125, v126, v120, v121, v122, v123, self->_noiseSuppression, v140);
                                                        }
                                                      }

                                                      else if (gLogCategory_HMDeviceRecord <= 30 && (gLogCategory_HMDeviceRecord != -1 || _LogCategory_Initialize()))
                                                      {
                                                        v107 = OUTLINED_FUNCTION_0_1(v84, v85, v86, v87, v88, v89, v90, v91, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v141, v142, *&v143, *(&v143 + 1), *&v144, *(&v144 + 1), *&v145, *(&v145 + 1), *v146);
                                                        LogPrintF(&gLogCategory_HMDeviceRecord, "[HMDeviceRecord updateWithHearingAidConfigData:]", 30, "HMDeviceRecord UUID %@, settings received: version: %d, LEFT ear loss_01_dBHL: %lf, RIGHT ear loss_01_dBHL: %lf, leftGain: %lf, rightGain: %lf, tone: %lf, amplification: %lf, balance: %lf, beamFormer: %lf, noiseSuppression: %lf, ownVoiceLevelGain: %lf", v109, v108, *&v107, v114, v115, v116, v110, v111, v112, v113, self->_noiseSuppression, self->_ownVoiceLevelGain);
                                                      }

                                                      v102 = 1;
                                                      goto LABEL_97;
                                                    }
                                                  }

                                                  else
                                                  {
                                                  }

                                                  objc_storeStrong(&self->_earLossDataRight, v78);
                                                  v93 = HMEarLossDataToArray(self->_earLossDataRight);
                                                  earLossArrayRight = self->_earLossArrayRight;
                                                  self->_earLossArrayRight = v93;
                                                  v8 = 1;
                                                }

                                                goto LABEL_74;
                                              }
                                            }

                                            else
                                            {
                                            }

                                            objc_storeStrong(&self->_earLossDataLeft, v69);
                                            v77 = HMEarLossDataToArray(self->_earLossDataLeft);
                                            earLossArrayLeft = self->_earLossArrayLeft;
                                            self->_earLossArrayLeft = v77;
                                            v8 = 1;
                                          }

                                          goto LABEL_66;
                                        }
                                      }

                                      else
                                      {
                                      }

                                      *&v66 = OUTLINED_FUNCTION_6();
                                      v68 = [v67 numberWithFloat:v66];
                                      v62 = self->_noiseSuppression;
                                      self->_noiseSuppression = v68;
                                      v8 = 1;
                                    }

                                    goto LABEL_58;
                                  }
                                }

                                else
                                {
                                }

                                *&v56 = v10;
                                v57 = [MEMORY[0x277CCABB0] numberWithFloat:v56];
                                v52 = self->_beamFormer;
                                self->_beamFormer = v57;
                                v8 = 1;
                              }

                              goto LABEL_50;
                            }
                          }

                          else
                          {
                          }

                          *&v47 = OUTLINED_FUNCTION_7();
                          v49 = [v48 numberWithFloat:v47];
                          v42 = self->_tone;
                          self->_tone = v49;
                          v8 = 1;
                        }

                        goto LABEL_42;
                      }
                    }

                    else
                    {
                    }

                    *&v36 = v16;
                    v37 = [MEMORY[0x277CCABB0] numberWithFloat:v36];
                    v32 = self->_balance;
                    self->_balance = v37;
                    v8 = 1;
                  }

                  goto LABEL_34;
                }
              }

              else
              {
              }

              *&v27 = OUTLINED_FUNCTION_7();
              v29 = [v28 numberWithFloat:v27];
              v21 = self->_amplification;
              self->_amplification = v29;
              v8 = 1;
            }

            goto LABEL_26;
          }

          *&v6 = self->_version;
        }

        v135 = v10;
        v136 = v9;
        v133 = v15;
        v134 = v14;
        v131 = v12;
        v132 = v13;
        v130 = *(&v142 + 1);
        v129 = v6;
        LogPrintF(&gLogCategory_HMDeviceRecord, "[HMDeviceRecord updateWithHearingAidConfigData:]", 10, "HMDeviceRecord UUID %@, received raw settings: version: %d, leftGain: %lf, rightGain: %lf, tone: %lf, amplification: %lf, balance: %lf, beamFormer: %lf, noiseSuppression: %lf", self->_bluetoothUUID);
        goto LABEL_18;
      }

      if (gLogCategory_HMDeviceRecord <= 90 && (gLogCategory_HMDeviceRecord != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_HMDeviceRecord, "[HMDeviceRecord updateWithHearingAidConfigData:]", 90, "## Unknown settings data received with identifier: %d. Version updated ? %d (value = %d)");
      }
    }

    else if (gLogCategory_HMDeviceRecord <= 90 && (gLogCategory_HMDeviceRecord != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_HMDeviceRecord, "[HMDeviceRecord updateWithHearingAidConfigData:]", 90, "## HMDeviceRecord identifier %@, invalid config data received", self->_bluetoothUUID);
    }
  }

  v102 = 0;
LABEL_98:

  return v102;
}

- (BOOL)updateWithHearingProtectionValue:(unsigned __int8)value
{
  valueCopy = value;
  v5 = _os_feature_enabled_impl();
  if (v5)
  {
    if (valueCopy == 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    if (v6 == self->_hearingProtectionEnabled)
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      self->_hearingProtectionEnabled = v6;
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

void __61__HMDeviceRecord_invokePendingOcclusionCompletionsWithError___block_invoke_cold_1(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = MEMORY[0x2530950A0](a1);
  v6 = v5;
  if (a3 > 7)
  {
    v7 = "?";
  }

  else
  {
    v7 = off_2796EE8F0[a3];
  }

  LogPrintF(&gLogCategory_HMDeviceRecord, "[HMDeviceRecord invokePendingOcclusionCompletionsWithError:]_block_invoke", 30, "Invoking cached occlusion result handler %@ for device identifier %@ with result: %s", v5, *(*a2 + 96), v7);
}

@end