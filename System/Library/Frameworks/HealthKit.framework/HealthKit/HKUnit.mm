@interface HKUnit
+ (BOOL)_isValidUnitString:(id)string;
+ (HKUnit)gramUnitWithMetricPrefix:(HKMetricPrefix)prefix;
+ (HKUnit)hertzUnitWithMetricPrefix:(HKMetricPrefix)prefix;
+ (HKUnit)jouleUnitWithMetricPrefix:(HKMetricPrefix)prefix;
+ (HKUnit)literUnitWithMetricPrefix:(HKMetricPrefix)prefix;
+ (HKUnit)luxUnitWithMetricPrefix:(HKMetricPrefix)prefix;
+ (HKUnit)meterUnitWithMetricPrefix:(HKMetricPrefix)prefix;
+ (HKUnit)moleUnitWithMetricPrefix:(HKMetricPrefix)prefix molarMass:(double)gramsPerMole;
+ (HKUnit)moleUnitWithMolarMass:(double)gramsPerMole;
+ (HKUnit)pascalUnitWithMetricPrefix:(HKMetricPrefix)prefix;
+ (HKUnit)radianAngleUnitWithMetricPrefix:(HKMetricPrefix)prefix;
+ (HKUnit)secondUnitWithMetricPrefix:(HKMetricPrefix)prefix;
+ (HKUnit)siemenUnitWithMetricPrefix:(HKMetricPrefix)prefix;
+ (HKUnit)unitFromEnergyFormatterUnit:(NSEnergyFormatterUnit)energyFormatterUnit;
+ (HKUnit)unitFromLengthFormatterUnit:(NSLengthFormatterUnit)lengthFormatterUnit;
+ (HKUnit)unitFromMassFormatterUnit:(NSMassFormatterUnit)massFormatterUnit;
+ (HKUnit)unitFromString:(NSString *)string;
+ (HKUnit)voltUnitWithMetricPrefix:(HKMetricPrefix)prefix;
+ (HKUnit)wattUnitWithMetricPrefix:(HKMetricPrefix)prefix;
+ (NSEnergyFormatterUnit)energyFormatterUnitFromUnit:(HKUnit *)unit;
+ (NSLengthFormatterUnit)lengthFormatterUnitFromUnit:(HKUnit *)unit;
+ (NSMassFormatterUnit)massFormatterUnitFromUnit:(HKUnit *)unit;
+ (id)_changeInUnit:(id)unit;
+ (id)_countPerMinuteUnit;
+ (id)_countPerSecondUnit;
+ (id)_distanceUnitForLocale:(id)locale;
+ (id)_foodEnergyUnitForLocale:(id)locale;
+ (id)_foundationBaseUnits;
+ (id)_heightUnitForLocale:(id)locale;
+ (id)_internationalUnitWithMassEquivalent:(double)equivalent;
+ (id)_internationalUnitWithMetricPrefix:(int64_t)prefix massEquivalent:(double)equivalent;
+ (id)_internationalUnitWithMetricPrefix:(int64_t)prefix volumeEquivalent:(double)equivalent;
+ (id)_internationalUnitWithVolumeEquivalent:(double)equivalent;
+ (id)_milligramsPerDeciliterUnit;
+ (id)_millimolesBloodGlucosePerLiterUnit;
+ (id)_nullUnit;
+ (id)_personMassUnitForLocale:(id)locale;
+ (id)_temperatureUnitForLocale:(id)locale;
+ (id)_unitForStringPrewarmCache;
+ (id)equivalentsUnitWithMolarMass:(double)mass valence:(int64_t)valence;
+ (void)_prewarmUnitForStringCache;
- (BOOL)_isCompatibleWithDimension:(id)dimension;
- (BOOL)_isCompatibleWithUnit:(id)unit;
- (BOOL)_isMetricDistance;
- (BOOL)isEqual:(id)equal;
- (BOOL)isNull;
- (HKUnit)init;
- (HKUnit)initWithCoder:(id)coder;
- (HKUnit)reciprocalUnit;
- (HKUnit)unitDividedByUnit:(HKUnit *)unit;
- (HKUnit)unitMultipliedByUnit:(HKUnit *)unit;
- (HKUnit)unitRaisedToPower:(NSInteger)power;
- (NSString)unitString;
- (_HKDimension)dimension;
- (_HKFactorization)_baseUnits;
- (double)_convertFromBaseUnit:(double)unit;
- (double)_convertToBaseUnit:(double)unit;
- (double)_valueByConvertingValue:(double)value toUnit:(id)unit;
- (id)_baseUnitReduction;
- (id)_baseUnitReductionAndProportionalSize:(double *)size withCycleSet:(id)set;
- (id)_computeBaseUnitReductionAndProportionalSize:(double *)size withCycleSet:(id)set;
- (id)_customizedFoundationUnit;
- (id)_dimensionReduction;
- (id)_foundationUnit;
- (id)_init;
- (unint64_t)hash;
- (void)_reduceIfNecessaryWithCycleSet:(id)set;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKUnit

- (id)_dimensionReduction
{
  dimensionReduction = self->_dimensionReduction;
  if (!dimensionReduction)
  {
    [(HKUnit *)self _reduceIfNecessaryWithCycleSet:0];
    dimensionReduction = self->_dimensionReduction;
  }

  return dimensionReduction;
}

+ (id)_countPerMinuteUnit
{
  if (_countPerMinuteUnit_onceToken != -1)
  {
    +[HKUnit _countPerMinuteUnit];
  }

  v3 = _countPerMinuteUnit_unit;

  return v3;
}

+ (id)_countPerSecondUnit
{
  if (_countPerSecondUnit_onceToken != -1)
  {
    +[HKUnit _countPerSecondUnit];
  }

  v3 = _countPerSecondUnit_unit;

  return v3;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = HKUnit;
  result = [(HKUnit *)&v3 init];
  if (result)
  {
    *(result + 8) = 0;
  }

  return result;
}

+ (id)_nullUnit
{
  v2 = +[_HKFactorization factorization];
  v3 = [_HKCompoundUnit unitWithBaseUnits:v2];

  return v3;
}

