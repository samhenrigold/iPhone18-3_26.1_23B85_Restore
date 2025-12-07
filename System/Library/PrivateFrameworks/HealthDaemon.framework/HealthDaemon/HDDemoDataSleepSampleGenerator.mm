@interface HDDemoDataSleepSampleGenerator
- (BOOL)isDemoPersonSleeping:(id)sleeping atTime:(double)time;
- (HDDemoDataSleepSampleGenerator)init;
- (HDDemoDataSleepSampleGenerator)initWithCoder:(id)coder;
- (double)computeAwakeTimeForDemoPerson:(id)person atTime:(double)time;
- (double)computeSleepTimeFromCurrentTime:(double)time mean:(double)mean stdDev:(double)dev;
- (id)createSleepSamplesFromSleepGraph:(id)graph sleepCategoryType:(id)type startDate:(id)date endDate:(id)endDate;
- (id)loadGraphsFromFileNamed:(uint64_t)named;
- (id)randomGraphFromArray:(unint64_t)array;
- (void)encodeWithCoder:(id)coder;
- (void)generateObjectsForDemoPerson:(id)person fromTime:(double)time toTime:(double)toTime currentDate:(id)date objectCollection:(id)collection;
- (void)setupWithDemoDataGenerator:(id)generator;
@end

@implementation HDDemoDataSleepSampleGenerator

- (HDDemoDataSleepSampleGenerator)init
{
  v10.receiver = self;
  v10.super_class = HDDemoDataSleepSampleGenerator;
  v2 = [(HDDemoDataBaseSampleGenerator *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_nextSleepDurationSampleTime = 0.0;
    sleepGraphsFileName = [(HDDemoDataSleepSampleGenerator *)v2 sleepGraphsFileName];
    v5 = [(HDDemoDataSleepSampleGenerator *)v3 loadGraphsFromFileNamed:sleepGraphsFileName];
    sleepGraphsArray = v3->_sleepGraphsArray;
    v3->_sleepGraphsArray = v5;

    v7 = [(HDDemoDataSleepSampleGenerator *)v3 loadGraphsFromFileNamed:?];
    breathingDisturbancesGraphsArray = v3->_breathingDisturbancesGraphsArray;
    v3->_breathingDisturbancesGraphsArray = v7;
  }

  return v3;
}

- (id)loadGraphsFromFileNamed:(uint64_t)named
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA8D8];
  v3 = a2;
  v4 = [v2 bundleForClass:objc_opt_class()];
  v5 = [v4 pathForResource:v3 ofType:@"json"];

  v6 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v5];
  if (v6)
  {
    v18 = 0;
    v7 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:4 error:&v18];
    v8 = v18;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      _HKInitializeLogging();
      v11 = *MEMORY[0x277CCC2B8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
      {
        v15 = v11;
        v16 = objc_opt_class();
        *buf = 138543618;
        v20 = v16;
        v21 = 2114;
        v22 = v5;
        v17 = v16;
        _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "[%{public}@] Could not serialize from JSON data at file path: %{public}@", buf, 0x16u);
      }

      v9 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC2B8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
    {
      v13 = v10;
      *buf = 138543618;
      v20 = objc_opt_class();
      v21 = 2114;
      v22 = v5;
      v14 = v20;
      _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "[%{public}@] Could not get data from file path: %{public}@", buf, 0x16u);
    }

    v9 = MEMORY[0x277CBEBF8];
  }

  return v9;
}

