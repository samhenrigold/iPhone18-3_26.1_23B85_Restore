@interface HDDemoDataFoodSampleGenerator
- (BOOL)_isDemoPersonConsumingCaffeine:(id)caffeine atTime:(double)time;
- (HDDemoDataFoodSampleGenerator)init;
- (HDDemoDataFoodSampleGenerator)initWithCoder:(id)coder;
- (double)_computeMealTimeForDemoPerson:(id)person fromTime:(double)time mealTimeType:(int64_t)type timeMean:(double)mean stdDev:(double)dev;
- (double)_computeNutrientForDemoPerson:(void *)person atTime:(void *)time mealItem:(double)item quantityType:;
- (double)_nextMealTimeForDemoPerson:(double)person atTime:;
- (uint64_t)mealTypeForTime:(uint64_t)result;
- (void)_generateRandomLastMeal;
- (void)encodeWithCoder:(id)coder;
- (void)generateFirstRunObjectsForDemoPerson:(id)person firstDate:(id)date objectCollection:(id)collection;
- (void)generateObjectsForDemoPerson:(id)person fromTime:(double)time toTime:(double)toTime currentDate:(id)date objectCollection:(id)collection;
- (void)setupWithDemoDataGenerator:(id)generator;
@end

@implementation HDDemoDataFoodSampleGenerator

- (HDDemoDataFoodSampleGenerator)init
{
  v7.receiver = self;
  v7.super_class = HDDemoDataFoodSampleGenerator;
  v2 = [(HDDemoDataBaseSampleGenerator *)&v7 init];
  v3 = v2;
  if (v2)
  {
    foodDatabase = v2->_foodDatabase;
    v2->_foodDatabase = 0;

    v3->_nextMealTime = 0.0;
    v3->_nextBreakfastTime = 0.0;
    v3->_nextLunchTime = 0.0;
    v3->_nextSnackTime = 0.0;
    v3->_nextDinnerTime = 0.0;
    v3->_lastMealTime = 0.0;
    lastMeal = v3->_lastMeal;
    v3->_lastMeal = 0;

    v3->_nextBloodGlucoseSampleTime = 0.0;
    v3->_nextBloodGlucoseFingerStickSampleTime = 0.0;
    v3->_nextBloodGlucoseMealTime = 0.0;
    v3->_lastBloodGlucose = 100.0;
    v3->_nextInsulinPumpBasalSampleTime = 0.0;
    v3->_carbohydratesLeftToDigest = 0.0;
    v3->_bloodGlucoseCarbohydrateGlycemicRate = 0.0;
    v3->_bloodGlucoseDecreaseRateDueToInsulin = 0.0;
    v3->_nextWaterConsumedSampleTime = 0.0;
  }

  return v3;
}

