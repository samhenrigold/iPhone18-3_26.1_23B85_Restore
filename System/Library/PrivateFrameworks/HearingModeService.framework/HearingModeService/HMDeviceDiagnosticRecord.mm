@interface HMDeviceDiagnosticRecord
+ (int)getHMDiagnosticMeasurementStatusForValue:(unsigned __int8)value;
+ (int)getHMDiagnosticStatusForValue:(unsigned __int8)value;
- (BOOL)_hasValidMeasurementForSide:(id)side;
- (BOOL)_isDate:(id)date lesserThanOrEqualToMonths:(unsigned __int8)months;
- (BOOL)hasMeasurementChangedForSide:(id)side withRecord:(id)record;
- (BOOL)isDeviceUsedFor3MonthsOrLess;
- (BOOL)updateFaultCountsFromCloudRecord:(id)record;
- (HMDeviceDiagnosticRecord)initWithCoder:(id)coder;
- (HMDeviceDiagnosticRecord)initWithHMDeviceRecord:(id)record isNewPairing:(BOOL)pairing;
- (id)descriptionWithLevel:(int)level;
- (id)getCloudRecordForCurrentFaultCount;
- (id)getOnDemandRetestReason;
- (id)measurementInvalidReason;
- (int)computeOcclusionResultForHearingProtection;
- (int)computeOcclusionResultForHearingTest;
- (int64_t)_minutesSinceTimestamp:(id)timestamp;
- (unsigned)_getMinimumRequiredPayloadLength;
- (void)_prefsLoadOcclusionStats;
- (void)_prefsResetOcclusionStatsForFeatureID:(int)d type:(int)type;
- (void)_prefsSaveOcclusionStats;
- (void)_resetAllOcclusionStats;
- (void)_submitMetricsForOcclusionIndicationType:(int)type action:(int)action previousIndicationCount:(unsigned int)count timeSinceFirstIndicationMins:(int64_t)mins;
- (void)_updateLeftSideFaultCountWithCloudRecord:(id)record;
- (void)_updateRightSideFaultCountWithCloudRecord:(id)record;
- (void)encodeWithCoder:(id)coder;
- (void)occlusionIndicationShownForFeatureID:(int)d type:(int)type action:(int)action;
- (void)resetFaultCounts;
- (void)setIsNewPairing:(BOOL)pairing;
- (void)updateWithANCLossScores:(id)scores;
- (void)updateWithDiagnosticData:(id)data;
- (void)updateWithMeasurementData:(id)data;
- (void)updateWithMeasurementDataLegacyVersion:(id)version;
- (void)updateWithMeasurementResultLeft:(unsigned int)left;
- (void)updateWithMeasurementResultRight:(unsigned int)right;
@end

@implementation HMDeviceDiagnosticRecord

- (HMDeviceDiagnosticRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(HMDeviceDiagnosticRecord *)self init];
  if (v5)
  {
    v6 = coderCopy;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v7 = v6;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_ancLossTypeLeft = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_ancLossTypeRight = 0;
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
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_errMicStatusLeft = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_errMicStatusRight = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_frequencyAccuracyLeft = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_frequencyAccuracyRight = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_frontVentStatusLeft = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_frontVentStatusRight = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_generalSystemStatusLeft = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_generalSystemStatusRight = 0;
    }

    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_latestMeasurementResultLeft = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_latestMeasurementResultRight = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_rearVentStatusLeft = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_rearVentStatusRight = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_refMicStatusLeft = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_refMicStatusRight = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_speakerStatusLeft = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_speakerStatusRight = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_totalHarmonicDistortionLeft = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_totalHarmonicDistortionRight = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_vceMicStatusLeft = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_vceMicStatusRight = 0;
    }

    objc_opt_class();
    NSDecodeObjectIfPresent();
    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bluetoothUUID = self->_bluetoothUUID;
  v42 = coderCopy;
  if (bluetoothUUID)
  {
    [coderCopy encodeObject:bluetoothUUID forKey:@"btUUID"];
    coderCopy = v42;
  }

  bluetoothAddress = self->_bluetoothAddress;
  if (bluetoothAddress)
  {
    [v42 encodeObject:bluetoothAddress forKey:@"btAdS"];
    coderCopy = v42;
  }

  ancLossTypeLeft = self->_ancLossTypeLeft;
  if (ancLossTypeLeft)
  {
    [v42 encodeInteger:ancLossTypeLeft forKey:@"ancL"];
    coderCopy = v42;
  }

  ancLossTypeRight = self->_ancLossTypeRight;
  if (ancLossTypeRight)
  {
    [v42 encodeInteger:ancLossTypeRight forKey:@"ancR"];
    coderCopy = v42;
  }

  ancCleanLossScoreLeft = self->_ancCleanLossScoreLeft;
  if (ancCleanLossScoreLeft)
  {
    [v42 encodeObject:ancCleanLossScoreLeft forKey:@"cLSL"];
    coderCopy = v42;
  }

  ancCleanLossScoreRight = self->_ancCleanLossScoreRight;
  if (ancCleanLossScoreRight)
  {
    [v42 encodeObject:ancCleanLossScoreRight forKey:@"cLSR"];
    coderCopy = v42;
  }

  ancFullLossScoreLeft = self->_ancFullLossScoreLeft;
  if (ancFullLossScoreLeft)
  {
    [v42 encodeObject:ancFullLossScoreLeft forKey:@"fLSL"];
    coderCopy = v42;
  }

  ancFullLossScoreRight = self->_ancFullLossScoreRight;
  if (ancFullLossScoreRight)
  {
    [v42 encodeObject:ancFullLossScoreRight forKey:@"fLSR"];
    coderCopy = v42;
  }

  ancSevereLossScoreLeft = self->_ancSevereLossScoreLeft;
  if (ancSevereLossScoreLeft)
  {
    [v42 encodeObject:ancSevereLossScoreLeft forKey:@"sLSL"];
    coderCopy = v42;
  }

  ancSevereLossScoreRight = self->_ancSevereLossScoreRight;
  if (ancSevereLossScoreRight)
  {
    [v42 encodeObject:ancSevereLossScoreRight forKey:@"sLSR"];
    coderCopy = v42;
  }

  daysSinceLastMeasurementLeft = self->_daysSinceLastMeasurementLeft;
  if (daysSinceLastMeasurementLeft)
  {
    [v42 encodeObject:daysSinceLastMeasurementLeft forKey:@"dslml"];
    coderCopy = v42;
  }

  daysSinceLastMeasurementRight = self->_daysSinceLastMeasurementRight;
  if (daysSinceLastMeasurementRight)
  {
    [v42 encodeObject:daysSinceLastMeasurementRight forKey:@"dslmr"];
    coderCopy = v42;
  }

  daysSinceLastHarmonicMeasurementLeft = self->_daysSinceLastHarmonicMeasurementLeft;
  if (daysSinceLastHarmonicMeasurementLeft)
  {
    [v42 encodeObject:daysSinceLastHarmonicMeasurementLeft forKey:@"dsHml"];
    coderCopy = v42;
  }

  daysSinceLastHarmonicMeasurementRight = self->_daysSinceLastHarmonicMeasurementRight;
  if (daysSinceLastHarmonicMeasurementRight)
  {
    [v42 encodeObject:daysSinceLastHarmonicMeasurementRight forKey:@"dsHmr"];
    coderCopy = v42;
  }

  errMicStatusLeft = self->_errMicStatusLeft;
  if (errMicStatusLeft)
  {
    [v42 encodeInteger:errMicStatusLeft forKey:@"errFL"];
    coderCopy = v42;
  }

  errMicStatusRight = self->_errMicStatusRight;
  if (errMicStatusRight)
  {
    [v42 encodeInteger:errMicStatusRight forKey:@"errFR"];
    coderCopy = v42;
  }

  frequencyAccuracyLeft = self->_frequencyAccuracyLeft;
  if (frequencyAccuracyLeft)
  {
    [v42 encodeInteger:frequencyAccuracyLeft forKey:@"fqAcL"];
    coderCopy = v42;
  }

  frequencyAccuracyRight = self->_frequencyAccuracyRight;
  if (frequencyAccuracyRight)
  {
    [v42 encodeInteger:frequencyAccuracyRight forKey:@"fqAcR"];
    coderCopy = v42;
  }

  frontVentStatusLeft = self->_frontVentStatusLeft;
  if (frontVentStatusLeft)
  {
    [v42 encodeInteger:frontVentStatusLeft forKey:@"fvnFL"];
    coderCopy = v42;
  }

  frontVentStatusRight = self->_frontVentStatusRight;
  if (frontVentStatusRight)
  {
    [v42 encodeInteger:frontVentStatusRight forKey:@"fvnFR"];
    coderCopy = v42;
  }

  generalSystemStatusLeft = self->_generalSystemStatusLeft;
  if (generalSystemStatusLeft)
  {
    [v42 encodeInteger:generalSystemStatusLeft forKey:@"gnrFL"];
    coderCopy = v42;
  }

  generalSystemStatusRight = self->_generalSystemStatusRight;
  if (generalSystemStatusRight)
  {
    [v42 encodeInteger:generalSystemStatusRight forKey:@"gnrFR"];
    coderCopy = v42;
  }

  lastMeasurementTimestampLeft = self->_lastMeasurementTimestampLeft;
  if (lastMeasurementTimestampLeft)
  {
    [v42 encodeObject:lastMeasurementTimestampLeft forKey:@"lmTsL"];
    coderCopy = v42;
  }

  lastMeasurementTimestampRight = self->_lastMeasurementTimestampRight;
  if (lastMeasurementTimestampRight)
  {
    [v42 encodeObject:lastMeasurementTimestampRight forKey:@"lmTsR"];
    coderCopy = v42;
  }

  latestMeasurementResultLeft = self->_latestMeasurementResultLeft;
  if (latestMeasurementResultLeft)
  {
    [v42 encodeInteger:latestMeasurementResultLeft forKey:@"lmRsL"];
    coderCopy = v42;
  }

  latestMeasurementResultRight = self->_latestMeasurementResultRight;
  if (latestMeasurementResultRight)
  {
    [v42 encodeInteger:latestMeasurementResultRight forKey:@"lmRsR"];
    coderCopy = v42;
  }

  rearVentStatusLeft = self->_rearVentStatusLeft;
  if (rearVentStatusLeft)
  {
    [v42 encodeInteger:rearVentStatusLeft forKey:@"rvnFL"];
    coderCopy = v42;
  }

  rearVentStatusRight = self->_rearVentStatusRight;
  if (rearVentStatusRight)
  {
    [v42 encodeInteger:rearVentStatusRight forKey:@"rvnFR"];
    coderCopy = v42;
  }

  refMicStatusLeft = self->_refMicStatusLeft;
  if (refMicStatusLeft)
  {
    [v42 encodeInteger:refMicStatusLeft forKey:@"refFL"];
    coderCopy = v42;
  }

  refMicStatusRight = self->_refMicStatusRight;
  if (refMicStatusRight)
  {
    [v42 encodeInteger:refMicStatusRight forKey:@"refFR"];
    coderCopy = v42;
  }

  speakerStatusLeft = self->_speakerStatusLeft;
  if (speakerStatusLeft)
  {
    [v42 encodeInteger:speakerStatusLeft forKey:@"sprFL"];
    coderCopy = v42;
  }

  speakerStatusRight = self->_speakerStatusRight;
  if (speakerStatusRight)
  {
    [v42 encodeInteger:speakerStatusRight forKey:@"sprFR"];
    coderCopy = v42;
  }

  totalHarmonicDistortionLeft = self->_totalHarmonicDistortionLeft;
  if (totalHarmonicDistortionLeft)
  {
    [v42 encodeInteger:totalHarmonicDistortionLeft forKey:@"thdL"];
    coderCopy = v42;
  }

  totalHarmonicDistortionRight = self->_totalHarmonicDistortionRight;
  if (totalHarmonicDistortionRight)
  {
    [v42 encodeInteger:totalHarmonicDistortionRight forKey:@"thdR"];
    coderCopy = v42;
  }

  vceMicStatusLeft = self->_vceMicStatusLeft;
  if (vceMicStatusLeft)
  {
    [v42 encodeInteger:vceMicStatusLeft forKey:@"vceFL"];
    coderCopy = v42;
  }

  vceMicStatusRight = self->_vceMicStatusRight;
  if (vceMicStatusRight)
  {
    [v42 encodeInteger:vceMicStatusRight forKey:@"vceFR"];
    coderCopy = v42;
  }

  version = self->_version;
  if (version)
  {
    [v42 encodeObject:version forKey:@"versn"];
    coderCopy = v42;
  }
}