- (HDDemoDataSleepSampleGenerator)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = HDDemoDataSleepSampleGenerator;
  v5 = [(HDDemoDataBaseSampleGenerator *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"HDDemoDataSleepSampleGeneratorNextSleepDurationSampleTimeKey"];
    v5->_nextSleepDurationSampleTime = v6;
    sleepGraphsFileName = [(HDDemoDataSleepSampleGenerator *)v5 sleepGraphsFileName];
    v8 = [(HDDemoDataSleepSampleGenerator *)v5 loadGraphsFromFileNamed:sleepGraphsFileName];
    sleepGraphsArray = v5->_sleepGraphsArray;
    v5->_sleepGraphsArray = v8;

    v10 = [(HDDemoDataSleepSampleGenerator *)v5 loadGraphsFromFileNamed:?];
    breathingDisturbancesGraphsArray = v5->_breathingDisturbancesGraphsArray;
    v5->_breathingDisturbancesGraphsArray = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HDDemoDataSleepSampleGenerator;
  coderCopy = coder;
  [(HDDemoDataBaseSampleGenerator *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeDouble:@"HDDemoDataSleepSampleGeneratorNextSleepDurationSampleTimeKey" forKey:{self->_nextSleepDurationSampleTime, v5.receiver, v5.super_class}];
}

- (void)setupWithDemoDataGenerator:(id)generator
{
  v3.receiver = self;
  v3.super_class = HDDemoDataSleepSampleGenerator;
  [(HDDemoDataBaseSampleGenerator *)&v3 setupWithDemoDataGenerator:generator];
}

- (void)generateObjectsForDemoPerson:(id)person fromTime:(double)time toTime:(double)toTime currentDate:(id)date objectCollection:(id)collection
{
  v229[1] = *MEMORY[0x277D85DE8];
  personCopy = person;
  collectionCopy = collection;
  v216.receiver = self;
  v216.super_class = HDDemoDataSleepSampleGenerator;
  [(HDDemoDataBaseSampleGenerator *)&v216 generateObjectsForDemoPerson:personCopy fromTime:date toTime:collectionCopy currentDate:toTime objectCollection:toTime];
  if (self->_nextSleepDurationSampleTime > toTime)
  {
    goto LABEL_61;
  }

  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  demoDataGenerator = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  firstSampleDate = [demoDataGenerator firstSampleDate];

  v200 = personCopy;
  v201 = v13;
  v198 = firstSampleDate;
  v199 = collectionCopy;
  selfCopy = self;
  if (self->_nextSleepDurationSampleTime == 0.0)
  {
    v17 = MEMORY[0x277CCD7E8];
    hourUnit = [MEMORY[0x277CCDAB0] hourUnit];
    v19 = [v17 quantityWithUnit:hourUnit doubleValue:7.0];

    v20 = MEMORY[0x277CCD800];
    v21 = [MEMORY[0x277CCD830] dataTypeWithCode:197];
    v204 = v19;
    v22 = [v20 quantitySampleWithType:v21 quantity:v19 startDate:firstSampleDate endDate:firstSampleDate];

    v202 = v22;
    [v13 addObject:v22];
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    hk_weekendDays = [currentCalendar hk_weekendDays];

    v214 = 0u;
    v215 = 0u;
    v212 = 0u;
    v213 = 0u;
    v24 = HKSleepScheduleWeekdayArrayFromWeekdays();
    v25 = [v24 countByEnumeratingWithState:&v212 objects:v221 count:16];
    v207 = v14;
    if (v25)
    {
      v26 = v25;
      v27 = 0;
      v28 = 0;
      v29 = *v213;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v213 != v29)
          {
            objc_enumerationMutation(v24);
          }

          unsignedIntegerValue = [*(*(&v212 + 1) + 8 * i) unsignedIntegerValue];
          v32 = [MEMORY[0x277CCABB0] numberWithInteger:NSWeekdayComponentFromHKSleepScheduleWeekday()];
          v33 = [hk_weekendDays containsObject:v32];

          if (v33)
          {
            v34 = unsignedIntegerValue;
          }

          else
          {
            v34 = 0;
          }

          v27 |= v34;
          if (v33)
          {
            v35 = 0;
          }

          else
          {
            v35 = unsignedIntegerValue;
          }

          v28 |= v35;
        }

        v26 = [v24 countByEnumeratingWithState:&v212 objects:v221 count:16];
      }

      while (v26);
    }

    else
    {
      v27 = 0;
      v28 = 0;
    }

    personCopy = v200;
    weekdaySleepParameters = [v200 weekdaySleepParameters];
    v37 = MEMORY[0x277CCD9E8];
    v38 = [MEMORY[0x277CBEAB8] hk_componentsWithHour:objc_msgSend(weekdaySleepParameters minute:{"wakeUpTimeGoalHour"), 0}];
    v39 = [MEMORY[0x277CBEAB8] hk_componentsWithHour:objc_msgSend(weekdaySleepParameters minute:{"bedtimeGoalHour"), 0}];
    v40 = [v37 sleepScheduleWithDate:firstSampleDate weekdays:v28 wakeTimeComponents:v38 bedTimeComponents:v39 overrideDayIndex:0 device:0 metadata:0];
    [v201 addObject:v40];

    weekendSleepParameters = [v200 weekendSleepParameters];

    v42 = MEMORY[0x277CCD9E8];
    v43 = [MEMORY[0x277CBEAB8] hk_componentsWithHour:objc_msgSend(weekendSleepParameters minute:{"wakeUpTimeGoalHour"), 0}];
    v44 = [MEMORY[0x277CBEAB8] hk_componentsWithHour:objc_msgSend(weekendSleepParameters minute:{"bedtimeGoalHour"), 0}];
    v45 = [v42 sleepScheduleWithDate:firstSampleDate weekdays:v27 wakeTimeComponents:v43 bedTimeComponents:v44 overrideDayIndex:0 device:0 metadata:0];
    [v201 addObject:v45];

    collectionCopy = v199;
    self = selfCopy;
    v14 = v207;
  }

  if (qword_27D86C0E8 != -1)
  {
    dispatch_once(&qword_27D86C0E8, &__block_literal_global_37);
  }

  toTimeCopy = toTime;
  demoDataGenerator2 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
  v49 = [demoDataGenerator2 isDemoDataTimeInWeekend:currentCalendar2 calendar:toTime];

  if (v49)
  {
    [personCopy weekendSleepParameters];
  }

  else
  {
    [personCopy weekdaySleepParameters];
  }
  v50 = ;
  [v50 wakeUpTime];
  v52 = v51;
  [personCopy wakeUpTimeNoiseStdDev];
  [(HDDemoDataSleepSampleGenerator *)self computeSleepTimeFromCurrentTime:toTime mean:v52 stdDev:v53];
  self->_nextSleepDurationSampleTime = toTimeCopy + 1.0 + v54;
  [v50 wakeUpTime];
  v56 = v55;
  [personCopy wakeUpTimeNoiseStdDev];
  [(HDDemoDataSleepSampleGenerator *)self computeSleepTimeFromCurrentTime:toTime mean:v56 stdDev:v57];
  v59 = v58;
  [v50 bedtime];
  v61 = v60;
  [v50 wakeUpTime];
  if (v61 <= v62)
  {
    v63 = 0.0;
  }

  else
  {
    v63 = 1.0;
  }

  v197 = v50;
  [v50 bedtime];
  v65 = v64;
  [personCopy bedtimeNoiseStdDev];
  [(HDDemoDataSleepSampleGenerator *)self computeSleepTimeFromCurrentTime:toTime - v63 mean:v65 stdDev:v66];
  v68 = v67;
  [firstSampleDate timeIntervalSinceReferenceDate];
  v70 = v69 + (v68 - v63 + toTimeCopy) * 86400.0;
  [firstSampleDate timeIntervalSinceReferenceDate];
  v72 = v71 + (v59 + toTimeCopy) * 86400.0;
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  features = [mEMORY[0x277CCDD30] features];
  timeInBedTracking = [features timeInBedTracking];

  if (timeInBedTracking)
  {
    demoDataGenerator3 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    statisticsSampleGenerator = [demoDataGenerator3 statisticsSampleGenerator];
    [personCopy inBedTimeStdDev];
    [statisticsSampleGenerator computeNoiseFromTime:toTime stdDev:v78];
    v80 = v79 * 86400.0;

    demoDataGenerator4 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    statisticsSampleGenerator2 = [demoDataGenerator4 statisticsSampleGenerator];
    [personCopy inBedTimeStdDev];
    [statisticsSampleGenerator2 computeNoiseFromTime:toTime stdDev:v83];
    v85 = v84 * 86400.0;

    v86 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v70 - fabs(v80)];
    v87 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v72 + fabs(v85 * 0.5)];
    if ([v86 hk_isAfterDate:v87])
    {
      _HKInitializeLogging();
      v88 = *MEMORY[0x277CCC2B8];
      if (!os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
      {
LABEL_33:

        goto LABEL_34;
      }

      v208 = v14;
      v89 = collectionCopy;
      v90 = personCopy;
      v91 = v88;
      v92 = objc_opt_class();
      *buf = 138543874;
      v223 = v92;
      v224 = 2114;
      v225 = v86;
      v226 = 2114;
      v227 = v87;
      v93 = v92;
      _os_log_error_impl(&dword_228986000, v91, OS_LOG_TYPE_ERROR, "[%{public}@] In Bed: Bedtime date cannot be after wake up date! %{public}@ - %{public}@", buf, 0x20u);

      personCopy = v90;
      collectionCopy = v89;
      v14 = v208;
    }

    else
    {
      v91 = [MEMORY[0x277CCD0B0] categorySampleWithType:_MergedGlobals_14 value:0 startDate:v86 endDate:v87 metadata:0];
      [v201 addObject:v91];
    }

    goto LABEL_33;
  }

