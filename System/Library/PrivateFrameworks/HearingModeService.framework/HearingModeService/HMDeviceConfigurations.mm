@interface HMDeviceConfigurations
- (BOOL)needsUpdateToAHPSConnectionManagerForDevice:(id)device;
- (BOOL)needsUpdateToDeviceManagerForDevice:(id)device;
- (BOOL)needsUpdateToPMEConfigurationForDevice:(id)device;
- (BOOL)restoreConfigsFromCloudRecordIfNeeded:(id)needed;
- (BOOL)setEnableHearingAssistIfNeeded:(id)needed;
- (HMDeviceConfigurations)init;
- (HMDeviceConfigurations)initWithCoder:(id)coder;
- (id)descriptionWithLevel:(int)level;
- (void)encodeWithCoder:(id)coder;
- (void)setupConfigsForPPEIfNeeded:(id)needed completion:(id)completion;
- (void)updateVolumeIOS:(id)s completion:(id)completion;
@end

@implementation HMDeviceConfigurations

- (HMDeviceConfigurations)init
{
  v6.receiver = self;
  v6.super_class = HMDeviceConfigurations;
  v2 = [(HMDeviceConfigurations *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (HMDeviceConfigurations)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(HMDeviceConfigurations *)self init];
  if (v5)
  {
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_allowListeningModeOff = 0;
    }

    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_enableHearingAid = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_enableHearingAssist = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_enableHearingProtection = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_enableHearingProtectionPPE = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_enableMediaAssist = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_enablePMEMedia = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_enablePMEVoice = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_enableSwipeGain = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_enrollHearingAssist = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_enrollPMEVoice = 0;
    }

    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    v6 = HMEarLossDataToArray(v5->_mediaLossDataLeft);
    mediaLossArrayLeft = v5->_mediaLossArrayLeft;
    v5->_mediaLossArrayLeft = v6;

    v8 = HMEarLossDataToArray(v5->_mediaLossDataRight);
    mediaLossArrayRight = v5->_mediaLossArrayRight;
    v5->_mediaLossArrayRight = v8;

    v10 = HMEarLossDataToArray(v5->_voiceLossDataLeft);
    voiceLossArrayLeft = v5->_voiceLossArrayLeft;
    v5->_voiceLossArrayLeft = v10;

    v12 = HMEarLossDataToArray(v5->_voiceLossDataRight);
    voiceLossArrayRight = v5->_voiceLossArrayRight;
    v5->_voiceLossArrayRight = v12;

    v14 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = HMEarLossArrayToData(self->_mediaLossArrayLeft);
  mediaLossDataLeft = self->_mediaLossDataLeft;
  self->_mediaLossDataLeft = v4;

  v6 = HMEarLossArrayToData(self->_mediaLossArrayRight);
  mediaLossDataRight = self->_mediaLossDataRight;
  self->_mediaLossDataRight = v6;

  v8 = HMEarLossArrayToData(self->_voiceLossArrayLeft);
  voiceLossDataLeft = self->_voiceLossDataLeft;
  self->_voiceLossDataLeft = v8;

  v10 = HMEarLossArrayToData(self->_voiceLossArrayRight);
  voiceLossDataRight = self->_voiceLossDataRight;
  self->_voiceLossDataRight = v10;

  if (self->_allowListeningModeOff)
  {
    [coderCopy encodeInteger:? forKey:?];
  }

  amplification = self->_amplification;
  if (amplification)
  {
    [coderCopy encodeObject:amplification forKey:@"ampl"];
  }

  balance = self->_balance;
  v14 = coderCopy;
  if (balance)
  {
    [coderCopy encodeObject:balance forKey:@"balc"];
    v14 = coderCopy;
  }

  beamFormer = self->_beamFormer;
  if (beamFormer)
  {
    [coderCopy encodeObject:beamFormer forKey:@"bmFm"];
    v14 = coderCopy;
  }

  if (self->_enableHearingAid)
  {
    [coderCopy encodeInteger:? forKey:?];
    v14 = coderCopy;
  }

  if (self->_enableHearingAssist)
  {
    [coderCopy encodeInteger:? forKey:?];
    v14 = coderCopy;
  }

  if (self->_enableHearingProtection)
  {
    [coderCopy encodeInteger:? forKey:?];
    v14 = coderCopy;
  }

  if (self->_enableHearingProtectionPPE)
  {
    [coderCopy encodeInteger:? forKey:?];
    v14 = coderCopy;
  }

  if (self->_enableMediaAssist)
  {
    [coderCopy encodeInteger:? forKey:?];
    v14 = coderCopy;
  }

  if (self->_enablePMEMedia)
  {
    [coderCopy encodeInteger:? forKey:?];
    v14 = coderCopy;
  }

  if (self->_enablePMEVoice)
  {
    [coderCopy encodeInteger:? forKey:?];
    v14 = coderCopy;
  }

  if (self->_enableSwipeGain)
  {
    [coderCopy encodeInteger:? forKey:?];
    v14 = coderCopy;
  }

  if (self->_enrollHearingAssist)
  {
    [coderCopy encodeInteger:? forKey:?];
    v14 = coderCopy;
  }

  if (self->_enrollPMEVoice)
  {
    [coderCopy encodeInteger:? forKey:?];
    v14 = coderCopy;
  }

  v16 = self->_mediaLossDataLeft;
  if (v16)
  {
    [coderCopy encodeObject:v16 forKey:@"mLDL"];
    v14 = coderCopy;
  }

  v17 = self->_mediaLossDataRight;
  if (v17)
  {
    [coderCopy encodeObject:v17 forKey:@"mLDR"];
    v14 = coderCopy;
  }

  noiseSuppression = self->_noiseSuppression;
  if (noiseSuppression)
  {
    [coderCopy encodeObject:noiseSuppression forKey:@"nsSp"];
    v14 = coderCopy;
  }

  ownVoiceLevelGain = self->_ownVoiceLevelGain;
  if (ownVoiceLevelGain)
  {
    [coderCopy encodeObject:ownVoiceLevelGain forKey:@"oVLG"];
    v14 = coderCopy;
  }

  selectedAudiogram = self->_selectedAudiogram;
  if (selectedAudiogram)
  {
    [coderCopy encodeObject:selectedAudiogram forKey:@"Agrm"];
    v14 = coderCopy;
  }

  tone = self->_tone;
  if (tone)
  {
    [coderCopy encodeObject:tone forKey:@"tone"];
    v14 = coderCopy;
  }

  v22 = self->_voiceLossDataLeft;
  if (v22)
  {
    [coderCopy encodeObject:v22 forKey:@"vLDL"];
    v14 = coderCopy;
  }

  v23 = self->_voiceLossDataRight;
  if (v23)
  {
    [coderCopy encodeObject:v23 forKey:@"vLDR"];
    v14 = coderCopy;
  }
}