- (HDDemoDataFoodSampleGenerator)initWithCoder:(id)coder
{
  v28[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = HDDemoDataFoodSampleGenerator;
  v5 = [(HDDemoDataBaseSampleGenerator *)&v27 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"HDDemoDataFoodSampleGeneratorNextMealTimeKey"];
    v5->_nextMealTime = v6;
    [coderCopy decodeDoubleForKey:@"HDDemoDataFoodSampleGeneratorNextBreakfastTimeKey"];
    v5->_nextBreakfastTime = v7;
    [coderCopy decodeDoubleForKey:@"HDDemoDataFoodSampleGeneratorNextLunchTimeKey"];
    v5->_nextLunchTime = v8;
    [coderCopy decodeDoubleForKey:@"HDDemoDataFoodSampleGeneratorNextSnackTimeKey"];
    v5->_nextSnackTime = v9;
    [coderCopy decodeDoubleForKey:@"HDDemoDataFoodSampleGeneratorNextDinnerTimeKey"];
    v5->_nextDinnerTime = v10;
    [coderCopy decodeDoubleForKey:@"HDDemoDataFoodSampleGeneratorLastMealTimeKey"];
    v5->_lastMealTime = v11;
    v12 = MEMORY[0x277CBEB98];
    v28[0] = objc_opt_class();
    v28[1] = objc_opt_class();
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
    v14 = [v12 setWithArray:v13];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"HDDemoDataFoodSampleGeneratorLastMealKey"];
    lastMeal = v5->_lastMeal;
    v5->_lastMeal = v15;

    [coderCopy decodeDoubleForKey:@"HDDemoDataFoodSampleGeneratorNextBloodGlucoseSampleTimeKey"];
    v5->_nextBloodGlucoseSampleTime = v17;
    [coderCopy decodeDoubleForKey:@"HDDemoDataFoodSampleGeneratorNextBloodGlucoseFingerStickSampleTimeKey"];
    v5->_nextBloodGlucoseFingerStickSampleTime = v18;
    [coderCopy decodeDoubleForKey:@"HDDemoDataFoodSampleGeneratorNextBloodGlucoseMealTimeKey"];
    v5->_nextBloodGlucoseMealTime = v19;
    [coderCopy decodeDoubleForKey:@"HDDemoDataFoodSampleGeneratorLastBloodGlucoseKey"];
    v5->_lastBloodGlucose = v20;
    [coderCopy decodeDoubleForKey:@"HDDemoDataFoodSampleGeneratorNextInsulinPumpBasalSampleKey"];
    v5->_nextInsulinPumpBasalSampleTime = v21;
    [coderCopy decodeDoubleForKey:@"HDDemoDataFoodSampleGeneratorCarbohydratesLeftToDigestKey"];
    v5->_carbohydratesLeftToDigest = v22;
    [coderCopy decodeDoubleForKey:@"HDDemoDataFoodSampleGeneratorBloodGlucoseCarbohydrateGlycemicRateKey"];
    v5->_bloodGlucoseCarbohydrateGlycemicRate = v23;
    [coderCopy decodeDoubleForKey:@"HDDemoDataFoodSampleGeneratorBloodGlucoseDecreaseRateDueToInsulinKey"];
    v5->_bloodGlucoseDecreaseRateDueToInsulin = v24;
    [coderCopy decodeDoubleForKey:@"HDDemoDataFoodSampleGeneratorNextWaterConsumeSampleTimeKey"];
    v5->_nextWaterConsumedSampleTime = v25;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HDDemoDataFoodSampleGenerator;
  coderCopy = coder;
  [(HDDemoDataBaseSampleGenerator *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeDouble:@"HDDemoDataFoodSampleGeneratorNextMealTimeKey" forKey:{self->_nextMealTime, v5.receiver, v5.super_class}];
  [coderCopy encodeDouble:@"HDDemoDataFoodSampleGeneratorNextBreakfastTimeKey" forKey:self->_nextBreakfastTime];
  [coderCopy encodeDouble:@"HDDemoDataFoodSampleGeneratorNextLunchTimeKey" forKey:self->_nextLunchTime];
  [coderCopy encodeDouble:@"HDDemoDataFoodSampleGeneratorNextSnackTimeKey" forKey:self->_nextSnackTime];
  [coderCopy encodeDouble:@"HDDemoDataFoodSampleGeneratorNextDinnerTimeKey" forKey:self->_nextDinnerTime];
  [coderCopy encodeDouble:@"HDDemoDataFoodSampleGeneratorLastMealTimeKey" forKey:self->_lastMealTime];
  [coderCopy encodeObject:self->_lastMeal forKey:@"HDDemoDataFoodSampleGeneratorLastMealKey"];
  [coderCopy encodeDouble:@"HDDemoDataFoodSampleGeneratorNextBloodGlucoseSampleTimeKey" forKey:self->_nextBloodGlucoseSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataFoodSampleGeneratorNextBloodGlucoseFingerStickSampleTimeKey" forKey:self->_nextBloodGlucoseFingerStickSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataFoodSampleGeneratorNextBloodGlucoseMealTimeKey" forKey:self->_nextBloodGlucoseMealTime];
  [coderCopy encodeDouble:@"HDDemoDataFoodSampleGeneratorLastBloodGlucoseKey" forKey:self->_lastBloodGlucose];
  [coderCopy encodeDouble:@"HDDemoDataFoodSampleGeneratorNextInsulinPumpBasalSampleKey" forKey:self->_nextInsulinPumpBasalSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataFoodSampleGeneratorCarbohydratesLeftToDigestKey" forKey:self->_carbohydratesLeftToDigest];
  [coderCopy encodeDouble:@"HDDemoDataFoodSampleGeneratorBloodGlucoseCarbohydrateGlycemicRateKey" forKey:self->_bloodGlucoseCarbohydrateGlycemicRate];
  [coderCopy encodeDouble:@"HDDemoDataFoodSampleGeneratorBloodGlucoseDecreaseRateDueToInsulinKey" forKey:self->_bloodGlucoseDecreaseRateDueToInsulin];
  [coderCopy encodeDouble:@"HDDemoDataFoodSampleGeneratorNextWaterConsumeSampleTimeKey" forKey:self->_nextWaterConsumedSampleTime];
}

- (void)setupWithDemoDataGenerator:(id)generator
{
  generatorCopy = generator;
  v19.receiver = self;
  v19.super_class = HDDemoDataFoodSampleGenerator;
  [(HDDemoDataBaseSampleGenerator *)&v19 setupWithDemoDataGenerator:generatorCopy];
  v5 = objc_alloc_init(HDDemoDataFoodDatabase);
  foodDatabase = self->_foodDatabase;
  self->_foodDatabase = v5;

  if (![(HDDemoDataBaseSampleGenerator *)self createdFromNSKeyedUnarchiver])
  {
    demoPerson = [generatorCopy demoPerson];
    [demoPerson breakfastTime];
    self->_nextMealTime = v8;

    demoPerson2 = [generatorCopy demoPerson];
    [demoPerson2 breakfastTime];
    self->_nextBreakfastTime = v10;

    demoPerson3 = [generatorCopy demoPerson];
    [demoPerson3 lunchTime];
    self->_nextLunchTime = v12;

    demoPerson4 = [generatorCopy demoPerson];
    [demoPerson4 snackTime];
    self->_nextSnackTime = v14;

    demoPerson5 = [generatorCopy demoPerson];
    [demoPerson5 dinnerTime];
    self->_nextDinnerTime = v16;

    demoPerson6 = [generatorCopy demoPerson];
    [demoPerson6 breakfastTime];
    self->_nextBloodGlucoseMealTime = v18;
  }
}

- (void)generateFirstRunObjectsForDemoPerson:(id)person firstDate:(id)date objectCollection:(id)collection
{
  v28[2] = *MEMORY[0x277D85DE8];
  v27.receiver = self;
  v27.super_class = HDDemoDataFoodSampleGenerator;
  collectionCopy = collection;
  [(HDDemoDataBaseSampleGenerator *)&v27 generateFirstRunObjectsForDemoPerson:person firstDate:date objectCollection:collectionCopy];
  v9 = collectionCopy;
  if (self)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v11 = [HDDemoDataGeneratorConfiguration configurationFromDefaults:standardUserDefaults];

    if ([v11 shouldGenerateRecentLiquidsIntake])
    {
      v25 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCAF8]];
      v26 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC9D8]];
      v12 = MEMORY[0x277CCD7E8];
      fluidOunceUSUnit = [MEMORY[0x277CCDAB0] fluidOunceUSUnit];
      v14 = [v12 quantityWithUnit:fluidOunceUSUnit doubleValue:8.0];

      v15 = MEMORY[0x277CCD7E8];
      gramUnit = [MEMORY[0x277CCDAB0] gramUnit];
      v17 = [v15 quantityWithUnit:gramUnit doubleValue:0.12];

      v18 = objc_alloc(MEMORY[0x277CBEA80]);
      v19 = [v18 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
      date = [MEMORY[0x277CBEAA8] date];
      v21 = [v19 dateBySettingHour:8 minute:0 second:0 ofDate:date options:0];

      v22 = [MEMORY[0x277CCD800] quantitySampleWithType:v25 quantity:v14 startDate:v21 endDate:v21];
      v23 = [MEMORY[0x277CCD800] quantitySampleWithType:v26 quantity:v17 startDate:v21 endDate:v21];
      v28[0] = v22;
      v28[1] = v23;
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
      [v9 addObjectsFromPhone:v24];
    }
  }
}

