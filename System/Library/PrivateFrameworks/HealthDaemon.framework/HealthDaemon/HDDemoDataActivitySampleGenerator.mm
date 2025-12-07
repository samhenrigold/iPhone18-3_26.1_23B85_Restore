@interface HDDemoDataActivitySampleGenerator
- (BOOL)_isDemoPersonCoolingDown:(id)down atTime:(double)time;
- (BOOL)_isDemoPersonSedentary:(id)sedentary atTime:(double)time;
- (BOOL)_isDemoPersonWalking:(id)walking atTime:(double)time samplePeriod:(double)period;
- (HDDemoDataActivitySampleGenerator)init;
- (HDDemoDataActivitySampleGenerator)initWithCoder:(id)coder;
- (double)_computeExerciseTimeFromCurrentTime:(double)time mean:(double)mean stdDev:(double)dev;
- (double)_computePercentCooledForDemoPerson:(id)person atTime:(double)time;
- (double)_generateWorkoutDataSamplesForDemoPerson:(void *)person atTime:(void *)time sampleDate:(void *)date addFromWatch:(void *)watch objectCollection:(double)collection nextSampleTime:(double)sampleTime typeIdentifier:(double)identifier unit:(double)self0 sampleMean:(double)self1 sampleMeanStdDev:sampleFrequency:workoutState:;
- (double)flightsClimbedForDemoPerson:(double)person atTime:;
- (id)_computeDistanceWithDistanceRate:(double)rate DemoPerson:;
- (id)_computeFlightsClimbedForDemoPerson:(id)person atTime:(double)time;
- (id)_computeWalkingRunningDistanceWithStepCount:(void *)count demoPerson:;
- (id)_sumQuantity:(void *)quantity withQuantity:;
- (void)_generateCyclingFTPSamplesForDemoPerson:(void *)person sampleDate:(void *)date objectCollection:;
- (void)_generateEllipticalWorkoutDataWithObjectCollection:(void *)collection demoPerson:;
- (void)_generateHIITWorkoutDataWithObjectCollection:(void *)collection demoPerson:;
- (void)_generateRunningWorkoutDataWithObjectCollection:(void *)collection demoPerson:(void *)person workoutState:(void *)state;
- (void)_generateSwimmingSegmentDataWithStartDate:(uint64_t)date segmentTime:(uint64_t)time segmentDistance:(void *)distance numLaps:(void *)laps strokeStyle:(double)style objectCollection:(double)collection demoPerson:;
- (void)_generateSwimmingWorkoutDataWithObjectCollection:(void *)collection demoPerson:;
- (void)_generateUnderwaterDivingWorkoutDataWithObjectCollection:(void *)collection demoPerson:;
- (void)_generateWorkoutDataWithHeartRates:(void *)rates recoveryHeartRates:(void *)heartRates objectCollection:demoPerson:workoutState:;
- (void)_generateWorkoutEffortWithObjectCollection:(void *)collection forWorkout:(void *)workout dataType:;
- (void)_updateWorkoutStateWithActiveEnergyBurned:(uint64_t)burned distanceWalking:(void *)walking distanceCycling:(void *)cycling distanceCrossCountrySkiing:(void *)skiing distanceRowing:(void *)rowing distanceSkatingSports:(void *)sports distancePaddleSports:(void *)paddleSports distanceDownhillSnowSports:(void *)snowSports currentTime:(void *)time date:(void *)burned0 objectCollection:(void *)burned1 demoPerson:(void *)burned2;
- (void)encodeWithCoder:(id)coder;
- (void)generateFirstRunObjectsForDemoPerson:(id)person firstDate:(id)date objectCollection:(id)collection;
- (void)generateObjectsForDemoPerson:(id)person fromTime:(double)time toTime:(double)toTime currentDate:(id)date objectCollection:(id)collection;
- (void)setProfile:(id)profile provenance:(id)provenance;
- (void)setupWithDemoDataGenerator:(id)generator;
@end

@implementation HDDemoDataActivitySampleGenerator

