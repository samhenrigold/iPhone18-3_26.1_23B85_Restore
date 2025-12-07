@interface HMDeviceCloudRecordInfo
- (HMDeviceCloudRecordInfo)initWithBluetoothAddress:(id)address;
- (HMDeviceCloudRecordInfo)initWithCoder:(id)coder;
- (id)descriptionWithLevel:(int)level;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDeviceCloudRecordInfo

- (HMDeviceCloudRecordInfo)initWithBluetoothAddress:(id)address
{
  addressCopy = address;
  v5 = [(HMDeviceCloudRecordInfo *)self init];
  if (v5)
  {
    uppercaseString = [addressCopy uppercaseString];
    bluetoothAddress = v5->_bluetoothAddress;
    v5->_bluetoothAddress = uppercaseString;

    v8 = v5;
  }

  return v5;
}

- (id)descriptionWithLevel:(int)level
{
  v114 = 0;
  v5 = [objc_opt_class() description];
  NSAppendPrintF_safe(&v114, "%@", v5);
  v6 = v114;

  bluetoothAddress = self->_bluetoothAddress;
  if (bluetoothAddress)
  {
    v113 = v6;
    v8 = bluetoothAddress;
    NSAppendPrintF_safe(&v113, ", Bt Addr %@", v8);
    v9 = v113;

    v6 = v9;
  }

  haRegionStatus = self->_haRegionStatus;
  if (self->_haRegionStatus)
  {
    v112 = v6;
    NSAppendPrintF_safe(&v112, ", HA rgn St %d", haRegionStatus);
    v11 = v112;

    v6 = v11;
  }

  haRegionStatusV2 = self->_haRegionStatusV2;
  if (self->_haRegionStatusV2)
  {
    v111 = v6;
    NSAppendPrintF_safe(&v111, ", HA v2 rgn St %d", haRegionStatusV2);
    v13 = v111;

    v6 = v13;
  }

  hpPPERegionStatus = self->_hpPPERegionStatus;
  if (self->_hpPPERegionStatus)
  {
    v110 = v6;
    NSAppendPrintF_safe(&v110, ", HP PPE rgn St %d", hpPPERegionStatus);
    v15 = v110;

    v6 = v15;
  }

  hpRegionStatus = self->_hpRegionStatus;
  if (self->_hpRegionStatus)
  {
    v109 = v6;
    NSAppendPrintF_safe(&v109, ", HP rgn St %d", hpRegionStatus);
    v17 = v109;

    v6 = v17;
  }

  mediaAssistEnabled = self->_mediaAssistEnabled;
  if (self->_mediaAssistEnabled)
  {
    v108 = v6;
    NSAppendPrintF_safe(&v108, ", MA En  %d", mediaAssistEnabled);
    v19 = v108;

    v6 = v19;
  }

  pmeMediaEnabled = self->_pmeMediaEnabled;
  if (self->_pmeMediaEnabled)
  {
    v107 = v6;
    NSAppendPrintF_safe(&v107, ", PME-M En %d", pmeMediaEnabled);
    v21 = v107;

    v6 = v21;
  }

  pmeVoiceEnabled = self->_pmeVoiceEnabled;
  if (self->_pmeVoiceEnabled)
  {
    v106 = v6;
    NSAppendPrintF_safe(&v106, ", PME-V En %d", pmeVoiceEnabled);
    v23 = v106;

    v6 = v23;
  }

  swipeGainEnabled = self->_swipeGainEnabled;
  if (self->_swipeGainEnabled)
  {
    v105 = v6;
    NSAppendPrintF_safe(&v105, ", Swp Gn En %d", swipeGainEnabled);
    v25 = v105;

    v6 = v25;
  }

  bottomMicFaultCountLeft = self->_bottomMicFaultCountLeft;
  if (bottomMicFaultCountLeft)
  {
    v104 = v6;
    v27 = bottomMicFaultCountLeft;
    NSAppendPrintF_safe(&v104, ", BMi flt L %@", v27);
    v28 = v104;

    v6 = v28;
  }

  bottomMicFaultCountRight = self->_bottomMicFaultCountRight;
  if (bottomMicFaultCountRight)
  {
    v103 = v6;
    v30 = bottomMicFaultCountRight;
    NSAppendPrintF_safe(&v103, ", BMi flt R %@", v30);
    v31 = v103;

    v6 = v31;
  }

  diagnosticMeasurementsCount = self->_diagnosticMeasurementsCount;
  if (diagnosticMeasurementsCount)
  {
    v102 = v6;
    v33 = diagnosticMeasurementsCount;
    NSAppendPrintF_safe(&v102, ", Dg Ms Cnt %@", v33);
    v34 = v102;

    v6 = v34;
  }

  freqAccuracyFaultCountLeft = self->_freqAccuracyFaultCountLeft;
  if (freqAccuracyFaultCountLeft)
  {
    v101 = v6;
    v36 = freqAccuracyFaultCountLeft;
    NSAppendPrintF_safe(&v101, ", Frq Acc L %@", v36);
    v37 = v101;

    v6 = v37;
  }

  freqAccuracyFaultCountRight = self->_freqAccuracyFaultCountRight;
  if (freqAccuracyFaultCountRight)
  {
    v100 = v6;
    v39 = freqAccuracyFaultCountRight;
    NSAppendPrintF_safe(&v100, ", Frq Acc R %@", v39);
    v40 = v100;

    v6 = v40;
  }

  frontVentFaultCountLeft = self->_frontVentFaultCountLeft;
  if (frontVentFaultCountLeft)
  {
    v99 = v6;
    v42 = frontVentFaultCountLeft;
    NSAppendPrintF_safe(&v99, ", Fvnt flt L %@", v42);
    v43 = v99;

    v6 = v43;
  }

  frontVentFaultCountRight = self->_frontVentFaultCountRight;
  if (frontVentFaultCountRight)
  {
    v98 = v6;
    v45 = frontVentFaultCountRight;
    NSAppendPrintF_safe(&v98, ", Fvnt flt R %@", v45);
    v46 = v98;

    v6 = v46;
  }

  innerMicFaultCountLeft = self->_innerMicFaultCountLeft;
  if (innerMicFaultCountLeft)
  {
    v97 = v6;
    v48 = innerMicFaultCountLeft;
    NSAppendPrintF_safe(&v97, ", IMi flt L %@", v48);
    v49 = v97;

    v6 = v49;
  }

  innerMicFaultCountRight = self->_innerMicFaultCountRight;
  if (innerMicFaultCountRight)
  {
    v96 = v6;
    v51 = innerMicFaultCountRight;
    NSAppendPrintF_safe(&v96, ", IMi flt R %@", v51);
    v52 = v96;

    v6 = v52;
  }

  latestDiagnosticTimestampLeft = self->_latestDiagnosticTimestampLeft;
  if (latestDiagnosticTimestampLeft)
  {
    v95 = v6;
    v54 = latestDiagnosticTimestampLeft;
    NSAppendPrintF_safe(&v95, ", ltst dg T L %@", v54);
    v55 = v95;

    v6 = v55;
  }

  latestDiagnosticTimestampRight = self->_latestDiagnosticTimestampRight;
  if (latestDiagnosticTimestampRight)
  {
    v94 = v6;
    v57 = latestDiagnosticTimestampRight;
    NSAppendPrintF_safe(&v94, ", ltst dg T R %@", v57);
    v58 = v94;

    v6 = v58;
  }

  rearVentFaultCountLeft = self->_rearVentFaultCountLeft;
  if (rearVentFaultCountLeft)
  {
    v93 = v6;
    v60 = rearVentFaultCountLeft;
    NSAppendPrintF_safe(&v93, ", Rvnt flt L %@", v60);
    v61 = v93;

    v6 = v61;
  }

  rearVentFaultCountRight = self->_rearVentFaultCountRight;
  if (rearVentFaultCountRight)
  {
    v92 = v6;
    v63 = rearVentFaultCountRight;
    NSAppendPrintF_safe(&v92, ", Rvnt flt R %@", v63);
    v64 = v92;

    v6 = v64;
  }

  speakerFaultCountLeft = self->_speakerFaultCountLeft;
  if (speakerFaultCountLeft)
  {
    v91 = v6;
    v66 = speakerFaultCountLeft;
    NSAppendPrintF_safe(&v91, ", Spk flt L %@", v66);
    v67 = v91;

    v6 = v67;
  }

  speakerFaultCountRight = self->_speakerFaultCountRight;
  if (speakerFaultCountRight)
  {
    v90 = v6;
    v69 = speakerFaultCountRight;
    NSAppendPrintF_safe(&v90, ", Spk flt R %@", v69);
    v70 = v90;

    v6 = v70;
  }

  topMicFaultCountLeft = self->_topMicFaultCountLeft;
  if (topMicFaultCountLeft)
  {
    v89 = v6;
    v72 = topMicFaultCountLeft;
    NSAppendPrintF_safe(&v89, ", Tmi flt L %@", v72);
    v73 = v89;

    v6 = v73;
  }

  topMicFaultCountRight = self->_topMicFaultCountRight;
  if (topMicFaultCountRight)
  {
    v88 = v6;
    v75 = topMicFaultCountRight;
    NSAppendPrintF_safe(&v88, ", Tmi flt R %@", v75);
    v76 = v88;

    v6 = v76;
  }

  totalHarmonicDistortionFaultCountLeft = self->_totalHarmonicDistortionFaultCountLeft;
  if (totalHarmonicDistortionFaultCountLeft)
  {
    v87 = v6;
    v78 = totalHarmonicDistortionFaultCountLeft;
    NSAppendPrintF_safe(&v87, ", THrm Dst L %@", v78);
    v79 = v87;

    v6 = v79;
  }

  totalHarmonicDistortionFaultCountRight = self->_totalHarmonicDistortionFaultCountRight;
  if (totalHarmonicDistortionFaultCountRight)
  {
    v86 = v6;
    v81 = totalHarmonicDistortionFaultCountRight;
    NSAppendPrintF_safe(&v86, ", THrm Dst R %@", v81);
    v82 = v86;

    v6 = v82;
  }

  if (level < 21)
  {
    v85 = v6;
    NSAppendPrintF_safe(&v85, "\n");
    v83 = v85;

    v6 = v83;
  }

  return v6;
}

- (HMDeviceCloudRecordInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(HMDeviceCloudRecordInfo *)self init];
  if (v5)
  {
    v6 = coderCopy;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_haRegionStatus = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_haRegionStatusV2 = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hpPPERegionStatus = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hpRegionStatus = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_mediaAssistEnabled = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_pmeMediaEnabled = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_pmeVoiceEnabled = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_swipeGainEnabled = 0;
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
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    v7 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bluetoothAddress = self->_bluetoothAddress;
  v25 = coderCopy;
  if (bluetoothAddress)
  {
    [coderCopy encodeObject:bluetoothAddress forKey:@"btAd"];
    coderCopy = v25;
  }

  if (self->_haRegionStatus)
  {
    [v25 encodeInteger:? forKey:?];
    coderCopy = v25;
  }

  if (self->_haRegionStatusV2)
  {
    [v25 encodeInteger:? forKey:?];
    coderCopy = v25;
  }

  if (self->_hpPPERegionStatus)
  {
    [v25 encodeInteger:? forKey:?];
    coderCopy = v25;
  }

  if (self->_hpRegionStatus)
  {
    [v25 encodeInteger:? forKey:?];
    coderCopy = v25;
  }

  if (self->_mediaAssistEnabled)
  {
    [v25 encodeInteger:? forKey:?];
    coderCopy = v25;
  }

  if (self->_pmeMediaEnabled)
  {
    [v25 encodeInteger:? forKey:?];
    coderCopy = v25;
  }

  if (self->_pmeVoiceEnabled)
  {
    [v25 encodeInteger:? forKey:?];
    coderCopy = v25;
  }

  if (self->_swipeGainEnabled)
  {
    [v25 encodeInteger:? forKey:?];
    coderCopy = v25;
  }

  bottomMicFaultCountLeft = self->_bottomMicFaultCountLeft;
  if (bottomMicFaultCountLeft)
  {
    [v25 encodeObject:bottomMicFaultCountLeft forKey:@"bmfl"];
    coderCopy = v25;
  }

  bottomMicFaultCountRight = self->_bottomMicFaultCountRight;
  if (bottomMicFaultCountRight)
  {
    [v25 encodeObject:bottomMicFaultCountRight forKey:@"bmfr"];
    coderCopy = v25;
  }

  diagnosticMeasurementsCount = self->_diagnosticMeasurementsCount;
  if (diagnosticMeasurementsCount)
  {
    [v25 encodeObject:diagnosticMeasurementsCount forKey:@"dimc"];
    coderCopy = v25;
  }

  freqAccuracyFaultCountLeft = self->_freqAccuracyFaultCountLeft;
  if (freqAccuracyFaultCountLeft)
  {
    [v25 encodeObject:freqAccuracyFaultCountLeft forKey:@"fafl"];
    coderCopy = v25;
  }

  freqAccuracyFaultCountRight = self->_freqAccuracyFaultCountRight;
  if (freqAccuracyFaultCountRight)
  {
    [v25 encodeObject:freqAccuracyFaultCountRight forKey:@"fafr"];
    coderCopy = v25;
  }

  frontVentFaultCountLeft = self->_frontVentFaultCountLeft;
  if (frontVentFaultCountLeft)
  {
    [v25 encodeObject:frontVentFaultCountLeft forKey:@"fvfl"];
    coderCopy = v25;
  }

  frontVentFaultCountRight = self->_frontVentFaultCountRight;
  if (frontVentFaultCountRight)
  {
    [v25 encodeObject:frontVentFaultCountRight forKey:@"fvfr"];
    coderCopy = v25;
  }

  innerMicFaultCountLeft = self->_innerMicFaultCountLeft;
  if (innerMicFaultCountLeft)
  {
    [v25 encodeObject:innerMicFaultCountLeft forKey:@"imfl"];
    coderCopy = v25;
  }

  innerMicFaultCountRight = self->_innerMicFaultCountRight;
  if (innerMicFaultCountRight)
  {
    [v25 encodeObject:innerMicFaultCountRight forKey:@"imfr"];
    coderCopy = v25;
  }

  latestDiagnosticTimestampLeft = self->_latestDiagnosticTimestampLeft;
  if (latestDiagnosticTimestampLeft)
  {
    [v25 encodeObject:latestDiagnosticTimestampLeft forKey:@"ldtl"];
    coderCopy = v25;
  }

  latestDiagnosticTimestampRight = self->_latestDiagnosticTimestampRight;
  if (latestDiagnosticTimestampRight)
  {
    [v25 encodeObject:latestDiagnosticTimestampRight forKey:@"ldtr"];
    coderCopy = v25;
  }

  rearVentFaultCountLeft = self->_rearVentFaultCountLeft;
  if (rearVentFaultCountLeft)
  {
    [v25 encodeObject:rearVentFaultCountLeft forKey:@"rvfl"];
    coderCopy = v25;
  }

  rearVentFaultCountRight = self->_rearVentFaultCountRight;
  if (rearVentFaultCountRight)
  {
    [v25 encodeObject:rearVentFaultCountRight forKey:@"rvfr"];
    coderCopy = v25;
  }

  speakerFaultCountLeft = self->_speakerFaultCountLeft;
  if (speakerFaultCountLeft)
  {
    [v25 encodeObject:speakerFaultCountLeft forKey:@"sfcl"];
    coderCopy = v25;
  }

  speakerFaultCountRight = self->_speakerFaultCountRight;
  if (speakerFaultCountRight)
  {
    [v25 encodeObject:speakerFaultCountRight forKey:@"sfcr"];
    coderCopy = v25;
  }

  topMicFaultCountLeft = self->_topMicFaultCountLeft;
  if (topMicFaultCountLeft)
  {
    [v25 encodeObject:topMicFaultCountLeft forKey:@"tmfl"];
    coderCopy = v25;
  }

  topMicFaultCountRight = self->_topMicFaultCountRight;
  if (topMicFaultCountRight)
  {
    [v25 encodeObject:topMicFaultCountRight forKey:@"tmfr"];
    coderCopy = v25;
  }

  totalHarmonicDistortionFaultCountLeft = self->_totalHarmonicDistortionFaultCountLeft;
  if (totalHarmonicDistortionFaultCountLeft)
  {
    [v25 encodeObject:totalHarmonicDistortionFaultCountLeft forKey:@"thdl"];
    coderCopy = v25;
  }

  totalHarmonicDistortionFaultCountRight = self->_totalHarmonicDistortionFaultCountRight;
  if (totalHarmonicDistortionFaultCountRight)
  {
    [v25 encodeObject:totalHarmonicDistortionFaultCountRight forKey:@"thdr"];
    coderCopy = v25;
  }
}

@end