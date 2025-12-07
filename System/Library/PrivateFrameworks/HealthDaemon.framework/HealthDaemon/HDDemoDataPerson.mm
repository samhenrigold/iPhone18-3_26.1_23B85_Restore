@interface HDDemoDataPerson
+ (id)defaultPersonWithBiologicalSex:(int64_t)sex;
- (HDDemoDataPerson)initWithFirstName:(id)name lastName:(id)lastName description:(id)description birthDateComponents:(id)components biologicalSex:(int64_t)sex;
- (id)fullName;
- (void)applyProfileType:(int64_t)type;
- (void)setHighFidelityGeneration:(BOOL)generation;
- (void)updateMedicalIDData;
@end

@implementation HDDemoDataPerson

- (HDDemoDataPerson)initWithFirstName:(id)name lastName:(id)lastName description:(id)description birthDateComponents:(id)components biologicalSex:(int64_t)sex
{
  nameCopy = name;
  lastNameCopy = lastName;
  descriptionCopy = description;
  componentsCopy = components;
  v22.receiver = self;
  v22.super_class = HDDemoDataPerson;
  v17 = [(HDDemoDataPerson *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_firstName, name);
    objc_storeStrong(&v18->_lastName, lastName);
    objc_storeStrong(&v18->_personDescription, description);
    objc_storeStrong(&v18->_birthDateComponents, components);
    v18->_biologicalSex = sex;
    v19 = objc_alloc_init(MEMORY[0x277CCDDF0]);
    medicalIDData = v18->_medicalIDData;
    v18->_medicalIDData = v19;
  }

  return v18;
}