- (id)descriptionWithLevel:(int)level
{
  v113 = 0;
  v5 = [objc_opt_class() description];
  NSAppendPrintF_safe(&v113, "%@", v5);
  v6 = v113;

  amplification = self->_amplification;
  if (amplification)
  {
    v112 = v6;
    v8 = amplification;
    NSAppendPrintF_safe(&v112, ", Amp %@", v8);
    v9 = v112;

    v6 = v9;
  }

  balance = self->_balance;
  if (balance)
  {
    v111 = v6;
    v11 = balance;
    NSAppendPrintF_safe(&v111, ", Bal %@", v11);
    v12 = v111;

    v6 = v12;
  }

  beamFormer = self->_beamFormer;
  if (beamFormer)
  {
    v110 = v6;
    v14 = beamFormer;
    NSAppendPrintF_safe(&v110, ", BmFm %@", v14);
    v15 = v110;

    v6 = v15;
  }

  enableHearingAid = self->_enableHearingAid;
  if (self->_enableHearingAid)
  {
    if (enableHearingAid == 1)
    {
      v17 = "Yes";
    }

    else
    {
      v17 = "?";
    }

    if (enableHearingAid == 2)
    {
      v18 = "No";
    }

    else
    {
      v18 = v17;
    }

    v109 = v6;
    NSAppendPrintF_safe(&v109, ", En Hr Aid %s", v18);
    v19 = v109;

    v6 = v19;
  }

  enableHearingAssist = self->_enableHearingAssist;
  if (self->_enableHearingAssist)
  {
    if (enableHearingAssist == 1)
    {
      v21 = "Yes";
    }

    else
    {
      v21 = "?";
    }

    if (enableHearingAssist == 2)
    {
      v22 = "No";
    }

    else
    {
      v22 = v21;
    }

    v108 = v6;
    NSAppendPrintF_safe(&v108, ", En HA %s", v22);
    v23 = v108;

    v6 = v23;
  }

  enableHearingProtection = self->_enableHearingProtection;
  if (self->_enableHearingProtection)
  {
    if (enableHearingProtection == 1)
    {
      v25 = "Yes";
    }

    else
    {
      v25 = "?";
    }

    if (enableHearingProtection == 2)
    {
      v26 = "No";
    }

    else
    {
      v26 = v25;
    }

    v107 = v6;
    NSAppendPrintF_safe(&v107, ", En HP %s", v26);
    v27 = v107;

    v6 = v27;
  }

  enableHearingProtectionPPE = self->_enableHearingProtectionPPE;
  if (self->_enableHearingProtectionPPE)
  {
    if (enableHearingProtectionPPE == 1)
    {
      v29 = "Yes";
    }

    else
    {
      v29 = "?";
    }

    if (enableHearingProtectionPPE == 2)
    {
      v30 = "No";
    }

    else
    {
      v30 = v29;
    }

    v106 = v6;
    NSAppendPrintF_safe(&v106, ", En HPPPE %s", v30);
    v31 = v106;

    v6 = v31;
  }

  enableMediaAssist = self->_enableMediaAssist;
  if (self->_enableMediaAssist)
  {
    if (enableMediaAssist == 1)
    {
      v33 = "Yes";
    }

    else
    {
      v33 = "?";
    }

    if (enableMediaAssist == 2)
    {
      v34 = "No";
    }

    else
    {
      v34 = v33;
    }

    v105 = v6;
    NSAppendPrintF_safe(&v105, ", En MA %s", v34);
    v35 = v105;

    v6 = v35;
  }

  enablePMEMedia = self->_enablePMEMedia;
  if (self->_enablePMEMedia)
  {
    if (enablePMEMedia == 1)
    {
      v37 = "Yes";
    }

    else
    {
      v37 = "?";
    }

    if (enablePMEMedia == 2)
    {
      v38 = "No";
    }

    else
    {
      v38 = v37;
    }

    v104 = v6;
    NSAppendPrintF_safe(&v104, ", En PME Media %s", v38);
    v39 = v104;

    v6 = v39;
  }

  enablePMEVoice = self->_enablePMEVoice;
  if (self->_enablePMEVoice)
  {
    if (enablePMEVoice == 1)
    {
      v41 = "Yes";
    }

    else
    {
      v41 = "?";
    }

    if (enablePMEVoice == 2)
    {
      v42 = "No";
    }

    else
    {
      v42 = v41;
    }

    v103 = v6;
    NSAppendPrintF_safe(&v103, ", En PME Voice %s", v42);
    v43 = v103;

    v6 = v43;
  }

  enableSwipeGain = self->_enableSwipeGain;
  if (self->_enableSwipeGain)
  {
    if (enableSwipeGain == 1)
    {
      v45 = "Yes";
    }

    else
    {
      v45 = "?";
    }

    if (enableSwipeGain == 2)
    {
      v46 = "No";
    }

    else
    {
      v46 = v45;
    }

    v102 = v6;
    NSAppendPrintF_safe(&v102, ", En Swp Gn %s", v46);
    v47 = v102;

    v6 = v47;
  }

  enrollHearingAssist = self->_enrollHearingAssist;
  if (self->_enrollHearingAssist)
  {
    if (enrollHearingAssist == 1)
    {
      v49 = "Yes";
    }

    else
    {
      v49 = "?";
    }

    if (enrollHearingAssist == 2)
    {
      v50 = "No";
    }

    else
    {
      v50 = v49;
    }

    v101 = v6;
    NSAppendPrintF_safe(&v101, ", Enroll HA %s", v50);
    v51 = v101;

    v6 = v51;
  }

  enrollPMEVoice = self->_enrollPMEVoice;
  if (self->_enrollPMEVoice)
  {
    if (enrollPMEVoice == 1)
    {
      v53 = "Yes";
    }

    else
    {
      v53 = "?";
    }

    if (enrollPMEVoice == 2)
    {
      v54 = "No";
    }

    else
    {
      v54 = v53;
    }

    v100 = v6;
    NSAppendPrintF_safe(&v100, ", Enroll PME Voice %s", v54);
    v55 = v100;

    v6 = v55;
  }

  allowListeningModeOff = self->_allowListeningModeOff;
  if (self->_allowListeningModeOff)
  {
    if (allowListeningModeOff == 1)
    {
      v57 = "Yes";
    }

    else
    {
      v57 = "?";
    }

    if (allowListeningModeOff == 2)
    {
      v58 = "No";
    }

    else
    {
      v58 = v57;
    }

    v99 = v6;
    NSAppendPrintF_safe(&v99, ", LsMd Off %s", v58);
    v59 = v99;

    v6 = v59;
  }

  mediaLossArrayLeft = self->_mediaLossArrayLeft;
  if (mediaLossArrayLeft)
  {
    v98 = v6;
    v61 = mediaLossArrayLeft;
    firstObject = [(NSArray *)v61 firstObject];
    NSAppendPrintF_safe(&v98, ", Media Loss Left loss_01_dbHL %@", firstObject);
    v63 = v98;

    v6 = v63;
  }

  mediaLossArrayRight = self->_mediaLossArrayRight;
  if (mediaLossArrayRight)
  {
    v97 = v6;
    v65 = mediaLossArrayRight;
    firstObject2 = [(NSArray *)v65 firstObject];
    NSAppendPrintF_safe(&v97, ", Media Loss Right loss_01_dbHL %@", firstObject2);
    v67 = v97;

    v6 = v67;
  }

  noiseSuppression = self->_noiseSuppression;
  if (noiseSuppression)
  {
    v96 = v6;
    v69 = noiseSuppression;
    NSAppendPrintF_safe(&v96, ", Noise Sup %@", v69);
    v70 = v96;

    v6 = v70;
  }

  ownVoiceLevelGain = self->_ownVoiceLevelGain;
  if (ownVoiceLevelGain)
  {
    v95 = v6;
    v72 = ownVoiceLevelGain;
    NSAppendPrintF_safe(&v95, ", Own Vc LG %@", v72);
    v73 = v95;

    v6 = v73;
  }

  selectedAudiogram = self->_selectedAudiogram;
  if (selectedAudiogram)
  {
    v94 = v6;
    v75 = selectedAudiogram;
    NSAppendPrintF_safe(&v94, ", Selected Audiogram %@", v75);
    v76 = v94;

    v6 = v76;
  }

  tone = self->_tone;
  if (tone)
  {
    v93 = v6;
    v78 = tone;
    NSAppendPrintF_safe(&v93, ", Tone %@", v78);
    v79 = v93;

    v6 = v79;
  }

  voiceLossArrayLeft = self->_voiceLossArrayLeft;
  if (voiceLossArrayLeft)
  {
    v92 = v6;
    v81 = voiceLossArrayLeft;
    firstObject3 = [(NSArray *)v81 firstObject];
    NSAppendPrintF_safe(&v92, ", Voice Loss Left loss_01_dbHL %@", firstObject3);
    v83 = v92;

    v6 = v83;
  }

  voiceLossArrayRight = self->_voiceLossArrayRight;
  if (voiceLossArrayRight)
  {
    v91 = v6;
    v85 = voiceLossArrayRight;
    firstObject4 = [(NSArray *)v85 firstObject];
    NSAppendPrintF_safe(&v91, ", Voice Loss Right loss_01_dbHL %@", firstObject4);
    v87 = v91;

    v6 = v87;
  }

  if (level < 21)
  {
    v90 = v6;
    NSAppendPrintF_safe(&v90, "\n");
    v88 = v90;

    v6 = v88;
  }

  return v6;
}