- (id)_customizedFoundationUnit
{
  if (_customizedFoundationUnit_onceToken != -1)
  {
    [HKUnit(NSUnit) _customizedFoundationUnit];
  }

  v3 = _customizedFoundationUnit_nsUnits;
  unitString = [(HKUnit *)self unitString];
  v5 = [v3 objectForKey:unitString];

  return v5;
}

void __43__HKUnit_NSUnit___customizedFoundationUnit__block_invoke()
{
  v18[15] = *MEMORY[0x1E69E9840];
  v17[0] = @"Cal";
  v16 = [MEMORY[0x1E696B030] kilocalories];
  v18[0] = v16;
  v17[1] = @"1/ps";
  v15 = [MEMORY[0x1E696B038] terahertz];
  v18[1] = v15;
  v17[2] = @"1/ns";
  v14 = [MEMORY[0x1E696B038] gigahertz];
  v18[2] = v14;
  v17[3] = @"1/µs";
  v13 = [MEMORY[0x1E696B038] megahertz];
  v18[3] = v13;
  v17[4] = @"1/ms";
  v12 = [MEMORY[0x1E696B038] kilohertz];
  v18[4] = v12;
  v17[5] = @"1/s";
  v0 = [MEMORY[0x1E696B038] hertz];
  v18[5] = v0;
  v17[6] = @"1/ks";
  v1 = [MEMORY[0x1E696B038] millihertz];
  v18[6] = v1;
  v17[7] = @"1/Ms";
  v2 = [MEMORY[0x1E696B038] microhertz];
  v18[7] = v2;
  v17[8] = @"1/Gs";
  v3 = [MEMORY[0x1E696B038] nanohertz];
  v18[8] = v3;
  v17[9] = @"µW";
  v4 = [MEMORY[0x1E696B068] microwatts];
  v18[9] = v4;
  v17[10] = @"µg";
  v5 = [MEMORY[0x1E696B060] micrograms];
  v18[10] = v5;
  v17[11] = @"µm";
  v6 = [MEMORY[0x1E696B058] micrometers];
  v18[11] = v6;
  v17[12] = @"dm^3";
  v7 = [MEMORY[0x1E696B088] cubicDecimeters];
  v18[12] = v7;
  v17[13] = @"mm^3";
  v8 = [MEMORY[0x1E696B088] cubicMillimeters];
  v18[13] = v8;
  v17[14] = @"mi^3";
  v9 = [MEMORY[0x1E696B088] cubicMiles];
  v18[14] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:15];
  v11 = _customizedFoundationUnit_nsUnits;
  _customizedFoundationUnit_nsUnits = v10;
}

- (id)_foundationUnit
{
  _customizedFoundationUnit = [(HKUnit *)self _customizedFoundationUnit];
  v4 = _customizedFoundationUnit;
  if (_customizedFoundationUnit)
  {
    v5 = _customizedFoundationUnit;
  }

  else
  {
    v6 = hk_unitSpaceMappingForHKUnit(self);
    v5 = hk_NSUnitForMapping(v6);
  }

  v7 = v5;

  return v7;
}

- (HKUnit)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKUnit)unitMultipliedByUnit:(HKUnit *)unit
{
  v4 = unit;
  _baseUnits = [(HKUnit *)self _baseUnits];
  _baseUnits2 = [(HKUnit *)v4 _baseUnits];

  v7 = [_baseUnits factorizationByMultiplying:_baseUnits2];

  v8 = [_HKCompoundUnit unitWithBaseUnits:v7];

  return v8;
}

- (HKUnit)unitDividedByUnit:(HKUnit *)unit
{
  v4 = unit;
  _baseUnits = [(HKUnit *)self _baseUnits];
  _baseUnits2 = [(HKUnit *)v4 _baseUnits];

  reciprocal = [_baseUnits2 reciprocal];
  v8 = [_baseUnits factorizationByMultiplying:reciprocal];

  v9 = [_HKCompoundUnit unitWithBaseUnits:v8];

  return v9;
}

- (HKUnit)unitRaisedToPower:(NSInteger)power
{
  _baseUnits = [(HKUnit *)self _baseUnits];
  v5 = [_baseUnits factorizationByRaisingToExponent:power];

  v6 = [_HKCompoundUnit unitWithBaseUnits:v5];

  return v6;
}

- (HKUnit)reciprocalUnit
{
  _baseUnits = [(HKUnit *)self _baseUnits];
  reciprocal = [_baseUnits reciprocal];

  v4 = [_HKCompoundUnit unitWithBaseUnits:reciprocal];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unitString = [(HKUnit *)self unitString];
      unitString2 = [(HKUnit *)equalCopy unitString];
      v7 = [unitString isEqualToString:unitString2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  unitString = [(HKUnit *)self unitString];
  v3 = [unitString hash];

  return v3;
}

+ (HKUnit)gramUnitWithMetricPrefix:(HKMetricPrefix)prefix
{
  if (prefix)
  {
    v3 = [self _prefixStringForMetricPrefix:?];
    v4 = +[(HKUnit *)HKBaseUnit];
    gramUnit = [HKBaseUnit _uniquedUnitWithPrefix:v3 rootUnit:v4];
  }

  else
  {
    gramUnit = [self gramUnit];
  }

  return gramUnit;
}

+ (HKUnit)moleUnitWithMetricPrefix:(HKMetricPrefix)prefix molarMass:(double)gramsPerMole
{
  if (prefix)
  {
    v5 = [self _prefixStringForMetricPrefix:?];
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:gramsPerMole];
    v7 = +[(HKUnit *)HKBaseUnit];
    v8 = [HKBaseUnit _uniquedUnitWithPrefix:v5 conversionConstant:v6 rootUnit:v7];
  }

  else
  {
    v8 = [self moleUnitWithMolarMass:gramsPerMole];
  }

  return v8;
}

+ (HKUnit)moleUnitWithMolarMass:(double)gramsPerMole
{
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:gramsPerMole];
  v4 = +[(HKUnit *)HKBaseUnit];
  v5 = [HKBaseUnit _uniquedUnitWithPrefix:0 conversionConstant:v3 rootUnit:v4];

  return v5;
}