- (HDDemoDataActivitySampleGenerator)init
{
  v7.receiver = self;
  v7.super_class = HDDemoDataActivitySampleGenerator;
  v2 = [(HDDemoDataBaseSampleGenerator *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_nextActiveCaloriesSampleTime = 0.0;
    v2->_nextPhysicalEffortSampleTime = 0.0;
    v2->_nextAppleStandHourSampleTime = 0.0;
    v2->_nextRestingCaloriesSampleTime = 0.0;
    v2->_nextFallSampleTime = 0.0;
    v2->_nextFlightsClimbedSampleTime = 0.0;
    v2->_nextStepsSampleTime = 0.0;
    v2->_nextExerciseMinuteTime = 0.0;
    v2->_nextHeartRateRecoveryStartTime = 0.0;
    v2->_nextHeartRateRecoveryStopTime = 0.0;
    v2->_nextRunningPowerSampleTime = 0.0;
    v2->_nextRunningStrideLengthSampleTime = 0.0;
    v2->_nextRunningVerticalOscillationSampleTime = 0.0;
    v2->_nextRunningGroundContactTimeSampleTime = 0.0;
    v2->_nextCyclingPowerSampleTime = 0.0;
    v2->_nextCyclingFTPSampleTime = 0.0;
    v2->_nextCyclingCadenceSampleTime = 0.0;
    v2->_nextCyclingSpeedSampleTime = 0.0;
    v2->_nextWaterTemperatureSampleTime = 0.0;
    v2->_nextCrossCountrySkiingSpeedSampleTime = 0.0;
    v2->_nextRowingSpeedSampleTime = 0.0;
    v2->_nextPaddleSportsSpeedSampleTime = 0.0;
    v2->_nextUVIndexSampleTime = 0.0;
    v2->_lastUVIndexPeakTime = 0.0;
    v2->_lastUVExposure = 0.0;
    v2->_lastUVIndexPeak = 0.0;
    currentWorkoutConfiguration = v2->_currentWorkoutConfiguration;
    v2->_currentWorkoutConfiguration = 0;

    workoutState = v3->_workoutState;
    v3->_workoutState = 0;
  }

  return v3;
}

- (HDDemoDataActivitySampleGenerator)initWithCoder:(id)coder
{
  coderCopy = coder;
  v41.receiver = self;
  v41.super_class = HDDemoDataActivitySampleGenerator;
  v5 = [(HDDemoDataBaseSampleGenerator *)&v41 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorNextActiveCaloriesSampleTimeKey"];
    v5->_nextActiveCaloriesSampleTime = v6;
    [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorNextPhysicalEffortSampleTimeKey"];
    v5->_nextPhysicalEffortSampleTime = v7;
    [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorNextAppleStandHourSampleTimeKey"];
    v5->_nextAppleStandHourSampleTime = v8;
    [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorNextRestingCaloriesSampleTimeKey"];
    v5->_nextRestingCaloriesSampleTime = v9;
    [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorNextFallSampleTimeKey"];
    v5->_nextFallSampleTime = v10;
    [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorNextFlightSampleTimeKey"];
    v5->_nextFlightsClimbedSampleTime = v11;
    [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorNextStepsSampleTimeKey"];
    v5->_nextStepsSampleTime = v12;
    [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorNextExerciseMinuteSampleTimeKey"];
    v5->_nextExerciseMinuteTime = v13;
    [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorNextRunningPowerSampleTimeKey"];
    v5->_nextRunningPowerSampleTime = v14;
    [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorNextRunningStrideLengthSampleTimeKey"];
    v5->_nextRunningStrideLengthSampleTime = v15;
    [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorNextRunningVerticalOscillationSampleTimeKey"];
    v5->_nextRunningVerticalOscillationSampleTime = v16;
    [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorNextRunningGroundContactTimeSampleTimeKey"];
    v5->_nextRunningGroundContactTimeSampleTime = v17;
    [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorNextCyclingPowerSampleTimeKey"];
    v5->_nextCyclingPowerSampleTime = v18;
    [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorNextCyclingFTPSampleTimeKey"];
    v5->_nextCyclingFTPSampleTime = v19;
    [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorNextCyclingCadenceSampleTimeKey"];
    v5->_nextCyclingCadenceSampleTime = v20;
    [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorNextCyclingSpeedSampleTimeKey"];
    v5->_nextCyclingSpeedSampleTime = v21;
    [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorNextWaterTemperatureSampleTimeKey"];
    v5->_nextWaterTemperatureSampleTime = v22;
    [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorNextCrossCountrySkiingSpeedSampleTimeKey"];
    v5->_nextCrossCountrySkiingSpeedSampleTime = v23;
    [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorNextRowingSpeedSampleTimeKey"];
    v5->_nextRowingSpeedSampleTime = v24;
    [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorNextPaddleSportsSpeedSampleTimeKey"];
    v5->_nextPaddleSportsSpeedSampleTime = v25;
    v26 = [coderCopy containsValueForKey:@"HDDemoDataActivitySampleGeneratorNextHeartRateRecoveryStartTimeKey"];
    v27 = 0.0;
    v28 = 0.0;
    if (v26)
    {
      [coderCopy decodeDoubleForKey:{@"HDDemoDataActivitySampleGeneratorNextHeartRateRecoveryStartTimeKey", 0.0}];
    }

    v5->_nextHeartRateRecoveryStartTime = v28;
    if ([coderCopy containsValueForKey:@"HDDemoDataActivitySampleGeneratorNextHeartRateRecoveryStopTimeKey"])
    {
      [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorNextHeartRateRecoveryStopTimeKey"];
      v27 = v29;
    }

    v5->_nextHeartRateRecoveryStopTime = v27;
    [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorNextUVIndexSampleTimeKey"];
    v5->_nextUVIndexSampleTime = v30;
    [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorLastUVIndexPeakTimeKey"];
    v5->_lastUVIndexPeakTime = v31;
    [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorLastUVExposureKey"];
    v5->_lastUVExposure = v32;
    [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorLastUVIndexPeakKey"];
    v5->_lastUVIndexPeak = v33;
    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HDDemoDataActivitySampleGeneratorLastActivityCache"];
    lastActivityCache = v5->_lastActivityCache;
    v5->_lastActivityCache = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HDDemoDataActivitySampleGeneratorCurrentWorkoutConfiguration"];
    currentWorkoutConfiguration = v5->_currentWorkoutConfiguration;
    v5->_currentWorkoutConfiguration = v36;

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HDDemoDataActivitySampleGeneratorWorkoutState"];
    workoutState = v5->_workoutState;
    v5->_workoutState = v38;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HDDemoDataActivitySampleGenerator;
  coderCopy = coder;
  [(HDDemoDataBaseSampleGenerator *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorNextActiveCaloriesSampleTimeKey" forKey:{self->_nextActiveCaloriesSampleTime, v5.receiver, v5.super_class}];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorNextPhysicalEffortSampleTimeKey" forKey:self->_nextPhysicalEffortSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorNextAppleStandHourSampleTimeKey" forKey:self->_nextAppleStandHourSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorNextRestingCaloriesSampleTimeKey" forKey:self->_nextRestingCaloriesSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorNextFallSampleTimeKey" forKey:self->_nextFallSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorNextFlightSampleTimeKey" forKey:self->_nextFlightsClimbedSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorNextStepsSampleTimeKey" forKey:self->_nextStepsSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorNextExerciseMinuteSampleTimeKey" forKey:self->_nextExerciseMinuteTime];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorNextHeartRateRecoveryStartTimeKey" forKey:self->_nextHeartRateRecoveryStartTime];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorNextHeartRateRecoveryStopTimeKey" forKey:self->_nextHeartRateRecoveryStopTime];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorNextRunningPowerSampleTimeKey" forKey:self->_nextRunningPowerSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorNextRunningStrideLengthSampleTimeKey" forKey:self->_nextRunningStrideLengthSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorNextRunningVerticalOscillationSampleTimeKey" forKey:self->_nextRunningVerticalOscillationSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorNextRunningGroundContactTimeSampleTimeKey" forKey:self->_nextRunningGroundContactTimeSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorNextCyclingCadenceSampleTimeKey" forKey:self->_nextCyclingCadenceSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorNextCyclingSpeedSampleTimeKey" forKey:self->_nextCyclingSpeedSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorNextCyclingPowerSampleTimeKey" forKey:self->_nextCyclingPowerSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorNextCyclingFTPSampleTimeKey" forKey:self->_nextCyclingFTPSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorNextWaterTemperatureSampleTimeKey" forKey:self->_nextWaterTemperatureSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorNextCrossCountrySkiingSpeedSampleTimeKey" forKey:self->_nextCrossCountrySkiingSpeedSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorNextRowingSpeedSampleTimeKey" forKey:self->_nextRowingSpeedSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorNextPaddleSportsSpeedSampleTimeKey" forKey:self->_nextPaddleSportsSpeedSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorNextUVIndexSampleTimeKey" forKey:self->_nextUVIndexSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorLastUVIndexPeakTimeKey" forKey:self->_lastUVIndexPeakTime];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorLastUVExposureKey" forKey:self->_lastUVExposure];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorLastUVIndexPeakKey" forKey:self->_lastUVIndexPeak];
  [coderCopy encodeObject:self->_lastActivityCache forKey:@"HDDemoDataActivitySampleGeneratorLastActivityCache"];
  [coderCopy encodeObject:self->_currentWorkoutConfiguration forKey:@"HDDemoDataActivitySampleGeneratorCurrentWorkoutConfiguration"];
  [coderCopy encodeObject:self->_workoutState forKey:@"HDDemoDataActivitySampleGeneratorWorkoutState"];
}

- (void)setProfile:(id)profile provenance:(id)provenance
{
  provenanceCopy = provenance;
  v8.receiver = self;
  v8.super_class = HDDemoDataActivitySampleGenerator;
  [(HDDemoDataBaseSampleGenerator *)&v8 setProfile:profile];
  provenance = self->_provenance;
  self->_provenance = provenanceCopy;
}

- (void)setupWithDemoDataGenerator:(id)generator
{
  generatorCopy = generator;
  v21.receiver = self;
  v21.super_class = HDDemoDataActivitySampleGenerator;
  [(HDDemoDataBaseSampleGenerator *)&v21 setupWithDemoDataGenerator:generatorCopy];
  if (![(HDDemoDataBaseSampleGenerator *)self createdFromNSKeyedUnarchiver])
  {
    demoPerson = [generatorCopy demoPerson];
    [demoPerson activeCaloriesSampleFrequency];
    self->_nextActiveCaloriesSampleTime = v6;

    demoPerson2 = [generatorCopy demoPerson];
    [demoPerson2 sedentarySampleFrequency];
    self->_nextAppleStandHourSampleTime = v8;

    demoPerson3 = [generatorCopy demoPerson];
    [demoPerson3 restingCaloriesSampleFrequency];
    self->_nextRestingCaloriesSampleTime = v10;

    demoPerson4 = [generatorCopy demoPerson];
    [demoPerson4 timeIncrementDuringExercise];
    self->_nextPhysicalEffortSampleTime = v12;

    demoPerson5 = [generatorCopy demoPerson];
    [demoPerson5 fallSampleFrequency];
    self->_nextFallSampleTime = v14;

    demoPerson6 = [generatorCopy demoPerson];
    [demoPerson6 flightsClimbedSampleTime];
    self->_nextFlightsClimbedSampleTime = v16;

    demoPerson7 = [generatorCopy demoPerson];
    [demoPerson7 uvIndexSampleFrequency];
    self->_nextUVIndexSampleTime = v18;

    demoPerson8 = [generatorCopy demoPerson];
    [demoPerson8 exerciseTimeSampleFrequency];
    self->_nextExerciseMinuteTime = v20;
  }
}

- (void)generateFirstRunObjectsForDemoPerson:(id)person firstDate:(id)date objectCollection:(id)collection
{
  v5.receiver = self;
  v5.super_class = HDDemoDataActivitySampleGenerator;
  [(HDDemoDataBaseSampleGenerator *)&v5 generateFirstRunObjectsForDemoPerson:person firstDate:date objectCollection:collection];
}

- (void)generateObjectsForDemoPerson:(id)person fromTime:(double)time toTime:(double)toTime currentDate:(id)date objectCollection:(id)collection
{
  personCopy = person;
  dateCopy = date;
  collectionCopy = collection;
  v638.receiver = self;
  v638.super_class = HDDemoDataActivitySampleGenerator;
  [(HDDemoDataBaseSampleGenerator *)&v638 generateObjectsForDemoPerson:personCopy fromTime:dateCopy toTime:collectionCopy currentDate:toTime objectCollection:toTime];
  countUnit = [MEMORY[0x277CCDAB0] countUnit];
  kilocalorieUnit = [MEMORY[0x277CCDAB0] kilocalorieUnit];
  v16 = personCopy;
  v17 = v16;
  v635 = collectionCopy;
  v636 = dateCopy;
  v620 = kilocalorieUnit;
  selfCopy = self;
  v625 = countUnit;
  if (!self)
  {

    v213 = v17;
    v18 = 0;
    goto LABEL_11;
  }

  if (self->_nextActiveCaloriesSampleTime > toTime)
  {
    goto LABEL_3;
  }

  [v16 activeCaloriesSampleFrequency];
  self->_nextActiveCaloriesSampleTime = v19 + self->_nextActiveCaloriesSampleTime;
  demoDataGenerator = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  generatorState = [demoDataGenerator generatorState];
  isExercising = [generatorState isExercising];

  demoDataGenerator2 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  v24 = demoDataGenerator2;
  if (isExercising)
  {
    generatorState2 = [demoDataGenerator2 generatorState];
    workoutConfiguration = [generatorState2 workoutConfiguration];
    [workoutConfiguration kcalRate];
    v28 = v27;

    v29 = MEMORY[0x277CCABB0];
    [v17 activeCaloriesSampleFrequency];
    v31 = v28 * v30;
    v32 = v29;
  }

  else
  {
    statisticsSampleGenerator = [demoDataGenerator2 statisticsSampleGenerator];
    [statisticsSampleGenerator randomDoubleFromGenerator];
    v68 = v67;

    if (v68 < 0.12)
    {
      goto LABEL_3;
    }

    demoDataGenerator3 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    sleepSampleGenerator = [demoDataGenerator3 sleepSampleGenerator];
    v71 = [sleepSampleGenerator isDemoPersonAwake:v17 atTime:toTime];

    if (!v71)
    {
      goto LABEL_3;
    }

    [v17 activeCaloriesSampleFrequency];
    if ([(HDDemoDataActivitySampleGenerator *)self _isDemoPersonWalking:v17 atTime:toTime samplePeriod:v72])
    {
      demoDataGenerator5 = [(HDDemoDataActivitySampleGenerator *)self flightsClimbedForDemoPerson:v17 atTime:toTime];
      [demoDataGenerator5 doubleValue];
      v75 = v74;
      [v17 activeCaloriesSampleFrequency];
      v77 = v76 / 0.000694444444;
      demoDataGenerator4 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      statisticsSampleGenerator2 = [demoDataGenerator4 statisticsSampleGenerator];
      [v17 activeCaloriesSampleFrequency];
      v81 = v80 / 0.000694444444;
      if (v75 == 0.0)
      {
        [statisticsSampleGenerator2 computeNoiseFromTime:toTime stdDev:v81 * 100.0];
        v83 = v82 + v77 * 864.0;
      }

      else
      {
        [statisticsSampleGenerator2 computeNoiseFromTime:toTime stdDev:v81 * 120.0];
        v210 = v209 + v77 * 1152.0;
        [demoDataGenerator5 doubleValue];
        v83 = v210 + v211;
      }
    }

    else
    {
      [v17 activeCaloriesSampleFrequency];
      v195 = v194 / 0.000694444444;
      demoDataGenerator5 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      demoDataGenerator4 = [demoDataGenerator5 statisticsSampleGenerator];
      [v17 activeCaloriesSampleFrequency];
      [demoDataGenerator4 computeNoiseFromTime:toTime stdDev:v196 / 0.000694444444 * 45.0];
      v83 = v197 + v195 * 244.8;
    }

    if (v83 <= 0.00000011920929)
    {
LABEL_3:
      v18 = 0;
      goto LABEL_7;
    }

    v212 = (arc4random_uniform(9u) + 1);
    v32 = MEMORY[0x277CCABB0];
    v31 = v83 / (v212 + 6.0);
  }

  v18 = [v32 numberWithDouble:v31];
LABEL_7:

  v33 = v17;
  if (self->_nextExerciseMinuteTime > toTime)
  {
LABEL_11:

    v40 = 0;
    v621 = 1;
    goto LABEL_12;
  }

  v34 = v33;
  v627 = v18;
  v629 = v17;
  [v33 exerciseTimeSampleFrequency];
  self->_nextExerciseMinuteTime = v35 + toTime;
  demoDataGenerator6 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  sleepSampleGenerator2 = [demoDataGenerator6 sleepSampleGenerator];
  selfCopy2 = self;
  v39 = [sleepSampleGenerator2 isDemoPersonSleeping:v34 atTime:toTime];

  if (v39)
  {
    self = selfCopy2;
    v17 = v629;
LABEL_10:
    v18 = v627;
    goto LABEL_11;
  }

  demoDataGenerator7 = [(HDDemoDataBaseSampleGenerator *)selfCopy2 demoDataGenerator];
  generatorState3 = [demoDataGenerator7 generatorState];
  isExercising2 = [generatorState3 isExercising];

  if (isExercising2)
  {
    [v34 timeIncrementDuringExercise];
    v87 = &unk_283CB1F80;
LABEL_54:

    goto LABEL_55;
  }

  [v34 timeIncrement];
  v147 = v146;
  [v34 activeCaloriesSampleFrequency];
  self = selfCopy2;
  v17 = v629;
  if ([(HDDemoDataActivitySampleGenerator *)selfCopy2 _isDemoPersonWalking:v34 atTime:toTime samplePeriod:v148])
  {
    v87 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:arc4random_uniform((v147 * 86400.0 / 60.0) / 8) + 1];
    if (v87)
    {
      goto LABEL_54;
    }
  }

  if (arc4random_uniform(0x64u) / 100.0 >= 0.1)
  {
    goto LABEL_10;
  }

  v87 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:arc4random_uniform(3u) + 1];

  if (!v87)
  {
    v40 = 0;
    v621 = 1;
    v18 = v627;
    goto LABEL_12;
  }

LABEL_55:
  v631 = v87;
  integerValue = [v87 integerValue];
  if (integerValue >= 1)
  {
    v150 = integerValue;
    v633 = *MEMORY[0x277CCC920];
    v151 = 60;
    do
    {
      v152 = [dateCopy dateByAddingTimeInterval:(v151 - 60)];
      v153 = [dateCopy dateByAddingTimeInterval:v151];
      v154 = MEMORY[0x277CCD800];
      v155 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:v633];
      v156 = MEMORY[0x277CCD7E8];
      minuteUnit = [MEMORY[0x277CCDAB0] minuteUnit];
      v158 = [v156 quantityWithUnit:minuteUnit doubleValue:1.0];
      v159 = [v154 quantitySampleWithType:v155 quantity:v158 startDate:v152 endDate:v153];

      dateCopy = v636;
      [v635 addObjectFromWatch:v159];

      v151 += 60;
      --v150;
    }

    while (v150);
  }

  v18 = v627;
  if (v627)
  {
    v42 = dateCopy;
    v621 = 0;
    collectionCopy = v635;
    kilocalorieUnit = v620;
    selfCopy3 = selfCopy;
    v17 = v629;
    goto LABEL_14;
  }

  v18 = [MEMORY[0x277CCABB0] numberWithDouble:arc4random_uniform(0xAu) / 100.0 + 0.5];
  v621 = 0;
  collectionCopy = v635;
  kilocalorieUnit = v620;
  self = selfCopy;
  v17 = v629;
  v40 = v87;
LABEL_12:
  selfCopy3 = self;
  if (v18)
  {
    v631 = v40;
    v42 = dateCopy;
LABEL_14:
    v43 = MEMORY[0x277CCD7E8];
    [v18 doubleValue];
    v44 = kilocalorieUnit;
    v45 = [v43 quantityWithUnit:kilocalorieUnit doubleValue:?];
    v46 = MEMORY[0x277CCD800];
    [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCC918]];
    v48 = v47 = v18;
    v49 = [v46 quantitySampleWithType:v48 quantity:v45 startDate:v42 endDate:v42];

    v619 = v49;
    [collectionCopy addObjectFromWatch:v49];

    v40 = v631;
    goto LABEL_16;
  }

  v42 = dateCopy;
  v44 = kilocalorieUnit;
  v47 = 0;
  v619 = 0;
LABEL_16:
  v50 = v17;
  v51 = v47;
  v52 = v40;
  v53 = selfCopy3;
  if (!selfCopy3)
  {
    v54 = v44;
    goto LABEL_19;
  }

  v54 = v44;
  if (selfCopy3->_nextAppleStandHourSampleTime > toTime)
  {
    selfCopy3 = 0;
LABEL_19:
    v55 = v42;
LABEL_34:
    v60 = v53;
    goto LABEL_35;
  }

  [v50 sedentarySampleFrequency];
  selfCopy3->_nextAppleStandHourSampleTime = v56 + selfCopy3->_nextAppleStandHourSampleTime;
  v55 = v42;
  if (!v621)
  {
    selfCopy3 = &unk_283CB1F98;
    goto LABEL_34;
  }

  demoDataGenerator8 = [(HDDemoDataBaseSampleGenerator *)selfCopy3 demoDataGenerator];
  sleepSampleGenerator3 = [demoDataGenerator8 sleepSampleGenerator];
  v59 = [sleepSampleGenerator3 isDemoPersonAwake:v50 atTime:toTime];

  v60 = v53;
  if (v59)
  {
    [v50 sedentarySampleFrequency];
    selfCopy3 = &unk_283CB1F98;
    if (([v53 _isDemoPersonWalking:v50 atTime:toTime samplePeriod:v61] & 1) == 0)
    {
      demoDataGenerator9 = [v53 demoDataGenerator];
      statisticsSampleGenerator3 = [demoDataGenerator9 statisticsSampleGenerator];
      [statisticsSampleGenerator3 pseudoRandomDoubleFromTime:toTime];
      v65 = v64;

      if (v65 >= 0.75)
      {
        selfCopy3 = &unk_283CB1FB0;
      }
    }
  }

  else if (v51)
  {
    selfCopy3 = &unk_283CB1FB0;
  }

  else
  {
    selfCopy3 = 0;
  }

LABEL_35:
  v622 = v52;

  v618 = v51;
  v88 = selfCopy3;
  if (v88)
  {
    demoDataGenerator10 = [v60 demoDataGenerator];
    gregorianCalendar = [demoDataGenerator10 gregorianCalendar];

    v91 = [gregorianCalendar components:62 fromDate:v55];
    v92 = [gregorianCalendar dateFromComponents:v91];
    v93 = [gregorianCalendar dateByAddingUnit:32 value:1 toDate:v92 options:0];
    v94 = [MEMORY[0x277CCD720] categoryTypeForIdentifier:*MEMORY[0x277CCB8E0]];
    v95 = [MEMORY[0x277CCD0B0] categorySampleWithType:v94 value:-[HDDemoDataActivitySampleGenerator integerValue](v88 startDate:"integerValue") endDate:{v92, v93}];
    [v635 addObjectFromWatch:v95];

    v60 = selfCopy;
  }

  v630 = v88;
  v96 = v50;
  v97 = v96;
  if (!v60)
  {

    v214 = v97;
    v215 = v214;
    v122 = 0;
    v129 = 0;
    v98 = v635;
    goto LABEL_88;
  }

  v98 = v635;
  if (v60[7] <= toTime)
  {
    [v96 restingCaloriesSampleFrequency];
    v60[7] = v101 + v60[7];
    demoDataGenerator11 = [v60 demoDataGenerator];
    bodySampleGenerator = [demoDataGenerator11 bodySampleGenerator];
    [bodySampleGenerator lastWeightInKg];
    v105 = v104;

    demoDataGenerator12 = [v60 demoDataGenerator];
    bodySampleGenerator2 = [demoDataGenerator12 bodySampleGenerator];
    [bodySampleGenerator2 lastHeightInCm];
    v109 = v108;

    demoDataGenerator13 = [v60 demoDataGenerator];
    v111 = [demoDataGenerator13 currentDateFromCurrentTime:toTime];

    birthDateComponents = [v97 birthDateComponents];
    v113 = HDDemoData_ageBetweenNSDateComponentsAndDate(birthDateComponents, v111);

    +[HDDemoDataFormula computeBasalMetabolicRateFromWeight:height:age:sex:](HDDemoDataFormula, "computeBasalMetabolicRateFromWeight:height:age:sex:", [v97 biologicalSex], v105, v109, v113);
    v115 = v114;
    [v97 restingCaloriesSampleFrequency];
    v117 = v115 * v116;
    v118 = MEMORY[0x277CCABB0];
    demoDataGenerator14 = [v60 demoDataGenerator];
    statisticsSampleGenerator4 = [demoDataGenerator14 statisticsSampleGenerator];
    [v97 restingCaloriesSampleFrequency];
    [statisticsSampleGenerator4 computeNoiseFromTime:toTime stdDev:v117 * v121];
    v122 = [v118 numberWithDouble:v117 + v122];

    if (!v122)
    {
      goto LABEL_43;
    }

    v123 = MEMORY[0x277CCD7E8];
    [v122 doubleValue];
    v100 = [v123 quantityWithUnit:v54 doubleValue:?];
    v124 = MEMORY[0x277CCD800];
    v125 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCC960]];
    v126 = [v124 quantitySampleWithType:v125 quantity:v100 startDate:v55 endDate:v55];

    [v635 addObjectFromWatch:v126];
  }

  else
  {
    v122 = 0;
    v100 = v96;
  }

LABEL_43:
  v127 = v97;
  v128 = v127;
  if (v60[8] > toTime)
  {
    v129 = 0;
    v130 = v127;
LABEL_63:

    goto LABEL_64;
  }

  [v127 timeIncrementDuringExercise];
  v132 = v131;
  demoDataGenerator15 = [v60 demoDataGenerator];
  statisticsSampleGenerator5 = [demoDataGenerator15 statisticsSampleGenerator];
  [v128 genericSampleTimeNoiseStdDev];
  [statisticsSampleGenerator5 computeNoiseFromTime:toTime stdDev:v135];
  v60[8] = v132 + v136 + v60[8];

  demoDataGenerator16 = [v60 demoDataGenerator];
  sleepSampleGenerator4 = [demoDataGenerator16 sleepSampleGenerator];
  v139 = [sleepSampleGenerator4 isDemoPersonSleeping:v128 atTime:toTime];

  if (v139)
  {
    v140 = MEMORY[0x277CCABB0];
    v141 = arc4random_uniform(0x14u) / 100.0;
  }

  else
  {
    demoDataGenerator17 = [v60 demoDataGenerator];
    generatorState4 = [demoDataGenerator17 generatorState];
    isExercising3 = [generatorState4 isExercising];

    v140 = MEMORY[0x277CCABB0];
    if (isExercising3)
    {
      v145 = arc4random_uniform(0x32u) / 100.0 + 3.0;
      v141 = v145 + arc4random_uniform(0x12u);
    }

    else
    {
      v141 = arc4random_uniform(0x1F4u) / 100.0 + 0.5;
    }
  }

  v129 = [v140 numberWithDouble:v141];

  if (v129)
  {
    v160 = MEMORY[0x277CCD7E8];
    v161 = [MEMORY[0x277CCDAB0] unitFromString:@"kcal/(kg*hr)"];
    [v129 doubleValue];
    v130 = [v160 quantityWithUnit:v161 doubleValue:?];

    v162 = MEMORY[0x277CCD800];
    v163 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCC08]];
    v164 = [v162 quantitySampleWithType:v163 quantity:v130 startDate:v55 endDate:v55];

    [v635 addObjectFromWatch:v164];
    goto LABEL_63;
  }

LABEL_64:
  v165 = v128;
  if (v60[9] <= toTime)
  {
    v166 = v165;
    [v165 fallSampleFrequency];
    v168 = v167;
    demoDataGenerator18 = [v60 demoDataGenerator];
    statisticsSampleGenerator6 = [demoDataGenerator18 statisticsSampleGenerator];
    [v166 genericSampleTimeNoiseStdDev];
    [statisticsSampleGenerator6 computeNoiseFromTime:toTime stdDev:v171];
    v60[9] = v168 + v172 + v60[9];

    demoDataGenerator19 = [v60 demoDataGenerator];
    sleepSampleGenerator5 = [demoDataGenerator19 sleepSampleGenerator];
    v175 = [sleepSampleGenerator5 isDemoPersonSleeping:v166 atTime:toTime];

    if ((v175 & 1) == 0)
    {
      [v166 fallsDailyMean];
      v177 = v176;
      demoDataGenerator20 = [v60 demoDataGenerator];
      statisticsSampleGenerator7 = [demoDataGenerator20 statisticsSampleGenerator];
      [v166 fallsDailyStdDev];
      [statisticsSampleGenerator7 computeNoiseFromTime:toTime stdDev:v180];
      v182 = v177 + v181;

      demoDataGenerator21 = [v60 demoDataGenerator];
      sleepSampleGenerator6 = [demoDataGenerator21 sleepSampleGenerator];
      [sleepSampleGenerator6 computeAwakeTimeForDemoPerson:v166 atTime:toTime];
      v186 = v185;

      [v166 fallSampleFrequency];
      v188 = v182 / (v186 / v187);
      birthDateComponents2 = [v166 birthDateComponents];
      demoDataGenerator22 = [v60 demoDataGenerator];
      v191 = [demoDataGenerator22 currentDateFromCurrentTime:toTime];
      v192 = HDDemoData_ageBetweenNSDateComponentsAndDate(birthDateComponents2, v191);

      if (v192 >= 5)
      {
        v60 = selfCopy;
        if ((v192 - 11) >= 0xB)
        {
          v193 = v192 < 0x33 ? 0.4 : ((130 - v192) / 130);
        }

        else
        {
          v193 = 0.8;
        }
      }

      else
      {
        v193 = 1.3;
        v60 = selfCopy;
      }

      v198 = v188 * v193;
      demoDataGenerator23 = [v60 demoDataGenerator];
      statisticsSampleGenerator8 = [demoDataGenerator23 statisticsSampleGenerator];
      [statisticsSampleGenerator8 pseudoRandomDoubleFromTime:toTime];
      v202 = v201;

      if (v202 < v198)
      {

        v203 = &unk_283CB1F80;
        v204 = MEMORY[0x277CCD7E8];
        v615 = &unk_283CB1F80;
        [&unk_283CB1F80 doubleValue];
        v205 = [v204 quantityWithUnit:v625 doubleValue:?];
        v206 = MEMORY[0x277CCD800];
        v207 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCBE0]];
        v208 = [v206 quantitySampleWithType:v207 quantity:v205 startDate:v55 endDate:v55];

        [v635 addObjectFromPhone:v208];
        goto LABEL_89;
      }
    }
  }

LABEL_88:

  v615 = 0;
LABEL_89:
  if ([MEMORY[0x277CC1D18] isFloorCountingAvailable])
  {
    v216 = [(HDDemoDataActivitySampleGenerator *)v60 flightsClimbedForDemoPerson:v97 atTime:toTime];
    v217 = v216;
    if (v216)
    {
      v218 = MEMORY[0x277CCD7E8];
      [v216 doubleValue];
      v219 = [v218 quantityWithUnit:v625 doubleValue:?];
      v220 = MEMORY[0x277CCD800];
      v221 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCB70]];
      v632 = v219;
      v222 = [v220 quantitySampleWithType:v221 quantity:v219 startDate:v55 endDate:v55];

      [v98 addObjectFromWatch:v222];
    }

    else
    {
      v632 = 0;
    }
  }

  else
  {
    v632 = 0;
  }

  v223 = v97;
  if (!v60 || v60[11] > toTime)
  {
    goto LABEL_101;
  }

  demoDataGenerator24 = [v60 demoDataGenerator];
  generatorState5 = [demoDataGenerator24 generatorState];
  isExercising4 = [generatorState5 isExercising];

  if (isExercising4)
  {
    [v223 stepsSampleFrequencyDuringExercise];
  }

  else
  {
    [v223 stepsSampleFrequency];
  }

  v228 = v227;
  v60[11] = v227 + toTime;
  demoDataGenerator25 = [v60 demoDataGenerator];
  sleepSampleGenerator7 = [demoDataGenerator25 sleepSampleGenerator];
  v231 = [sleepSampleGenerator7 isDemoPersonSleeping:v223 atTime:toTime];

  if (v231)
  {
LABEL_101:
    v232 = v129;
    v233 = 0;
    v234 = 0;
    v628 = 0;
    v235 = v223;
LABEL_102:
    v236 = v122;
    v614 = v233;

    [(HDDemoDataActivitySampleGenerator *)v60 _computeWalkingRunningDistanceWithStepCount:v628 demoPerson:v223];
    goto LABEL_103;
  }

  if ([v60 _isDemoPersonWalking:v223 atTime:toTime samplePeriod:v228])
  {
    demoDataGenerator26 = [v60 demoDataGenerator];
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v541 = [demoDataGenerator26 isDemoDataTimeInWeekend:currentCalendar calendar:toTime];

    if (v541)
    {
      [v223 weekendSleepParameters];
    }

    else
    {
      [v223 weekdaySleepParameters];
    }
    demoDataGenerator31 = ;
    demoDataGenerator27 = [v60 demoDataGenerator];
    sleepSampleGenerator8 = [demoDataGenerator27 sleepSampleGenerator];
    [demoDataGenerator31 bedtime];
    v554 = v553;
    [v223 bedtimeNoiseStdDev];
    [sleepSampleGenerator8 computeSleepTimeFromCurrentTime:toTime mean:v554 stdDev:v555];
    v557 = v556;

    demoDataGenerator28 = [v60 demoDataGenerator];
    sleepSampleGenerator9 = [demoDataGenerator28 sleepSampleGenerator];
    [demoDataGenerator31 wakeUpTime];
    v561 = v560;
    [v223 wakeUpTimeNoiseStdDev];
    [sleepSampleGenerator9 computeSleepTimeFromCurrentTime:toTime mean:v561 stdDev:v562];
    v564 = v563;

    demoDataGenerator29 = [v60 demoDataGenerator];
    generatorState6 = [demoDataGenerator29 generatorState];
    isRunning = [generatorState6 isRunning];

    if (isRunning)
    {
      v568 = v228 / 0.000694444444 * 100.0;
      demoDataGenerator30 = [v60 demoDataGenerator];
      statisticsSampleGenerator9 = [demoDataGenerator30 statisticsSampleGenerator];
      v571 = statisticsSampleGenerator9;
      v572 = 20.0;
    }

    else
    {
      v568 = (arc4random_uniform(0x3E8u) + 9000) / ((v557 - v564) * 0.6 / v228);
      demoDataGenerator30 = [v60 demoDataGenerator];
      statisticsSampleGenerator9 = [demoDataGenerator30 statisticsSampleGenerator];
      v571 = statisticsSampleGenerator9;
      v572 = 1.3;
    }

    [statisticsSampleGenerator9 computeNoiseFromTime:toTime stdDev:v568 / v572];
    v574 = v568 + v573;

    v233 = [MEMORY[0x277CCABB0] numberWithInteger:fabs(v568 + v574)];
  }

  else
  {
    v547 = MEMORY[0x277CCABB0];
    demoDataGenerator31 = [v60 demoDataGenerator];
    statisticsSampleGenerator10 = [demoDataGenerator31 statisticsSampleGenerator];
    [statisticsSampleGenerator10 computeNoiseFromTime:toTime stdDev:10.0];
    v233 = [v547 numberWithInteger:v550];
  }

  v232 = v129;
  if (v233)
  {
    demoDataGenerator32 = [v60 demoDataGenerator];
    generatorState7 = [demoDataGenerator32 generatorState];
    isExercising5 = [generatorState7 isExercising];

    v235 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCC70]];
    if (isExercising5)
    {
      v628 = 0;
      v578 = v625;
      v579 = v635;
    }

    else
    {
      [v233 doubleValue];
      v578 = v625;
      v628 = [MEMORY[0x277CCD7E8] quantityWithUnit:v625 doubleValue:fabs(v580)];
      v581 = [MEMORY[0x277CCD800] quantitySampleWithType:v235 quantity:? startDate:? endDate:?];
      v579 = v635;
      [v635 addObjectFromPhone:v581];
    }

    [v233 doubleValue];
    v234 = [MEMORY[0x277CCD7E8] quantityWithUnit:v578 doubleValue:fabs(v582 + arc4random_uniform(5u))];
    v583 = [MEMORY[0x277CCD800] quantitySampleWithType:v235 quantity:v234 startDate:v55 endDate:v55];
    [v579 addObjectFromWatch:v583];

    goto LABEL_102;
  }

  v236 = v122;
  v614 = 0;
  v234 = 0;
  v628 = 0;
  [(HDDemoDataActivitySampleGenerator *)v60 _computeWalkingRunningDistanceWithStepCount:v223 demoPerson:?];
  v237 = LABEL_103:;
  v238 = MEMORY[0x277CCCB40];
  if (v237)
  {
    v239 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCB40]];
    v240 = [MEMORY[0x277CCD800] quantitySampleWithType:v239 quantity:v237 startDate:v55 endDate:v55];
    [v635 addObjectFromPhone:v240];
  }

  v623 = v237;
  v241 = [(HDDemoDataActivitySampleGenerator *)v60 _computeWalkingRunningDistanceWithStepCount:v234 demoPerson:v223];
  v605 = v241;
  if (v241)
  {
    v242 = v241;
    v243 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*v238];
    v613 = [MEMORY[0x277CCD800] quantitySampleWithType:v243 quantity:v242 startDate:v55 endDate:v55];
    [v635 addObjectFromWatch:?];
  }

  else
  {
    v613 = 0;
  }

  v244 = v236;
  v245 = v234;
  v634 = v223;
  v246 = v232;
  if (v60)
  {
    demoDataGenerator33 = [v60 demoDataGenerator];
    generatorState8 = [demoDataGenerator33 generatorState];
    isExercising6 = [generatorState8 isExercising];

    v250 = v635;
    if (isExercising6 && ([v60 demoDataGenerator], v251 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v251, "generatorState"), v252 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v252, "workoutConfiguration"), v253 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v253, "distanceCyclingRateInMiles"), v255 = v254, v253, v252, v251, objc_msgSend(v634, "stepsSampleFrequencyDuringExercise"), v257 = v255 * v256, v257 > 0.00000011920929))
    {
      v258 = MEMORY[0x277CCD7E8];
      mileUnit = [MEMORY[0x277CCDAB0] mileUnit];
      v260 = [v258 quantityWithUnit:mileUnit doubleValue:v257];
    }

    else
    {
      v260 = 0;
    }
  }

  else
  {
    v260 = 0;
    v250 = v635;
  }

  if (v260)
  {
    v261 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCB10]];
    v612 = [MEMORY[0x277CCD800] quantitySampleWithType:v261 quantity:v260 startDate:v55 endDate:v55];
    [v250 addObjectFromWatch:?];
  }

  else
  {
    v612 = 0;
  }

  demoDataGenerator34 = [v60 demoDataGenerator];
  generatorState9 = [demoDataGenerator34 generatorState];
  workoutConfiguration2 = [generatorState9 workoutConfiguration];
  [workoutConfiguration2 distanceCrossCountrySkiingRateInMeters];
  v266 = v265;

  v267 = [(HDDemoDataActivitySampleGenerator *)v60 _computeDistanceWithDistanceRate:v634 DemoPerson:v266];
  v626 = v245;
  if (v267)
  {
    v268 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCB08]];
    v611 = [MEMORY[0x277CCD800] quantitySampleWithType:v268 quantity:v267 startDate:v55 endDate:v55];
    [v250 addObjectFromWatch:?];
  }

  else
  {
    v611 = 0;
  }

  demoDataGenerator35 = [(HDDemoDataBaseSampleGenerator *)selfCopy demoDataGenerator];
  generatorState10 = [demoDataGenerator35 generatorState];
  workoutConfiguration3 = [generatorState10 workoutConfiguration];
  [workoutConfiguration3 distanceRowingRateInMeters];
  v273 = v272;

  v274 = [(HDDemoDataActivitySampleGenerator *)selfCopy _computeDistanceWithDistanceRate:v634 DemoPerson:v273];
  if (v274)
  {
    v275 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCB28]];
    v610 = [MEMORY[0x277CCD800] quantitySampleWithType:v275 quantity:v274 startDate:v636 endDate:v636];
    [v250 addObjectFromWatch:?];
  }

  else
  {
    v610 = 0;
  }

  demoDataGenerator36 = [(HDDemoDataBaseSampleGenerator *)selfCopy demoDataGenerator];
  generatorState11 = [demoDataGenerator36 generatorState];
  workoutConfiguration4 = [generatorState11 workoutConfiguration];
  [workoutConfiguration4 distanceSkatingSportsRateInMeters];
  v280 = v279;

  v281 = [(HDDemoDataActivitySampleGenerator *)selfCopy _computeDistanceWithDistanceRate:v634 DemoPerson:v280];
  if (v281)
  {
    v282 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCB30]];
    v609 = [MEMORY[0x277CCD800] quantitySampleWithType:v282 quantity:v281 startDate:v636 endDate:v636];
    [v635 addObjectFromWatch:?];
  }

  else
  {
    v609 = 0;
  }

  v616 = v246;
  demoDataGenerator37 = [(HDDemoDataBaseSampleGenerator *)selfCopy demoDataGenerator];
  generatorState12 = [demoDataGenerator37 generatorState];
  workoutConfiguration5 = [generatorState12 workoutConfiguration];
  [workoutConfiguration5 distancePaddleSportsRateInMeters];
  v287 = v286;

  v288 = [(HDDemoDataActivitySampleGenerator *)selfCopy _computeDistanceWithDistanceRate:v634 DemoPerson:v287];
  v617 = v244;
  if (v288)
  {
    v289 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCB20]];
    v608 = [MEMORY[0x277CCD800] quantitySampleWithType:v289 quantity:v288 startDate:v636 endDate:v636];
    [v635 addObjectFromWatch:?];
  }

  else
  {
    v608 = 0;
  }

  demoDataGenerator38 = [(HDDemoDataBaseSampleGenerator *)selfCopy demoDataGenerator];
  generatorState13 = [demoDataGenerator38 generatorState];
  workoutConfiguration6 = [generatorState13 workoutConfiguration];
  [workoutConfiguration6 distanceDownhillSnowSportsRateInMeters];
  v294 = v293;

  v295 = v634;
  v296 = [(HDDemoDataActivitySampleGenerator *)selfCopy _computeDistanceWithDistanceRate:v634 DemoPerson:v294];
  if (v296)
  {
    v297 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCB18]];
    v607 = [MEMORY[0x277CCD800] quantitySampleWithType:v297 quantity:v296 startDate:v636 endDate:v636];
    [v635 addObjectFromWatch:?];
  }

  else
  {
    v607 = 0;
  }

  v298 = selfCopy;
  demoDataGenerator39 = [(HDDemoDataBaseSampleGenerator *)selfCopy demoDataGenerator];
  generatorState14 = [demoDataGenerator39 generatorState];
  isRunning2 = [generatorState14 isRunning];

  v302 = v635;
  v303 = 0x277CCD000uLL;
  if (selfCopy && isRunning2)
  {
    v304 = v635;
    v305 = v636;
    v306 = v634;
    [v306 runningPowerMean];
    v308 = v307;
    [v306 runningPowerMeanStdDev];
    v310 = v309;
    [v306 timeIncrementDuringExercise];
    v312 = v311;
    nextRunningPowerSampleTime = selfCopy->_nextRunningPowerSampleTime;
    v314 = *MEMORY[0x277CCCC38];
    wattUnit = [MEMORY[0x277CCDAB0] wattUnit];
    v316 = [HDDemoDataActivitySampleGenerator _generateWorkoutDataSamplesForDemoPerson:selfCopy atTime:v305 sampleDate:v304 addFromWatch:v314 objectCollection:wattUnit nextSampleTime:selfCopy->_workoutState typeIdentifier:toTime unit:nextRunningPowerSampleTime sampleMean:v308 sampleMeanStdDev:v310 sampleFrequency:v312 workoutState:?];

    selfCopy->_nextRunningPowerSampleTime = v316;
    v317 = v304;
    v318 = v305;
    v319 = v306;
    [v319 runningStrideLengthMean];
    v321 = v320;
    [v319 runningStrideLengthMeanStdDev];
    v323 = v322;
    [v319 timeIncrementDuringExercise];
    v325 = v324;
    nextRunningStrideLengthSampleTime = selfCopy->_nextRunningStrideLengthSampleTime;
    v327 = *MEMORY[0x277CCCC48];
    meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
    v329 = [HDDemoDataActivitySampleGenerator _generateWorkoutDataSamplesForDemoPerson:selfCopy atTime:v318 sampleDate:v317 addFromWatch:v327 objectCollection:meterUnit nextSampleTime:selfCopy->_workoutState typeIdentifier:toTime unit:nextRunningStrideLengthSampleTime sampleMean:v321 sampleMeanStdDev:v323 sampleFrequency:v325 workoutState:?];

    selfCopy->_nextRunningStrideLengthSampleTime = v329;
    v330 = v317;
    v331 = v318;
    v332 = v319;
    [v332 runningVerticalOscillationMean];
    v334 = v333;
    [v332 runningVerticalOscillationMeanStdDev];
    v336 = v335;
    [v332 timeIncrementDuringExercise];
    v338 = v337;
    nextRunningVerticalOscillationSampleTime = selfCopy->_nextRunningVerticalOscillationSampleTime;
    v340 = *MEMORY[0x277CCCC50];
    meterUnit2 = [MEMORY[0x277CCDAB0] meterUnit];
    v342 = [HDDemoDataActivitySampleGenerator _generateWorkoutDataSamplesForDemoPerson:selfCopy atTime:v331 sampleDate:v330 addFromWatch:v340 objectCollection:meterUnit2 nextSampleTime:selfCopy->_workoutState typeIdentifier:toTime unit:nextRunningVerticalOscillationSampleTime sampleMean:v334 sampleMeanStdDev:v336 sampleFrequency:v338 workoutState:?];

    selfCopy->_nextRunningVerticalOscillationSampleTime = v342;
    v343 = v330;
    v344 = v331;
    v345 = v332;
    [v345 runningGroundContactTimeMean];
    v347 = v346;
    [v345 runningGroundContactTimeMeanStdDev];
    v349 = v348;
    [v345 timeIncrementDuringExercise];
    v351 = v350;
    nextRunningGroundContactTimeSampleTime = selfCopy->_nextRunningGroundContactTimeSampleTime;
    v353 = *MEMORY[0x277CCCC30];
    v354 = [MEMORY[0x277CCDAB0] unitFromString:@"ms"];
    v355 = [HDDemoDataActivitySampleGenerator _generateWorkoutDataSamplesForDemoPerson:selfCopy atTime:v344 sampleDate:v343 addFromWatch:v353 objectCollection:v354 nextSampleTime:selfCopy->_workoutState typeIdentifier:toTime unit:nextRunningGroundContactTimeSampleTime sampleMean:v347 sampleMeanStdDev:v349 sampleFrequency:v351 workoutState:?];

    v298 = selfCopy;
    selfCopy->_nextRunningGroundContactTimeSampleTime = v355;
  }

  demoDataGenerator40 = [v298 demoDataGenerator];
  generatorState15 = [demoDataGenerator40 generatorState];
  isCycling = [generatorState15 isCycling];

  if (v298 && isCycling)
  {
    v359 = v635;
    v360 = v636;
    v361 = v634;
    [v361 cyclingPowerMean];
    v363 = v362;
    [v361 cyclingPowerMeanStdDev];
    v365 = v364;
    [v361 timeIncrementDuringExercise];
    v367 = v366;
    nextCyclingPowerSampleTime = selfCopy->_nextCyclingPowerSampleTime;
    v369 = *MEMORY[0x277CCC9C0];
    wattUnit2 = [MEMORY[0x277CCDAB0] wattUnit];
    v371 = [HDDemoDataActivitySampleGenerator _generateWorkoutDataSamplesForDemoPerson:selfCopy atTime:v360 sampleDate:v359 addFromWatch:v369 objectCollection:wattUnit2 nextSampleTime:selfCopy->_workoutState typeIdentifier:toTime unit:nextCyclingPowerSampleTime sampleMean:v363 sampleMeanStdDev:v365 sampleFrequency:v367 workoutState:?];

    selfCopy->_nextCyclingPowerSampleTime = v371;
    v372 = v359;
    v373 = v360;
    v374 = v361;
    [v374 cyclingCadenceMean];
    v376 = v375;
    [v374 cyclingCadenceMeanStdDev];
    v378 = v377;
    [v374 timeIncrementDuringExercise];
    v380 = v379;
    nextCyclingCadenceSampleTime = selfCopy->_nextCyclingCadenceSampleTime;
    v382 = *MEMORY[0x277CCC9B0];
    v383 = [MEMORY[0x277CCDAB0] unitFromString:@"count/min"];
    v384 = [HDDemoDataActivitySampleGenerator _generateWorkoutDataSamplesForDemoPerson:selfCopy atTime:v373 sampleDate:v372 addFromWatch:v382 objectCollection:v383 nextSampleTime:selfCopy->_workoutState typeIdentifier:toTime unit:nextCyclingCadenceSampleTime sampleMean:v376 sampleMeanStdDev:v378 sampleFrequency:v380 workoutState:?];

    selfCopy->_nextCyclingCadenceSampleTime = v384;
    v385 = v372;
    v386 = v373;
    v387 = v374;
    [v387 cyclingSpeedMean];
    v389 = v388;
    [v387 speedMeanStdDev];
    v391 = v390;
    [v387 timeIncrementDuringExercise];
    v393 = v392;
    nextCyclingSpeedSampleTime = selfCopy->_nextCyclingSpeedSampleTime;
    v395 = *MEMORY[0x277CCC9C8];
    v396 = [MEMORY[0x277CCDAB0] unitFromString:@"m/s"];
    v397 = [HDDemoDataActivitySampleGenerator _generateWorkoutDataSamplesForDemoPerson:selfCopy atTime:v386 sampleDate:v385 addFromWatch:v395 objectCollection:v396 nextSampleTime:selfCopy->_workoutState typeIdentifier:toTime unit:nextCyclingSpeedSampleTime sampleMean:v389 sampleMeanStdDev:v391 sampleFrequency:v393 workoutState:?];

    v298 = selfCopy;
    selfCopy->_nextCyclingSpeedSampleTime = v397;
  }

  demoDataGenerator41 = [v298 demoDataGenerator];
  generatorState16 = [demoDataGenerator41 generatorState];
  isUnderwaterDiving = [generatorState16 isUnderwaterDiving];

  if (v298 && isUnderwaterDiving)
  {
    v401 = v635;
    v402 = v636;
    v403 = v634;
    [v403 underwaterDivingWaterTemperatureMean];
    v405 = v404;
    [v403 underwaterDivingWaterTemperatureStdDev];
    v407 = v406;
    [v403 timeIncrementDuringExercise];
    v409 = v408;
    nextWaterTemperatureSampleTime = selfCopy->_nextWaterTemperatureSampleTime;
    v411 = *MEMORY[0x277CCCCD0];
    degreeCelsiusUnit = [MEMORY[0x277CCDAB0] degreeCelsiusUnit];
    v413 = [HDDemoDataActivitySampleGenerator _generateWorkoutDataSamplesForDemoPerson:selfCopy atTime:v402 sampleDate:v401 addFromWatch:v411 objectCollection:degreeCelsiusUnit nextSampleTime:selfCopy->_workoutState typeIdentifier:toTime unit:nextWaterTemperatureSampleTime sampleMean:v405 sampleMeanStdDev:v407 sampleFrequency:v409 workoutState:?];

    v298 = selfCopy;
    selfCopy->_nextWaterTemperatureSampleTime = v413;
  }

  demoDataGenerator42 = [v298 demoDataGenerator];
  generatorState17 = [demoDataGenerator42 generatorState];
  isCrossCountrySkiing = [generatorState17 isCrossCountrySkiing];

  if (v298 && isCrossCountrySkiing)
  {
    v417 = v635;
    v418 = v636;
    v419 = v634;
    [v419 crossCountrySkiingSpeedMean];
    v421 = v420;
    [v419 speedMeanStdDev];
    v423 = v422;
    [v419 timeIncrementDuringExercise];
    v425 = v424;
    nextCrossCountrySkiingSpeedSampleTime = selfCopy->_nextCrossCountrySkiingSpeedSampleTime;
    v427 = *MEMORY[0x277CCC9A8];
    v428 = [MEMORY[0x277CCDAB0] unitFromString:@"m/s"];
    v429 = [HDDemoDataActivitySampleGenerator _generateWorkoutDataSamplesForDemoPerson:selfCopy atTime:v418 sampleDate:v417 addFromWatch:v427 objectCollection:v428 nextSampleTime:selfCopy->_workoutState typeIdentifier:toTime unit:nextCrossCountrySkiingSpeedSampleTime sampleMean:v421 sampleMeanStdDev:v423 sampleFrequency:v425 workoutState:?];

    v298 = selfCopy;
    selfCopy->_nextCrossCountrySkiingSpeedSampleTime = v429;
  }

  demoDataGenerator43 = [v298 demoDataGenerator];
  generatorState18 = [demoDataGenerator43 generatorState];
  isRowing = [generatorState18 isRowing];

  if (v298 && isRowing)
  {
    v433 = v635;
    v434 = v636;
    v435 = v634;
    [v435 rowingSpeedMean];
    v437 = v436;
    [v435 speedMeanStdDev];
    v439 = v438;
    [v435 timeIncrementDuringExercise];
    v441 = v440;
    nextRowingSpeedSampleTime = selfCopy->_nextRowingSpeedSampleTime;
    v443 = *MEMORY[0x277CCCC28];
    v444 = [MEMORY[0x277CCDAB0] unitFromString:@"m/s"];
    v445 = [HDDemoDataActivitySampleGenerator _generateWorkoutDataSamplesForDemoPerson:selfCopy atTime:v434 sampleDate:v433 addFromWatch:v443 objectCollection:v444 nextSampleTime:selfCopy->_workoutState typeIdentifier:toTime unit:nextRowingSpeedSampleTime sampleMean:v437 sampleMeanStdDev:v439 sampleFrequency:v441 workoutState:?];

    v298 = selfCopy;
    selfCopy->_nextRowingSpeedSampleTime = v445;
  }

  demoDataGenerator44 = [v298 demoDataGenerator];
  generatorState19 = [demoDataGenerator44 generatorState];
  isPaddleSports = [generatorState19 isPaddleSports];

  if (isPaddleSports)
  {
    if (!v298)
    {
      v598 = v634;
      v467 = 0;
      v468 = v634;
      v303 = 0x277CCD000;
      goto LABEL_153;
    }

    v449 = v635;
    v450 = v636;
    v451 = v634;
    [v451 paddleSportsSpeedMean];
    v453 = v452;
    [v451 speedMeanStdDev];
    v455 = v454;
    [v451 timeIncrementDuringExercise];
    v457 = v456;
    v458 = *(v298 + 208);
    v459 = *MEMORY[0x277CCCBF0];
    v460 = [MEMORY[0x277CCDAB0] unitFromString:@"m/s"];
    v461 = [HDDemoDataActivitySampleGenerator _generateWorkoutDataSamplesForDemoPerson:v298 atTime:v450 sampleDate:v449 addFromWatch:v459 objectCollection:v460 nextSampleTime:*(v298 + 264) typeIdentifier:toTime unit:v458 sampleMean:v453 sampleMeanStdDev:v455 sampleFrequency:v457 workoutState:?];

    *(v298 + 208) = v461;
    v462 = v451;
    v303 = 0x277CCD000uLL;
    v295 = v634;
  }

  else
  {
    v463 = v634;
    if (!v298)
    {
LABEL_152:
      v467 = 0;
      v468 = v295;
LABEL_153:

      goto LABEL_154;
    }
  }

  demoDataGenerator45 = [v298 demoDataGenerator];
  sleepSampleGenerator10 = [demoDataGenerator45 sleepSampleGenerator];
  v466 = [sleepSampleGenerator10 isDemoPersonAwake:v295 atTime:toTime];

  if (!v466 || *(v298 + 216) > toTime)
  {
    goto LABEL_152;
  }

  demoDataGenerator46 = [v298 demoDataGenerator];
  firstSampleDayOfYear = [demoDataGenerator46 firstSampleDayOfYear];

  if (toTime > *(v298 + 224))
  {
    v520 = ((((firstSampleDayOfYear + toTime) % 365) / 91.0) + 5);
    demoDataGenerator47 = [v298 demoDataGenerator];
    statisticsSampleGenerator11 = [demoDataGenerator47 statisticsSampleGenerator];
    [statisticsSampleGenerator11 pseudoRandomDoubleFromTime:toTime];
    v524 = v520 + v523 * 2.0;
    demoDataGenerator48 = [v298 demoDataGenerator];
    statisticsSampleGenerator12 = [demoDataGenerator48 statisticsSampleGenerator];
    [statisticsSampleGenerator12 computeNoiseFromTime:toTime + 1.0 stdDev:2.5];
    v528 = v524 + v527 + *(v298 + 240) / 7.0;

    v529 = 0.0;
    if (v528 >= 0.0)
    {
      v529 = v528;
    }

    *(v298 + 240) = fmin(v529, 11.0);
    v302 = v635;
    *(v298 + 224) = toTime;
  }

  [v295 uvIndexSampleFrequency];
  v531 = v530;
  demoDataGenerator49 = [v298 demoDataGenerator];
  statisticsSampleGenerator13 = [demoDataGenerator49 statisticsSampleGenerator];
  [statisticsSampleGenerator13 computeNoiseFromTime:toTime stdDev:0.00833333333];
  *(v298 + 216) = v531 + v534 + *(v298 + 216);

  v535 = v295;
  v536 = toTime - toTime;
  [v535 dawnTime];
  v537 = 0.0001;
  if (v536 >= v538)
  {
    [v535 sunsetTime];
    v298 = selfCopy;
    v303 = 0x277CCD000;
    if (v536 <= v542)
    {
      if (v536 >= 0.541666667)
      {
        [v535 sunsetTime];
        v546 = 1.0 - (v536 + -0.541666667) / (v584 + -0.541666667);
      }

      else
      {
        [v535 dawnTime];
        v544 = v536 - v543;
        [v535 dawnTime];
        v546 = v544 / (0.541666667 - v545);
      }

      v537 = v546 * selfCopy->_lastUVIndexPeak;
    }
  }

  else
  {
    v298 = selfCopy;
    v303 = 0x277CCD000;
  }

  v585 = *(v298 + 232);
  demoDataGenerator50 = [v298 demoDataGenerator];
  generatorState20 = [demoDataGenerator50 generatorState];
  isExercising7 = [generatorState20 isExercising];

  if ((isExercising7 & 1) == 0)
  {
    [v535 uvIndexSampleFrequency];
    if (([v298 _isDemoPersonWalking:v535 atTime:toTime samplePeriod:v589] & 1) == 0)
    {
      if (v585 > 1.0)
      {
        goto LABEL_208;
      }

      goto LABEL_207;
    }

    demoDataGenerator51 = [v298 demoDataGenerator];
    statisticsSampleGenerator14 = [demoDataGenerator51 statisticsSampleGenerator];
    [statisticsSampleGenerator14 pseudoRandomDoubleFromTime:toTime];
    v593 = v592;

    if (v585 > 1.0)
    {
      if (v593 >= 0.55)
      {
        goto LABEL_208;
      }

LABEL_207:
      v537 = arc4random_uniform(2u);
      goto LABEL_208;
    }

    if (v593 >= 0.35)
    {
      goto LABEL_207;
    }
  }

