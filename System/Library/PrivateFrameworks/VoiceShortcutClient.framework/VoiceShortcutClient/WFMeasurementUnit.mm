@interface WFMeasurementUnit
+ (BOOL)usesMetricSystemForUnitType:(id)type;
+ (Class)unitClassForUnitType:(id)type;
+ (id)availableUnitTypes;
+ (id)availableUnitsForUnitType:(id)type;
+ (id)defaultUnitForUnitType:(id)type;
+ (id)linkValueTypeFromWorkflowUnitType:(id)type;
+ (id)localizedStringForUnitType:(id)type;
+ (id)unitFromString:(id)string unitType:(id)type caseSensitive:(BOOL)sensitive;
+ (id)unitTypeForUnitClass:(Class)class;
+ (id)unitTypeFromIntentSlotValueType:(int64_t)type;
+ (id)unitTypeFromLinkMeasurementUnitType:(int64_t)type;
+ (id)unitTypeMap;
+ (int64_t)linkMeasurementUnitTypeFromWorkflowUnitType:(id)type;
@end

@implementation WFMeasurementUnit

+ (id)linkValueTypeFromWorkflowUnitType:(id)type
{
  typeCopy = type;
  v4 = typeCopy;
  if (typeCopy == @"Length")
  {
    lengthValueType = [MEMORY[0x1E69AC8A8] lengthValueType];
  }

  else if (typeCopy == @"Mass")
  {
    lengthValueType = [MEMORY[0x1E69AC8A8] massValueType];
  }

  else if (typeCopy == @"Temperature")
  {
    lengthValueType = [MEMORY[0x1E69AC8A8] temperatureValueType];
  }

  else if (typeCopy == @"Volume")
  {
    lengthValueType = [MEMORY[0x1E69AC8A8] volumeValueType];
  }

  else if (typeCopy == @"Speed")
  {
    lengthValueType = [MEMORY[0x1E69AC8A8] speedValueType];
  }

  else if (typeCopy == @"Energy")
  {
    lengthValueType = [MEMORY[0x1E69AC8A8] energyValueType];
  }

  else if (typeCopy == @"Duration")
  {
    lengthValueType = [MEMORY[0x1E69AC8A8] durationValueType];
  }

  else if (typeCopy == @"Acceleration")
  {
    lengthValueType = [MEMORY[0x1E69AC8A8] accelerationValueType];
  }

  else if (typeCopy == @"Angle")
  {
    lengthValueType = [MEMORY[0x1E69AC8A8] angleValueType];
  }

  else if (typeCopy == @"Area")
  {
    lengthValueType = [MEMORY[0x1E69AC8A8] areaValueType];
  }

  else if (typeCopy == @"Concentration Mass")
  {
    lengthValueType = [MEMORY[0x1E69AC8A8] concentrationMassValueType];
  }

  else if (typeCopy == @"Dispersion")
  {
    lengthValueType = [MEMORY[0x1E69AC8A8] dispersionValueType];
  }

  else if (typeCopy == @"Electric Charge")
  {
    lengthValueType = [MEMORY[0x1E69AC8A8] electricChargeValueType];
  }

  else if (typeCopy == @"Electric Current")
  {
    lengthValueType = [MEMORY[0x1E69AC8A8] electricCurrentValueType];
  }

  else if (typeCopy == @"Electric Potential Difference")
  {
    lengthValueType = [MEMORY[0x1E69AC8A8] electricPotentialDifferenceValueType];
  }

  else if (typeCopy == @"Electric Resistance")
  {
    lengthValueType = [MEMORY[0x1E69AC8A8] electricResistanceValueType];
  }

  else if (typeCopy == @"Frequency")
  {
    lengthValueType = [MEMORY[0x1E69AC8A8] frequencyValueType];
  }

  else if (typeCopy == @"Fuel Efficiency")
  {
    lengthValueType = [MEMORY[0x1E69AC8A8] fuelEfficiencyValueType];
  }

  else if (typeCopy == @"Illuminance")
  {
    lengthValueType = [MEMORY[0x1E69AC8A8] illuminanceValueType];
  }

  else if (typeCopy == @"Information Storage")
  {
    lengthValueType = [MEMORY[0x1E69AC8A8] informationStorageValueType];
  }

  else if (typeCopy == @"Power")
  {
    lengthValueType = [MEMORY[0x1E69AC8A8] powerValueType];
  }

  else
  {
    if (typeCopy == @"Pressure")
    {
      [MEMORY[0x1E69AC8A8] pressureValueType];
    }

    else
    {
      [MEMORY[0x1E69AC8A8] unsupportedMeasurementValueType];
    }
    lengthValueType = ;
  }

  v6 = lengthValueType;

  return v6;
}

+ (int64_t)linkMeasurementUnitTypeFromWorkflowUnitType:(id)type
{
  if (type == @"Length")
  {
    return 1;
  }

  if (type == @"Mass")
  {
    return 2;
  }

  if (type == @"Temperature")
  {
    return 3;
  }

  if (type == @"Volume")
  {
    return 4;
  }

  if (type == @"Speed")
  {
    return 5;
  }

  if (type == @"Energy")
  {
    return 6;
  }

  if (type == @"Duration")
  {
    return 7;
  }

  if (type == @"Acceleration")
  {
    return 8;
  }

  if (type == @"Angle")
  {
    return 9;
  }

  if (type == @"Area")
  {
    return 10;
  }

  if (type == @"Concentration Mass")
  {
    return 11;
  }

  if (type == @"Dispersion")
  {
    return 12;
  }

  if (type == @"Electric Charge")
  {
    return 13;
  }

  if (type == @"Electric Current")
  {
    return 14;
  }

  if (type == @"Electric Potential Difference")
  {
    return 15;
  }

  if (type == @"Electric Resistance")
  {
    return 16;
  }

  if (type == @"Frequency")
  {
    return 17;
  }

  if (type == @"Fuel Efficiency")
  {
    return 18;
  }

  if (type == @"Illuminance")
  {
    return 19;
  }

  if (type == @"Information Storage")
  {
    return 20;
  }

  if (type == @"Power")
  {
    return 21;
  }

  if (type == @"Pressure")
  {
    return 22;
  }

  return 0;
}

