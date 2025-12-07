@interface HKSleepMetricsEngine
+ (double)_timeIntervalForDate:(id)date sinceDate:(id)sinceDate calendar:(id)calendar;
+ (id)_computeStandardDeviationFor:(id)for;
+ (id)_dateComponentsForInterval:(double)interval sinceDate:(id)date calendar:(id)calendar;
+ (id)_firstAsleepSegment:(id)segment;
+ (id)_firstSegmentMatchingSleepValues:(id)values inPeriods:(id)periods;
+ (id)_generateConsiderationIntervalFromDaySummaries:(id)summaries morningIndexRange:(id)range;
+ (id)_lastAsleepSegment:(id)segment;
+ (id)_lastSegmentMatchingSleepValues:(id)values inPeriods:(id)periods;
+ (id)sleepMetricsForDaySummaries:(id)summaries inMorningIndexRange:(id)range;
- (HKSleepMetricsEngine)initWithHealthStore:(id)store;
- (void)fetchSleepMetricsForMorningIndexRange:(id)range completion:(id)completion;
@end

@implementation HKSleepMetricsEngine

- (HKSleepMetricsEngine)initWithHealthStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = HKSleepMetricsEngine;
  v6 = [(HKSleepMetricsEngine *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, store);
  }

  return v7;
}

- (void)fetchSleepMetricsForMorningIndexRange:(id)range completion:(id)completion
{
  var1 = range.var1;
  var0 = range.var0;
  completionCopy = completion;
  v8 = [HKSleepDaySummaryQuery alloc];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __73__HKSleepMetricsEngine_fetchSleepMetricsForMorningIndexRange_completion___block_invoke;
  v16 = &unk_1E7381880;
  selfCopy = self;
  v18 = completionCopy;
  v19 = var0;
  v20 = var1;
  v9 = completionCopy;
  v10 = [(HKSleepDaySummaryQuery *)v8 initWithMorningIndexRange:var0 ascending:var1 limit:1 options:0 resultsHandler:1, &v13];
  v11 = [HKSleepDaySummaryCacheSettings alloc];
  selfCopy = [(HKSleepDaySummaryCacheSettings *)v11 initWithIdentifier:@"SleepMetricsEngine" mode:0, v13, v14, v15, v16, selfCopy];
  [(HKSleepDaySummaryQuery *)v10 setCacheSettings:selfCopy];

  [(HKQuery *)v10 setDebugIdentifier:@"SleepMetricsEngine"];
  [(HKHealthStore *)self->_healthStore executeQuery:v10];
}

void __73__HKSleepMetricsEngine_fetchSleepMetricsForMorningIndexRange_completion___block_invoke(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1[5];
  v9 = v6;
  if (v6)
  {
    v8 = [objc_opt_class() sleepMetricsForDaySummaries:v6 inMorningIndexRange:{a1[6], a1[7]}];
    (*(v7 + 16))(v7, v8, 0);
  }

  else
  {
    (*(v7 + 16))(v7, 0, a4);
  }
}

