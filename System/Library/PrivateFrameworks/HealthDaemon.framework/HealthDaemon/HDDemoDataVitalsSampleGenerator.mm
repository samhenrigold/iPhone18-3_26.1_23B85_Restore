@interface HDDemoDataVitalsSampleGenerator
- (HDDemoDataVitalsSampleGenerator)init;
- (HDDemoDataVitalsSampleGenerator)initWithCoder:(id)coder;
- (double)_computeBodyTempInCelsiusForDemoPerson:(id)person atTime:(double)time addNoise:(BOOL)noise;
- (uint64_t)_computeBloodPressureForDemoPerson:(double)person atTime:(double)time baseBloodPressure:(double)pressure stdDev:;
- (uint64_t)_computeMaxHRForDemoPerson:(double)person atTime:;
- (void)encodeWithCoder:(id)coder;
- (void)generateObjectsForDemoPerson:(id)person fromTime:(double)time toTime:(double)toTime currentDate:(id)date objectCollection:(id)collection;
- (void)setupWithDemoDataGenerator:(id)generator;
@end

@implementation HDDemoDataVitalsSampleGenerator

- (HDDemoDataVitalsSampleGenerator)init
{
  v7.receiver = self;
  v7.super_class = HDDemoDataVitalsSampleGenerator;
  v2 = [(HDDemoDataBaseSampleGenerator *)&v7 init];
  v3 = v2;
  if (v2)
  {
    diurnalBPVariationTable = v2->_diurnalBPVariationTable;
    v2->_diurnalBPVariationTable = 0;

    diurnalTempVariationTable = v3->_diurnalTempVariationTable;
    v3->_diurnalTempVariationTable = 0;

    v3->_nextHeartRateSampleTime = 0.0;
    v3->_nextRespirationRateSampleTime = 0.0;
    v3->_lastRespirationRateGenerationTime = 0.0;
    v3->_nextBloodPressureSampleTime = 0.0;
    v3->_nextBodyTempSampleTime = 0.0;
    v3->_nextOxygenSaturationSampleTime = 0.0;
    v3->_nextPeripheralPerfusionIndexSampleTime = 0.0;
    v3->_lastPeripheralPerfusionIndexValue = 0.0;
  }

  return v3;
}