+ (HKUnit)meterUnitWithMetricPrefix:(HKMetricPrefix)prefix
{
  if (prefix)
  {
    v3 = [self _prefixStringForMetricPrefix:?];
    v4 = +[(HKUnit *)HKBaseUnit];
    meterUnit = [HKBaseUnit _uniquedUnitWithPrefix:v3 rootUnit:v4];
  }

  else
  {
    meterUnit = [self meterUnit];
  }

  return meterUnit;
}

+ (HKUnit)literUnitWithMetricPrefix:(HKMetricPrefix)prefix
{
  if (prefix)
  {
    v3 = [self _prefixStringForMetricPrefix:?];
    v4 = +[(HKUnit *)HKBaseUnit];
    literUnit = [HKBaseUnit _uniquedUnitWithPrefix:v3 rootUnit:v4];
  }

  else
  {
    literUnit = [self literUnit];
  }

  return literUnit;
}

+ (HKUnit)pascalUnitWithMetricPrefix:(HKMetricPrefix)prefix
{
  if (prefix)
  {
    v3 = [self _prefixStringForMetricPrefix:?];
    v4 = +[(HKUnit *)HKBaseUnit];
    pascalUnit = [HKBaseUnit _uniquedUnitWithPrefix:v3 rootUnit:v4];
  }

  else
  {
    pascalUnit = [self pascalUnit];
  }

  return pascalUnit;
}

+ (HKUnit)secondUnitWithMetricPrefix:(HKMetricPrefix)prefix
{
  if (prefix)
  {
    v3 = [self _prefixStringForMetricPrefix:?];
    v4 = +[(HKUnit *)HKBaseUnit];
    secondUnit = [HKBaseUnit _uniquedUnitWithPrefix:v3 rootUnit:v4];
  }

  else
  {
    secondUnit = [self secondUnit];
  }

  return secondUnit;
}

+ (HKUnit)jouleUnitWithMetricPrefix:(HKMetricPrefix)prefix
{
  if (prefix)
  {
    v3 = [self _prefixStringForMetricPrefix:?];
    v4 = +[(HKUnit *)HKBaseUnit];
    jouleUnit = [HKBaseUnit _uniquedUnitWithPrefix:v3 rootUnit:v4];
  }

  else
  {
    jouleUnit = [self jouleUnit];
  }

  return jouleUnit;
}

+ (HKUnit)siemenUnitWithMetricPrefix:(HKMetricPrefix)prefix
{
  if (prefix)
  {
    v3 = [self _prefixStringForMetricPrefix:?];
    v4 = +[(HKUnit *)HKBaseUnit];
    siemenUnit = [HKBaseUnit _uniquedUnitWithPrefix:v3 rootUnit:v4];
  }

  else
  {
    siemenUnit = [self siemenUnit];
  }

  return siemenUnit;
}

+ (HKUnit)voltUnitWithMetricPrefix:(HKMetricPrefix)prefix
{
  if (prefix)
  {
    v4 = [self _prefixStringForMetricPrefix:?];
    _voltBaseUnit = [self _voltBaseUnit];
    voltUnit = [HKBaseUnit _uniquedUnitWithPrefix:v4 rootUnit:_voltBaseUnit];
  }

  else
  {
    voltUnit = [self voltUnit];
  }

  return voltUnit;
}

+ (HKUnit)hertzUnitWithMetricPrefix:(HKMetricPrefix)prefix
{
  if (prefix)
  {
    v3 = [self _prefixStringForMetricPrefix:?];
    v4 = +[(HKUnit *)HKBaseUnit];
    hertzUnit = [HKBaseUnit _uniquedUnitWithPrefix:v3 rootUnit:v4];
  }

  else
  {
    hertzUnit = [self hertzUnit];
  }

  return hertzUnit;
}

+ (HKUnit)wattUnitWithMetricPrefix:(HKMetricPrefix)prefix
{
  if (prefix)
  {
    v3 = [self _prefixStringForMetricPrefix:?];
    v4 = +[(HKUnit *)HKBaseUnit];
    wattUnit = [HKBaseUnit _uniquedUnitWithPrefix:v3 rootUnit:v4];
  }

  else
  {
    wattUnit = [self wattUnit];
  }

  return wattUnit;
}

+ (HKUnit)radianAngleUnitWithMetricPrefix:(HKMetricPrefix)prefix
{
  if (prefix)
  {
    v3 = [self _prefixStringForMetricPrefix:?];
    v4 = +[(HKUnit *)HKBaseUnit];
    radianAngleUnit = [HKBaseUnit _uniquedUnitWithPrefix:v3 rootUnit:v4];
  }

  else
  {
    radianAngleUnit = [self radianAngleUnit];
  }

  return radianAngleUnit;
}

+ (HKUnit)luxUnitWithMetricPrefix:(HKMetricPrefix)prefix
{
  if (prefix)
  {
    v3 = [self _prefixStringForMetricPrefix:?];
    v4 = +[(HKUnit *)HKBaseUnit];
    luxUnit = [HKBaseUnit _uniquedUnitWithPrefix:v3 rootUnit:v4];
  }

  else
  {
    luxUnit = [self luxUnit];
  }

  return luxUnit;
}

+ (id)_internationalUnitWithMetricPrefix:(int64_t)prefix massEquivalent:(double)equivalent
{
  v5 = [self _prefixStringForMetricPrefix:prefix];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:equivalent];
  v7 = +[(HKUnit *)HKBaseUnit];
  v8 = [HKBaseUnit _uniquedUnitWithPrefix:v5 conversionConstant:v6 rootUnit:v7];

  return v8;
}

+ (id)_internationalUnitWithMassEquivalent:(double)equivalent
{
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:equivalent];
  v4 = +[(HKUnit *)HKBaseUnit];
  v5 = [HKBaseUnit _uniquedUnitWithPrefix:0 conversionConstant:v3 rootUnit:v4];

  return v5;
}