+ (id)unitTypeFromIntentSlotValueType:(int64_t)type
{
  v3 = @"Speed";
  v4 = @"Energy";
  if (type != 41)
  {
    v4 = 0;
  }

  if (type != 40)
  {
    v3 = v4;
  }

  v5 = @"Mass";
  v6 = @"Volume";
  if (type != 39)
  {
    v6 = 0;
  }

  if (type != 38)
  {
    v5 = v6;
  }

  if (type <= 39)
  {
    v3 = v5;
  }

  v7 = @"Temperature";
  if ((type - 32) >= 2)
  {
    v7 = 0;
  }

  if ((type - 19) >= 2)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"Length";
  }

  if (type <= 37)
  {
    return v8;
  }

  else
  {
    return v3;
  }
}

+ (id)unitTypeFromLinkMeasurementUnitType:(int64_t)type
{
  if ((type - 1) > 0x15)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7B009F0 + type - 1);
  }
}

+ (id)unitFromString:(id)string unitType:(id)type caseSensitive:(BOOL)sensitive
{
  v34 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  typeCopy = type;
  if ([stringCopy length])
  {
    v10 = [stringCopy stringByReplacingOccurrencesOfString:@"m3" withString:@"m³"];

    v11 = objc_alloc_init(MEMORY[0x1E696AD30]);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__WFMeasurementUnit_unitFromString_unitType_caseSensitive___block_invoke;
    aBlock[3] = &unk_1E7B009D0;
    selfCopy = self;
    v12 = v11;
    v29 = v12;
    stringCopy = v10;
    v30 = stringCopy;
    sensitiveCopy = sensitive;
    v13 = _Block_copy(aBlock);
    v14 = v13;
    if (typeCopy)
    {
      v15 = (*(v13 + 2))(v13, typeCopy);
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      unitTypeMap = [self unitTypeMap];
      allKeys = [unitTypeMap allKeys];

      v18 = [allKeys countByEnumeratingWithState:&v24 objects:v33 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v25;
        while (2)
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v25 != v20)
            {
              objc_enumerationMutation(allKeys);
            }

            v22 = v14[2](v14, *(*(&v24 + 1) + 8 * i));
            if (v22)
            {
              v15 = v22;
              goto LABEL_15;
            }
          }

          v19 = [allKeys countByEnumeratingWithState:&v24 objects:v33 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }
      }

      v15 = 0;
LABEL_15:
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id __59__WFMeasurementUnit_unitFromString_unitType_caseSensitive___block_invoke(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  [*(a1 + 48) availableUnitsForUnitType:a2];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [*(a1 + 32) stringFromUnit:{v8, v14}];
        if (![*(a1 + 40) compare:v9 options:*(a1 + 56) ^ 1] || (v10 = *(a1 + 40), objc_msgSend(v8, "symbol"), v11 = objc_claimAutoreleasedReturnValue(), LOBYTE(v10) = objc_msgSend(v10, "isEqualToString:", v11), v11, (v10 & 1) != 0))
        {
          v12 = v8;

          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v12 = 0;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_13:

  return v12;
}

+ (id)defaultUnitForUnitType:(id)type
{
  v74 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v5 = defaultUnitForUnitType__unitDefaultsMap;
  if (!defaultUnitForUnitType__unitDefaultsMap)
  {
    v6 = [self usesMetricSystemForUnitType:typeCopy];
    v33[0] = @"Acceleration";
    if (v6)
    {
      [MEMORY[0x1E696AFD8] metersPerSecondSquared];
    }

    else
    {
      [MEMORY[0x1E696AFD8] gravity];
    }
    v32 = ;
    v53[0] = v32;
    v33[1] = @"Angle";
    degrees = [MEMORY[0x1E696AFE0] degrees];
    v53[1] = degrees;
    v33[2] = @"Area";
    if (v6)
    {
      squareMeters = [MEMORY[0x1E696AFE8] squareMeters];
      v54 = squareMeters;
      v34 = @"Concentration Mass";
      [MEMORY[0x1E696AFF0] milligramsPerDeciliter];
    }

    else
    {
      squareMeters = [MEMORY[0x1E696AFE8] squareFeet];
      v54 = squareMeters;
      v34 = @"Concentration Mass";
      [MEMORY[0x1E696AFF0] gramsPerLiter];
    }
    v29 = ;
    v55 = v29;
    v35 = @"Dispersion";
    partsPerMillion = [MEMORY[0x1E696B000] partsPerMillion];
    v56 = partsPerMillion;
    v36 = @"Duration";
    minutes = [MEMORY[0x1E696B008] minutes];
    v57 = minutes;
    v37 = @"Electric Charge";
    ampereHours = [MEMORY[0x1E696B010] ampereHours];
    v58 = ampereHours;
    v38 = @"Electric Current";
    amperes = [MEMORY[0x1E696B018] amperes];
    v59 = amperes;
    v39 = @"Electric Potential Difference";
    volts = [MEMORY[0x1E696B020] volts];
    v60 = volts;
    v40 = @"Electric Resistance";
    ohms = [MEMORY[0x1E696B028] ohms];
    v61 = ohms;
    v41 = @"Energy";
    joules = [MEMORY[0x1E696B030] joules];
    v62 = joules;
    v42 = @"Frequency";
    hertz = [MEMORY[0x1E696B038] hertz];
    v63 = hertz;
    v43 = @"Fuel Efficiency";
    if (v6)
    {
      [MEMORY[0x1E696B040] litersPer100Kilometers];
    }

    else
    {
      [MEMORY[0x1E696B040] milesPerGallon];
    }
    v20 = ;
    v64 = v20;
    v44 = @"Illuminance";
    v19 = [MEMORY[0x1E696B048] lux];
    v65 = v19;
    v45 = @"Information Storage";
    megabytes = [MEMORY[0x1E696B050] megabytes];
    v66 = megabytes;
    v46 = @"Length";
    if (v6)
    {
      meters = [MEMORY[0x1E696B058] meters];
      v67 = meters;
      v47 = @"Mass";
      [MEMORY[0x1E696B060] grams];
    }

    else
    {
      meters = [MEMORY[0x1E696B058] feet];
      v67 = meters;
      v47 = @"Mass";
      [MEMORY[0x1E696B060] poundsMass];
    }
    v9 = ;
    v68 = v9;
    v48 = @"Power";
    watts = [MEMORY[0x1E696B068] watts];
    v69 = watts;
    v49 = @"Pressure";
    if (v6)
    {
      millibars = [MEMORY[0x1E696B070] millibars];
      v70 = millibars;
      v50 = @"Speed";
      kilometersPerHour = [MEMORY[0x1E696B078] kilometersPerHour];
      v71 = kilometersPerHour;
      v51 = @"Temperature";
      celsius = [MEMORY[0x1E696B080] celsius];
      v72 = celsius;
      v52 = @"Volume";
      [MEMORY[0x1E696B088] liters];
    }

    else
    {
      millibars = [MEMORY[0x1E696B070] inchesOfMercury];
      v70 = millibars;
      v50 = @"Speed";
      kilometersPerHour = [MEMORY[0x1E696B078] milesPerHour];
      v71 = kilometersPerHour;
      v51 = @"Temperature";
      celsius = [MEMORY[0x1E696B080] fahrenheit];
      v72 = celsius;
      v52 = @"Volume";
      [MEMORY[0x1E696B088] cups];
    }
    v14 = ;
    v73 = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v33 count:22];
    v16 = defaultUnitForUnitType__unitDefaultsMap;
    defaultUnitForUnitType__unitDefaultsMap = v15;

    v5 = defaultUnitForUnitType__unitDefaultsMap;
  }

  v17 = [v5 objectForKey:typeCopy];

  return v17;
}

+ (BOOL)usesMetricSystemForUnitType:(id)type
{
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  countryCode = [currentLocale countryCode];
  v6 = [countryCode isEqualToString:@"GB"];

  if (type == @"Length" && (v6 & 1) != 0)
  {
    usesMetricSystem = 0;
  }

  else
  {
    usesMetricSystem = [currentLocale usesMetricSystem];
  }

  return usesMetricSystem;
}

+ (id)availableUnitsForUnitType:(id)type
{
  v154[2] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Acceleration"])
  {
    metersPerSecondSquared = [MEMORY[0x1E696AFD8] metersPerSecondSquared];
    v154[0] = metersPerSecondSquared;
    gravity = [MEMORY[0x1E696AFD8] gravity];
    v154[1] = gravity;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v154 count:2];
LABEL_12:

    goto LABEL_13;
  }

  if ([typeCopy isEqualToString:@"Angle"])
  {
    metersPerSecondSquared = [MEMORY[0x1E696AFE0] degrees];
    v153[0] = metersPerSecondSquared;
    gravity = [MEMORY[0x1E696AFE0] arcMinutes];
    v153[1] = gravity;
    arcSeconds = [MEMORY[0x1E696AFE0] arcSeconds];
    v153[2] = arcSeconds;
    radians = [MEMORY[0x1E696AFE0] radians];
    v153[3] = radians;
    gradians = [MEMORY[0x1E696AFE0] gradians];
    v153[4] = gradians;
    revolutions = [MEMORY[0x1E696AFE0] revolutions];
    v153[5] = revolutions;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v153 count:6];

LABEL_11:
    goto LABEL_12;
  }

  if ([typeCopy isEqualToString:@"Area"])
  {
    squareMegameters = [MEMORY[0x1E696AFE8] squareMegameters];
    v152[0] = squareMegameters;
    squareKilometers = [MEMORY[0x1E696AFE8] squareKilometers];
    v152[1] = squareKilometers;
    squareMeters = [MEMORY[0x1E696AFE8] squareMeters];
    v152[2] = squareMeters;
    squareCentimeters = [MEMORY[0x1E696AFE8] squareCentimeters];
    v152[3] = squareCentimeters;
    squareMillimeters = [MEMORY[0x1E696AFE8] squareMillimeters];
    v152[4] = squareMillimeters;
    squareMicrometers = [MEMORY[0x1E696AFE8] squareMicrometers];
    v152[5] = squareMicrometers;
    [MEMORY[0x1E696AFE8] squareNanometers];
    v12 = v130 = typeCopy;
    v152[6] = v12;
    squareInches = [MEMORY[0x1E696AFE8] squareInches];
    v152[7] = squareInches;
    squareFeet = [MEMORY[0x1E696AFE8] squareFeet];
    v152[8] = squareFeet;
    squareYards = [MEMORY[0x1E696AFE8] squareYards];
    v152[9] = squareYards;
    squareMiles = [MEMORY[0x1E696AFE8] squareMiles];
    v152[10] = squareMiles;
    acres = [MEMORY[0x1E696AFE8] acres];
    v152[11] = acres;
    ares = [MEMORY[0x1E696AFE8] ares];
    v152[12] = ares;
    hectares = [MEMORY[0x1E696AFE8] hectares];
    v152[13] = hectares;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v152 count:14];

    metersPerSecondSquared = squareMegameters;
    typeCopy = v130;

    v20 = squareKilometers;