- (id)descriptionWithLevel:(int)level
{
  v178 = 0;
  v5 = [objc_opt_class() description];
  NSAppendPrintF_safe(&v178, "%@", v5);
  v6 = v178;

  if (level <= 20)
  {
    v177 = v6;
    NSAppendPrintF_safe(&v177, "\n");
    v7 = v177;

    v6 = v7;
  }

  v8 = self->_bluetoothAddress;
  v9 = v8;
  if (v8)
  {
    v176 = v6;
    NSAppendPrintF_safe(&v176, ", Bt Addr %@", v8);
    v10 = v176;

    v6 = v10;
  }

  v11 = self->_bluetoothUUID;
  v12 = v11;
  if (v11)
  {
    v175 = v6;
    NSAppendPrintF_safe(&v175, ", Bt UUID %@", v11);
    v13 = v175;

    v6 = v13;
  }

  productID = self->_productID;
  if (productID)
  {
    v174 = v6;
    if (productID <= 665)
    {
      if (productID <= 570)
      {
        if (productID > 556)
        {
          if (productID <= 568 && productID != 557 && productID != 558)
          {
            goto LABEL_217;
          }
        }

        else if (productID > 521)
        {
          if (productID != 522 && productID != 556)
          {
            goto LABEL_217;
          }
        }

        else if (productID != 520 && productID != 521)
        {
          goto LABEL_217;
        }

        goto LABEL_56;
      }

      if (productID <= 612)
      {
        if (productID > 597)
        {
          if (productID != 598 && productID != 599)
          {
            goto LABEL_217;
          }
        }

        else if (productID != 571 && productID != 597)
        {
          goto LABEL_217;
        }

LABEL_56:
        v16 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
        v17 = v16;
        v18 = @"apple_wireless_keyboard";
        goto LABEL_72;
      }

      if (productID <= 616)
      {
        if (productID != 613)
        {
          if (productID != 615)
          {
            goto LABEL_217;
          }

LABEL_59:
          v16 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
          v17 = v16;
          v18 = @"apple_magic_keyboard";
          goto LABEL_72;
        }

LABEL_60:
        v16 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
        v17 = v16;
        v18 = @"apple_magic_trackpad";
        goto LABEL_72;
      }

      if (productID != 617)
      {
        if (productID == 620)
        {
          v16 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
          v17 = v16;
          v18 = @"apple_magic_keyboard_keypad";
          goto LABEL_72;
        }

        goto LABEL_217;
      }

LABEL_64:
      v16 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
      v17 = v16;
      v18 = @"apple_magic_mouse";
      goto LABEL_72;
    }

    if (productID <= 800)
    {
      if (productID > 779)
      {
        if (productID <= 781)
        {
          if (productID == 780)
          {
            v16 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
            v17 = v16;
            v18 = @"apple_mighty_mouse";
            goto LABEL_72;
          }

          goto LABEL_64;
        }

        if (productID == 782)
        {
          goto LABEL_60;
        }

        if (productID == 800)
        {
          goto LABEL_59;
        }

LABEL_217:
        v17 = [MEMORY[0x277CBE070] productInfoWithProductID:?];
        productName = [v17 productName];
        goto LABEL_73;
      }

      if (productID <= 670)
      {
        if (productID != 666)
        {
          if (productID == 668)
          {
            goto LABEL_59;
          }

          goto LABEL_217;
        }

LABEL_69:
        v16 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
        v17 = v16;
        v18 = @"apple_magic_keyboard_touch";
        goto LABEL_72;
      }

      if (productID != 671)
      {
        if (productID == 777)
        {
          v16 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
          v17 = v16;
          v18 = @"apple_wireless_mouse";
LABEL_72:
          productName = [v16 localizedStringForKey:v18 value:&stru_2864344A8 table:@"CBLocalizable"];
LABEL_73:
          v20 = productName;

          NSAppendPrintF_safe(&v174, ", PrNm %@", v20);
          v21 = v174;

          v6 = v21;
          goto LABEL_74;
        }

        goto LABEL_217;
      }

LABEL_70:
      v16 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
      v17 = v16;
      v18 = @"apple_magic_keyboard_touch_keypad";
      goto LABEL_72;
    }

    if (productID <= 8212)
    {
      if (productID > 802)
      {
        if (productID != 803)
        {
          if (productID != 804)
          {
            goto LABEL_217;
          }

          goto LABEL_60;
        }

        goto LABEL_64;
      }

      if (productID == 801)
      {
        goto LABEL_69;
      }

      goto LABEL_70;
    }

    if (productID > 8219)
    {
      if (productID == 8220)
      {
        goto LABEL_68;
      }

      v15 = 8233;
    }

    else
    {
      if (productID == 8213)
      {
        goto LABEL_68;
      }

      v15 = 8216;
    }

    if (productID != v15)
    {
      goto LABEL_217;
    }

LABEL_68:
    v16 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
    v17 = v16;
    v18 = @"apple_airpods_case";
    goto LABEL_72;
  }

LABEL_74:
  v22 = self->_lastMeasurementTimestampLeft;
  v23 = v22;
  if (v22)
  {
    v173 = v6;
    NSAppendPrintF_safe(&v173, ", timestamp L %@", v22);
    v24 = v173;

    v6 = v24;
  }

  v25 = self->_lastMeasurementTimestampRight;
  v26 = v25;
  if (v25)
  {
    v172 = v6;
    NSAppendPrintF_safe(&v172, ", timestamp R %@", v25);
    v27 = v172;

    v6 = v27;
  }

  ancLossTypeLeft = self->_ancLossTypeLeft;
  if (ancLossTypeLeft)
  {
    v171 = v6;
    if (ancLossTypeLeft > 3)
    {
      v29 = "?";
    }

    else
    {
      v29 = off_2796EE730[ancLossTypeLeft - 1];
    }

    NSAppendPrintF_safe(&v171, ", ANC Loss L %s", v29);
    v30 = v171;

    v6 = v30;
  }

  ancLossTypeRight = self->_ancLossTypeRight;
  if (ancLossTypeRight)
  {
    v170 = v6;
    if (ancLossTypeRight > 3)
    {
      v32 = "?";
    }

    else
    {
      v32 = off_2796EE730[ancLossTypeRight - 1];
    }

    NSAppendPrintF_safe(&v170, ", ANC Loss R %s", v32);
    v33 = v170;

    v6 = v33;
  }

  v34 = self->_ancCleanLossScoreLeft;
  v35 = v34;
  if (v34)
  {
    v169 = v6;
    NSAppendPrintF_safe(&v169, ", Clean L %@", v34);
    v36 = v169;

    v6 = v36;
  }

  v37 = self->_ancCleanLossScoreRight;
  v38 = v37;
  if (v37)
  {
    v168 = v6;
    NSAppendPrintF_safe(&v168, ", Clean R %@", v37);
    v39 = v168;

    v6 = v39;
  }

  v40 = self->_ancFullLossScoreLeft;
  v41 = v40;
  if (v40)
  {
    v167 = v6;
    NSAppendPrintF_safe(&v167, ", Full L %@", v40);
    v42 = v167;

    v6 = v42;
  }

  v43 = self->_ancFullLossScoreRight;
  v44 = v43;
  if (v43)
  {
    v166 = v6;
    NSAppendPrintF_safe(&v166, ", Full R %@", v43);
    v45 = v166;

    v6 = v45;
  }

  v46 = self->_ancSevereLossScoreLeft;
  v47 = v46;
  if (v46)
  {
    v165 = v6;
    NSAppendPrintF_safe(&v165, ", Severe L %@", v46);
    v48 = v165;

    v6 = v48;
  }

  v49 = self->_ancSevereLossScoreRight;
  v50 = v49;
  if (v49)
  {
    v164 = v6;
    NSAppendPrintF_safe(&v164, ", Severe R %@", v49);
    v51 = v164;

    v6 = v51;
  }

  v52 = self->_daysSinceLastMeasurementLeft;
  v53 = v52;
  if (v52)
  {
    v163 = v6;
    NSAppendPrintF_safe(&v163, ", daysSinceMeasurement L %@", v52);
    v54 = v163;

    v6 = v54;
  }

  v55 = self->_daysSinceLastMeasurementRight;
  v56 = v55;
  if (v55)
  {
    v162 = v6;
    NSAppendPrintF_safe(&v162, ", daysSinceMeasurement R %@", v55);
    v57 = v162;

    v6 = v57;
  }

  v58 = self->_daysSinceLastHarmonicMeasurementLeft;
  v59 = v58;
  if (v58)
  {
    v161 = v6;
    NSAppendPrintF_safe(&v161, ", daysSinceHarmonicMeasurement L %@", v58);
    v60 = v161;

    v6 = v60;
  }

  v61 = self->_daysSinceLastHarmonicMeasurementRight;
  v62 = v61;
  if (v61)
  {
    v160 = v6;
    NSAppendPrintF_safe(&v160, ", daysSinceHarmonicMeasurement R %@", v61);
    v63 = v160;

    v6 = v63;
  }

  errMicStatusLeft = self->_errMicStatusLeft;
  if (errMicStatusLeft)
  {
    v159 = v6;
    if (errMicStatusLeft > 5)
    {
      v65 = "?";
    }

    else
    {
      v65 = off_2796EE788[errMicStatusLeft - 1];
    }

    NSAppendPrintF_safe(&v159, ", err Mic L %s", v65);
    v66 = v159;

    v6 = v66;
  }

  errMicStatusRight = self->_errMicStatusRight;
  if (errMicStatusRight)
  {
    v158 = v6;
    if (errMicStatusRight > 5)
    {
      v68 = "?";
    }

    else
    {
      v68 = off_2796EE788[errMicStatusRight - 1];
    }

    NSAppendPrintF_safe(&v158, ", err Mic R %s", v68);
    v69 = v158;

    v6 = v69;
  }

  v70 = self->_firstTimeUseTimestampLeft;
  v71 = v70;
  if (v70)
  {
    v157 = v6;
    NSAppendPrintF_safe(&v157, ", firstTimeUse L %@", v70);
    v72 = v157;

    v6 = v72;
  }

  v73 = self->_firstTimeUseTimestampRight;
  v74 = v73;
  if (v73)
  {
    v156 = v6;
    NSAppendPrintF_safe(&v156, ", firstTimeUse R %@", v73);
    v75 = v156;

    v6 = v75;
  }

  frequencyAccuracyLeft = self->_frequencyAccuracyLeft;
  if (frequencyAccuracyLeft)
  {
    v155 = v6;
    if (frequencyAccuracyLeft > 5)
    {
      v77 = "?";
    }

    else
    {
      v77 = off_2796EE788[frequencyAccuracyLeft - 1];
    }

    NSAppendPrintF_safe(&v155, ", freq Acc L %s", v77);
    v78 = v155;

    v6 = v78;
  }

  frequencyAccuracyRight = self->_frequencyAccuracyRight;
  if (frequencyAccuracyRight)
  {
    v154 = v6;
    if (frequencyAccuracyRight > 5)
    {
      v80 = "?";
    }

    else
    {
      v80 = off_2796EE788[frequencyAccuracyRight - 1];
    }

    NSAppendPrintF_safe(&v154, ", freq Acc R %s", v80);
    v81 = v154;

    v6 = v81;
  }

  frontVentStatusLeft = self->_frontVentStatusLeft;
  if (frontVentStatusLeft)
  {
    v153 = v6;
    if (frontVentStatusLeft > 5)
    {
      v83 = "?";
    }

    else
    {
      v83 = off_2796EE788[frontVentStatusLeft - 1];
    }

    NSAppendPrintF_safe(&v153, ", frontVent L %s", v83);
    v84 = v153;

    v6 = v84;
  }

  frontVentStatusRight = self->_frontVentStatusRight;
  if (frontVentStatusRight)
  {
    v152 = v6;
    if (frontVentStatusRight > 5)
    {
      v86 = "?";
    }

    else
    {
      v86 = off_2796EE788[frontVentStatusRight - 1];
    }

    NSAppendPrintF_safe(&v152, ", frontVent R %s", v86);
    v87 = v152;

    v6 = v87;
  }

  generalSystemStatusLeft = self->_generalSystemStatusLeft;
  if (generalSystemStatusLeft)
  {
    v151 = v6;
    if (generalSystemStatusLeft > 5)
    {
      v89 = "?";
    }

    else
    {
      v89 = off_2796EE788[generalSystemStatusLeft - 1];
    }

    NSAppendPrintF_safe(&v151, ", general st L %s", v89);
    v90 = v151;

    v6 = v90;
  }

  generalSystemStatusRight = self->_generalSystemStatusRight;
  if (generalSystemStatusRight)
  {
    v150 = v6;
    if (generalSystemStatusRight > 5)
    {
      v92 = "?";
    }

    else
    {
      v92 = off_2796EE788[generalSystemStatusRight - 1];
    }

    NSAppendPrintF_safe(&v150, ", general st R %s", v92);
    v93 = v150;

    v6 = v93;
  }

  latestMeasurementResultLeft = self->_latestMeasurementResultLeft;
  if (latestMeasurementResultLeft)
  {
    v149 = v6;
    if (latestMeasurementResultLeft > 8)
    {
      v95 = "?";
    }

    else
    {
      v95 = off_2796EE748[latestMeasurementResultLeft - 1];
    }

    NSAppendPrintF_safe(&v149, ", latest result L %s", v95);
    v96 = v149;

    v6 = v96;
  }

  latestMeasurementResultRight = self->_latestMeasurementResultRight;
  if (latestMeasurementResultRight)
  {
    v148 = v6;
    if (latestMeasurementResultRight > 8)
    {
      v98 = "?";
    }

    else
    {
      v98 = off_2796EE748[latestMeasurementResultRight - 1];
    }

    NSAppendPrintF_safe(&v148, ", latest result R %s", v98);
    v99 = v148;

    v6 = v99;
  }

  rearVentStatusLeft = self->_rearVentStatusLeft;
  if (rearVentStatusLeft)
  {
    v147 = v6;
    if (rearVentStatusLeft > 5)
    {
      v101 = "?";
    }

    else
    {
      v101 = off_2796EE788[rearVentStatusLeft - 1];
    }

    NSAppendPrintF_safe(&v147, ", rearVent L %s", v101);
    v102 = v147;

    v6 = v102;
  }

  rearVentStatusRight = self->_rearVentStatusRight;
  if (rearVentStatusRight)
  {
    v146 = v6;
    if (rearVentStatusRight > 5)
    {
      v104 = "?";
    }

    else
    {
      v104 = off_2796EE788[rearVentStatusRight - 1];
    }

    NSAppendPrintF_safe(&v146, ", rearVent R %s", v104);
    v105 = v146;

    v6 = v105;
  }

  refMicStatusLeft = self->_refMicStatusLeft;
  if (refMicStatusLeft)
  {
    v145 = v6;
    if (refMicStatusLeft > 5)
    {
      v107 = "?";
    }

    else
    {
      v107 = off_2796EE788[refMicStatusLeft - 1];
    }

    NSAppendPrintF_safe(&v145, ", ref Mic L %s", v107);
    v108 = v145;

    v6 = v108;
  }

  refMicStatusRight = self->_refMicStatusRight;
  if (refMicStatusRight)
  {
    v144 = v6;
    if (refMicStatusRight > 5)
    {
      v110 = "?";
    }

    else
    {
      v110 = off_2796EE788[refMicStatusRight - 1];
    }

    NSAppendPrintF_safe(&v144, ", ref Mic R %s", v110);
    v111 = v144;

    v6 = v111;
  }

  speakerStatusLeft = self->_speakerStatusLeft;
  if (speakerStatusLeft)
  {
    v143 = v6;
    if (speakerStatusLeft > 5)
    {
      v113 = "?";
    }

    else
    {
      v113 = off_2796EE788[speakerStatusLeft - 1];
    }

    NSAppendPrintF_safe(&v143, ", speaker L %s", v113);
    v114 = v143;

    v6 = v114;
  }

  speakerStatusRight = self->_speakerStatusRight;
  if (speakerStatusRight)
  {
    v142 = v6;
    if (speakerStatusRight > 5)
    {
      v116 = "?";
    }

    else
    {
      v116 = off_2796EE788[speakerStatusRight - 1];
    }

    NSAppendPrintF_safe(&v142, ", speaker R %s", v116);
    v117 = v142;

    v6 = v117;
  }

  totalHarmonicDistortionLeft = self->_totalHarmonicDistortionLeft;
  if (totalHarmonicDistortionLeft)
  {
    v141 = v6;
    if (totalHarmonicDistortionLeft > 5)
    {
      v119 = "?";
    }

    else
    {
      v119 = off_2796EE788[totalHarmonicDistortionLeft - 1];
    }

    NSAppendPrintF_safe(&v141, ", THD L %s", v119);
    v120 = v141;

    v6 = v120;
  }

  totalHarmonicDistortionRight = self->_totalHarmonicDistortionRight;
  if (totalHarmonicDistortionRight)
  {
    v140 = v6;
    if (totalHarmonicDistortionRight > 5)
    {
      v122 = "?";
    }

    else
    {
      v122 = off_2796EE788[totalHarmonicDistortionRight - 1];
    }

    NSAppendPrintF_safe(&v140, ", THD R %s", v122);
    v123 = v140;

    v6 = v123;
  }

  vceMicStatusLeft = self->_vceMicStatusLeft;
  if (vceMicStatusLeft)
  {
    v139 = v6;
    if (vceMicStatusLeft > 5)
    {
      v125 = "?";
    }

    else
    {
      v125 = off_2796EE788[vceMicStatusLeft - 1];
    }

    NSAppendPrintF_safe(&v139, ", vce Mic L %s", v125);
    v126 = v139;

    v6 = v126;
  }

  vceMicStatusRight = self->_vceMicStatusRight;
  if (vceMicStatusRight)
  {
    v138 = v6;
    if (vceMicStatusRight > 5)
    {
      v128 = "?";
    }

    else
    {
      v128 = off_2796EE788[vceMicStatusRight - 1];
    }

    NSAppendPrintF_safe(&v138, ", vce Mic R %s", v128);
    v129 = v138;

    v6 = v129;
  }

  v130 = self->_version;
  v131 = v130;
  if (v130)
  {
    v137 = v6;
    NSAppendPrintF_safe(&v137, ", version %@", v130);
    v132 = v137;

    v6 = v132;
  }

  if (level < 21)
  {
    v136 = v6;
    NSAppendPrintF_safe(&v136, "\n");
    v133 = v136;

    v6 = v133;
  }

  v134 = v6;

  return v6;
}

