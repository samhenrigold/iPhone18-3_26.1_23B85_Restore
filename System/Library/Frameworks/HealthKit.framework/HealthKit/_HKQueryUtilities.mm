@interface _HKQueryUtilities
+ (BOOL)shouldUseDailyAverageWithDateComponents:(id)components sampleType:(id)type;
+ (double)totalDurationFromCoalescedDateIntervals:(id)intervals;
+ (id)arrayByCoalescingObjects:(id)objects startDate:(id)date intervalComponents:(id)components calendar:(id)calendar combiningBlock:(id)block;
+ (id)averageSumFromQuantities:(id)quantities unit:(id)unit;
+ (id)averageSumFromStatistics:(id)statistics unit:(id)unit;
+ (id)calculateCountStatisticsWithSamples:(id)samples startDate:(id)date endDate:(id)endDate intervalComponents:(id)components;
+ (id)calculateIncludedValuesWithSamples:(id)samples startDate:(id)date endDate:(id)endDate intervalComponents:(id)components;
+ (id)calculateTotalDurationsWithTimePeriods:(id)periods startDate:(id)date endDate:(id)endDate intervalComponents:(id)components startOfDayTransform:(id)transform;
+ (id)coalesceTimePeriods:(id)periods strictStartDate:(id)date strictEndDate:(id)endDate;
+ (id)coalesceTimePeriodsFromSamples:(id)samples strictStartDate:(id)date strictEndDate:(id)endDate;
+ (id)coalesceTotalDurations:(id)durations startDate:(id)date intervalComponents:(id)components intervalRecordCountsOut:(id *)out;
+ (id)countStatisticsQueryWithSampleType:(id)type startDate:(id)date endDate:(id)endDate intervalComponents:(id)components predicate:(id)predicate completion:(id)completion;
+ (id)maximumFromQuantities:(id)quantities unit:(id)unit;
+ (id)minimumFromQuantities:(id)quantities unit:(id)unit;
+ (void)_organizeSampleByStartDate:(id)date startDate:(id)startDate endDate:(id)endDate intervalComponents:(id)components callback:(id)callback;
@end

@implementation _HKQueryUtilities

+ (id)coalesceTimePeriods:(id)periods strictStartDate:(id)date strictEndDate:(id)endDate
{
  v36 = *MEMORY[0x1E69E9840];
  periodsCopy = periods;
  dateCopy = date;
  endDateCopy = endDate;
  array = [MEMORY[0x1E695DF70] array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v9 = periodsCopy;
  v10 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (!v10)
  {
    startDate2 = 0;
    v12 = 0;
    v26 = v9;
    goto LABEL_24;
  }

  v11 = v10;
  v12 = 0;
  startDate2 = 0;
  v14 = *v32;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v32 != v14)
      {
        objc_enumerationMutation(v9);
      }

      v16 = *(*(&v31 + 1) + 8 * i);
      if (v12 && ([*(*(&v31 + 1) + 8 * i) startDate], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "hk_isBeforeDate:", v12), v17, (v18 & 1) == 0))
      {
        v21 = _HKDateIntervalCreate(startDate2, v12, dateCopy, endDateCopy);
        [v21 duration];
        if (v22 > 0.0)
        {
          [array addObject:v21];
        }

        v12 = 0;
      }

      else if (startDate2)
      {
        startDate = [v16 startDate];
        v20 = [startDate2 earlierDate:startDate];

        startDate2 = v20;
        goto LABEL_14;
      }

      startDate2 = [v16 startDate];
LABEL_14:
      endDate = [v16 endDate];
      v24 = endDate;
      if (v12)
      {
        v25 = [v12 laterDate:endDate];

        v12 = v25;
      }

      else
      {
        v12 = endDate;
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
  }

  while (v11);

  if (startDate2 && v12)
  {
    v26 = _HKDateIntervalCreate(startDate2, v12, dateCopy, endDateCopy);
    [v26 duration];
    if (v27 > 0.0)
    {
      [array addObject:v26];
    }

LABEL_24:
  }

  return array;
}