+ (id)sleepMetricsForDaySummaries:(id)summaries inMorningIndexRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  v246 = *MEMORY[0x1E69E9840];
  summariesCopy = summaries;
  v163 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v171 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v165 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v164 = objc_alloc_init(MEMORY[0x1E695DF70]);
  selfCopy = self;
  v183 = var0;
  v184 = var1;
  v207 = [self _generateConsiderationIntervalFromDaySummaries:summariesCopy morningIndexRange:{var0, var1}];
  v242 = 0u;
  v243 = 0u;
  v240 = 0u;
  v241 = 0u;
  obj = summariesCopy;
  v213 = [obj countByEnumeratingWithState:&v240 objects:v245 count:16];
  if (!v213)
  {
    v212 = 0;
    v214 = 0;
    v179 = 0;
    v180 = 0;
    v181 = 0;
    v182 = 0;
    v168 = 0;
    v186 = 0;
    v203 = 0;
    v205 = 0;
    v199 = 0;
    v201 = 0;
    v197 = 0;
    v208 = 0;
    v172 = 0.0;
    v173 = 0.0;
    v174 = 0.0;
    v175 = 0.0;
    v176 = 0.0;
    v177 = 0.0;
    v193 = 0.0;
    v195 = 0.0;
    v170 = obj;
    v189 = 0.0;
    v191 = 0.0;
    v187 = 0.0;
    v10 = 0.0;
    v178 = 0.0;
    goto LABEL_106;
  }

  v179 = 0;
  v180 = 0;
  v181 = 0;
  v182 = 0;
  v170 = 0;
  v167 = 0;
  v168 = 0;
  v186 = 0;
  v203 = 0;
  v205 = 0;
  v199 = 0;
  v201 = 0;
  v197 = 0;
  v208 = 0;
  v211 = *v241;
  v172 = 0.0;
  v173 = 0.0;
  v174 = 0.0;
  v175 = 0.0;
  v176 = 0.0;
  v177 = 0.0;
  if (var0)
  {
    v8 = 0;
  }

  else
  {
    v8 = var1 == 0;
  }

  v169 = 0.0;
  v166 = 0.0;
  v193 = 0.0;
  v195 = 0.0;
  v9 = v8;
  v209 = v9;
  v189 = 0.0;
  v191 = 0.0;
  v187 = 0.0;
  v10 = 0.0;
  v178 = 0.0;
  do
  {
    for (i = 0; i != v213; ++i)
    {
      if (*v241 != v211)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v240 + 1) + 8 * i);
      v229 = v11;
      if ((v209 & 1) == 0)
      {
        morningIndex = [v11 morningIndex];
        v13 = morningIndex >= v183 && morningIndex - v183 < v184;
        v11 = v229;
        if (!v13)
        {
          continue;
        }
      }

      dateInterval = [v11 dateInterval];
      v219 = [selfCopy _generateStrategyWithSleepDayInterval:dateInterval considerationInterval:v207];

      v227 = [v229 durationsForStrategy:v219];
      [v227 sleepDuration];
      v16 = v15;
      [v227 inBedDuration];
      v18 = v17;
      [v227 remSleepDuration];
      v20 = v19;
      [v227 coreSleepDuration];
      v22 = v21;
      [v227 deepSleepDuration];
      v24 = v23;
      [v227 unspecifiedSleepDuration];
      v26 = v25;
      [v227 awakeDuration];
      v28 = v27;
      if (v16 >= 2.22044605e-16 || v18 >= 2.22044605e-16)
      {
        if (v16 > 2.22044605e-16)
        {
          v30 = MEMORY[0x1E696AD98];
          v31 = __exp10(HKSleepStandardDeviationDecimalPrecision);
          v32 = [v30 numberWithDouble:round(v16 * v31) / v31];
          [v171 addObject:v32];

          ++v182;
          v178 = v178 + v16;
        }

        if (v18 > 2.22044605e-16)
        {
          v10 = v10 + v18;
        }

        v33 = v208;
        if (v18 > 2.22044605e-16)
        {
          v33 = v208 + 1;
        }

        v208 = v33;
        if (v20 <= 2.22044605e-16)
        {
          v34 = v187;
        }

        else
        {
          v34 = v187 + v20;
        }

        if (v20 <= 2.22044605e-16)
        {
          v35 = v197;
        }

        else
        {
          v35 = v197 + 1;
        }

        v36 = v189;
        if (v22 > 2.22044605e-16)
        {
          v36 = v189 + v22;
        }

        v187 = v34;
        v189 = v36;
        v37 = v199;
        if (v22 > 2.22044605e-16)
        {
          v37 = v199 + 1;
        }

        v197 = v35;
        v199 = v37;
        if (v24 <= 2.22044605e-16)
        {
          v38 = v191;
        }

        else
        {
          v38 = v191 + v24;
        }

        if (v24 <= 2.22044605e-16)
        {
          v39 = v201;
        }

        else
        {
          v39 = v201 + 1;
        }

        v40 = v193;
        if (v26 > 2.22044605e-16)
        {
          v40 = v193 + v26;
        }

        v191 = v38;
        v193 = v40;
        v41 = v203;
        if (v26 > 2.22044605e-16)
        {
          v41 = v203 + 1;
        }

        v201 = v39;
        v203 = v41;
        v42 = v195;
        if (v28 > 2.22044605e-16)
        {
          v42 = v195 + v28;
        }

        v195 = v42;
        v43 = v205;
        if (v28 > 2.22044605e-16)
        {
          v43 = v205 + 1;
        }

        v205 = v43;
        primarySchedule = [v229 primarySchedule];
        if (primarySchedule)
        {
          morningIndex2 = [v229 morningIndex];
          calendar = [v229 calendar];
          v215 = [primarySchedule bedtimeDateIntervalForMorningIndex:morningIndex2 calendar:calendar];

          startDate = [v215 startDate];
          if (startDate)
          {
            v46 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:startDate duration:900.0];
            v239 = 0u;
            v237 = 0u;
            v238 = 0u;
            v236 = 0u;
            periods = [v229 periods];
            v48 = [periods countByEnumeratingWithState:&v236 objects:v244 count:16];
            if (v48)
            {
              v49 = 0;
              v50 = *v237;
              while (2)
              {
                for (j = 0; j != v48; ++j)
                {
                  if (*v237 != v50)
                  {
                    objc_enumerationMutation(periods);
                  }

                  v52 = *(*(&v236 + 1) + 8 * j);
                  dateInterval2 = [v52 dateInterval];
                  v54 = [dateInterval2 intersectsDateInterval:v46];

                  if (v54)
                  {
                    v59 = v52;

                    ++v168;
                    v49 = v59;
                    goto LABEL_69;
                  }

                  dateInterval3 = [v52 dateInterval];
                  startDate2 = [dateInterval3 startDate];
                  v57 = [startDate2 hk_isAfterOrEqualToDate:startDate];
                  if (v49)
                  {
                    v58 = 0;
                  }

                  else
                  {
                    v58 = v57;
                  }

                  if (v58)
                  {
                    v49 = v52;
                  }
                }

                v48 = [periods countByEnumeratingWithState:&v236 objects:v244 count:16];
                if (v48)
                {
                  continue;
                }

                break;
              }

LABEL_69:

              if (v49)
              {
                dateInterval4 = [v49 dateInterval];
                startDate3 = [dateInterval4 startDate];
                [startDate3 timeIntervalSinceDate:startDate];
                v63 = v62;

                ++v167;
                v166 = v166 + v63;
                goto LABEL_72;
              }
            }

            else
            {
              v49 = periods;
LABEL_72:
            }
          }

          if (v215)
          {
            [v215 duration];
            if (v64 > 2.22044605e-16)
            {
              [v215 duration];
              v66 = v65;
              v67 = __exp10(HKSleepStandardDeviationDecimalPrecision);
              v68 = round(v66 * v67) / v67;
              v69 = round(v16 * v67) / v67;
              if (v16 > 2.22044605e-16)
              {
                v70 = v69;
              }

              else
              {
                v70 = 0.0;
              }

              v71 = [MEMORY[0x1E696AD98] numberWithDouble:v68];
              [v165 addObject:v71];

              v72 = [MEMORY[0x1E696AD98] numberWithDouble:round(v67 * (v70 - v68)) / v67];
              [v164 addObject:v72];
            }
          }
        }

        v73 = v229;
        if (v16 > 2.22044605e-16)
        {
          if ([v229 hasNonZeroSleepDurationGoal])
          {
            sleepDurationGoal = [v229 sleepDurationGoal];
            v75 = +[HKUnit secondUnit];
            [sleepDurationGoal doubleValueForUnit:v75];
            v77 = v76;

            v78 = v77 - v16;
            if (v78 < 900.0)
            {
              [v163 hk_addDayIndex:{objc_msgSend(v229, "morningIndex")}];
            }

            ++v170;
            v169 = v169 + v78;
          }

          v73 = v229;
        }

        periods2 = [v73 periods];
        firstObject = [periods2 firstObject];

        periods3 = [v229 periods];
        lastObject = [periods3 lastObject];

        if (firstObject && lastObject)
        {
          dateInterval5 = [firstObject dateInterval];
          startDate4 = [dateInterval5 startDate];
          dateInterval6 = [v229 dateInterval];
          startDate5 = [dateInterval6 startDate];
          calendar2 = [v229 calendar];
          [selfCopy _timeIntervalForDate:startDate4 sinceDate:startDate5 calendar:calendar2];
          v89 = v88;

          dateInterval7 = [lastObject dateInterval];
          endDate = [dateInterval7 endDate];
          dateInterval8 = [v229 dateInterval];
          startDate6 = [dateInterval8 startDate];
          calendar3 = [v229 calendar];
          [selfCopy _timeIntervalForDate:endDate sinceDate:startDate6 calendar:calendar3];
          v96 = v95;

          v176 = v176 + v96;
          v177 = v177 + v89;
          ++v181;
        }

        periods4 = [v229 periods];
        v225 = [selfCopy _firstInBedSegment:periods4];

        periods5 = [v229 periods];
        v99 = [selfCopy _lastInBedSegment:periods5];

        if (v225 && v99)
        {
          dateInterval9 = [v225 dateInterval];
          startDate7 = [dateInterval9 startDate];
          dateInterval10 = [v229 dateInterval];
          startDate8 = [dateInterval10 startDate];
          calendar4 = [v229 calendar];
          [selfCopy _timeIntervalForDate:startDate7 sinceDate:startDate8 calendar:calendar4];
          v106 = v105;

          dateInterval11 = [v99 dateInterval];
          endDate2 = [dateInterval11 endDate];
          dateInterval12 = [v229 dateInterval];
          startDate9 = [dateInterval12 startDate];
          calendar5 = [v229 calendar];
          [selfCopy _timeIntervalForDate:endDate2 sinceDate:startDate9 calendar:calendar5];
          v113 = v112;

          v174 = v174 + v106;
          v175 = v175 + v113;
          ++v180;
        }

        periods6 = [v229 periods];
        v115 = [selfCopy _firstAsleepSegment:periods6];

        periods7 = [v229 periods];
        v117 = [selfCopy _lastAsleepSegment:periods7];

        if (v115 && v117)
        {
          dateInterval13 = [v115 dateInterval];
          startDate10 = [dateInterval13 startDate];
          dateInterval14 = [v229 dateInterval];
          startDate11 = [dateInterval14 startDate];
          calendar6 = [v229 calendar];
          [selfCopy _timeIntervalForDate:startDate10 sinceDate:startDate11 calendar:calendar6];
          v124 = v123;

          dateInterval15 = [v117 dateInterval];
          endDate3 = [dateInterval15 endDate];
          dateInterval16 = [v229 dateInterval];
          startDate12 = [dateInterval16 startDate];
          calendar7 = [v229 calendar];
          [selfCopy _timeIntervalForDate:endDate3 sinceDate:startDate12 calendar:calendar7];
          v131 = v130;

          v172 = v172 + v124;
          v173 = v173 + v131;
          ++v179;
        }

        ++v186;
      }

      continue;
    }

    v213 = [obj countByEnumeratingWithState:&v240 objects:v245 count:16];
  }

  while (v213);

  if (v167 < 1)
  {
    v214 = 0;
  }

  else
  {
    v167 = [MEMORY[0x1E696AD98] numberWithDouble:v166 / v167];
    v214 = [HKQuantity hk_quantityWithSeconds:v167];
  }

  if (v170 < 1)
  {
    v212 = 0;
  }

  else
  {
    v170 = [MEMORY[0x1E696AD98] numberWithDouble:v169 / v170];
    v212 = [HKQuantity hk_quantityWithSeconds:v170];
LABEL_106:
  }

  v230 = _HKSleepSafeAverageDurationRoundedToNearestMinute(v182, v178);
  v228 = _HKSleepSafeAverageDurationRoundedToNearestMinute(v208, v10);
  v226 = _HKSleepSafeAverageDurationRoundedToNearestMinute(v197, v187);
  v222 = _HKSleepSafeAverageDurationRoundedToNearestMinute(v199, v189);
  v220 = _HKSleepSafeAverageDurationRoundedToNearestMinute(v201, v191);
  v218 = _HKSleepSafeAverageDurationRoundedToNearestMinute(v203, v193);
  v216 = _HKSleepSafeAverageDurationRoundedToNearestMinute(v205, v195);
  v204 = [HKQuantity hk_quantityWithSeconds:v230];
  v202 = [HKQuantity hk_quantityWithSeconds:v228];
  v210 = [HKQuantity hk_quantityWithSeconds:v226];
  v206 = [HKQuantity hk_quantityWithSeconds:v222];
  v200 = [HKQuantity hk_quantityWithSeconds:v220];
  v198 = [HKQuantity hk_quantityWithSeconds:v218];
  v196 = [HKQuantity hk_quantityWithSeconds:v216];
  v232 = 0;
  v233 = &v232;
  v234 = 0x2020000000;
  v235 = 0;
  v231[0] = MEMORY[0x1E69E9820];
  v231[1] = 3221225472;
  v231[2] = __72__HKSleepMetricsEngine_sleepMetricsForDaySummaries_inMorningIndexRange___block_invoke;
  v231[3] = &unk_1E73818A8;
  v231[6] = v184;
  v231[5] = v183;
  v231[4] = &v232;
  [v163 hk_enumerateDayIndexRangesWithOptions:2 usingBlock:v231];
  if (v181 < 1)
  {
    v181 = 0;
    v1812 = 0;
  }

  else
  {
    lastObject2 = [obj lastObject];
    calendar8 = [lastObject2 calendar];

    lastObject3 = [obj lastObject];
    dateInterval17 = [lastObject3 dateInterval];
    startDate13 = [dateInterval17 startDate];

    v181 = [selfCopy _dateComponentsForInterval:startDate13 sinceDate:calendar8 calendar:v177 / v181];
    v1812 = [selfCopy _dateComponentsForInterval:startDate13 sinceDate:calendar8 calendar:v176 / v181];
  }

  if (v180 < 1)
  {
    v1802 = 0;
    v180 = 0;
    v146 = 0;
    v145 = 0;
  }

  else
  {
    lastObject4 = [obj lastObject];
    calendar9 = [lastObject4 calendar];

    lastObject5 = [obj lastObject];
    dateInterval18 = [lastObject5 dateInterval];
    startDate14 = [dateInterval18 startDate];

    v180 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:v174 / v180];
    v144 = v175 / v180;
    v145 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:v144];
    v1802 = [selfCopy _dateComponentsForInterval:startDate14 sinceDate:calendar9 calendar:v174 / v180];
    v146 = [selfCopy _dateComponentsForInterval:startDate14 sinceDate:calendar9 calendar:v144];
  }

  if (v179 < 1)
  {
    v1792 = 0;
    v156 = 0;
    v179 = 0;
    v154 = 0;
  }

  else
  {
    lastObject6 = [obj lastObject];
    calendar10 = [lastObject6 calendar];

    lastObject7 = [obj lastObject];
    dateInterval19 = [lastObject7 dateInterval];
    startDate15 = [dateInterval19 startDate];

    v179 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:v172 / v179];
    v153 = v173 / v179;
    v154 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:v153];
    v1792 = [selfCopy _dateComponentsForInterval:startDate15 sinceDate:calendar10 calendar:v172 / v179];
    v156 = [selfCopy _dateComponentsForInterval:startDate15 sinceDate:calendar10 calendar:v153];
  }

  v157 = [selfCopy _computeStandardDeviationFor:v171];
  v158 = [selfCopy _computeStandardDeviationFor:v165];
  v159 = [selfCopy _computeStandardDeviationFor:v164];
  v160 = [v163 count];
  v145 = [HKSleepMetrics sleepMetricsWithMorningIndexRange:v183 sleepAnalysisAsleepCount:v184 sleepAnalysisInBedCount:v182 sleepAnalysisCount:v208 averageSleepDuration:v186 averageInBedDuration:v204 averageREMSleepDuration:v202 averageCoreSleepDuration:v210 averageDeepSleepDuration:v206 averageUnspecifiedSleepDuration:v200 averageAwakeDuration:v198 bedtimeAchievedCount:v196 sleepDurationGoalAchievedCount:v168 sleepDurationGoalStreakCount:v160 averageBedtimeMiss:v233[3] averageSleepDurationGoalMiss:v214 averageBedtime:v212 averageWakeTime:v181 averageInBedStartTime:v1812 averageInBedEndTime:v1802 averageSleepStartTime:v146 averageSleepEndTime:v1792 standardDeviationActualTimeAsleep:v156 standardDeviationScheduledTimeAsleep:v157 standardDeviationActualVsScheduledTimeAsleep:v158 averageSleepStartOffset:v159 averageSleepEndOffset:v179 averageInBedStartOffset:v154 averageInBedEndOffset:v180, v145];

  _Block_object_dispose(&v232, 8);

  return v145;
}