- (HMDeviceDiagnosticRecord)initWithHMDeviceRecord:(id)record isNewPairing:(BOOL)pairing
{
  pairingCopy = pairing;
  recordCopy = record;
  v17.receiver = self;
  v17.super_class = HMDeviceDiagnosticRecord;
  v7 = [(HMDeviceDiagnosticRecord *)&v17 init];
  if (v7)
  {
    bluetoothAddress = [recordCopy bluetoothAddress];
    objc_storeStrong(&v7->_bluetoothAddress, bluetoothAddress);
    bluetoothUUID = [recordCopy bluetoothUUID];
    objc_storeStrong(&v7->_bluetoothUUID, bluetoothUUID);
    aaDevice = [recordCopy aaDevice];
    coreBluetoothDevice = [aaDevice coreBluetoothDevice];
    productID = [coreBluetoothDevice productID];

    v7->_productID = productID;
    aaDevice2 = [recordCopy aaDevice];
    firmwareVersion = [aaDevice2 firmwareVersion];
    firmwareVersion = v7->_firmwareVersion;
    v7->_firmwareVersion = firmwareVersion;

    [(HMDeviceDiagnosticRecord *)v7 _prefsLoadOcclusionStats];
    if (pairingCopy)
    {
      [(HMDeviceDiagnosticRecord *)v7 _resetAllOcclusionStats];
    }
  }

  return v7;
}

- (void)setIsNewPairing:(BOOL)pairing
{
  if (pairing)
  {
    [(HMDeviceDiagnosticRecord *)self _resetAllOcclusionStats];
  }
}

+ (int)getHMDiagnosticMeasurementStatusForValue:(unsigned __int8)value
{
  if (value < 8u)
  {
    return value + 1;
  }

  else
  {
    return 0;
  }
}

+ (int)getHMDiagnosticStatusForValue:(unsigned __int8)value
{
  if (value < 5u)
  {
    return value + 1;
  }

  else
  {
    return 0;
  }
}