- (void)generateObjectsForDemoPerson:(id)person fromTime:(double)time toTime:(double)toTime currentDate:(id)date objectCollection:(id)collection
{
  v193 = *MEMORY[0x277D85DE8];
  personCopy = person;
  dateCopy = date;
  selfCopy = self;
  v15 = dateCopy;
  v179.receiver = selfCopy;
  v179.super_class = HDDemoDataFoodSampleGenerator;
  collectionCopy = collection;
  v165 = v15;
  [(HDDemoDataBaseSampleGenerator *)&v179 generateObjectsForDemoPerson:personCopy fromTime:v15 toTime:toTime currentDate:toTime objectCollection:?];
  if (qword_280D67B00 != -1)
  {
    dispatch_once(&qword_280D67B00, &__block_literal_global_23);
  }

  v166 = selfCopy;
  v158 = personCopy;
  if (!selfCopy)
  {
    v156 = personCopy;
    v23 = 0.0;
    goto LABEL_8;
  }

  v16 = personCopy;
  demoDataGenerator = [(HDDemoDataBaseSampleGenerator *)selfCopy demoDataGenerator];
  bodySampleGenerator = [demoDataGenerator bodySampleGenerator];
  [bodySampleGenerator lastWeightInKg];
  v20 = v19 * 0.55;

  [v16 insulinProduction];
  v22 = v21;

  v23 = v20 * fmax(1.0 - v22, 0.0);
  v24 = [(HDDemoDataFoodSampleGenerator *)selfCopy mealTypeForTime:toTime];
  v25 = v16;
  v157 = v24;
  if (selfCopy->_nextDinnerTime <= toTime)
  {
    v27 = selfCopy->_foodDatabase;
    v28 = [(HDDemoDataFoodDatabase *)v27 randomFoodForType:4];

    v29 = selfCopy->_foodDatabase;
    v30 = [(HDDemoDataFoodDatabase *)v29 randomFoodForType:5];

    selfCopy->_nextDinnerTime = [(HDDemoDataFoodSampleGenerator *)selfCopy _nextMealTimeForDemoPerson:v25 atTime:toTime];
    selfCopy->_nextMealTime = selfCopy->_nextBreakfastTime;
    v188[0] = v28;
    v31 = v188;
  }

  else if (selfCopy->_nextSnackTime <= toTime)
  {
    v32 = selfCopy->_foodDatabase;
    v28 = [(HDDemoDataFoodDatabase *)v32 randomFoodForType:3];

    v33 = selfCopy->_foodDatabase;
    v30 = [(HDDemoDataFoodDatabase *)v33 randomFoodForType:5];

    [v28 recommendedNumServings];
    [v28 setRecommendedNumServings:v34 * 0.5];
    selfCopy->_nextSnackTime = [(HDDemoDataFoodSampleGenerator *)selfCopy _nextMealTimeForDemoPerson:v25 atTime:toTime];
    selfCopy->_nextMealTime = selfCopy->_nextDinnerTime;
    *&v189 = v28;
    v31 = &v189;
  }

  else if (selfCopy->_nextLunchTime <= toTime)
  {
    v35 = selfCopy->_foodDatabase;
    v28 = [(HDDemoDataFoodDatabase *)v35 randomFoodForType:2];

    v36 = selfCopy->_foodDatabase;
    v30 = [(HDDemoDataFoodDatabase *)v36 randomFoodForType:5];

    selfCopy->_nextLunchTime = [(HDDemoDataFoodSampleGenerator *)selfCopy _nextMealTimeForDemoPerson:v25 atTime:toTime];
    selfCopy->_nextMealTime = selfCopy->_nextSnackTime;
    v187 = v28;
    v31 = &v187;
  }

  else
  {
    if (selfCopy->_nextBreakfastTime > toTime)
    {
LABEL_8:
      v26 = v158;

      obj = 0;
      goto LABEL_60;
    }

    v37 = selfCopy->_foodDatabase;
    v28 = [(HDDemoDataFoodDatabase *)v37 randomFoodForType:1];

    v38 = selfCopy->_foodDatabase;
    v30 = [(HDDemoDataFoodDatabase *)v38 randomFoodForType:5];

    selfCopy->_nextBreakfastTime = [(HDDemoDataFoodSampleGenerator *)selfCopy _nextMealTimeForDemoPerson:v25 atTime:toTime];
    selfCopy->_nextMealTime = selfCopy->_nextLunchTime;
    v186 = v28;
    v31 = &v186;
  }

  v31[1] = v30;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];

  if (!v39)
  {
    obj = 0;
    goto LABEL_59;
  }

  objc_storeStrong(&selfCopy->_lastMeal, v39);
  v177 = 0u;
  v178 = 0u;
  v176 = 0u;
  v175 = 0u;
  obj = v39;
  v162 = [obj countByEnumeratingWithState:&v175 objects:v185 count:16];
  if (v162)
  {
    v161 = *v176;
    v159 = *MEMORY[0x277CCC4A0];
    do
    {
      v40 = 0;
      do
      {
        if (*v176 != v161)
        {
          objc_enumerationMutation(obj);
        }

        v163 = v40;
        v41 = *(*(&v175 + 1) + 8 * v40);
        v167 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v171 = 0u;
        v172 = 0u;
        v173 = 0u;
        v174 = 0u;
        nutritionFacts = [v41 nutritionFacts];
        v43 = [nutritionFacts countByEnumeratingWithState:&v171 objects:v184 count:16];
        if (v43)
        {
          v44 = v43;
          v45 = *v172;
          do
          {
            v46 = 0;
            do
            {
              if (*v172 != v45)
              {
                objc_enumerationMutation(nutritionFacts);
              }

              v47 = *(*(&v171 + 1) + 8 * v46);
              if ([v25 nutritionTrackingType] == 2)
              {
                goto LABEL_28;
              }

              v48 = v47;
              if (qword_280D67B10 != -1)
              {
                dispatch_once(&qword_280D67B10, &__block_literal_global_376_0);
              }

              v49 = [qword_280D67B08 containsObject:v48];

              if (v49)
              {
LABEL_28:
                v50 = [(HDDemoDataFoodSampleGenerator *)&selfCopy->super.super.isa _computeNutrientForDemoPerson:v25 atTime:v41 mealItem:v47 quantityType:toTime]* 1.3;
                if (v50 != 0.0 && v50 != -2147483650.0)
                {
                  v52 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:v47];
                  v53 = [(HDDemoDataFoodDatabase *)selfCopy->_foodDatabase canonicalDietaryUnitForQuantityTypeIdentifier:v47];
                  v54 = [MEMORY[0x277CCD7E8] quantityWithUnit:v53 doubleValue:v50];
                  v55 = [MEMORY[0x277CCD800] quantitySampleWithType:v52 quantity:v54 startDate:v165 endDate:v165];
                  [collectionCopy addObjectFromPhone:v55];
                  [v167 addObject:v55];

                  selfCopy = v166;
                }
              }

              ++v46;
            }

            while (v44 != v46);
            v44 = [nutritionFacts countByEnumeratingWithState:&v171 objects:v184 count:16];
          }

          while (v44);
        }

        if ([v167 count])
        {
          v182 = v159;
          brandName = [v41 brandName];
          v183 = brandName;
          v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v183 forKeys:&v182 count:1];

          v58 = [MEMORY[0x277CCD240] correlationWithType:_MergedGlobals_9 startDate:v165 endDate:v165 objects:v167 metadata:v57];
          [collectionCopy addObjectFromPhone:v58];

          selfCopy = v166;
        }

        v40 = v163 + 1;
      }

      while (v163 + 1 != v162);
      v162 = [obj countByEnumeratingWithState:&v175 objects:v185 count:16];
    }

    while (v162);
  }

  v59 = obj;

  if ((v157 - 2) < 3)
  {
    goto LABEL_47;
  }

  if (v157 != 1)
  {
LABEL_59:
    v26 = v158;
    goto LABEL_60;
  }

  v60 = qword_280D67AF0;
  v61 = v25;
  v62 = v60;
  v63 = v165;
  if (v23 == 0.0 || [v61 insulinTherapy])
  {
    v64 = 0;
  }

  else
  {
    v151 = MEMORY[0x277CCD7E8];
    internationalUnit = [MEMORY[0x277CCDAB0] internationalUnit];
    v153 = [v151 quantityWithUnit:internationalUnit doubleValue:floor(v23 * 0.5)];

    v154 = MEMORY[0x277CCD800];
    *&v189 = *MEMORY[0x277CCC4C8];
    v188[0] = &unk_283CB0588;
    v155 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v188 forKeys:&v189 count:1];
    v64 = [v154 quantitySampleWithType:v62 quantity:v153 startDate:v63 endDate:v63 metadata:v155];

    selfCopy = v166;
  }

  if (v64)
  {
    [collectionCopy addObjectFromPhone:v64];
  }

  v59 = obj;