+ (id)coalesceTimePeriodsFromSamples:(id)samples strictStartDate:(id)date strictEndDate:(id)endDate
{
  v27 = *MEMORY[0x1E69E9840];
  samplesCopy = samples;
  dateCopy = date;
  endDateCopy = endDate;
  array = [MEMORY[0x1E695DF70] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = samplesCopy;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __82___HKQueryUtilities_coalesceTimePeriodsFromSamples_strictStartDate_strictEndDate___block_invoke;
        v20[3] = &unk_1E737F448;
        v21 = array;
        [v15 _enumerateTimePeriodsWithBlock:v20];
      }

      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  v16 = [self coalesceTimePeriods:array strictStartDate:dateCopy strictEndDate:endDateCopy];

  return v16;
}

+ (id)calculateTotalDurationsWithTimePeriods:(id)periods startDate:(id)date endDate:(id)endDate intervalComponents:(id)components startOfDayTransform:(id)transform
{
  dateCopy = date;
  endDateCopy = endDate;
  componentsCopy = components;
  transformCopy = transform;
  v16 = [self coalesceTimePeriods:periods strictStartDate:dateCopy strictEndDate:endDateCopy];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __117___HKQueryUtilities_calculateTotalDurationsWithTimePeriods_startDate_endDate_intervalComponents_startOfDayTransform___block_invoke;
  aBlock[3] = &unk_1E737F470;
  v52 = transformCopy;
  v60 = v52;
  v18 = currentCalendar;
  v59 = v18;
  v19 = _Block_copy(aBlock);
  v20 = objc_alloc(MEMORY[0x1E696AB80]);
  v55 = v18;
  v56 = componentsCopy;
  v21 = [v18 dateByAddingComponents:componentsCopy toDate:dateCopy options:0];
  v53 = dateCopy;
  v22 = [v20 initWithStartDate:dateCopy endDate:v21];

  v54 = objc_alloc_init(MEMORY[0x1E695DF90]);
  startDate = [v22 startDate];
  v57 = endDateCopy;
  LODWORD(v21) = [startDate hk_isBeforeDate:endDateCopy];

  if (v21)
  {
    v24 = 0;
    v25 = 0.0;
    while (1)
    {
      v26 = v19[2](v19, v22);
      if (v24 == [v16 count])
      {
        break;
      }

      v27 = [v16 objectAtIndexedSubscript:v24];
      endDate = [v27 endDate];
      startDate2 = [v26 startDate];
      v30 = [endDate hk_isAfterOrEqualToDate:startDate2];

      if (!v30 || ([v27 startDate], v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v26, "endDate"), v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v31, "hk_isBeforeOrEqualToDate:", v32), v32, v31, !v33) || (objc_msgSend(v27, "startDate"), v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v26, "startDate"), v35 = objc_claimAutoreleasedReturnValue(), HKDateMax(v34, v35), v36 = objc_claimAutoreleasedReturnValue(), v35, v34, objc_msgSend(v27, "endDate"), v37 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v26, "endDate"), v38 = objc_claimAutoreleasedReturnValue(), HKDateMin(v37, v38), v39 = objc_claimAutoreleasedReturnValue(), v38, v37, objc_msgSend(v39, "timeIntervalSinceDate:", v36), v25 = v25 + v40, objc_msgSend(v27, "endDate"), v41 = objc_claimAutoreleasedReturnValue(), LODWORD(v38) = objc_msgSend(v41, "isEqualToDate:", v39), v41, v24 += v38, v39, v36, (v38 & 1) == 0))
      {
        if (v25 > 0.0)
        {
          v42 = [MEMORY[0x1E696AD98] numberWithDouble:v25];
          [v54 setObject:v42 forKeyedSubscript:v22];

          v25 = 0.0;
        }

        v43 = objc_alloc(MEMORY[0x1E696AB80]);
        endDate2 = [v22 endDate];
        endDate3 = [v22 endDate];
        v46 = [v55 dateByAddingComponents:v56 toDate:endDate3 options:0];
        v47 = [v43 initWithStartDate:endDate2 endDate:v46];

        v22 = v47;
      }

      startDate3 = [v22 startDate];
      v49 = [startDate3 hk_isBeforeDate:v57];

      if ((v49 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    if (v25 > 0.0)
    {
      v50 = [MEMORY[0x1E696AD98] numberWithDouble:v25];
      [v54 setObject:v50 forKeyedSubscript:v22];
    }
  }

LABEL_15:

  return v54;
}