- (BOOL)_hasValidMeasurementForSide:(id)side
{
  sideCopy = side;
  v5 = sideCopy;
  if (sideCopy == @"left")
  {
    goto LABEL_4;
  }

  if (!sideCopy)
  {
LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  v6 = [(__CFString *)sideCopy isEqual:@"left"];

  if ((v6 & 1) == 0)
  {
    v9 = v5;
    if (v9 == @"right" || (v10 = v9, v11 = [(__CFString *)v9 isEqual:@"right"], v10, v11))
    {
      v7 = 104;
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_4:
  v7 = 100;
LABEL_5:
  v8 = (*(&self->super.isa + v7) - 1) < 2;
LABEL_10:

  return v8;
}

- (BOOL)_isDate:(id)date lesserThanOrEqualToMonths:(unsigned __int8)months
{
  monthsCopy = months;
  dateCopy = date;
  if (dateCopy)
  {
    date = [MEMORY[0x277CBEAA8] date];
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v8 = [currentCalendar components:28 fromDate:dateCopy toDate:date options:0];
    if (gLogCategory_HMDeviceDiagnosticRecord <= 10 && (gLogCategory_HMDeviceDiagnosticRecord != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceDiagnosticRecord _isDate:v8 lesserThanOrEqualToMonths:dateCopy];
    }

    v9 = [v8 year] <= 0 && objc_msgSend(v8, "month") <= monthsCopy;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unsigned)_getMinimumRequiredPayloadLength
{
  if ([(NSNumber *)self->_version intValue]< 5)
  {
    return 33;
  }

  if ([(NSNumber *)self->_version intValue]<= 4)
  {
    return 0;
  }

  return 57;
}

- (int64_t)_minutesSinceTimestamp:(id)timestamp
{
  if (!timestamp)
  {
    return 0;
  }

  v3 = MEMORY[0x277CBEAA8];
  timestampCopy = timestamp;
  v5 = [v3 now];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v7 = [currentCalendar components:224 fromDate:timestampCopy toDate:v5 options:0];

  minute = [v7 minute];
  return minute;
}

- (id)getCloudRecordForCurrentFaultCount
{
  v3 = [objc_alloc(MEMORY[0x277CEF830]) initWithBluetoothAddress:self->_bluetoothAddress];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_bottomMicFaultCountLeft];
  [v3 setBottomMicFaultCountLeft:v4];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_topMicFaultCountLeft];
  [v3 setTopMicFaultCountLeft:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_innerMicFaultCountLeft];
  [v3 setInnerMicFaultCountLeft:v6];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_speakerFaultCountLeft];
  [v3 setSpeakerFaultCountLeft:v7];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_frontVentFaultCountLeft];
  [v3 setFrontVentFaultCountLeft:v8];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_rearVentFaultCountLeft];
  [v3 setRearVentFaultCountLeft:v9];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_totalHarmonicDistortionFaultCountLeft];
  [v3 setTotalHarmonicDistortionFaultCountLeft:v10];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_freqAccuracyFaultCountLeft];
  [v3 setFreqAccuracyFaultCountLeft:v11];

  [v3 setLatestDiagnosticTimestampLeft:self->_lastMeasurementTimestampLeft];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_bottomMicFaultCountRight];
  [v3 setBottomMicFaultCountRight:v12];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_topMicFaultCountRight];
  [v3 setTopMicFaultCountRight:v13];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_innerMicFaultCountRight];
  [v3 setInnerMicFaultCountRight:v14];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_speakerFaultCountRight];
  [v3 setSpeakerFaultCountRight:v15];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_frontVentFaultCountRight];
  [v3 setFrontVentFaultCountRight:v16];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_rearVentFaultCountRight];
  [v3 setRearVentFaultCountRight:v17];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_totalHarmonicDistortionFaultCountRight];
  [v3 setTotalHarmonicDistortionFaultCountRight:v18];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_freqAccuracyFaultCountRight];
  [v3 setFreqAccuracyFaultCountRight:v19];

  [v3 setLatestDiagnosticTimestampRight:self->_lastMeasurementTimestampRight];
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_diagnosticMeasurementsCount];
  [v3 setDiagnosticMeasurementsCount:v20];

  return v3;
}

- (void)resetFaultCounts
{
  self->_totalHarmonicDistortionFaultCountRight = 0;
  *&self->_speakerFaultCountRight = 0u;
  *&self->_innerMicFaultCountRight = 0u;
  *&self->_freqAccuracyFaultCountRight = 0u;
  *&self->_bottomMicFaultCountLeft = 0u;
}

- (void)_updateLeftSideFaultCountWithCloudRecord:(id)record
{
  recordCopy = record;
  v38 = recordCopy;
  if (self->_vceMicStatusLeft == 1)
  {
    v5 = 0;
  }

  else
  {
    bottomMicFaultCountLeft = [recordCopy bottomMicFaultCountLeft];
    unsignedIntValue = [bottomMicFaultCountLeft unsignedIntValue];

    if (unsignedIntValue >= 2)
    {
      v8 = 2;
    }

    else
    {
      v8 = unsignedIntValue;
    }

    if (self->_vceMicStatusLeft == 2)
    {
      v5 = v8 + 1;
    }

    else
    {
      v5 = unsignedIntValue;
    }
  }

  self->_bottomMicFaultCountLeft = v5;
  if (self->_refMicStatusLeft == 1)
  {
    v9 = 0;
  }

  else
  {
    topMicFaultCountLeft = [v38 topMicFaultCountLeft];
    unsignedIntValue2 = [topMicFaultCountLeft unsignedIntValue];

    if (unsignedIntValue2 >= 2)
    {
      v12 = 2;
    }

    else
    {
      v12 = unsignedIntValue2;
    }

    if (self->_refMicStatusLeft == 2)
    {
      v9 = v12 + 1;
    }

    else
    {
      v9 = unsignedIntValue2;
    }
  }

  self->_topMicFaultCountLeft = v9;
  if (self->_errMicStatusLeft == 1)
  {
    v13 = 0;
  }

  else
  {
    innerMicFaultCountLeft = [v38 innerMicFaultCountLeft];
    unsignedIntValue3 = [innerMicFaultCountLeft unsignedIntValue];

    if (unsignedIntValue3 >= 2)
    {
      v16 = 2;
    }

    else
    {
      v16 = unsignedIntValue3;
    }

    if (self->_errMicStatusLeft == 2)
    {
      v13 = v16 + 1;
    }

    else
    {
      v13 = unsignedIntValue3;
    }
  }

  self->_innerMicFaultCountLeft = v13;
  if (self->_speakerStatusLeft == 1)
  {
    v17 = 0;
  }

  else
  {
    speakerFaultCountLeft = [v38 speakerFaultCountLeft];
    unsignedIntValue4 = [speakerFaultCountLeft unsignedIntValue];

    if (unsignedIntValue4 >= 2)
    {
      v20 = 2;
    }

    else
    {
      v20 = unsignedIntValue4;
    }

    if (self->_speakerStatusLeft == 2)
    {
      v17 = v20 + 1;
    }

    else
    {
      v17 = unsignedIntValue4;
    }
  }

  self->_speakerFaultCountLeft = v17;
  if (self->_frontVentStatusLeft == 1)
  {
    v21 = 0;
  }

  else
  {
    frontVentFaultCountLeft = [v38 frontVentFaultCountLeft];
    unsignedIntValue5 = [frontVentFaultCountLeft unsignedIntValue];

    if (unsignedIntValue5 >= 2)
    {
      v24 = 2;
    }

    else
    {
      v24 = unsignedIntValue5;
    }

    if (self->_frontVentStatusLeft == 2)
    {
      v21 = v24 + 1;
    }

    else
    {
      v21 = unsignedIntValue5;
    }
  }

  self->_frontVentFaultCountLeft = v21;
  if (self->_rearVentStatusLeft == 1)
  {
    v25 = 0;
  }

  else
  {
    rearVentFaultCountLeft = [v38 rearVentFaultCountLeft];
    unsignedIntValue6 = [rearVentFaultCountLeft unsignedIntValue];

    if (unsignedIntValue6 >= 2)
    {
      v28 = 2;
    }

    else
    {
      v28 = unsignedIntValue6;
    }

    if (self->_rearVentStatusLeft == 2)
    {
      v25 = v28 + 1;
    }

    else
    {
      v25 = unsignedIntValue6;
    }
  }

  self->_rearVentFaultCountLeft = v25;
  if (self->_totalHarmonicDistortionLeft == 1)
  {
    v29 = 0;
  }

  else
  {
    totalHarmonicDistortionFaultCountLeft = [v38 totalHarmonicDistortionFaultCountLeft];
    unsignedIntValue7 = [totalHarmonicDistortionFaultCountLeft unsignedIntValue];

    if (unsignedIntValue7 >= 2)
    {
      v32 = 2;
    }

    else
    {
      v32 = unsignedIntValue7;
    }

    if (self->_totalHarmonicDistortionLeft == 2)
    {
      v29 = v32 + 1;
    }

    else
    {
      v29 = unsignedIntValue7;
    }
  }

  self->_totalHarmonicDistortionFaultCountLeft = v29;
  if (self->_frequencyAccuracyLeft == 1)
  {
    v33 = 0;
    v34 = v38;
  }

  else
  {
    freqAccuracyFaultCountLeft = [v38 freqAccuracyFaultCountLeft];
    unsignedIntValue8 = [freqAccuracyFaultCountLeft unsignedIntValue];

    v34 = v38;
    if (unsignedIntValue8 >= 2)
    {
      v37 = 2;
    }

    else
    {
      v37 = unsignedIntValue8;
    }

    if (self->_frequencyAccuracyLeft == 2)
    {
      v33 = v37 + 1;
    }

    else
    {
      v33 = unsignedIntValue8;
    }
  }

  self->_freqAccuracyFaultCountLeft = v33;
}

- (void)_updateRightSideFaultCountWithCloudRecord:(id)record
{
  recordCopy = record;
  v38 = recordCopy;
  if (self->_vceMicStatusRight == 1)
  {
    v5 = 0;
  }

  else
  {
    bottomMicFaultCountRight = [recordCopy bottomMicFaultCountRight];
    unsignedIntValue = [bottomMicFaultCountRight unsignedIntValue];

    if (unsignedIntValue >= 2)
    {
      v8 = 2;
    }

    else
    {
      v8 = unsignedIntValue;
    }

    if (self->_vceMicStatusRight == 2)
    {
      v5 = v8 + 1;
    }

    else
    {
      v5 = unsignedIntValue;
    }
  }

  self->_bottomMicFaultCountRight = v5;
  if (self->_refMicStatusRight == 1)
  {
    v9 = 0;
  }

  else
  {
    topMicFaultCountRight = [v38 topMicFaultCountRight];
    unsignedIntValue2 = [topMicFaultCountRight unsignedIntValue];

    if (unsignedIntValue2 >= 2)
    {
      v12 = 2;
    }

    else
    {
      v12 = unsignedIntValue2;
    }

    if (self->_refMicStatusRight == 2)
    {
      v9 = v12 + 1;
    }

    else
    {
      v9 = unsignedIntValue2;
    }
  }

  self->_topMicFaultCountRight = v9;
  if (self->_errMicStatusRight == 1)
  {
    v13 = 0;
  }

  else
  {
    innerMicFaultCountRight = [v38 innerMicFaultCountRight];
    unsignedIntValue3 = [innerMicFaultCountRight unsignedIntValue];

    if (unsignedIntValue3 >= 2)
    {
      v16 = 2;
    }

    else
    {
      v16 = unsignedIntValue3;
    }

    if (self->_errMicStatusRight == 2)
    {
      v13 = v16 + 1;
    }

    else
    {
      v13 = unsignedIntValue3;
    }
  }

  self->_innerMicFaultCountRight = v13;
  if (self->_speakerStatusRight == 1)
  {
    v17 = 0;
  }

  else
  {
    speakerFaultCountRight = [v38 speakerFaultCountRight];
    unsignedIntValue4 = [speakerFaultCountRight unsignedIntValue];

    if (unsignedIntValue4 >= 2)
    {
      v20 = 2;
    }

    else
    {
      v20 = unsignedIntValue4;
    }

    if (self->_speakerStatusRight == 2)
    {
      v17 = v20 + 1;
    }

    else
    {
      v17 = unsignedIntValue4;
    }
  }

  self->_speakerFaultCountRight = v17;
  if (self->_frontVentStatusRight == 1)
  {
    v21 = 0;
  }

  else
  {
    frontVentFaultCountRight = [v38 frontVentFaultCountRight];
    unsignedIntValue5 = [frontVentFaultCountRight unsignedIntValue];

    if (unsignedIntValue5 >= 2)
    {
      v24 = 2;
    }

    else
    {
      v24 = unsignedIntValue5;
    }

    if (self->_frontVentStatusRight == 2)
    {
      v21 = v24 + 1;
    }

    else
    {
      v21 = unsignedIntValue5;
    }
  }

  self->_frontVentFaultCountRight = v21;
  if (self->_rearVentStatusRight == 1)
  {
    v25 = 0;
  }

  else
  {
    rearVentFaultCountRight = [v38 rearVentFaultCountRight];
    unsignedIntValue6 = [rearVentFaultCountRight unsignedIntValue];

    if (unsignedIntValue6 >= 2)
    {
      v28 = 2;
    }

    else
    {
      v28 = unsignedIntValue6;
    }

    if (self->_rearVentStatusRight == 2)
    {
      v25 = v28 + 1;
    }

    else
    {
      v25 = unsignedIntValue6;
    }
  }

  self->_rearVentFaultCountRight = v25;
  if (self->_totalHarmonicDistortionRight == 1)
  {
    v29 = 0;
  }

  else
  {
    totalHarmonicDistortionFaultCountRight = [v38 totalHarmonicDistortionFaultCountRight];
    unsignedIntValue7 = [totalHarmonicDistortionFaultCountRight unsignedIntValue];

    if (unsignedIntValue7 >= 2)
    {
      v32 = 2;
    }

    else
    {
      v32 = unsignedIntValue7;
    }

    if (self->_totalHarmonicDistortionRight == 2)
    {
      v29 = v32 + 1;
    }

    else
    {
      v29 = unsignedIntValue7;
    }
  }

  self->_totalHarmonicDistortionFaultCountRight = v29;
  if (self->_frequencyAccuracyRight == 1)
  {
    v33 = 0;
    v34 = v38;
  }

  else
  {
    freqAccuracyFaultCountRight = [v38 freqAccuracyFaultCountRight];
    unsignedIntValue8 = [freqAccuracyFaultCountRight unsignedIntValue];

    v34 = v38;
    if (unsignedIntValue8 >= 2)
    {
      v37 = 2;
    }

    else
    {
      v37 = unsignedIntValue8;
    }

    if (self->_frequencyAccuracyRight == 2)
    {
      v33 = v37 + 1;
    }

    else
    {
      v33 = unsignedIntValue8;
    }
  }

  self->_freqAccuracyFaultCountRight = v33;
}