LABEL_7:

LABEL_13:
    goto LABEL_14;
  }

  if ([typeCopy isEqualToString:@"Concentration Mass"])
  {
    metersPerSecondSquared = [MEMORY[0x1E696AFF0] gramsPerLiter];
    v151[0] = metersPerSecondSquared;
    gravity = [MEMORY[0x1E696AFF0] milligramsPerDeciliter];
    v151[1] = gravity;
    arcSeconds = [MEMORY[0x1E696AFF0] wf_microgramsPerCubicMeter];
    v151[2] = arcSeconds;
    v21 = MEMORY[0x1E695DEC8];
    v22 = v151;
LABEL_10:
    v6 = [v21 arrayWithObjects:v22 count:3];
    goto LABEL_11;
  }

  if ([typeCopy isEqualToString:@"Dispersion"])
  {
    metersPerSecondSquared = [MEMORY[0x1E696B000] partsPerMillion];
    v150 = metersPerSecondSquared;
    v24 = MEMORY[0x1E695DEC8];
    v25 = &v150;
LABEL_19:
    v6 = [v24 arrayWithObjects:v25 count:1];
    goto LABEL_13;
  }

  if ([typeCopy isEqualToString:@"Duration"])
  {
    metersPerSecondSquared = [MEMORY[0x1E696B008] milliseconds];
    v149[0] = metersPerSecondSquared;
    microseconds = [MEMORY[0x1E696B008] microseconds];
    v149[1] = microseconds;
    nanoseconds = [MEMORY[0x1E696B008] nanoseconds];
    v149[2] = nanoseconds;
    picoseconds = [MEMORY[0x1E696B008] picoseconds];
    v149[3] = picoseconds;
    seconds = [MEMORY[0x1E696B008] seconds];
    v149[4] = seconds;
    minutes = [MEMORY[0x1E696B008] minutes];
    v149[5] = minutes;
    hours = [MEMORY[0x1E696B008] hours];
    v149[6] = hours;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v149 count:7];

    goto LABEL_13;
  }

  if ([typeCopy isEqualToString:@"Electric Charge"])
  {
    metersPerSecondSquared = [MEMORY[0x1E696B010] coulombs];
    v148[0] = metersPerSecondSquared;
    megaampereHours = [MEMORY[0x1E696B010] megaampereHours];
    v148[1] = megaampereHours;
    kiloampereHours = [MEMORY[0x1E696B010] kiloampereHours];
    v148[2] = kiloampereHours;
    ampereHours = [MEMORY[0x1E696B010] ampereHours];
    v148[3] = ampereHours;
    milliampereHours = [MEMORY[0x1E696B010] milliampereHours];
    v148[4] = milliampereHours;
    microampereHours = [MEMORY[0x1E696B010] microampereHours];
    v148[5] = microampereHours;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v148 count:6];

    goto LABEL_13;
  }

  if ([typeCopy isEqualToString:@"Electric Current"])
  {
    metersPerSecondSquared = [MEMORY[0x1E696B018] megaamperes];
    v147[0] = metersPerSecondSquared;
    gravity = [MEMORY[0x1E696B018] kiloamperes];
    v147[1] = gravity;
    arcSeconds = [MEMORY[0x1E696B018] amperes];
    v147[2] = arcSeconds;
    milliamperes = [MEMORY[0x1E696B018] milliamperes];
    v147[3] = milliamperes;
    microamperes = [MEMORY[0x1E696B018] microamperes];
    v147[4] = microamperes;
    v39 = MEMORY[0x1E695DEC8];
    v40 = v147;
LABEL_32:
    v6 = [v39 arrayWithObjects:v40 count:5];

    goto LABEL_11;
  }

  if ([typeCopy isEqualToString:@"Electric Potential Difference"])
  {
    metersPerSecondSquared = [MEMORY[0x1E696B020] megavolts];
    v146[0] = metersPerSecondSquared;
    gravity = [MEMORY[0x1E696B020] kilovolts];
    v146[1] = gravity;
    arcSeconds = [MEMORY[0x1E696B020] volts];
    v146[2] = arcSeconds;
    milliamperes = [MEMORY[0x1E696B020] millivolts];
    v146[3] = milliamperes;
    microamperes = [MEMORY[0x1E696B020] microvolts];
    v146[4] = microamperes;
    v39 = MEMORY[0x1E695DEC8];
    v40 = v146;
    goto LABEL_32;
  }

  if ([typeCopy isEqualToString:@"Electric Resistance"])
  {
    metersPerSecondSquared = [MEMORY[0x1E696B028] megaohms];
    v145[0] = metersPerSecondSquared;
    gravity = [MEMORY[0x1E696B028] kiloohms];
    v145[1] = gravity;
    arcSeconds = [MEMORY[0x1E696B028] ohms];
    v145[2] = arcSeconds;
    milliamperes = [MEMORY[0x1E696B028] milliohms];
    v145[3] = milliamperes;
    microamperes = [MEMORY[0x1E696B028] microohms];
    v145[4] = microamperes;
    v39 = MEMORY[0x1E695DEC8];
    v40 = v145;
    goto LABEL_32;
  }

  if ([typeCopy isEqualToString:@"Energy"])
  {
    metersPerSecondSquared = [MEMORY[0x1E696B030] kilojoules];
    v144[0] = metersPerSecondSquared;
    gravity = [MEMORY[0x1E696B030] joules];
    v144[1] = gravity;
    arcSeconds = [MEMORY[0x1E696B030] kilocalories];
    v144[2] = arcSeconds;
    milliamperes = [MEMORY[0x1E696B030] calories];
    v144[3] = milliamperes;
    microamperes = [MEMORY[0x1E696B030] kilowattHours];
    v144[4] = microamperes;
    v39 = MEMORY[0x1E695DEC8];
    v40 = v144;
    goto LABEL_32;
  }

  if ([typeCopy isEqualToString:@"Frequency"])
  {
    metersPerSecondSquared = [MEMORY[0x1E696B038] terahertz];
    v143[0] = metersPerSecondSquared;
    gigahertz = [MEMORY[0x1E696B038] gigahertz];
    v143[1] = gigahertz;
    megahertz = [MEMORY[0x1E696B038] megahertz];
    v143[2] = megahertz;
    kilohertz = [MEMORY[0x1E696B038] kilohertz];
    v143[3] = kilohertz;
    hertz = [MEMORY[0x1E696B038] hertz];
    v143[4] = hertz;
    millihertz = [MEMORY[0x1E696B038] millihertz];
    v143[5] = millihertz;
    microhertz = [MEMORY[0x1E696B038] microhertz];
    v143[6] = microhertz;
    nanohertz = [MEMORY[0x1E696B038] nanohertz];
    v143[7] = nanohertz;
    framesPerSecond = [MEMORY[0x1E696B038] framesPerSecond];
    v143[8] = framesPerSecond;
    v48 = MEMORY[0x1E695DEC8];
    v49 = v143;
LABEL_35:
    v6 = [v48 arrayWithObjects:v49 count:9];

    v20 = gigahertz;
    goto LABEL_7;
  }

  if ([typeCopy isEqualToString:@"Fuel Efficiency"])
  {
    metersPerSecondSquared = [MEMORY[0x1E696B040] litersPer100Kilometers];
    v142[0] = metersPerSecondSquared;
    gravity = [MEMORY[0x1E696B040] milesPerImperialGallon];
    v142[1] = gravity;
    arcSeconds = [MEMORY[0x1E696B040] milesPerGallon];
    v142[2] = arcSeconds;
    v21 = MEMORY[0x1E695DEC8];
    v22 = v142;
    goto LABEL_10;
  }

  if ([typeCopy isEqualToString:@"Illuminance"])
  {
    metersPerSecondSquared = [MEMORY[0x1E696B048] lux];
    v141 = metersPerSecondSquared;
    v24 = MEMORY[0x1E695DEC8];
    v25 = &v141;
    goto LABEL_19;
  }

  if ([typeCopy isEqualToString:@"Information Storage"])
  {
    metersPerSecondSquared = [MEMORY[0x1E696B050] bytes];
    v140[0] = metersPerSecondSquared;
    gigahertz = [MEMORY[0x1E696B050] kilobytes];
    v140[1] = gigahertz;
    megahertz = [MEMORY[0x1E696B050] megabytes];
    v140[2] = megahertz;
    kilohertz = [MEMORY[0x1E696B050] gigabytes];
    v140[3] = kilohertz;
    hertz = [MEMORY[0x1E696B050] terabytes];
    v140[4] = hertz;
    millihertz = [MEMORY[0x1E696B050] petabytes];
    v140[5] = millihertz;
    microhertz = [MEMORY[0x1E696B050] exabytes];
    v140[6] = microhertz;
    nanohertz = [MEMORY[0x1E696B050] zettabytes];
    v140[7] = nanohertz;
    framesPerSecond = [MEMORY[0x1E696B050] yottabytes];
    v140[8] = framesPerSecond;
    v48 = MEMORY[0x1E695DEC8];
    v49 = v140;
    goto LABEL_35;
  }

  v132 = typeCopy;
  if ([typeCopy isEqualToString:@"Length"])
  {
    megameters = [MEMORY[0x1E696B058] megameters];
    v139[0] = megameters;
    kilometers = [MEMORY[0x1E696B058] kilometers];
    v139[1] = kilometers;
    hectometers = [MEMORY[0x1E696B058] hectometers];
    v139[2] = hectometers;
    decameters = [MEMORY[0x1E696B058] decameters];
    v139[3] = decameters;
    meters = [MEMORY[0x1E696B058] meters];
    v139[4] = meters;
    decimeters = [MEMORY[0x1E696B058] decimeters];
    v139[5] = decimeters;
    centimeters = [MEMORY[0x1E696B058] centimeters];
    v139[6] = centimeters;
    millimeters = [MEMORY[0x1E696B058] millimeters];
    v139[7] = millimeters;
    micrometers = [MEMORY[0x1E696B058] micrometers];
    v139[8] = micrometers;
    nanometers = [MEMORY[0x1E696B058] nanometers];
    v139[9] = nanometers;
    picometers = [MEMORY[0x1E696B058] picometers];
    v139[10] = picometers;
    inches = [MEMORY[0x1E696B058] inches];
    v139[11] = inches;
    feet = [MEMORY[0x1E696B058] feet];
    v139[12] = feet;
    yards = [MEMORY[0x1E696B058] yards];
    v139[13] = yards;
    miles = [MEMORY[0x1E696B058] miles];
    v139[14] = miles;
    scandinavianMiles = [MEMORY[0x1E696B058] scandinavianMiles];
    v139[15] = scandinavianMiles;
    lightyears = [MEMORY[0x1E696B058] lightyears];
    v139[16] = lightyears;
    nauticalMiles = [MEMORY[0x1E696B058] nauticalMiles];
    v139[17] = nauticalMiles;
    fathoms = [MEMORY[0x1E696B058] fathoms];
    v139[18] = fathoms;
    furlongs = [MEMORY[0x1E696B058] furlongs];
    v139[19] = furlongs;
    astronomicalUnits = [MEMORY[0x1E696B058] astronomicalUnits];
    v139[20] = astronomicalUnits;
    parsecs = [MEMORY[0x1E696B058] parsecs];
    v139[21] = parsecs;
    v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v139 count:22];

    v6 = v59;
    metersPerSecondSquared = megameters;