LABEL_34:
  v94 = [(HDDemoDataSleepSampleGenerator *)self randomGraphFromArray:?];
  v95 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v70];
  v96 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v72];
  v195 = v95;
  v196 = v94;
  v97 = [(HDDemoDataSleepSampleGenerator *)self createSleepSamplesFromSleepGraph:v94 sleepCategoryType:_MergedGlobals_14 startDate:v95 endDate:v96];
  [v14 addObjectsFromArray:v97];

  v98 = v14;
  v99 = collectionCopy;
  v100 = personCopy;
  v205 = v98;
  if ([v98 count])
  {
    v192 = v99;
    v193 = v96;
    toTimeCopy2 = toTime;
    v211 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
    v101 = objc_alloc(MEMORY[0x277CCA970]);
    firstObject = [v98 firstObject];
    startDate = [firstObject startDate];
    lastObject = [v98 lastObject];
    endDate = [lastObject endDate];
    v106 = [v101 initWithStartDate:startDate endDate:endDate];

    startDate2 = [v106 startDate];
    v209 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v228 = *MEMORY[0x277CCE030];
    v229[0] = &unk_283CB08D0;
    v206 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v229 forKeys:&v228 count:1];
    endDate2 = [v106 endDate];
    LODWORD(firstObject) = [startDate2 hk_isBeforeDate:endDate2];

    if (firstObject)
    {
      do
      {
        v219 = 0u;
        v220 = 0u;
        v217 = 0u;
        v218 = 0u;
        v109 = v98;
        v110 = [v109 countByEnumeratingWithState:&v217 objects:buf count:16];
        if (v110)
        {
          v111 = v110;
          v112 = *v218;
          do
          {
            for (j = 0; j != v111; ++j)
            {
              if (*v218 != v112)
              {
                objc_enumerationMutation(v109);
              }

              v114 = *(*(&v217 + 1) + 8 * j);
              startDate3 = [v114 startDate];
              if ([startDate2 hk_isAfterDate:startDate3])
              {
                endDate3 = [v114 endDate];
                v117 = [startDate2 hk_isBeforeDate:endDate3];

                if (v117)
                {
                  v118 = 1;
                  goto LABEL_48;
                }
              }

              else
              {
              }
            }

            v111 = [v109 countByEnumeratingWithState:&v217 objects:buf count:16];
          }

          while (v111);
          v118 = 0;
LABEL_48:
          self = selfCopy;
          v98 = v205;
        }

        else
        {
          v118 = 0;
        }

        [startDate2 timeIntervalSinceReferenceDate];
        v120 = v119 * 0.0000115740741;
        demoDataGenerator5 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
        statisticsSampleGenerator3 = [demoDataGenerator5 statisticsSampleGenerator];
        [v100 heartRateSampleNoiseStdDev];
        [statisticsSampleGenerator3 computeNoiseFromTime:v120 stdDev:v123];
        v125 = v124;

        [startDate2 timeIntervalSinceReferenceDate];
        v127 = v126;
        startDate4 = [v106 startDate];
        [startDate4 timeIntervalSinceReferenceDate];
        v130 = v129;
        [v106 duration];
        v132 = v131;

        if (v118)
        {
          v133 = v125 * 0.5 + [v100 restingHeartRate] * ((v127 - v130) / v132 * -0.1 + 1.0);
        }

        else
        {
          v133 = v125 + [v100 restingHeartRate];
        }

        v134 = MEMORY[0x277CCD800];
        v135 = MEMORY[0x277CCD7E8];
        _countPerMinuteUnit = [MEMORY[0x277CCDAB0] _countPerMinuteUnit];
        v137 = [v135 quantityWithUnit:_countPerMinuteUnit doubleValue:v133];
        v138 = [v134 quantitySampleWithType:v211 quantity:v137 startDate:startDate2 endDate:startDate2 metadata:v206];
        [v209 addObject:v138];

        demoDataGenerator6 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
        statisticsSampleGenerator4 = [demoDataGenerator6 statisticsSampleGenerator];
        [v100 heartRateSampleFrequency];
        v142 = v141;
        [v100 heartRateSampleFrequencyStdDev];
        [statisticsSampleGenerator4 computeStatisticalTimeFromCurrentTime:v120 mean:v142 stdDev:v143 * 0.5];
        v145 = v144;

        v146 = [startDate2 dateByAddingTimeInterval:v145 * 86400.0];

        endDate4 = [v106 endDate];
        LOBYTE(_countPerMinuteUnit) = [v146 hk_isBeforeDate:endDate4];

        startDate2 = v146;
      }

      while ((_countPerMinuteUnit & 1) != 0);
    }

    else
    {
      v146 = startDate2;
    }

    v99 = v192;
    [v192 addObjectsFromWatch:v209];

    toTime = toTimeCopy2;
    v96 = v193;
  }

  v148 = v100;
  v149 = v99;
  v150 = v96;
  v151 = v195;
  demoDataGenerator7 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  v153 = [demoDataGenerator7 currentDateFromCurrentTime:toTime];

  birthDateComponents = [v148 birthDateComponents];
  v155 = HDDemoData_ageBetweenNSDateComponentsAndDate(birthDateComponents, v153);

  v156 = 1.0;
  if ([v148 biologicalSex] == 1 && v155 >= 12)
  {
    demoDataGenerator8 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    reproductiveHealthSampleGenerator = [demoDataGenerator8 reproductiveHealthSampleGenerator];
    v159 = [reproductiveHealthSampleGenerator cycleDayIndexAtTime:v148 demoPerson:toTime];

    demoDataGenerator9 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    reproductiveHealthSampleGenerator2 = [demoDataGenerator9 reproductiveHealthSampleGenerator];
    _basalBodyTempMultiplier = [reproductiveHealthSampleGenerator2 _basalBodyTempMultiplier];
    v163 = [_basalBodyTempMultiplier objectAtIndexedSubscript:v159];
    [v163 doubleValue];
    v156 = v164;
  }

  [v148 baseCorrectedWristSkinTemperatureInCelsius];
  v166 = v156 * v165;
  demoDataGenerator10 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  statisticsSampleGenerator5 = [demoDataGenerator10 statisticsSampleGenerator];
  [v148 dayToDayCorrectedWristSkinTemperatureNoiseStdDevInCelsius];
  [statisticsSampleGenerator5 randomSampleFromNormalDistributionWithMean:0.0 stdDev:v169];
  v171 = v170;

  v172 = MEMORY[0x277CCD7E8];
  degreeCelsiusUnit = [MEMORY[0x277CCDAB0] degreeCelsiusUnit];
  v174 = [v172 quantityWithUnit:degreeCelsiusUnit doubleValue:((v166 + v171) * 100.0) / 100.0];

  v175 = MEMORY[0x277CCD800];
  v176 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC938]];
  v177 = [v175 quantitySampleWithType:v176 quantity:v174 startDate:v151 endDate:v150];

  [v149 addObjectFromWatch:v177];
  v178 = MEMORY[0x277CCD830];
  v179 = *MEMORY[0x277CCC930];
  v180 = v149;
  v181 = v150;
  v182 = v151;
  v183 = [v178 quantityTypeForIdentifier:v179];
  v184 = [(HDDemoDataSleepSampleGenerator *)self randomGraphFromArray:?];
  v185 = [v184 objectAtIndex:{arc4random() % objc_msgSend(v184, "count")}];
  [v185 doubleValue];
  v187 = v186;

  v188 = MEMORY[0x277CCD7E8];
  countUnit = [MEMORY[0x277CCDAB0] countUnit];
  v190 = [v188 quantityWithUnit:countUnit doubleValue:v187];

  v191 = [MEMORY[0x277CCD800] quantitySampleWithType:v183 quantity:v190 startDate:v182 endDate:v181];

  [v180 addObjectFromWatch:v191];
  [v180 addObjectsFromPhone:v201];
  [v180 addObjectsFromWatch:v205];

  collectionCopy = v199;
  personCopy = v200;