+ (id)defaultPersonWithBiologicalSex:(int64_t)sex
{
  v93[7] = *MEMORY[0x277D85DE8];
  v4 = sex == 2;
  if (sex == 2)
  {
    v5 = @"Dave";
  }

  else
  {
    v5 = @"Lani";
  }

  v6 = @"Knox";
  if (sex != 2)
  {
    v6 = @"Martinez";
  }

  v7 = MEMORY[0x277CBEAB8];
  if (sex == 2)
  {
    v8 = 1971;
  }

  else
  {
    v8 = 1985;
  }

  if (sex == 2)
  {
    v9 = 73;
  }

  else
  {
    v9 = 65;
  }

  if (sex == 2)
  {
    v10 = 180;
  }

  else
  {
    v10 = 140;
  }

  if (sex == 2)
  {
    v11 = 74;
  }

  else
  {
    v11 = 58;
  }

  v12 = 150.0;
  if (sex == 2)
  {
    v12 = 200.0;
  }

  v63 = v12;
  v13 = 250.0;
  if (sex != 2)
  {
    v13 = 200.0;
  }

  v65 = v13;
  if (sex == 2)
  {
    v14 = 80.0;
  }

  else
  {
    v14 = 70.0;
  }

  v15 = 5.0;
  if (sex == 2)
  {
    v15 = 7.0;
  }

  v67 = v14;
  v69 = v15;
  v16 = 6.0;
  if (sex == 2)
  {
    v16 = 4.0;
  }

  v71 = v16;
  if (sex == 2)
  {
    v17 = 3.3;
  }

  else
  {
    v17 = 4.0;
  }

  v18 = 1.0;
  if (sex == 2)
  {
    v18 = 2.5;
  }

  v73 = v17;
  v75 = v18;
  if (sex == 2)
  {
    v19 = 31;
  }

  else
  {
    v19 = 26;
  }

  v20 = v6;
  v21 = v5;
  v22 = objc_alloc_init(v7);
  [v22 setMonth:2];
  [v22 setDay:10];
  [v22 setYear:v8];
  [v22 setEra:1];
  hk_gregorianCalendarWithUTCTimeZone = [MEMORY[0x277CBEA80] hk_gregorianCalendarWithUTCTimeZone];
  v77 = v22;
  [v22 setCalendar:hk_gregorianCalendarWithUTCTimeZone];

  v24 = [[HDDemoDataPerson alloc] initWithFirstName:v21 lastName:v20 description:@"Default Person" birthDateComponents:v22 biologicalSex:sex];
  [(HDDemoDataPerson *)v24 setBloodType:arc4random_uniform(7u) + 1];
  [(HDDemoDataPerson *)v24 setFitzpatrickSkinType:3];
  [(HDDemoDataPerson *)v24 setTimeIncrement:0.0208333333];
  [(HDDemoDataPerson *)v24 setTimeIncrementDuringExercise:0.000347222222];
  [(HDDemoDataPerson *)v24 setDawnTime:0.25];
  [(HDDemoDataPerson *)v24 setSunsetTime:0.8125];
  [(HDDemoDataPerson *)v24 setGenericSampleTimeNoiseStdDev:?];
  [(HDDemoDataPerson *)v24 setUvIndexSampleFrequency:0.0416666667];
  [(HDDemoDataPerson *)v24 setWaistCircumferenceInInches:33.0];
  [(HDDemoDataPerson *)v24 setWristCircumferenceInInches:0.0];
  [(HDDemoDataPerson *)v24 setForearmCircumferenceInInches:0.0];
  [(HDDemoDataPerson *)v24 setHipCircumferenceInInches:0.0];
  [(HDDemoDataPerson *)v24 setHeightTargetInCm:v9 * 2.53999996];
  [(HDDemoDataPerson *)v24 setHeightSampleTime:0.416666667];
  [(HDDemoDataPerson *)v24 setHeightSampleTimeFrequency:80.0];
  [(HDDemoDataPerson *)v24 setHeightSampleNoiseStdDev:?];
  [(HDDemoDataPerson *)v24 setWeightTargetInKg:v10 * 0.453592933];
  [(HDDemoDataPerson *)v24 setWeightSampleTime:0.375];
  [(HDDemoDataPerson *)v24 setWeightSampleTimeFrequency:1.0];
  [(HDDemoDataPerson *)v24 setWeightLossStartDay:110.0];
  [(HDDemoDataPerson *)v24 setWeightSampleNoiseStdDev:0.47627258];
  [(HDDemoDataPerson *)v24 setWeightDailyChangeStdDev:0.226796467];
  [(HDDemoDataPerson *)v24 setWeightChangePercentageMax:?];
  [(HDDemoDataPerson *)v24 setWeightDailyMaxLoss:0.317515053];
  [(HDDemoDataPerson *)v24 setWeightGainHolidayDaysInYear:&unk_283CAEAB8];
  [(HDDemoDataPerson *)v24 setRestingHeartRate:65];
  [(HDDemoDataPerson *)v24 setRestingHeartRateMaxDailyDifference:1];
  [(HDDemoDataPerson *)v24 setRestingHeartRateMaxTotalDifference:3];
  [(HDDemoDataPerson *)v24 setWalkingHeartRateAverage:110];
  [(HDDemoDataPerson *)v24 setWalkingHeartRateAverageMaxDailyDifference:5];
  [(HDDemoDataPerson *)v24 setWalkingHeartRateAverageMaxTotalDifference:15];
  [(HDDemoDataPerson *)v24 setHeartRateSampleFrequency:0.00555555556];
  [(HDDemoDataPerson *)v24 setHeartRateSampleFrequencyStdDev:0.0138888889];
  [(HDDemoDataPerson *)v24 setHeartRateSampleNoiseStdDev:13.0];
  [(HDDemoDataPerson *)v24 setHeartRateRecovery:50.0];
  [(HDDemoDataPerson *)v24 setHeartRateRecoveryValueStdDev:5.0];
  [(HDDemoDataPerson *)v24 setHeartRateRecoveryValueMaxConsecutiveDifference:10.0];
  [(HDDemoDataPerson *)v24 setHeartRateRecoveryValueMaxTotalDifference:50.0];
  [(HDDemoDataPerson *)v24 setVo2MaxValueStdDev:1.0];
  [(HDDemoDataPerson *)v24 setVo2MaxValueMaxConsecutiveDifference:1.0];
  [(HDDemoDataPerson *)v24 setVo2MaxValueMaxTotalDifference:3.0];
  [(HDDemoDataPerson *)v24 setVo2MaxSampleTimeNoiseStdDev:0.0208333333];
  [(HDDemoDataPerson *)v24 setRestingRespirationRate:13];
  [(HDDemoDataPerson *)v24 setRestingRespirationRateSampleFrequency:0.166666667];
  [(HDDemoDataPerson *)v24 setRestingRespirationRateSampleFrequencyDuringSleep:0.00694444444];
  [(HDDemoDataPerson *)v24 setRestingRespirationRateSampleNoiseStdDev:3.0];
  [(HDDemoDataPerson *)v24 setBloodPressureSampleFrequency:0.5];
  [(HDDemoDataPerson *)v24 setRestingSystolicBloodPressure:127];
  [(HDDemoDataPerson *)v24 setRestingDiastolicBloodPressure:84];
  [(HDDemoDataPerson *)v24 setRestingSystolicBloodPressureSampleNoiseStdDev:2.0];
  [(HDDemoDataPerson *)v24 setRestingDiastolicBloodPressureSampleNoiseStdDev:1.0];
  [(HDDemoDataPerson *)v24 setBodyTempSampleFrequency:0.5];
  [(HDDemoDataPerson *)v24 setBodyTempSampleNoiseStdDev:?];
  [(HDDemoDataPerson *)v24 setBodyTempFeverMultiplier:0.0];
  [(HDDemoDataPerson *)v24 setBodyTempExerciseMultiplier:0.015];
  [(HDDemoDataPerson *)v24 setBaseCorrectedWristSkinTemperatureInCelsius:36.0];
  [(HDDemoDataPerson *)v24 setDayToDayCorrectedWristSkinTemperatureNoiseStdDevInCelsius:0.25];
  [(HDDemoDataPerson *)v24 setOxygenSaturationSampleFrequency:0.0222222222];
  [(HDDemoDataPerson *)v24 setOxygenSaturationMean:98.0];
  [(HDDemoDataPerson *)v24 setOxygenSaturationStdDev:3.0];
  [(HDDemoDataPerson *)v24 setOxygenSaturationMeanAtElevation:93.5];
  [(HDDemoDataPerson *)v24 setOxygenSaturationStdDevAtElevation:1.5];
  [(HDDemoDataPerson *)v24 setOxygenSaturationMeasuringSuccessRate:0.2];
  [(HDDemoDataPerson *)v24 setOxygenSaturationMeasuringSuccessRateDuringSleep:?];
  [(HDDemoDataPerson *)v24 setPeripheralPerfusionIndexMean:4.0];
  [(HDDemoDataPerson *)v24 setPeripheralPerfusionIndexStdDev:0.5];
  [(HDDemoDataPerson *)v24 setPeripheralPerfusionIndexSampleFrequency:0.000347222222];
  [(HDDemoDataPerson *)v24 setSexualActivityProbabilityPercentage:0.2];
  [(HDDemoDataPerson *)v24 setSexualActivityProtectionProbabilityPercentage:0.6];
  [(HDDemoDataPerson *)v24 setSexualActivityProtectionDocumentationProbabilityPercentage:0.8];
  [(HDDemoDataPerson *)v24 setSexualActivityIsTryingToConceive:0];
  [(HDDemoDataPerson *)v24 setMenstrualPeriodFrequency:28.0];
  [(HDDemoDataPerson *)v24 setOvulationIndeterminateProbabilityPercentage:?];
  [(HDDemoDataPerson *)v24 setToothbrushingDurationMean:?];
  [(HDDemoDataPerson *)v24 setToothbrushingDurationMeanStdDev:20.0];
  [(HDDemoDataPerson *)v24 setHandwashingDurationMean:21.0];
  [(HDDemoDataPerson *)v24 setHandwashingDurationMeanStdDev:6.0];
  [(HDDemoDataPerson *)v24 setHandwashingSampleFrequency:0.0555555556];
  [(HDDemoDataPerson *)v24 setHandwashingSampleFrequencyStdDev:0.0208333333];
  [(HDDemoDataPerson *)v24 setTimeInDaylightSampleFrequency:0.0416666667];
  [(HDDemoDataPerson *)v24 setTimeInDaylightSampleFrequencyStdDev:0.00833333333];
  [(HDDemoDataPerson *)v24 timeIncrementDuringExercise];
  [(HDDemoDataPerson *)v24 setActiveCaloriesSampleFrequency:?];
  [(HDDemoDataPerson *)v24 setRestingCaloriesSampleFrequency:0.0416666667];
  [(HDDemoDataPerson *)v24 timeIncrement];
  [(HDDemoDataPerson *)v24 setStepsSampleFrequency:?];
  [(HDDemoDataPerson *)v24 timeIncrementDuringExercise];
  [(HDDemoDataPerson *)v24 setStepsSampleFrequencyDuringExercise:?];
  [(HDDemoDataPerson *)v24 setSedentarySampleFrequency:0.0416666667];
  [(HDDemoDataPerson *)v24 setRunningPowerMean:200.0];
  [(HDDemoDataPerson *)v24 setRunningPowerMeanStdDev:40.0];
  [(HDDemoDataPerson *)v24 setRunningStrideLengthMean:v11 * 2.53999996 / 100.0];
  [(HDDemoDataPerson *)v24 setRunningStrideLengthMeanStdDev:0.5];
  [(HDDemoDataPerson *)v24 setRunningVerticalOscillationMean:0.11];
  [(HDDemoDataPerson *)v24 setRunningVerticalOscillationMeanStdDev:0.02];
  [(HDDemoDataPerson *)v24 setRunningGroundContactTimeMean:200.0];
  [(HDDemoDataPerson *)v24 setRunningGroundContactTimeMeanStdDev:25.0];
  [(HDDemoDataPerson *)v24 setSwimmingStrokesPerYard:0.727272727];
  [(HDDemoDataPerson *)v24 setCyclingPowerMean:v63];
  [(HDDemoDataPerson *)v24 setCyclingPowerMeanStdDev:40.0];
  [(HDDemoDataPerson *)v24 setCyclingFTPMean:v65];
  [(HDDemoDataPerson *)v24 setCyclingFTPMeanStdDev:50.0];
  [(HDDemoDataPerson *)v24 setCyclingCadenceMean:v67];
  [(HDDemoDataPerson *)v24 setCyclingCadenceMeanStdDev:20.0];
  [(HDDemoDataPerson *)v24 setSpeedMeanStdDev:0.5];
  [(HDDemoDataPerson *)v24 setCyclingSpeedMean:v69];
  [(HDDemoDataPerson *)v24 setCrossCountrySkiingSpeedMean:v71];
  [(HDDemoDataPerson *)v24 setRowingSpeedMean:v73];
  [(HDDemoDataPerson *)v24 setPaddleSportsSpeedMean:v75];
  [(HDDemoDataPerson *)v24 setUnderwaterDivingWaterTemperatureMean:25.0];
  [(HDDemoDataPerson *)v24 setUnderwaterDivingWaterTemperatureStdDev:1.0];
  [(HDDemoDataPerson *)v24 setExerciseIntensityPercentage:0.8];
  [(HDDemoDataPerson *)v24 setExerciseStartTime:0.34375];
  [(HDDemoDataPerson *)v24 setExerciseStopTime:0.368055556];
  [(HDDemoDataPerson *)v24 setExerciseStartTimeStdDev:0.00833333333];
  [(HDDemoDataPerson *)v24 setExerciseStopTimeStdDev:0.00625];
  [(HDDemoDataPerson *)v24 setExerciseCooldownTime:0.00763888889];
  [(HDDemoDataPerson *)v24 setExerciseWeeklyWorkoutsMean:2.0];
  [(HDDemoDataPerson *)v24 setExerciseWeeklyWorkoutsStdDev:0.5];
  [(HDDemoDataPerson *)v24 setExercisePostDietWeeklyWorkoutsMean:3.8];
  [(HDDemoDataPerson *)v24 setExercisePostDietWeeklyWorkoutsStdDev:0.5];
  [(HDDemoDataPerson *)v24 setFlightsClimbedDailyMean:7.0];
  [(HDDemoDataPerson *)v24 setFlightsClimbedStdDev:3.0];
  [(HDDemoDataPerson *)v24 setFlightsClimbedSampleTime:0.0131944444];
  [(HDDemoDataPerson *)v24 setFlightsClimbedSampleFrequency:0.0104166667];
  [(HDDemoDataPerson *)v24 setFlightsClimbedSampleFrequencyStdDev:0.000694444444];
  [(HDDemoDataPerson *)v24 setRehabLogarithmicConstant:2.0];
  [(HDDemoDataPerson *)v24 setWalkingSpeedMean:1.5];
  [(HDDemoDataPerson *)v24 setWalkingSpeedStdDev:0.1];
  [(HDDemoDataPerson *)v24 setWalkingSpeedSampleFrequency:0.0416666667];
  [(HDDemoDataPerson *)v24 setWalkingSpeedSampleFrequencyStdDev:0.0104166667];
  [(HDDemoDataPerson *)v24 setStepLengthMean:v19 * 2.53999996 / 100.0];
  [(HDDemoDataPerson *)v24 setStepLengthStdDev:0.02];
  [(HDDemoDataPerson *)v24 setStepLengthSampleFrequency:0.0416666667];
  [(HDDemoDataPerson *)v24 setStepLengthSampleFrequencyStdDev:0.0104166667];
  [(HDDemoDataPerson *)v24 setAsymmetryPercentageMean:0.03];
  [(HDDemoDataPerson *)v24 setAsymmetryPercentageStdDev:0.01];
  [(HDDemoDataPerson *)v24 setAsymmetryPercentageSampleFrequency:0.0416666667];
  [(HDDemoDataPerson *)v24 setAsymmetryPercentageSampleFrequencyStdDev:0.0104166667];
  [(HDDemoDataPerson *)v24 setDoubleSupportPercentageMean:0.2];
  [(HDDemoDataPerson *)v24 setDoubleSupportPercentageStdDev:0.03];
  [(HDDemoDataPerson *)v24 setDoubleSupportPercentageSampleFrequency:0.0416666667];
  [(HDDemoDataPerson *)v24 setDoubleSupportPercentageSampleFrequencyStdDev:0.0104166667];
  [(HDDemoDataPerson *)v24 setSixMinuteWalkTestDistanceMean:dbl_22916AB00[v4]];
  [(HDDemoDataPerson *)v24 setSixMinuteWalkTestDistanceStdDev:12.0];
  [(HDDemoDataPerson *)v24 setSixMinuteWalkTestDistanceSampleFrequency:7.0];
  [(HDDemoDataPerson *)v24 setSixMinuteWalkTestDistanceSampleFrequencyStdDev:0.0416666667];
  [(HDDemoDataPerson *)v24 setStairAscentSpeedMean:0.2936];
  [(HDDemoDataPerson *)v24 setStairAscentSpeedStdDev:0.1134];
  [(HDDemoDataPerson *)v24 setStairAscentSpeedSampleFrequency:0.0416666667];
  [(HDDemoDataPerson *)v24 setStairAscentSpeedSampleFrequencyStdDev:0.0208333333];
  [(HDDemoDataPerson *)v24 setStairDescentSpeedMean:0.3109];
  [(HDDemoDataPerson *)v24 setStairDescentSpeedStdDev:0.1006];
  [(HDDemoDataPerson *)v24 setStairDescentSpeedSampleFrequency:0.0416666667];
  [(HDDemoDataPerson *)v24 setStairDescentSpeedSampleFrequencyStdDev:0.0208333333];
  [(HDDemoDataPerson *)v24 setWalkingSteadinessMean:0.85];
  [(HDDemoDataPerson *)v24 setWalkingSteadinessStdDev:0.05];
  [(HDDemoDataPerson *)v24 setWalkingSteadinessSampleFrequency:7.0];
  [(HDDemoDataPerson *)v24 setWalkingSteadinessSampleFrequencyStdDev:0.0104166667];
  [(HDDemoDataPerson *)v24 setMoveGoal:800.0];
  [(HDDemoDataPerson *)v24 setExerciseGoal:*MEMORY[0x277CCDF08]];
  [(HDDemoDataPerson *)v24 setStandGoal:*MEMORY[0x277CCDF00]];
  v92[0] = &unk_283CB0E10;
  v76 = +[HDDemoDataWorkoutPrototype HIITPrototype];
  v90[0] = v76;
  v74 = +[HDDemoDataWorkoutPrototype functionalStrengthTrainingPrototype];
  v90[1] = v74;
  v72 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:2];
  v70 = [HDDemoDataWorkoutPrototype pickRandomWorkoutFrom:v72];
  v91 = v70;
  v68 = [MEMORY[0x277CBEA60] arrayWithObjects:&v91 count:1];
  v93[0] = v68;
  v92[1] = &unk_283CB0E28;
  v66 = +[HDDemoDataWorkoutPrototype dancePrototype];
  v88[0] = v66;
  v64 = +[HDDemoDataWorkoutPrototype yogaPrototype];
  v88[1] = v64;
  v62 = +[HDDemoDataWorkoutPrototype rowingPrototype];
  v88[2] = v62;
  v61 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:3];
  v60 = [HDDemoDataWorkoutPrototype pickRandomWorkoutFrom:v61];
  v89 = v60;
  v59 = [MEMORY[0x277CBEA60] arrayWithObjects:&v89 count:1];
  v93[1] = v59;
  v92[2] = &unk_283CB0E40;
  v58 = +[HDDemoDataWorkoutPrototype swimmingPrototype];
  v86[0] = v58;
  v57 = +[HDDemoDataWorkoutPrototype coolDownPrototype];
  v86[1] = v57;
  v56 = +[HDDemoDataWorkoutPrototype skatingSportsPrototype];
  v86[2] = v56;
  v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:3];
  v54 = [HDDemoDataWorkoutPrototype pickRandomWorkoutFrom:v55];
  v87 = v54;
  v53 = [MEMORY[0x277CBEA60] arrayWithObjects:&v87 count:1];
  v93[2] = v53;
  v92[3] = &unk_283CB0E58;
  v52 = +[HDDemoDataWorkoutPrototype runningPrototype];
  v84[0] = v52;
  v51 = +[HDDemoDataWorkoutPrototype walkingPrototype];
  v84[1] = v51;
  v50 = +[HDDemoDataWorkoutPrototype soccerPrototype];
  v84[2] = v50;
  v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:3];
  v48 = [HDDemoDataWorkoutPrototype pickRandomWorkoutFrom:v49];
  v85 = v48;
  v47 = [MEMORY[0x277CBEA60] arrayWithObjects:&v85 count:1];
  v93[3] = v47;
  v92[4] = &unk_283CB0E70;
  v46 = +[HDDemoDataWorkoutPrototype ellipticalPrototype];
  v82[0] = v46;
  v45 = +[HDDemoDataWorkoutPrototype coreTrainingPrototype];
  v82[1] = v45;
  v44 = +[HDDemoDataWorkoutPrototype golfPrototype];
  v82[2] = v44;
  v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:3];
  v42 = [HDDemoDataWorkoutPrototype pickRandomWorkoutFrom:v43];
  v83 = v42;
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v83 count:1];
  v93[4] = v41;
  v92[5] = &unk_283CB0E88;
  v40 = +[HDDemoDataWorkoutPrototype cyclingPrototype];
  v80[0] = v40;
  v39 = +[HDDemoDataWorkoutPrototype paddleSportsPrototype];
  v80[1] = v39;
  v38 = +[HDDemoDataWorkoutPrototype downhillSnowSportsPrototype];
  v80[2] = v38;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:3];
  v25 = [HDDemoDataWorkoutPrototype pickRandomWorkoutFrom:v37];
  v81 = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v81 count:1];
  v93[5] = v26;
  v92[6] = &unk_283CB0EA0;
  v27 = +[HDDemoDataWorkoutPrototype hikingPrototype];
  v78[0] = v27;
  v28 = +[HDDemoDataWorkoutPrototype underwaterDivingPrototype];
  v78[1] = v28;
  v29 = +[HDDemoDataWorkoutPrototype crossCountrySkiingPrototype];
  v78[2] = v29;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:3];
  v31 = [HDDemoDataWorkoutPrototype pickRandomWorkoutFrom:v30];
  v79 = v31;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v79 count:1];
  v93[6] = v32;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:v92 count:7];
  [(HDDemoDataPerson *)v24 setWorkoutPrototypesByCalendarDay:v33];

  [(HDDemoDataPerson *)v24 setMealTimeSampleNoiseStdDev:0.03125];
  [(HDDemoDataPerson *)v24 setBreakfastTimeSampleNoiseStdDev:0.00625];
  [(HDDemoDataPerson *)v24 setBreakfastTime:0.302083333];
  [(HDDemoDataPerson *)v24 setLunchTime:0.5];
  [(HDDemoDataPerson *)v24 setSnackTime:0.625];
  [(HDDemoDataPerson *)v24 setDinnerTime:0.791666667];
  [(HDDemoDataPerson *)v24 setPreDietIntakeMultiplier:1.07];
  [(HDDemoDataPerson *)v24 setNumCupsOfCoffeeDailyMean:1.0];
  [(HDDemoDataPerson *)v24 setNumCupsOfCoffeeStdDev:0.5];
  [(HDDemoDataPerson *)v24 setWaterConsumedSampleFrequency:0.01875];
  [(HDDemoDataPerson *)v24 setWaterConsumedDailyMean:1000.0];
  [(HDDemoDataPerson *)v24 setWaterConsumedStdDev:125.0];
  [(HDDemoDataPerson *)v24 setWaterConsumedIntervalMean:300.0];
  [(HDDemoDataPerson *)v24 setWaterConsumedIntervalStdDev:225.0];
  [(HDDemoDataPerson *)v24 setWaterConsumedSampleTime:0.0416666667];
  v34 = objc_alloc_init(HDDemoDataSleepParameters);
  [(HDDemoDataSleepParameters *)v34 setBedtime:0.951388889];
  [(HDDemoDataSleepParameters *)v34 setWakeUpTime:0.25];
  [(HDDemoDataSleepParameters *)v34 setBedtimeGoalHour:23];
  [(HDDemoDataSleepParameters *)v34 setWakeUpTimeGoalHour:6];
  [(HDDemoDataPerson *)v24 setWeekdaySleepParameters:v34];
  v35 = objc_alloc_init(HDDemoDataSleepParameters);
  [(HDDemoDataSleepParameters *)v35 setBedtime:0.0];
  [(HDDemoDataSleepParameters *)v35 setWakeUpTime:0.298611111];
  [(HDDemoDataSleepParameters *)v35 setBedtimeGoalHour:0];
  [(HDDemoDataSleepParameters *)v35 setWakeUpTimeGoalHour:7];
  [(HDDemoDataPerson *)v24 setWeekendSleepParameters:v35];
  [(HDDemoDataPerson *)v24 setWakeUpTimeNoiseStdDev:0.0277777778];
  [(HDDemoDataPerson *)v24 setBedtimeNoiseStdDev:0.0201388889];
  [(HDDemoDataPerson *)v24 setInBedTimeStdDev:0.0107638889];
  [(HDDemoDataPerson *)v24 setFallSampleFrequency:0.0416666667];
  [(HDDemoDataPerson *)v24 setFallsDailyMean:0.2];
  [(HDDemoDataPerson *)v24 setFallsDailyStdDev:0.15];
  [(HDDemoDataPerson *)v24 setUseContinuousGlucoseMonitoring:1];
  [(HDDemoDataPerson *)v24 setContinuousGlucoseMonitoringSampleFrequency:0.00347222222];
  [(HDDemoDataPerson *)v24 setNumDailyFingerSticksAdherence:0.9];
  [(HDDemoDataPerson *)v24 setInsulinSensitivity:1.0];
  [(HDDemoDataPerson *)v24 setInsulinProduction:1.0];
  [(HDDemoDataPerson *)v24 setInsulinAdherence:1.0];
  [(HDDemoDataPerson *)v24 setInsulinTherapy:0];
  [(HDDemoDataPerson *)v24 setSpirometrySampleFrequency:170.0];
  [(HDDemoDataPerson *)v24 setSpirometrySampleTime:80.6];
  [(HDDemoDataPerson *)v24 setAsthmaSeverity:2];
  [(HDDemoDataPerson *)v24 setMindfulSessionFrequency:0.395833333];
  [(HDDemoDataPerson *)v24 setMindfulSessionMean:2];
  [(HDDemoDataPerson *)v24 setMindfulSessionStdDev:1];
  [(HDDemoDataPerson *)v24 setNutritionTrackingType:1];
  [(HDDemoDataPerson *)v24 setResultsTrackingType:1];
  [(HDDemoDataPerson *)v24 updateMedicalIDData];

  return v24;
}