LABEL_44:
LABEL_47:

    v69 = kilometers;
LABEL_48:

LABEL_49:
    typeCopy = v132;
    goto LABEL_13;
  }

  if ([typeCopy isEqualToString:@"Mass"])
  {
    kilograms = [MEMORY[0x1E696B060] kilograms];
    v138[0] = kilograms;
    kilometers = [MEMORY[0x1E696B060] grams];
    v138[1] = kilometers;
    hectometers = [MEMORY[0x1E696B060] decigrams];
    v138[2] = hectometers;
    decameters = [MEMORY[0x1E696B060] centigrams];
    v138[3] = decameters;
    meters = [MEMORY[0x1E696B060] milligrams];
    v138[4] = meters;
    decimeters = [MEMORY[0x1E696B060] micrograms];
    v138[5] = decimeters;
    centimeters = [MEMORY[0x1E696B060] nanograms];
    v138[6] = centimeters;
    picograms = [MEMORY[0x1E696B060] picograms];
    v138[7] = picograms;
    ounces = [MEMORY[0x1E696B060] ounces];
    v138[8] = ounces;
    poundsMass = [MEMORY[0x1E696B060] poundsMass];
    v138[9] = poundsMass;
    stones = [MEMORY[0x1E696B060] stones];
    v138[10] = stones;
    metricTons = [MEMORY[0x1E696B060] metricTons];
    v138[11] = metricTons;
    shortTons = [MEMORY[0x1E696B060] shortTons];
    v138[12] = shortTons;
    carats = [MEMORY[0x1E696B060] carats];
    v138[13] = carats;
    ouncesTroy = [MEMORY[0x1E696B060] ouncesTroy];
    v138[14] = ouncesTroy;
    slugs = [MEMORY[0x1E696B060] slugs];
    v138[15] = slugs;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v138 count:16];

    metersPerSecondSquared = kilograms;
    goto LABEL_47;
  }

  if ([typeCopy isEqualToString:@"Power"])
  {
    terawatts = [MEMORY[0x1E696B068] terawatts];
    v137[0] = terawatts;
    gigawatts = [MEMORY[0x1E696B068] gigawatts];
    v137[1] = gigawatts;
    megawatts = [MEMORY[0x1E696B068] megawatts];
    v137[2] = megawatts;
    kilowatts = [MEMORY[0x1E696B068] kilowatts];
    v137[3] = kilowatts;
    watts = [MEMORY[0x1E696B068] watts];
    v137[4] = watts;
    milliwatts = [MEMORY[0x1E696B068] milliwatts];
    v137[5] = milliwatts;
    microwatts = [MEMORY[0x1E696B068] microwatts];
    v137[6] = microwatts;
    nanowatts = [MEMORY[0x1E696B068] nanowatts];
    v137[7] = nanowatts;
    picowatts = [MEMORY[0x1E696B068] picowatts];
    v137[8] = picowatts;
    femtowatts = [MEMORY[0x1E696B068] femtowatts];
    v137[9] = femtowatts;
    horsepower = [MEMORY[0x1E696B068] horsepower];
    v137[10] = horsepower;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v137 count:11];

    metersPerSecondSquared = terawatts;