- (HDDemoDataVitalsSampleGenerator)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = HDDemoDataVitalsSampleGenerator;
  v5 = [(HDDemoDataBaseSampleGenerator *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"HDDemoDataVitalsSampleHelperNextHeartRateSampleTimeKey"];
    v5->_nextHeartRateSampleTime = v6;
    [coderCopy decodeDoubleForKey:@"HDDemoDataVitalsSampleHelperNextRespirationRateSampleTimeKey"];
    v5->_nextRespirationRateSampleTime = v7;
    [coderCopy decodeDoubleForKey:@"HDDemoDataVitalsSampleHelperLastRespirationRateGenerationTimeKey"];
    v5->_lastRespirationRateGenerationTime = v8;
    [coderCopy decodeDoubleForKey:@"HDDemoDataVitalsSampleHelperNextBloodPressureSampleTimeKey"];
    v5->_nextBloodPressureSampleTime = v9;
    [coderCopy decodeDoubleForKey:@"HDDemoDataVitalsSampleHelperNextBodyTempSampleTimeKey"];
    v5->_nextBodyTempSampleTime = v10;
    [coderCopy decodeDoubleForKey:@"HDDemoDataVitalsSampleHelperNextOxygenSaturationSampleTimeKey"];
    v5->_nextOxygenSaturationSampleTime = v11;
    [coderCopy decodeDoubleForKey:@"HDDemoDataVitalsSampleHelperNextPeripheralPerfusionIndexSampleTimeKey"];
    v5->_nextPeripheralPerfusionIndexSampleTime = v12;
    [coderCopy decodeDoubleForKey:@"HDDemoDataVitalsSampleHelperLastPeripheralPerfusionIndexValueKey"];
    v5->_lastPeripheralPerfusionIndexValue = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HDDemoDataVitalsSampleGenerator;
  coderCopy = coder;
  [(HDDemoDataBaseSampleGenerator *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeDouble:@"HDDemoDataVitalsSampleHelperNextHeartRateSampleTimeKey" forKey:{self->_nextHeartRateSampleTime, v5.receiver, v5.super_class}];
  [coderCopy encodeDouble:@"HDDemoDataVitalsSampleHelperNextRespirationRateSampleTimeKey" forKey:self->_nextRespirationRateSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataVitalsSampleHelperLastRespirationRateGenerationTimeKey" forKey:self->_lastRespirationRateGenerationTime];
  [coderCopy encodeDouble:@"HDDemoDataVitalsSampleHelperNextBloodPressureSampleTimeKey" forKey:self->_nextBloodPressureSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataVitalsSampleHelperNextBodyTempSampleTimeKey" forKey:self->_nextBodyTempSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataVitalsSampleHelperNextOxygenSaturationSampleTimeKey" forKey:self->_nextOxygenSaturationSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataVitalsSampleHelperNextPeripheralPerfusionIndexSampleTimeKey" forKey:self->_nextPeripheralPerfusionIndexSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataVitalsSampleHelperLastPeripheralPerfusionIndexValueKey" forKey:self->_lastPeripheralPerfusionIndexValue];
}

- (void)setupWithDemoDataGenerator:(id)generator
{
  v6.receiver = self;
  v6.super_class = HDDemoDataVitalsSampleGenerator;
  [(HDDemoDataBaseSampleGenerator *)&v6 setupWithDemoDataGenerator:generator];
  diurnalBPVariationTable = self->_diurnalBPVariationTable;
  self->_diurnalBPVariationTable = &unk_283CB0438;

  diurnalTempVariationTable = self->_diurnalTempVariationTable;
  self->_diurnalTempVariationTable = &unk_283CB0450;
}

- (void)generateObjectsForDemoPerson:(id)person fromTime:(double)time toTime:(double)toTime currentDate:(id)date objectCollection:(id)collection
{
  v365[1] = *MEMORY[0x277D85DE8];
  personCopy = person;
  dateCopy = date;
  v359.receiver = self;
  v359.super_class = HDDemoDataVitalsSampleGenerator;
  collectionCopy = collection;
  [(HDDemoDataBaseSampleGenerator *)&v359 generateObjectsForDemoPerson:personCopy fromTime:dateCopy toTime:toTime currentDate:toTime objectCollection:?];
  if (qword_27D86C268 != -1)
  {
    dispatch_once(&qword_27D86C268, &__block_literal_global_244);
  }

  demoDataGenerator = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  generatorState = [demoDataGenerator generatorState];
  selfCopy = self;
  if ([generatorState isDoingHIIT])
  {
    goto LABEL_12;
  }

  demoDataGenerator2 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  generatorState2 = [demoDataGenerator2 generatorState];
  if ([generatorState2 isDoingYoga])
  {
LABEL_11:

LABEL_12:
    goto LABEL_13;
  }

  demoDataGenerator3 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  generatorState3 = [demoDataGenerator3 generatorState];
  if ([generatorState3 isDoingElliptical])
  {
LABEL_10:

    self = selfCopy;
    goto LABEL_11;
  }

  demoDataGenerator4 = [(HDDemoDataBaseSampleGenerator *)selfCopy demoDataGenerator];
  generatorState4 = [demoDataGenerator4 generatorState];
  if ([generatorState4 isWalking])
  {
LABEL_9:

    goto LABEL_10;
  }

  v345 = demoDataGenerator3;
  v350 = generatorState4;
  demoDataGenerator5 = [(HDDemoDataBaseSampleGenerator *)selfCopy demoDataGenerator];
  generatorState5 = [demoDataGenerator5 generatorState];
  if ([generatorState5 isHiking])
  {

    generatorState4 = v350;
    demoDataGenerator3 = v345;
    goto LABEL_9;
  }

  v338 = generatorState5;
  v340 = demoDataGenerator5;
  v343 = demoDataGenerator4;
  demoDataGenerator6 = [(HDDemoDataBaseSampleGenerator *)selfCopy demoDataGenerator];
  generatorState6 = [demoDataGenerator6 generatorState];
  if ([generatorState6 isRunning])
  {
    v85 = demoDataGenerator6;
    v86 = 1;
    v87 = v350;
  }

  else
  {
    demoDataGenerator7 = [(HDDemoDataBaseSampleGenerator *)selfCopy demoDataGenerator];
    generatorState7 = [demoDataGenerator7 generatorState];
    if ([generatorState7 isSwimming])
    {
      v85 = demoDataGenerator6;
      isUnderwaterDiving = 1;
      v87 = v350;
    }

    else
    {
      demoDataGenerator8 = [(HDDemoDataBaseSampleGenerator *)selfCopy demoDataGenerator];
      generatorState8 = [demoDataGenerator8 generatorState];
      if ([generatorState8 isCoreTraining])
      {
        v85 = demoDataGenerator6;
        isUnderwaterDiving = 1;
        v87 = v350;
      }

      else
      {
        demoDataGenerator9 = [(HDDemoDataBaseSampleGenerator *)selfCopy demoDataGenerator];
        generatorState9 = [demoDataGenerator9 generatorState];
        if ([generatorState9 isDancing])
        {
          v85 = demoDataGenerator6;
          isUnderwaterDiving = 1;
          v87 = v350;
          v322 = demoDataGenerator9;
        }

        else
        {
          demoDataGenerator10 = [(HDDemoDataBaseSampleGenerator *)selfCopy demoDataGenerator];
          generatorState10 = [demoDataGenerator10 generatorState];
          v85 = demoDataGenerator6;
          if ([generatorState10 isFunctionalStrengthTraining])
          {
            isUnderwaterDiving = 1;
            v87 = v350;
            v322 = demoDataGenerator9;
          }

          else
          {
            demoDataGenerator11 = [(HDDemoDataBaseSampleGenerator *)selfCopy demoDataGenerator];
            generatorState11 = [demoDataGenerator11 generatorState];
            if ([generatorState11 isCoolingDown])
            {
              isUnderwaterDiving = 1;
            }

            else
            {
              demoDataGenerator12 = [(HDDemoDataBaseSampleGenerator *)selfCopy demoDataGenerator];
              generatorState12 = [demoDataGenerator12 generatorState];
              isUnderwaterDiving = [generatorState12 isUnderwaterDiving];
            }

            v87 = v350;
            v322 = demoDataGenerator9;
          }
        }
      }
    }

    v86 = isUnderwaterDiving;
  }

  self = selfCopy;
  if ((v86 & 1) == 0)
  {
    v22 = 0;
    goto LABEL_14;
  }

LABEL_13:
  v22 = 1;
LABEL_14:
  demoDataGenerator13 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  activitySampleGenerator = [demoDataGenerator13 activitySampleGenerator];
  v25 = [activitySampleGenerator _isDemoPersonInWorkoutRecovery:personCopy atTime:toTime];

  demoDataGenerator14 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  mindfulnessSampleGenerator = [demoDataGenerator14 mindfulnessSampleGenerator];
  didGenerateMindfulnessMinute = [mindfulnessSampleGenerator didGenerateMindfulnessMinute];

  demoDataGenerator15 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  sleepSampleGenerator = [demoDataGenerator15 sleepSampleGenerator];
  v31 = [sleepSampleGenerator isDemoPersonSleeping:personCopy atTime:toTime];

  v347 = dateCopy;
  if ((v31 & 1) == 0 && (didGenerateMindfulnessMinute & 1) == 0 && (v22 & 1) == 0 && (v25 & 1) == 0)
  {
    v32 = personCopy;
    v33 = v32;
    if (self && self->_nextHeartRateSampleTime <= toTime)
    {
      [v32 heartRateSampleFrequency];
      v39 = v38;
      demoDataGenerator16 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      statisticsSampleGenerator = [demoDataGenerator16 statisticsSampleGenerator];
      [v33 heartRateSampleFrequencyStdDev];
      [statisticsSampleGenerator computeNoiseFromTime:toTime stdDev:v42];
      self->_nextHeartRateSampleTime = v39 + v43 + self->_nextHeartRateSampleTime;

      v44 = v33;
      demoDataGenerator17 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      statisticsSampleGenerator2 = [demoDataGenerator17 statisticsSampleGenerator];
      [v44 heartRateSampleNoiseStdDev];
      [statisticsSampleGenerator2 computeNoiseFromTime:toTime stdDev:v47];
      v49 = v48;

      v50 = [(HDDemoDataVitalsSampleGenerator *)self _computeMaxHRForDemoPerson:v44 atTime:toTime];
      demoDataGenerator18 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      generatorState13 = [demoDataGenerator18 generatorState];
      isExercising = [generatorState13 isExercising];

      if (isExercising)
      {
        v54 = [(HDDemoDataVitalsSampleGenerator *)self _computeMaxHRForDemoPerson:v44 atTime:toTime];
        [v44 exerciseIntensityPercentage];
        v56 = v55;
        demoDataGenerator19 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
        statisticsSampleGenerator3 = [demoDataGenerator19 statisticsSampleGenerator];
        [statisticsSampleGenerator3 computeNoiseFromTime:toTime stdDev:0.05];
        v60 = v49 + v59 + v54 * v56;

        v61 = 6;
      }

      else
      {
        demoDataGenerator20 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
        activitySampleGenerator2 = [demoDataGenerator20 activitySampleGenerator];
        [v44 heartRateSampleFrequency];
        v65 = [activitySampleGenerator2 _isDemoPersonWalking:v44 atTime:toTime samplePeriod:v64];

        demoDataGenerator21 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
        activitySampleGenerator3 = [demoDataGenerator21 activitySampleGenerator];
        v68 = activitySampleGenerator3;
        if (v65)
        {
          v69 = [activitySampleGenerator3 _computeFlightsClimbedForDemoPerson:v44 atTime:toTime];

          restingHeartRate = [v44 restingHeartRate];
          demoDataGenerator22 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
          statisticsSampleGenerator4 = [demoDataGenerator22 statisticsSampleGenerator];
          [statisticsSampleGenerator4 randomDoubleFromGenerator];
          v74 = v73;

          v61 = 0;
          if (v69)
          {
            v75 = 1.4;
          }

          else
          {
            v75 = 1.3;
          }

          v60 = v49 + restingHeartRate * (v75 + v74 * 0.2);
        }

        else
        {
          v76 = [activitySampleGenerator3 _isDemoPersonCoolingDown:v44 atTime:toTime];

          if (v76)
          {
            demoDataGenerator23 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
            activitySampleGenerator4 = [demoDataGenerator23 activitySampleGenerator];
            [activitySampleGenerator4 _computePercentCooledForDemoPerson:v44 atTime:toTime];
            v80 = v79;

            restingHeartRate2 = [v44 restingHeartRate];
            v82 = v50 - [v44 restingHeartRate];
            [v44 exerciseIntensityPercentage];
            v60 = restingHeartRate2 + v83 * v82 * (1.0 - v80);
            v61 = 2;
          }

          else
          {
            v60 = v49 + [v44 restingHeartRate];
            demoDataGenerator24 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
            statisticsSampleGenerator5 = [demoDataGenerator24 statisticsSampleGenerator];
            [statisticsSampleGenerator5 pseudoRandomDoubleFromTime:toTime];
            v91 = v90;

            if (v91 >= 20.0)
            {
              v61 = 0;
            }

            else
            {
              v61 = 3;
            }
          }
        }
      }

      demoDataGenerator25 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      foodSampleGenerator = [demoDataGenerator25 foodSampleGenerator];
      v94 = [foodSampleGenerator _isDemoPersonConsumingCaffeine:v44 atTime:toTime];

      if (v94)
      {
        demoDataGenerator26 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
        statisticsSampleGenerator6 = [demoDataGenerator26 statisticsSampleGenerator];
        [statisticsSampleGenerator6 computeNoiseFromTime:toTime stdDev:3.0];
        v60 = v60 + fabs(v97) + 4.0;
      }

      if (v60 <= v50)
      {
        v98 = v60;
      }

      else
      {
        v98 = v50;
      }

      if (v98 <= 55.0)
      {
        v98 = (arc4random_uniform(0xFu) + 45);
      }

      v99 = floor(v98);

      if (v99 > 0.0)
      {
        v100 = [MEMORY[0x277CCD7E8] quantityWithUnit:_MergedGlobals_15_0 doubleValue:v99];
        v101 = MEMORY[0x277CCD800];
        v102 = qword_27D86C228;
        v364 = *MEMORY[0x277CCE030];
        v103 = [MEMORY[0x277CCABB0] numberWithInteger:v61];
        v365[0] = v103;
        v104 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v365 forKeys:&v364 count:1];
        v105 = [v101 quantitySampleWithType:v102 quantity:v100 startDate:dateCopy endDate:dateCopy metadata:v104];

        [collectionCopy addObjectFromWatch:v105];
      }

      v106 = v44;
      goto LABEL_47;
    }
  }

  v34 = personCopy;
  if (!self)
  {
    v35 = 0.0;
    v36 = 1;
    v37 = 0.0;
    goto LABEL_50;
  }

LABEL_47:
  if (self->_nextBloodPressureSampleTime > toTime)
  {

    v107 = personCopy;
    goto LABEL_55;
  }

  demoDataGenerator27 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  statisticsSampleGenerator7 = [demoDataGenerator27 statisticsSampleGenerator];
  [personCopy bloodPressureSampleFrequency];
  v111 = v110;
  [personCopy genericSampleTimeNoiseStdDev];
  [statisticsSampleGenerator7 computeStatisticalTimeFromCurrentTime:toTime mean:v111 stdDev:v112];
  self->_nextBloodPressureSampleTime = v113 + self->_nextBloodPressureSampleTime;

  restingSystolicBloodPressure = [personCopy restingSystolicBloodPressure];
  [personCopy restingSystolicBloodPressureSampleNoiseStdDev];
  v37 = [(HDDemoDataVitalsSampleGenerator *)&self->super.super.isa _computeBloodPressureForDemoPerson:personCopy atTime:toTime baseBloodPressure:restingSystolicBloodPressure stdDev:v115];
  restingDiastolicBloodPressure = [personCopy restingDiastolicBloodPressure];
  [personCopy restingDiastolicBloodPressureSampleNoiseStdDev];
  v36 = 0;
  v35 = [(HDDemoDataVitalsSampleGenerator *)&self->super.super.isa _computeBloodPressureForDemoPerson:personCopy atTime:toTime baseBloodPressure:restingDiastolicBloodPressure stdDev:v117];
LABEL_50:

  if (v37 == -2147483650.0 || v35 == -2147483650.0)
  {
    v127 = personCopy;
    if (v36)
    {
      goto LABEL_53;
    }
  }

  else
  {
    [MEMORY[0x277CCD7E8] quantityWithUnit:qword_27D86C210 doubleValue:v37];
    v118 = v351 = v36;
    v119 = [MEMORY[0x277CCD800] quantitySampleWithType:qword_27D86C238 quantity:v118 startDate:dateCopy endDate:dateCopy];
    [collectionCopy addObjectFromPhone:v119];
    v120 = [MEMORY[0x277CCD7E8] quantityWithUnit:qword_27D86C210 doubleValue:v35];
    v121 = [MEMORY[0x277CCD800] quantitySampleWithType:qword_27D86C240 quantity:v120 startDate:dateCopy endDate:dateCopy];
    [collectionCopy addObjectFromPhone:v121];
    v122 = [MEMORY[0x277CBEB98] setWithObjects:{v119, v121, 0}];
    v123 = [MEMORY[0x277CCD240] correlationWithType:qword_27D86C248 startDate:dateCopy endDate:dateCopy objects:v122];
    self = selfCopy;
    [collectionCopy addObjectFromPhone:v123];

    v124 = personCopy;
    if (v351)
    {
LABEL_53:
      v125 = 0;
      v126 = 1;
      goto LABEL_84;
    }
  }

LABEL_55:
  v128 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (self->_nextRespirationRateSampleTime <= toTime)
  {
    demoDataGenerator28 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    sleepSampleGenerator2 = [demoDataGenerator28 sleepSampleGenerator];
    v131 = [sleepSampleGenerator2 isDemoPersonSleeping:personCopy atTime:toTime];

    if (!v131 || (v132.f64[0] = self->_lastRespirationRateGenerationTime, v132.f64[0] == 0.0) || (v132.f64[1] = toTime, v133 = vcvtq_s64_f64(vdivq_f64(vmulq_f64(v132, vdupq_n_s64(0x40F5180000000000uLL)), vdupq_n_s64(0x404E000000000000uLL))), v134 = v133.i64[1], v135 = v133.i64[0], v133.i64[0] >= v133.i64[1]))
    {
LABEL_79:
      demoDataGenerator29 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      sleepSampleGenerator3 = [demoDataGenerator29 sleepSampleGenerator];
      if ([sleepSampleGenerator3 isDemoPersonSleeping:personCopy atTime:toTime])
      {
        [personCopy restingRespirationRateSampleFrequencyDuringSleep];
      }

      else
      {
        [personCopy restingRespirationRateSampleFrequency];
      }

      v188 = v187;

      self->_nextRespirationRateSampleTime = v188 + self->_nextRespirationRateSampleTime;
      self->_lastRespirationRateGenerationTime = toTime;
      v125 = objc_msgSend_copy(v128);
      goto LABEL_83;
    }

    while (1)
    {
      v136 = personCopy;
      demoDataGenerator30 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      statisticsSampleGenerator8 = [demoDataGenerator30 statisticsSampleGenerator];
      [v136 restingRespirationRateSampleNoiseStdDev];
      [statisticsSampleGenerator8 computeNoiseFromTime:v135 * 60.0 * 0.0000115740741 stdDev:v139];
      v141 = v140;

      demoDataGenerator31 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      sleepSampleGenerator4 = [demoDataGenerator31 sleepSampleGenerator];
      v144 = [sleepSampleGenerator4 isDemoPersonSleeping:v136 atTime:v135 * 60.0 * 0.0000115740741];

      demoDataGenerator32 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      v146 = demoDataGenerator32;
      if (v144)
      {
        statisticsSampleGenerator9 = [demoDataGenerator32 statisticsSampleGenerator];
        [v136 restingRespirationRateSampleNoiseStdDev];
        [statisticsSampleGenerator9 computeNoiseFromTime:v135 * 60.0 * 0.0000115740741 stdDev:{vabdd_f64(v148, (arc4random() & 0x7FFFFFFF) / 2147483650.0 * (v148 + v148) + 0.0)}];
        v150 = v149;

        restingRespirationRate = [v136 restingRespirationRate];
        v152 = v150 + ((arc4random() & 0x7FFFFFFF) / 2147483650.0 * 2.0 + -1.0 + restingRespirationRate) * 1.15;
      }

      else
      {
        generatorState14 = [demoDataGenerator32 generatorState];
        isExercising2 = [generatorState14 isExercising];

        if (isExercising2)
        {
          restingRespirationRate2 = [v136 restingRespirationRate];
          v156 = 1.5;
        }

        else
        {
          demoDataGenerator33 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
          activitySampleGenerator5 = [demoDataGenerator33 activitySampleGenerator];
          [v136 restingRespirationRateSampleFrequency];
          v160 = [activitySampleGenerator5 _isDemoPersonWalking:v136 atTime:v135 * 60.0 * 0.0000115740741 samplePeriod:v159];

          demoDataGenerator34 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
          activitySampleGenerator6 = [demoDataGenerator34 activitySampleGenerator];
          v163 = activitySampleGenerator6;
          v164 = v135 * 60.0 * 0.0000115740741;
          if (!v160)
          {
            v166 = [activitySampleGenerator6 _isDemoPersonCoolingDown:v136 atTime:v164];

            if (v166)
            {
              demoDataGenerator35 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
              activitySampleGenerator7 = [demoDataGenerator35 activitySampleGenerator];
              [activitySampleGenerator7 _computePercentCooledForDemoPerson:v136 atTime:v135 * 60.0 * 0.0000115740741];
              v170 = v169;

              v171 = (1.0 - v170) * vcvtd_n_f64_s64([v136 restingRespirationRate], 1uLL) * 0.5;
              restingRespirationRate3 = v171 + [v136 restingRespirationRate];
            }

            else
            {
              restingRespirationRate3 = [v136 restingRespirationRate];
            }

            v152 = v141 + restingRespirationRate3;
            goto LABEL_73;
          }

          v165 = [activitySampleGenerator6 _computeFlightsClimbedForDemoPerson:v136 atTime:v164];

          restingRespirationRate2 = [v136 restingRespirationRate];
          if (v165)
          {
            v156 = 1.3;
          }

          else
          {
            v156 = 1.2;
          }
        }

        v152 = v141 + restingRespirationRate2 * v156;
      }

LABEL_73:

      demoDataGenerator36 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      sleepSampleGenerator5 = [demoDataGenerator36 sleepSampleGenerator];
      v175 = [sleepSampleGenerator5 isDemoPersonSleeping:v136 atTime:v135 * 60.0 * 0.0000115740741];

      if (v175)
      {
        demoDataGenerator37 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
        generatorState15 = [demoDataGenerator37 generatorState];
        firstSampleDate = [generatorState15 firstSampleDate];
        v179 = [firstSampleDate dateByAddingTimeInterval:v135 * 60.0 * 0.0000115740741 * 86400.0];

        v180 = [HDDemoDataRespirationRate alloc];
        v181 = [MEMORY[0x277CCABB0] numberWithDouble:floor(v152 + v152) * 0.5];
        v182 = v179;
        v183 = v181;
        if (v180)
        {
          v360.receiver = v180;
          v360.super_class = HDDemoDataRespirationRate;
          v184 = [(HDDemoDataBaseSampleGenerator *)&v360 init];
          v180 = v184;
          if (v184)
          {
            objc_storeStrong(v184 + 1, v179);
            objc_storeStrong(&v180->_rate, v181);
          }
        }

        [v128 addObject:v180];
        self = selfCopy;
      }

      v135 += 10;
      if (v135 >= v134)
      {
        goto LABEL_79;
      }
    }
  }

  v125 = 0;
LABEL_83:

  v126 = 0;
LABEL_84:

  v344 = v125;
  v346 = v126;
  if ([v125 count])
  {
    v341 = personCopy;
    v357 = 0u;
    v358 = 0u;
    v355 = 0u;
    v356 = 0u;
    v352 = v125;
    v189 = [v352 countByEnumeratingWithState:&v355 objects:v363 count:16];
    if (v189)
    {
      v190 = v189;
      v191 = *v356;
      do
      {
        for (i = 0; i != v190; ++i)
        {
          if (*v356 != v191)
          {
            objc_enumerationMutation(v352);
          }

          v193 = *(*(&v355 + 1) + 8 * i);
          v194 = MEMORY[0x277CCD7E8];
          v195 = _MergedGlobals_15_0;
          rate = [v193 rate];
          [rate doubleValue];
          v197 = [v194 quantityWithUnit:v195 doubleValue:?];

          v198 = MEMORY[0x277CCD800];
          v199 = qword_27D86C230;
          date = [v193 date];
          date2 = [v193 date];
          v202 = [v198 quantitySampleWithType:v199 quantity:v197 startDate:date endDate:date2];

          [collectionCopy addObjectFromWatch:v202];
        }

        v190 = [v352 countByEnumeratingWithState:&v355 objects:v363 count:16];
      }

      while (v190);
    }

    dateCopy = v347;
    self = selfCopy;
    personCopy = v341;
    v125 = v344;
    v126 = v346;
  }

  v203 = personCopy;
  v204 = v203;
  if ((v126 & 1) != 0 || self->_nextBodyTempSampleTime > toTime || ([v203 bodyTempSampleFrequency], v206 = v205, -[HDDemoDataBaseSampleGenerator demoDataGenerator](self, "demoDataGenerator"), v207 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v207, "statisticsSampleGenerator"), v208 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v208, "computeNoiseFromTime:stdDev:", toTime, 0.0416666667), self->_nextBodyTempSampleTime = v206 + v209 + self->_nextBodyTempSampleTime, v208, v207, -[HDDemoDataVitalsSampleGenerator _computeBodyTempInCelsiusForDemoPerson:atTime:addNoise:](self, "_computeBodyTempInCelsiusForDemoPerson:atTime:addNoise:", v204, 1, toTime), v210 == -2147483650.0))
  {
    v211 = 0;
    v212 = v204;
  }

  else
  {
    v211 = [MEMORY[0x277CCABB0] numberWithDouble:?];

    if (!v211)
    {
      goto LABEL_98;
    }

    v222 = MEMORY[0x277CCD7E8];
    v223 = qword_27D86C218;
    [v211 doubleValue];
    v212 = [v222 quantityWithUnit:v223 doubleValue:?];
    v224 = [MEMORY[0x277CCD800] quantitySampleWithType:qword_27D86C250 quantity:v212 startDate:dateCopy endDate:dateCopy];
    [collectionCopy addObjectFromPhone:v224];
  }

