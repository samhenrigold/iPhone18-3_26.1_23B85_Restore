@interface HKDataMetadataDataSource
- (HKDataMetadataDataSource)initWithSample:(id)sample unitPreferenceController:(id)controller;
- (id)_formattedValueTextForVO2MaxQuantityObject:(id)object key:(id)key section:(id)section;
- (id)_mediaSourceDisplayNamesForSample:(id)sample;
- (void)addAdditionalOxygenSaturationDetailValuesToSection:(id)section key:(id)key value:(id)value;
- (void)addDetailValuesToSection:(id)section;
@end

@implementation HKDataMetadataDataSource

- (HKDataMetadataDataSource)initWithSample:(id)sample unitPreferenceController:(id)controller
{
  sampleCopy = sample;
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = HKDataMetadataDataSource;
  v8 = [(HKDataMetadataDataSource *)&v12 init];
  if (v8)
  {
    v9 = [sampleCopy copy];
    sample = v8->_sample;
    v8->_sample = v9;

    objc_storeStrong(&v8->_unitPreferenceController, controller);
  }

  return v8;
}

- (void)addDetailValuesToSection:(id)section
{
  sectionCopy = section;
  metadata = [(HKSample *)self->_sample metadata];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__HKDataMetadataDataSource_addDetailValuesToSection___block_invoke;
  v7[3] = &unk_1E81BB5F0;
  v7[4] = self;
  v8 = sectionCopy;
  v6 = sectionCopy;
  [metadata enumerateKeysAndObjectsUsingBlock:v7];
}