- (id)fullName
{
  v3 = objc_alloc_init(MEMORY[0x277CCAC00]);
  firstName = [(HDDemoDataPerson *)self firstName];
  [v3 setGivenName:firstName];

  lastName = [(HDDemoDataPerson *)self lastName];
  [v3 setFamilyName:lastName];

  v6 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:v3 style:2 options:0];

  return v6;
}

- (void)applyProfileType:(int64_t)type
{
  [(HDDemoDataPerson *)self setProfileType:?];
  switch(type)
  {
    case 4:
      hk_gregorianCalendarWithUTCTimeZone = [MEMORY[0x277CBEA80] hk_gregorianCalendarWithUTCTimeZone];
      v12 = objc_alloc_init(MEMORY[0x277CBEAB8]);
      [v12 setMonth:2];
      [v12 setDay:10];
      [v12 setYear:1962];
      [v12 setEra:1];
      [v12 setCalendar:hk_gregorianCalendarWithUTCTimeZone];
      [(HDDemoDataPerson *)self setBirthDateComponents:v12];
      v13 = [hk_gregorianCalendarWithUTCTimeZone dateFromComponents:v12];
      [(HDDemoDataPerson *)self setBirthDate:v13];

      break;
    case 3:
      [(HDDemoDataPerson *)self rehabLogarithmicConstant];
      v6 = 2.0 - log(v5);
      [(HDDemoDataPerson *)self asymmetryPercentageMean];
      [(HDDemoDataPerson *)self setAsymmetryPercentageMean:(v7 * v6)];
      [(HDDemoDataPerson *)self rehabLogarithmicConstant];
      v9 = 2.0 - log(v8);
      [(HDDemoDataPerson *)self doubleSupportPercentageMean];
      v11 = v10 * v9;

      [(HDDemoDataPerson *)self setDoubleSupportPercentageMean:v11];
      break;
    case 2:
      [(HDDemoDataPerson *)self setInsulinProduction:0.0];
      [(HDDemoDataPerson *)self setInsulinAdherence:1.0];
      [(HDDemoDataPerson *)self setInsulinTherapy:1];

      [(HDDemoDataPerson *)self setUseContinuousGlucoseMonitoring:1];
      break;
  }
}