LABEL_98:
  v353 = v211;
  if ([v204 resultsTrackingType] == 2 || HKFeatureFlagBloodOxygenSaturationEnabled())
  {
    v213 = v204;
    v342 = dateCopy;
    if ((v126 & 1) != 0 || self->_nextOxygenSaturationSampleTime > toTime)
    {
      goto LABEL_108;
    }

    demoDataGenerator38 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    sleepSampleGenerator6 = [demoDataGenerator38 sleepSampleGenerator];
    v216 = [sleepSampleGenerator6 isDemoPersonSleeping:v213 atTime:toTime];

    demoDataGenerator39 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    statisticsSampleGenerator10 = [demoDataGenerator39 statisticsSampleGenerator];
    [statisticsSampleGenerator10 pseudoRandomDoubleFromTime:toTime];
    v220 = v219;
    if (v216)
    {
      [v213 oxygenSaturationMeasuringSuccessRateDuringSleep];
    }

    else
    {
      [v213 oxygenSaturationMeasuringSuccessRate];
    }

    v225 = v221;

    if (v220 > v225)
    {
LABEL_108:
      v226 = 0;
      v227 = v342;
    }

    else
    {
      [v213 oxygenSaturationSampleFrequency];
      v229 = v228 + toTime;
      demoDataGenerator40 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      statisticsSampleGenerator11 = [demoDataGenerator40 statisticsSampleGenerator];
      [statisticsSampleGenerator11 computeNoiseFromTime:toTime stdDev:0.00208333333];
      self->_nextOxygenSaturationSampleTime = v229 + v232;

      [v213 oxygenSaturationMean];
      v234 = v233;
      [v213 oxygenSaturationStdDev];
      v236 = v235;
      demoDataGenerator41 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      generatorState16 = [demoDataGenerator41 generatorState];
      calendarDay = [generatorState16 calendarDay];

      if (calendarDay == 7)
      {
        currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
        date3 = [MEMORY[0x277CBEAA8] date];
        v242 = [currentCalendar dateByAddingUnit:16 value:-14 toDate:date3 options:0];

        v227 = v342;
        if ([v342 hk_isAfterDate:v242])
        {
          [v213 oxygenSaturationMeanAtElevation];
          v234 = v243;
          [v213 oxygenSaturationStdDevAtElevation];
          v236 = v244;
        }
      }

      else
      {
        v227 = v342;
      }

      demoDataGenerator42 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      statisticsSampleGenerator12 = [demoDataGenerator42 statisticsSampleGenerator];
      [statisticsSampleGenerator12 computeNoiseFromTime:toTime stdDev:v236];
      v248 = v247;

      demoDataGenerator43 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      generatorState17 = [demoDataGenerator43 generatorState];
      isExercising3 = [generatorState17 isExercising];

      v252 = v234 + -1.0;
      if (!isExercising3)
      {
        v252 = v234;
      }

      v253 = v248 + v252;
      demoDataGenerator44 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      sleepSampleGenerator7 = [demoDataGenerator44 sleepSampleGenerator];
      v256 = [sleepSampleGenerator7 isDemoPersonSleeping:v213 atTime:toTime];

      v257 = 2.0;
      if (v256)
      {
        v257 = -3.0;
      }

      v258 = ceil(v253 + v257);
      if (v258 > 100.0)
      {
        v258 = 100.0;
      }

      v226 = [MEMORY[0x277CCABB0] numberWithDouble:{fmax(v258, 90.0) / 100.0}];
    }

    if (v226)
    {
      v259 = MEMORY[0x277CCD7E8];
      v260 = qword_27D86C220;
      [v226 doubleValue];
      v339 = [v259 quantityWithUnit:v260 doubleValue:?];
      [v226 doubleValue];
      v262 = v261 * 100.0;
      [v213 oxygenSaturationMeanAtElevation];
      if (v262 >= v263)
      {
        v265 = MEMORY[0x277CCD7E8];
        v266 = [MEMORY[0x277CCDAB0] pascalUnitWithMetricPrefix:9];
        v264 = [v265 quantityWithUnit:v266 doubleValue:101.0];
      }

      else
      {
        v264 = HKOxygenSaturationLowBarometricPressureThresholdQuantity();
      }

      v361 = *MEMORY[0x277CCC478];
      v362 = v264;
      v267 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v362 forKeys:&v361 count:1];
      v268 = MEMORY[0x277CCD800];
      v269 = qword_27D86C258;
      localDevice = [MEMORY[0x277CCD2E8] localDevice];
      v271 = v268;
      v272 = v339;
      v273 = [v271 quantitySampleWithType:v269 quantity:v339 startDate:v227 endDate:v227 device:localDevice metadata:v267];

      if (HKFeatureFlagBloodOxygenSaturationEnabled())
      {
        [collectionCopy addObjectFromWatch:v273];
        v337 = v264;
        if (v346)
        {
          v282 = 0;
        }

        else
        {
          [v226 doubleValue];
          v275 = v274 * 100.0;
          v276 = 90.0;
          if (v275 <= 90.0)
          {
            v277 = 10.0;
            if (v275 <= 85.0)
            {
              if (v275 <= 80.0)
              {
                v276 = 120.0;
              }

              else
              {
                v276 = 110.0;
              }

              if (v275 <= 80.0)
              {
                v277 = 15.0;
              }

              else
              {
                v277 = 10.0;
              }
            }
          }

          else
          {
            v277 = 5.0;
            v276 = 70.0;
          }

          demoDataGenerator45 = [(HDDemoDataBaseSampleGenerator *)selfCopy demoDataGenerator];
          statisticsSampleGenerator13 = [demoDataGenerator45 statisticsSampleGenerator];
          [statisticsSampleGenerator13 pseudoRandomDoubleFromTime:toTime];
          v281 = v276 + v280 * v277;

          v282 = [MEMORY[0x277CCABB0] numberWithDouble:v281];
        }

        v283 = MEMORY[0x277CCD7E8];
        v284 = _MergedGlobals_15_0;
        [v282 doubleValue];
        v285 = [v283 quantityWithUnit:v284 doubleValue:?];
        v286 = [MEMORY[0x277CCD800] quantitySampleWithType:qword_27D86C228 quantity:v285 startDate:v342 endDate:v342];
        [collectionCopy addObjectFromWatch:v286];
        v287 = objc_alloc_init(MEMORY[0x277CBEB28]);
        uUID = [v286 UUID];
        [v287 hk_appendBytesWithUUID:uUID];

        uUID2 = [v273 UUID];
        [collectionCopy setAssociatedObjectUUIDs:v287 forObjectUUID:uUID2];

        v264 = v337;
        v272 = v339;
      }

      else
      {
        [collectionCopy addObjectFromPhone:v273];
      }

      v211 = v353;
    }

    v125 = v344;
    dateCopy = v347;
    v126 = v346;
  }

  if ([v204 resultsTrackingType] == 2)
  {
    v290 = v204;
    if ((v126 & 1) != 0 || selfCopy->_nextPeripheralPerfusionIndexSampleTime > toTime)
    {
      v291 = 0;
LABEL_157:

LABEL_158:
      dateCopy = v347;
      v211 = v353;
      goto LABEL_159;
    }

    demoDataGenerator46 = [(HDDemoDataBaseSampleGenerator *)selfCopy demoDataGenerator];
    generatorState18 = [demoDataGenerator46 generatorState];
    if ([generatorState18 isExercising])
    {
    }

    else
    {
      demoDataGenerator47 = [(HDDemoDataBaseSampleGenerator *)selfCopy demoDataGenerator];
      [demoDataGenerator47 activitySampleGenerator];
      v296 = v295 = v125;
      v297 = [v296 _isDemoPersonCoolingDown:v290 atTime:toTime];

      v125 = v295;
      if ((v297 & 1) == 0)
      {
        v310 = toTime + 1;
        demoDataGenerator48 = [(HDDemoDataBaseSampleGenerator *)selfCopy demoDataGenerator];
        currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
        v313 = [demoDataGenerator48 isDemoDataTimeInWeekend:currentCalendar2 calendar:toTime];

        if (v313)
        {
          [v290 weekendSleepParameters];
        }

        else
        {
          [v290 weekdaySleepParameters];
        }
        v309 = ;
        demoDataGenerator49 = [(HDDemoDataBaseSampleGenerator *)selfCopy demoDataGenerator];
        activitySampleGenerator8 = [demoDataGenerator49 activitySampleGenerator];
        [v309 wakeUpTime];
        v317 = v316 + v310;
        [v290 exerciseStartTime];
        v319 = v318;
        [v290 exerciseStartTimeStdDev];
        [activitySampleGenerator8 _computeExerciseTimeFromCurrentTime:v317 mean:v319 stdDev:v320];
        selfCopy->_nextPeripheralPerfusionIndexSampleTime = v321 + v310;

        v291 = 0;
LABEL_156:

        goto LABEL_157;
      }
    }

    [v290 peripheralPerfusionIndexSampleFrequency];
    selfCopy->_nextPeripheralPerfusionIndexSampleTime = v298 + selfCopy->_nextPeripheralPerfusionIndexSampleTime;
    [v290 peripheralPerfusionIndexMean];
    v300 = v299;
    demoDataGenerator50 = [(HDDemoDataBaseSampleGenerator *)selfCopy demoDataGenerator];
    statisticsSampleGenerator14 = [demoDataGenerator50 statisticsSampleGenerator];
    [v290 peripheralPerfusionIndexStdDev];
    [statisticsSampleGenerator14 computeNoiseFromTime:toTime stdDev:v303];
    v305 = v300 + v304;

    [v290 peripheralPerfusionIndexSampleFrequency];
    if (v306 < 0.000694444444)
    {
      v305 = selfCopy->_lastPeripheralPerfusionIndexValue * 0.6 + v305 * 0.4;
      selfCopy->_lastPeripheralPerfusionIndexValue = v305;
    }

    v291 = [MEMORY[0x277CCABB0] numberWithDouble:(v305 * 100.0) / 100.0 / 100.0];

    if (!v291)
    {
      goto LABEL_158;
    }

    v307 = MEMORY[0x277CCD7E8];
    v308 = qword_27D86C220;
    [v291 doubleValue];
    v290 = [v307 quantityWithUnit:v308 doubleValue:?];
    v309 = [MEMORY[0x277CCD800] quantitySampleWithType:qword_27D86C260 quantity:v290 startDate:v347 endDate:v347];
    [collectionCopy addObjectFromPhone:v309];
    goto LABEL_156;
  }