- (BOOL)needsUpdateToAHPSConnectionManagerForDevice:(id)device
{
  deviceCopy = device;
  selectedAudiogram = self->_selectedAudiogram;
  v6 = selectedAudiogram != 0;
  if (selectedAudiogram)
  {
    amplification = self->_amplification;
    self->_amplification = &unk_286437A30;

    balance = self->_balance;
    self->_balance = &unk_286437A30;

    ownVoiceLevelGain = self->_ownVoiceLevelGain;
    self->_ownVoiceLevelGain = &unk_286437A30;

    tone = self->_tone;
    self->_tone = &unk_286437A30;

    noiseSuppression = self->_noiseSuppression;
    self->_noiseSuppression = &unk_286437AD0;

    beamFormer = self->_beamFormer;
    self->_beamFormer = &unk_286437AD0;
  }

  v13 = self->_amplification;
  if (v13)
  {
    [(NSNumber *)v13 floatValue];
    v15 = v14;
    amplification = [deviceCopy amplification];
    [amplification floatValue];
    v18 = v17;

    if (v15 != v18)
    {
      if (gLogCategory_HMDeviceConfigurations <= 30 && (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize()))
      {
        [HMDeviceConfigurations needsUpdateToAHPSConnectionManagerForDevice:deviceCopy];
      }

      v6 = 1;
    }
  }

  v19 = self->_balance;
  if (v19)
  {
    [(NSNumber *)v19 floatValue];
    v21 = v20;
    balance = [deviceCopy balance];
    [balance floatValue];
    v24 = v23;

    if (v21 != v24)
    {
      if (gLogCategory_HMDeviceConfigurations <= 30 && (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize()))
      {
        [HMDeviceConfigurations needsUpdateToAHPSConnectionManagerForDevice:deviceCopy];
      }

      v6 = 1;
    }
  }

  v25 = self->_beamFormer;
  if (v25)
  {
    [(NSNumber *)v25 floatValue];
    v27 = v26;
    beamFormer = [deviceCopy beamFormer];
    [beamFormer floatValue];
    v30 = v29;

    if (v27 != v30)
    {
      if (gLogCategory_HMDeviceConfigurations <= 30 && (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize()))
      {
        [HMDeviceConfigurations needsUpdateToAHPSConnectionManagerForDevice:deviceCopy];
      }

      v6 = 1;
    }
  }

  v31 = self->_noiseSuppression;
  if (v31)
  {
    [(NSNumber *)v31 floatValue];
    v33 = v32;
    noiseSuppression = [deviceCopy noiseSuppression];
    [noiseSuppression floatValue];
    v36 = v35;

    if (v33 != v36)
    {
      if (gLogCategory_HMDeviceConfigurations <= 30 && (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize()))
      {
        [HMDeviceConfigurations needsUpdateToAHPSConnectionManagerForDevice:deviceCopy];
      }

      v6 = 1;
    }
  }

  v37 = self->_ownVoiceLevelGain;
  if (v37)
  {
    [(NSNumber *)v37 floatValue];
    v39 = v38;
    ownVoiceLevelGain = [deviceCopy ownVoiceLevelGain];
    [ownVoiceLevelGain floatValue];
    v42 = v41;

    if (v39 != v42)
    {
      if (gLogCategory_HMDeviceConfigurations <= 30 && (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize()))
      {
        [HMDeviceConfigurations needsUpdateToAHPSConnectionManagerForDevice:deviceCopy];
      }

      v6 = 1;
    }
  }

  v43 = self->_tone;
  if (v43)
  {
    [(NSNumber *)v43 floatValue];
    v45 = v44;
    tone = [deviceCopy tone];
    [tone floatValue];
    v48 = v47;

    if (v45 != v48)
    {
      if (gLogCategory_HMDeviceConfigurations <= 30 && (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize()))
      {
        [HMDeviceConfigurations needsUpdateToAHPSConnectionManagerForDevice:deviceCopy];
      }

      v6 = 1;
    }
  }

  return v6;
}