+ (id)_internationalUnitWithMetricPrefix:(int64_t)prefix volumeEquivalent:(double)equivalent
{
  v5 = [self _prefixStringForMetricPrefix:prefix];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:equivalent];
  v7 = +[(HKUnit *)HKBaseUnit];
  v8 = [HKBaseUnit _uniquedUnitWithPrefix:v5 conversionConstant:v6 rootUnit:v7];

  return v8;
}

+ (id)_internationalUnitWithVolumeEquivalent:(double)equivalent
{
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:equivalent];
  v4 = +[(HKUnit *)HKBaseUnit];
  v5 = [HKBaseUnit _uniquedUnitWithPrefix:0 conversionConstant:v3 rootUnit:v4];

  return v5;
}

+ (id)equivalentsUnitWithMolarMass:(double)mass valence:(int64_t)valence
{
  valence = [MEMORY[0x1E696AD98] numberWithDouble:mass / valence];
  v5 = +[(HKUnit *)HKBaseUnit];
  v6 = [HKBaseUnit _uniquedUnitWithPrefix:0 conversionConstant:valence rootUnit:v5];

  return v6;
}

void __29__HKUnit__countPerSecondUnit__block_invoke()
{
  v3 = +[HKUnit countUnit];
  v0 = +[HKUnit secondUnit];
  v1 = [v3 unitDividedByUnit:v0];
  v2 = _countPerSecondUnit_unit;
  _countPerSecondUnit_unit = v1;
}

void __29__HKUnit__countPerMinuteUnit__block_invoke()
{
  v3 = +[HKUnit countUnit];
  v0 = +[HKUnit minuteUnit];
  v1 = [v3 unitDividedByUnit:v0];
  v2 = _countPerMinuteUnit_unit;
  _countPerMinuteUnit_unit = v1;
}

+ (id)_milligramsPerDeciliterUnit
{
  if (_milligramsPerDeciliterUnit_onceToken != -1)
  {
    +[HKUnit _milligramsPerDeciliterUnit];
  }

  v3 = _milligramsPerDeciliterUnit_unit;

  return v3;
}

void __37__HKUnit__milligramsPerDeciliterUnit__block_invoke()
{
  v3 = [HKUnit gramUnitWithMetricPrefix:4];
  v0 = [HKUnit literUnitWithMetricPrefix:6];
  v1 = [v3 unitDividedByUnit:v0];
  v2 = _milligramsPerDeciliterUnit_unit;
  _milligramsPerDeciliterUnit_unit = v1;
}

+ (id)_millimolesBloodGlucosePerLiterUnit
{
  if (_millimolesBloodGlucosePerLiterUnit_onceToken != -1)
  {
    +[HKUnit _millimolesBloodGlucosePerLiterUnit];
  }

  v3 = _millimolesBloodGlucosePerLiterUnit_unit;

  return v3;
}

void __45__HKUnit__millimolesBloodGlucosePerLiterUnit__block_invoke()
{
  v3 = [HKUnit moleUnitWithMetricPrefix:4 molarMass:180.15588];
  v0 = +[HKUnit literUnit];
  v1 = [v3 unitDividedByUnit:v0];
  v2 = _millimolesBloodGlucosePerLiterUnit_unit;
  _millimolesBloodGlucosePerLiterUnit_unit = v1;
}

+ (id)_changeInUnit:(id)unit
{
  unitCopy = unit;
  degreeCelsiusUnit = [self degreeCelsiusUnit];
  v6 = [unitCopy isEqual:degreeCelsiusUnit];

  if (v6)
  {
    _changeInDegreeCelsiusUnit = [self _changeInDegreeCelsiusUnit];
  }

  else
  {
    degreeFahrenheitUnit = [self degreeFahrenheitUnit];
    v9 = [unitCopy isEqual:degreeFahrenheitUnit];

    if (v9)
    {
      [self _changeInDegreeFahrenheitUnit];
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"No unit is defined for change in %@", unitCopy}];
      +[HKUnit _nullUnit];
    }
    _changeInDegreeCelsiusUnit = ;
  }

  v10 = _changeInDegreeCelsiusUnit;

  return v10;
}

+ (void)_prewarmUnitForStringCache
{
  os_unfair_lock_lock(&unitForStringCacheLock);
  v3 = unitForStringCache;
  if (!unitForStringCache)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = unitForStringCache;
    unitForStringCache = v4;

    v3 = unitForStringCache;
  }

  _unitForStringPrewarmCache = [self _unitForStringPrewarmCache];
  [v3 addEntriesFromDictionary:_unitForStringPrewarmCache];

  os_unfair_lock_unlock(&unitForStringCacheLock);
}