LABEL_61:
}

uint64_t __108__HDDemoDataSleepSampleGenerator_generateObjectsForDemoPerson_fromTime_toTime_currentDate_objectCollection___block_invoke()
{
  v0 = [MEMORY[0x277CCD720] categoryTypeForIdentifier:*MEMORY[0x277CCBAB8]];
  v1 = _MergedGlobals_14;
  _MergedGlobals_14 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)randomGraphFromArray:(unint64_t)array
{
  v3 = a2;
  v4 = v3;
  if (array)
  {
    array = [v3 count];
    if (array)
    {
      array = [v4 objectAtIndexedSubscript:arc4random() % array];
    }
  }

  return array;
}

- (double)computeAwakeTimeForDemoPerson:(id)person atTime:(double)time
{
  personCopy = person;
  demoDataGenerator = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = [demoDataGenerator isDemoDataTimeInWeekend:currentCalendar calendar:time];

  if (v9)
  {
    [personCopy weekendSleepParameters];
  }

  else
  {
    [personCopy weekdaySleepParameters];
  }
  v10 = ;
  [v10 bedtime];
  v12 = v11;
  [personCopy bedtimeNoiseStdDev];
  [(HDDemoDataSleepSampleGenerator *)self computeSleepTimeFromCurrentTime:time mean:v12 stdDev:v13];
  v15 = v14;
  [v10 wakeUpTime];
  v17 = v16;
  [personCopy wakeUpTimeNoiseStdDev];
  [(HDDemoDataSleepSampleGenerator *)self computeSleepTimeFromCurrentTime:time mean:v17 stdDev:v18];
  v20 = v15 - v19;

  return v20;
}