- (BOOL)needsUpdateToDeviceManagerForDevice:(id)device
{
  deviceCopy = device;
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_4;
  }

  allowListeningModeOff = self->_allowListeningModeOff;
  if (self->_allowListeningModeOff)
  {
    if (allowListeningModeOff == [deviceCopy listeningModeOffAllowed])
    {
LABEL_4:
      LOBYTE(allowListeningModeOff) = 0;
      goto LABEL_5;
    }

    if (gLogCategory_HMDeviceConfigurations <= 30 && (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceConfigurations needsUpdateToDeviceManagerForDevice:deviceCopy];
    }

    LOBYTE(allowListeningModeOff) = 1;
  }

LABEL_5:
  if (self->_enrollHearingAssist)
  {
    enrollHearingAssist = self->_enrollHearingAssist;
    if (enrollHearingAssist != [deviceCopy hearingAssistEnrolled])
    {
      if (gLogCategory_HMDeviceConfigurations <= 30 && (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize()))
      {
        [HMDeviceConfigurations needsUpdateToDeviceManagerForDevice:deviceCopy];
      }

      LOBYTE(allowListeningModeOff) = 1;
    }
  }

  if (self->_enableHearingAid)
  {
    enableHearingAid = self->_enableHearingAid;
    if (enableHearingAid != [deviceCopy hearingAidEnabled])
    {
      if (gLogCategory_HMDeviceConfigurations <= 30 && (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize()))
      {
        [HMDeviceConfigurations needsUpdateToDeviceManagerForDevice:deviceCopy];
      }

      if (self->_enableHearingAid == 2)
      {
        self->_enableSwipeGain = 2;
      }

      LOBYTE(allowListeningModeOff) = 1;
    }
  }

  if (self->_enableSwipeGain)
  {
    enableSwipeGain = self->_enableSwipeGain;
    if (enableSwipeGain != [deviceCopy swipeGainEnabled])
    {
      if (gLogCategory_HMDeviceConfigurations <= 30 && (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize()))
      {
        [HMDeviceConfigurations needsUpdateToDeviceManagerForDevice:deviceCopy];
      }

      LOBYTE(allowListeningModeOff) = 1;
    }
  }

  if (self->_selectedAudiogram)
  {
    if (gLogCategory_HMDeviceConfigurations <= 30 && (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize()))
    {
      [(HMDeviceConfigurations *)deviceCopy needsUpdateToDeviceManagerForDevice:?];
    }

    LOBYTE(allowListeningModeOff) = 1;
  }

  if (_os_feature_enabled_impl())
  {
    enableHearingProtectionPPE = self->_enableHearingProtectionPPE;
    if (enableHearingProtectionPPE != [deviceCopy hearingProtectionPPEEnabled])
    {
      if (gLogCategory_HMDeviceConfigurations <= 30 && (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize()))
      {
        [HMDeviceConfigurations needsUpdateToDeviceManagerForDevice:deviceCopy];
      }

      LOBYTE(allowListeningModeOff) = 1;
    }
  }

  v10 = [(HMDeviceConfigurations *)self setEnableHearingAssistIfNeeded:deviceCopy];

  return allowListeningModeOff | v10;
}