+ (id)_unitForStringPrewarmCache
{
  v71[43] = *MEMORY[0x1E69E9840];
  v70[0] = @"%";
  v69 = +[HKUnit percentUnit];
  v71[0] = v69;
  v70[1] = @"Cal";
  v68 = +[HKUnit largeCalorieUnit];
  v71[1] = v68;
  v70[2] = @"IU";
  v67 = +[HKUnit internationalUnit];
  v71[2] = v67;
  v70[3] = @"L";
  v66 = +[HKUnit literUnit];
  v71[3] = v66;
  v70[4] = @"L/min";
  v65 = +[HKUnit literUnit];
  v64 = +[HKUnit minuteUnit];
  v63 = [v65 unitDividedByUnit:v64];
  v71[4] = v63;
  v70[5] = @"cal";
  v62 = +[HKUnit smallCalorieUnit];
  v71[5] = v62;
  v70[6] = @"cm";
  v61 = [HKUnit meterUnitWithMetricPrefix:5];
  v71[6] = v61;
  v70[7] = @"count";
  v60 = +[HKUnit countUnit];
  v71[7] = v60;
  v70[8] = @"count/min";
  v59 = +[HKUnit countUnit];
  v58 = +[HKUnit minuteUnit];
  v57 = [v59 unitDividedByUnit:v58];
  v71[8] = v57;
  v70[9] = @"cup_imp";
  v56 = +[HKUnit cupImperialUnit];
  v71[9] = v56;
  v70[10] = @"cup_us";
  v55 = +[HKUnit cupUSUnit];
  v71[10] = v55;
  v70[11] = @"dBASPL";
  v54 = +[HKUnit decibelAWeightedSoundPressureLevelUnit];
  v71[11] = v54;
  v70[12] = @"degF";
  v53 = +[HKUnit degreeFahrenheitUnit];
  v71[12] = v53;
  v70[13] = @"fl_oz_imp";
  v52 = +[HKUnit fluidOunceImperialUnit];
  v71[13] = v52;
  v70[14] = @"fl_oz_us";
  v51 = +[HKUnit fluidOunceUSUnit];
  v71[14] = v51;
  v70[15] = @"ft";
  v50 = +[HKUnit footUnit];
  v71[15] = v50;
  v70[16] = @"ft/s";
  v49 = +[HKUnit footUnit];
  v48 = +[HKUnit secondUnit];
  v47 = [v49 unitDividedByUnit:v48];
  v71[16] = v47;
  v70[17] = @"g";
  v46 = +[HKUnit gramUnit];
  v71[17] = v46;
  v70[18] = @"hr";
  v45 = +[HKUnit hourUnit];
  v71[18] = v45;
  v70[19] = @"in";
  v44 = +[HKUnit inchUnit];
  v71[19] = v44;
  v70[20] = @"kcal";
  v43 = +[HKUnit kilocalorieUnit];
  v71[20] = v43;
  v70[21] = @"kg";
  v42 = [HKUnit gramUnitWithMetricPrefix:9];
  v71[21] = v42;
  v70[22] = @"km/hr";
  v41 = [HKUnit meterUnitWithMetricPrefix:9];
  v40 = +[HKUnit hourUnit];
  v39 = [v41 unitDividedByUnit:v40];
  v71[22] = v39;
  v70[23] = @"lb";
  v38 = +[HKUnit poundUnit];
  v71[23] = v38;
  v70[24] = @"m";
  v37 = +[HKUnit meterUnit];
  v71[24] = v37;
  v70[25] = @"m/s";
  v36 = +[HKUnit meterUnit];
  v35 = +[HKUnit secondUnit];
  v34 = [v36 unitDividedByUnit:v35];
  v71[25] = v34;
  v70[26] = @"mL";
  v33 = [HKUnit literUnitWithMetricPrefix:4];
  v71[26] = v33;
  v70[27] = @"mL/min·kg";
  v31 = [HKUnit literUnitWithMetricPrefix:4];
  v32 = [HKUnit gramUnitWithMetricPrefix:9];
  v30 = +[HKUnit minuteUnit];
  v29 = [v32 unitMultipliedByUnit:v30];
  v28 = [v31 unitDividedByUnit:v29];
  v71[27] = v28;
  v70[28] = @"m^3";
  v27 = +[HKUnit meterUnit];
  v26 = [v27 unitRaisedToPower:3];
  v71[28] = v26;
  v70[29] = @"mcS";
  v25 = [HKUnit siemenUnitWithMetricPrefix:3];
  v71[29] = v25;
  v70[30] = @"mcg";
  v24 = [HKUnit gramUnitWithMetricPrefix:3];
  v71[30] = v24;
  v70[31] = @"mg";
  v23 = [HKUnit gramUnitWithMetricPrefix:4];
  v71[31] = v23;
  v70[32] = @"mg/dL";
  v22 = [HKUnit gramUnitWithMetricPrefix:4];
  v21 = [HKUnit literUnitWithMetricPrefix:6];
  v20 = [v22 unitDividedByUnit:v21];
  v71[32] = v20;
  v70[33] = @"mi";
  v19 = +[HKUnit mileUnit];
  v71[33] = v19;
  v70[34] = @"mi/hr";
  v18 = +[HKUnit mileUnit];
  v17 = +[HKUnit hourUnit];
  v16 = [v18 unitDividedByUnit:v17];
  v71[34] = v16;
  v70[35] = @"min";
  v15 = +[HKUnit minuteUnit];
  v71[35] = v15;
  v70[36] = @"ml/(kg*min)";
  v14 = [HKUnit literUnitWithMetricPrefix:4];
  v2 = [HKUnit gramUnitWithMetricPrefix:9];
  v3 = +[HKUnit minuteUnit];
  v4 = [v2 unitMultipliedByUnit:v3];
  v5 = [v14 unitDividedByUnit:v4];
  v71[36] = v5;
  v70[37] = @"mmHg";
  v6 = +[HKUnit millimeterOfMercuryUnit];
  v71[37] = v6;
  v70[38] = @"ms";
  v7 = [HKUnit secondUnitWithMetricPrefix:4];
  v71[38] = v7;
  v70[39] = @"pt_imp";
  v8 = +[HKUnit pintImperialUnit];
  v71[39] = v8;
  v70[40] = @"pt_us";
  v9 = +[HKUnit pintUSUnit];
  v71[40] = v9;
  v70[41] = @"s";
  v10 = +[HKUnit secondUnit];
  v71[41] = v10;
  v70[42] = @"yd";
  v11 = +[HKUnit yardUnit];
  v71[42] = v11;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:v70 count:43];

  return v13;
}

+ (id)_foundationBaseUnits
{
  if (_foundationBaseUnits_onceToken != -1)
  {
    +[HKUnit _foundationBaseUnits];
  }

  v3 = _foundationBaseUnits_units;

  return v3;
}

void __30__HKUnit__foundationBaseUnits__block_invoke()
{
  v16[14] = *MEMORY[0x1E69E9840];
  v15 = [HKUnit unitFromString:@"m/s^2"];
  v16[0] = v15;
  v14 = [HKUnit unitFromString:@"m^2"];
  v16[1] = v14;
  v13 = [HKUnit unitFromString:@"g/L"];
  v16[2] = v13;
  v12 = [HKUnit unitFromString:@"s"];
  v16[3] = v12;
  v0 = [HKUnit unitFromString:@"1/S"];
  v16[4] = v0;
  v1 = [HKUnit unitFromString:@"J"];
  v16[5] = v1;
  v2 = [HKUnit unitFromString:@"1/s"];
  v16[6] = v2;
  v3 = [HKUnit unitFromString:@"m"];
  v16[7] = v3;
  v4 = [HKUnit unitFromString:@"kg"];
  v16[8] = v4;
  v5 = [HKUnit unitFromString:@"kg*m^2*s^-3"];
  v16[9] = v5;
  v6 = [HKUnit unitFromString:@"Pa"];
  v16[10] = v6;
  v7 = [HKUnit unitFromString:@"m/s^2"];
  v16[11] = v7;
  v8 = [HKUnit unitFromString:@"K"];
  v16[12] = v8;
  v9 = [HKUnit unitFromString:@"L"];
  v16[13] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:14];
  v11 = _foundationBaseUnits_units;
  _foundationBaseUnits_units = v10;
}