void *__72__HKSleepMetricsEngine_sleepMetricsForDaySummaries_inMorningIndexRange___block_invoke(void *result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *a4 = 1;
  v5 = result[5];
  v4 = result[6];
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (v6)
  {
    goto LABEL_11;
  }

  v7 = a3 + a2 - 1;
  if (a3 <= 0)
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = v5 + v4 - 1;
  v9 = v4 <= 0 ? 0x7FFFFFFFFFFFFFFFLL : v8;
  if (v7 == v9)
  {
LABEL_11:
    *(*(result[4] + 8) + 24) = a3;
  }

  return result;
}

+ (id)_generateConsiderationIntervalFromDaySummaries:(id)summaries morningIndexRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  v38 = *MEMORY[0x1E69E9840];
  summariesCopy = summaries;
  v7 = summariesCopy;
  if (var0)
  {
    v8 = 0;
  }

  else
  {
    v8 = var1 == 0;
  }

  if (!v8)
  {
    v9 = MEMORY[0x1E696AB80];
    lastObject = [summariesCopy lastObject];
    calendar = [lastObject calendar];
    if (calendar)
    {
      v12 = [v9 hk_sleepDayIntervalForMorningIndexRange:var0 calendar:{var1, calendar}];
    }

    else
    {
      hk_gregorianCalendar = [MEMORY[0x1E695DEE8] hk_gregorianCalendar];
      v12 = [v9 hk_sleepDayIntervalForMorningIndexRange:var0 calendar:{var1, hk_gregorianCalendar}];
    }

    goto LABEL_29;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v13 = [summariesCopy countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = 0;
    v17 = *v34;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v34 != v17)
        {
          objc_enumerationMutation(v7);
        }

        v19 = *(*(&v33 + 1) + 8 * i);
        dateInterval = [v19 dateInterval];
        startDate = [dateInterval startDate];

        if (!v15 || ([v15 earlierDate:startDate], v22 = objc_claimAutoreleasedReturnValue(), v22, v22 == startDate))
        {
          v23 = startDate;

          v15 = v23;
        }

        dateInterval2 = [v19 dateInterval];
        endDate = [dateInterval2 endDate];

        if (!v16 || ([v16 laterDate:endDate], v26 = objc_claimAutoreleasedReturnValue(), v26, v26 == endDate))
        {
          v27 = endDate;

          v16 = v27;
        }
      }

      v14 = [v7 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v14);
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  v29 = objc_alloc(MEMORY[0x1E696AB80]);
  distantPast = v15;
  if (v15)
  {
    if (v16)
    {
      goto LABEL_26;
    }

LABEL_33:
    distantFuture = [MEMORY[0x1E695DF00] distantFuture];
    v12 = [v29 initWithStartDate:distantPast endDate:distantFuture];

    if (v15)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  distantPast = [MEMORY[0x1E695DF00] distantPast];
  if (!v16)
  {
    goto LABEL_33;
  }

LABEL_26:
  v12 = [v29 initWithStartDate:distantPast endDate:v16];
  if (!v15)
  {
LABEL_27:
  }

LABEL_28:

LABEL_29:

  return v12;
}