- (void)updateWithDiagnosticData:(id)data
{
  dataCopy = data;
  v5 = dataCopy;
  if (dataCopy && [dataCopy length])
  {
    v8 = 0;
    [v5 getBytes:&v8 length:1];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v8];
    version = self->_version;
    self->_version = v6;

    if (v8 == 2)
    {
      [(HMDeviceDiagnosticRecord *)self updateWithMeasurementDataLegacyVersion:v5];
    }

    else if (v8 >= 3u)
    {
      [(HMDeviceDiagnosticRecord *)self updateWithMeasurementData:v5];
    }
  }

  else if (gLogCategory_HMDeviceDiagnosticRecord <= 90 && (gLogCategory_HMDeviceDiagnosticRecord != -1 || _LogCategory_Initialize()))
  {
    [HMDeviceDiagnosticRecord updateWithDiagnosticData:?];
  }
}

- (void)updateWithMeasurementDataLegacyVersion:(id)version
{
  versionCopy = version;
  v5 = [versionCopy length];
  if (v5 > 0x18)
  {
    memset(v15, 0, sizeof(v15));
    v16 = 0;
    [versionCopy getBytes:v15 length:25];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(v15 + 1)];
    daysSinceLastMeasurementLeft = self->_daysSinceLastMeasurementLeft;
    self->_daysSinceLastMeasurementLeft = v7;

    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(v15 + 3)];
    daysSinceLastMeasurementRight = self->_daysSinceLastMeasurementRight;
    self->_daysSinceLastMeasurementRight = v9;

    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(&v15[1] + 5)];
    daysSinceLastHarmonicMeasurementLeft = self->_daysSinceLastHarmonicMeasurementLeft;
    self->_daysSinceLastHarmonicMeasurementLeft = v11;

    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(&v15[1] + 7)];
    daysSinceLastHarmonicMeasurementRight = self->_daysSinceLastHarmonicMeasurementRight;
    self->_daysSinceLastHarmonicMeasurementRight = v13;

    [(HMDeviceDiagnosticRecord *)self updateWithMeasurementResultLeft:*(v15 + 5)];
    [(HMDeviceDiagnosticRecord *)self updateWithMeasurementResultRight:*(&v15[1] + 1)];
  }

  else if (gLogCategory_HMDeviceDiagnosticRecord <= 90)
  {
    v6 = v5;
    if (gLogCategory_HMDeviceDiagnosticRecord != -1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_HMDeviceDiagnosticRecord, "[HMDeviceDiagnosticRecord updateWithMeasurementDataLegacyVersion:]", 90, "## HMDeviceRecord identifier %@, invalid length %u received for diagnostic data: version 2", self->_bluetoothUUID, v6);
    }
  }
}

- (void)updateWithMeasurementData:(id)data
{
  dataCopy = data;
  v5 = [dataCopy length];
  _getMinimumRequiredPayloadLength = [(HMDeviceDiagnosticRecord *)self _getMinimumRequiredPayloadLength];
  if (v5 >= _getMinimumRequiredPayloadLength)
  {
    memset(v16, 0, 57);
    [dataCopy getBytes:v16 length:57];
    if (*(v16 + 1))
    {
      v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:*(v16 + 1)];
      lastMeasurementTimestampLeft = self->_lastMeasurementTimestampLeft;
      self->_lastMeasurementTimestampLeft = v8;
    }

    if (*(v16 + 9))
    {
      v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:*(v16 + 9)];
      lastMeasurementTimestampRight = self->_lastMeasurementTimestampRight;
      self->_lastMeasurementTimestampRight = v10;
    }

    [(HMDeviceDiagnosticRecord *)self updateWithMeasurementResultLeft:*(&v16[1] + 1)];
    [(HMDeviceDiagnosticRecord *)self updateWithMeasurementResultRight:*(&v16[1] + 5)];
    if ([(HMDeviceDiagnosticRecord *)self _isANCScoreSupported])
    {
      [(HMDeviceDiagnosticRecord *)self updateWithANCLossScores:*(&v16[1] + 9)];
    }

    if ([(HMDeviceDiagnosticRecord *)self _isFirstTimeOfUseSupported])
    {
      if (*(&v16[2] + 1))
      {
        v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:*(&v16[2] + 1)];
        firstTimeUseTimestampLeft = self->_firstTimeUseTimestampLeft;
        self->_firstTimeUseTimestampLeft = v12;
      }

      if (*(&v16[2] + 5))
      {
        v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:*(&v16[2] + 5)];
        firstTimeUseTimestampRight = self->_firstTimeUseTimestampRight;
        self->_firstTimeUseTimestampRight = v14;
      }
    }
  }

  else if (gLogCategory_HMDeviceDiagnosticRecord <= 90)
  {
    v7 = _getMinimumRequiredPayloadLength;
    if (gLogCategory_HMDeviceDiagnosticRecord != -1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_HMDeviceDiagnosticRecord, "[HMDeviceDiagnosticRecord updateWithMeasurementData:]", 90, "## HMDeviceRecord identifier %@, invalid length %u received for diagnostic data: version %@. Required length %u", self->_bluetoothUUID, v5, self->_version, v7);
    }
  }
}

- (id)getOnDemandRetestReason
{
  diagnosticMeasurementsCount = self->_diagnosticMeasurementsCount;
  if (diagnosticMeasurementsCount <= 2)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Insufficient Results: %d", diagnosticMeasurementsCount];
    v19 = LABEL_35:;
    goto LABEL_36;
  }

  bottomMicFaultCountLeft = self->_bottomMicFaultCountLeft;
  if ((bottomMicFaultCountLeft - 1) <= 1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Left Bottom Mic Fault with count: %d", bottomMicFaultCountLeft];
    goto LABEL_35;
  }

  bottomMicFaultCountRight = self->_bottomMicFaultCountRight;
  if ((bottomMicFaultCountRight - 1) <= 1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Right Bottom Mic Fault with count: %d", bottomMicFaultCountRight];
    goto LABEL_35;
  }

  topMicFaultCountLeft = self->_topMicFaultCountLeft;
  if ((topMicFaultCountLeft - 1) <= 1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Left Top Mic Fault with count: %d", topMicFaultCountLeft];
    goto LABEL_35;
  }

  topMicFaultCountRight = self->_topMicFaultCountRight;
  if ((topMicFaultCountRight - 1) <= 1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Right Top Mic Fault with count: %d", topMicFaultCountRight];
    goto LABEL_35;
  }

  innerMicFaultCountLeft = self->_innerMicFaultCountLeft;
  if ((innerMicFaultCountLeft - 1) <= 1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Left Inner Mic Fault with count: %d", innerMicFaultCountLeft];
    goto LABEL_35;
  }

  innerMicFaultCountRight = self->_innerMicFaultCountRight;
  if ((innerMicFaultCountRight - 1) <= 1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Right Inner Mic Fault with count: %d", innerMicFaultCountRight];
    goto LABEL_35;
  }

  speakerFaultCountLeft = self->_speakerFaultCountLeft;
  if ((speakerFaultCountLeft - 1) <= 1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Left Speaker Fault with count: %d", speakerFaultCountLeft];
    goto LABEL_35;
  }

  speakerFaultCountRight = self->_speakerFaultCountRight;
  if ((speakerFaultCountRight - 1) <= 1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Right Speaker Fault with count: %d", speakerFaultCountRight];
    goto LABEL_35;
  }

  frontVentFaultCountLeft = self->_frontVentFaultCountLeft;
  if ((frontVentFaultCountLeft - 1) <= 1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Left Front Vent Fault with count: %d", frontVentFaultCountLeft];
    goto LABEL_35;
  }

  frontVentFaultCountRight = self->_frontVentFaultCountRight;
  if ((frontVentFaultCountRight - 1) <= 1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Right Front Vent Fault with count: %d", frontVentFaultCountRight];
    goto LABEL_35;
  }

  rearVentFaultCountLeft = self->_rearVentFaultCountLeft;
  if ((rearVentFaultCountLeft - 1) <= 1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Left Rear Vent Fault with count: %d", rearVentFaultCountLeft];
    goto LABEL_35;
  }

  rearVentFaultCountRight = self->_rearVentFaultCountRight;
  if ((rearVentFaultCountRight - 1) <= 1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Right Rear Vent Fault with count: %d", rearVentFaultCountRight];
    goto LABEL_35;
  }

  totalHarmonicDistortionFaultCountLeft = self->_totalHarmonicDistortionFaultCountLeft;
  if ((totalHarmonicDistortionFaultCountLeft - 1) <= 1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Left THD Fault with count: %d", totalHarmonicDistortionFaultCountLeft];
    goto LABEL_35;
  }

  totalHarmonicDistortionFaultCountRight = self->_totalHarmonicDistortionFaultCountRight;
  if ((totalHarmonicDistortionFaultCountRight - 1) <= 1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Right THD Fault with count: %d", totalHarmonicDistortionFaultCountRight];
    goto LABEL_35;
  }

  freqAccuracyFaultCountLeft = self->_freqAccuracyFaultCountLeft;
  if ((freqAccuracyFaultCountLeft - 1) <= 1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Left freq Acc Fault with count: %d", freqAccuracyFaultCountLeft];
    goto LABEL_35;
  }

  freqAccuracyFaultCountRight = self->_freqAccuracyFaultCountRight;
  if ((freqAccuracyFaultCountRight - 1) <= 1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Right freq Acc with count: %d", freqAccuracyFaultCountRight];
    goto LABEL_35;
  }

  v19 = 0;
LABEL_36:

  return v19;
}