LABEL_159:
}

uint64_t __109__HDDemoDataVitalsSampleGenerator_generateObjectsForDemoPerson_fromTime_toTime_currentDate_objectCollection___block_invoke()
{
  v0 = [MEMORY[0x277CCDAB0] unitFromString:@"count/min"];
  v1 = _MergedGlobals_15_0;
  _MergedGlobals_15_0 = v0;

  v2 = [MEMORY[0x277CCDAB0] millimeterOfMercuryUnit];
  v3 = qword_27D86C210;
  qword_27D86C210 = v2;

  v4 = [MEMORY[0x277CCDAB0] degreeCelsiusUnit];
  v5 = qword_27D86C218;
  qword_27D86C218 = v4;

  v6 = [MEMORY[0x277CCDAB0] percentUnit];
  v7 = qword_27D86C220;
  qword_27D86C220 = v6;

  v8 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
  v9 = qword_27D86C228;
  qword_27D86C228 = v8;

  v10 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC18]];
  v11 = qword_27D86C230;
  qword_27D86C230 = v10;

  v12 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC980]];
  v13 = qword_27D86C238;
  qword_27D86C238 = v12;

  v14 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC978]];
  v15 = qword_27D86C240;
  qword_27D86C240 = v14;

  v16 = [MEMORY[0x277CCD250] correlationTypeForIdentifier:*MEMORY[0x277CCBBA8]];
  v17 = qword_27D86C248;
  qword_27D86C248 = v16;

  v18 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC9A0]];
  v19 = qword_27D86C250;
  qword_27D86C250 = v18;

  v20 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCBE8]];
  v21 = qword_27D86C258;
  qword_27D86C258 = v20;

  v22 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC00]];
  v23 = qword_27D86C260;
  qword_27D86C260 = v22;

  return MEMORY[0x2821F96F8](v22, v23);
}