- (BOOL)needsUpdateToPMEConfigurationForDevice:(id)device
{
  deviceCopy = device;
  enableMediaAssist = self->_enableMediaAssist;
  v6 = self->_enableMediaAssist != 0;
  if (self->_enableMediaAssist)
  {
    if (gLogCategory_HMDeviceConfigurations <= 30)
    {
      if (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize())
      {
        [HMDeviceConfigurations needsUpdateToPMEConfigurationForDevice:deviceCopy];
      }

      enableMediaAssist = self->_enableMediaAssist;
    }

    if (enableMediaAssist == 2)
    {
      *&self->_enablePMEMedia = 514;
    }
  }

  if (self->_enablePMEMedia)
  {
    enablePMEMedia = self->_enablePMEMedia;
    if (enablePMEMedia != [deviceCopy pmeMediaEnabled])
    {
      if (gLogCategory_HMDeviceConfigurations <= 30 && (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize()))
      {
        [HMDeviceConfigurations needsUpdateToPMEConfigurationForDevice:deviceCopy];
      }

      v6 = 1;
    }
  }

  if (self->_enablePMEVoice)
  {
    enablePMEVoice = self->_enablePMEVoice;
    if (enablePMEVoice != [deviceCopy pmeVoiceEnabled])
    {
      if (gLogCategory_HMDeviceConfigurations <= 30 && (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize()))
      {
        [HMDeviceConfigurations needsUpdateToPMEConfigurationForDevice:deviceCopy];
      }

      v6 = 1;
    }
  }

  if (self->_enrollPMEVoice)
  {
    enrollPMEVoice = self->_enrollPMEVoice;
    if (enrollPMEVoice != [deviceCopy pmeVoiceEnrolled])
    {
      if (gLogCategory_HMDeviceConfigurations <= 30 && (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize()))
      {
        [HMDeviceConfigurations needsUpdateToPMEConfigurationForDevice:deviceCopy];
      }

      v6 = 1;
    }
  }

  mediaLossDataLeft = self->_mediaLossDataLeft;
  if (mediaLossDataLeft)
  {
    pmeMediaLossDataLeft = [deviceCopy pmeMediaLossDataLeft];
    v12 = mediaLossDataLeft;
    v13 = pmeMediaLossDataLeft;
    v14 = v13;
    if (v12 == v13)
    {

      goto LABEL_37;
    }

    if (v13)
    {
      v15 = [(NSData *)v12 isEqual:v13];

      if (v15)
      {
        goto LABEL_37;
      }
    }

    else
    {
    }

    if (gLogCategory_HMDeviceConfigurations <= 30)
    {
      if (gLogCategory_HMDeviceConfigurations != -1 || (v16 = _LogCategory_Initialize(), v16))
      {
        [(HMDeviceConfigurations *)v16 needsUpdateToPMEConfigurationForDevice:v17, v18];
      }
    }

    v6 = 1;
  }

LABEL_37:
  mediaLossDataRight = self->_mediaLossDataRight;
  if (!mediaLossDataRight)
  {
    goto LABEL_48;
  }

  pmeMediaLossDataRight = [deviceCopy pmeMediaLossDataRight];
  v21 = mediaLossDataRight;
  v22 = pmeMediaLossDataRight;
  v23 = v22;
  if (v21 == v22)
  {

    goto LABEL_48;
  }

  if (v22)
  {
    v24 = [(NSData *)v21 isEqual:v22];

    if (v24)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  if (gLogCategory_HMDeviceConfigurations <= 30)
  {
    if (gLogCategory_HMDeviceConfigurations != -1 || (v25 = _LogCategory_Initialize(), v25))
    {
      [(HMDeviceConfigurations *)v25 needsUpdateToPMEConfigurationForDevice:v26, v27];
    }
  }

  v6 = 1;
LABEL_48:
  voiceLossDataLeft = self->_voiceLossDataLeft;
  if (!voiceLossDataLeft)
  {
    goto LABEL_59;
  }

  pmeVoiceLossDataLeft = [deviceCopy pmeVoiceLossDataLeft];
  v30 = voiceLossDataLeft;
  v31 = pmeVoiceLossDataLeft;
  v32 = v31;
  if (v30 == v31)
  {

    goto LABEL_59;
  }

  if (v31)
  {
    v33 = [(NSData *)v30 isEqual:v31];

    if (v33)
    {
      goto LABEL_59;
    }
  }

  else
  {
  }

  if (gLogCategory_HMDeviceConfigurations <= 30)
  {
    if (gLogCategory_HMDeviceConfigurations != -1 || (v34 = _LogCategory_Initialize(), v34))
    {
      [(HMDeviceConfigurations *)v34 needsUpdateToPMEConfigurationForDevice:v35, v36];
    }
  }

  v6 = 1;
LABEL_59:
  voiceLossDataRight = self->_voiceLossDataRight;
  if (voiceLossDataRight)
  {
    pmeVoiceLossDataRight = [deviceCopy pmeVoiceLossDataRight];
    v39 = voiceLossDataRight;
    v40 = pmeVoiceLossDataRight;
    v41 = v40;
    if (v39 == v40)
    {
    }

    else
    {
      if (v40)
      {
        v42 = [(NSData *)v39 isEqual:v40];

        if (v42)
        {
          goto LABEL_70;
        }
      }

      else
      {
      }

      if (gLogCategory_HMDeviceConfigurations <= 30)
      {
        if (gLogCategory_HMDeviceConfigurations != -1 || (v43 = _LogCategory_Initialize(), v43))
        {
          [(HMDeviceConfigurations *)v43 needsUpdateToPMEConfigurationForDevice:v44, v45];
        }
      }

      v6 = 1;
    }
  }

LABEL_70:

  return v6;
}

- (void)setupConfigsForPPEIfNeeded:(id)needed completion:(id)completion
{
  neededCopy = needed;
  completionCopy = completion;
  enableHearingProtectionPPE = self->_enableHearingProtectionPPE;
  if (enableHearingProtectionPPE == 2)
  {
    [(HMDeviceConfigurations *)self updateVolumeIOS:neededCopy completion:completionCopy];
  }

  else
  {
    if (enableHearingProtectionPPE == 1)
    {
      if (gLogCategory_HMDeviceConfigurations <= 30 && (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize()))
      {
        [HMDeviceConfigurations setupConfigsForPPEIfNeeded:neededCopy completion:?];
      }

      self->_enableHearingProtection = 1;
      self->_allowListeningModeOff = 2;
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

- (BOOL)restoreConfigsFromCloudRecordIfNeeded:(id)needed
{
  neededCopy = needed;
  cloudRecord = [neededCopy cloudRecord];

  if (cloudRecord)
  {
    if (self->_enableHearingAid == 1 && !self->_enableSwipeGain && ([neededCopy cloudRecord], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "swipeGainEnabled"), v10, v11))
    {
      p_enableMediaAssist = &self->_enableMediaAssist;
      enableMediaAssist = self->_enableMediaAssist;
      self->_enableSwipeGain = v11;
      if (enableMediaAssist != 1)
      {
LABEL_21:
        if (gLogCategory_HMDeviceConfigurations <= 30 && (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize()))
        {
          [HMDeviceConfigurations restoreConfigsFromCloudRecordIfNeeded:?];
        }

        LOBYTE(v6) = 1;
        goto LABEL_25;
      }

      v6 = 1;
    }

    else
    {
      v6 = 0;
      p_enableMediaAssist = &self->_enableMediaAssist;
      if (self->_enableMediaAssist != 1)
      {
        goto LABEL_25;
      }
    }

    if (!self->_enablePMEMedia)
    {
      cloudRecord2 = [neededCopy cloudRecord];
      pmeMediaEnabled = [cloudRecord2 pmeMediaEnabled];

      if (pmeMediaEnabled)
      {
        self->_enablePMEMedia = pmeMediaEnabled;
        v6 = 1;
      }
    }

    if (*p_enableMediaAssist == 1 && !self->_enablePMEVoice && ([neededCopy cloudRecord], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "pmeVoiceEnabled"), v13, v14))
    {
      self->_enablePMEVoice = v14;
    }

    else if (!v6)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  if (gLogCategory_HMDeviceConfigurations <= 90 && (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize()))
  {
    [HMDeviceConfigurations restoreConfigsFromCloudRecordIfNeeded:neededCopy];
  }

  LOBYTE(v6) = 0;
LABEL_25:

  return v6;
}

- (BOOL)setEnableHearingAssistIfNeeded:(id)needed
{
  neededCopy = needed;
  v5 = neededCopy;
  enableMediaAssist = self->_enableMediaAssist;
  enableHearingAid = self->_enableHearingAid;
  if (self->_enableMediaAssist)
  {
    if (!self->_enableHearingAid)
    {
      LOBYTE(enableHearingAid) = 1;
      if (enableMediaAssist != 1)
      {
        if ([neededCopy hearingAidEnabled] == 1)
        {
          LOBYTE(enableHearingAid) = 1;
        }

        else
        {
          LOBYTE(enableHearingAid) = 2;
        }
      }

      goto LABEL_12;
    }

    v8 = enableHearingAid == 1 || enableMediaAssist == 1;
    goto LABEL_9;
  }

  if (self->_enableHearingAid)
  {
    if (enableHearingAid == 1)
    {
LABEL_12:
      self->_enableHearingAssist = enableHearingAid;
      goto LABEL_13;
    }

    v8 = [neededCopy mediaAssistEnabled] == 1;
LABEL_9:
    if (v8)
    {
      LOBYTE(enableHearingAid) = 1;
    }

    else
    {
      LOBYTE(enableHearingAid) = 2;
    }

    goto LABEL_12;
  }

LABEL_13:
  if (self->_enableHearingAssist && (enableHearingAssist = self->_enableHearingAssist, enableHearingAssist != [v5 hearingAssistEnabled]))
  {
    if (gLogCategory_HMDeviceConfigurations <= 30 && (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceConfigurations setEnableHearingAssistIfNeeded:v5];
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)updateVolumeIOS:(id)s completion:(id)completion
{
  sCopy = s;
  completionCopy = completion;
  aaDevice = [sCopy aaDevice];
  routed = [aaDevice routed];

  if ((routed & 1) == 0)
  {
    [HMDeviceConfigurations updateVolumeIOS:completionCopy completion:sCopy];
    goto LABEL_14;
  }

  v18 = 0.0;
  mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedAVSystemController];
  v10 = [mEMORY[0x277D26E58] getVolume:&v18 forCategory:@"Audio/Video"];

  if ((v10 & 1) == 0)
  {
    [HMDeviceConfigurations updateVolumeIOS:completionCopy completion:?];
    goto LABEL_14;
  }

  *&v11 = v18;
  if (v18 <= 0.5)
  {
    [(HMDeviceConfigurations *)completionCopy updateVolumeIOS:v18 completion:?];
    goto LABEL_14;
  }

  mEMORY[0x277D26E58]2 = [MEMORY[0x277D26E58] sharedAVSystemController];
  LODWORD(v13) = 0.5;
  v14 = [mEMORY[0x277D26E58]2 setVolumeTo:@"Audio/Video" forCategory:v13];

  if (!v14)
  {
    if (gLogCategory_HMDeviceConfigurations <= 90 && (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceConfigurations updateVolumeIOS:sCopy completion:?];
      if (!completionCopy)
      {
        goto LABEL_14;
      }
    }

    else if (!completionCopy)
    {
      goto LABEL_14;
    }

    completionCopy[2](completionCopy);
    goto LABEL_14;
  }

  if (gLogCategory_HMDeviceConfigurations <= 30 && (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize()))
  {
    [HMDeviceConfigurations updateVolumeIOS:sCopy completion:?];
  }

  v15 = dispatch_time(0, 200000000);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __53__HMDeviceConfigurations_updateVolumeIOS_completion___block_invoke;
  v16[3] = &unk_2796EE6F8;
  v17 = completionCopy;
  dispatch_after(v15, MEMORY[0x277D85CD0], v16);

LABEL_14:
}

uint64_t __53__HMDeviceConfigurations_updateVolumeIOS_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)needsUpdateToAHPSConnectionManagerForDevice:(void *)a1 .cold.1(void *a1)
{
  [a1 amplification];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_0();
  LogPrintF(&gLogCategory_HMDeviceConfigurations, "[HMDeviceConfigurations needsUpdateToAHPSConnectionManagerForDevice:]", 30, "changing amplification %@ --> %@");
}

- (void)needsUpdateToAHPSConnectionManagerForDevice:(void *)a1 .cold.2(void *a1)
{
  [a1 balance];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_0();
  LogPrintF(&gLogCategory_HMDeviceConfigurations, "[HMDeviceConfigurations needsUpdateToAHPSConnectionManagerForDevice:]", 30, "changing balance %@ --> %@");
}

- (void)needsUpdateToAHPSConnectionManagerForDevice:(void *)a1 .cold.3(void *a1)
{
  [a1 beamFormer];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_0();
  LogPrintF(&gLogCategory_HMDeviceConfigurations, "[HMDeviceConfigurations needsUpdateToAHPSConnectionManagerForDevice:]", 30, "changing beam former %@ --> %@");
}

- (void)needsUpdateToAHPSConnectionManagerForDevice:(void *)a1 .cold.4(void *a1)
{
  [a1 noiseSuppression];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_0();
  LogPrintF(&gLogCategory_HMDeviceConfigurations, "[HMDeviceConfigurations needsUpdateToAHPSConnectionManagerForDevice:]", 30, "changing noise suppression %@ --> %@");
}

- (void)needsUpdateToAHPSConnectionManagerForDevice:(void *)a1 .cold.5(void *a1)
{
  [a1 ownVoiceLevelGain];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_0();
  LogPrintF(&gLogCategory_HMDeviceConfigurations, "[HMDeviceConfigurations needsUpdateToAHPSConnectionManagerForDevice:]", 30, "changing ownVoiceLevelGain %@ --> %@");
}

- (void)needsUpdateToAHPSConnectionManagerForDevice:(void *)a1 .cold.6(void *a1)
{
  [a1 tone];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_0();
  LogPrintF(&gLogCategory_HMDeviceConfigurations, "[HMDeviceConfigurations needsUpdateToAHPSConnectionManagerForDevice:]", 30, "changing tone %@ --> %@");
}

- (uint64_t)needsUpdateToDeviceManagerForDevice:(void *)a1 .cold.1(void *a1)
{
  [a1 listeningModeOffAllowed];
  OUTLINED_FUNCTION_2();
  if (!v5 & v4)
  {
    v6 = "?";
  }

  else
  {
    v6 = *(v2 + 8 * v3);
  }

  return LogPrintF(&gLogCategory_HMDeviceConfigurations, "[HMDeviceConfigurations needsUpdateToDeviceManagerForDevice:]", 30, "changing allow OFF listening mode %s --> %s", v1, v6);
}

- (uint64_t)needsUpdateToDeviceManagerForDevice:(void *)a1 .cold.2(void *a1)
{
  [a1 hearingAssistEnrolled];
  OUTLINED_FUNCTION_2();
  if (!v5 & v4)
  {
    v6 = "?";
  }

  else
  {
    v6 = *(v2 + 8 * v3);
  }

  return LogPrintF(&gLogCategory_HMDeviceConfigurations, "[HMDeviceConfigurations needsUpdateToDeviceManagerForDevice:]", 30, "changing HearingAssist enroll %s --> %s", v1, v6);
}

- (uint64_t)needsUpdateToDeviceManagerForDevice:(void *)a1 .cold.3(void *a1)
{
  [a1 hearingAidEnabled];
  OUTLINED_FUNCTION_2();
  if (!v5 & v4)
  {
    v6 = "?";
  }

  else
  {
    v6 = *(v2 + 8 * v3);
  }

  return LogPrintF(&gLogCategory_HMDeviceConfigurations, "[HMDeviceConfigurations needsUpdateToDeviceManagerForDevice:]", 30, "changing HearingAid enable %s --> %s", v1, v6);
}

- (uint64_t)needsUpdateToDeviceManagerForDevice:(void *)a1 .cold.4(void *a1)
{
  [a1 swipeGainEnabled];
  OUTLINED_FUNCTION_2();
  if (!v5 & v4)
  {
    v6 = "?";
  }

  else
  {
    v6 = *(v2 + 8 * v3);
  }

  return LogPrintF(&gLogCategory_HMDeviceConfigurations, "[HMDeviceConfigurations needsUpdateToDeviceManagerForDevice:]", 30, "changing Swipe Gain enable %s --> %s", v1, v6);
}

- (void)needsUpdateToDeviceManagerForDevice:(void *)a1 .cold.5(void *a1, id *a2)
{
  v4 = [a1 audiogramEnrolledTimestamp];
  v3 = [*a2 startDate];
  LogPrintF(&gLogCategory_HMDeviceConfigurations, "[HMDeviceConfigurations needsUpdateToDeviceManagerForDevice:]", 30, "changing audiogram enrolled time %@ --> %@", v4, v3);
}

- (uint64_t)needsUpdateToDeviceManagerForDevice:(void *)a1 .cold.6(void *a1)
{
  [a1 hearingProtectionPPEEnabled];
  OUTLINED_FUNCTION_2();
  if (!v5 & v4)
  {
    v6 = "?";
  }

  else
  {
    v6 = *(v2 + 8 * v3);
  }

  return LogPrintF(&gLogCategory_HMDeviceConfigurations, "[HMDeviceConfigurations needsUpdateToDeviceManagerForDevice:]", 30, "changing enable Hearing Protection PPE mode %s --> %s", v1, v6);
}

- (uint64_t)needsUpdateToPMEConfigurationForDevice:(void *)a1 .cold.1(void *a1)
{
  [a1 mediaAssistEnabled];
  OUTLINED_FUNCTION_2();
  if (!v5 & v4)
  {
    v6 = "?";
  }

  else
  {
    v6 = *(v2 + 8 * v3);
  }

  return LogPrintF(&gLogCategory_HMDeviceConfigurations, "[HMDeviceConfigurations needsUpdateToPMEConfigurationForDevice:]", 30, "changing MediaAssist enable %s --> %s", v1, v6);
}

- (uint64_t)needsUpdateToPMEConfigurationForDevice:(void *)a1 .cold.2(void *a1)
{
  [a1 pmeMediaEnabled];
  OUTLINED_FUNCTION_2();
  if (!v5 & v4)
  {
    v6 = "?";
  }

  else
  {
    v6 = *(v2 + 8 * v3);
  }

  return LogPrintF(&gLogCategory_HMDeviceConfigurations, "[HMDeviceConfigurations needsUpdateToPMEConfigurationForDevice:]", 30, "changing PME Media enable %s --> %s", v1, v6);
}

- (uint64_t)needsUpdateToPMEConfigurationForDevice:(void *)a1 .cold.3(void *a1)
{
  [a1 pmeVoiceEnabled];
  OUTLINED_FUNCTION_2();
  if (!v5 & v4)
  {
    v6 = "?";
  }

  else
  {
    v6 = *(v2 + 8 * v3);
  }

  return LogPrintF(&gLogCategory_HMDeviceConfigurations, "[HMDeviceConfigurations needsUpdateToPMEConfigurationForDevice:]", 30, "changing PME Voice enable %s --> %s", v1, v6);
}

- (uint64_t)needsUpdateToPMEConfigurationForDevice:(void *)a1 .cold.4(void *a1)
{
  [a1 pmeVoiceEnrolled];
  OUTLINED_FUNCTION_2();
  if (!v5 & v4)
  {
    v6 = "?";
  }

  else
  {
    v6 = *(v2 + 8 * v3);
  }

  return LogPrintF(&gLogCategory_HMDeviceConfigurations, "[HMDeviceConfigurations needsUpdateToPMEConfigurationForDevice:]", 30, "changing PME Voice enroll %s --> %s", v1, v6);
}

- (void)setupConfigsForPPEIfNeeded:(void *)a1 completion:.cold.1(void *a1)
{
  v1 = [a1 bluetoothUUID];
  LogPrintF(&gLogCategory_HMDeviceConfigurations, "[HMDeviceConfigurations setupConfigsForPPEIfNeeded:completion:]", 30, "Setup PPE Configs for UUID: %@ - Enable LSR and Disable OFF", v1);
}

- (void)restoreConfigsFromCloudRecordIfNeeded:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 bluetoothUUID];
  LogPrintF(&gLogCategory_HMDeviceConfigurations, "[HMDeviceConfigurations restoreConfigsFromCloudRecordIfNeeded:]", 90, "## Restoring HMDeviceConfigurations UUID: %@ failed, cloud record not found", v1);
}

- (uint64_t)setEnableHearingAssistIfNeeded:(void *)a1 .cold.1(void *a1)
{
  [a1 hearingAssistEnabled];
  OUTLINED_FUNCTION_2();
  if (!v5 & v4)
  {
    v6 = "?";
  }

  else
  {
    v6 = *(v2 + 8 * v3);
  }

  return LogPrintF(&gLogCategory_HMDeviceConfigurations, "[HMDeviceConfigurations setEnableHearingAssistIfNeeded:]", 30, "changing HearingAssist enable %s --> %s", v1, v6);
}

- (void)updateVolumeIOS:(uint64_t)a1 completion:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  if (gLogCategory_HMDeviceConfigurations <= 90 && (gLogCategory_HMDeviceConfigurations != -1 || _LogCategory_Initialize()))
  {
    v4 = [a2 bluetoothUUID];
    LogPrintF(&gLogCategory_HMDeviceConfigurations, "[HMDeviceConfigurations updateVolumeIOS:completion:]", 90, "### Error %@ is not routed. System volume not updated.", v4);
  }

  if (a1)
  {
    v5 = *(a1 + 16);

    v5(a1);
  }
}