- (BOOL)hasMeasurementChangedForSide:(id)side withRecord:(id)record
{
  sideCopy = side;
  recordCopy = record;
  version = self->_version;
  if (!version || [(NSNumber *)version intValue]> 2)
  {
    v10 = sideCopy;
    v11 = v10;
    if (v10 == @"left")
    {
      goto LABEL_8;
    }

    if (!v10)
    {
      goto LABEL_22;
    }

    v12 = [(__CFString *)v10 isEqual:@"left"];

    if (v12)
    {
LABEL_8:
      lastMeasurementTimestampLeft = self->_lastMeasurementTimestampLeft;
      latestDiagnosticTimestampLeft = [recordCopy latestDiagnosticTimestampLeft];
      v15 = lastMeasurementTimestampLeft;
      v16 = latestDiagnosticTimestampLeft;
      v17 = v16;
      if (v15 == v16)
      {
      }

      else
      {
        if ((v15 != 0) == (v16 == 0))
        {

          goto LABEL_25;
        }

        v18 = [(NSDate *)v15 isEqual:v16];

        if ((v18 & 1) == 0)
        {
          goto LABEL_25;
        }
      }
    }

    v19 = v11;
    if (v19 != @"right")
    {
      v11 = v19;
      if (!v19)
      {
        goto LABEL_22;
      }

      v20 = [(__CFString *)v19 isEqual:@"right"];

      if (!v20)
      {
        goto LABEL_23;
      }
    }

    lastMeasurementTimestampRight = self->_lastMeasurementTimestampRight;
    latestDiagnosticTimestampRight = [recordCopy latestDiagnosticTimestampRight];
    v23 = lastMeasurementTimestampRight;
    v24 = latestDiagnosticTimestampRight;
    v11 = v24;
    if (v23 != v24)
    {
      if ((v23 != 0) != (v24 == 0))
      {
        v25 = [(NSDate *)v23 isEqual:v24];

        if ((v25 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_23;
      }

LABEL_25:
      v26 = 1;
      goto LABEL_26;
    }

LABEL_22:
    goto LABEL_23;
  }

  diagnosticMeasurementsCount = [recordCopy diagnosticMeasurementsCount];

  if (!diagnosticMeasurementsCount)
  {
    goto LABEL_25;
  }

LABEL_23:
  v26 = 0;
LABEL_26:

  return v26;
}

- (BOOL)isDeviceUsedFor3MonthsOrLess
{
  v3 = [(HMDeviceDiagnosticRecord *)self _isDate:self->_firstTimeUseTimestampLeft lesserThanOrEqualToMonths:3];
  if (v3)
  {
    firstTimeUseTimestampRight = self->_firstTimeUseTimestampRight;

    LOBYTE(v3) = [(HMDeviceDiagnosticRecord *)self _isDate:firstTimeUseTimestampRight lesserThanOrEqualToMonths:3];
  }

  return v3;
}

- (id)measurementInvalidReason
{
  generalSystemStatusLeft = self->_generalSystemStatusLeft;
  if (generalSystemStatusLeft == 4)
  {
    return @"no UTP connection";
  }

  generalSystemStatusRight = self->_generalSystemStatusRight;
  if (generalSystemStatusRight == 4)
  {
    return @"no UTP connection";
  }

  if (generalSystemStatusLeft == 5 || generalSystemStatusRight == 5)
  {
    return @"no data + >1 year out of factory";
  }

  if ([(NSNumber *)self->_version intValue]> 2)
  {
    if (self->_lastMeasurementTimestampLeft && self->_lastMeasurementTimestampRight)
    {
      if ([HMDeviceDiagnosticRecord _isDate:"_isDate:lesserThanOrEqualToMonths:" lesserThanOrEqualToMonths:?])
      {
        if ([(HMDeviceDiagnosticRecord *)self _isDate:self->_lastMeasurementTimestampRight lesserThanOrEqualToMonths:12])
        {
          return 0;
        }

        else
        {
          return @"right measurement older than 1 year";
        }
      }

      else
      {
        return @"left measurement older than 1 year";
      }
    }

    else
    {
      return @"missing measurement timestamp";
    }
  }

  else
  {
    daysSinceLastMeasurementLeft = self->_daysSinceLastMeasurementLeft;
    if (daysSinceLastMeasurementLeft && self->_daysSinceLastMeasurementRight)
    {
      if ([(NSNumber *)daysSinceLastMeasurementLeft intValue]<= 365 && [(NSNumber *)self->_daysSinceLastMeasurementRight intValue]< 366)
      {
        return 0;
      }

      else
      {
        return @"measurement older than 1 year";
      }
    }

    else
    {
      return @"missing days since last measurement";
    }
  }
}

- (void)occlusionIndicationShownForFeatureID:(int)d type:(int)type action:(int)action
{
  v5 = *&action;
  v6 = *&type;
  if (gLogCategory_HMDeviceDiagnosticRecord <= 30 && (gLogCategory_HMDeviceDiagnosticRecord != -1 || _LogCategory_Initialize()))
  {
    [(HMDeviceDiagnosticRecord *)self occlusionIndicationShownForFeatureID:v6 type:d action:v5];
  }

  if (d == 3)
  {
    if ((v6 - 3) <= 1)
    {
      htCleaningAlertCount = self->_htCleaningAlertCount;
      if ((htCleaningAlertCount + 1) < 0xFFFFFFFE)
      {
        v13 = htCleaningAlertCount + 1;
      }

      else
      {
        v13 = -2;
      }

      self->_htCleaningAlertCount = v13;
      p_htCleaningAlertFirstTimestamp = &self->_htCleaningAlertFirstTimestamp;
      htCleaningAlertFirstTimestamp = self->_htCleaningAlertFirstTimestamp;
      goto LABEL_17;
    }

    if (v6 == 5)
    {
      htCleaningAlertCount = self->_htCleaningAlertCount;
      v14 = [(HMDeviceDiagnosticRecord *)self _minutesSinceTimestamp:self->_htCleaningAlertFirstTimestamp];
      selfCopy3 = self;
      v18 = 3;
      v19 = 3;
      goto LABEL_25;
    }

LABEL_34:
    htCleaningAlertCount = 0;
    v14 = 0;
    goto LABEL_35;
  }

  if (d != 2)
  {
    return;
  }

  if (v6 == 1 && !v5)
  {
    htCleaningAlertCount = self->_hpActiveNotificationCount;
    if ((htCleaningAlertCount + 1) < 0xFFFFFFFE)
    {
      v10 = htCleaningAlertCount + 1;
    }

    else
    {
      v10 = -2;
    }

    self->_hpActiveNotificationCount = v10;
    p_htCleaningAlertFirstTimestamp = &self->_hpActiveNotificationFirstTimestamp;
    htCleaningAlertFirstTimestamp = self->_hpActiveNotificationFirstTimestamp;
LABEL_17:
    v14 = [(HMDeviceDiagnosticRecord *)self _minutesSinceTimestamp:htCleaningAlertFirstTimestamp];
    if (!*p_htCleaningAlertFirstTimestamp)
    {
      v15 = [MEMORY[0x277CBEAA8] now];
      v16 = *p_htCleaningAlertFirstTimestamp;
      *p_htCleaningAlertFirstTimestamp = v15;
    }

    [(HMDeviceDiagnosticRecord *)self _prefsSaveOcclusionStats];
    goto LABEL_35;
  }

  if (v6 != 2)
  {
    if (v6 == 7 && !v5)
    {
      htCleaningAlertCount = self->_hpPlacardCount;
      if ((htCleaningAlertCount + 1) < 0xFFFFFFFE)
      {
        v20 = htCleaningAlertCount + 1;
      }

      else
      {
        v20 = -2;
      }

      self->_hpPlacardCount = v20;
      p_htCleaningAlertFirstTimestamp = &self->_hpPlacardFirstTimestamp;
      htCleaningAlertFirstTimestamp = self->_hpPlacardFirstTimestamp;
      goto LABEL_17;
    }

    if (v6 == 8)
    {
      htCleaningAlertCount = self->_hpPlacardCount;
      v14 = [(HMDeviceDiagnosticRecord *)self _minutesSinceTimestamp:self->_hpPlacardFirstTimestamp];
      selfCopy3 = self;
      v18 = 2;
      v19 = 7;
      goto LABEL_25;
    }

    goto LABEL_34;
  }

  htCleaningAlertCount = self->_hpActiveNotificationCount;
  v14 = [(HMDeviceDiagnosticRecord *)self _minutesSinceTimestamp:self->_hpActiveNotificationFirstTimestamp];
  selfCopy3 = self;
  v18 = 2;
  v19 = 1;
LABEL_25:
  [(HMDeviceDiagnosticRecord *)selfCopy3 _prefsResetOcclusionStatsForFeatureID:v18 type:v19];
LABEL_35:

  [(HMDeviceDiagnosticRecord *)self _submitMetricsForOcclusionIndicationType:v6 action:v5 previousIndicationCount:htCleaningAlertCount timeSinceFirstIndicationMins:v14];
}

- (void)_prefsLoadOcclusionStats
{
  v30 = *MEMORY[0x277D85DE8];
  CFArrayGetTypeID();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v3 = CFPrefs_CopyTypedValue();
  v4 = [v3 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    v24 = v3;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          CFStringGetTypeID();
          v9 = CFDictionaryGetTypedValue();
          bluetoothAddress = self->_bluetoothAddress;
          v11 = v9;
          v12 = bluetoothAddress;
          v13 = v12;
          if (v11 != v12)
          {
            if ((v11 != 0) == (v12 == 0))
            {
              v15 = v11;
            }

            else
            {
              v14 = [(NSString *)v11 isEqual:v12];

              if (!v14)
              {
                goto LABEL_25;
              }

LABEL_12:
              self->_hpActiveNotificationCount = CFDictionaryGetInt64Ranged();
              self->_hpPlacardCount = CFDictionaryGetInt64Ranged();
              self->_htCleaningAlertCount = CFDictionaryGetInt64Ranged();
              v15 = objc_alloc_init(MEMORY[0x277CCA968]);
              [(NSString *)v15 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
              CFStringGetTypeID();
              v13 = CFDictionaryGetTypedValue();
              if (v13)
              {
                v16 = [(NSString *)v15 dateFromString:v13];
                hpActiveNotificationFirstTimestamp = self->_hpActiveNotificationFirstTimestamp;
                self->_hpActiveNotificationFirstTimestamp = v16;
              }

              CFStringGetTypeID();
              v18 = CFDictionaryGetTypedValue();
              if (v18)
              {
                v19 = [(NSString *)v15 dateFromString:v18];
                hpPlacardFirstTimestamp = self->_hpPlacardFirstTimestamp;
                self->_hpPlacardFirstTimestamp = v19;
              }

              CFStringGetTypeID();
              v21 = CFDictionaryGetTypedValue();
              if (v21)
              {
                v22 = [(NSString *)v15 dateFromString:v21];
                htCleaningAlertFirstTimestamp = self->_htCleaningAlertFirstTimestamp;
                self->_htCleaningAlertFirstTimestamp = v22;
              }

              if (gLogCategory_HMDeviceDiagnosticRecord <= 30 && (gLogCategory_HMDeviceDiagnosticRecord != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&gLogCategory_HMDeviceDiagnosticRecord, "[HMDeviceDiagnosticRecord _prefsLoadOcclusionStats]", 30, "HMDeviceDiagnosticRecord UUID %@, read occlusion stats from prefs: %@", self->_bluetoothUUID, v8);
              }

              v3 = v24;
            }

LABEL_25:
            continue;
          }

          goto LABEL_12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v5);
  }
}

- (void)_prefsResetOcclusionStatsForFeatureID:(int)d type:(int)type
{
  if (d == 2 && type == 1)
  {
    p_hpActiveNotificationFirstTimestamp = &self->_hpActiveNotificationFirstTimestamp;
    hpActiveNotificationFirstTimestamp = self->_hpActiveNotificationFirstTimestamp;
    if (!hpActiveNotificationFirstTimestamp && !self->_hpActiveNotificationCount)
    {
      return;
    }

    v9 = 20;
  }

  else if (d == 2 && type == 7)
  {
    p_hpActiveNotificationFirstTimestamp = &self->_hpPlacardFirstTimestamp;
    hpActiveNotificationFirstTimestamp = self->_hpPlacardFirstTimestamp;
    if (!hpActiveNotificationFirstTimestamp && !self->_hpPlacardCount)
    {
      return;
    }

    v9 = 32;
  }

  else
  {
    if (d != 3)
    {
      return;
    }

    if (type != 3)
    {
      return;
    }

    p_hpActiveNotificationFirstTimestamp = &self->_htCleaningAlertFirstTimestamp;
    hpActiveNotificationFirstTimestamp = self->_htCleaningAlertFirstTimestamp;
    if (!hpActiveNotificationFirstTimestamp && !self->_htCleaningAlertCount)
    {
      return;
    }

    v9 = 48;
  }

  *p_hpActiveNotificationFirstTimestamp = 0;

  *(&self->super.isa + v9) = 0;
  [(HMDeviceDiagnosticRecord *)self _prefsSaveOcclusionStats];
  if (gLogCategory_HMDeviceDiagnosticRecord <= 30 && (gLogCategory_HMDeviceDiagnosticRecord != -1 || _LogCategory_Initialize()))
  {
    [(HMDeviceDiagnosticRecord *)self _prefsResetOcclusionStatsForFeatureID:d type:type];
  }
}

- (void)_prefsSaveOcclusionStats
{
  v36 = *MEMORY[0x277D85DE8];
  CFArrayGetTypeID();
  v2 = CFPrefs_CopyTypedValue();
  v3 = v2;
  if (v2)
  {
    v4 = [v2 mutableCopy];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v35 count:16];
  v7 = 0x27F4C5000;
  if (!v6)
  {

    v19 = 0;
    goto LABEL_27;
  }

  v8 = v6;
  v29 = v3;
  v9 = *v32;
LABEL_6:
  v10 = 0;
  while (1)
  {
    if (*v32 != v9)
    {
      objc_enumerationMutation(v5);
    }

    v11 = *(*(&v31 + 1) + 8 * v10);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

LABEL_16:
    if (v8 == ++v10)
    {
      v8 = [v5 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v8)
      {
        goto LABEL_6;
      }

      v19 = 0;
      goto LABEL_25;
    }
  }

  v12 = v5;
  CFStringGetTypeID();
  v13 = CFDictionaryGetTypedValue();
  bluetoothAddress = self->_bluetoothAddress;
  v15 = v13;
  v16 = bluetoothAddress;
  v17 = v16;
  if (v15 != v16)
  {
    if ((v15 != 0) != (v16 == 0))
    {
      v18 = [(NSString *)v15 isEqual:v16];

      if (v18)
      {
        goto LABEL_20;
      }
    }

    else
    {
    }

    v5 = v12;
    goto LABEL_16;
  }

LABEL_20:
  v19 = v11;

  v5 = v12;
  if (!v19)
  {
LABEL_25:
    v3 = v29;
    v7 = 0x27F4C5000;
    goto LABEL_27;
  }

  [v12 removeObject:v19];
  v7 = 0x27F4C5000uLL;
  v3 = v29;
  if (gLogCategory_HMDeviceDiagnosticRecord <= 10 && (gLogCategory_HMDeviceDiagnosticRecord != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_HMDeviceDiagnosticRecord, "[HMDeviceDiagnosticRecord _prefsSaveOcclusionStats]", 10, "HMDeviceDiagnosticRecord UUID %@, occlusion stats removed from prefs: %@", self->_bluetoothUUID, v19);
  }

LABEL_27:
  v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v20 setObject:self->_bluetoothAddress forKeyedSubscript:@"address"];
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_hpActiveNotificationCount];
  [v20 setObject:v21 forKeyedSubscript:@"HPActiveNotificationCount"];

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_hpPlacardCount];
  [v20 setObject:v22 forKeyedSubscript:@"HPPlacardCount"];

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_htCleaningAlertCount];
  [v20 setObject:v23 forKeyedSubscript:@"HTCleaningAlertCount"];

  v24 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v24 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  if (self->_hpActiveNotificationFirstTimestamp)
  {
    v25 = [v24 stringFromDate:?];
    [v20 setObject:v25 forKeyedSubscript:@"HPActiveNotificationFirstTimestamp"];
  }

  if (self->_hpPlacardFirstTimestamp)
  {
    v26 = [v24 stringFromDate:?];
    [v20 setObject:v26 forKeyedSubscript:@"HPPlacardFirstTimestamp"];
  }

  if (self->_htCleaningAlertFirstTimestamp)
  {
    v27 = [v24 stringFromDate:?];
    [v20 setObject:v27 forKeyedSubscript:@"HTCleaningAlertFirstTimestamp"];
  }

  [v5 addObject:v20];
  CFPrefs_SetValue();
  v28 = *(v7 + 3568);
  if (v28 <= 30 && (v28 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_HMDeviceDiagnosticRecord, "[HMDeviceDiagnosticRecord _prefsSaveOcclusionStats]", 30, "HMDeviceDiagnosticRecord UUID %@, occlusion stats saved to prefs: %@", self->_bluetoothUUID, v20);
  }
}