LABEL_47:
  v65 = v59;
  obj = v65;
  if (v23 == 0.0)
  {
    goto LABEL_56;
  }

  v191 = 0u;
  v192 = 0u;
  v189 = 0u;
  v190 = 0u;
  v66 = [v65 countByEnumeratingWithState:&v189 objects:v188 count:16];
  v65 = obj;
  if (!v66)
  {
    goto LABEL_56;
  }

  v67 = *v190;
  v68 = *MEMORY[0x277CCC9E8];
  v69 = 0.0;
  do
  {
    for (i = 0; i != v66; ++i)
    {
      if (*v190 != v67)
      {
        objc_enumerationMutation(obj);
      }

      nutritionFacts2 = [*(*(&v189 + 1) + 8 * i) nutritionFacts];
      v72 = [nutritionFacts2 objectForKeyedSubscript:v68];
      [v72 doubleValue];
      v69 = v69 + v73;
    }

    v66 = [obj countByEnumeratingWithState:&v189 objects:v188 count:16];
  }

  while (v66);
  selfCopy = v166;
  v65 = obj;
  if (v69 == 0.0)
  {
LABEL_56:

    v74 = 0;
  }

  else
  {
    v145 = MEMORY[0x277CCD7E8];
    internationalUnit2 = [MEMORY[0x277CCDAB0] internationalUnit];
    v74 = [v145 quantityWithUnit:internationalUnit2 doubleValue:floor(v69 / (500.0 / v23))];

    if (v74)
    {
      v147 = MEMORY[0x277CCD800];
      v148 = qword_280D67AF0;
      v180 = *MEMORY[0x277CCC4C8];
      v181 = &unk_283CB0570;
      v149 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v181 forKeys:&v180 count:1];
      v150 = [v147 quantitySampleWithType:v148 quantity:v74 startDate:v165 endDate:v165 metadata:v149];

      [collectionCopy addObjectFromPhone:v150];
    }

    selfCopy = v166;
  }

  v26 = v158;