- (double)computeSleepTimeFromCurrentTime:(double)time mean:(double)mean stdDev:(double)dev
{
  demoDataGenerator = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  statisticsSampleGenerator = [demoDataGenerator statisticsSampleGenerator];
  [statisticsSampleGenerator computeStatisticalTimeFromCurrentTime:time mean:mean stdDev:dev];
  v11 = v10;

  if (v11 > 1.0 || v11 < 0.0)
  {
    return mean;
  }

  else
  {
    return v11;
  }
}

- (BOOL)isDemoPersonSleeping:(id)sleeping atTime:(double)time
{
  sleepingCopy = sleeping;
  demoDataGenerator = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = [demoDataGenerator isDemoDataTimeInWeekend:currentCalendar calendar:time];

  if (v9)
  {
    [sleepingCopy weekendSleepParameters];
  }

  else
  {
    [sleepingCopy weekdaySleepParameters];
  }
  v10 = ;
  v11 = time - time;
  [v10 bedtime];
  v13 = v12;
  [sleepingCopy bedtimeNoiseStdDev];
  [(HDDemoDataSleepSampleGenerator *)self computeSleepTimeFromCurrentTime:time mean:v13 stdDev:v14];
  v16 = v15;
  [v10 wakeUpTime];
  v18 = v17;
  [sleepingCopy wakeUpTimeNoiseStdDev];
  [(HDDemoDataSleepSampleGenerator *)self computeSleepTimeFromCurrentTime:time mean:v18 stdDev:v19];
  v21 = v11 != v20;
  if (v20 != v16)
  {
    v21 = 0;
  }

  v22 = v11 <= v20;
  if (v11 >= v16)
  {
    v22 = 1;
  }

  if (v16 > v20)
  {
    v21 = v22;
  }

  v23 = v11 < v20;
  if (v11 <= v16)
  {
    v23 = 0;
  }

  if (v20 > v16)
  {
    v24 = v23;
  }

  else
  {
    v24 = v21;
  }

  return v24;
}