- (void)_submitMetricsForOcclusionIndicationType:(int)type action:(int)action previousIndicationCount:(unsigned int)count timeSinceFirstIndicationMins:(int64_t)mins
{
  v7 = *&count;
  v8 = *&action;
  v9 = *&type;
  v42[27] = *MEMORY[0x277D85DE8];
  v41[0] = @"DiagnosticMeasurementCount";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_diagnosticMeasurementsCount];
  v40 = v11;
  firmwareVersion = self->_firmwareVersion;
  if (!firmwareVersion)
  {
    firmwareVersion = @"unknown";
  }

  v42[0] = v11;
  v42[1] = firmwareVersion;
  v41[1] = @"FirmwareVersion";
  v41[2] = @"FirstTimeOfUse";
  isDeviceUsedFor3MonthsOrLess = [(HMDeviceDiagnosticRecord *)self isDeviceUsedFor3MonthsOrLess];
  v14 = &unk_286437B00;
  if (isDeviceUsedFor3MonthsOrLess)
  {
    v14 = &unk_286437AE8;
  }

  v42[2] = v14;
  v41[3] = @"HearingProtectionOcclusionResult";
  v39 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMDeviceDiagnosticRecord computeOcclusionResultForHearingProtection](self, "computeOcclusionResultForHearingProtection")}];
  v42[3] = v39;
  v41[4] = @"HearingTestOcclusionResult";
  v38 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMDeviceDiagnosticRecord computeOcclusionResultForHearingTest](self, "computeOcclusionResultForHearingTest")}];
  v42[4] = v38;
  v41[5] = @"IndicationAction";
  v37 = [MEMORY[0x277CCABB0] numberWithInt:v8];
  v42[5] = v37;
  v41[6] = @"IndicationType";
  v36 = [MEMORY[0x277CCABB0] numberWithInt:v9];
  v42[6] = v36;
  v41[7] = @"LeftBottomMicFaultCount";
  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_bottomMicFaultCountLeft];
  v42[7] = v35;
  v41[8] = @"LeftFreqAccFaultCount";
  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_freqAccuracyFaultCountLeft];
  v42[8] = v34;
  v41[9] = @"LeftFrontVentFaultCount";
  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_frontVentFaultCountLeft];
  v42[9] = v33;
  v41[10] = @"LeftInnerMicFaultCount";
  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_innerMicFaultCountLeft];
  v42[10] = v32;
  v41[11] = @"LeftRearVentFaultCount";
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_rearVentFaultCountLeft];
  v42[11] = v31;
  v41[12] = @"LeftSpeakerFaultCount";
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_speakerFaultCountLeft];
  v42[12] = v30;
  v41[13] = @"LeftTHDFaultCount";
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_totalHarmonicDistortionFaultCountLeft];
  v42[13] = v29;
  v41[14] = @"LeftTopMicFaultCount";
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_topMicFaultCountLeft];
  v42[14] = v28;
  v41[15] = @"previousIndicationCount";
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v7];
  v42[15] = v27;
  v41[16] = @"ProductID";
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_productID];
  v42[16] = v26;
  v41[17] = @"RightBottomMicFaultCount";
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_bottomMicFaultCountRight];
  v42[17] = v25;
  v41[18] = @"RightFreqAccFaultCount";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_freqAccuracyFaultCountRight];
  v42[18] = v15;
  v41[19] = @"RightFrontVentFaultCount";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_frontVentFaultCountRight];
  v42[19] = v16;
  v41[20] = @"RightInnerMicFaultCount";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_innerMicFaultCountRight];
  v42[20] = v17;
  v41[21] = @"RightRearVentFaultCount";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_rearVentFaultCountRight];
  v42[21] = v18;
  v41[22] = @"RightSpeakerFaultCount";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_speakerFaultCountRight];
  v42[22] = v19;
  v41[23] = @"RightTHDFaultCount";
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_totalHarmonicDistortionFaultCountRight];
  v42[23] = v20;
  v41[24] = @"RightTopMicFaultCount";
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_topMicFaultCountRight];
  v42[24] = v21;
  v41[25] = @"TimeSinceFirstIndication";
  v22 = [MEMORY[0x277CCABB0] numberWithInteger:mins];
  v42[25] = v22;
  v41[26] = @"TimeSinceFirstUse";
  v23 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDeviceDiagnosticRecord _minutesSinceTimestamp:](self, "_minutesSinceTimestamp:", self->_firstTimeUseTimestampLeft)}];
  v42[26] = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:27];
  CUMetricsLog();
}

- (void)_resetAllOcclusionStats
{
  [(HMDeviceDiagnosticRecord *)self _prefsResetOcclusionStatsForFeatureID:2 type:1];
  [(HMDeviceDiagnosticRecord *)self _prefsResetOcclusionStatsForFeatureID:2 type:7];

  [(HMDeviceDiagnosticRecord *)self _prefsResetOcclusionStatsForFeatureID:3 type:3];
}

- (BOOL)updateFaultCountsFromCloudRecord:(id)record
{
  recordCopy = record;
  if (![(HMDeviceDiagnosticRecord *)self isOcclusionDetectionSupported])
  {
LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  v5 = [(HMDeviceDiagnosticRecord *)self hasMeasurementChangedForSide:@"left" withRecord:recordCopy];
  if (v5)
  {
    [(HMDeviceDiagnosticRecord *)self _updateLeftSideFaultCountWithCloudRecord:recordCopy];
  }

  if ([(HMDeviceDiagnosticRecord *)self hasMeasurementChangedForSide:@"right" withRecord:recordCopy])
  {
    [(HMDeviceDiagnosticRecord *)self _updateRightSideFaultCountWithCloudRecord:recordCopy];
    v5 = 1;
  }

  diagnosticMeasurementsCount = [recordCopy diagnosticMeasurementsCount];
  self->_diagnosticMeasurementsCount = [diagnosticMeasurementsCount unsignedIntValue];

  if (!v5)
  {
    if (gLogCategory_HMDeviceDiagnosticRecord <= 30 && (gLogCategory_HMDeviceDiagnosticRecord != -1 || _LogCategory_Initialize()))
    {
      bluetoothUUID = self->_bluetoothUUID;
      latestDiagnosticTimestampLeft = [recordCopy latestDiagnosticTimestampLeft];
      latestDiagnosticTimestampRight = [recordCopy latestDiagnosticTimestampRight];
      LogPrintF(&gLogCategory_HMDeviceDiagnosticRecord, "[HMDeviceDiagnosticRecord updateFaultCountsFromCloudRecord:]", 30, "Skipping cloud update for measurement, device UUID: %@, cloudRecord has measurement timestamp L: %@, R: %@", bluetoothUUID, latestDiagnosticTimestampLeft, latestDiagnosticTimestampRight);
    }

    goto LABEL_15;
  }

  diagnosticMeasurementsCount = self->_diagnosticMeasurementsCount;
  if (diagnosticMeasurementsCount + 1 < 3)
  {
    v8 = diagnosticMeasurementsCount + 1;
  }

  else
  {
    v8 = 3;
  }

  self->_diagnosticMeasurementsCount = v8;
  v9 = 1;
LABEL_16:

  return v9;
}

- (void)updateWithANCLossScores:(id)scores
{
  if ([(HMDeviceDiagnosticRecord *)self _isANCScoreSupported])
  {
    if ([(HMDeviceDiagnosticRecord *)self _hasValidMeasurementForSide:@"left"])
    {
      v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:scores.var4];
      ancCleanLossScoreLeft = self->_ancCleanLossScoreLeft;
      self->_ancCleanLossScoreLeft = v5;

      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:scores.var2];
      ancFullLossScoreLeft = self->_ancFullLossScoreLeft;
      self->_ancFullLossScoreLeft = v7;

      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:scores.var6];
      ancSevereLossScoreLeft = self->_ancSevereLossScoreLeft;
      self->_ancSevereLossScoreLeft = v9;
    }

    if ([(HMDeviceDiagnosticRecord *)self _hasValidMeasurementForSide:@"right"])
    {
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:scores.var5];
      ancCleanLossScoreRight = self->_ancCleanLossScoreRight;
      self->_ancCleanLossScoreRight = v11;

      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:scores.var3];
      ancFullLossScoreRight = self->_ancFullLossScoreRight;
      self->_ancFullLossScoreRight = v13;

      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:HIBYTE(*&scores)];
      ancSevereLossScoreRight = self->_ancSevereLossScoreRight;
      self->_ancSevereLossScoreRight = v15;

      MEMORY[0x2821F96F8](v15, ancSevereLossScoreRight);
    }
  }
}

