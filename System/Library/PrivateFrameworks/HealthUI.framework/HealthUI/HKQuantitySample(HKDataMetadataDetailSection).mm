@interface HKQuantitySample(HKDataMetadataDetailSection)
- (id)_titleStringForValueSectionWithDisplayType:()HKDataMetadataDetailSection;
- (id)detailFooter;
- (void)addDetailValuesToSection:()HKDataMetadataDetailSection;
@end

@implementation HKQuantitySample(HKDataMetadataDetailSection)

- (void)addDetailValuesToSection:()HKDataMetadataDetailSection
{
  v93[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  displayTypeController = [v4 displayTypeController];
  sampleType = [self sampleType];
  v7 = [displayTypeController displayTypeForObjectType:sampleType];

  v87 = v4;
  unitController = [v4 unitController];
  v9 = [unitController unitForDisplayType:v7];
  quantity = [self quantity];
  v86 = v9;
  [quantity doubleValueForUnit:v9];
  v12 = v11;

  presentation = [v7 presentation];
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
  v15 = [presentation adjustedValueForDaemonValue:v14];

  if ([v7 displayTypeIdentifier] == 285)
  {

    v15 = 0;
  }

  v83 = v15;
  if ([v7 displayTypeIdentifier] == 275)
  {
    quantity2 = [self quantity];
    v16 = [HKSleepApneaUtilities localizedTitleForBreathingDisturbances:quantity2];
    v17 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v18 = [v17 localizedStringForKey:@"LEVEL_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v93[0] = *MEMORY[0x1E696BC50];
    v93[1] = @"Level";
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v93 count:2];
    HKUIJoinStringsForAutomationIdentifier(v19);
    v21 = v20 = unitController;
    [v87 addText:v16 detail:v18 baseIdentifier:v21];

    unitController = v20;
    v15 = v83;
  }

  percentUnit = [MEMORY[0x1E696C510] percentUnit];
  v23 = [v86 isEqual:percentUnit];

  if (v23)
  {
    objectType = [v7 objectType];
    code = [objectType code];

    if (code == 249)
    {
      +[HKTieredDecimalPrecisionRule numberFormatter];
    }

    else
    {
      +[HKTieredDecimalPrecisionRule percentageFormatter];
    }
    v26 = ;
    v27 = HKFormattedStringFromValueForContext(v15, v7, unitController, 0, v26, 1);
    metadata = [self metadata];
    v29 = [metadata objectForKeyedSubscript:*MEMORY[0x1E696BB38]];
    v30 = v15;
    bOOLValue = [v29 BOOLValue];

    if (bOOLValue)
    {
      v33 = HKAFibBurdenClampedLowerBoundLocalizedString(v30, v32);

      v85 = v33;
    }

    else
    {
      v85 = v27;
    }

    goto LABEL_22;
  }

  v26 = HKFormattedStringFromValueForContext(v15, v7, unitController, 0, 0, 1);
  if (HKFormatterIncludesUnitForDisplayTypeInContext(v7, 1, unitController))
  {
    v26 = v26;
    v85 = v26;
    goto LABEL_22;
  }

  v34 = [unitController localizedDisplayNameForDisplayType:v7 value:v15 nameContext:3];
  if ([v7 displayTypeIdentifier] == 2)
  {
    footUnit = [MEMORY[0x1E696C510] footUnit];
    if ([v86 isEqual:footUnit])
    {
    }

    else
    {
      v76 = [self _shouldOmitUnitsInSampleDetailViewForDisplayType:v7];

      if ((v76 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_18;
  }

  if ([self _shouldOmitUnitsInSampleDetailViewForDisplayType:v7])
  {
LABEL_18:

    v34 = &stru_1F42FFBE0;
  }

LABEL_19:
  decibelAWeightedSoundPressureLevelUnit = [MEMORY[0x1E696C510] decibelAWeightedSoundPressureLevelUnit];
  v37 = [v86 isEqual:decibelAWeightedSoundPressureLevelUnit];

  if (v37)
  {
    v38 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v39 = [v38 localizedStringForKey:@"SPL_DECIBEL_UNIT_LONG_FORM" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

    v34 = v39;
  }

  v85 = HKFormatValueAndUnit(v26, v34);

LABEL_22:
  displayTypeIdentifier = [v7 displayTypeIdentifier];
  v41 = [self _titleStringForValueSectionWithDisplayType:v7];
  if (displayTypeIdentifier == 275)
  {
    v92[0] = *MEMORY[0x1E696BC50];
    v92[1] = @"BreathingDisturbanceValue";
    sampleType2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:2];
    identifier = HKUIJoinStringsForAutomationIdentifier(sampleType2);
    v44 = v85;
    [v87 addText:v85 detail:v41 baseIdentifier:identifier];
  }

  else
  {
    sampleType2 = [self sampleType];
    identifier = [sampleType2 identifier];
    v91[0] = identifier;
    v91[1] = @"Sample";
    v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:2];
    v46 = HKUIJoinStringsForAutomationIdentifier(v45);
    [v87 addText:v85 detail:v41 baseIdentifier:v46];

    v44 = v85;
  }

  if ([v7 displayTypeIdentifier] == 249)
  {
    quantity3 = [self quantity];
    v48 = [HKMobilityUtilities classificationForAppleWalkingSteadinessQuantity:quantity3];

    v49 = [HKMobilityUtilities localizedTitleForClassification:v48];
    if (v49)
    {
      v81 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v50 = [v81 localizedStringForKey:@"LEVEL_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      sampleType3 = [self sampleType];
      identifier2 = [sampleType3 identifier];
      v90[0] = identifier2;
      v90[1] = @"SteadinessLevel";
      [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:2];
      selfCopy = self;
      v55 = v54 = unitController;
      v56 = HKUIJoinStringsForAutomationIdentifier(v55);
      [v87 addText:v49 detail:v50 baseIdentifier:v56];

      unitController = v54;
      self = selfCopy;

      v44 = v85;
    }
  }

  if ([v7 displayTypeIdentifier] == 248)
  {
    v57 = objc_alloc(MEMORY[0x1E696AB80]);
    startDate = [self startDate];
    endDate = [self endDate];
    v60 = [v57 initWithStartDate:startDate endDate:endDate];

    _timeZone = [self _timeZone];
    calendarCache = [v87 calendarCache];
    v82 = _timeZone;
    v63 = [calendarCache calendarForTimeZone:_timeZone];

    v64 = MEMORY[0x1E696AB80];
    calendarCache2 = [v87 calendarCache];
    currentCalendar = [calendarCache2 currentCalendar];
    v80 = v63;
    v67 = [v64 hk_julianDayDateIntervalFromOpenUpperBoundDateInterval:v60 sourceCalendar:v63 localCalendar:currentCalendar];

    if (v67)
    {
      hk_mediumDateStyleIntervalFormatter = [MEMORY[0x1E696AB88] hk_mediumDateStyleIntervalFormatter];
      v69 = [hk_mediumDateStyleIntervalFormatter stringFromDateInterval:v67];
      if (v69)
      {
        v78 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v70 = [v78 localizedStringForKey:@"AFIB_BURDEN_DATE_RANGE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-AFibBurden"];
        sampleType4 = [self sampleType];
        [sampleType4 identifier];
        v71 = v79 = unitController;
        v89[0] = v71;
        v89[1] = @"DateRange";
        v72 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:2];
        HKUIJoinStringsForAutomationIdentifier(v72);
        v73 = v7;
        v75 = v74 = v60;
        [v87 addText:v69 detail:v70 baseIdentifier:v75];

        v60 = v74;
        v7 = v73;
        v44 = v85;

        unitController = v79;
      }
    }

    else
    {
      _HKInitializeLogging();
      hk_mediumDateStyleIntervalFormatter = HKLogWellnessDashboard();
      if (os_log_type_enabled(hk_mediumDateStyleIntervalFormatter, OS_LOG_TYPE_FAULT))
      {
        [HKQuantitySample(HKDataMetadataDetailSection) addDetailValuesToSection:hk_mediumDateStyleIntervalFormatter];
      }
    }
  }

  v88.receiver = self;
  v88.super_class = &off_1F4457A98;
  objc_msgSendSuper2(&v88, sel_addDetailValuesToSection_, v87);
}

- (id)_titleStringForValueSectionWithDisplayType:()HKDataMetadataDetailSection
{
  v3 = a3;
  if ([v3 displayTypeIdentifier] == 275)
  {
    localization = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    [localization localizedStringForKey:@"SLEEP_BREATHING_DISTURBANCES_SAMPLE_DETAIL_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Nebula"];
  }

  else
  {
    localization = [v3 localization];
    [localization displayName];
  }
  v5 = ;

  return v5;
}

- (id)detailFooter
{
  sampleType = [self sampleType];
  v2 = [MEMORY[0x1E696C370] quantityTypeForIdentifier:*MEMORY[0x1E696BC58]];
  v3 = [sampleType isEqual:v2];

  if (v3)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v5 = [v4 localizedStringForKey:@"SLEEPING_WRIST_TEMPERATURE_METADATA_DETAIL_FOOTER" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Kali"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end