LABEL_60:
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __107__HDDemoDataFoodSampleGenerator_generateObjectsForDemoPerson_fromTime_toTime_currentDate_objectCollection___block_invoke_370;
  aBlock[3] = &unk_278616268;
  aBlock[4] = selfCopy;
  v75 = v26;
  v169 = v75;
  v76 = collectionCopy;
  v170 = v76;
  v77 = _Block_copy(aBlock);
  if ([v75 useContinuousGlucoseMonitoring])
  {
    for (; time <= toTime; time = time + v78)
    {
      v77[2](v77, time);
      [v75 continuousGlucoseMonitoringSampleFrequency];
    }
  }

  else
  {
    v77[2](v77, toTime);
  }

  v79 = qword_280D67AF0;
  v80 = v75;
  v81 = v79;
  v82 = v165;
  v83 = 0;
  if (v166 && v23 != 0.0)
  {
    if ([v80 insulinTherapy] == 1 && v166[11] <= toTime)
    {
      [v80 timeIncrement];
      v166[11] = v84 + toTime;
      [v80 timeIncrement];
      v86 = floor(v23 * 0.5 * v85 * 40.0) / 40.0;
      v87 = MEMORY[0x277CCD7E8];
      internationalUnit3 = [MEMORY[0x277CCDAB0] internationalUnit];
      v89 = [v87 quantityWithUnit:internationalUnit3 doubleValue:v86];

      [v80 timeIncrement];
      v91 = [v82 dateByAddingTimeInterval:v90 * -86400.0];
      v92 = MEMORY[0x277CCD800];
      *&v189 = *MEMORY[0x277CCC4C8];
      v188[0] = &unk_283CB0588;
      v93 = MEMORY[0x277CBEAC0];
      v94 = v82;
      v95 = [v93 dictionaryWithObjects:v188 forKeys:&v189 count:1];
      v83 = [v92 quantitySampleWithType:v81 quantity:v89 startDate:v91 endDate:v94 metadata:v95];
    }

    else
    {
      v83 = 0;
    }
  }

  if (v83)
  {
    [v76 addObjectFromPhone:v83];
  }

  v96 = v80;
  v97 = v96;
  if (!v166 || v166[15] > toTime || ([v96 waterConsumedSampleFrequency], v166[15] = v98 + toTime, objc_msgSend(v166, "demoDataGenerator"), v99 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v99, "sleepSampleGenerator"), v100 = objc_claimAutoreleasedReturnValue(), v101 = objc_msgSend(v100, "isDemoPersonSleeping:atTime:", v97, toTime), v100, v99, (v101 & 1) != 0))
  {
    v102 = 0;
    v103 = v97;
LABEL_77:

    goto LABEL_78;
  }

  demoDataGenerator2 = [v166 demoDataGenerator];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v106 = [demoDataGenerator2 isDemoDataTimeInWeekend:currentCalendar calendar:toTime];

  if (v106)
  {
    [v97 weekendSleepParameters];
  }

  else
  {
    [v97 weekdaySleepParameters];
  }
  v107 = ;
  demoDataGenerator3 = [v166 demoDataGenerator];
  sleepSampleGenerator = [demoDataGenerator3 sleepSampleGenerator];
  [v107 bedtime];
  v111 = v110;
  [v97 bedtimeNoiseStdDev];
  [sleepSampleGenerator computeSleepTimeFromCurrentTime:toTime mean:v111 stdDev:v112];
  v114 = v113;

  demoDataGenerator4 = [v166 demoDataGenerator];
  sleepSampleGenerator2 = [demoDataGenerator4 sleepSampleGenerator];
  [v107 wakeUpTime];
  v118 = v117;
  [v97 wakeUpTimeNoiseStdDev];
  [sleepSampleGenerator2 computeSleepTimeFromCurrentTime:toTime mean:v118 stdDev:v119];
  v121 = v120;

  [v97 waterConsumedSampleFrequency];
  v123 = ((v114 - v121) / v122);
  [v97 waterConsumedDailyMean];
  v125 = v124;
  [v97 waterConsumedIntervalMean];
  v127 = ((v125 / v126) / v123);
  demoDataGenerator5 = [v166 demoDataGenerator];
  statisticsSampleGenerator = [demoDataGenerator5 statisticsSampleGenerator];
  [statisticsSampleGenerator pseudoRandomDoubleFromTime:toTime];
  v131 = v130;

  if (v131 >= v127)
  {
    v102 = 0;
  }

  else
  {
    [v97 waterConsumedIntervalMean];
    v133 = v132;
    demoDataGenerator6 = [v166 demoDataGenerator];
    statisticsSampleGenerator2 = [demoDataGenerator6 statisticsSampleGenerator];
    [v97 waterConsumedIntervalStdDev];
    [statisticsSampleGenerator2 computeNoiseFromTime:toTime stdDev:v136];
    v138 = v133 + v137;

    v139 = 100 * (v138 / 100.0);
    if (v139 < 0)
    {
      v139 = -100 * (v138 / 100.0);
    }

    v140 = v139;
    if (v139 < 200.0)
    {
      v140 = 200.0;
    }

    v102 = [MEMORY[0x277CCABB0] numberWithDouble:v140];
  }

  if (v102)
  {
    v141 = MEMORY[0x277CCD7E8];
    v142 = qword_280D67AE0;
    [v102 doubleValue];
    v103 = [v141 quantityWithUnit:v142 doubleValue:v143 / 1000.0];
    v144 = [MEMORY[0x277CCD800] quantitySampleWithType:qword_280D67AF8 quantity:v103 startDate:v82 endDate:v82];
    [v76 addObjectFromPhone:v144];

    goto LABEL_77;
  }

LABEL_78:
}

uint64_t __107__HDDemoDataFoodSampleGenerator_generateObjectsForDemoPerson_fromTime_toTime_currentDate_objectCollection___block_invoke()
{
  v0 = [MEMORY[0x277CCD250] correlationTypeForIdentifier:*MEMORY[0x277CCBBB0]];
  v1 = _MergedGlobals_9;
  _MergedGlobals_9 = v0;

  v2 = [MEMORY[0x277CCDAB0] unitFromString:@"mg/dL"];
  v3 = qword_280D67AD8;
  qword_280D67AD8 = v2;

  v4 = [MEMORY[0x277CCDAB0] literUnit];
  v5 = qword_280D67AE0;
  qword_280D67AE0 = v4;

  v6 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC970]];
  v7 = qword_280D67AE8;
  qword_280D67AE8 = v6;

  v8 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCBC0]];
  v9 = qword_280D67AF0;
  qword_280D67AF0 = v8;

  v10 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCAF8]];
  v11 = qword_280D67AF8;
  qword_280D67AF8 = v10;

  return MEMORY[0x2821F96F8](v10, v11);
}

- (uint64_t)mealTypeForTime:(uint64_t)result
{
  if (result)
  {
    if (*(result + 152) <= a2)
    {
      return 4;
    }

    else if (*(result + 144) <= a2)
    {
      return 3;
    }

    else if (*(result + 136) <= a2)
    {
      return 2;
    }

    else if (*(result + 128) <= a2)
    {
      return 1;
    }

    else
    {
      return 5;
    }
  }

  return result;
}

- (double)_computeNutrientForDemoPerson:(void *)person atTime:(void *)time mealItem:(double)item quantityType:
{
  v9 = a2;
  personCopy = person;
  timeCopy = time;
  v12 = 0.0;
  if (self)
  {
    v13 = item - item;
    v14 = 1.0;
    if ([v9 biologicalSex] == 2)
    {
      v15 = 1.2;
    }

    else
    {
      v15 = 1.0;
    }

    [v9 numCupsOfCoffeeDailyMean];
    v17 = v16;
    demoDataGenerator = [self demoDataGenerator];
    statisticsSampleGenerator = [demoDataGenerator statisticsSampleGenerator];
    [v9 numCupsOfCoffeeStdDev];
    [statisticsSampleGenerator computeNoiseFromTime:item stdDev:v20];
    v22 = v21;

    [v9 dinnerTime];
    if (v13 >= v23)
    {
      v27 = 4;
    }

    else
    {
      [v9 snackTime];
      if (v13 >= v24)
      {
        v14 = 0.5;
        v27 = 3;
      }

      else
      {
        [v9 lunchTime];
        if (v13 >= v25)
        {
          v27 = 2;
        }

        else
        {
          [v9 breakfastTime];
          if (v13 < v26)
          {
            goto LABEL_24;
          }

          v27 = 1;
        }
      }
    }

    nutritionFacts = [personCopy nutritionFacts];
    v29 = [nutritionFacts objectForKeyedSubscript:timeCopy];
    [v29 doubleValue];
    v31 = v14 * v30;
    [personCopy recommendedNumServings];
    v33 = v31 * v32;

    if (v33 != 0.0)
    {
      if (v27 <= (v17 + v22) && [personCopy foodType] != 5)
      {
        coffee = [self[4] coffee];
        nutritionFacts2 = [coffee nutritionFacts];
        v36 = [nutritionFacts2 objectForKeyedSubscript:timeCopy];
        [v36 doubleValue];
        v33 = v33 + v37;
      }

      [v9 weightLossStartDay];
      if (v38 > item)
      {
        [v9 preDietIntakeMultiplier];
        v33 = v33 * v39;
      }

      demoDataGenerator2 = [self demoDataGenerator];
      statisticsSampleGenerator2 = [demoDataGenerator2 statisticsSampleGenerator];
      [statisticsSampleGenerator2 pseudoRandomDoubleFromTime:item];
      v43 = v15 * v33 * (v42 * 0.07 + 0.95);

      v44 = [timeCopy isEqualToString:*MEMORY[0x277CCCAF8]];
      v45 = 10.0;
      if (v43 >= 10.0)
      {
        v45 = v43;
      }

      v46 = v45;
      if (v44)
      {
        v12 = v46;
      }

      else
      {
        v12 = v43;
      }
    }
  }

LABEL_24:

  return v12;
}