- (void)updateWithMeasurementResultLeft:(unsigned int)left
{
  v3 = *&left;
  if (gLogCategory_HMDeviceDiagnosticRecord <= 30 && (gLogCategory_HMDeviceDiagnosticRecord != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_HMDeviceDiagnosticRecord, "[HMDeviceDiagnosticRecord updateWithMeasurementResultLeft:]", 30, "HMDeviceRecord identifier %@, received diagnostic measurement result Left: %x", self->_bluetoothUUID, v3);
  }

  self->_generalSystemStatusLeft = [HMDeviceDiagnosticRecord getHMDiagnosticStatusForValue:v3 & 7];
  self->_latestMeasurementResultLeft = [HMDeviceDiagnosticRecord getHMDiagnosticMeasurementStatusForValue:(v3 >> 3) & 7];
  if ([(HMDeviceDiagnosticRecord *)self _hasValidMeasurementForSide:@"left"])
  {
    if ([(HMDeviceDiagnosticRecord *)self _isComponentDiagnosticSupported])
    {
      self->_totalHarmonicDistortionLeft = [HMDeviceDiagnosticRecord getHMDiagnosticStatusForValue:(v3 >> 7) & 1];
      self->_frequencyAccuracyLeft = [HMDeviceDiagnosticRecord getHMDiagnosticStatusForValue:(v3 >> 8) & 1];
      self->_speakerStatusLeft = [HMDeviceDiagnosticRecord getHMDiagnosticStatusForValue:(v3 >> 9) & 1];
      self->_rearVentStatusLeft = [HMDeviceDiagnosticRecord getHMDiagnosticStatusForValue:(v3 >> 10) & 1];
      self->_frontVentStatusLeft = [HMDeviceDiagnosticRecord getHMDiagnosticStatusForValue:(v3 >> 11) & 1];
      self->_vceMicStatusLeft = [HMDeviceDiagnosticRecord getHMDiagnosticStatusForValue:(v3 >> 12) & 1];
      self->_refMicStatusLeft = [HMDeviceDiagnosticRecord getHMDiagnosticStatusForValue:(v3 >> 13) & 1];
      self->_errMicStatusLeft = [HMDeviceDiagnosticRecord getHMDiagnosticStatusForValue:(v3 >> 14) & 1];
    }

    if ([(HMDeviceDiagnosticRecord *)self _isANCScoreSupported])
    {
      generalSystemStatusLeft = self->_generalSystemStatusLeft;
      if (generalSystemStatusLeft != 1)
      {
        if (generalSystemStatusLeft != 2)
        {
          return;
        }

        if ((v3 & 0x8000) != 0)
        {
          generalSystemStatusLeft = 3;
        }
      }

      self->_ancLossTypeLeft = generalSystemStatusLeft;
    }
  }
}

- (void)updateWithMeasurementResultRight:(unsigned int)right
{
  v3 = *&right;
  if (gLogCategory_HMDeviceDiagnosticRecord <= 30 && (gLogCategory_HMDeviceDiagnosticRecord != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_HMDeviceDiagnosticRecord, "[HMDeviceDiagnosticRecord updateWithMeasurementResultRight:]", 30, "HMDeviceRecord identifier %@, received diagnostic measurement result Right: %x", self->_bluetoothUUID, v3);
  }

  self->_generalSystemStatusRight = [HMDeviceDiagnosticRecord getHMDiagnosticStatusForValue:v3 & 7];
  self->_latestMeasurementResultRight = [HMDeviceDiagnosticRecord getHMDiagnosticMeasurementStatusForValue:(v3 >> 3) & 7];
  if ([(HMDeviceDiagnosticRecord *)self _hasValidMeasurementForSide:@"right"])
  {
    if ([(HMDeviceDiagnosticRecord *)self _isComponentDiagnosticSupported])
    {
      self->_totalHarmonicDistortionRight = [HMDeviceDiagnosticRecord getHMDiagnosticStatusForValue:(v3 >> 7) & 1];
      self->_frequencyAccuracyRight = [HMDeviceDiagnosticRecord getHMDiagnosticStatusForValue:(v3 >> 8) & 1];
      self->_speakerStatusRight = [HMDeviceDiagnosticRecord getHMDiagnosticStatusForValue:(v3 >> 9) & 1];
      self->_rearVentStatusRight = [HMDeviceDiagnosticRecord getHMDiagnosticStatusForValue:(v3 >> 10) & 1];
      self->_frontVentStatusRight = [HMDeviceDiagnosticRecord getHMDiagnosticStatusForValue:(v3 >> 11) & 1];
      self->_vceMicStatusRight = [HMDeviceDiagnosticRecord getHMDiagnosticStatusForValue:(v3 >> 12) & 1];
      self->_refMicStatusRight = [HMDeviceDiagnosticRecord getHMDiagnosticStatusForValue:(v3 >> 13) & 1];
      self->_errMicStatusRight = [HMDeviceDiagnosticRecord getHMDiagnosticStatusForValue:(v3 >> 14) & 1];
    }

    if ([(HMDeviceDiagnosticRecord *)self _isANCScoreSupported])
    {
      generalSystemStatusRight = self->_generalSystemStatusRight;
      if (generalSystemStatusRight != 1)
      {
        if (generalSystemStatusRight != 2)
        {
          return;
        }

        if ((v3 & 0x8000) != 0)
        {
          generalSystemStatusRight = 3;
        }
      }

      self->_ancLossTypeRight = generalSystemStatusRight;
    }
  }
}

- (int)computeOcclusionResultForHearingTest
{
  diagnosticMeasurementsCount = self->_diagnosticMeasurementsCount;
  if (!diagnosticMeasurementsCount)
  {
    return 0;
  }

  if (diagnosticMeasurementsCount < 3)
  {
    v4 = 1;
  }

  else
  {
    v4 = 3;
  }

  v5 = self->_innerMicFaultCountLeft >= v4 || self->_innerMicFaultCountRight >= v4;
  v6 = self->_speakerFaultCountLeft >= v4 || self->_speakerFaultCountRight >= v4;
  v7 = self->_frontVentFaultCountLeft >= v4 || self->_frontVentFaultCountRight >= v4;
  v8 = self->_totalHarmonicDistortionFaultCountLeft >= v4 || self->_totalHarmonicDistortionFaultCountRight >= v4;
  v9 = self->_freqAccuracyFaultCountLeft >= v4 || self->_freqAccuracyFaultCountRight >= v4;
  if (v5 || v6 || v7 || v8 || v9 || (v10.i64[0] = *&self->_topMicFaultCountLeft, v10.i64[1] = *&self->_bottomMicFaultCountLeft, (vmaxv_u16(vmovn_s32(vcgtq_u32(vdupq_n_s32(v4), v10))) & 1) == 0))
  {
    if (diagnosticMeasurementsCount < 3)
    {
      return 1;
    }

    htCleaningAlertCount = self->_htCleaningAlertCount;
    if (!htCleaningAlertCount)
    {
      return 2;
    }

    if (gLogCategory_HMDeviceDiagnosticRecord > 30)
    {
      return 7;
    }

    if (gLogCategory_HMDeviceDiagnosticRecord == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return 7;
      }

      htCleaningAlertCount = self->_htCleaningAlertCount;
    }

    LogPrintF(&gLogCategory_HMDeviceDiagnosticRecord, "[HMDeviceDiagnosticRecord computeOcclusionResultForHearingTest]", 30, "HMDeviceDiagnosticRecord UUID %@, Hearing Test indication count %d, override occlusion result: %s", self->_bluetoothUUID, htCleaningAlertCount, "FailOnSubsequentAttempt");
    return 7;
  }

  rearVentFaultCountLeft = self->_rearVentFaultCountLeft;
  rearVentFaultCountRight = self->_rearVentFaultCountRight;
  if (rearVentFaultCountLeft >= v4 && rearVentFaultCountRight >= v4)
  {
    return 6;
  }

  if (rearVentFaultCountRight >= v4)
  {
    v14 = 5;
  }

  else
  {
    v14 = 3;
  }

  if (rearVentFaultCountLeft >= v4)
  {
    return 4;
  }

  else
  {
    return v14;
  }
}

- (int)computeOcclusionResultForHearingProtection
{
  diagnosticMeasurementsCount = self->_diagnosticMeasurementsCount;
  if (!diagnosticMeasurementsCount)
  {
    return 0;
  }

  if (diagnosticMeasurementsCount < 3)
  {
    v3 = 1;
  }

  else
  {
    v3 = 3;
  }

  v4 = self->_innerMicFaultCountLeft >= v3 || self->_innerMicFaultCountRight >= v3;
  v5 = self->_speakerFaultCountLeft >= v3 || self->_speakerFaultCountRight >= v3;
  v6 = 1;
  if (self->_frontVentFaultCountLeft < v3)
  {
    v6 = self->_frontVentFaultCountRight >= v3;
  }

  if (diagnosticMeasurementsCount < 3)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (v4 || v5 || v6)
  {
    return v7;
  }

  else
  {
    return 3;
  }
}

- (uint64_t)occlusionIndicationShownForFeatureID:(unsigned int)a3 type:(unsigned int)a4 action:.cold.1(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  if (a2 > 8)
  {
    v6 = "?";
  }

  else
  {
    v6 = off_2796EE7B0[a2];
  }

  if (a3 > 3)
  {
    v7 = "?";
  }

  else
  {
    v7 = off_2796EE7F8[a3];
  }

  if (a4 > 4)
  {
    v8 = "?";
  }

  else
  {
    v8 = off_2796EE818[a4];
  }

  return LogPrintF(&gLogCategory_HMDeviceDiagnosticRecord, "[HMDeviceDiagnosticRecord occlusionIndicationShownForFeatureID:type:action:]", 30, "HMDeviceDiagnosticRecord UUID %@, OcclusionIndicationShown with type: %s, feature: %s, action: %s", *(a1 + 232), v6, v7, v8, v4, v5);
}

- (uint64_t)_prefsResetOcclusionStatsForFeatureID:(int)a3 type:.cold.1(uint64_t a1, int a2, int a3)
{
  v3 = "HearingProtection";
  if (a2 == 3)
  {
    v3 = "HearingTest";
  }

  return LogPrintF(&gLogCategory_HMDeviceDiagnosticRecord, "[HMDeviceDiagnosticRecord _prefsResetOcclusionStatsForFeatureID:type:]", 30, "HMDeviceDiagnosticRecord UUID %@, resetOcclusionStats for feature: type %s", *(a1 + 232), v3, off_2796EE840[a3 - 1]);
}

@end