+ (id)calculateIncludedValuesWithSamples:(id)samples startDate:(id)date endDate:(id)endDate intervalComponents:(id)components
{
  componentsCopy = components;
  endDateCopy = endDate;
  dateCopy = date;
  v13 = [samples sortedArrayUsingComparator:&__block_literal_global_63];
  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __93___HKQueryUtilities_calculateIncludedValuesWithSamples_startDate_endDate_intervalComponents___block_invoke_2;
  v17[3] = &unk_1E737F4B8;
  v15 = v14;
  v18 = v15;
  [self _organizeSampleByStartDate:v13 startDate:dateCopy endDate:endDateCopy intervalComponents:componentsCopy callback:v17];

  return v15;
}

+ (void)_organizeSampleByStartDate:(id)date startDate:(id)startDate endDate:(id)endDate intervalComponents:(id)components callback:(id)callback
{
  dateCopy = date;
  startDateCopy = startDate;
  endDateCopy = endDate;
  componentsCopy = components;
  callbackCopy = callback;
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v16 = startDateCopy;
  v29 = currentCalendar;
  v30 = componentsCopy;
  v17 = [currentCalendar dateByAddingComponents:componentsCopy toDate:v16 options:0];
  v18 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v16 endDate:v17];
  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = endDateCopy;
  v31 = callbackCopy;
  v28 = v16;
  if ([v16 hk_isBeforeOrEqualToDate:endDateCopy])
  {
    v21 = 0;
    do
    {
      if (v21 >= [dateCopy count])
      {
        break;
      }

      v22 = [dateCopy objectAtIndexedSubscript:v21];
      startDate = [v22 startDate];
      endDate = [v18 endDate];
      v25 = [startDate hk_isBeforeDate:endDate];

      if (v25)
      {
        [v19 addObject:v22];
        ++v21;
      }

      else
      {
        if (v31 && [v19 count])
        {
          (v31)[2](v31, v18, v19);
        }

        [v19 removeAllObjects];
        v26 = v17;

        v17 = [v29 dateByAddingComponents:v30 toDate:v26 options:0];

        v27 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v26 endDate:v17];
        v18 = v27;
        v16 = v26;
      }
    }

    while (([v16 hk_isBeforeOrEqualToDate:v20] & 1) != 0);
  }

  if (v31 && [v19 count])
  {
    (v31)[2](v31, v18, v19);
  }
}