- (uint64_t)_computeBloodPressureForDemoPerson:(double)person atTime:(double)time baseBloodPressure:(double)pressure stdDev:
{
  v9 = a2;
  demoDataGenerator = [self demoDataGenerator];
  sleepSampleGenerator = [demoDataGenerator sleepSampleGenerator];
  v12 = [sleepSampleGenerator isDemoPersonSleeping:v9 atTime:person];

  if (v12)
  {
    v13 = 0xFFFFFFFF80000000;
  }

  else
  {
    v14 = [self[4] objectAtIndexedSubscript:((person - person) * 24.0)];
    [v14 doubleValue];
    v16 = v15 * time;

    if ([v9 biologicalSex] != 2)
    {
      v16 = v16 * 0.9;
    }

    demoDataGenerator2 = [self demoDataGenerator];
    generatorState = [demoDataGenerator2 generatorState];
    isExercising = [generatorState isExercising];

    v20 = 0.0;
    if (isExercising)
    {
      v21 = time * 0.07 + 4.0;
    }

    else
    {
      v21 = 0.0;
    }

    demoDataGenerator3 = [self demoDataGenerator];
    foodSampleGenerator = [demoDataGenerator3 foodSampleGenerator];
    v24 = [foodSampleGenerator _isDemoPersonConsumingCaffeine:v9 atTime:person];

    if (v24)
    {
      demoDataGenerator4 = [self demoDataGenerator];
      statisticsSampleGenerator = [demoDataGenerator4 statisticsSampleGenerator];
      [statisticsSampleGenerator computeNoiseFromTime:person stdDev:2.25];
      v20 = fabs(v27) + 2.5;
    }

    demoDataGenerator5 = [self demoDataGenerator];
    statisticsSampleGenerator2 = [demoDataGenerator5 statisticsSampleGenerator];
    [statisticsSampleGenerator2 computeNoiseFromTime:person stdDev:pressure];
    v31 = v30;

    v13 = (v16 + v21 + v20 + v31);
  }

  return v13;
}