LABEL_208:
  *(v298 + 232) = v537;
  v467 = [MEMORY[0x277CCABB0] numberWithInteger:v537];

  if (v467)
  {
    v594 = MEMORY[0x277CCD7E8];
    [v467 doubleValue];
    v468 = [v594 quantityWithUnit:v625 doubleValue:?];
    v595 = MEMORY[0x277CCD800];
    v596 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCC88]];
    v597 = [v595 quantitySampleWithType:v596 quantity:v468 startDate:v636 endDate:v636];

    [v302 addObjectFromPhone:v597];
    goto LABEL_153;
  }

LABEL_154:
  v469 = *(v298 + 248);
  v606 = v467;
  if (!v469)
  {
LABEL_158:
    currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
    v624 = _HKActivityCacheDateComponentsFromDate();
    v601 = currentCalendar2;
    v474 = [currentCalendar2 startOfDayForDate:v636];
    v475 = [currentCalendar2 dateByAddingUnit:16 value:1 toDate:v474 options:0];
    v602 = [currentCalendar2 startOfDayForDate:v475];

    v476 = MEMORY[0x277CCD7E8];
    kilocalorieUnit2 = [*(v303 + 2736) kilocalorieUnit];
    [v295 moveGoal];
    v599 = [v476 quantityWithUnit:kilocalorieUnit2 doubleValue:?];

    v478 = MEMORY[0x277CCD800];
    v479 = [MEMORY[0x277CCD830] dataTypeWithCode:67];
    v604 = [v478 quantitySampleWithType:v479 quantity:v599 startDate:v474 endDate:v474];

    [v635 addObjectFromWatch:v604];
    v480 = MEMORY[0x277CCD7E8];
    minuteUnit2 = [MEMORY[0x277CCDAB0] minuteUnit];
    [v295 exerciseGoal];
    v603 = [v480 quantityWithUnit:minuteUnit2 doubleValue:?];

    v482 = MEMORY[0x277CCD800];
    v483 = [MEMORY[0x277CCD830] dataTypeWithCode:105];
    v600 = [v482 quantitySampleWithType:v483 quantity:v603 startDate:v474 endDate:v474];

    [v635 addObjectFromWatch:v600];
    v484 = MEMORY[0x277CCD7E8];
    countUnit2 = [MEMORY[0x277CCDAB0] countUnit];
    [v295 standGoal];
    v486 = [v484 quantityWithUnit:countUnit2 doubleValue:?];

    v487 = MEMORY[0x277CCD800];
    v488 = [MEMORY[0x277CCD830] dataTypeWithCode:104];
    v489 = [v487 quantitySampleWithType:v488 quantity:v486 startDate:v474 endDate:v474];

    [v635 addObjectFromWatch:v489];
    v490 = MEMORY[0x277CCCFA0];
    uUID = [MEMORY[0x277CCAD78] UUID];
    v492 = [v490 _activityCacheWithUUID:uUID startDate:v474 endDate:v602 dateComponents:v624 sequence:1];
    lastActivityCache = selfCopy->_lastActivityCache;
    selfCopy->_lastActivityCache = v492;

    [(HKActivityCache *)selfCopy->_lastActivityCache _setEnergyBurnedGoal:v599];
    v494 = selfCopy->_lastActivityCache;
    v495 = MEMORY[0x277CCD7E8];
    minuteUnit3 = [MEMORY[0x277CCDAB0] minuteUnit];
    v497 = [v495 quantityWithUnit:minuteUnit3 doubleValue:30.0];
    [(HKActivityCache *)v494 _setBriskMinutesGoal:v497];

    v498 = selfCopy->_lastActivityCache;
    v499 = MEMORY[0x277CCD7E8];
    countUnit3 = [MEMORY[0x277CCDAB0] countUnit];
    v501 = [v499 quantityWithUnit:countUnit3 doubleValue:12.0];
    [(HKActivityCache *)v498 _setActiveHoursGoal:v501];

    v303 = 0x277CCD000uLL;
    v298 = selfCopy;

    goto LABEL_159;
  }

  endDate = [v469 endDate];
  if ([v636 hk_isAfterDate:endDate])
  {

    goto LABEL_158;
  }

  startDate = [*(v298 + 248) startDate];
  v472 = [v636 hk_isBeforeDate:startDate];

  if (v472)
  {
    goto LABEL_158;
  }

  [*(v298 + 248) _setSequence:{objc_msgSend(*(v298 + 248), "sequence") + 1}];