void __107__HDDemoDataFoodSampleGenerator_generateObjectsForDemoPerson_fromTime_toTime_currentDate_objectCollection___block_invoke_370(id *a1, double a2)
{
  v162 = *MEMORY[0x277D85DE8];
  v4 = a1[4];
  v5 = a1[5];
  v6 = v5;
  if (!v4 || *(v4 + 7) > a2)
  {
    goto LABEL_77;
  }

  if ([v5 useContinuousGlucoseMonitoring])
  {
    [v6 continuousGlucoseMonitoringSampleFrequency];
    *(v4 + 7) = v7 + a2;
    v8 = 1;
  }

  else if (*(v4 + 8) <= a2)
  {
    v9 = a2;
    v10 = [v4 demoDataGenerator];
    v11 = [MEMORY[0x277CBEA80] currentCalendar];
    v12 = [v10 isDemoDataTimeInWeekend:v11 calendar:a2];

    if (v12)
    {
      [v6 weekendSleepParameters];
    }

    else
    {
      [v6 weekdaySleepParameters];
    }
    v13 = ;
    v14 = [v4 demoDataGenerator];
    v15 = [v14 activitySampleGenerator];
    [v6 exerciseStartTime];
    v17 = v16;
    [v6 exerciseStartTimeStdDev];
    [v15 _computeExerciseTimeFromCurrentTime:a2 mean:v17 stdDev:v18];
    v154 = v19;

    v20 = [v4 demoDataGenerator];
    v21 = [v20 activitySampleGenerator];
    [v6 exerciseStopTime];
    v23 = v22;
    [v6 exerciseStopTimeStdDev];
    [v21 _computeExerciseTimeFromCurrentTime:a2 mean:v23 stdDev:v24];
    v26 = v25;

    v27 = v9;
    [v6 breakfastTime];
    v29 = v28;
    [v6 breakfastTimeSampleNoiseStdDev];
    [v4 _computeMealTimeForDemoPerson:v6 fromTime:1 mealTimeType:a2 timeMean:v29 stdDev:v30];
    v32 = v31 + v9;
    [v6 breakfastTime];
    v34 = v33;
    [v6 mealTimeSampleNoiseStdDev];
    [v4 _computeMealTimeForDemoPerson:v6 fromTime:2 mealTimeType:a2 timeMean:v34 stdDev:v35];
    v37 = v36;
    [v6 breakfastTime];
    v39 = v38;
    [v6 mealTimeSampleNoiseStdDev];
    [v4 _computeMealTimeForDemoPerson:v6 fromTime:3 mealTimeType:a2 timeMean:v39 stdDev:v40];
    v152 = v41;
    [v6 breakfastTime];
    v43 = v42;
    [v6 mealTimeSampleNoiseStdDev];
    [v4 _computeMealTimeForDemoPerson:v6 fromTime:4 mealTimeType:a2 timeMean:v43 stdDev:v44];
    v151 = v45;
    v46 = [v4 demoDataGenerator];
    v47 = [v46 sleepSampleGenerator];
    [v13 bedtime];
    v49 = v48;
    [v6 bedtimeNoiseStdDev];
    [v47 computeSleepTimeFromCurrentTime:a2 mean:v49 stdDev:v50];
    v150 = v51;

    v52 = [v4 demoDataGenerator];
    v53 = [v52 sleepSampleGenerator];
    [v13 wakeUpTime];
    v55 = v54;
    [v6 wakeUpTimeNoiseStdDev];
    [v53 computeSleepTimeFromCurrentTime:a2 + 1.0 mean:v55 stdDev:v56];
    v58 = v57;

    v59 = [v4 demoDataGenerator];
    v60 = [v59 activitySampleGenerator];
    [v6 exerciseStartTime];
    v62 = v61;
    [v6 exerciseStartTimeStdDev];
    [v60 _computeExerciseTimeFromCurrentTime:a2 + 1.0 mean:v62 stdDev:v63];
    v65 = v64;

    if (*&v154 <= a2)
    {
      v67 = v37 + v27;
      if (v32 <= a2)
      {
        v68 = v152 + v27;
        if (v67 <= a2)
        {
          v69 = v151 + v27;
          if (v68 <= a2)
          {
            if (v69 <= a2)
            {
              v66 = v58 + (v9 + 1) + (v65 + (v9 + 1) - (v58 + (v9 + 1))) * 0.5;
            }

            else
            {
              v66 = v69 + (v150 + v27 - v69) * 0.5;
            }
          }

          else
          {
            v66 = v68 + (v69 - v68) * 0.5;
          }
        }

        else
        {
          v66 = v67 + (v68 - v67) * 0.5;
        }
      }

      else
      {
        v66 = v32 + (v67 - v32) / 3.0;
      }
    }

    else
    {
      v66 = v26 + (v32 - v26) * 0.5;
    }

    *(v4 + 8) = v66;
    v70 = [v4 demoDataGenerator];
    v71 = [v70 statisticsSampleGenerator];
    [v71 pseudoRandomDoubleFromTime:a2];
    v73 = v72;
    [v6 numDailyFingerSticksAdherence];
    v8 = v73 < v74;
  }

  else
  {
    v8 = 0;
  }

  v155 = [v4 demoDataGenerator];
  v153 = [v155 bodySampleGenerator];
  [v153 lastWeightInKg];
  v76 = v75;
  v77 = v6;
  if (*(v4 + 9) < a2)
  {
    v159 = 0u;
    v160 = 0u;
    v157 = 0u;
    v158 = 0u;
    v78 = *(v4 + 6);
    v79 = [v78 countByEnumeratingWithState:&v157 objects:v161 count:16];
    if (v79)
    {
      v80 = v79;
      v81 = *v158;
      v82 = *MEMORY[0x277CCC9E8];
      v83 = 0.0;
      do
      {
        for (i = 0; i != v80; ++i)
        {
          if (*v158 != v81)
          {
            objc_enumerationMutation(v78);
          }

          v83 = v83 + [(HDDemoDataFoodSampleGenerator *)v4 _computeNutrientForDemoPerson:v77 atTime:*(*(&v157 + 1) + 8 * i) mealItem:v82 quantityType:a2];
        }

        v80 = [v78 countByEnumeratingWithState:&v157 objects:v161 count:16];
      }

      while (v80);

      if (v83 > 0.0)
      {
        v85 = [v4 demoDataGenerator];
        v86 = [v85 statisticsSampleGenerator];
        [v86 computeNoiseFromTime:a2 + 4.0 stdDev:0.58];
        v88 = fabs(v87) + 1.0;

        v89 = *(v4 + 12);
        if (v89 > 0.0)
        {
          v88 = (v83 * v88 + v89 * *(v4 + 13)) / (v83 + v89);
        }

        *(v4 + 13) = v88;
        *(v4 + 12) = v83 + *(v4 + 12);
      }
    }

    else
    {
    }
  }

  v90 = [v4 demoDataGenerator];
  v91 = [v90 sleepSampleGenerator];
  v92 = [v91 isDemoPersonAwake:v77 atTime:a2];

  if (v92)
  {
    v93 = [v4 demoDataGenerator];
    v94 = [v93 generatorState];
    v95 = [v94 isExercising];

    if (v95)
    {
      v96 = 5.233;
    }

    else
    {
      v101 = [v4 demoDataGenerator];
      v102 = [v101 activitySampleGenerator];
      [v77 continuousGlucoseMonitoringSampleFrequency];
      v104 = [v102 _isDemoPersonWalking:v77 atTime:a2 samplePeriod:v103];

      if (v104)
      {
        v105 = [v4 demoDataGenerator];
        v106 = [v105 activitySampleGenerator];
        v107 = [v106 _computeFlightsClimbedForDemoPerson:v77 atTime:a2];

        v96 = dbl_2291669F0[v107 == 0];
      }

      else
      {
        v96 = 0.443;
      }
    }
  }

  else
  {
    v96 = 0.233;
  }

  if ([v77 biologicalSex] == 2)
  {
    v96 = v96 * 1.1;
  }

  [v77 continuousGlucoseMonitoringSampleFrequency];
  v98 = v96 * (v97 / 0.000694444444);
  v99 = *(v4 + 10);
  if (v99 <= 185.0)
  {
    if (v99 <= 180.0)
    {
      if (v99 <= 170.0)
      {
        if (v99 <= 160.0)
        {
          if (v99 <= 150.0)
          {
            if (v99 <= 140.0)
            {
              v100 = dbl_229166A00[v99 > 130.0];
            }

            else
            {
              v100 = 0.10019;
            }
          }

          else
          {
            v100 = 0.20038;
          }
        }

        else
        {
          v100 = 0.39377;
        }
      }

      else
      {
        v100 = 0.8155;
      }
    }

    else
    {
      v100 = 1.6543;
    }
  }

  else
  {
    v100 = 2.4698;
  }

  if ([v77 biologicalSex] == 2)
  {
    v108 = v100 * 1.08;
  }

  else
  {
    v108 = v100;
  }

  [v77 insulinProduction];
  v110 = v109;
  [v77 insulinProduction];
  v112 = 1.0 - v111;
  [v77 insulinAdherence];
  v114 = *(v4 + 14) + v108 * (v110 + v112 * v113);
  *(v4 + 14) = v114;
  [v77 insulinSensitivity];
  v116 = v114 * v115;
  [v77 continuousGlucoseMonitoringSampleFrequency];
  v118 = v98 + v116 * (v117 / 0.000694444444);
  [v77 continuousGlucoseMonitoringSampleFrequency];
  *(v4 + 14) = *(v4 + 14) * exp2(v119 / -0.00347222222);
  v120 = 0.0;
  if (*(v4 + 12) > 0.0)
  {
    v121 = fmax(v76 * 2.20461988 * -0.02 + 7.0, 2.0);
    if (v121 <= 5.5)
    {
      v122 = v121;
    }

    else
    {
      v122 = 5.5;
    }

    v123 = *(v4 + 13) / v122;
    [v77 continuousGlucoseMonitoringSampleFrequency];
    v125 = v123 * (v124 / 0.000694444444);
    v126 = *(v4 + 12);
    if (v125 >= v126)
    {
      v125 = *(v4 + 12);
    }

    v127 = v126 - v125;
    *(v4 + 12) = v127;
    if (v127 < 0.0)
    {
      *(v4 + 12) = 0;
      *(v4 + 13) = 0;
    }

    v120 = v125 * v122 + 0.0;
  }

  v128 = v120 + *(v4 + 10) - v118;
  if (v128 < 80.0)
  {
    v129 = (80.0 - v128) * 4.0 / 5.0;
    v130 = [v4 demoDataGenerator];
    v131 = [v130 statisticsSampleGenerator];
    [v131 computeNoiseFromTime:a2 stdDev:v129 / 5.0];
    v133 = v129 * fabs(v132);

    v120 = v120 + v133;
  }

  v134 = [v4 demoDataGenerator];
  v135 = [v134 statisticsSampleGenerator];
  [v135 computeNoiseFromTime:a2 stdDev:2.0];
  v137 = v136;

  v138 = (v137 + sin((a2 + -0.375) * 6.28318531) * 0.08 + v120 - v118 + *(v4 + 10));
  if (*(v4 + 9) <= a2)
  {
    *(v4 + 9) = *(v4 + 5);
  }

  v139 = v138;
  if (*(v4 + 7) - a2 < 0.0173611111)
  {
    v139 = *(v4 + 10) * 0.13 + v139 * 0.87;
  }

  if (v8)
  {
    v140 = [v4 demoDataGenerator];
    v141 = [v140 statisticsSampleGenerator];
    [v141 computeNoiseFromTime:a2 + 4.0 stdDev:10.0];
    v143 = v139 + v142;

    *(v4 + 10) = floor(v143);
    v156 = [MEMORY[0x277CCABB0] numberWithDouble:?];

    v144 = v156;
    if (!v156)
    {
      goto LABEL_79;
    }

    v145 = [a1[4] demoDataGenerator];
    v6 = [v145 currentDateFromCurrentTime:a2];

    v146 = MEMORY[0x277CCD7E8];
    v147 = qword_280D67AD8;
    [v156 doubleValue];
    v148 = [v146 quantityWithUnit:v147 doubleValue:?];
    v149 = [MEMORY[0x277CCD800] quantitySampleWithType:qword_280D67AE8 quantity:v148 startDate:v6 endDate:v6];
    [a1[6] addObjectFromPhone:v149];
  }

  else
  {
LABEL_77:
    v156 = 0;
  }

  v144 = v156;
LABEL_79:
}