- (id)createSleepSamplesFromSleepGraph:(id)graph sleepCategoryType:(id)type startDate:(id)date endDate:(id)endDate
{
  v54 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  typeCopy = type;
  dateCopy = date;
  endDateCopy = endDate;
  if ([graphCopy count] && !objc_msgSend(dateCopy, "hk_isAfterDate:", endDateCopy))
  {
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v50 = 0x3032000000;
    v51 = __Block_byref_object_copy__33;
    v52 = __Block_byref_object_dispose__33;
    v53 = objc_msgSend_copy(dateCopy);
    v43 = 0;
    v44 = &v43;
    v45 = 0x3032000000;
    v46 = __Block_byref_object_copy__33;
    v47 = __Block_byref_object_dispose__33;
    v48 = objc_msgSend_copy(dateCopy);
    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = __Block_byref_object_copy__33;
    v41 = __Block_byref_object_dispose__33;
    firstObject = [graphCopy firstObject];
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __103__HDDemoDataSleepSampleGenerator_createSleepSamplesFromSleepGraph_sleepCategoryType_startDate_endDate___block_invoke;
    v30 = &unk_278618430;
    v34 = &v37;
    v35 = &v43;
    v16 = endDateCopy;
    v31 = v16;
    v17 = v15;
    v32 = v17;
    v18 = typeCopy;
    v33 = v18;
    p_buf = &buf;
    [graphCopy enumerateObjectsUsingBlock:&v27];
    if ([v38[5] integerValue] != 2)
    {
      v19 = MEMORY[0x277CCD0B0];
      integerValue = [v38[5] integerValue];
      v21 = *(*(&buf + 1) + 40);
      if (([v16 hk_isAfterDate:v21] & 1) == 0)
      {
        v16 = v44[5];
      }

      v22 = [v19 categorySampleWithType:v18 value:integerValue startDate:v21 endDate:v16];
      [v17 addObject:v22];
    }

    v23 = v33;
    v14 = v17;

    _Block_object_dispose(&v37, 8);
    _Block_object_dispose(&v43, 8);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC2B8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
    {
      v25 = v13;
      LODWORD(buf) = 138543362;
      *(&buf + 4) = objc_opt_class();
      v26 = *(&buf + 4);
      _os_log_error_impl(&dword_228986000, v25, OS_LOG_TYPE_ERROR, "[%{public}@] Asked to make sleep samples with invalid input, returning empty", &buf, 0xCu);
    }

    v14 = MEMORY[0x277CBEBF8];
  }

  return v14;
}

void __103__HDDemoDataSleepSampleGenerator_createSleepSamplesFromSleepGraph_sleepCategoryType_startDate_endDate___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v18 = a2;
  if ([*(*(a1[7] + 8) + 40) isEqualToNumber:?])
  {
    v7 = [*(*(a1[8] + 8) + 40) dateByAddingTimeInterval:30.0];
    v8 = *(a1[8] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    if ([*(*(a1[8] + 8) + 40) hk_isAfterDate:a1[4]])
    {
      *a4 = 1;
    }
  }

  else
  {
    v10 = a1[5];
    v11 = [MEMORY[0x277CCD0B0] categorySampleWithType:a1[6] value:objc_msgSend(*(*(a1[7] + 8) + 40) startDate:"integerValue") endDate:{*(*(a1[9] + 8) + 40), *(*(a1[8] + 8) + 40)}];
    [v10 addObject:v11];

    v12 = objc_msgSend_copy(*(*(a1[8] + 8) + 40));
    v13 = *(a1[9] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    v15 = [*(*(a1[8] + 8) + 40) dateByAddingTimeInterval:30.0];
    v16 = *(a1[8] + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    objc_storeStrong((*(a1[7] + 8) + 40), a2);
  }
}

@end