LABEL_159:
  if (v626)
  {
    stepCount = [*(v298 + 248) stepCount];
    countUnit4 = [*(v303 + 2736) countUnit];
    [v626 doubleValueForUnit:countUnit4];
    v505 = llround(v504);

    [*(v298 + 248) _setStepCount:stepCount + v505];
  }

  if ([MEMORY[0x277CC1D18] isFloorCountingAvailable] && v632)
  {
    flightsClimbed = [*(v298 + 248) flightsClimbed];
    countUnit5 = [*(v303 + 2736) countUnit];
    [v632 doubleValueForUnit:countUnit5];
    v509 = llround(v508);

    [*(v298 + 248) _setFlightsClimbed:flightsClimbed + v509];
  }

  if (v613)
  {
    walkingAndRunningDistance = [*(v298 + 248) walkingAndRunningDistance];
    quantity = [v613 quantity];
    v512 = [(HDDemoDataActivitySampleGenerator *)v298 _sumQuantity:walkingAndRunningDistance withQuantity:quantity];

    [*(v298 + 248) _setWalkingAndRunningDistance:v512];
  }

  if (v619)
  {
    energyBurned = [*(v298 + 248) energyBurned];
    quantity2 = [v619 quantity];
    v515 = [(HDDemoDataActivitySampleGenerator *)v298 _sumQuantity:energyBurned withQuantity:quantity2];

    [*(v298 + 248) _setEnergyBurned:v515];
  }

  if (v630 && ![(HDDemoDataActivitySampleGenerator *)v630 integerValue])
  {
    [*(v298 + 248) activeHours];
    [*(v298 + 248) _setActiveHours:v516 + 1.0];
  }

  if ((v621 & 1) == 0)
  {
    [*(v298 + 248) briskMinutes];
    [*(v298 + 248) _setBriskMinutes:{v517 + objc_msgSend(v622, "integerValue")}];
  }

  [v635 addObjectFromWatch:*(v298 + 248)];
  [HDDemoDataActivitySampleGenerator _updateWorkoutStateWithActiveEnergyBurned:v298 distanceWalking:v619 distanceCycling:v613 distanceCrossCountrySkiing:v612 distanceRowing:v611 distanceSkatingSports:v610 distancePaddleSports:v609 distanceDownhillSnowSports:v608 currentTime:v607 date:v636 objectCollection:v635 demoPerson:v634];
}

- (double)flightsClimbedForDemoPerson:(double)person atTime:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    if (self[10] <= person)
    {
      [v5 flightsClimbedSampleFrequency];
      v8 = v7;
      demoDataGenerator = [self demoDataGenerator];
      statisticsSampleGenerator = [demoDataGenerator statisticsSampleGenerator];
      [v6 flightsClimbedSampleFrequencyStdDev];
      [statisticsSampleGenerator computeNoiseFromTime:person stdDev:v11];
      self[10] = v8 + v12 + self[10];

      self = [self _computeFlightsClimbedForDemoPerson:v6 atTime:person];
    }

    else
    {
      self = 0;
    }
  }

  return self;
}

- (id)_computeWalkingRunningDistanceWithStepCount:(void *)count demoPerson:
{
  v5 = a2;
  countCopy = count;
  v7 = 0;
  if (self && v5)
  {
    demoDataGenerator = [self demoDataGenerator];
    generatorState = [demoDataGenerator generatorState];
    isExercising = [generatorState isExercising];

    if (isExercising)
    {
      demoDataGenerator2 = [self demoDataGenerator];
      generatorState2 = [demoDataGenerator2 generatorState];
      workoutConfiguration = [generatorState2 workoutConfiguration];
      [workoutConfiguration distanceWalkingRateInMiles];
      v15 = v14;

      [countCopy stepsSampleFrequencyDuringExercise];
      v17 = v15 * v16;
      if (v17 > 0.00000011920929)
      {
        v18 = MEMORY[0x277CCD7E8];
        mileUnit = [MEMORY[0x277CCDAB0] mileUnit];
LABEL_8:
        v22 = mileUnit;
        v7 = [v18 quantityWithUnit:mileUnit doubleValue:v17];

        goto LABEL_10;
      }
    }

    else
    {
      countUnit = [MEMORY[0x277CCDAB0] countUnit];
      [v5 doubleValueForUnit:countUnit];
      v17 = v21 * 2.5;

      if (v17 > 0.00000011920929)
      {
        v18 = MEMORY[0x277CCD7E8];
        mileUnit = [MEMORY[0x277CCDAB0] footUnit];
        goto LABEL_8;
      }
    }

    v7 = 0;
  }

LABEL_10:

  return v7;
}

- (id)_computeDistanceWithDistanceRate:(double)rate DemoPerson:
{
  v5 = a2;
  if (self)
  {
    demoDataGenerator = [self demoDataGenerator];
    generatorState = [demoDataGenerator generatorState];
    isExercising = [generatorState isExercising];

    if (isExercising && ([v5 exerciseTimeSampleFrequency], v10 = v9 * rate, v10 > 0.00000011920929))
    {
      v11 = MEMORY[0x277CCD7E8];
      meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
      self = [v11 quantityWithUnit:meterUnit doubleValue:v10];
    }

    else
    {
      self = 0;
    }
  }

  return self;
}

- (id)_sumQuantity:(void *)quantity withQuantity:
{
  v5 = a2;
  quantityCopy = quantity;
  v7 = quantityCopy;
  if (self)
  {
    if (v5)
    {
      if (quantityCopy)
      {
        v8 = [v5 _quantityByAddingQuantity:quantityCopy];
      }

      else
      {
        v8 = v5;
      }
    }

    else
    {
      v8 = quantityCopy;
    }

    self = v8;
  }

  return self;
}

- (void)_updateWorkoutStateWithActiveEnergyBurned:(uint64_t)burned distanceWalking:(void *)walking distanceCycling:(void *)cycling distanceCrossCountrySkiing:(void *)skiing distanceRowing:(void *)rowing distanceSkatingSports:(void *)sports distancePaddleSports:(void *)paddleSports distanceDownhillSnowSports:(void *)snowSports currentTime:(void *)time date:(void *)burned0 objectCollection:(void *)burned1 demoPerson:(void *)burned2
{
  v223 = *MEMORY[0x277D85DE8];
  walkingCopy = walking;
  cyclingCopy = cycling;
  skiingCopy = skiing;
  rowingCopy = rowing;
  sportsCopy = sports;
  paddleSportsCopy = paddleSports;
  snowSportsCopy = snowSports;
  timeCopy = time;
  dateCopy = date;
  v20 = rowingCopy;
  collectionCopy = collection;
  personCopy = person;
  if (!burned)
  {
    goto LABEL_173;
  }

  v21 = *(burned + 264);
  burnedCopy = burned;
  demoDataGenerator = [burned demoDataGenerator];
  generatorState = [demoDataGenerator generatorState];
  isExercising = [generatorState isExercising];

  if (((v21 == 0) & isExercising) == 1)
  {
    demoDataGenerator2 = [burned demoDataGenerator];
    generatorState2 = [demoDataGenerator2 generatorState];
    workoutConfiguration = [generatorState2 workoutConfiguration];
    v29 = *(burned + 256);
    *(burned + 256) = workoutConfiguration;

    v30 = objc_alloc_init(_HDDemoDataActivityWorkoutState);
    v31 = *(burned + 264);
    *(burned + 264) = v30;

    v32 = *(burned + 264);
    if (v32)
    {
      objc_storeStrong((v32 + 56), date);
      v33 = *(burned + 264);
    }

    else
    {
      v33 = 0;
    }

    activityType = [*(burned + 256) activityType];
    if (v33)
    {
      *(v33 + 32) = activityType;
    }

    v35 = *(burned + 264);
    goal = [*(burned + 256) goal];
    if (v35)
    {
      objc_storeStrong((v35 + 48), goal);
    }

    v37 = *(burned + 264);
    goalType = [*(burned + 256) goalType];
    if (v37)
    {
      *(v37 + 40) = goalType;
    }

    [*(burned + 256) endTime];
    *(burned + 104) = v39;
    *(burned + 112) = v39 + *MEMORY[0x277CCE5C0] * 0.0000115740741;
  }

  if ((isExercising & 1) == 0)
  {
    if (!v21)
    {
      goto LABEL_173;
    }

    burnedCopy2 = burned;
    if (!_HKWorkoutActivityTypeIsValid())
    {
      goto LABEL_171;
    }

    v90 = *(burned + 264);
    if (!v90)
    {
      goto LABEL_104;
    }

    v91 = v90[4];
    if (v91 > 45)
    {
      if (v91 > 60)
      {
        if (v91 <= 76)
        {
          if (v91 != 61 && v91 != 63 && v91 != 67)
          {
            goto LABEL_104;
          }

LABEL_85:
          [(HDDemoDataActivitySampleGenerator *)burned _generateHIITWorkoutDataWithObjectCollection:collectionCopy demoPerson:personCopy];
          goto LABEL_104;
        }

        if (v91 == 77)
        {
          v92 = &unk_283CAEC08;
          v93 = &unk_283CAEC20;
        }

        else
        {
          if (v91 != 80)
          {
            if (v91 == 84)
            {
              [(HDDemoDataActivitySampleGenerator *)burned _generateUnderwaterDivingWorkoutDataWithObjectCollection:collectionCopy demoPerson:personCopy];
            }

            goto LABEL_104;
          }

          v92 = &unk_283CAEBD8;
          v93 = &unk_283CAEBF0;
        }

LABEL_103:
        [HDDemoDataActivitySampleGenerator _generateWorkoutDataWithHeartRates:v92 recoveryHeartRates:v93 objectCollection:collectionCopy demoPerson:v90 workoutState:?];
        goto LABEL_104;
      }

      if (v91 <= 56)
      {
        if (v91 == 46)
        {
          [(HDDemoDataActivitySampleGenerator *)burned _generateSwimmingWorkoutDataWithObjectCollection:collectionCopy demoPerson:personCopy];
          goto LABEL_104;
        }

        if (v91 != 52)
        {
          goto LABEL_104;
        }

        v92 = &unk_283CAEB48;
        v93 = &unk_283CAEB60;
        goto LABEL_103;
      }

      if (v91 != 57)
      {
        if (v91 != 59 && v91 != 60)
        {
          goto LABEL_104;
        }

LABEL_95:
        [(HDDemoDataActivitySampleGenerator *)burned _generateEllipticalWorkoutDataWithObjectCollection:collectionCopy demoPerson:personCopy];
        goto LABEL_104;
      }

      goto LABEL_99;
    }

    if (v91 <= 30)
    {
      if (v91 <= 19)
      {
        if (v91 == 13)
        {
          [(HDDemoDataActivitySampleGenerator *)burned _generateCyclingFTPSamplesForDemoPerson:personCopy sampleDate:dateCopy objectCollection:collectionCopy];
          goto LABEL_104;
        }

        if (v91 != 16)
        {
          goto LABEL_104;
        }

        goto LABEL_95;
      }

      if (v91 == 20)
      {
        goto LABEL_85;
      }

      if (v91 != 21)
      {
        if (v91 != 24)
        {
          goto LABEL_104;
        }

        v92 = &unk_283CAEB78;
        v93 = &unk_283CAEB90;
        goto LABEL_103;
      }

LABEL_99:
      v92 = &unk_283CAEBA8;
      v93 = &unk_283CAEBC0;
      goto LABEL_103;
    }

    if (v91 <= 36)
    {
      if (v91 == 31)
      {
        goto LABEL_99;
      }

      if (v91 != 35)
      {
        goto LABEL_104;
      }
    }

    else if (v91 != 37)
    {
      if (v91 == 39 || v91 == 41)
      {
        goto LABEL_85;
      }

LABEL_104:
      v94 = *(burned + 264);
      profile = [burnedCopy profile];
      v96 = burnedCopy[4];
      v199 = dateCopy;
      v198 = profile;
      v195 = v96;
      if (!v94)
      {
        v165 = 0;
        goto LABEL_160;
      }

      v97 = MEMORY[0x277CCD7E8];
      kilocalorieUnit = [MEMORY[0x277CCDAB0] kilocalorieUnit];
      v196 = [v97 quantityWithUnit:kilocalorieUnit doubleValue:*(v94 + 64)];

      v99 = *(v94 + 32);
      if (v99 > 45)
      {
        if (v99 > 60)
        {
          if (v99 == 61 || v99 == 67)
          {
            v104 = MEMORY[0x277CCD7E8];
            meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
            v197 = [v104 quantityWithUnit:meterUnit doubleValue:*(v94 + 128)];
            goto LABEL_124;
          }
        }

        else
        {
          if (v99 == 46)
          {
            v106 = MEMORY[0x277CCD7E8];
            meterUnit = [MEMORY[0x277CCDAB0] yardUnit];
            v197 = [v106 quantityWithUnit:meterUnit doubleValue:*(v94 + 88)];
            goto LABEL_124;
          }

          if (v99 == 60)
          {
            v102 = MEMORY[0x277CCD7E8];
            meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
            v197 = [v102 quantityWithUnit:meterUnit doubleValue:*(v94 + 96)];
            goto LABEL_124;
          }
        }
      }

      else if (v99 > 34)
      {
        if (v99 == 35)
        {
          v107 = MEMORY[0x277CCD7E8];
          meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
          v197 = [v107 quantityWithUnit:meterUnit doubleValue:*(v94 + 104)];
          goto LABEL_124;
        }

        if (v99 == 39)
        {
          v103 = MEMORY[0x277CCD7E8];
          meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
          v197 = [v103 quantityWithUnit:meterUnit doubleValue:*(v94 + 112)];
          goto LABEL_124;
        }
      }

      else
      {
        if (v99 == 13)
        {
          v105 = MEMORY[0x277CCD7E8];
          meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
          v197 = [v105 quantityWithUnit:meterUnit doubleValue:*(v94 + 80)];
          goto LABEL_124;
        }

        if (v99 == 31)
        {
          v100 = MEMORY[0x277CCD7E8];
          meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
          v197 = [v100 quantityWithUnit:meterUnit doubleValue:*(v94 + 120)];
          goto LABEL_124;
        }
      }

      v108 = MEMORY[0x277CCD7E8];
      meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
      v197 = [v108 quantityWithUnit:meterUnit doubleValue:*(v94 + 72)];
LABEL_124:

      v200 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v109 = arc4random_uniform(0xAu);
      v110 = arc4random_uniform(0x1Eu);
      v111 = arc4random_uniform(5u);
      v112 = MEMORY[0x277CCD7E8];
      degreeFahrenheitUnit = [MEMORY[0x277CCDAB0] degreeFahrenheitUnit];
      v114 = [v112 quantityWithUnit:degreeFahrenheitUnit doubleValue:(v109 + 55)];
      [v200 setObject:v114 forKeyedSubscript:*MEMORY[0x277CCC560]];

      v115 = MEMORY[0x277CCD7E8];
      percentUnit = [MEMORY[0x277CCDAB0] percentUnit];
      v117 = [v115 quantityWithUnit:percentUnit doubleValue:(v110 + 20)];
      [v200 setObject:v117 forKeyedSubscript:*MEMORY[0x277CCC558]];

      v118 = [MEMORY[0x277CCABB0] numberWithInteger:v111 + 1];
      [v200 setObject:v118 forKeyedSubscript:*MEMORY[0x277CCC550]];

      v119 = *(v94 + 32);
      switch(v119)
      {
        case '%':
          v132 = MEMORY[0x277CCD7E8];
          v133 = [MEMORY[0x277CCDAB0] unitFromString:@"count/min"];
          v134 = [v132 quantityWithUnit:v133 doubleValue:173.0];
          [v200 setObject:v134 forKeyedSubscript:*MEMORY[0x277CCE168]];

          currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
          date = [MEMORY[0x277CBEAA8] date];
          v137 = [currentCalendar dateByAddingUnit:8 value:-1 toDate:date options:0];

          v138 = *(v94 + 56);
          v139 = [v138 hk_isAfterDate:v137];

          if (v139)
          {
            v140 = MEMORY[0x277CCD7E8];
            inchUnit = [MEMORY[0x277CCDAB0] inchUnit];
            v142 = [v140 quantityWithUnit:inchUnit doubleValue:1236.0];

            [v200 setObject:v142 forKeyedSubscript:*MEMORY[0x277CCC488]];
          }

          v119 = *(v94 + 32);
          break;
        case '.':
          v120 = *(v94 + 24);
          v211 = 0u;
          v212 = 0u;
          v213 = 0u;
          v214 = 0u;
          v121 = v120;
          v122 = [v121 countByEnumeratingWithState:&v211 objects:&buf count:16];
          if (v122)
          {
            v192 = v20;
            v123 = 0;
            v124 = *v212;
            do
            {
              for (i = 0; i != v122; ++i)
              {
                if (*v212 != v124)
                {
                  objc_enumerationMutation(v121);
                }

                if ([*(*(&v211 + 1) + 8 * i) type] == 3)
                {
                  ++v123;
                }
              }

              v122 = [v121 countByEnumeratingWithState:&v211 objects:&buf count:16];
            }

            while (v122);

            v20 = v192;
            if (v123 >= 1)
            {
              yardUnit = [MEMORY[0x277CCDAB0] yardUnit];
              [v197 doubleValueForUnit:yardUnit];
              v128 = v127;

              v129 = MEMORY[0x277CCD7E8];
              yardUnit2 = [MEMORY[0x277CCDAB0] yardUnit];
              v131 = [v129 quantityWithUnit:yardUnit2 doubleValue:(v128 / v123)];

              [v200 setObject:v131 forKeyedSubscript:*MEMORY[0x277CCC4D0]];
            }
          }

          else
          {
          }

          [v200 setObject:&unk_283CB1FB0 forKeyedSubscript:*MEMORY[0x277CCC510]];
          v173 = [MEMORY[0x277CCABB0] numberWithInteger:*(v94 + 144)];
          [v200 setObject:v173 forKeyedSubscript:*MEMORY[0x277CCC518]];

          [v200 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CCC4C0]];
          v174 = MEMORY[0x277CCD7E8];
          countUnit = [MEMORY[0x277CCDAB0] countUnit];
          v168 = [v174 quantityWithUnit:countUnit doubleValue:*(v94 + 136)];

          v176 = MEMORY[0x277CCDBE8];
          v177 = *(v94 + 32);
          v178 = *(v94 + 56);
          v171 = [v176 _workoutWithActivityType:v177 startDate:v178 endDate:v199 workoutEvents:*(v94 + 24) workoutActivities:0 duration:v196 totalActiveEnergyBurned:0.0 totalBasalEnergyBurned:0 totalDistance:v197 totalSwimmingStrokeCount:v168 totalFlightsClimbed:0 goalType:0 goal:0 device:0 metadata:v200];

LABEL_158:
          v165 = v171;
LABEL_159:
          v181 = *(v94 + 48);
          [v165 _setGoal:v181];

          [v165 _setGoalType:*(v94 + 40)];
LABEL_160:

          if (v165)
          {
            [collectionCopy addObjectFromWatch:v165];
            v182 = burnedCopy[33];
            if (v182)
            {
              v182 = v182[1];
            }

            v183 = v182;
            uUID = [v165 UUID];
            [collectionCopy setAssociatedObjectUUIDs:v183 forObjectUUID:uUID];

            [v165 workoutActivityType];
            if (HKCoreMotionSupportsEstimatedWorkoutEffortForActivityType())
            {
              [(HDDemoDataActivitySampleGenerator *)burnedCopy _generateWorkoutEffortWithObjectCollection:collectionCopy forWorkout:v165 dataType:*MEMORY[0x277CCCB68]];
            }

            v185 = burnedCopy[33];
            if (v185 && v185[4] == 84 || ([(HDDemoDataActivitySampleGenerator *)burnedCopy _generateWorkoutEffortWithObjectCollection:collectionCopy forWorkout:v165 dataType:*MEMORY[0x277CCCCD8]], (v185 = burnedCopy[33]) != 0))
            {
              v185 = v185[2];
            }

            v186 = v185;
            uUID2 = [v165 UUID];
            [collectionCopy setLooseAssociatedObjectUUIDs:v186 forObjectUUID:uUID2];
          }

          burnedCopy2 = burnedCopy;
LABEL_171:
          v188 = *(burnedCopy2 + 256);
          *(burnedCopy2 + 256) = 0;

          uUID10 = *(burnedCopy2 + 264);
          *(burnedCopy2 + 264) = 0;
LABEL_172:

          goto LABEL_173;
        case 'C':
        case '=':
          v143 = objc_alloc(MEMORY[0x277CCA970]);
          v144 = *(v94 + 56);
          v145 = [v143 initWithStartDate:v144 endDate:v199];

          v146 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v147 = MEMORY[0x277CCD7E8];
          v148 = [MEMORY[0x277CCDAB0] unitFromString:@"mi/hr"];
          v149 = [v147 quantityWithUnit:v148 doubleValue:7.7];
          [v146 setObject:v149 forKeyedSubscript:*MEMORY[0x277CCC470]];

          v150 = MEMORY[0x277CCD7E8];
          v151 = [MEMORY[0x277CCDAB0] unitFromString:@"mi/hr"];
          v152 = [v150 quantityWithUnit:v151 doubleValue:12.0];
          [v146 setObject:v152 forKeyedSubscript:*MEMORY[0x277CCC4E8]];

          v153 = MEMORY[0x277CCD7E8];
          percentUnit2 = [MEMORY[0x277CCDAB0] percentUnit];
          v155 = [v153 quantityWithUnit:percentUnit2 doubleValue:15.0];
          [v146 setObject:v155 forKeyedSubscript:*MEMORY[0x277CCC430]];

          v156 = MEMORY[0x277CCD7E8];
          meterUnit2 = [MEMORY[0x277CCDAB0] meterUnit];
          v158 = [v156 quantityWithUnit:meterUnit2 doubleValue:472.1];
          [v146 setObject:v158 forKeyedSubscript:*MEMORY[0x277CCC490]];

          v159 = MEMORY[0x277CCD7E8];
          meterUnit3 = [MEMORY[0x277CCDAB0] meterUnit];
          v161 = [v159 quantityWithUnit:meterUnit3 doubleValue:5.0];
          [v146 setObject:v161 forKeyedSubscript:*MEMORY[0x277CCC488]];

          v162 = [MEMORY[0x277CCDC68] workoutEventWithType:7 dateInterval:v145 metadata:v146];
          [*(v94 + 24) addObject:v162];

          v119 = *(v94 + 32);
          break;
        default:
          v139 = 0;
          break;
      }

      v163 = MEMORY[0x277CCDBE8];
      v164 = *(v94 + 56);
      v165 = [v163 _workoutWithActivityType:v119 startDate:v164 endDate:v199 workoutEvents:*(v94 + 24) totalEnergyBurned:v196 totalDistance:v197 device:0 metadata:v200];

      if (!v139)
      {
        goto LABEL_159;
      }

      v166 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v167 = [v166 pathForResource:@"GoldenGateLocationSeriesTrimmed" ofType:@"json"];

      v168 = v167;
      v169 = v198;
      v170 = v195;
      v171 = v165;
      v194 = v170;
      if (v169)
      {
        if (v170)
        {
LABEL_147:
          v172 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v168];
          if (v172)
          {
            v215[0] = 0;
            v193 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v172 options:4 error:v215];
            v191 = v215[0];
            if (v193)
            {
              *&v211 = 0;
              *(&v211 + 1) = &v211;
              *&v212 = 0x3032000000;
              *(&v212 + 1) = __Block_byref_object_copy__78;
              *&v213 = __Block_byref_object_dispose__78;
              *(&v213 + 1) = [v171 startDate];
              *&buf = MEMORY[0x277D85DD0];
              *(&buf + 1) = 3221225472;
              v217 = __90___HDDemoDataActivityWorkoutState_addWorkoutRouteFromFilePath_profile_provenance_workout___block_invoke;
              v218 = &unk_27861EE10;
              v222 = &v211;
              v219 = v169;
              v220 = v194;
              v221 = v94;
              [v193 enumerateObjectsUsingBlock:&buf];

              _Block_object_dispose(&v211, 8);
            }

            else
            {
              _HKInitializeLogging();
              v180 = *MEMORY[0x277CCC2B8];
              if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(buf) = 138543362;
                *(&buf + 4) = v168;
                _os_log_impl(&dword_228986000, v180, OS_LOG_TYPE_DEFAULT, "Could not serialize from JSON data at file path: %{public}@", &buf, 0xCu);
              }
            }
          }

          else
          {
            _HKInitializeLogging();
            v179 = *MEMORY[0x277CCC2B8];
            if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf) = 138543362;
              *(&buf + 4) = v168;
              _os_log_impl(&dword_228986000, v179, OS_LOG_TYPE_DEFAULT, "Could not get data from file path: %{public}@", &buf, 0xCu);
            }
          }

          goto LABEL_158;
        }
      }

      else
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:sel_addWorkoutRouteFromFilePath_profile_provenance_workout_ object:v94 file:@"HDDemoDataActivitySampleGenerator.m" lineNumber:2696 description:{@"Invalid parameter not satisfying: %@", @"profile != nil"}];

        if (v194)
        {
          goto LABEL_147;
        }
      }

      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:sel_addWorkoutRouteFromFilePath_profile_provenance_workout_ object:v94 file:@"HDDemoDataActivitySampleGenerator.m" lineNumber:2697 description:{@"Invalid parameter not satisfying: %@", @"provenance != nil"}];

      goto LABEL_147;
    }

    [HDDemoDataActivitySampleGenerator _generateRunningWorkoutDataWithObjectCollection:collectionCopy demoPerson:personCopy workoutState:v90];
    goto LABEL_104;
  }

  burnedCopy10 = burned;
  if (walkingCopy)
  {
    v41 = *(burned + 264);
    quantity = [walkingCopy quantity];
    kilocalorieUnit2 = [MEMORY[0x277CCDAB0] kilocalorieUnit];
    [quantity doubleValueForUnit:kilocalorieUnit2];
    if (v41)
    {
      *(v41 + 64) = v44 + *(v41 + 64);
    }

    v45 = *(burned + 264);
    uUID3 = [walkingCopy UUID];
    if (v45)
    {
      [*(v45 + 8) hk_appendBytesWithUUID:uUID3];
    }

    burnedCopy10 = burned;
  }

  if (cyclingCopy)
  {
    v47 = *(burnedCopy10 + 264);
    quantity2 = [cyclingCopy quantity];
    meterUnit4 = [MEMORY[0x277CCDAB0] meterUnit];
    [quantity2 doubleValueForUnit:meterUnit4];
    if (v47)
    {
      *(v47 + 72) = v50 + *(v47 + 72);
    }

    v51 = *(burned + 264);
    uUID4 = [cyclingCopy UUID];
    if (v51)
    {
      [*(v51 + 8) hk_appendBytesWithUUID:uUID4];
    }

    burnedCopy10 = burned;
  }

  if (skiingCopy)
  {
    v53 = *(burnedCopy10 + 264);
    quantity3 = [skiingCopy quantity];
    meterUnit5 = [MEMORY[0x277CCDAB0] meterUnit];
    [quantity3 doubleValueForUnit:meterUnit5];
    if (v53)
    {
      *(v53 + 80) = v56 + *(v53 + 80);
    }

    v57 = *(burned + 264);
    uUID5 = [skiingCopy UUID];
    if (v57)
    {
      [*(v57 + 8) hk_appendBytesWithUUID:uUID5];
    }

    burnedCopy10 = burned;
  }

  if (rowingCopy)
  {
    v59 = *(burnedCopy10 + 264);
    quantity4 = [rowingCopy quantity];
    meterUnit6 = [MEMORY[0x277CCDAB0] meterUnit];
    [quantity4 doubleValueForUnit:meterUnit6];
    if (v59)
    {
      *(v59 + 96) = v62 + *(v59 + 96);
    }

    v63 = *(burned + 264);
    uUID6 = [rowingCopy UUID];
    if (v63)
    {
      [*(v63 + 8) hk_appendBytesWithUUID:uUID6];
    }

    burnedCopy10 = burned;
  }

  if (sportsCopy)
  {
    v65 = *(burnedCopy10 + 264);
    quantity5 = [sportsCopy quantity];
    meterUnit7 = [MEMORY[0x277CCDAB0] meterUnit];
    [quantity5 doubleValueForUnit:meterUnit7];
    if (v65)
    {
      *(v65 + 104) = v68 + *(v65 + 104);
    }

    v69 = *(burned + 264);
    uUID7 = [sportsCopy UUID];
    if (v69)
    {
      [*(v69 + 8) hk_appendBytesWithUUID:uUID7];
    }

    burnedCopy10 = burned;
  }

  if (paddleSportsCopy)
  {
    v71 = *(burnedCopy10 + 264);
    quantity6 = [paddleSportsCopy quantity];
    meterUnit8 = [MEMORY[0x277CCDAB0] meterUnit];
    [quantity6 doubleValueForUnit:meterUnit8];
    if (v71)
    {
      *(v71 + 112) = v74 + *(v71 + 112);
    }

    v75 = *(burned + 264);
    uUID8 = [paddleSportsCopy UUID];
    if (v75)
    {
      [*(v75 + 8) hk_appendBytesWithUUID:uUID8];
    }

    burnedCopy10 = burned;
  }

  if (snowSportsCopy)
  {
    v77 = *(burnedCopy10 + 264);
    quantity7 = [snowSportsCopy quantity];
    meterUnit9 = [MEMORY[0x277CCDAB0] meterUnit];
    [quantity7 doubleValueForUnit:meterUnit9];
    if (v77)
    {
      *(v77 + 120) = v80 + *(v77 + 120);
    }

    v81 = *(burned + 264);
    uUID9 = [snowSportsCopy UUID];
    if (v81)
    {
      [*(v81 + 8) hk_appendBytesWithUUID:uUID9];
    }

    burnedCopy10 = burned;
  }

  if (timeCopy)
  {
    v83 = *(burnedCopy10 + 264);
    quantity8 = [timeCopy quantity];
    meterUnit10 = [MEMORY[0x277CCDAB0] meterUnit];
    [quantity8 doubleValueForUnit:meterUnit10];
    if (v83)
    {
      *(v83 + 128) = v86 + *(v83 + 128);
    }

    v87 = *(burned + 264);
    uUID10 = [timeCopy UUID];
    if (v87)
    {
      [*(v87 + 8) hk_appendBytesWithUUID:uUID10];
    }

    goto LABEL_172;
  }