LABEL_54:
    v69 = gigawatts;
    goto LABEL_48;
  }

  if ([typeCopy isEqualToString:@"Pressure"])
  {
    metersPerSecondSquared = [MEMORY[0x1E696B070] newtonsPerMetersSquared];
    v136[0] = metersPerSecondSquared;
    gigawatts = [MEMORY[0x1E696B070] gigapascals];
    v136[1] = gigawatts;
    megapascals = [MEMORY[0x1E696B070] megapascals];
    v136[2] = megapascals;
    kilopascals = [MEMORY[0x1E696B070] kilopascals];
    v136[3] = kilopascals;
    hectopascals = [MEMORY[0x1E696B070] hectopascals];
    v136[4] = hectopascals;
    inchesOfMercury = [MEMORY[0x1E696B070] inchesOfMercury];
    v136[5] = inchesOfMercury;
    bars = [MEMORY[0x1E696B070] bars];
    v136[6] = bars;
    millibars = [MEMORY[0x1E696B070] millibars];
    v136[7] = millibars;
    millimetersOfMercury = [MEMORY[0x1E696B070] millimetersOfMercury];
    v136[8] = millimetersOfMercury;
    poundsForcePerSquareInch = [MEMORY[0x1E696B070] poundsForcePerSquareInch];
    v136[9] = poundsForcePerSquareInch;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v136 count:10];

    goto LABEL_54;
  }

  if ([typeCopy isEqualToString:@"Speed"])
  {
    metersPerSecondSquared = [MEMORY[0x1E696B078] metersPerSecond];
    v135[0] = metersPerSecondSquared;
    kilometersPerHour = [MEMORY[0x1E696B078] kilometersPerHour];
    v135[1] = kilometersPerHour;
    milesPerHour = [MEMORY[0x1E696B078] milesPerHour];
    v135[2] = milesPerHour;
    knots = [MEMORY[0x1E696B078] knots];
    v135[3] = knots;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v135 count:4];