void __53__HKDataMetadataDataSource_addDetailValuesToSection___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v275[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (MACancelDownloadErrorDomain_block_invoke_onceToken != -1)
  {
    __53__HKDataMetadataDataSource_addDetailValuesToSection___block_invoke_cold_1();
  }

  if ([v5 isEqualToString:*MEMORY[0x1E696BAF0]])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"HEART_RATE_SENSOR_LOCATION_%@", v6];
    v7 = LABEL_7:;
    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v9 = [(__CFString *)v8 localizedStringForKey:v7 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
LABEL_8:
    v10 = v9;
LABEL_9:

LABEL_10:
LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  if ([v5 isEqualToString:*MEMORY[0x1E696BA60]])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"BODY_TEMP_SENSOR_LOCATION_%@", v6];
    goto LABEL_7;
  }

  if ([v5 isEqualToString:*MEMORY[0x1E696BB78]])
  {
    v7 = [MEMORY[0x1E695DFE8] timeZoneWithName:v6];
    if (!v7)
    {
      v10 = 0;
      goto LABEL_10;
    }

    v18 = [*(*(a1 + 32) + 8) startDate];
    v19 = [v7 isDaylightSavingTimeForDate:v18];

    if (v19)
    {
      v20 = 2;
    }

    else
    {
      v20 = 0;
    }

    v8 = [MEMORY[0x1E695DF58] currentLocale];
    v9 = [v7 localizedName:v20 locale:v8];
    goto LABEL_8;
  }

  if ([v5 isEqualToString:*MEMORY[0x1E696BBB0]])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"HK_WEATHER_CONDITION_%@", v6];
    goto LABEL_7;
  }

  if ([v5 isEqualToString:*MEMORY[0x1E696BBC0]])
  {
    v7 = _HKWeatherTemperatureUnit();
    v21 = [MEMORY[0x1E696C510] degreeFahrenheitUnit];
    v22 = [v7 isEqual:v21];
    v23 = @"DEGREES_CELSIUS_NUMBERED_UNIT";
    if (v22)
    {
      v23 = @"DEGREES_FAHRENHEIT_NUMBERED_UNIT";
    }

    v8 = v23;

    if (![v6 isCompatibleWithUnit:v7])
    {
      v10 = 0;
      goto LABEL_9;
    }

    [v6 doubleValueForUnit:v7];
    v25 = v24;
    v26 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    v27 = HKLocalizedStringForNumberWithDecimalPrecision(v26, 2, 0);

    v28 = MEMORY[0x1E696AEC0];
    v29 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v30 = [v29 localizedStringForKey:v8 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v31 = [v28 localizedStringWithFormat:v30, v25];

    v10 = HKFormatValueAndUnit(v27, v31);

    goto LABEL_32;
  }

  if ([v5 isEqualToString:*MEMORY[0x1E696BBB8]])
  {
    v32 = [v6 _unit];
    [v6 doubleValueForUnit:v32];
    v34 = v33;

    v35 = HKIntegerFormatter();
    v36 = [MEMORY[0x1E696AD98] numberWithDouble:v34];
    v37 = [v35 stringFromNumber:v36];

    v38 = MEMORY[0x1E696AEC0];
    v39 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v40 = [v39 localizedStringForKey:@"PERCENT_NUMBERED_UNIT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v10 = [v38 stringWithFormat:@"%@%@", v37, v40];

    goto LABEL_11;
  }

  if ([v5 isEqualToString:*MEMORY[0x1E696BB10]])
  {
    v41 = [MEMORY[0x1E696C510] meterUnit];
    v42 = [v6 isCompatibleWithUnit:v41];

    if (v42)
    {
      v43 = *(*(a1 + 32) + 8);
      v7 = [*(a1 + 40) displayTypeController];
      v8 = [*(a1 + 40) unitController];
      v9 = [v43 hk_localizedStringForAssociatedDistanceQuantity:v6 displayTypeController:v7 unitController:v8];
      goto LABEL_8;
    }

    goto LABEL_79;
  }

  if ([v5 isEqualToString:*MEMORY[0x1E696BB58]])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"SWIMMING_LOCATION_%@", v6];
    goto LABEL_7;
  }

  if ([v5 isEqualToString:*MEMORY[0x1E696BB60]])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"SWIMMING_STROKE_STYLE_%@", v6];
    goto LABEL_7;
  }

  if ([v5 isEqualToString:*MEMORY[0x1E696BB08]])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"INSULIN_DELIVERY_REASON_%@", v6];
    goto LABEL_7;
  }

  if ([v5 isEqualToString:*MEMORY[0x1E696BA58]])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"MEAL_TIME_%@", v6];
    goto LABEL_7;
  }

  if ([v5 isEqualToString:*MEMORY[0x1E696BB88]])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"VO2_MAX_TEST_TYPE_%@", v6];
    goto LABEL_7;
  }

  if ([v5 isEqualToString:*MEMORY[0x1E696BA48]])
  {
    v44 = [MEMORY[0x1E696C510] unitFromString:@"kcal/(kg*hr)"];
    [v6 doubleValueForUnit:v44];
    v46 = v45;

    v7 = [MEMORY[0x1E696AD98] numberWithDouble:v46];
    v47 = HKLocalizedStringForNumberWithDecimalPrecision(v7, 1, 0);
LABEL_52:
    v10 = v47;
    goto LABEL_10;
  }

  if ([v5 isEqualToString:*MEMORY[0x1E696BB20]])
  {
    v48 = [MEMORY[0x1E696C510] unitFromString:@"lx"];
    [v6 doubleValueForUnit:v48];
    v50 = v49;

    v51 = [*(*(a1 + 32) + 16) healthStore];
    v52 = [HKDisplayTypeController sharedInstanceForHealthStore:v51];
    v259 = [v52 displayTypeWithIdentifier:&unk_1F43846D8];

    v53 = [MEMORY[0x1E696AD98] numberWithDouble:v50];
    v54 = HKFormattedStringFromValue(v53, v259, *(*(a1 + 32) + 16), 0, 0);

    v55 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v56 = [v55 localizedStringForKey:@"MAXIMUM_LIGHT_INTENSITY_UNIT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

    v10 = HKFormatValueAndUnit(v54, v56);
    v57 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v58 = [v57 localizedStringForKey:@"MAXIMUM_LIGHT_INTENSITY" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

LABEL_55:
    v11 = 0;
    v5 = v58;
    goto LABEL_12;
  }

  if ([v5 isEqualToString:*MEMORY[0x1E696BAC0]])
  {
LABEL_57:
    v10 = 0;
    goto LABEL_18;
  }

  if ([v5 isEqualToString:*MEMORY[0x1E696BA08]])
  {
    v59 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v60 = v59;
    v61 = @"ACTIVITY_TYPE";
    v62 = @"HealthUI-Localizable";
    goto LABEL_60;
  }

  if ([v5 isEqualToString:*MEMORY[0x1E696BB30]])
  {
    v66 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v67 = @"HealthUI-Localizable";
    v58 = [v66 localizedStringForKey:@"PHYSICAL_EFFORT_ESTIMATION_TYPE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

    v68 = [v6 unsignedIntegerValue];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"PHYSICAL_EFFORT_ESTIMATION_%ld", v68];
    v71 = LABEL_68:;
    v72 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v10 = [v72 localizedStringForKey:v71 value:&stru_1F42FFBE0 table:v67];

    goto LABEL_55;
  }

  if ([v5 isEqualToString:*MEMORY[0x1E696BA78]])
  {
    v69 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v67 = @"HealthUI-Localizable";
    v58 = [v69 localizedStringForKey:@"CYCLING_FUNCTIONAL_THRESHOLD_POWER_TEST_TYPE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

    v70 = [v6 unsignedIntegerValue];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"CYCLING_FUNCTIONAL_THRESHOLD_POWER_TEST_%ld", v70];
    goto LABEL_68;
  }

  v73 = *MEMORY[0x1E696BAC8];
  if ([v5 isEqualToString:*MEMORY[0x1E696BAC8]])
  {
    v74 = [*(*(a1 + 32) + 8) metadata];
    v75 = *MEMORY[0x1E696C720];
    v13 = [v74 objectForKey:*MEMORY[0x1E696C720]];

    v76 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v77 = v76;
    if (v13)
    {
      v15 = [v76 localizedStringForKey:v75 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"HEART_RATE_CONTEXT_%@", v13];
      v78 = [v13 integerValue];
      v260 = *(a1 + 40);
      v79 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v80 = v79;
      if (v78 == 9)
      {
        v81 = [v79 localizedStringForKey:v17 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Cinnamon"];
        v97 = HKConditionallyRedactedHeartRhythmString();
        v274[0] = v73;
        v274[1] = @"StreamingECG";
        v98 = [MEMORY[0x1E695DEC8] arrayWithObjects:v274 count:2];
        v101 = HKUIJoinStringsForAutomationIdentifier(v98);
        [v260 addText:v97 detail:v15 baseIdentifier:v101];

LABEL_95:
        v10 = 0;
LABEL_17:

        goto LABEL_18;
      }

      if (v78 == 10)
      {
        v81 = [v79 localizedStringForKey:v17 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Scandium"];
        v275[0] = v73;
        v275[1] = @"OxygenSaturation";
        v82 = MEMORY[0x1E695DEC8];
        v83 = v275;
      }

      else
      {
        v81 = [v79 localizedStringForKey:v17 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
        v273[0] = v73;
        v273[1] = @"HeartRateContext";
        v82 = MEMORY[0x1E695DEC8];
        v83 = v273;
      }

      v97 = [v82 arrayWithObjects:v83 count:2];
      v98 = HKUIJoinStringsForAutomationIdentifier(v97);
      v99 = v260;
    }

    else
    {
      v15 = [v76 localizedStringForKey:v73 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"HEART_RATE_MOTION_CONTEXT_%@", v6];
      v96 = *(a1 + 40);
      v80 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v81 = [v80 localizedStringForKey:v17 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v272[0] = v73;
      v272[1] = @"Sample";
      v97 = [MEMORY[0x1E695DEC8] arrayWithObjects:v272 count:2];
      v98 = HKUIJoinStringsForAutomationIdentifier(v97);
      v99 = v96;
    }

    [v99 addText:v81 detail:v15 baseIdentifier:v98];
    goto LABEL_95;
  }

  v84 = *MEMORY[0x1E696C6D0];
  if ([v5 isEqualToString:*MEMORY[0x1E696C6D0]])
  {
    v85 = [*(a1 + 32) _mediaSourceDisplayNamesForSample:*(*(a1 + 32) + 8)];
    if (!v85)
    {
LABEL_78:

      goto LABEL_79;
    }

    v86 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v87 = [v86 localizedStringForKey:v5 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

    v88 = *(a1 + 40);
    v271[0] = v84;
    v271[1] = @"Sample";
    v89 = MEMORY[0x1E695DEC8];
    v90 = v271;
LABEL_77:
    v91 = [v89 arrayWithObjects:v90 count:2];
    v92 = HKUIJoinStringsForAutomationIdentifier(v91);
    [v88 addText:v85 detail:v87 baseIdentifier:v92];

    goto LABEL_78;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v5 isEqualToString:*MEMORY[0x1E696BB68]] & 1) == 0 && !objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E696BB70]))
  {
    if ([MACancelDownloadErrorDomain_block_invoke___metadataKeysExpectingBoolean containsObject:v5])
    {
      v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      if ([v6 BOOLValue])
      {
        v100 = @"YES";
      }

      else
      {
        v100 = @"NO";
      }

      v47 = [v7 localizedStringForKey:v100 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      goto LABEL_52;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E696BA40]])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v102 = MEMORY[0x1E696C510];
        v103 = v6;
        v7 = [v102 decibelAWeightedSoundPressureLevelUnit];
        [v103 doubleValueForUnit:v7];
        v105 = v104;

        v106 = [*(*(a1 + 32) + 16) healthStore];
        v107 = [HKDisplayTypeController sharedInstanceForHealthStore:v106];
        v8 = [v107 displayTypeWithIdentifier:&unk_1F43846F0];

        v108 = [MEMORY[0x1E696AD98] numberWithDouble:v105];
        v27 = HKFormattedStringFromValue(v108, v8, *(*(a1 + 32) + 16), 0, 0);

        v109 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v110 = [v109 localizedStringForKey:@"SPL_DECIBEL_UNIT_LONG_FORM" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

        v10 = HKFormatValueAndUnit(v27, v110);

LABEL_32:
        goto LABEL_9;
      }
    }

    if (([v5 isEqualToString:*MEMORY[0x1E696BA98]] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E696BAA0]))
    {
      v111 = [*(*(a1 + 32) + 16) healthStore];
      v112 = [HKDisplayTypeController sharedInstanceForHealthStore:v111];
      v113 = [v112 displayTypeWithIdentifier:&unk_1F4384708];

      v261 = v113;
      v114 = [*(*(a1 + 32) + 16) unitForDisplayType:v113];
      v115 = [MEMORY[0x1E696C510] mileUnit];
      if ([v114 isEqual:v115])
      {
        [MEMORY[0x1E696C510] footUnit];
      }

      else
      {
        [MEMORY[0x1E696C510] meterUnit];
      }
      v116 = ;

      v117 = [MEMORY[0x1E696C510] mileUnit];
      v118 = [v114 isEqual:v117];
      v119 = @"METERS_NUMBERLESS_UNIT";
      if (v118)
      {
        v119 = @"FEET_NUMBERLESS_UNIT";
      }

      v120 = v119;

      if ([v6 isCompatibleWithUnit:v116])
      {
        [v6 doubleValueForUnit:v116];
        v122 = v121;
        v123 = [MEMORY[0x1E696AD98] numberWithDouble:?];
        v256 = HKLocalizedStringForNumberWithDecimalPrecision(v123, 2, 0);

        v124 = MEMORY[0x1E696AEC0];
        v125 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v126 = [v125 localizedStringForKey:v120 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
        v127 = [v124 localizedStringWithFormat:v126, v122];

        v10 = HKFormatValueAndUnit(v256, v127);
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_11;
    }

    v128 = *MEMORY[0x1E696C6E0];
    if ([v5 isEqualToString:*MEMORY[0x1E696C6E0]])
    {
      v129 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v130 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BLOOD_OXYGEN_CONTEXT_%@", v6];
      v85 = [v129 localizedStringForKey:v130 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Scandium"];

      v131 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v87 = [v131 localizedStringForKey:v5 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Scandium"];

      v88 = *(a1 + 40);
      v270[0] = v128;
      v270[1] = @"Sample";
      v89 = MEMORY[0x1E695DEC8];
      v90 = v270;
      goto LABEL_77;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E696BA50]])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v132 = v6;
        v133 = _HKBarometricPressureUnit();
        v134 = [MEMORY[0x1E696C510] inchesOfMercuryUnit];
        v135 = [v133 isEqual:v134];

        v136 = @"HECTOPASCALS_NUMBERED_UNIT";
        if (v135)
        {
          v136 = @"INCHES_OF_MERCURY_NUMBERED_UNIT";
        }

        v262 = v136;
        if ([v132 isCompatibleWithUnit:v133])
        {
          if (v135)
          {
            v137 = 2;
          }

          else
          {
            v137 = 0;
          }

          [v132 doubleValueForUnit:v133];
          v139 = v138;
          v140 = [MEMORY[0x1E696AD98] numberWithDouble:?];
          v141 = HKLocalizedStringForNumberWithDecimalPrecision(v140, v137, 0);

          v142 = MEMORY[0x1E696AEC0];
          v143 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
          v144 = [v143 localizedStringForKey:v262 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
          v145 = [v142 localizedStringWithFormat:v144, v139];

          v10 = HKFormatValueAndUnit(v141, v145);
          v146 = [*(*(a1 + 32) + 8) sampleType];
          v147 = [v146 identifier];
          v11 = v147 == *MEMORY[0x1E696BD58];
        }

        else
        {
          v10 = 0;
          v11 = 0;
        }

        goto LABEL_12;
      }
    }

    if ([v5 isEqualToString:*MEMORY[0x1E696BA20]])
    {
      v148 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v149 = [v148 localizedStringForKey:@"ECG_ALGORITHM_VERSION" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Cinnamon"];
      v150 = HKConditionallyRedactedHeartRhythmString();

      v11 = 0;
      v5 = v150;
      goto LABEL_13;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E696C750]])
    {
      goto LABEL_57;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E696BB90]])
    {
      v151 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v152 = v151;
      v153 = @"CARDIO_FITNESS_VALUE";
LABEL_130:
      v63 = [v151 localizedStringForKey:v153 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-CardioFitness"];

      v65 = [*(a1 + 32) _formattedValueTextForVO2MaxQuantityObject:v6 key:v63 section:*(a1 + 40)];
      goto LABEL_62;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E696BB18]])
    {
      v151 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v152 = v151;
      v153 = @"CARDIO_FITNESS_NOTIFICATION_THRESHOLD";
      goto LABEL_130;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E696C770]])
    {
      v154 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v155 = v154;
      v156 = @"CARDIO_FITNESS_RELATED_MEDICATIONS";
      v157 = @"HealthUI-Localizable-CardioFitness";
LABEL_133:
      v158 = [v154 localizedStringForKey:v156 value:&stru_1F42FFBE0 table:v157];

      v159 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      if ([v6 BOOLValue])
      {
        v160 = @"YES";
      }

      else
      {
        v160 = @"NO";
      }

      v10 = [v159 localizedStringForKey:v160 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

      v11 = 0;
      v5 = v158;
      goto LABEL_12;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E696BA90]])
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"DEVICE_PLACEMENT_SIDE_%@", v6];
      goto LABEL_7;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E696BA10]])
    {
      v161 = [v6 stringValue];
LABEL_141:
      v10 = v161;
      goto LABEL_11;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E696BA38]])
    {
      v162 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v63 = [v162 localizedStringForKey:@"IRN_ALGORITHM_VERSION" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-IRN2"];

      v65 = [v6 stringValue];
      goto LABEL_62;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E696BB38]])
    {
      v154 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v155 = v154;
      v156 = @"METADATA_TITLE_QUANTITY_CLAMPED_TO_LOWER_BOUND";
      v157 = @"HealthUI-Localizable-AFibBurden";
      goto LABEL_133;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E696BA80]])
    {
      v161 = HKLocalizedStringForDateAndTemplate(v6, 10);
      goto LABEL_141;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E696BAE8]])
    {
      v163 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v67 = @"HealthUI-Localizable-Lyon";
      v58 = [v163 localizedStringForKey:@"HEART_RATE_RECOVERY_TEST_TYPE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Lyon"];

      [MEMORY[0x1E696AEC0] stringWithFormat:@"HEART_RATE_RECOVERY_TEST_TYPE_%@", v6];
      goto LABEL_68;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E696BAD8]])
    {
      v59 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v60 = v59;
      v61 = @"HEART_RATE_RECOVERY_ACTIVITY_TYPE";
      v62 = @"HealthUI-Localizable-Lyon";
LABEL_60:
      v63 = [v59 localizedStringForKey:v61 value:&stru_1F42FFBE0 table:v62];

      v64 = [v6 unsignedIntegerValue];
      if (_HKWorkoutActivityTypeIsValid())
      {
        v65 = HKUILocalizedWorkoutTypeName(v64);
LABEL_62:
        v10 = v65;
LABEL_63:
        v11 = 0;
        v5 = v63;
        goto LABEL_12;
      }

LABEL_173:
      v11 = 0;
      v5 = v63;
      goto LABEL_13;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E696BAD0]])
    {
      v164 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v63 = [v164 localizedStringForKey:@"HEART_RATE_RECOVERY_ACTIVITY_DURATION" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Lyon"];

      v165 = [MEMORY[0x1E696C510] secondUnit];
      v166 = v6;
      if ([v166 isCompatibleWithUnit:v165])
      {
        v167 = MEMORY[0x1E696AD98];
        v168 = [MEMORY[0x1E696C510] secondUnit];
        [v166 doubleValueForUnit:v168];
        v169 = [v167 numberWithDouble:?];

        v170 = objc_alloc_init(HKWorkoutDurationNumberFormatter);
        [(HKTimePeriodWithSecondsNumberFormatter *)v170 setAllowMillisecondPrecision:1];
        v10 = [(HKTimePeriodWithSecondsNumberFormatter *)v170 stringFromNumber:v169 displayType:0 unitController:0];

LABEL_159:
        goto LABEL_160;
      }
    }

    else
    {
      if (![v5 isEqualToString:*MEMORY[0x1E696BAE0]])
      {
        if ([v5 isEqualToString:*MEMORY[0x1E696BB80]])
        {
          v178 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
          v67 = @"HealthUI-Localizable";
          v58 = [v178 localizedStringForKey:@"USER_MOTION_CONTEXT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

          [MEMORY[0x1E696AEC0] stringWithFormat:@"USER_MOTION_CONTEXT_%@", v6];
          goto LABEL_68;
        }

        if (![v5 isEqualToString:*MEMORY[0x1E696BB48]])
        {
          if ([v5 isEqualToString:*MEMORY[0x1E696C758]])
          {
            v180 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
            v263 = [v180 localizedStringForKey:@"SKIN_SURFACE_TEMPERATURE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Kali"];

            v181 = [*(*(a1 + 32) + 16) healthStore];
            v182 = [HKDisplayTypeController sharedInstanceForHealthStore:v181];
            v183 = [v182 displayTypeWithIdentifier:&unk_1F4384720];

            v257 = v183;
            v184 = [*(*(a1 + 32) + 16) unitForDisplayType:v183];
            v185 = [MEMORY[0x1E696C510] degreeFahrenheitUnit];
            v186 = [v184 isEqual:v185];
            v187 = @"DEGREES_CELSIUS_NUMBERED_UNIT";
            if (v186)
            {
              v187 = @"DEGREES_FAHRENHEIT_NUMBERED_UNIT";
            }

            v188 = v187;

            v189 = v6;
            if ([v189 isCompatibleWithUnit:v184])
            {
              [v189 doubleValueForUnit:v184];
              v191 = v190;
              v192 = [MEMORY[0x1E696AD98] numberWithDouble:?];
              v193 = HKLocalizedStringForNumberWithDecimalPrecision(v192, 2, 0);

              v194 = MEMORY[0x1E696AEC0];
              v195 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
              v196 = [v195 localizedStringForKey:v188 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
              v197 = [v194 localizedStringWithFormat:v196, v191];

              v10 = HKFormatValueAndUnit(v193, v197);
            }

            else
            {
              v10 = 0;
            }

            v11 = 0;
            v5 = v263;
          }

          else
          {
            if ([v5 isEqualToString:*MEMORY[0x1E696C740]])
            {
              v198 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
              v63 = [v198 localizedStringForKey:@"INTERNAL_LIVEON_ALGORITHM_VERSION" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

              goto LABEL_173;
            }

            if (![v5 isEqualToString:*MEMORY[0x1E696BB40]])
            {
              if ([v5 isEqualToString:*MEMORY[0x1E696BBA8]])
              {
                v206 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
                v67 = @"HealthUI-Localizable";
                v58 = [v206 localizedStringForKey:@"WATER_SALINITY" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

                [MEMORY[0x1E696AEC0] stringWithFormat:@"WATER_SALINITY_%@", v6];
                goto LABEL_68;
              }

              v207 = *MEMORY[0x1E696C700];
              if ([v5 isEqualToString:*MEMORY[0x1E696C700]])
              {
                v208 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
                v209 = [v208 localizedStringForKey:@"TAKEN_WITH_CONGESTION" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

                v210 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
                if ([v6 BOOLValue])
                {
                  v211 = @"YES";
                }

                else
                {
                  v211 = @"NO";
                }

                v212 = [v210 localizedStringForKey:v211 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

                v213 = *(a1 + 40);
                v269 = v207;
                v214 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v269 count:1];
                v215 = HKUIJoinStringsForAutomationIdentifier(v214);
                v258 = v212;
                v264 = v209;
                [v213 addText:v212 detail:v209 baseIdentifier:v215];

                v216 = [*(*(a1 + 32) + 8) metadata];
                v217 = *MEMORY[0x1E696C710];
                v218 = [v216 objectForKey:*MEMORY[0x1E696C710]];

                if (v218)
                {
                  v219 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
                  v220 = [v219 localizedStringForKey:@"TAKEN_WITH_RECENT_LOUD_EXPOSURE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

                  v221 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
                  if ([v218 BOOLValue])
                  {
                    v222 = @"YES";
                  }

                  else
                  {
                    v222 = @"NO";
                  }

                  v223 = [v221 localizedStringForKey:v222 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

                  v224 = *(a1 + 40);
                  v268 = v217;
                  v225 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v268 count:1];
                  v226 = HKUIJoinStringsForAutomationIdentifier(v225);
                  [v224 addText:v223 detail:v220 baseIdentifier:v226];
                }
              }

              else
              {
                v227 = *MEMORY[0x1E696C708];
                if (![v5 isEqualToString:*MEMORY[0x1E696C708]])
                {
                  goto LABEL_79;
                }

                v228 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
                v229 = [v228 localizedStringForKey:@"AUDIOGRAM_LEFT_EAR_NOISE_LEVEL_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Yodel"];

                v230 = MEMORY[0x1E696AD98];
                [v6 doubleValue];
                v231 = [v230 numberWithDouble:?];
                v232 = HKLocalizedStringForNumberWithDecimalPrecision(v231, 0, 0);

                v233 = objc_alloc(MEMORY[0x1E696AEC0]);
                v234 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
                v235 = [v234 localizedStringForKey:@"AUDIOGRAM_EAR_NOISE_LEVEL_DETAILS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Yodel"];
                v258 = v232;
                v236 = [v233 initWithFormat:v235, v232];

                v237 = *(a1 + 40);
                v267 = v227;
                v238 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v267 count:1];
                v239 = HKUIJoinStringsForAutomationIdentifier(v238);
                v255 = v236;
                v264 = v229;
                [v237 addText:v236 detail:v229 baseIdentifier:v239];

                v240 = [*(*(a1 + 32) + 8) metadata];
                v241 = *MEMORY[0x1E696C718];
                v242 = [v240 objectForKey:*MEMORY[0x1E696C718]];

                if (v242)
                {
                  v243 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
                  v244 = [v243 localizedStringForKey:@"AUDIOGRAM_RIGHT_EAR_NOISE_LEVEL_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Yodel"];

                  v245 = MEMORY[0x1E696AD98];
                  [v242 doubleValue];
                  v246 = [v245 numberWithDouble:?];
                  v247 = HKLocalizedStringForNumberWithDecimalPrecision(v246, 0, 0);

                  v248 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v249 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
                  v250 = [v249 localizedStringForKey:@"AUDIOGRAM_EAR_NOISE_LEVEL_DETAILS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Yodel"];
                  v251 = [v248 initWithFormat:v250, v247];

                  v252 = *(a1 + 40);
                  v266 = v241;
                  v253 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v266 count:1];
                  v254 = HKUIJoinStringsForAutomationIdentifier(v253);
                  [v252 addText:v251 detail:v244 baseIdentifier:v254];
                }
              }

              goto LABEL_79;
            }

            v199 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
            if ([v6 BOOLValue])
            {
              v200 = @"YES";
            }

            else
            {
              v200 = @"NO";
            }

            v10 = [v199 localizedStringForKey:v200 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

            v201 = [*(*(a1 + 32) + 8) sampleType];
            v202 = [v201 identifier];
            v203 = [v202 isEqualToString:*MEMORY[0x1E696BDE8]];

            if (!v203)
            {
              goto LABEL_11;
            }

            v204 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
            v205 = [v204 localizedStringForKey:@"BEYOND_MAXIMUM_DEPTH" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Charon"];

            v11 = 0;
            v5 = v205;
          }

LABEL_12:
          if (v10)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }

        v179 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v63 = [v179 localizedStringForKey:@"SESSION_ESTIMATE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_173;
        }

        v165 = [*(*(a1 + 32) + 8) sampleType];
        v10 = [v6 localizedStringForType:v165];
LABEL_160:

        goto LABEL_63;
      }

      v171 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v63 = [v171 localizedStringForKey:@"HEART_RATE_RECOVERY_MAX_OBSERVED_HEART_RATE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Lyon"];

      v165 = [MEMORY[0x1E696C510] _countPerMinuteUnit];
      v166 = v6;
      if ([v166 isCompatibleWithUnit:v165])
      {
        [v166 doubleValueForUnit:v165];
        v172 = [MEMORY[0x1E696AD98] numberWithDouble:?];
        v173 = HKLocalizedStringForNumberWithDecimalPrecision(v172, 0, 0);

        v174 = MEMORY[0x1E696AEC0];
        v175 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v176 = [v175 localizedStringForKey:@"BEATS_PER_MINUTE_NUMBERLESS_UNIT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
        v177 = [v174 localizedStringWithFormat:v176, 0];

        v10 = HKFormatValueAndUnit(v173, v177);

        goto LABEL_159;
      }
    }

    v10 = 0;
    goto LABEL_159;
  }

  v93 = [*(*(a1 + 32) + 8) sourceRevision];
  v94 = [v93 source];
  v95 = [v94 _hasFirstPartyBundleID];

  if (v95)
  {
    goto LABEL_57;
  }

LABEL_79:
  v11 = 0;
LABEL_13:
  v10 = [v6 description];
LABEL_14:
  if ((_HKMetadataKeyIsPrivate() & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v13 = [v12 localizedStringForKey:v5 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

    v14 = [*(*(a1 + 32) + 8) sampleType];
    v15 = [v14 identifier];

    v265[0] = v15;
    v265[1] = v5;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v265 count:2];
    v17 = HKUIJoinStringsForAutomationIdentifier(v16);

    [*(a1 + 40) addText:v10 detail:v13 baseIdentifier:v17];
    if (v11)
    {
      [*(a1 + 32) addAdditionalOxygenSaturationDetailValuesToSection:*(a1 + 40) key:v5 value:v6];
    }

    goto LABEL_17;
  }

LABEL_18:
}

uint64_t __53__HKDataMetadataDataSource_addDetailValuesToSection___block_invoke_2()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E696BBA0], *MEMORY[0x1E696BB00], *MEMORY[0x1E696BA68], *MEMORY[0x1E696BB98], *MEMORY[0x1E696BAB8], *MEMORY[0x1E696BB28], *MEMORY[0x1E696BB50], *MEMORY[0x1E696BA18], *MEMORY[0x1E696BA30], 0}];
  v1 = MACancelDownloadErrorDomain_block_invoke___metadataKeysExpectingBoolean;
  MACancelDownloadErrorDomain_block_invoke___metadataKeysExpectingBoolean = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)_formattedValueTextForVO2MaxQuantityObject:(id)object key:(id)key section:(id)section
{
  objectCopy = object;
  sectionCopy = section;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objectCopy;
    displayTypeController = [sectionCopy displayTypeController];
    v10 = [displayTypeController displayTypeWithIdentifier:&unk_1F4384738];

    unitController = [sectionCopy unitController];
    v12 = [unitController unitForDisplayType:v10];
    [v8 doubleValueForUnit:v12];
    v14 = v13;
    presentation = [v10 presentation];
    v16 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
    v17 = [presentation adjustedValueForDaemonValue:v16];

    v18 = HKFormattedStringFromValueForContext(v17, v10, unitController, 0, 0, 1);
    if (HKFormatterIncludesUnitForDisplayTypeInContext(v10, 1, unitController))
    {
      v19 = v18;
    }

    else
    {
      v20 = [unitController localizedDisplayNameForDisplayType:v10 value:v17 nameContext:3];
      v19 = HKFormatValueAndUnit(v18, v20);
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)addAdditionalOxygenSaturationDetailValuesToSection:(id)section key:(id)key value:(id)value
{
  v20[2] = *MEMORY[0x1E69E9840];
  sectionCopy = section;
  valueCopy = value;
  if ([key isEqualToString:*MEMORY[0x1E696BA50]])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v10 = [v9 localizedStringForKey:@"SCANDIUM_OVERLAY_LOW_AIR_PRESSURE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Scandium"];

      v11 = valueCopy;
      v12 = HKOxygenSaturationLowBarometricPressureThresholdQuantity();
      v13 = [v11 hk_isGreaterThanQuantity:v12];

      v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v15 = v14;
      if (v13)
      {
        v16 = @"NO";
      }

      else
      {
        v16 = @"YES";
      }

      v17 = [v14 localizedStringForKey:v16 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

      v20[0] = *MEMORY[0x1E696BD58];
      v20[1] = @"HighElevationEnvironment";
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
      v19 = HKUIJoinStringsForAutomationIdentifier(v18);
      [sectionCopy addText:v17 detail:v10 baseIdentifier:v19];
    }
  }
}

- (id)_mediaSourceDisplayNamesForSample:(id)sample
{
  v37 = *MEMORY[0x1E69E9840];
  metadata = [(HKSample *)self->_sample metadata];
  v4 = [metadata objectForKey:*MEMORY[0x1E696C6D0]];
  v5 = [v4 componentsSeparatedByString:{@", "}];

  if (![v5 count])
  {
    v24 = 0;
    goto LABEL_21;
  }

  v30 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v32 objects:v36 count:16];
  v8 = 0x1E696A000;
  if (!v7)
  {
    goto LABEL_19;
  }

  v9 = v7;
  v29 = v5;
  v10 = 0;
  v11 = 0;
  v12 = *v33;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v33 != v12)
      {
        objc_enumerationMutation(v6);
      }

      v14 = *(*(&v32 + 1) + 8 * i);
      whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
      v16 = [v14 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

      v31 = 0;
      v17 = [MEMORY[0x1E6963620] bundleRecordWithBundleIdentifier:v16 allowPlaceholder:1 error:&v31];
      v18 = v17;
      if (v17)
      {
        localizedName = [v17 localizedName];
        if (localizedName)
        {
          v20 = localizedName;
          [v30 addObject:localizedName];
        }
      }

      else
      {
        v21 = [v16 isEqualToString:@"com.apple.WebKit.WebContent"];
        v10 |= v21;
        v11 |= v21 ^ 1;
      }
    }

    v9 = [v6 countByEnumeratingWithState:&v32 objects:v36 count:16];
  }

  while (v9);

  if (v10)
  {
    v8 = 0x1E696A000uLL;
    v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v23 = [v22 localizedStringForKey:@"MEDIA_SOURCE_WEB_CONTENT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    [v30 addObject:v23];

    v5 = v29;
    if ((v11 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v5 = v29;
  v8 = 0x1E696A000uLL;
  if (v11)
  {
LABEL_18:
    v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v25 = [v6 localizedStringForKey:@"MEDIA_SOURCE_OTHER_SOURCE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    [v30 addObject:v25];

LABEL_19:
  }

LABEL_20:
  v26 = [*(v8 + 2792) bundleWithIdentifier:@"com.apple.HealthUI"];
  v27 = [v26 localizedStringForKey:@"CHART_COMMA_SEPARATOR" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v24 = [v30 componentsJoinedByString:v27];

LABEL_21:

  return v24;
}

@end