+ (HKUnit)unitFromString:(NSString *)string
{
  v3 = string;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &stru_1F05FF230;
  }

  os_unfair_lock_lock(&unitForStringCacheLock);
  v5 = [unitForStringCache objectForKeyedSubscript:v4];
  if (!v5)
  {
    v6 = _HKBaseUnitGrammar(0);
    v7 = [_HKFactorization factorizationFromString:v4 factorGrammar:v6];

    if ([v7 factorCount] == 1 && (objc_msgSend(v7, "anyFactor"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "exponentForFactor:", v8), v8, v9 == 1))
    {
      anyFactor = [v7 anyFactor];
    }

    else
    {
      anyFactor = [_HKCompoundUnit unitWithBaseUnits:v7];
    }

    v5 = anyFactor;
    if (anyFactor)
    {
      v11 = unitForStringCache;
      if (!unitForStringCache)
      {
        v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v13 = unitForStringCache;
        unitForStringCache = v12;

        v11 = unitForStringCache;
      }

      [v11 setObject:v5 forKeyedSubscript:v4];
    }
  }

  os_unfair_lock_unlock(&unitForStringCacheLock);

  return v5;
}

+ (HKUnit)unitFromMassFormatterUnit:(NSMassFormatterUnit)massFormatterUnit
{
  gramUnit = 0;
  if (massFormatterUnit <= 1536)
  {
    if (massFormatterUnit == NSMassFormatterUnitGram)
    {
      gramUnit = [self gramUnit];
    }

    else if (massFormatterUnit == NSMassFormatterUnitKilogram)
    {
      gramUnit = [self gramUnitWithMetricPrefix:9];
    }
  }

  else
  {
    switch(massFormatterUnit)
    {
      case NSMassFormatterUnitOunce:
        gramUnit = [self ounceUnit];
        break;
      case NSMassFormatterUnitPound:
        gramUnit = [self poundUnit];
        break;
      case NSMassFormatterUnitStone:
        gramUnit = [self stoneUnit];
        break;
    }
  }

  return gramUnit;
}

+ (NSMassFormatterUnit)massFormatterUnitFromUnit:(HKUnit *)unit
{
  v4 = unit;
  gramUnit = [self gramUnit];
  v6 = [(HKUnit *)v4 isEqual:gramUnit];

  if (v6)
  {
    v7 = NSMassFormatterUnitGram;
  }

  else
  {
    v8 = [self gramUnitWithMetricPrefix:9];
    v9 = [(HKUnit *)v4 isEqual:v8];

    if (v9)
    {
      v7 = NSMassFormatterUnitKilogram;
    }

    else
    {
      ounceUnit = [self ounceUnit];
      v11 = [(HKUnit *)v4 isEqual:ounceUnit];

      if (v11)
      {
        v7 = NSMassFormatterUnitOunce;
      }

      else
      {
        poundUnit = [self poundUnit];
        v13 = [(HKUnit *)v4 isEqual:poundUnit];

        if (v13)
        {
          v7 = NSMassFormatterUnitPound;
        }

        else
        {
          stoneUnit = [self stoneUnit];
          v15 = [(HKUnit *)v4 isEqual:stoneUnit];

          if (v15)
          {
            v7 = NSMassFormatterUnitStone;
          }

          else
          {
            [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"No mapping for unit %@ to NSMassFormatterUnit", v4}];
            v7 = 0;
          }
        }
      }
    }
  }

  return v7;
}

+ (HKUnit)unitFromLengthFormatterUnit:(NSLengthFormatterUnit)lengthFormatterUnit
{
  yardUnit = 0;
  if (lengthFormatterUnit > 1280)
  {
    if (lengthFormatterUnit > NSLengthFormatterUnitFoot)
    {
      if (lengthFormatterUnit == NSLengthFormatterUnitYard)
      {
        yardUnit = [self yardUnit];
      }

      else if (lengthFormatterUnit == NSLengthFormatterUnitMile)
      {
        yardUnit = [self mileUnit];
      }
    }

    else
    {
      if (lengthFormatterUnit == NSLengthFormatterUnitInch)
      {
        [self inchUnit];
      }

      else
      {
        [self footUnit];
      }
      yardUnit = ;
    }
  }

  else
  {
    if (lengthFormatterUnit <= 10)
    {
      if (lengthFormatterUnit == NSLengthFormatterUnitMillimeter)
      {
        selfCopy3 = self;
        v6 = 4;
      }

      else
      {
        if (lengthFormatterUnit != NSLengthFormatterUnitCentimeter)
        {
          goto LABEL_21;
        }

        selfCopy3 = self;
        v6 = 5;
      }

LABEL_17:
      yardUnit = [selfCopy3 meterUnitWithMetricPrefix:v6];
      goto LABEL_21;
    }

    if (lengthFormatterUnit != NSLengthFormatterUnitMeter)
    {
      if (lengthFormatterUnit != NSLengthFormatterUnitKilometer)
      {
        goto LABEL_21;
      }

      selfCopy3 = self;
      v6 = 9;
      goto LABEL_17;
    }

    yardUnit = [self meterUnit];
  }

LABEL_21:

  return yardUnit;
}