LABEL_59:
    goto LABEL_49;
  }

  if ([typeCopy isEqualToString:@"Temperature"])
  {
    metersPerSecondSquared = [MEMORY[0x1E696B080] kelvin];
    v134[0] = metersPerSecondSquared;
    kilometersPerHour = [MEMORY[0x1E696B080] celsius];
    v134[1] = kilometersPerHour;
    milesPerHour = [MEMORY[0x1E696B080] fahrenheit];
    v134[2] = milesPerHour;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v134 count:3];
    goto LABEL_59;
  }

  if ([typeCopy isEqualToString:@"Volume"])
  {
    megaliters = [MEMORY[0x1E696B088] megaliters];
    v133[0] = megaliters;
    kilometers = [MEMORY[0x1E696B088] kiloliters];
    v133[1] = kilometers;
    hectometers = [MEMORY[0x1E696B088] liters];
    v133[2] = hectometers;
    decameters = [MEMORY[0x1E696B088] deciliters];
    v133[3] = decameters;
    meters = [MEMORY[0x1E696B088] centiliters];
    v133[4] = meters;
    decimeters = [MEMORY[0x1E696B088] milliliters];
    v133[5] = decimeters;
    centimeters = [MEMORY[0x1E696B088] cubicKilometers];
    v133[6] = centimeters;
    millimeters = [MEMORY[0x1E696B088] cubicMeters];
    v133[7] = millimeters;
    micrometers = [MEMORY[0x1E696B088] cubicDecimeters];
    v133[8] = micrometers;
    nanometers = [MEMORY[0x1E696B088] cubicCentimeters];
    v133[9] = nanometers;
    picometers = [MEMORY[0x1E696B088] cubicMillimeters];
    v133[10] = picometers;
    inches = [MEMORY[0x1E696B088] cubicInches];
    v133[11] = inches;
    feet = [MEMORY[0x1E696B088] cubicFeet];
    v133[12] = feet;
    cubicYards = [MEMORY[0x1E696B088] cubicYards];
    v133[13] = cubicYards;
    cubicMiles = [MEMORY[0x1E696B088] cubicMiles];
    v133[14] = cubicMiles;
    acreFeet = [MEMORY[0x1E696B088] acreFeet];
    v133[15] = acreFeet;
    bushels = [MEMORY[0x1E696B088] bushels];
    v133[16] = bushels;
    teaspoons = [MEMORY[0x1E696B088] teaspoons];
    v133[17] = teaspoons;
    tablespoons = [MEMORY[0x1E696B088] tablespoons];
    v133[18] = tablespoons;
    fluidOunces = [MEMORY[0x1E696B088] fluidOunces];
    v133[19] = fluidOunces;
    cups = [MEMORY[0x1E696B088] cups];
    v133[20] = cups;
    pints = [MEMORY[0x1E696B088] pints];
    v133[21] = pints;
    quarts = [MEMORY[0x1E696B088] quarts];
    v133[22] = quarts;
    gallons = [MEMORY[0x1E696B088] gallons];
    v133[23] = gallons;
    imperialTeaspoons = [MEMORY[0x1E696B088] imperialTeaspoons];
    v133[24] = imperialTeaspoons;
    imperialTablespoons = [MEMORY[0x1E696B088] imperialTablespoons];
    v133[25] = imperialTablespoons;
    imperialFluidOunces = [MEMORY[0x1E696B088] imperialFluidOunces];
    v133[26] = imperialFluidOunces;
    imperialPints = [MEMORY[0x1E696B088] imperialPints];
    v133[27] = imperialPints;
    imperialQuarts = [MEMORY[0x1E696B088] imperialQuarts];
    v133[28] = imperialQuarts;
    imperialGallons = [MEMORY[0x1E696B088] imperialGallons];
    v133[29] = imperialGallons;
    metricCups = [MEMORY[0x1E696B088] metricCups];
    v133[30] = metricCups;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v133 count:31];

    metersPerSecondSquared = megaliters;
    goto LABEL_44;
  }

  v6 = MEMORY[0x1E695E0F0];