LABEL_173:
}

- (void)_generateHIITWorkoutDataWithObjectCollection:(void *)collection demoPerson:
{
  v9[300] = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  v6 = a2;
  v9[0] = &unk_283CB0EB8;
  v9[1] = &unk_283CB0ED0;
  v9[2] = &unk_283CB0EE8;
  v9[3] = &unk_283CB0F00;
  v9[4] = &unk_283CB0F18;
  v9[5] = &unk_283CB0F30;
  v9[6] = &unk_283CB0F48;
  v9[7] = &unk_283CB0F18;
  v9[8] = &unk_283CB0F30;
  v9[9] = &unk_283CB0F60;
  v9[10] = &unk_283CB0F78;
  v9[11] = &unk_283CB0F78;
  v9[12] = &unk_283CB0F90;
  v9[13] = &unk_283CB0FA8;
  v9[14] = &unk_283CB0FC0;
  v9[15] = &unk_283CB0FD8;
  v9[16] = &unk_283CB0FC0;
  v9[17] = &unk_283CB0FF0;
  v9[18] = &unk_283CB1008;
  v9[19] = &unk_283CB1020;
  v9[20] = &unk_283CB1038;
  v9[21] = &unk_283CB1050;
  v9[22] = &unk_283CB1068;
  v9[23] = &unk_283CB1068;
  v9[24] = &unk_283CB1080;
  v9[25] = &unk_283CB1098;
  v9[26] = &unk_283CB10B0;
  v9[27] = &unk_283CB10C8;
  v9[28] = &unk_283CB10E0;
  v9[29] = &unk_283CB10F8;
  v9[30] = &unk_283CB1110;
  v9[31] = &unk_283CB1128;
  v9[32] = &unk_283CB1140;
  v9[33] = &unk_283CB1158;
  v9[34] = &unk_283CB10B0;
  v9[35] = &unk_283CB10E0;
  v9[36] = &unk_283CB1170;
  v9[37] = &unk_283CB1080;
  v9[38] = &unk_283CB10F8;
  v9[39] = &unk_283CB1188;
  v9[40] = &unk_283CB11A0;
  v9[41] = &unk_283CB11B8;
  v9[42] = &unk_283CB10F8;
  v9[43] = &unk_283CB11D0;
  v9[44] = &unk_283CB11E8;
  v9[45] = &unk_283CB11A0;
  v9[46] = &unk_283CB1188;
  v9[47] = &unk_283CB1200;
  v9[48] = &unk_283CB1218;
  v9[49] = &unk_283CB1230;
  v9[50] = &unk_283CB1050;
  v9[51] = &unk_283CB1068;
  v9[52] = &unk_283CB0F90;
  v9[53] = &unk_283CB1248;
  v9[54] = &unk_283CB1260;
  v9[55] = &unk_283CB1278;
  v9[56] = &unk_283CB1290;
  v9[57] = &unk_283CB1260;
  v9[58] = &unk_283CB12A8;
  v9[59] = &unk_283CB12C0;
  v9[60] = &unk_283CB1260;
  v9[61] = &unk_283CB1278;
  v9[62] = &unk_283CB12A8;
  v9[63] = &unk_283CB12D8;
  v9[64] = &unk_283CB0F78;
  v9[65] = &unk_283CB12F0;
  v9[66] = &unk_283CB1308;
  v9[67] = &unk_283CB1320;
  v9[68] = &unk_283CB1338;
  v9[69] = &unk_283CB12A8;
  v9[70] = &unk_283CB1350;
  v9[71] = &unk_283CB1110;
  v9[72] = &unk_283CB11D0;
  v9[73] = &unk_283CB1200;
  v9[74] = &unk_283CB1368;
  v9[75] = &unk_283CB1230;
  v9[76] = &unk_283CB1218;
  v9[77] = &unk_283CB1200;
  v9[78] = &unk_283CB1188;
  v9[79] = &unk_283CB1380;
  v9[80] = &unk_283CB1230;
  v9[81] = &unk_283CB1200;
  v9[82] = &unk_283CB1368;
  v9[83] = &unk_283CB1398;
  v9[84] = &unk_283CB13B0;
  v9[85] = &unk_283CB1188;
  v9[134] = &unk_283CB1260;
  v9[86] = &unk_283CB13C8;
  v9[87] = &unk_283CB13B0;
  v9[88] = &unk_283CB1230;
  v9[142] = &unk_283CB12D8;
  v9[89] = &unk_283CB13E0;
  v9[90] = &unk_283CB1110;
  v9[171] = &unk_283CB1158;
  v9[173] = &unk_283CB1578;
  v9[175] = &unk_283CB15A8;
  v9[176] = &unk_283CB15C0;
  v9[91] = &unk_283CB1290;
  v9[92] = &unk_283CB13F8;
  v9[135] = &unk_283CB0FA8;
  v9[177] = &unk_283CB0FA8;
  v9[178] = &unk_283CB1248;
  v9[179] = &unk_283CB15D8;
  v9[93] = &unk_283CB1410;
  v9[94] = &unk_283CB1428;
  v9[193] = &unk_283CB11B8;
  v9[95] = &unk_283CB1440;
  v9[96] = &unk_283CB1458;
  v9[97] = &unk_283CB1350;
  v9[98] = &unk_283CB1470;
  v9[99] = &unk_283CB12C0;
  v9[100] = &unk_283CB1350;
  v9[101] = &unk_283CB1488;
  v9[102] = &unk_283CB14A0;
  v9[103] = &unk_283CB14B8;
  v9[104] = &unk_283CB11D0;
  v9[105] = &unk_283CB11E8;
  v9[106] = &unk_283CB13C8;
  v9[107] = &unk_283CB14D0;
  v9[108] = &unk_283CB1368;
  v9[109] = &unk_283CB13C8;
  v9[110] = &unk_283CB13B0;
  v9[111] = &unk_283CB1380;
  v9[112] = &unk_283CB1200;
  v9[113] = &unk_283CB1110;
  v9[114] = &unk_283CB13B0;
  v9[115] = &unk_283CB13C8;
  v9[116] = &unk_283CB1230;
  v9[117] = &unk_283CB1398;
  v9[118] = &unk_283CB14E8;
  v9[119] = &unk_283CB1500;
  v9[120] = &unk_283CB1518;
  v9[121] = &unk_283CB13E0;
  v9[122] = &unk_283CB13B0;
  v9[123] = &unk_283CB13C8;
  v9[124] = &unk_283CB14D0;
  v9[125] = &unk_283CB1218;
  v9[126] = &unk_283CB1380;
  v9[127] = &unk_283CB13C8;
  v9[128] = &unk_283CB1368;
  v9[129] = &unk_283CB1200;
  v9[130] = &unk_283CB1110;
  v9[131] = &unk_283CB1170;
  v9[132] = &unk_283CB1038;
  v9[133] = &unk_283CB1530;
  v9[136] = &unk_283CB1458;
  v9[137] = &unk_283CB1548;
  v9[138] = &unk_283CB1350;
  v9[139] = &unk_283CB12C0;
  v9[140] = &unk_283CB1428;
  v9[141] = &unk_283CB1350;
  v9[143] = &unk_283CB1428;
  v9[144] = &unk_283CB1458;
  v9[145] = &unk_283CB1458;
  v9[146] = &unk_283CB1488;
  v9[147] = &unk_283CB1560;
  v9[148] = &unk_283CB1350;
  v9[149] = &unk_283CB12C0;
  v9[150] = &unk_283CB1350;
  v9[151] = &unk_283CB1110;
  v9[152] = &unk_283CB11D0;
  v9[153] = &unk_283CB1200;
  v9[154] = &unk_283CB1368;
  v9[155] = &unk_283CB1230;
  v9[156] = &unk_283CB1218;
  v9[157] = &unk_283CB1200;
  v9[158] = &unk_283CB1188;
  v9[159] = &unk_283CB1380;
  v9[160] = &unk_283CB1230;
  v9[161] = &unk_283CB1200;
  v9[162] = &unk_283CB1368;
  v9[163] = &unk_283CB1398;
  v9[164] = &unk_283CB13B0;
  v9[165] = &unk_283CB1188;
  v9[166] = &unk_283CB13C8;
  v9[167] = &unk_283CB13B0;
  v9[168] = &unk_283CB1230;
  v9[169] = &unk_283CB13E0;
  v9[170] = &unk_283CB1110;
  v9[172] = &unk_283CB10C8;
  v9[174] = &unk_283CB1590;
  v9[180] = &unk_283CB1350;
  v9[181] = &unk_283CB1488;
  v9[182] = &unk_283CB14A0;
  v9[183] = &unk_283CB14B8;
  v9[184] = &unk_283CB11D0;
  v9[185] = &unk_283CB11E8;
  v9[186] = &unk_283CB13C8;
  v9[187] = &unk_283CB14D0;
  v9[188] = &unk_283CB1368;
  v9[189] = &unk_283CB13C8;
  v9[190] = &unk_283CB1218;
  v9[191] = &unk_283CB1230;
  v9[192] = &unk_283CB13B0;
  v9[194] = &unk_283CB1380;
  v9[195] = &unk_283CB1230;
  v9[196] = &unk_283CB13B0;
  v9[197] = &unk_283CB14E8;
  v9[198] = &unk_283CB1518;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:arc4random_uniform(0x14u) + 187];
  v9[211] = &unk_283CB1170;
  v9[213] = &unk_283CB14A0;
  v9[215] = &unk_283CB0F90;
  v9[216] = &unk_283CB1488;
  v9[219] = &unk_283CB1290;
  v9[222] = &unk_283CB1470;
  v9[226] = &unk_283CB1560;
  v9[252] = &unk_283CB14B8;
  v9[258] = &unk_283CB1278;
  v9[263] = &unk_283CB0FD8;
  v9[264] = &unk_283CB1098;
  v9[277] = &unk_283CB1398;
  v9[278] = &unk_283CB14E8;
  v9[199] = v4;
  v9[200] = &unk_283CB1518;
  v9[201] = &unk_283CB13E0;
  v9[202] = &unk_283CB13B0;
  v9[203] = &unk_283CB13C8;
  v9[204] = &unk_283CB1368;
  v9[205] = &unk_283CB13B0;
  v9[206] = &unk_283CB1200;
  v9[207] = &unk_283CB13C8;
  v9[208] = &unk_283CB13C8;
  v9[209] = &unk_283CB1188;
  v9[210] = &unk_283CB11D0;
  v9[212] = &unk_283CB1068;
  v9[214] = &unk_283CB12C0;
  v9[217] = &unk_283CB1440;
  v9[218] = &unk_283CB1350;
  v9[220] = &unk_283CB1440;
  v9[221] = &unk_283CB1428;
  v9[223] = &unk_283CB1440;
  v9[224] = &unk_283CB1458;
  v9[225] = &unk_283CB1350;
  v9[227] = &unk_283CB1458;
  v9[228] = &unk_283CB1350;
  v9[229] = &unk_283CB12C0;
  v9[230] = &unk_283CB1350;
  v9[231] = &unk_283CB1110;
  v9[232] = &unk_283CB11D0;
  v9[233] = &unk_283CB1200;
  v9[234] = &unk_283CB1368;
  v9[235] = &unk_283CB1230;
  v9[236] = &unk_283CB1218;
  v9[237] = &unk_283CB1200;
  v9[238] = &unk_283CB1188;
  v9[239] = &unk_283CB1380;
  v9[240] = &unk_283CB13B0;
  v9[241] = &unk_283CB1380;
  v9[242] = &unk_283CB14D0;
  v9[243] = &unk_283CB13E0;
  v9[244] = &unk_283CB1218;
  v9[245] = &unk_283CB1200;
  v9[246] = &unk_283CB13B0;
  v9[247] = &unk_283CB13B0;
  v9[248] = &unk_283CB1200;
  v9[249] = &unk_283CB13E0;
  v9[250] = &unk_283CB11D0;
  v9[251] = &unk_283CB15F0;
  v9[253] = &unk_283CB1530;
  v9[254] = &unk_283CB1458;
  v9[255] = &unk_283CB1608;
  v9[256] = &unk_283CB1440;
  v9[257] = &unk_283CB1428;
  v9[259] = &unk_283CB12C0;
  v9[260] = &unk_283CB1428;
  v9[261] = &unk_283CB1548;
  v9[262] = &unk_283CB1530;
  v9[265] = &unk_283CB11E8;
  v9[266] = &unk_283CB13C8;
  v9[267] = &unk_283CB14D0;
  v9[268] = &unk_283CB1368;
  v9[269] = &unk_283CB13C8;
  v9[270] = &unk_283CB13B0;
  v9[271] = &unk_283CB1380;
  v9[272] = &unk_283CB1200;
  v9[273] = &unk_283CB1110;
  v9[274] = &unk_283CB13B0;
  v9[275] = &unk_283CB13C8;
  v9[276] = &unk_283CB1230;
  v9[279] = &unk_283CB1500;
  v9[280] = &unk_283CB1518;
  v9[281] = &unk_283CB13E0;
  v9[282] = &unk_283CB13B0;
  v9[283] = &unk_283CB1200;
  v9[284] = &unk_283CB11E8;
  v9[285] = &unk_283CB1110;
  v9[286] = &unk_283CB1068;
  v9[287] = &unk_283CB1080;
  v9[288] = &unk_283CB10E0;
  v9[289] = &unk_283CB10C8;
  v9[290] = &unk_283CB1110;
  v9[291] = &unk_283CB1038;
  v9[292] = &unk_283CB1590;
  v9[293] = &unk_283CB13F8;
  v9[294] = &unk_283CB1410;
  v9[295] = &unk_283CB1350;
  v9[296] = &unk_283CB1458;
  v9[297] = &unk_283CB1548;
  v9[298] = &unk_283CB1350;
  v9[299] = &unk_283CB12C0;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:300];

  [HDDemoDataActivitySampleGenerator _generateWorkoutDataWithHeartRates:v5 recoveryHeartRates:&unk_283CAEAD0 objectCollection:v6 demoPerson:*(self + 264) workoutState:?];
}