- (uint64_t)updateVolumeIOS:(uint64_t)result completion:.cold.2(uint64_t result)
{
  v1 = result;
  if (gLogCategory_HMDeviceConfigurations <= 90)
  {
    if (gLogCategory_HMDeviceConfigurations != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&gLogCategory_HMDeviceConfigurations, "[HMDeviceConfigurations updateVolumeIOS:completion:]", 90, "### Error fetching current volume. System volume not updated.");
    }
  }

  if (v1)
  {
    return (*(v1 + 16))(v1);
  }

  return result;
}

- (void)updateVolumeIOS:(uint64_t)a1 completion:(void *)a2 .cold.3(uint64_t a1, void *a2)
{
  [a2 bluetoothUUID];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  LogPrintF(&gLogCategory_HMDeviceConfigurations, "[HMDeviceConfigurations updateVolumeIOS:completion:]", 90, "### Error updating system volume: %f -> %f, for currently routed %@");
}

- (void)updateVolumeIOS:(uint64_t)a1 completion:(void *)a2 .cold.4(uint64_t a1, void *a2)
{
  [a2 bluetoothUUID];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  LogPrintF(&gLogCategory_HMDeviceConfigurations, "[HMDeviceConfigurations updateVolumeIOS:completion:]", 30, "Updated system volume: %f -> %f, for currently routed %@");
}

- (uint64_t)updateVolumeIOS:(float)a3 completion:.cold.5(uint64_t result, float *a2, float a3)
{
  v3 = result;
  if (gLogCategory_HMDeviceConfigurations > 30)
  {
    goto LABEL_5;
  }

  if (gLogCategory_HMDeviceConfigurations != -1)
  {
    goto LABEL_3;
  }

  result = _LogCategory_Initialize();
  if (result)
  {
    a3 = *a2;
LABEL_3:
    result = LogPrintF(&gLogCategory_HMDeviceConfigurations, "[HMDeviceConfigurations updateVolumeIOS:completion:]", 30, "No need to update system volume: %f", a3);
  }

LABEL_5:
  if (v3)
  {
    return (*(v3 + 16))(v3);
  }

  return result;
}

@end