void __73__HDDemoDataFoodSampleGenerator__isTypicalNutritionTrackingQuantityType___block_invoke()
{
  v7[6] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CCC9D8];
  v7[0] = *MEMORY[0x277CCC9E8];
  v7[1] = v1;
  v2 = *MEMORY[0x277CCCAB0];
  v7[2] = *MEMORY[0x277CCCA30];
  v7[3] = v2;
  v3 = *MEMORY[0x277CCCA10];
  v7[4] = *MEMORY[0x277CCCA90];
  v7[5] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:6];
  v5 = [v0 setWithArray:v4];
  v6 = qword_280D67B08;
  qword_280D67B08 = v5;
}

- (BOOL)_isDemoPersonConsumingCaffeine:(id)caffeine atTime:(double)time
{
  caffeineCopy = caffeine;
  timeCopy = time;
  v8 = time - timeCopy;
  [caffeineCopy numCupsOfCoffeeDailyMean];
  v10 = v9;
  demoDataGenerator = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  statisticsSampleGenerator = [demoDataGenerator statisticsSampleGenerator];
  [caffeineCopy numCupsOfCoffeeStdDev];
  v14 = v13;

  [statisticsSampleGenerator computeNoiseFromTime:timeCopy stdDev:v14];
  v16 = fabs(v10 + v15);

  v17 = [(HDDemoDataFoodSampleGenerator *)self mealTypeForTime:v8];
  if (v17 <= 2)
  {
    if (v17 == 1)
    {
      nextBreakfastTime = self->_nextBreakfastTime;
      self->_lastMealTime = nextBreakfastTime;
      v20 = 1.0;
    }

    else
    {
      if (v17 != 2)
      {
LABEL_13:
        v21 = 0;
        nextBreakfastTime = self->_lastMealTime;
        goto LABEL_14;
      }

      nextBreakfastTime = self->_nextLunchTime;
      self->_lastMealTime = nextBreakfastTime;
      v20 = 2.0;
    }
  }

  else
  {
    switch(v17)
    {
      case 3:
        nextBreakfastTime = self->_nextSnackTime;
        self->_lastMealTime = nextBreakfastTime;
        v20 = 3.0;
        break;
      case 4:
        nextBreakfastTime = self->_nextDinnerTime;
        self->_lastMealTime = nextBreakfastTime;
        v20 = 4.0;
        break;
      case 5:
        return 0;
      default:
        goto LABEL_13;
    }
  }

  v21 = v16 >= v20;
LABEL_14:
  v22 = nextBreakfastTime + 0.0163541667;
  self->_lastMealTime = v22;
  v23 = v8 > v22;
  if (v8 >= v22 + 0.0486111111)
  {
    v23 = 0;
  }

  return v21 && v23;
}