- (void)_generateSwimmingWorkoutDataWithObjectCollection:(void *)collection demoPerson:
{
  v21 = a2;
  collectionCopy = collection;
  [*(self + 256) swimmingSwimSegmentTime];
  v7 = v6;
  [*(self + 256) swimmingRestSegmentTime];
  v9 = v8;
  [*(self + 256) swimmingSwimSegmentTime];
  v11 = v10;
  if ([*(self + 256) numSwimmingSegments] >= 2)
  {
    v12 = 0;
    v13 = 0;
    v14 = v7 + v9;
    do
    {
      v15 = *(self + 264);
      if (v15)
      {
        v16 = *(v15 + 56);
      }

      else
      {
        v16 = 0;
      }

      v17 = [v16 dateByAddingTimeInterval:v14 * v12];

      [*(self + 256) distanceSwimmingSegmentInYards];
      -[HDDemoDataActivitySampleGenerator _generateSwimmingSegmentDataWithStartDate:segmentTime:segmentDistance:numLaps:strokeStyle:objectCollection:demoPerson:](self, v17, [*(self + 256) swimmingNumLapsPerSegment], objc_msgSend(*(self + 256), "swimmingStrokeStyle"), v21, collectionCopy, v11, v18);
      ++v12;
      v13 = v17;
    }

    while ([*(self + 256) numSwimmingSegments] - 1 > v12);
    if (v17)
    {
      v19 = [v17 dateByAddingTimeInterval:v14];

      [*(self + 256) distanceSwimmingSegmentInYards];
      -[HDDemoDataActivitySampleGenerator _generateSwimmingSegmentDataWithStartDate:segmentTime:segmentDistance:numLaps:strokeStyle:objectCollection:demoPerson:](self, v19, [*(self + 256) swimmingNumLapsPerSegment] / 2, objc_msgSend(*(self + 256), "swimmingStrokeStyle"), v21, collectionCopy, v11 * 0.5, v20 * 0.5);
      [HDDemoDataActivitySampleGenerator _generateWorkoutDataWithHeartRates:&unk_283CAEB00 recoveryHeartRates:v21 objectCollection:*(self + 264) demoPerson:? workoutState:?];
    }
  }
}

- (void)_generateEllipticalWorkoutDataWithObjectCollection:(void *)collection demoPerson:
{
  v9[300] = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  v6 = a2;
  v9[0] = &unk_283CB1770;
  v9[1] = &unk_283CB1788;
  v9[2] = &unk_283CB0F30;
  v9[3] = &unk_283CB0F48;
  v9[4] = &unk_283CB1770;
  v9[5] = &unk_283CB1668;
  v9[6] = &unk_283CB0F30;
  v9[7] = &unk_283CB1770;
  v9[8] = &unk_283CB1818;
  v9[9] = &unk_283CB1770;
  v9[10] = &unk_283CB0F60;
  v9[11] = &unk_283CB1818;
  v9[12] = &unk_283CB1650;
  v9[13] = &unk_283CB1788;
  v9[14] = &unk_283CB1770;
  v9[15] = &unk_283CB1650;
  v9[16] = &unk_283CB1668;
  v9[17] = &unk_283CB1818;
  v9[18] = &unk_283CB1770;
  v9[19] = &unk_283CB1818;
  v9[20] = &unk_283CB1680;
  v9[21] = &unk_283CB0F60;
  v9[22] = &unk_283CB1308;
  v9[23] = &unk_283CB17E8;
  v9[24] = &unk_283CB1668;
  v9[25] = &unk_283CB1800;
  v9[26] = &unk_283CB1308;
  v9[27] = &unk_283CB1638;
  v9[28] = &unk_283CB0F78;
  v9[29] = &unk_283CB0F78;
  v9[30] = &unk_283CB1650;
  v9[31] = &unk_283CB1620;
  v9[32] = &unk_283CB12D8;
  v9[33] = &unk_283CB1338;
  v9[34] = &unk_283CB12D8;
  v9[35] = &unk_283CB1440;
  v9[36] = &unk_283CB1470;
  v9[37] = &unk_283CB1458;
  v9[38] = &unk_283CB1488;
  v9[39] = &unk_283CB1608;
  v9[40] = &unk_283CB1458;
  v9[41] = &unk_283CB1458;
  v9[42] = &unk_283CB1488;
  v9[43] = &unk_283CB1530;
  v9[44] = &unk_283CB0FA8;
  v9[45] = &unk_283CB0F90;
  v9[46] = &unk_283CB0FA8;
  v9[47] = &unk_283CB13F8;
  v9[48] = &unk_283CB14B8;
  v9[49] = &unk_283CB15A8;
  v9[50] = &unk_283CB0FC0;
  v9[51] = &unk_283CB14B8;
  v9[52] = &unk_283CB0FC0;
  v9[53] = &unk_283CB0FD8;
  v9[54] = &unk_283CB14B8;
  v9[55] = &unk_283CB1068;
  v9[56] = &unk_283CB0FF0;
  v9[57] = &unk_283CB17D0;
  v9[58] = &unk_283CB10C8;
  v9[59] = &unk_283CB1050;
  v9[60] = &unk_283CB17D0;
  v9[61] = &unk_283CB17D0;
  v9[62] = &unk_283CB1050;
  v9[63] = &unk_283CB1008;
  v9[64] = &unk_283CB1098;
  v9[65] = &unk_283CB0FF0;
  v9[66] = &unk_283CB1050;
  v9[67] = &unk_283CB1050;
  v9[68] = &unk_283CB10C8;
  v9[69] = &unk_283CB1020;
  v9[70] = &unk_283CB1080;
  v9[71] = &unk_283CB1068;
  v9[72] = &unk_283CB1080;
  v9[73] = &unk_283CB1068;
  v9[74] = &unk_283CB10C8;
  v9[75] = &unk_283CB10B0;
  v9[76] = &unk_283CB10C8;
  v9[77] = &unk_283CB1050;
  v9[78] = &unk_283CB10B0;
  v9[79] = &unk_283CB10B0;
  v9[80] = &unk_283CB1158;
  v9[81] = &unk_283CB1050;
  v9[82] = &unk_283CB1050;
  v9[83] = &unk_283CB10B0;
  v9[84] = &unk_283CB10B0;
  v9[85] = &unk_283CB1080;
  v9[86] = &unk_283CB11B8;
  v9[87] = &unk_283CB10B0;
  v9[88] = &unk_283CB1128;
  v9[89] = &unk_283CB11B8;
  v9[90] = &unk_283CB1080;
  v9[91] = &unk_283CB1080;
  v9[92] = &unk_283CB11B8;
  v9[93] = &unk_283CB10B0;
  v9[94] = &unk_283CB1128;
  v9[95] = &unk_283CB1170;
  v9[96] = &unk_283CB10E0;
  v9[97] = &unk_283CB1080;
  v9[98] = &unk_283CB1158;
  v9[99] = &unk_283CB10B0;
  v9[100] = &unk_283CB1128;
  v9[101] = &unk_283CB1170;
  v9[102] = &unk_283CB1170;
  v9[103] = &unk_283CB1170;
  v9[104] = &unk_283CB10B0;
  v9[105] = &unk_283CB10E0;
  v9[106] = &unk_283CB1110;
  v9[107] = &unk_283CB10F8;
  v9[108] = &unk_283CB11D0;
  v9[109] = &unk_283CB10E0;
  v9[110] = &unk_283CB1128;
  v9[111] = &unk_283CB1110;
  v9[112] = &unk_283CB1170;
  v9[113] = &unk_283CB11B8;
  v9[114] = &unk_283CB11D0;
  v9[115] = &unk_283CB1128;
  v9[116] = &unk_283CB1128;
  v9[117] = &unk_283CB1140;
  v9[118] = &unk_283CB1158;
  v9[119] = &unk_283CB1140;
  v9[120] = &unk_283CB11B8;
  v9[121] = &unk_283CB11E8;
  v9[122] = &unk_283CB1110;
  v9[123] = &unk_283CB11D0;
  v9[124] = &unk_283CB11E8;
  v9[125] = &unk_283CB1188;
  v9[126] = &unk_283CB1140;
  v9[127] = &unk_283CB17A0;
  v9[128] = &unk_283CB11D0;
  v9[129] = &unk_283CB11A0;
  v9[130] = &unk_283CB17A0;
  v9[131] = &unk_283CB11D0;
  v9[132] = &unk_283CB11E8;
  v9[133] = &unk_283CB1128;
  v9[134] = &unk_283CB1188;
  v9[135] = &unk_283CB11D0;
  v9[136] = &unk_283CB17A0;
  v9[137] = &unk_283CB17A0;
  v9[138] = &unk_283CB1170;
  v9[139] = &unk_283CB11A0;
  v9[140] = &unk_283CB11A0;
  v9[141] = &unk_283CB1170;
  v9[142] = &unk_283CB11E8;
  v9[143] = &unk_283CB11D0;
  v9[144] = &unk_283CB17A0;
  v9[145] = &unk_283CB1110;
  v9[146] = &unk_283CB11A0;
  v9[147] = &unk_283CB1188;
  v9[148] = &unk_283CB11D0;
  v9[149] = &unk_283CB1170;
  v9[150] = &unk_283CB1200;
  v9[151] = &unk_283CB1140;
  v9[152] = &unk_283CB1110;
  v9[153] = &unk_283CB11A0;
  v9[154] = &unk_283CB1200;
  v9[155] = &unk_283CB11A0;
  v9[156] = &unk_283CB11D0;
  v9[157] = &unk_283CB11E8;
  v9[158] = &unk_283CB1188;
  v9[159] = &unk_283CB1188;
  v9[160] = &unk_283CB17A0;
  v9[161] = &unk_283CB1218;
  v9[162] = &unk_283CB1200;
  v9[163] = &unk_283CB1218;
  v9[164] = &unk_283CB11A0;
  v9[165] = &unk_283CB17A0;
  v9[166] = &unk_283CB17A0;
  v9[167] = &unk_283CB1200;
  v9[168] = &unk_283CB1380;
  v9[169] = &unk_283CB11A0;
  v9[170] = &unk_283CB1380;
  v9[171] = &unk_283CB1230;
  v9[172] = &unk_283CB11A0;
  v9[173] = &unk_283CB11E8;
  v9[174] = &unk_283CB1230;
  v9[175] = &unk_283CB1188;
  v9[176] = &unk_283CB11E8;
  v9[177] = &unk_283CB11A0;
  v9[178] = &unk_283CB1218;
  v9[179] = &unk_283CB17A0;
  v9[180] = &unk_283CB17A0;
  v9[181] = &unk_283CB11A0;
  v9[182] = &unk_283CB11E8;
  v9[183] = &unk_283CB17A0;
  v9[184] = &unk_283CB17A0;
  v9[185] = &unk_283CB1380;
  v9[186] = &unk_283CB1380;
  v9[187] = &unk_283CB1380;
  v9[188] = &unk_283CB17A0;
  v9[189] = &unk_283CB11A0;
  v9[190] = &unk_283CB11E8;
  v9[191] = &unk_283CB1200;
  v9[192] = &unk_283CB1218;
  v9[193] = &unk_283CB11A0;
  v9[194] = &unk_283CB1218;
  v9[195] = &unk_283CB11A0;
  v9[196] = &unk_283CB14D0;
  v9[197] = &unk_283CB13C8;
  v9[198] = &unk_283CB1188;
  v9[199] = &unk_283CB14D0;
  v9[200] = &unk_283CB1218;
  v9[201] = &unk_283CB14D0;
  v9[202] = &unk_283CB13B0;
  v9[203] = &unk_283CB13C8;
  v9[204] = &unk_283CB1368;
  v9[205] = &unk_283CB1200;
  v9[206] = &unk_283CB1218;
  v9[207] = &unk_283CB1218;
  v9[208] = &unk_283CB1368;
  v9[209] = &unk_283CB1398;
  v9[210] = &unk_283CB14D0;
  v9[211] = &unk_283CB13B0;
  v9[212] = &unk_283CB1368;
  v9[213] = &unk_283CB1230;
  v9[214] = &unk_283CB13B0;
  v9[215] = &unk_283CB1200;
  v9[216] = &unk_283CB1368;
  v9[217] = &unk_283CB1200;
  v9[218] = &unk_283CB13C8;
  v9[219] = &unk_283CB1380;
  v9[220] = &unk_283CB1218;
  v9[221] = &unk_283CB1200;
  v9[222] = &unk_283CB1368;
  v9[223] = &unk_283CB1368;
  v9[224] = &unk_283CB1230;
  v9[225] = &unk_283CB1368;
  v9[226] = &unk_283CB1398;
  v9[227] = &unk_283CB13B0;
  v9[228] = &unk_283CB1230;
  v9[229] = &unk_283CB13C8;
  v9[230] = &unk_283CB1218;
  v9[231] = &unk_283CB1380;
  v9[232] = &unk_283CB1398;
  v9[233] = &unk_283CB1230;
  v9[234] = &unk_283CB1200;
  v9[235] = &unk_283CB14D0;
  v9[236] = &unk_283CB14D0;
  v9[237] = &unk_283CB1368;
  v9[238] = &unk_283CB1200;
  v9[239] = &unk_283CB13C8;
  v9[240] = &unk_283CB1218;
  v9[241] = &unk_283CB1398;
  v9[242] = &unk_283CB14D0;
  v9[243] = &unk_283CB13B0;
  v9[244] = &unk_283CB14D0;
  v9[245] = &unk_283CB13B0;
  v9[246] = &unk_283CB13B0;
  v9[247] = &unk_283CB13C8;
  v9[248] = &unk_283CB13B0;
  v9[249] = &unk_283CB1398;
  v9[250] = &unk_283CB1200;
  v9[251] = &unk_283CB13C8;
  v9[252] = &unk_283CB13B0;
  v9[253] = &unk_283CB1200;
  v9[254] = &unk_283CB13C8;
  v9[255] = &unk_283CB1368;
  v9[256] = &unk_283CB1218;
  v9[257] = &unk_283CB1218;
  v9[258] = &unk_283CB1200;
  v9[259] = &unk_283CB1230;
  v9[260] = &unk_283CB1230;
  v9[261] = &unk_283CB1380;
  v9[262] = &unk_283CB1218;
  v9[263] = &unk_283CB1230;
  v9[264] = &unk_283CB13B0;
  v9[265] = &unk_283CB13C8;
  v9[266] = &unk_283CB1218;
  v9[267] = &unk_283CB1368;
  v9[268] = &unk_283CB1230;
  v9[269] = &unk_283CB1380;
  v9[270] = &unk_283CB1218;
  v9[271] = &unk_283CB14D0;
  v9[272] = &unk_283CB1398;
  v9[273] = &unk_283CB1230;
  v9[274] = &unk_283CB13B0;
  v9[275] = &unk_283CB13C8;
  v9[276] = &unk_283CB1368;
  v9[277] = &unk_283CB1230;
  v9[278] = &unk_283CB1218;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:arc4random_uniform(0xAu) + 177];
  v9[279] = v4;
  v9[280] = &unk_283CB1398;
  v9[281] = &unk_283CB13C8;
  v9[282] = &unk_283CB1398;
  v9[283] = &unk_283CB1200;
  v9[284] = &unk_283CB1230;
  v9[285] = &unk_283CB1398;
  v9[286] = &unk_283CB13C8;
  v9[287] = &unk_283CB14D0;
  v9[288] = &unk_283CB1230;
  v9[289] = &unk_283CB13B0;
  v9[290] = &unk_283CB13C8;
  v9[291] = &unk_283CB1218;
  v9[292] = &unk_283CB1200;
  v9[293] = &unk_283CB1230;
  v9[294] = &unk_283CB1140;
  v9[295] = &unk_283CB1140;
  v9[296] = &unk_283CB11A0;
  v9[297] = &unk_283CB1140;
  v9[298] = &unk_283CB1170;
  v9[299] = &unk_283CB1170;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:300];

  [HDDemoDataActivitySampleGenerator _generateWorkoutDataWithHeartRates:v5 recoveryHeartRates:&unk_283CAEB18 objectCollection:v6 demoPerson:*(self + 264) workoutState:?];
}