+ (id)arrayByCoalescingObjects:(id)objects startDate:(id)date intervalComponents:(id)components calendar:(id)calendar combiningBlock:(id)block
{
  objectsCopy = objects;
  dateCopy = date;
  componentsCopy = components;
  calendarCopy = calendar;
  blockCopy = block;
  if (objectsCopy)
  {
    v29 = dateCopy;
    v16 = dateCopy;
    v32 = calendarCopy;
    v17 = [calendarCopy dateByAddingComponents:componentsCopy toDate:v16 options:0];
    v30 = objectsCopy;
    v18 = [objectsCopy mutableCopy];
    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
    while ([v18 count] || objc_msgSend(v19, "count"))
    {
      firstObject = [v18 firstObject];
      v21 = firstObject;
      if (firstObject && ([firstObject startDate], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "hk_isBeforeDate:", v17), v22, v23))
      {
        [v19 addObject:v21];
        [v18 removeObjectAtIndex:0];
      }

      else
      {
        v24 = blockCopy[2](blockCopy, v19, v16, v17);
        if (v24)
        {
          [v31 addObject:v24];
        }

        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __99___HKQueryUtilities_arrayByCoalescingObjects_startDate_intervalComponents_calendar_combiningBlock___block_invoke;
        v33[3] = &unk_1E737F4E0;
        v25 = v17;
        v34 = v25;
        [v19 hk_removeObjectsPassingTest:v33];
        v26 = v25;

        v17 = [v32 dateByAddingComponents:componentsCopy toDate:v26 options:0];

        v16 = v26;
      }
    }

    dateCopy = v29;
    objectsCopy = v30;
    calendarCopy = v32;
    v27 = v31;
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

+ (double)totalDurationFromCoalescedDateIntervals:(id)intervals
{
  v19 = *MEMORY[0x1E69E9840];
  intervalsCopy = intervals;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [intervalsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(intervalsCopy);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        endDate = [v9 endDate];
        startDate = [v9 startDate];
        [endDate timeIntervalSinceDate:startDate];
        v7 = v7 + v12;
      }

      v5 = [intervalsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

+ (id)calculateCountStatisticsWithSamples:(id)samples startDate:(id)date endDate:(id)endDate intervalComponents:(id)components
{
  v10 = MEMORY[0x1E695DF90];
  componentsCopy = components;
  endDateCopy = endDate;
  dateCopy = date;
  samplesCopy = samples;
  v15 = objc_alloc_init(v10);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __94___HKQueryUtilities_calculateCountStatisticsWithSamples_startDate_endDate_intervalComponents___block_invoke;
  v18[3] = &unk_1E737F4B8;
  v16 = v15;
  v19 = v16;
  [self _organizeSampleByStartDate:samplesCopy startDate:dateCopy endDate:endDateCopy intervalComponents:componentsCopy callback:v18];

  return v16;
}

+ (id)countStatisticsQueryWithSampleType:(id)type startDate:(id)date endDate:(id)endDate intervalComponents:(id)components predicate:(id)predicate completion:(id)completion
{
  v38[1] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  endDateCopy = endDate;
  componentsCopy = components;
  completionCopy = completion;
  v17 = MEMORY[0x1E696AEB0];
  predicateCopy = predicate;
  typeCopy = type;
  v20 = [v17 sortDescriptorWithKey:@"endDate" ascending:1];
  v38[0] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];

  v22 = [HKQuery predicateForSamplesWithStartDate:dateCopy endDate:endDateCopy options:1];
  v23 = [HKSampleQuery alloc];
  v24 = _HKPredicateMatchingPredicates(v22, predicateCopy);

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __114___HKQueryUtilities_countStatisticsQueryWithSampleType_startDate_endDate_intervalComponents_predicate_completion___block_invoke;
  v32[3] = &unk_1E737F508;
  v36 = completionCopy;
  selfCopy = self;
  v33 = dateCopy;
  v34 = endDateCopy;
  v35 = componentsCopy;
  v25 = componentsCopy;
  v26 = endDateCopy;
  v27 = dateCopy;
  v28 = completionCopy;
  v29 = [(HKSampleQuery *)v23 initWithSampleType:typeCopy predicate:v24 limit:0 sortDescriptors:v21 resultsHandler:v32];

  return v29;
}

+ (id)averageSumFromStatistics:(id)statistics unit:(id)unit
{
  v22 = *MEMORY[0x1E69E9840];
  statisticsCopy = statistics;
  unitCopy = unit;
  if ([statisticsCopy count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = statisticsCopy;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      v11 = 0.0;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          sumQuantity = [*(*(&v17 + 1) + 8 * i) sumQuantity];
          [sumQuantity doubleValueForUnit:unitCopy];
          v11 = v11 + v14;
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    else
    {
      v11 = 0.0;
    }

    v15 = +[HKQuantity quantityWithUnit:doubleValue:](HKQuantity, "quantityWithUnit:doubleValue:", unitCopy, v11 / [v7 count]);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)averageSumFromQuantities:(id)quantities unit:(id)unit
{
  v21 = *MEMORY[0x1E69E9840];
  quantitiesCopy = quantities;
  unitCopy = unit;
  if ([quantitiesCopy count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = quantitiesCopy;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      v11 = 0.0;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v16 + 1) + 8 * i) doubleValueForUnit:{unitCopy, v16}];
          v11 = v11 + v13;
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    else
    {
      v11 = 0.0;
    }

    v14 = +[HKQuantity quantityWithUnit:doubleValue:](HKQuantity, "quantityWithUnit:doubleValue:", unitCopy, v11 / [v7 count]);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)minimumFromQuantities:(id)quantities unit:(id)unit
{
  v23 = *MEMORY[0x1E69E9840];
  quantitiesCopy = quantities;
  unitCopy = unit;
  if ([quantitiesCopy count])
  {
    firstObject = [quantitiesCopy firstObject];
    [firstObject doubleValueForUnit:unitCopy];
    v9 = v8;

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = quantitiesCopy;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v18 + 1) + 8 * i) doubleValueForUnit:{unitCopy, v18}];
          if (v15 < v9)
          {
            v9 = v15;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    v16 = [HKQuantity quantityWithUnit:unitCopy doubleValue:v9];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)maximumFromQuantities:(id)quantities unit:(id)unit
{
  v23 = *MEMORY[0x1E69E9840];
  quantitiesCopy = quantities;
  unitCopy = unit;
  if ([quantitiesCopy count])
  {
    firstObject = [quantitiesCopy firstObject];
    [firstObject doubleValueForUnit:unitCopy];
    v9 = v8;

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = quantitiesCopy;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v18 + 1) + 8 * i) doubleValueForUnit:{unitCopy, v18}];
          if (v15 > v9)
          {
            v9 = v15;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    v16 = [HKQuantity quantityWithUnit:unitCopy doubleValue:v9];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (BOOL)shouldUseDailyAverageWithDateComponents:(id)components sampleType:(id)type
{
  componentsCopy = components;
  typeCopy = type;
  objc_opt_class();
  v7 = (objc_opt_isKindOfClass() & 1) == 0 || [typeCopy aggregationStyle] == 0;
  [componentsCopy hk_approximateDuration];
  v9 = v8;
  hk_oneDay = [MEMORY[0x1E695DF10] hk_oneDay];
  [hk_oneDay hk_approximateDuration];
  v12 = v11;

  v13 = v9 > v12 && v7;
  return v13;
}

+ (id)coalesceTotalDurations:(id)durations startDate:(id)date intervalComponents:(id)components intervalRecordCountsOut:(id *)out
{
  durationsCopy = durations;
  dateCopy = date;
  componentsCopy = components;
  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  allKeys = [durationsCopy allKeys];
  v16 = [allKeys sortedArrayUsingComparator:&__block_literal_global_25_0];

  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __97___HKQueryUtilities_coalesceTotalDurations_startDate_intervalComponents_intervalRecordCountsOut___block_invoke_2;
  v26[3] = &unk_1E737F550;
  v27 = durationsCopy;
  v18 = v13;
  v28 = v18;
  v19 = v14;
  v29 = v19;
  v20 = durationsCopy;
  v21 = [self arrayByCoalescingObjects:v16 startDate:dateCopy intervalComponents:componentsCopy calendar:currentCalendar combiningBlock:v26];

  if (out)
  {
    v22 = v19;
    *out = v19;
  }

  v23 = v29;
  v24 = v18;

  return v18;
}

@end