+ (double)_timeIntervalForDate:(id)date sinceDate:(id)sinceDate calendar:(id)calendar
{
  sinceDateCopy = sinceDate;
  [date timeIntervalSinceReferenceDate];
  v8 = v7;
  [sinceDateCopy timeIntervalSinceReferenceDate];
  v10 = v9;

  return v8 - v10;
}

+ (id)_dateComponentsForInterval:(double)interval sinceDate:(id)date calendar:(id)calendar
{
  intervalCopy = interval;
  calendarCopy = calendar;
  v8 = [calendarCopy dateByAddingUnit:128 value:intervalCopy toDate:date options:0];
  v9 = [calendarCopy components:224 fromDate:v8];

  return v9;
}

+ (id)_firstAsleepSegment:(id)segment
{
  segmentCopy = segment;
  v5 = _HKCategoryValueSleepAnalysisAsleepValues();
  v6 = [self _firstSegmentMatchingSleepValues:v5 inPeriods:segmentCopy];

  return v6;
}

+ (id)_lastAsleepSegment:(id)segment
{
  segmentCopy = segment;
  v5 = _HKCategoryValueSleepAnalysisAsleepValues();
  v6 = [self _lastSegmentMatchingSleepValues:v5 inPeriods:segmentCopy];

  return v6;
}