- (void)_generateRunningWorkoutDataWithObjectCollection:(void *)collection demoPerson:(void *)person workoutState:(void *)state
{
  v10[540] = *MEMORY[0x277D85DE8];
  stateCopy = state;
  personCopy = person;
  collectionCopy = collection;
  v10[0] = &unk_283CB1650;
  v10[1] = &unk_283CB0F60;
  v10[2] = &unk_283CB1770;
  v10[3] = &unk_283CB1650;
  v10[4] = &unk_283CB17E8;
  v10[5] = &unk_283CB1800;
  v10[6] = &unk_283CB1338;
  v10[7] = &unk_283CB1620;
  v10[8] = &unk_283CB12D8;
  v10[9] = &unk_283CB1308;
  v10[10] = &unk_283CB12A8;
  v10[11] = &unk_283CB12C0;
  v10[12] = &unk_283CB12A8;
  v10[13] = &unk_283CB1440;
  v10[14] = &unk_283CB12C0;
  v10[15] = &unk_283CB1560;
  v10[16] = &unk_283CB1290;
  v10[17] = &unk_283CB1560;
  v10[18] = &unk_283CB14A0;
  v10[19] = &unk_283CB1530;
  v10[20] = &unk_283CB14A0;
  v10[21] = &unk_283CB1290;
  v10[22] = &unk_283CB15C0;
  v10[23] = &unk_283CB14A0;
  v10[24] = &unk_283CB0FA8;
  v10[25] = &unk_283CB1560;
  v10[26] = &unk_283CB1248;
  v10[27] = &unk_283CB1290;
  v10[28] = &unk_283CB1248;
  v10[29] = &unk_283CB15D8;
  v10[30] = &unk_283CB1290;
  v10[31] = &unk_283CB14A0;
  v10[32] = &unk_283CB1530;
  v10[33] = &unk_283CB14A0;
  v10[34] = &unk_283CB1578;
  v10[35] = &unk_283CB0FA8;
  v10[36] = &unk_283CB1578;
  v10[37] = &unk_283CB0F90;
  v10[38] = &unk_283CB0F90;
  v10[39] = &unk_283CB14B8;
  v10[40] = &unk_283CB1008;
  v10[41] = &unk_283CB15A8;
  v10[42] = &unk_283CB0FD8;
  v10[43] = &unk_283CB1020;
  v10[44] = &unk_283CB0FC0;
  v10[45] = &unk_283CB0FF0;
  v10[46] = &unk_283CB1008;
  v10[47] = &unk_283CB15A8;
  v10[48] = &unk_283CB1008;
  v10[49] = &unk_283CB0FC0;
  v10[50] = &unk_283CB1050;
  v10[51] = &unk_283CB10C8;
  v10[52] = &unk_283CB1008;
  v10[53] = &unk_283CB0FC0;
  v10[54] = &unk_283CB1098;
  v10[55] = &unk_283CB1068;
  v10[56] = &unk_283CB1098;
  v10[57] = &unk_283CB1080;
  v10[58] = &unk_283CB1170;
  v10[59] = &unk_283CB10B0;
  v10[60] = &unk_283CB11D0;
  v10[61] = &unk_283CB1128;
  v10[62] = &unk_283CB10E0;
  v10[63] = &unk_283CB1170;
  v10[64] = &unk_283CB11B8;
  v10[65] = &unk_283CB11B8;
  v10[66] = &unk_283CB1170;
  v10[67] = &unk_283CB11B8;
  v10[68] = &unk_283CB1098;
  v10[69] = &unk_283CB11D0;
  v10[70] = &unk_283CB10E0;
  v10[71] = &unk_283CB1038;
  v10[72] = &unk_283CB1128;
  v10[73] = &unk_283CB1098;
  v10[74] = &unk_283CB10E0;
  v10[75] = &unk_283CB1140;
  v10[76] = &unk_283CB1050;
  v10[77] = &unk_283CB11D0;
  v10[78] = &unk_283CB11E8;
  v10[79] = &unk_283CB1110;
  v10[80] = &unk_283CB1170;
  v10[81] = &unk_283CB1140;
  v10[82] = &unk_283CB11B8;
  v10[83] = &unk_283CB11D0;
  v10[84] = &unk_283CB11B8;
  v10[85] = &unk_283CB10E0;
  v10[86] = &unk_283CB1170;
  v10[87] = &unk_283CB11E8;
  v10[88] = &unk_283CB11D0;
  v10[89] = &unk_283CB1140;
  v10[90] = &unk_283CB11A0;
  v10[91] = &unk_283CB10F8;
  v10[92] = &unk_283CB1110;
  v10[93] = &unk_283CB11E8;
  v10[94] = &unk_283CB17A0;
  v10[95] = &unk_283CB1188;
  v10[96] = &unk_283CB11B8;
  v10[97] = &unk_283CB1140;
  v10[98] = &unk_283CB1110;
  v10[99] = &unk_283CB1140;
  v10[100] = &unk_283CB1380;
  v10[101] = &unk_283CB11E8;
  v10[102] = &unk_283CB1188;
  v10[103] = &unk_283CB1380;
  v10[104] = &unk_283CB1380;
  v10[105] = &unk_283CB17A0;
  v10[106] = &unk_283CB11D0;
  v10[107] = &unk_283CB1230;
  v10[108] = &unk_283CB17A0;
  v10[109] = &unk_283CB11D0;
  v10[110] = &unk_283CB1380;
  v10[111] = &unk_283CB1380;
  v10[112] = &unk_283CB13B0;
  v10[113] = &unk_283CB1230;
  v10[114] = &unk_283CB14D0;
  v10[115] = &unk_283CB1380;
  v10[116] = &unk_283CB1188;
  v10[117] = &unk_283CB11E8;
  v10[118] = &unk_283CB14D0;
  v10[119] = &unk_283CB17A0;
  v10[120] = &unk_283CB17A0;
  v10[121] = &unk_283CB14D0;
  v10[122] = &unk_283CB1380;
  v10[123] = &unk_283CB14D0;
  v10[124] = &unk_283CB17A0;
  v10[125] = &unk_283CB11E8;
  v10[126] = &unk_283CB14D0;
  v10[127] = &unk_283CB1380;
  v10[128] = &unk_283CB1218;
  v10[129] = &unk_283CB13B0;
  v10[130] = &unk_283CB1380;
  v10[131] = &unk_283CB11E8;
  v10[132] = &unk_283CB1188;
  v10[133] = &unk_283CB1380;
  v10[134] = &unk_283CB1380;
  v10[135] = &unk_283CB17A0;
  v10[136] = &unk_283CB11D0;
  v10[137] = &unk_283CB1230;
  v10[138] = &unk_283CB17A0;
  v10[139] = &unk_283CB11D0;
  v10[140] = &unk_283CB1380;
  v10[141] = &unk_283CB1380;
  v10[142] = &unk_283CB13B0;
  v10[143] = &unk_283CB1230;
  v10[144] = &unk_283CB14D0;
  v10[145] = &unk_283CB1380;
  v10[146] = &unk_283CB1188;
  v10[147] = &unk_283CB11E8;
  v10[148] = &unk_283CB14D0;
  v10[149] = &unk_283CB17A0;
  v10[150] = &unk_283CB17A0;
  v10[151] = &unk_283CB14D0;
  v10[152] = &unk_283CB1380;
  v10[153] = &unk_283CB14D0;
  v10[154] = &unk_283CB17A0;
  v10[155] = &unk_283CB11E8;
  v10[156] = &unk_283CB14D0;
  v10[157] = &unk_283CB1380;
  v10[158] = &unk_283CB1218;
  v10[159] = &unk_283CB13B0;
  v10[160] = &unk_283CB1230;
  v10[161] = &unk_283CB13B0;
  v10[162] = &unk_283CB1200;
  v10[163] = &unk_283CB1380;
  v10[164] = &unk_283CB11E8;
  v10[165] = &unk_283CB1230;
  v10[166] = &unk_283CB17A0;
  v10[167] = &unk_283CB1140;
  v10[168] = &unk_283CB1110;
  v10[169] = &unk_283CB1128;
  v10[170] = &unk_283CB17A0;
  v10[171] = &unk_283CB14D0;
  v10[172] = &unk_283CB1380;
  v10[173] = &unk_283CB14D0;
  v10[174] = &unk_283CB17A0;
  v10[175] = &unk_283CB11E8;
  v10[176] = &unk_283CB14D0;
  v10[177] = &unk_283CB1380;
  v10[178] = &unk_283CB1218;
  v10[179] = &unk_283CB13B0;
  v10[180] = &unk_283CB1200;
  v10[181] = &unk_283CB1140;
  v10[182] = &unk_283CB11B8;
  v10[183] = &unk_283CB1170;
  v10[184] = &unk_283CB1200;
  v10[185] = &unk_283CB1110;
  v10[186] = &unk_283CB11B8;
  v10[187] = &unk_283CB1128;
  v10[188] = &unk_283CB1188;
  v10[189] = &unk_283CB1140;
  v10[190] = &unk_283CB1128;
  v10[191] = &unk_283CB1380;
  v10[192] = &unk_283CB17A0;
  v10[193] = &unk_283CB17A0;
  v10[194] = &unk_283CB11A0;
  v10[195] = &unk_283CB13C8;
  v10[196] = &unk_283CB13B0;
  v10[197] = &unk_283CB1380;
  v10[198] = &unk_283CB1200;
  v10[199] = &unk_283CB1188;
  v10[200] = &unk_283CB1218;
  v10[201] = &unk_283CB1398;
  v10[202] = &unk_283CB17A0;
  v10[203] = &unk_283CB14D0;
  v10[204] = &unk_283CB11A0;
  v10[205] = &unk_283CB13B0;
  v10[206] = &unk_283CB14D0;
  v10[207] = &unk_283CB1218;
  v10[208] = &unk_283CB1230;
  v10[209] = &unk_283CB1230;
  v10[210] = &unk_283CB13B0;
  v10[211] = &unk_283CB1398;
  v10[212] = &unk_283CB1200;
  v10[213] = &unk_283CB14D0;
  v10[214] = &unk_283CB1230;
  v10[215] = &unk_283CB1398;
  v10[216] = &unk_283CB1230;
  v10[217] = &unk_283CB1218;
  v10[218] = &unk_283CB17A0;
  v10[219] = &unk_283CB13C8;
  v10[220] = &unk_283CB11E8;
  v10[221] = &unk_283CB1368;
  v10[222] = &unk_283CB11E8;
  v10[223] = &unk_283CB1368;
  v10[224] = &unk_283CB13B0;
  v10[225] = &unk_283CB11E8;
  v10[226] = &unk_283CB1380;
  v10[227] = &unk_283CB13C8;
  v10[228] = &unk_283CB1398;
  v10[229] = &unk_283CB13C8;
  v10[230] = &unk_283CB17A0;
  v10[231] = &unk_283CB1380;
  v10[232] = &unk_283CB1200;
  v10[233] = &unk_283CB11E8;
  v10[234] = &unk_283CB13C8;
  v10[235] = &unk_283CB1188;
  v10[236] = &unk_283CB13B0;
  v10[237] = &unk_283CB1188;
  v10[238] = &unk_283CB13C8;
  v10[239] = &unk_283CB1398;
  v10[240] = &unk_283CB1128;
  v10[241] = &unk_283CB1380;
  v10[242] = &unk_283CB17A0;
  v10[243] = &unk_283CB17A0;
  v10[244] = &unk_283CB11A0;
  v10[245] = &unk_283CB13C8;
  v10[246] = &unk_283CB13B0;
  v10[247] = &unk_283CB1380;
  v10[248] = &unk_283CB1200;
  v10[249] = &unk_283CB1188;
  v10[250] = &unk_283CB1230;
  v10[251] = &unk_283CB13B0;
  v10[252] = &unk_283CB1200;
  v10[253] = &unk_283CB1380;
  v10[254] = &unk_283CB11E8;
  v10[255] = &unk_283CB1230;
  v10[256] = &unk_283CB17A0;
  v10[257] = &unk_283CB1140;
  v10[258] = &unk_283CB1110;
  v10[259] = &unk_283CB1128;
  v10[260] = &unk_283CB1218;
  v10[261] = &unk_283CB1398;
  v10[262] = &unk_283CB17A0;
  v10[263] = &unk_283CB14D0;
  v10[264] = &unk_283CB11A0;
  v10[265] = &unk_283CB13B0;
  v10[266] = &unk_283CB14D0;
  v10[267] = &unk_283CB1218;
  v10[268] = &unk_283CB1230;
  v10[269] = &unk_283CB1230;
  v10[270] = &unk_283CB13B0;
  v10[271] = &unk_283CB1398;
  v10[272] = &unk_283CB1200;
  v10[273] = &unk_283CB14D0;
  v10[274] = &unk_283CB1230;
  v10[275] = &unk_283CB1398;
  v10[276] = &unk_283CB1230;
  v10[277] = &unk_283CB1218;
  v10[278] = &unk_283CB17A0;
  v10[279] = &unk_283CB13C8;
  v10[280] = &unk_283CB1230;
  v10[281] = &unk_283CB13B0;
  v10[282] = &unk_283CB1200;
  v10[283] = &unk_283CB1380;
  v10[284] = &unk_283CB11E8;
  v10[285] = &unk_283CB1230;
  v10[286] = &unk_283CB17A0;
  v10[287] = &unk_283CB1140;
  v10[288] = &unk_283CB1110;
  v10[289] = &unk_283CB1128;
  v10[290] = &unk_283CB1200;
  v10[291] = &unk_283CB1140;
  v10[292] = &unk_283CB11B8;
  v10[293] = &unk_283CB1170;
  v10[294] = &unk_283CB1200;
  v10[295] = &unk_283CB1110;
  v10[296] = &unk_283CB11B8;
  v10[297] = &unk_283CB1128;
  v10[298] = &unk_283CB1188;
  v10[299] = &unk_283CB1140;
  v10[300] = &unk_283CB1128;
  v10[301] = &unk_283CB1380;
  v10[302] = &unk_283CB17A0;
  v10[303] = &unk_283CB17A0;
  v10[304] = &unk_283CB11A0;
  v10[305] = &unk_283CB13C8;
  v10[306] = &unk_283CB13B0;
  v10[307] = &unk_283CB1380;
  v10[308] = &unk_283CB1200;
  v10[309] = &unk_283CB1188;
  v10[310] = &unk_283CB1200;
  v10[311] = &unk_283CB1140;
  v10[312] = &unk_283CB11B8;
  v10[313] = &unk_283CB1170;
  v10[314] = &unk_283CB1200;
  v10[315] = &unk_283CB1110;
  v10[316] = &unk_283CB11B8;
  v10[317] = &unk_283CB1128;
  v10[318] = &unk_283CB1188;
  v10[319] = &unk_283CB1140;
  v10[320] = &unk_283CB1128;
  v10[321] = &unk_283CB1380;
  v10[322] = &unk_283CB17A0;
  v10[323] = &unk_283CB17A0;
  v10[324] = &unk_283CB11A0;
  v10[325] = &unk_283CB13C8;
  v10[326] = &unk_283CB13B0;
  v10[327] = &unk_283CB1380;
  v10[328] = &unk_283CB1200;
  v10[329] = &unk_283CB1188;
  v10[330] = &unk_283CB1218;
  v10[331] = &unk_283CB1398;
  v10[332] = &unk_283CB17A0;
  v10[333] = &unk_283CB14D0;
  v10[334] = &unk_283CB11A0;
  v10[335] = &unk_283CB13B0;
  v10[336] = &unk_283CB14D0;
  v10[337] = &unk_283CB1218;
  v10[338] = &unk_283CB1230;
  v10[339] = &unk_283CB1230;
  v10[340] = &unk_283CB13B0;
  v10[341] = &unk_283CB1398;
  v10[342] = &unk_283CB1200;
  v10[343] = &unk_283CB14D0;
  v10[344] = &unk_283CB1230;
  v10[345] = &unk_283CB1398;
  v10[346] = &unk_283CB1230;
  v10[347] = &unk_283CB1218;
  v10[348] = &unk_283CB17A0;
  v10[349] = &unk_283CB13C8;
  v10[350] = &unk_283CB1218;
  v10[351] = &unk_283CB1398;
  v10[352] = &unk_283CB17A0;
  v10[353] = &unk_283CB14D0;
  v10[354] = &unk_283CB11A0;
  v10[355] = &unk_283CB13B0;
  v10[356] = &unk_283CB14D0;
  v10[357] = &unk_283CB1218;
  v10[358] = &unk_283CB1230;
  v10[359] = &unk_283CB1230;
  v10[360] = &unk_283CB13B0;
  v10[361] = &unk_283CB1398;
  v10[362] = &unk_283CB1200;
  v10[363] = &unk_283CB14D0;
  v10[364] = &unk_283CB1230;
  v10[365] = &unk_283CB1398;
  v10[366] = &unk_283CB1230;
  v10[367] = &unk_283CB1218;
  v10[368] = &unk_283CB17A0;
  v10[369] = &unk_283CB13C8;
  v10[370] = &unk_283CB1230;
  v10[371] = &unk_283CB13B0;
  v10[372] = &unk_283CB1200;
  v10[373] = &unk_283CB1380;
  v10[374] = &unk_283CB11E8;
  v10[375] = &unk_283CB1230;
  v10[376] = &unk_283CB17A0;
  v10[377] = &unk_283CB1140;
  v10[378] = &unk_283CB1110;
  v10[379] = &unk_283CB1128;
  v10[380] = &unk_283CB1200;
  v10[381] = &unk_283CB1140;
  v10[382] = &unk_283CB11B8;
  v10[383] = &unk_283CB1170;
  v10[384] = &unk_283CB1200;
  v10[385] = &unk_283CB1110;
  v10[386] = &unk_283CB11B8;
  v10[387] = &unk_283CB1128;
  v10[388] = &unk_283CB1188;
  v10[389] = &unk_283CB1140;
  v10[390] = &unk_283CB1128;
  v10[391] = &unk_283CB1380;
  v10[392] = &unk_283CB17A0;
  v10[393] = &unk_283CB17A0;
  v10[394] = &unk_283CB11A0;
  v10[395] = &unk_283CB13C8;
  v10[396] = &unk_283CB13B0;
  v10[397] = &unk_283CB1380;
  v10[398] = &unk_283CB1200;
  v10[399] = &unk_283CB1188;
  v10[400] = &unk_283CB1218;
  v10[401] = &unk_283CB1398;
  v10[402] = &unk_283CB17A0;
  v10[403] = &unk_283CB14D0;
  v10[404] = &unk_283CB11A0;
  v10[405] = &unk_283CB13B0;
  v10[406] = &unk_283CB14D0;
  v10[407] = &unk_283CB1218;
  v10[408] = &unk_283CB1230;
  v10[409] = &unk_283CB1230;
  v10[410] = &unk_283CB13B0;
  v10[411] = &unk_283CB1398;
  v10[412] = &unk_283CB1200;
  v10[413] = &unk_283CB14D0;
  v10[414] = &unk_283CB1230;
  v10[415] = &unk_283CB1398;
  v10[416] = &unk_283CB1230;
  v10[417] = &unk_283CB1218;
  v10[418] = &unk_283CB17A0;
  v10[419] = &unk_283CB13C8;
  v10[420] = &unk_283CB11E8;
  v10[421] = &unk_283CB1368;
  v10[422] = &unk_283CB11E8;
  v10[423] = &unk_283CB1368;
  v10[424] = &unk_283CB13B0;
  v10[425] = &unk_283CB11E8;
  v10[426] = &unk_283CB1380;
  v10[427] = &unk_283CB13C8;
  v10[428] = &unk_283CB1398;
  v10[429] = &unk_283CB13C8;
  v10[430] = &unk_283CB17A0;
  v10[431] = &unk_283CB1380;
  v10[432] = &unk_283CB1200;
  v10[433] = &unk_283CB11E8;
  v10[434] = &unk_283CB13C8;
  v10[435] = &unk_283CB1188;
  v10[436] = &unk_283CB13B0;
  v10[437] = &unk_283CB1188;
  v10[438] = &unk_283CB13C8;
  v10[439] = &unk_283CB1398;
  v10[440] = &unk_283CB1380;
  v10[441] = &unk_283CB11E8;
  v10[442] = &unk_283CB1380;
  v10[443] = &unk_283CB1200;
  v10[444] = &unk_283CB1188;
  v10[445] = &unk_283CB17A0;
  v10[446] = &unk_283CB13C8;
  v10[447] = &unk_283CB1368;
  v10[448] = &unk_283CB1380;
  v10[449] = &unk_283CB1380;
  v10[450] = &unk_283CB1380;
  v10[451] = &unk_283CB13C8;
  v10[452] = &unk_283CB14D0;
  v10[453] = &unk_283CB1200;
  v10[454] = &unk_283CB1200;
  v10[455] = &unk_283CB13C8;
  v10[456] = &unk_283CB1368;
  v10[457] = &unk_283CB1200;
  v10[458] = &unk_283CB1218;
  v10[459] = &unk_283CB13C8;
  v10[460] = &unk_283CB13B0;
  v10[461] = &unk_283CB13B0;
  v10[462] = &unk_283CB1218;
  v10[463] = &unk_283CB14E8;
  v10[464] = &unk_283CB11A0;
  v10[465] = &unk_283CB1368;
  v10[466] = &unk_283CB1380;
  v10[467] = &unk_283CB13C8;
  v10[468] = &unk_283CB13C8;
  v10[469] = &unk_283CB13B0;
  v10[470] = &unk_283CB18A8;
  v10[471] = &unk_283CB14E8;
  v10[472] = &unk_283CB14D0;
  v10[473] = &unk_283CB13B0;
  v10[474] = &unk_283CB1500;
  v10[475] = &unk_283CB18C0;
  v10[476] = &unk_283CB14D0;
  v10[477] = &unk_283CB13C8;
  v10[478] = &unk_283CB1398;
  v10[479] = &unk_283CB1518;
  v10[480] = &unk_283CB1398;
  v10[481] = &unk_283CB13C8;
  v10[482] = &unk_283CB13E0;
  v10[483] = &unk_283CB1518;
  v10[484] = &unk_283CB14E8;
  v10[485] = &unk_283CB1368;
  v10[486] = &unk_283CB1218;
  v10[487] = &unk_283CB1218;
  v10[488] = &unk_283CB1398;
  v10[489] = &unk_283CB13B0;
  v10[490] = &unk_283CB1500;
  v10[491] = &unk_283CB13C8;
  v10[492] = &unk_283CB18A8;
  v10[493] = &unk_283CB13C8;
  v10[494] = &unk_283CB18C0;
  v10[495] = &unk_283CB13B0;
  v10[496] = &unk_283CB1500;
  v10[497] = &unk_283CB1500;
  v10[498] = &unk_283CB1230;
  v10[499] = &unk_283CB1518;
  v10[500] = &unk_283CB1218;
  v10[501] = &unk_283CB1230;
  v10[502] = &unk_283CB13C8;
  v10[503] = &unk_283CB1218;
  v10[504] = &unk_283CB1368;
  v10[505] = &unk_283CB1518;
  v10[506] = &unk_283CB1218;
  v10[507] = &unk_283CB13E0;
  v10[508] = &unk_283CB1218;
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:arc4random_uniform(0xAu) + 187];
  v10[509] = v5;
  v10[510] = &unk_283CB14E8;
  v10[511] = &unk_283CB1230;
  v10[512] = &unk_283CB1518;
  v10[513] = &unk_283CB1398;
  v10[514] = &unk_283CB1218;
  v10[515] = &unk_283CB1218;
  v10[516] = &unk_283CB13B0;
  v10[517] = &unk_283CB1218;
  v10[518] = &unk_283CB1218;
  v10[519] = &unk_283CB17A0;
  v10[520] = &unk_283CB1188;
  v10[521] = &unk_283CB17A0;
  v10[522] = &unk_283CB1188;
  v10[523] = &unk_283CB13B0;
  v10[524] = &unk_283CB1170;
  v10[525] = &unk_283CB11E8;
  v10[526] = &unk_283CB1140;
  v10[527] = &unk_283CB1200;
  v10[528] = &unk_283CB17A0;
  v10[529] = &unk_283CB11D0;
  v10[530] = &unk_283CB11A0;
  v10[531] = &unk_283CB11D0;
  v10[532] = &unk_283CB11D0;
  v10[533] = &unk_283CB11E8;
  v10[534] = &unk_283CB1200;
  v10[535] = &unk_283CB11D0;
  v10[536] = &unk_283CB1158;
  v10[537] = &unk_283CB1140;
  v10[538] = &unk_283CB1158;
  v10[539] = &unk_283CB10E0;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:540];

  [HDDemoDataActivitySampleGenerator _generateWorkoutDataWithHeartRates:v6 recoveryHeartRates:&unk_283CAEB30 objectCollection:collectionCopy demoPerson:stateCopy workoutState:?];
}

- (void)_generateUnderwaterDivingWorkoutDataWithObjectCollection:(void *)collection demoPerson:
{
  v28[120] = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  v19 = a2;
  v28[0] = &unk_283CB1B78;
  v28[1] = &unk_283CB1B90;
  v28[2] = &unk_283CB1BA8;
  v28[3] = &unk_283CB1BC0;
  v28[4] = &unk_283CB1BD8;
  v28[5] = &unk_283CB1BF0;
  v28[6] = &unk_283CB1C08;
  v28[7] = &unk_283CB1C20;
  v28[8] = &unk_283CB1C20;
  v28[9] = &unk_283CB1C38;
  v28[10] = &unk_283CB1C50;
  v28[11] = &unk_283CB1C68;
  v28[12] = &unk_283CB1C68;
  v28[13] = &unk_283CB1C80;
  v28[14] = &unk_283CB1C98;
  v28[15] = &unk_283CB1CB0;
  v28[16] = &unk_283CB1CC8;
  v28[17] = &unk_283CB1CE0;
  v28[18] = &unk_283CB1AE8;
  v28[19] = &unk_283CB1AA0;
  v28[20] = &unk_283CB1A88;
  v28[21] = &unk_283CB19E0;
  v28[22] = &unk_283CB1A28;
  v28[23] = &unk_283CB1920;
  v28[24] = &unk_283CB1B00;
  v28[25] = &unk_283CB19F8;
  v28[26] = &unk_283CB1908;
  v28[27] = &unk_283CB1950;
  v28[28] = &unk_283CB1848;
  v28[29] = &unk_283CB1740;
  v28[32] = &unk_283CB16B0;
  v28[33] = &unk_283CB16E0;
  v28[34] = &unk_283CB16C8;
  v28[35] = &unk_283CB1890;
  v28[30] = &unk_283CB16F8;
  v28[31] = &unk_283CB16C8;
  v28[36] = &unk_283CB1860;
  v28[37] = &unk_283CB16C8;
  v28[38] = &unk_283CB16C8;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:arc4random_uniform(0xAu) + 90];
  v28[39] = v4;
  v28[40] = &unk_283CB16C8;
  v28[41] = &unk_283CB1830;
  v28[42] = &unk_283CB0EB8;
  v28[43] = &unk_283CB1740;
  v28[44] = &unk_283CB1980;
  v28[45] = &unk_283CB1740;
  v28[46] = &unk_283CB18D8;
  v28[47] = &unk_283CB1908;
  v28[48] = &unk_283CB19F8;
  v28[49] = &unk_283CB1CF8;
  v28[50] = &unk_283CB1A28;
  v28[51] = &unk_283CB1A88;
  v28[52] = &unk_283CB1AA0;
  v28[53] = &unk_283CB1AE8;
  v28[54] = &unk_283CB1AD0;
  v28[55] = &unk_283CB1CE0;
  v28[56] = &unk_283CB1AA0;
  v28[57] = &unk_283CB1AD0;
  v28[58] = &unk_283CB1D10;
  v28[59] = &unk_283CB1AE8;
  v28[60] = &unk_283CB1CC8;
  v28[61] = &unk_283CB1D28;
  v28[62] = &unk_283CB1D40;
  v28[63] = &unk_283CB1D58;
  v28[64] = &unk_283CB1D70;
  v28[65] = &unk_283CB1D88;
  v28[66] = &unk_283CB1C98;
  v28[67] = &unk_283CB1DA0;
  v28[68] = &unk_283CB1C80;
  v28[69] = &unk_283CB1DB8;
  v28[70] = &unk_283CB1DD0;
  v28[71] = &unk_283CB1DA0;
  v28[72] = &unk_283CB1DE8;
  v28[73] = &unk_283CB1C98;
  v28[74] = &unk_283CB1C98;
  v28[75] = &unk_283CB1E00;
  v28[76] = &unk_283CB1E00;
  v28[77] = &unk_283CB1CB0;
  v28[78] = &unk_283CB1E18;
  v28[79] = &unk_283CB1D88;
  v28[80] = &unk_283CB1CB0;
  v28[81] = &unk_283CB1CB0;
  v28[82] = &unk_283CB1CB0;
  v28[83] = &unk_283CB1E30;
  v28[84] = &unk_283CB1D70;
  v28[85] = &unk_283CB1D70;
  v28[86] = &unk_283CB1E48;
  v28[87] = &unk_283CB1D58;
  v28[88] = &unk_283CB1D58;
  v28[89] = &unk_283CB1CB0;
  v28[90] = &unk_283CB1D88;
  v28[91] = &unk_283CB1DE8;
  v28[92] = &unk_283CB1E00;
  v28[93] = &unk_283CB1C98;
  v28[94] = &unk_283CB1C98;
  v28[95] = &unk_283CB1DA0;
  v28[96] = &unk_283CB1DB8;
  v28[97] = &unk_283CB1E60;
  v28[98] = &unk_283CB1C80;
  v28[99] = &unk_283CB1E78;
  v28[100] = &unk_283CB1E90;
  v28[101] = &unk_283CB1C68;
  v28[102] = &unk_283CB1C68;
  v28[103] = &unk_283CB1EA8;
  v28[104] = &unk_283CB1EC0;
  v28[105] = &unk_283CB1ED8;
  v28[106] = &unk_283CB1C20;
  v28[107] = &unk_283CB1EF0;
  v28[108] = &unk_283CB1EF0;
  v28[109] = &unk_283CB1EF0;
  v28[110] = &unk_283CB1EF0;
  v28[111] = &unk_283CB1EF0;
  v28[112] = &unk_283CB1EF0;
  v28[113] = &unk_283CB1EF0;
  v28[114] = &unk_283CB1BC0;
  v28[115] = &unk_283CB1F08;
  v28[116] = &unk_283CB1F20;
  v28[117] = &unk_283CB1F38;
  v28[118] = &unk_283CB1F38;
  v28[119] = &unk_283CB1B78;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:120];

  v6 = *MEMORY[0x277CCCC90];
  footUnit = [MEMORY[0x277CCDAB0] footUnit];
  v8 = *(self + 264);
  v9 = footUnit;
  v10 = v19;
  v11 = v8;
  v12 = MEMORY[0x277CCD830];
  v13 = v5;
  v14 = [v12 quantityTypeForIdentifier:v6];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __145__HDDemoDataActivitySampleGenerator__generateWorkoutDataForTypeIdentifier_unit_samples_objectCollection_demoPerson_sampleFrequency_workoutState___block_invoke;
  v22[3] = &unk_27861EDC0;
  v15 = v11;
  v23 = v15;
  v27 = 0x403E000000000000;
  v16 = v9;
  v24 = v16;
  v25 = v14;
  v17 = v10;
  v26 = v17;
  v18 = v14;
  [v13 enumerateObjectsUsingBlock:v22];
}