+ (NSLengthFormatterUnit)lengthFormatterUnitFromUnit:(HKUnit *)unit
{
  v4 = unit;
  v5 = [self meterUnitWithMetricPrefix:5];
  v6 = [(HKUnit *)v4 isEqual:v5];

  if (v6)
  {
    v7 = NSLengthFormatterUnitCentimeter;
  }

  else
  {
    footUnit = [self footUnit];
    v9 = [(HKUnit *)v4 isEqual:footUnit];

    if (v9)
    {
      v7 = NSLengthFormatterUnitFoot;
    }

    else
    {
      inchUnit = [self inchUnit];
      v11 = [(HKUnit *)v4 isEqual:inchUnit];

      if (v11)
      {
        v7 = NSLengthFormatterUnitInch;
      }

      else
      {
        v12 = [self meterUnitWithMetricPrefix:9];
        v13 = [(HKUnit *)v4 isEqual:v12];

        if (v13)
        {
          v7 = NSLengthFormatterUnitKilometer;
        }

        else
        {
          meterUnit = [self meterUnit];
          v15 = [(HKUnit *)v4 isEqual:meterUnit];

          if (v15)
          {
            v7 = NSLengthFormatterUnitMeter;
          }

          else
          {
            mileUnit = [self mileUnit];
            v17 = [(HKUnit *)v4 isEqual:mileUnit];

            if (v17)
            {
              v7 = NSLengthFormatterUnitMile;
            }

            else
            {
              v18 = [self meterUnitWithMetricPrefix:4];
              v19 = [(HKUnit *)v4 isEqual:v18];

              if (v19)
              {
                v7 = NSLengthFormatterUnitMillimeter;
              }

              else
              {
                yardUnit = [self yardUnit];
                v21 = [(HKUnit *)v4 isEqual:yardUnit];

                if (v21)
                {
                  v7 = NSLengthFormatterUnitYard;
                }

                else
                {
                  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"No mapping for unit %@ to NSLengthFormatterUnit", v4}];
                  v7 = 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v7;
}

+ (HKUnit)unitFromEnergyFormatterUnit:(NSEnergyFormatterUnit)energyFormatterUnit
{
  kilocalorieUnit = 0;
  if (energyFormatterUnit > 1792)
  {
    if (energyFormatterUnit == NSEnergyFormatterUnitKilocalorie)
    {
      kilocalorieUnit = [self kilocalorieUnit];
    }

    else if (energyFormatterUnit == NSEnergyFormatterUnitCalorie)
    {
      kilocalorieUnit = [self smallCalorieUnit];
    }
  }

  else if (energyFormatterUnit == NSEnergyFormatterUnitJoule)
  {
    kilocalorieUnit = [self jouleUnit];
  }

  else if (energyFormatterUnit == NSEnergyFormatterUnitKilojoule)
  {
    kilocalorieUnit = [self kilojoulesUnit];
  }

  return kilocalorieUnit;
}

+ (NSEnergyFormatterUnit)energyFormatterUnitFromUnit:(HKUnit *)unit
{
  v4 = unit;
  smallCalorieUnit = [self smallCalorieUnit];
  v6 = [(HKUnit *)v4 isEqual:smallCalorieUnit];

  if (v6)
  {
    v7 = NSEnergyFormatterUnitCalorie;
    goto LABEL_9;
  }

  jouleUnit = [self jouleUnit];
  v9 = [(HKUnit *)v4 isEqual:jouleUnit];

  if (v9)
  {
    v7 = NSEnergyFormatterUnitJoule;
    goto LABEL_9;
  }

  kilocalorieUnit = [self kilocalorieUnit];
  if ([(HKUnit *)v4 isEqual:kilocalorieUnit])
  {

LABEL_8:
    v7 = NSEnergyFormatterUnitKilocalorie;
    goto LABEL_9;
  }

  largeCalorieUnit = [self largeCalorieUnit];
  v12 = [(HKUnit *)v4 isEqual:largeCalorieUnit];

  if (v12)
  {
    goto LABEL_8;
  }

  kilojoulesUnit = [self kilojoulesUnit];
  v15 = [(HKUnit *)v4 isEqual:kilojoulesUnit];

  if (v15)
  {
    v7 = NSEnergyFormatterUnitKilojoule;
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"No mapping for unit %@ to NSEnergyFormatterUnit", v4}];
    v7 = 0;
  }

LABEL_9:

  return v7;
}

- (BOOL)isNull
{
  v3 = +[HKUnit _nullUnit];
  LOBYTE(self) = [(HKUnit *)self isEqual:v3];

  return self;
}

- (BOOL)_isMetricDistance
{
  v3 = [HKUnit meterUnitWithMetricPrefix:9];
  if ([(HKUnit *)self isEqual:v3])
  {
    v4 = 1;
  }

  else
  {
    v5 = [HKUnit meterUnitWithMetricPrefix:5];
    if ([(HKUnit *)self isEqual:v5])
    {
      v4 = 1;
    }

    else
    {
      v6 = +[HKUnit meterUnit];
      v4 = [(HKUnit *)self isEqual:v6];
    }
  }

  return v4;
}

+ (BOOL)_isValidUnitString:(id)string
{
  stringCopy = string;
  v4 = [objc_opt_class() unitFromString:stringCopy];

  return 1;
}

- (double)_valueByConvertingValue:(double)value toUnit:(id)unit
{
  unitCopy = unit;
  if (![(HKUnit *)self _isCompatibleWithUnit:unitCopy])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Attempt to convert incompatible units: %@, %@", self, unitCopy}];
  }

  if (![(HKUnit *)self isEqual:unitCopy])
  {
    [(HKUnit *)self _convertToBaseUnit:value];
    [unitCopy _convertFromBaseUnit:?];
    value = v7;
  }

  return value;
}

- (BOOL)_isCompatibleWithUnit:(id)unit
{
  unitCopy = unit;
  _dimensionReduction = [(HKUnit *)self _dimensionReduction];
  _dimensionReduction2 = [unitCopy _dimensionReduction];

  LOBYTE(unitCopy) = [_dimensionReduction isEqual:_dimensionReduction2];
  return unitCopy;
}

- (BOOL)_isCompatibleWithDimension:(id)dimension
{
  dimensionCopy = dimension;
  _dimensionReduction = [(HKUnit *)self _dimensionReduction];
  reduction = [dimensionCopy reduction];

  LOBYTE(dimensionCopy) = [_dimensionReduction isEqual:reduction];
  return dimensionCopy;
}

- (void)_reduceIfNecessaryWithCycleSet:(id)set
{
  setCopy = set;
  os_unfair_lock_lock(&self->_dimensionReductionLock);
  if (!self->_dimensionReduction)
  {
    if (setCopy)
    {
      v5 = setCopy;
    }

    else
    {
      v5 = [MEMORY[0x1E695DFA8] set];
    }

    v6 = v5;
    v7 = [(HKUnit *)self _computeBaseUnitReductionAndProportionalSize:&self->_reducedProportionalSize withCycleSet:v5];
    baseUnitReduction = self->_baseUnitReduction;
    self->_baseUnitReduction = v7;

    v9 = +[(_HKFactorization *)_HKMutableFactorization];
    v10 = self->_baseUnitReduction;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __41__HKUnit__reduceIfNecessaryWithCycleSet___block_invoke;
    v14[3] = &unk_1E737FBD8;
    v11 = v9;
    v15 = v11;
    [(_HKFactorization *)v10 enumerateFactorsWithHandler:v14];
    dimensionReduction = self->_dimensionReduction;
    self->_dimensionReduction = v11;
    v13 = v11;
  }

  os_unfair_lock_unlock(&self->_dimensionReductionLock);
}

void __41__HKUnit__reduceIfNecessaryWithCycleSet___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [a2 dimension];
  [v4 multiplyByFactor:v5 exponent:a3];
}

- (id)_baseUnitReductionAndProportionalSize:(double *)size withCycleSet:(id)set
{
  [(HKUnit *)self _reduceIfNecessaryWithCycleSet:set];
  if (size)
  {
    *size = self->_reducedProportionalSize;
  }

  baseUnitReduction = self->_baseUnitReduction;

  return baseUnitReduction;
}

- (id)_baseUnitReduction
{
  [(HKUnit *)self _reduceIfNecessaryWithCycleSet:0];
  baseUnitReduction = self->_baseUnitReduction;

  return baseUnitReduction;
}

- (double)_convertToBaseUnit:(double)unit
{
  [(HKUnit *)self _reducedProportionalSize];
  v6 = v5;
  [(HKUnit *)self scaleOffset];
  return v7 + unit * v6;
}

- (double)_convertFromBaseUnit:(double)unit
{
  [(HKUnit *)self scaleOffset];
  v6 = unit - v5;
  [(HKUnit *)self _reducedProportionalSize];
  return v6 / v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  unitString = [(HKUnit *)self unitString];
  [coderCopy encodeObject:unitString forKey:@"HKUnitStringKey"];
}

- (HKUnit)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy containsValueForKey:@"HKUnitStringKey"])
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKUnitStringKey"];
    selfCopy = [HKUnit unitFromString:v5];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = HKUnit;
    self = [(HKUnit *)&v8 init];
    selfCopy = self;
  }

  return selfCopy;
}