+ (id)_firstSegmentMatchingSleepValues:(id)values inPeriods:(id)periods
{
  v33 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  periodsCopy = periods;
  v21 = [periodsCopy countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v21)
  {
    v7 = *v28;
    v22 = periodsCopy;
    v20 = *v28;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(periodsCopy);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        segments = [v9 segments];
        v11 = [segments countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v24;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v24 != v13)
              {
                objc_enumerationMutation(segments);
              }

              v15 = *(*(&v23 + 1) + 8 * j);
              v16 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v15, "category")}];
              v17 = [valuesCopy containsObject:v16];

              if (v17)
              {
                v18 = v15;

                periodsCopy = v22;
                goto LABEL_19;
              }
            }

            v12 = [segments countByEnumeratingWithState:&v23 objects:v31 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        periodsCopy = v22;
        v7 = v20;
      }

      v18 = 0;
      v21 = [v22 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v21);
  }

  else
  {
    v18 = 0;
  }

LABEL_19:

  return v18;
}

+ (id)_lastSegmentMatchingSleepValues:(id)values inPeriods:(id)periods
{
  v33 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = periods;
  v21 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  v6 = 0;
  if (v21)
  {
    v20 = *v28;
    do
    {
      v7 = 0;
      do
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = v7;
        v8 = *(*(&v27 + 1) + 8 * v7);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        segments = [v8 segments];
        v10 = [segments countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v24;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v24 != v12)
              {
                objc_enumerationMutation(segments);
              }

              v14 = *(*(&v23 + 1) + 8 * i);
              v15 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v14, "category")}];
              v16 = [valuesCopy containsObject:v15];

              if (v16)
              {
                v17 = v14;

                v6 = v17;
              }
            }

            v11 = [segments countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v11);
        }

        v7 = v22 + 1;
      }

      while (v22 + 1 != v21);
      v21 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v21);
  }

  return v6;
}

+ (id)_computeStandardDeviationFor:(id)for
{
  v33 = *MEMORY[0x1E69E9840];
  forCopy = for;
  if ([forCopy count])
  {
    v4 = [forCopy count];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v5 = forCopy;
    v6 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
    v7 = 0.0;
    v8 = 0.0;
    if (v6)
    {
      v9 = v6;
      v10 = *v28;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v27 + 1) + 8 * i) doubleValue];
          v8 = v8 + v12;
        }

        v9 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v9);
    }

    v13 = v4;

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = v5;
    v15 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v24;
      v7 = 0.0;
      v18 = v8 / v13;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v23 + 1) + 8 * j) doubleValue];
          v7 = v7 + (v18 - v20) * (v18 - v20);
        }

        v16 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v16);
    }

    v21 = [MEMORY[0x1E696AD98] numberWithDouble:sqrt(v7 / (v13 + -1.0))];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

@end