- (void)setHighFidelityGeneration:(BOOL)generation
{
  generationCopy = generation;
  v5 = 0.0204050926;
  if (generation)
  {
    v5 = 0.00998842593;
    v6 = 0.00304398148;
  }

  else
  {
    v6 = 0.00555555556;
  }

  if (generation)
  {
    v7 = 0.0000347222222;
  }

  else
  {
    v7 = 0.0138888889;
  }

  [(HDDemoDataPerson *)self setTimeIncrement:v5];
  [(HDDemoDataPerson *)self setHeartRateSampleFrequency:v6];
  [(HDDemoDataPerson *)self setHeartRateSampleFrequencyStdDev:v7];

  [(HDDemoDataPerson *)self setCreateHighFidelityData:generationCopy];
}

- (void)updateMedicalIDData
{
  v31[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCD7E8];
  v4 = [MEMORY[0x277CCDAB0] meterUnitWithMetricPrefix:5];
  [(HDDemoDataPerson *)self heightTargetInCm];
  v5 = [v3 quantityWithUnit:v4 doubleValue:?];

  v6 = MEMORY[0x277CCD7E8];
  v7 = [MEMORY[0x277CCDAB0] gramUnitWithMetricPrefix:9];
  [(HDDemoDataPerson *)self weightTargetInKg];
  v8 = [v6 quantityWithUnit:v7 doubleValue:?];

  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if ([(HDDemoDataPerson *)self biologicalSex]== 2)
  {
    v10 = @"DaveKnox";
  }

  else
  {
    v10 = @"LaniMartinez";
  }

  v11 = [v9 URLForResource:v10 withExtension:@"png"];
  v12 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:v11];
  medicalIDData = [(HDDemoDataPerson *)self medicalIDData];
  [medicalIDData setPictureData:v12];

  v14 = objc_alloc_init(MEMORY[0x277CCDDA0]);
  if ([(HDDemoDataPerson *)self biologicalSex]== 2)
  {
    v15 = @"Lani Martinez";
  }

  else
  {
    v15 = @"Dave Knox";
  }

  [v14 setName:v15];
  [v14 setPhoneNumber:@"(555) 555-0100"];
  [v14 setRelationship:@"spouse"];
  v31[0] = v14;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
  medicalIDData2 = [(HDDemoDataPerson *)self medicalIDData];
  [medicalIDData2 setEmergencyContacts:v16];

  fullName = [(HDDemoDataPerson *)self fullName];
  medicalIDData3 = [(HDDemoDataPerson *)self medicalIDData];
  [medicalIDData3 setName:fullName];

  birthDateComponents = [(HDDemoDataPerson *)self birthDateComponents];
  medicalIDData4 = [(HDDemoDataPerson *)self medicalIDData];
  [medicalIDData4 setGregorianBirthday:birthDateComponents];

  bloodType = [(HDDemoDataPerson *)self bloodType];
  medicalIDData5 = [(HDDemoDataPerson *)self medicalIDData];
  [medicalIDData5 setBloodType:bloodType];

  medicalIDData6 = [(HDDemoDataPerson *)self medicalIDData];
  [medicalIDData6 setMedicalConditions:@"Hypertension"];

  medicalIDData7 = [(HDDemoDataPerson *)self medicalIDData];
  [medicalIDData7 setAllergyInfo:@"Peanuts"];

  medicalIDData8 = [(HDDemoDataPerson *)self medicalIDData];
  [medicalIDData8 setMedicationInfo:@"Lisinopril (10mg by mouth once a day)"];

  medicalIDData9 = [(HDDemoDataPerson *)self medicalIDData];
  [medicalIDData9 setHeight:v5];

  medicalIDData10 = [(HDDemoDataPerson *)self medicalIDData];
  [medicalIDData10 setWeight:v8];

  if ([(HDDemoDataPerson *)self biologicalSex]== 2)
  {
    v29 = @"en";
  }

  else
  {
    v29 = @"es";
  }

  medicalIDData11 = [(HDDemoDataPerson *)self medicalIDData];
  [medicalIDData11 setPrimaryLanguageCode:v29];
}

@end