+ (id)_heightUnitForLocale:(id)locale
{
  v3 = [locale objectForKey:*MEMORY[0x1E695DA08]];
  bOOLValue = [v3 BOOLValue];

  if (bOOLValue)
  {
    [HKUnit meterUnitWithMetricPrefix:5];
  }

  else
  {
    +[HKUnit footUnit];
  }
  v5 = ;

  return v5;
}

+ (id)_distanceUnitForLocale:(id)locale
{
  v3 = [locale objectForKey:*MEMORY[0x1E695DA08]];
  bOOLValue = [v3 BOOLValue];

  if (bOOLValue)
  {
    [HKUnit meterUnitWithMetricPrefix:9];
  }

  else
  {
    +[HKUnit mileUnit];
  }
  v5 = ;

  return v5;
}

+ (id)_personMassUnitForLocale:(id)locale
{
  localeCopy = locale;
  localeIdentifier = [localeCopy localeIdentifier];
  v5 = [localeIdentifier isEqualToString:@"en_GB"];

  if (v5)
  {
    v6 = +[HKUnit stoneUnit];
  }

  else
  {
    v7 = [localeCopy objectForKey:*MEMORY[0x1E695DA08]];
    bOOLValue = [v7 BOOLValue];

    if (bOOLValue)
    {
      [HKUnit gramUnitWithMetricPrefix:9];
    }

    else
    {
      +[HKUnit poundUnit];
    }
    v6 = ;
  }

  v9 = v6;

  return v9;
}

+ (id)_temperatureUnitForLocale:(id)locale
{
  v3 = [locale objectForKey:*MEMORY[0x1E695DA08]];
  bOOLValue = [v3 BOOLValue];

  if (bOOLValue)
  {
    +[HKUnit degreeCelsiusUnit];
  }

  else
  {
    +[HKUnit degreeFahrenheitUnit];
  }
  v5 = ;

  return v5;
}

+ (id)_foodEnergyUnitForLocale:(id)locale
{
  v3 = [locale objectForKey:*MEMORY[0x1E695DA08]];
  bOOLValue = [v3 BOOLValue];

  if (bOOLValue)
  {
    [HKUnit jouleUnitWithMetricPrefix:9];
  }

  else
  {
    +[HKUnit kilocalorieUnit];
  }
  v5 = ;

  return v5;
}

- (NSString)unitString
{
  v2 = OUTLINED_FUNCTION_1_2(self);
  OUTLINED_FUNCTION_0_4(v2);
  return &stru_1F05FF230;
}

- (_HKDimension)dimension
{
  v2 = OUTLINED_FUNCTION_1_2(self);
  OUTLINED_FUNCTION_0_4(v2);
  return 0;
}

- (_HKFactorization)_baseUnits
{
  v2 = OUTLINED_FUNCTION_1_2(self);
  OUTLINED_FUNCTION_0_4(v2);
  return 0;
}

- (id)_computeBaseUnitReductionAndProportionalSize:(double *)size withCycleSet:(id)set
{
  v4 = OUTLINED_FUNCTION_1_2(self);
  OUTLINED_FUNCTION_0_4(v4);
  return 0;
}

@end