- (uint64_t)_computeMaxHRForDemoPerson:(double)person atTime:
{
  v5 = a2;
  demoDataGenerator = [self demoDataGenerator];
  v7 = [demoDataGenerator currentDateFromCurrentTime:person];

  birthDateComponents = [v5 birthDateComponents];

  v9 = HDDemoData_ageBetweenNSDateComponentsAndDate(birthDateComponents, v7);
  return 220 - v9;
}

- (double)_computeBodyTempInCelsiusForDemoPerson:(id)person atTime:(double)time addNoise:(BOOL)noise
{
  noiseCopy = noise;
  personCopy = person;
  demoDataGenerator = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  reproductiveHealthSampleGenerator = [demoDataGenerator reproductiveHealthSampleGenerator];
  v11 = [reproductiveHealthSampleGenerator _computeNextLuteinizingHormoneSurgeForDemoPerson:personCopy atTime:time] + 1;

  [personCopy menstrualPeriodFrequency];
  v13 = v12;
  v14 = v11 / v12;
  [personCopy menstrualPeriodFrequency];
  v16 = time % v15 + v14 * v13 - v11 + 15;
  if (self)
  {
    diurnalTempVariationTable = self->_diurnalTempVariationTable;
  }

  else
  {
    diurnalTempVariationTable = 0;
  }

  v18 = [(NSArray *)diurnalTempVariationTable objectAtIndexedSubscript:((time - time) * 24.0) % 24];
  [v18 doubleValue];
  v20 = v19;

  demoDataGenerator2 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  reproductiveHealthSampleGenerator2 = [demoDataGenerator2 reproductiveHealthSampleGenerator];
  _basalBodyTempMultiplier = [reproductiveHealthSampleGenerator2 _basalBodyTempMultiplier];
  v24 = [_basalBodyTempMultiplier objectAtIndexedSubscript:v16 % 28];
  [v24 doubleValue];
  v26 = v25;

  v27 = v20 * v26;
  [personCopy bodyTempFeverMultiplier];
  v29 = v27 * v28;
  demoDataGenerator3 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  generatorState = [demoDataGenerator3 generatorState];
  LODWORD(_basalBodyTempMultiplier) = [generatorState isExercising];

  v32 = 0.0;
  v33 = v27 + v29;
  v34 = 0.0;
  if (_basalBodyTempMultiplier)
  {
    [personCopy bodyTempExerciseMultiplier];
    v34 = v33 * v35;
  }

  if (noiseCopy)
  {
    demoDataGenerator4 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    statisticsSampleGenerator = [demoDataGenerator4 statisticsSampleGenerator];
    [personCopy bodyTempSampleNoiseStdDev];
    [statisticsSampleGenerator computeNoiseFromTime:time stdDev:v38];
    v32 = v39;
  }

  return v33 + v34 + v32 + -1.0;
}

@end