- (void)_generateCyclingFTPSamplesForDemoPerson:(void *)person sampleDate:(void *)date objectCollection:
{
  dateCopy = date;
  personCopy = person;
  v9 = a2;
  [v9 cyclingFTPMean];
  v11 = v10;
  [v9 cyclingFTPMeanStdDev];
  v13 = v12;

  v24 = [MEMORY[0x277CCABB0] numberWithDouble:v11 + arc4random_uniform(v13)];
  v14 = MEMORY[0x277CCD7E8];
  wattUnit = [MEMORY[0x277CCDAB0] wattUnit];
  [v24 doubleValue];
  v16 = [v14 quantityWithUnit:wattUnit doubleValue:?];

  v17 = MEMORY[0x277CCD800];
  v18 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCC9B8]];
  v19 = *(self + 264);
  if (v19)
  {
    v20 = *(v19 + 56);
  }

  else
  {
    v20 = 0;
  }

  v21 = [v17 quantitySampleWithType:v18 quantity:v16 startDate:v20 endDate:personCopy];

  [dateCopy addObjectFromWatch:v21];
  v22 = *(self + 264);
  uUID = [v21 UUID];
  if (v22)
  {
    [*(v22 + 8) hk_appendBytesWithUUID:uUID];
  }
}

- (void)_generateWorkoutEffortWithObjectCollection:(void *)collection forWorkout:(void *)workout dataType:
{
  v7 = MEMORY[0x277CCABB0];
  workoutCopy = workout;
  collectionCopy = collection;
  v10 = a2;
  v21 = [v7 numberWithUnsignedInt:arc4random_uniform(7u) + 3];
  v11 = MEMORY[0x277CCD7E8];
  appleEffortScoreUnit = [MEMORY[0x277CCDAB0] appleEffortScoreUnit];
  [v21 doubleValue];
  v13 = [v11 quantityWithUnit:appleEffortScoreUnit doubleValue:?];

  v14 = MEMORY[0x277CCD800];
  v15 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:workoutCopy];

  startDate = [collectionCopy startDate];
  endDate = [collectionCopy endDate];

  v18 = [v14 quantitySampleWithType:v15 quantity:v13 startDate:startDate endDate:endDate];

  [v10 addObjectFromWatch:v18];
  v19 = *(self + 264);
  uUID = [v18 UUID];
  if (v19)
  {
    [*(v19 + 16) hk_appendBytesWithUUID:uUID];
  }
}

- (void)_generateWorkoutDataWithHeartRates:(void *)rates recoveryHeartRates:(void *)heartRates objectCollection:demoPerson:workoutState:
{
  v38[1] = *MEMORY[0x277D85DE8];
  ratesCopy = rates;
  heartRatesCopy = heartRates;
  v9 = MEMORY[0x277CCDAB0];
  v10 = a2;
  selfCopy = self;
  _countPerMinuteUnit = [v9 _countPerMinuteUnit];
  v13 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
  v37 = *MEMORY[0x277CCE030];
  v38[0] = &unk_283CB1F50;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __132__HDDemoDataActivitySampleGenerator__generateWorkoutDataWithHeartRates_recoveryHeartRates_objectCollection_demoPerson_workoutState___block_invoke;
  v31[3] = &unk_27861ED98;
  v15 = heartRatesCopy;
  v32 = v15;
  v16 = _countPerMinuteUnit;
  v33 = v16;
  v17 = v13;
  v34 = v17;
  v35 = v14;
  v18 = ratesCopy;
  v36 = v18;
  v19 = v14;
  [selfCopy enumerateObjectsUsingBlock:v31];
  v20 = [selfCopy count];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __132__HDDemoDataActivitySampleGenerator__generateWorkoutDataWithHeartRates_recoveryHeartRates_objectCollection_demoPerson_workoutState___block_invoke_2;
  v25[3] = &unk_27861EDC0;
  v21 = v15;
  v26 = v21;
  v27 = v16;
  v30 = v20 / 0xA;
  v28 = v17;
  v22 = v18;
  v29 = v22;
  v23 = v17;
  v24 = v16;
  [v10 enumerateObjectsUsingBlock:v25];
}

- (void)_generateSwimmingSegmentDataWithStartDate:(uint64_t)date segmentTime:(uint64_t)time segmentDistance:(void *)distance numLaps:(void *)laps strokeStyle:(double)style objectCollection:(double)collection demoPerson:
{
  v70[1] = *MEMORY[0x277D85DE8];
  v13 = a2;
  distanceCopy = distance;
  lapsCopy = laps;
  v15 = [v13 dateByAddingTimeInterval:style];
  v63 = v13;
  v16 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v13 endDate:v15];
  v17 = [MEMORY[0x277CCDC68] workoutEventWithType:7 dateInterval:v16 metadata:0];
  v18 = *(self + 264);
  if (v18)
  {
    [*(v18 + 24) addObject:v17];
  }

  v19 = collection / date;
  v20 = MEMORY[0x277CCD7E8];
  yardUnit = [MEMORY[0x277CCDAB0] yardUnit];
  v22 = [v20 quantityWithUnit:yardUnit doubleValue:v19];

  v23 = v22;
  v24 = lapsCopy;
  yardUnit2 = [MEMORY[0x277CCDAB0] yardUnit];
  v64 = v23;
  [v23 doubleValueForUnit:yardUnit2];
  v27 = v26;

  [v24 swimmingStrokesPerYard];
  v29 = v27 * v28;
  v30 = arc4random_uniform(0x64u);
  v31 = v29 * (v30 / 1000.0 + v30 / 1000.0 * -0.5 + 1.0);
  if (v31 <= 0.00000011920929)
  {
    v34 = 0;
  }

  else
  {
    v32 = MEMORY[0x277CCD7E8];
    countUnit = [MEMORY[0x277CCDAB0] countUnit];
    v34 = [v32 quantityWithUnit:countUnit doubleValue:v31];
  }

  v62 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCB38]];
  v61 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCC78]];
  v69 = *MEMORY[0x277CCC518];
  v35 = [MEMORY[0x277CCABB0] numberWithInteger:time];
  v70[0] = v35;
  v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:&v69 count:1];

  if (date >= 1)
  {
    v57 = v24;
    v58 = v17;
    v59 = v16;
    v60 = v15;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = style / date;
    v40 = 0x280D58000uLL;
    do
    {
      v41 = v38;
      v42 = v37;
      v37 = [v63 dateByAddingTimeInterval:{v39 * v36, v57, v58, v59, v60}];

      v38 = [v63 dateByAddingTimeInterval:v39 * ++v36];

      v43 = MEMORY[0x277CCDC68];
      v44 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v38 duration:0.0];
      v45 = [v43 workoutEventWithType:3 dateInterval:v44 metadata:v67];

      v46 = *(self + *(v40 + 3192));
      if (v46)
      {
        [*(v46 + 24) addObject:v45];
      }

      v47 = [MEMORY[0x277CCD800] quantitySampleWithType:v62 quantity:v64 startDate:v37 endDate:v38];
      v48 = *(self + *(v40 + 3192));
      if (v48)
      {
        *(v48 + 88) = v19 + *(v48 + 88);
      }

      [distanceCopy addObjectFromWatch:v47];
      v49 = *(self + *(v40 + 3192));
      uUID = [v47 UUID];
      if (v49)
      {
        [*(v49 + 8) hk_appendBytesWithUUID:uUID];
      }

      if (v34)
      {
        v51 = [MEMORY[0x277CCD800] quantitySampleWithType:v61 quantity:v34 startDate:v37 endDate:v38 metadata:v67];
        v52 = *(self + *(v40 + 3192));
        countUnit2 = [MEMORY[0x277CCDAB0] countUnit];
        [v34 doubleValueForUnit:countUnit2];
        if (v52)
        {
          *(v52 + 136) = v54 + *(v52 + 136);
        }

        [distanceCopy addObjectFromWatch:v51];
        v55 = *(self + 264);
        uUID2 = [v51 UUID];
        if (v55)
        {
          [*(v55 + 8) hk_appendBytesWithUUID:uUID2];
        }

        v40 = 0x280D58000;
      }
    }

    while (date != v36);

    v16 = v59;
    v15 = v60;
    v24 = v57;
    v17 = v58;
  }
}

void __132__HDDemoDataActivitySampleGenerator__generateWorkoutDataWithHeartRates_recoveryHeartRates_objectCollection_demoPerson_workoutState___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 56);
  }

  else
  {
    v5 = 0;
  }

  v6 = (6 * a3);
  v7 = a2;
  v16 = [v5 dateByAddingTimeInterval:v6];
  v8 = MEMORY[0x277CCD7E8];
  v9 = *(a1 + 40);
  [v7 doubleValue];
  v11 = v10;

  v12 = [v8 quantityWithUnit:v9 doubleValue:v11];
  v13 = [MEMORY[0x277CCD800] quantitySampleWithType:*(a1 + 48) quantity:v12 startDate:v16 endDate:v16 metadata:*(a1 + 56)];
  [*(a1 + 64) addObjectFromWatch:v13];
  v14 = *(a1 + 32);
  v15 = [v13 UUID];
  if (v14)
  {
    [*(v14 + 8) hk_appendBytesWithUUID:v15];
  }
}

void __132__HDDemoDataActivitySampleGenerator__generateWorkoutDataWithHeartRates_recoveryHeartRates_objectCollection_demoPerson_workoutState___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 56);
  }

  else
  {
    v5 = 0;
  }

  v6 = (5 * a3 + 60 * *(a1 + 64));
  v7 = a2;
  v8 = [v5 dateByAddingTimeInterval:v6];
  v9 = MEMORY[0x277CCD7E8];
  v10 = *(a1 + 40);
  [v7 doubleValue];
  v12 = v11;

  v13 = [v9 quantityWithUnit:v10 doubleValue:v12];
  v14 = MEMORY[0x277CCD800];
  v15 = *(a1 + 48);
  v18 = *MEMORY[0x277CCE030];
  v19[0] = &unk_283CB1F68;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v17 = [v14 quantitySampleWithType:v15 quantity:v13 startDate:v8 endDate:v8 metadata:v16];

  [*(a1 + 56) addObjectFromWatch:v17];
}

void __145__HDDemoDataActivitySampleGenerator__generateWorkoutDataForTypeIdentifier_unit_samples_objectCollection_demoPerson_sampleFrequency_workoutState___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 56);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 64) * a3;
  v7 = a2;
  v16 = [v5 dateByAddingTimeInterval:v6];
  v8 = MEMORY[0x277CCD7E8];
  v9 = *(a1 + 40);
  [v7 doubleValue];
  v11 = v10;

  v12 = [v8 quantityWithUnit:v9 doubleValue:v11];
  v13 = [MEMORY[0x277CCD800] quantitySampleWithType:*(a1 + 48) quantity:v12 startDate:v16 endDate:v16];
  [*(a1 + 56) addObjectFromWatch:v13];
  v14 = *(a1 + 32);
  v15 = [v13 UUID];
  if (v14)
  {
    [*(v14 + 8) hk_appendBytesWithUUID:v15];
  }
}

- (double)_generateWorkoutDataSamplesForDemoPerson:(void *)person atTime:(void *)time sampleDate:(void *)date addFromWatch:(void *)watch objectCollection:(double)collection nextSampleTime:(double)sampleTime typeIdentifier:(double)identifier unit:(double)self0 sampleMean:(double)self1 sampleMeanStdDev:sampleFrequency:workoutState:
{
  v21 = a2;
  personCopy = person;
  timeCopy = time;
  dateCopy = date;
  watchCopy = watch;
  if (collection >= sampleTime)
  {
    sampleTime = sampleTime + mean;
    demoDataGenerator = [self demoDataGenerator];
    firstSampleDate = [demoDataGenerator firstSampleDate];
    v28 = [v21 compare:firstSampleDate];

    if (v28 != -1)
    {
      demoDataGenerator2 = [self demoDataGenerator];
      statisticsSampleGenerator = [demoDataGenerator2 statisticsSampleGenerator];
      [statisticsSampleGenerator computeNoiseFromTime:collection stdDev:unit];
      v32 = v31 + identifier;

      v33 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:timeCopy];
      v34 = [MEMORY[0x277CCD7E8] quantityWithUnit:dateCopy doubleValue:v32];
      v40 = v33;
      v35 = [MEMORY[0x277CCD800] quantitySampleWithType:v33 quantity:v34 startDate:v21 endDate:v21];
      [personCopy addObjectFromWatch:v35];
      demoDataGenerator3 = [self demoDataGenerator];
      generatorState = [demoDataGenerator3 generatorState];
      LODWORD(v33) = [generatorState isExercising];

      if (v33)
      {
        uUID = [v35 UUID];
        if (watchCopy)
        {
          [watchCopy[1] hk_appendBytesWithUUID:uUID];
        }
      }
    }
  }

  return sampleTime;
}

- (double)_computeExerciseTimeFromCurrentTime:(double)time mean:(double)mean stdDev:(double)dev
{
  timeCopy = time;
  demoDataGenerator = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  statisticsSampleGenerator = [demoDataGenerator statisticsSampleGenerator];
  [statisticsSampleGenerator computeStatisticalTimeFromCurrentTime:(timeCopy + 10) mean:mean stdDev:dev];
  v11 = v10;

  return v11;
}

- (id)_computeFlightsClimbedForDemoPerson:(id)person atTime:(double)time
{
  personCopy = person;
  demoDataGenerator = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  sleepSampleGenerator = [demoDataGenerator sleepSampleGenerator];
  v9 = [sleepSampleGenerator isDemoPersonAwake:personCopy atTime:time];

  if (v9 && ([personCopy flightsClimbedSampleFrequency], -[HDDemoDataActivitySampleGenerator _isDemoPersonWalking:atTime:samplePeriod:](self, "_isDemoPersonWalking:atTime:samplePeriod:", personCopy, time, v10)))
  {
    demoDataGenerator2 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v13 = [demoDataGenerator2 isDemoDataTimeInWeekend:currentCalendar calendar:time];

    if (v13)
    {
      [personCopy weekendSleepParameters];
    }

    else
    {
      [personCopy weekdaySleepParameters];
    }
    v15 = ;
    demoDataGenerator3 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    sleepSampleGenerator2 = [demoDataGenerator3 sleepSampleGenerator];
    [v15 bedtime];
    v19 = v18;
    [personCopy bedtimeNoiseStdDev];
    [sleepSampleGenerator2 computeSleepTimeFromCurrentTime:time mean:v19 stdDev:v20];
    v22 = v21;

    demoDataGenerator4 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    sleepSampleGenerator3 = [demoDataGenerator4 sleepSampleGenerator];
    [v15 wakeUpTime];
    v26 = v25;
    [personCopy wakeUpTimeNoiseStdDev];
    [sleepSampleGenerator3 computeSleepTimeFromCurrentTime:time mean:v26 stdDev:v27];
    v29 = v28;

    [personCopy flightsClimbedSampleFrequency];
    v31 = (v22 - v29) / v30 * 0.6;
    [personCopy flightsClimbedDailyMean];
    v33 = v32;
    demoDataGenerator5 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    statisticsSampleGenerator = [demoDataGenerator5 statisticsSampleGenerator];
    [personCopy flightsClimbedStdDev];
    [statisticsSampleGenerator computeNoiseFromTime:time + 1.0 stdDev:v36];
    v38 = (v33 + v37) / 2.5;

    v39 = v38 / v31;
    demoDataGenerator6 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    statisticsSampleGenerator2 = [demoDataGenerator6 statisticsSampleGenerator];
    [statisticsSampleGenerator2 pseudoRandomDoubleFromTime:time];
    v43 = v42;

    if (v43 < v39)
    {
      demoDataGenerator7 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      statisticsSampleGenerator3 = [demoDataGenerator7 statisticsSampleGenerator];
      [statisticsSampleGenerator3 computeNoiseFromTime:time stdDev:1.0];
      v47 = fabs(v46 + 2.5);

      v14 = [MEMORY[0x277CCABB0] numberWithInteger:v47];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (double)_computePercentCooledForDemoPerson:(id)person atTime:(double)time
{
  personCopy = person;
  [personCopy exerciseStopTime];
  v8 = v7;
  [personCopy exerciseStopTimeStdDev];
  [(HDDemoDataActivitySampleGenerator *)self _computeExerciseTimeFromCurrentTime:time mean:v8 stdDev:v9];
  v11 = v10;
  [personCopy exerciseCooldownTime];
  v12 = time - time;
  v14 = v11 + v13;
  if (v12 <= v11 || v12 > v14)
  {
    demoDataGenerator = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    generatorState = [demoDataGenerator generatorState];
    isExercising = [generatorState isExercising];

    if (isExercising)
    {
      v21 = 0.0;
    }

    else
    {
      v21 = 1.0;
    }
  }

  else
  {
    v19 = v12 - v11;
    [personCopy exerciseCooldownTime];
    v21 = v19 / v20;
  }

  return v21;
}

- (BOOL)_isDemoPersonCoolingDown:(id)down atTime:(double)time
{
  downCopy = down;
  demoDataGenerator = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  generatorState = [demoDataGenerator generatorState];
  isExercising = [generatorState isExercising];

  if (isExercising)
  {
    [downCopy exerciseStopTime];
    v11 = v10;
    [downCopy exerciseStopTimeStdDev];
    [(HDDemoDataActivitySampleGenerator *)self _computeExerciseTimeFromCurrentTime:time mean:v11 stdDev:v12];
    v14 = v13;
    [downCopy exerciseCooldownTime];
    v15 = time - time;
    v17 = v15 <= v14 + v16 && v15 > v14;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)_isDemoPersonSedentary:(id)sedentary atTime:(double)time
{
  sedentaryCopy = sedentary;
  demoDataGenerator = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  sleepSampleGenerator = [demoDataGenerator sleepSampleGenerator];
  v9 = [sleepSampleGenerator isDemoPersonAwake:sedentaryCopy atTime:time];

  if (!v9)
  {
    return 0;
  }

  demoDataGenerator2 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  generatorState = [demoDataGenerator2 generatorState];
  isExercising = [generatorState isExercising];

  if (isExercising)
  {
    return 0;
  }

  demoDataGenerator3 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  statisticsSampleGenerator = [demoDataGenerator3 statisticsSampleGenerator];
  [statisticsSampleGenerator computeNoiseFromTime:time stdDev:1.0];
  v13 = fabs(v16) >= 1.0;

  return v13;
}

- (BOOL)_isDemoPersonWalking:(id)walking atTime:(double)time samplePeriod:(double)period
{
  walkingCopy = walking;
  demoDataGenerator = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  sleepSampleGenerator = [demoDataGenerator sleepSampleGenerator];
  v10 = [sleepSampleGenerator isDemoPersonAwake:walkingCopy atTime:time];

  if (!v10)
  {
    return 0;
  }

  demoDataGenerator2 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  generatorState = [demoDataGenerator2 generatorState];
  isRunning = [generatorState isRunning];

  if (isRunning)
  {
    return 1;
  }

  demoDataGenerator3 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  statisticsSampleGenerator = [demoDataGenerator3 statisticsSampleGenerator];
  [statisticsSampleGenerator pseudoRandomDoubleFromTime:time];
  v18 = v17;

  return v18 < 0.6;
}

@end