- (double)_computeMealTimeForDemoPerson:(id)person fromTime:(double)time mealTimeType:(int64_t)type timeMean:(double)mean stdDev:(double)dev
{
  typeCopy = type;
  timeCopy = time;
  demoDataGenerator = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  statisticsSampleGenerator = [demoDataGenerator statisticsSampleGenerator];
  [statisticsSampleGenerator computeStatisticalTimeFromCurrentTime:typeCopy + timeCopy * 4.0 mean:mean stdDev:dev];
  v14 = v13;

  return v14;
}

- (double)_nextMealTimeForDemoPerson:(double)person atTime:
{
  v5 = a2;
  v6 = v5;
  personCopy = person;
  v8 = person + 1;
  if (self[19] <= person)
  {
    v10 = personCopy;
    [v5 dinnerTime];
    v12 = v11;
    [v6 mealTimeSampleNoiseStdDev];
    v14 = v13;
    selfCopy3 = self;
    v16 = v6;
    v17 = v10;
    v18 = 4;
LABEL_9:
    [selfCopy3 _computeMealTimeForDemoPerson:v16 fromTime:v18 mealTimeType:v17 timeMean:v12 stdDev:v14];
    v9 = v25 + v8;
    goto LABEL_10;
  }

  if (self[18] <= person)
  {
    v19 = personCopy;
    [v5 snackTime];
    v12 = v20;
    [v6 mealTimeSampleNoiseStdDev];
    v14 = v21;
    selfCopy3 = self;
    v16 = v6;
    v17 = v19;
    v18 = 3;
    goto LABEL_9;
  }

  if (self[17] <= person)
  {
    v22 = personCopy;
    [v5 lunchTime];
    v12 = v23;
    [v6 mealTimeSampleNoiseStdDev];
    v14 = v24;
    selfCopy3 = self;
    v16 = v6;
    v17 = v22;
    v18 = 2;
    goto LABEL_9;
  }

  if (self[16] <= person)
  {
    [v5 breakfastTime];
    v28 = v27;
    [v6 breakfastTimeSampleNoiseStdDev];
    [self _computeMealTimeForDemoPerson:v6 fromTime:1 mealTimeType:v8 timeMean:v28 stdDev:v29];
    v9 = v30 + v8;
  }

  else
  {
    v9 = self[5];
  }

LABEL_10:

  return v9;
}

- (void)_generateRandomLastMeal
{
  v11[2] = *MEMORY[0x277D85DE8];
  if (self)
  {
    foodDatabase = self->_foodDatabase;
  }

  else
  {
    foodDatabase = 0;
  }

  v4 = foodDatabase;
  v5 = [(HDDemoDataFoodDatabase *)v4 randomFoodForType:4];

  if (self)
  {
    v6 = self->_foodDatabase;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [(HDDemoDataFoodDatabase *)v7 randomFoodForType:5];

  v11[0] = v5;
  v11[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  lastMeal = self->_lastMeal;
  self->_lastMeal = v9;
}

@end