LABEL_14:

  return v6;
}

+ (id)unitTypeMap
{
  if (unitTypeMap_onceToken != -1)
  {
    dispatch_once(&unitTypeMap_onceToken, &__block_literal_global_5470);
  }

  v3 = unitTypeMap_unitTypeMap;

  return v3;
}

void __32__WFMeasurementUnit_unitTypeMap__block_invoke()
{
  v3[22] = *MEMORY[0x1E69E9840];
  v2[0] = @"Acceleration";
  v3[0] = objc_opt_class();
  v2[1] = @"Angle";
  v3[1] = objc_opt_class();
  v2[2] = @"Area";
  v3[2] = objc_opt_class();
  v2[3] = @"Concentration Mass";
  v3[3] = objc_opt_class();
  v2[4] = @"Dispersion";
  v3[4] = objc_opt_class();
  v2[5] = @"Duration";
  v3[5] = objc_opt_class();
  v2[6] = @"Electric Charge";
  v3[6] = objc_opt_class();
  v2[7] = @"Electric Current";
  v3[7] = objc_opt_class();
  v2[8] = @"Electric Potential Difference";
  v3[8] = objc_opt_class();
  v2[9] = @"Electric Resistance";
  v3[9] = objc_opt_class();
  v2[10] = @"Energy";
  v3[10] = objc_opt_class();
  v2[11] = @"Frequency";
  v3[11] = objc_opt_class();
  v2[12] = @"Fuel Efficiency";
  v3[12] = objc_opt_class();
  v2[13] = @"Illuminance";
  v3[13] = objc_opt_class();
  v2[14] = @"Information Storage";
  v3[14] = objc_opt_class();
  v2[15] = @"Length";
  v3[15] = objc_opt_class();
  v2[16] = @"Mass";
  v3[16] = objc_opt_class();
  v2[17] = @"Power";
  v3[17] = objc_opt_class();
  v2[18] = @"Pressure";
  v3[18] = objc_opt_class();
  v2[19] = @"Speed";
  v3[19] = objc_opt_class();
  v2[20] = @"Temperature";
  v3[20] = objc_opt_class();
  v2[21] = @"Volume";
  v3[21] = objc_opt_class();
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:22];
  v1 = unitTypeMap_unitTypeMap;
  unitTypeMap_unitTypeMap = v0;
}

+ (id)unitTypeForUnitClass:(Class)class
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__5472;
  v12 = __Block_byref_object_dispose__5473;
  v13 = 0;
  unitTypeMap = [self unitTypeMap];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__WFMeasurementUnit_unitTypeForUnitClass___block_invoke;
  v7[3] = &unk_1E7B009A8;
  v7[4] = &v8;
  v7[5] = class;
  [unitTypeMap enumerateKeysAndObjectsUsingBlock:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __42__WFMeasurementUnit_unitTypeForUnitClass___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if ([*(a1 + 40) isSubclassOfClass:a3])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

+ (id)localizedStringForUnitType:(id)type
{
  typeCopy = type;
  v4 = @"Acceleration";
  if ([typeCopy isEqualToString:@"Acceleration"] & 1) != 0 || (v4 = @"Angle", (objc_msgSend(typeCopy, "isEqualToString:", @"Angle")) || (v4 = @"Area", (objc_msgSend(typeCopy, "isEqualToString:", @"Area")) || (v4 = @"Concentration Mass", (objc_msgSend(typeCopy, "isEqualToString:", @"Concentration Mass")) || (v4 = @"Dispersion", (objc_msgSend(typeCopy, "isEqualToString:", @"Dispersion")) || (v4 = @"Duration", (objc_msgSend(typeCopy, "isEqualToString:", @"Duration")) || (v4 = @"Electric Charge", (objc_msgSend(typeCopy, "isEqualToString:", @"Electric Charge")) || (v4 = @"Electric Current", (objc_msgSend(typeCopy, "isEqualToString:", @"Electric Current")) || (v4 = @"Electric Potential Difference", (objc_msgSend(typeCopy, "isEqualToString:", @"Electric Potential Difference")) || (v4 = @"Electric Resistance", (objc_msgSend(typeCopy, "isEqualToString:", @"Electric Resistance")) || (v4 = @"Energy", (objc_msgSend(typeCopy, "isEqualToString:", @"Energy")) || (v4 = @"Frequency", (objc_msgSend(typeCopy, "isEqualToString:", @"Frequency")) || (v4 = @"Fuel Efficiency", (objc_msgSend(typeCopy, "isEqualToString:", @"Fuel Efficiency")) || (v4 = @"Illuminance", (objc_msgSend(typeCopy, "isEqualToString:", @"Illuminance")) || (v4 = @"Information Storage", (objc_msgSend(typeCopy, "isEqualToString:", @"Information Storage")) || (v4 = @"Length", (objc_msgSend(typeCopy, "isEqualToString:", @"Length")) || (v4 = @"Mass", (objc_msgSend(typeCopy, "isEqualToString:", @"Mass")) || (v4 = @"Power", (objc_msgSend(typeCopy, "isEqualToString:", @"Power")) || (v4 = @"Pressure", (objc_msgSend(typeCopy, "isEqualToString:", @"Pressure")) || (v4 = @"Speed", (objc_msgSend(typeCopy, "isEqualToString:", @"Speed")) || (v4 = @"Temperature", (objc_msgSend(typeCopy, "isEqualToString:", @"Temperature")) || (v4 = @"Volume", objc_msgSend(typeCopy, "isEqualToString:", @"Volume")))
  {
    v5 = WFLocalizedString(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (Class)unitClassForUnitType:(id)type
{
  typeCopy = type;
  unitTypeMap = [self unitTypeMap];
  v7 = [unitTypeMap objectForKey:typeCopy];

  if (!v7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFMeasurementUnit.m" lineNumber:50 description:{@"Invalid unit type: %@", typeCopy}];
  }

  v8 = v7;

  return v7;
}

+ (id)availableUnitTypes
{
  unitTypeMap = [self unitTypeMap];
  allKeys = [unitTypeMap allKeys];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__WFMeasurementUnit_availableUnitTypes__block_invoke;
  v7[3] = &__block_descriptor_40_e31_q24__0__NSString_8__NSString_16l;
  v7[4] = self;
  v5 = [allKeys sortedArrayUsingComparator:v7];

  return v5;
}

uint64_t __39__WFMeasurementUnit_availableUnitTypes__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 localizedStringForUnitType:a2];
  v8 = [*(a1 + 32) localizedStringForUnitType:v6];

  v9 = [v7 compare:v8];
  return v9;
}

@end