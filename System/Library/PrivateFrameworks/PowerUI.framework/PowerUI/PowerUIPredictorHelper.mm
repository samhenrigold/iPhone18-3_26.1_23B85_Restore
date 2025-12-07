@interface PowerUIPredictorHelper
+ (double)getHourBinID:(id)d forHourBin:(unint64_t)bin;
+ (double)hoursUntilUseFromBucketedUsage:(id)usage withCurrentHour:(int)hour withComponentsMinutes:(int64_t)minutes;
+ (double)meanEventDuration:(id)duration;
+ (double)meanOf:(id)of;
+ (double)medianOf:(id)of;
+ (double)medianTimeBetweenDescendingEvents:(id)events;
+ (double)standardDeviationOf:(id)of;
+ (id)column:(id)column inDataFrame:(id)frame;
+ (id)convertDateTimeColumnToSeconds:(id)seconds inDataFrame:(id)frame;
+ (id)convertDateToSeconds:(id)seconds;
+ (id)countForColumn:(id)column inDataFrame:(id)frame;
+ (id)events:(id)events forHourBin:(unint64_t)bin date:(id)date withMaxDuration:(double)duration;
+ (id)filterDataFrame:(id)frame forColumn:(id)column withFilterHandler:(id)handler;
+ (id)filterDataFrame:(id)frame withValue:(double)value forColumn:(id)column;
+ (id)filterDataFrame:(id)frame withValueGreaterThan:(double)than andLessThan:(double)lessThan forColumn:(id)column;
+ (id)filterEvents:(id)events startOnSameWeekdayAs:(id)as;
+ (id)getDurationsFromEvents:(id)events withUnit:(double)unit cappedAt:(double)at;
+ (id)getUsageBucketsForEvents:(id)events forDate:(id)date withLog:(id)log;
+ (id)meanForColumn:(id)column inDataFrame:(id)frame;
+ (id)percentile:(double)percentile forColumn:(id)column inDataFrame:(id)frame;
+ (id)percentiles:(id)percentiles forColumn:(id)column inDataFrame:(id)frame;
+ (id)standardDeviationForColumn:(id)column inDataFrame:(id)frame;
+ (id)timeBetweenUsesForSortedDescendingByAgeEvents:(id)events forHourBin:(unint64_t)bin atDate:(id)date addAtDate:(BOOL)atDate;
+ (id)varianceForColumn:(id)column inDataFrame:(id)frame;
+ (void)quantizeValuesInDataFrame:(id)frame forColumn:(id)column withBinWidth:(id)width;
@end

@implementation PowerUIPredictorHelper

+ (double)getHourBinID:(id)d forHourBin:(unint64_t)bin
{
  v5 = MEMORY[0x277CBEA80];
  dCopy = d;
  currentCalendar = [v5 currentCalendar];
  v8 = [currentCalendar components:32 fromDate:dCopy];

  v9 = [v8 hour] / bin;
  return v9;
}

+ (id)events:(id)events forHourBin:(unint64_t)bin date:(id)date withMaxDuration:(double)duration
{
  v41 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v11 = MEMORY[0x277CBEA80];
  dateCopy = date;
  currentCalendar = [v11 currentCalendar];
  timeZone = [currentCalendar timeZone];
  v15 = [dateCopy dateByAddingTimeInterval:{objc_msgSend(timeZone, "secondsFromGMT")}];

  v34 = v15;
  v35 = currentCalendar;
  v33 = [currentCalendar components:32 fromDate:v15];
  hour = [v33 hour];
  array = [MEMORY[0x277CBEB18] array];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v18 = eventsCopy;
  v19 = [v18 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = hour / bin;
    v22 = *v37;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v37 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v36 + 1) + 8 * i);
        startDate = [v24 startDate];
        [self getHourBinID:startDate forHourBin:bin];
        if (v21 == v26)
        {
          endDate = [v24 endDate];
          [endDate timeIntervalSinceDate:startDate];
          v29 = v28 / 3600.0;

          if (v29 >= duration)
          {
            durationCopy = duration;
          }

          else
          {
            durationCopy = v29;
          }

          if (duration <= 0.0)
          {
            durationCopy = v29;
          }

          v31 = [MEMORY[0x277CCABB0] numberWithDouble:durationCopy];
          [array addObject:v31];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v20);
  }

  return array;
}

+ (id)filterEvents:(id)events startOnSameWeekdayAs:(id)as
{
  v27 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  asCopy = as;
  array = [MEMORY[0x277CBEB18] array];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v21 = asCopy;
  v20 = [currentCalendar components:512 fromDate:asCopy];
  weekday = [v20 weekday];
  context = objc_autoreleasePoolPush();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = eventsCopy;
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
        startDate = [v15 startDate];
        v17 = [currentCalendar components:512 fromDate:startDate];

        if ([v17 weekday] == weekday)
        {
          [array addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  objc_autoreleasePoolPop(context);

  return array;
}

+ (id)getDurationsFromEvents:(id)events withUnit:(double)unit cappedAt:(double)at
{
  v24 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  array = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = eventsCopy;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v19 + 1) + 8 * i) duration];
        v15 = v14 / unit;
        if (v15 >= at)
        {
          atCopy = at;
        }

        else
        {
          atCopy = v15;
        }

        if (at > 0.0)
        {
          v15 = atCopy;
        }

        v17 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
        [array addObject:v17];
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  return array;
}

+ (double)meanOf:(id)of
{
  v18 = *MEMORY[0x277D85DE8];
  ofCopy = of;
  if ([ofCopy count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = ofCopy;
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      v8 = 0.0;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v13 + 1) + 8 * i) doubleValue];
          v8 = v8 + v10;
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    else
    {
      v8 = 0.0;
    }

    v11 = v8 / [v4 count];
  }

  else
  {
    v11 = 0.0;
  }

  return v11;
}

+ (double)standardDeviationOf:(id)of
{
  v20 = *MEMORY[0x277D85DE8];
  ofCopy = of;
  v4 = 0.0;
  if ([ofCopy count] >= 2)
  {
    [PowerUIPredictorHelper meanOf:ofCopy];
    v6 = v5;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = ofCopy;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      v11 = 0.0;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v15 + 1) + 8 * i) doubleValue];
          v11 = v11 + (v13 - v6) * (v13 - v6);
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    else
    {
      v11 = 0.0;
    }

    v4 = sqrt(v11 / ([v7 count] - 1));
  }

  return v4;
}

+ (double)medianOf:(id)of
{
  ofCopy = of;
  if ([ofCopy count])
  {
    v4 = [ofCopy sortedArrayUsingSelector:sel_compare_];
    v5 = [v4 count];
    v6 = [v4 count] >> 1;
    if (v5)
    {
      v7 = [v4 objectAtIndexedSubscript:v6];
      [v7 doubleValue];
      v12 = v13;
    }

    else
    {
      v7 = [v4 objectAtIndexedSubscript:v6 - 1];
      [v7 doubleValue];
      v9 = v8;
      v10 = [v4 objectAtIndexedSubscript:v6];
      [v10 doubleValue];
      v12 = (v9 + v11) * 0.5;
    }
  }

  else
  {
    v12 = 0.0;
  }

  return v12;
}

+ (id)timeBetweenUsesForSortedDescendingByAgeEvents:(id)events forHourBin:(unint64_t)bin atDate:(id)date addAtDate:(BOOL)atDate
{
  eventsCopy = events;
  dateCopy = date;
  array = [MEMORY[0x277CBEB18] array];
  if ([eventsCopy count] >= 2)
  {
    atDateCopy = atDate;
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    timeZone = [currentCalendar timeZone];
    v13 = [dateCopy dateByAddingTimeInterval:{objc_msgSend(timeZone, "secondsFromGMT")}];

    v41 = v13;
    v42 = currentCalendar;
    v40 = [currentCalendar components:32 fromDate:v13];
    v14 = [v40 hour] / bin;
    v15 = [eventsCopy count];
    if (v15 >= 2)
    {
      v16 = (v15 & 0x7FFFFFFF) + 1;
      do
      {
        v17 = [eventsCopy objectAtIndexedSubscript:v16 - 2];
        endDate = [v17 endDate];

        v19 = [eventsCopy objectAtIndexedSubscript:v16 - 3];
        startDate = [v19 startDate];

        v21 = [endDate earlierDate:startDate];

        if (v21 != startDate)
        {
          v22 = [eventsCopy objectAtIndexedSubscript:v16 - 2];
          startDate2 = [v22 startDate];
          [PowerUIPredictorHelper getHourBinID:startDate2 forHourBin:bin];
          v25 = v24;

          if (v14 == v25)
          {
            v26 = MEMORY[0x277CCABB0];
            [startDate timeIntervalSinceDate:endDate];
            v28 = [v26 numberWithDouble:v27 / 60.0];
            [array addObject:v28];
          }
        }

        --v16;
      }

      while (v16 > 2);
    }

    dateCopy = v41;
    if (atDateCopy)
    {
      firstObject = [eventsCopy firstObject];
      startDate3 = [firstObject startDate];
      [PowerUIPredictorHelper getHourBinID:startDate3 forHourBin:bin];
      v32 = v31;

      if (v14 == v32)
      {
        v33 = MEMORY[0x277CCABB0];
        firstObject2 = [eventsCopy firstObject];
        endDate2 = [firstObject2 endDate];
        [v41 timeIntervalSinceDate:endDate2];
        v37 = [v33 numberWithDouble:v36 / 60.0];

        [array addObject:v37];
      }
    }
  }

  return array;
}

+ (id)getUsageBucketsForEvents:(id)events forDate:(id)date withLog:(id)log
{
  v57 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  dateCopy = date;
  logCopy = log;
  memset(v56, 0, sizeof(v56));
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = eventsCopy;
  v46 = [eventsCopy countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (!v46)
  {
    goto LABEL_27;
  }

  v9 = *v50;
  do
  {
    v10 = 0;
    do
    {
      if (*v50 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v49 + 1) + 8 * v10);
      currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
      startDate = [v11 startDate];
      v14 = [currentCalendar components:112 fromDate:startDate];

      currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
      endDate = [v11 endDate];
      v17 = [currentCalendar2 components:96 fromDate:endDate];

      hour = [v14 hour];
      hour2 = [v17 hour];
      minute = [v14 minute];
      minute2 = [v17 minute];
      currentCalendar3 = [MEMORY[0x277CBEA80] currentCalendar];
      startDate2 = [v11 startDate];
      if ([currentCalendar3 isDate:startDate2 inSameDayAsDate:dateCopy])
      {

        goto LABEL_22;
      }

      v45 = hour2;
      startDate3 = [v11 startDate];
      [dateCopy earlierDate:startDate3];
      v23 = v9;
      v25 = v24 = dateCopy;

      v26 = v25 == v24;
      dateCopy = v24;
      v9 = v23;
      if (!v26)
      {
        if (hour < v45)
        {
          *(v56 + hour) = sqrt((60 - minute)) + *(v56 + hour);
          if (hour + 1 < v45)
          {
            v27 = ~hour + v45;
            v28 = v56 + hour + 1;
            do
            {
              *v28 = *v28 + 7.74596669;
              ++v28;
              --v27;
            }

            while (v27);
          }

LABEL_21:
          *(v56 + v45) = sqrt(minute2) + *(v56 + v45);
          goto LABEL_22;
        }

        if (hour > v45)
        {
          *(v56 + hour) = sqrt((60 - minute)) + *(v56 + hour);
          if (hour <= 22)
          {
            v29 = hour + 1;
            do
            {
              *(v56 + v29) = *(v56 + v29) + 7.74596669;
              ++v29;
            }

            while (v29 != 24);
          }

          if (v45 >= 1)
          {
            v30 = v56;
            v31 = v45;
            do
            {
              *v30 = *v30 + 7.74596669;
              ++v30;
              --v31;
            }

            while (v31);
          }

          goto LABEL_21;
        }

        if (minute2 - minute >= 0)
        {
          *(v56 + hour) = sqrt((minute2 - minute)) + *(v56 + hour);
        }
      }

LABEL_22:

      ++v10;
    }

    while (v10 != v46);
    v32 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
    v46 = v32;
  }

  while (v32);
LABEL_27:
  v33 = 0;
  v34 = 0.0;
  do
  {
    if (*(v56 + v33) > v34)
    {
      v34 = *(v56 + v33);
    }

    v33 += 8;
  }

  while (v33 != 192);
  v35 = logCopy;
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = [MEMORY[0x277CCABB0] numberWithDouble:v34];
    *buf = 138412290;
    v54 = v36;
    _os_log_impl(&dword_21B766000, v35, OS_LOG_TYPE_DEFAULT, "maxValue in buckets = %@", buf, 0xCu);
  }

  if (v34 == 0.0)
  {
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B766000, v35, OS_LOG_TYPE_DEFAULT, "Something went wront, maxValue is 0", buf, 2u);
    }

    v37 = &unk_282D4EAB8;
  }

  else
  {
    v38 = dateCopy;
    array = [MEMORY[0x277CBEB18] array];
    for (i = 0; i != 192; i += 8)
    {
      v41 = [MEMORY[0x277CCABB0] numberWithDouble:*(v56 + i) / v34];
      [array addObject:v41];
    }

    v37 = [MEMORY[0x277CBEA60] arrayWithArray:array];

    dateCopy = v38;
  }

  return v37;
}

+ (double)hoursUntilUseFromBucketedUsage:(id)usage withCurrentHour:(int)hour withComponentsMinutes:(int64_t)minutes
{
  v8 = 0.0;
  v9 = 1;
  while (1)
  {
    v10 = hour + v9;
    if ((hour + v9) > 23)
    {
      v10 = hour + v9 - 24;
    }

    v11 = [usage objectAtIndexedSubscript:v10];
    [v11 doubleValue];
    v13 = v12;

    if (v13 > 0.2)
    {
      break;
    }

    if (v9 == 11)
    {
      v8 = 12.0;
    }

    if (++v9 == 12)
    {
      return v8;
    }
  }

  return v9 + minutes / -60.0;
}

+ (double)medianTimeBetweenDescendingEvents:(id)events
{
  eventsCopy = events;
  array = [MEMORY[0x277CBEB18] array];
  if ([eventsCopy count] >= 2)
  {
    v5 = 0;
    do
    {
      v6 = [eventsCopy objectAtIndexedSubscript:v5];
      startDate = [v6 startDate];
      v8 = [eventsCopy objectAtIndexedSubscript:++v5];
      endDate = [v8 endDate];
      [startDate timeIntervalSinceDate:endDate];
      v11 = v10;

      if (v11 >= 0.0)
      {
        v12 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
        [array addObject:v12];
      }
    }

    while (v5 < ([eventsCopy count] - 1));
  }

  [PowerUIPredictorHelper medianOf:array];
  v14 = v13;

  return v14;
}

+ (double)meanEventDuration:(id)duration
{
  v21 = *MEMORY[0x277D85DE8];
  durationCopy = duration;
  if ([durationCopy count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = durationCopy;
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      v8 = 0.0;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          endDate = [v10 endDate];
          startDate = [v10 startDate];
          [endDate timeIntervalSinceDate:startDate];
          v8 = v8 + v13;
        }

        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }

    else
    {
      v8 = 0.0;
    }

    v14 = v8 / [v4 count];
  }

  else
  {
    v14 = 0.0;
  }

  return v14;
}

+ (void)quantizeValuesInDataFrame:(id)frame forColumn:(id)column withBinWidth:(id)width
{
  v27 = *MEMORY[0x277D85DE8];
  frameCopy = frame;
  columnCopy = column;
  widthCopy = width;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = [frameCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(frameCopy);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = MEMORY[0x277CCABB0];
        v16 = [v14 objectForKeyedSubscript:columnCopy];
        [v16 doubleValue];
        v18 = v17;
        [widthCopy doubleValue];
        LODWORD(v20) = vcvtmd_s64_f64(v18 / v19);
        v21 = [v15 numberWithInt:v20];
        [v14 setObject:v21 forKeyedSubscript:columnCopy];
      }

      v11 = [frameCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }
}

+ (id)convertDateToSeconds:(id)seconds
{
  v3 = MEMORY[0x277CBEA80];
  secondsCopy = seconds;
  currentCalendar = [v3 currentCalendar];
  v6 = [currentCalendar components:224 fromDate:secondsCopy];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:{objc_msgSend(v6, "minute") * 60.0 + objc_msgSend(v6, "hour") * 3600.0 + objc_msgSend(v6, "second")}];

  return v7;
}

+ (id)convertDateTimeColumnToSeconds:(id)seconds inDataFrame:(id)frame
{
  v22 = *MEMORY[0x277D85DE8];
  secondsCopy = seconds;
  frameCopy = frame;
  v8 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = frameCopy;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v17 + 1) + 8 * i) objectForKey:{secondsCopy, v17}];
        v15 = [self convertDateToSeconds:v14];
        [v8 addObject:v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  return v8;
}

+ (id)filterDataFrame:(id)frame withValue:(double)value forColumn:(id)column
{
  v25 = *MEMORY[0x277D85DE8];
  frameCopy = frame;
  columnCopy = column;
  v9 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = frameCopy;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        v16 = [v15 objectForKeyedSubscript:{columnCopy, v20}];
        [v16 doubleValue];
        v18 = vabdd_f64(v17, value);

        if (v18 <= 0.01)
        {
          [v9 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  return v9;
}

+ (id)filterDataFrame:(id)frame withValueGreaterThan:(double)than andLessThan:(double)lessThan forColumn:(id)column
{
  v29 = *MEMORY[0x277D85DE8];
  frameCopy = frame;
  columnCopy = column;
  v11 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = frameCopy;
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        v18 = [v17 objectForKeyedSubscript:{columnCopy, v24}];
        [v18 doubleValue];
        if (v19 >= than)
        {
          v20 = [v17 objectForKeyedSubscript:columnCopy];
          [v20 doubleValue];
          v22 = v21;

          if (v22 < lessThan)
          {
            [v11 addObject:v17];
          }
        }

        else
        {
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v14);
  }

  return v11;
}

+ (id)filterDataFrame:(id)frame forColumn:(id)column withFilterHandler:(id)handler
{
  v26 = *MEMORY[0x277D85DE8];
  frameCopy = frame;
  columnCopy = column;
  handlerCopy = handler;
  v20 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = frameCopy;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        v16 = [v15 objectForKey:columnCopy];

        if (v16)
        {
          v17 = [v15 objectForKeyedSubscript:columnCopy];
          v18 = handlerCopy[2](handlerCopy, v17);

          if (v18)
          {
            [v20 addObject:v15];
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  return v20;
}

+ (id)column:(id)column inDataFrame:(id)frame
{
  v21 = *MEMORY[0x277D85DE8];
  columnCopy = column;
  frameCopy = frame;
  v7 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = frameCopy;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) objectForKey:{columnCopy, v16}];
        v14 = [v13 copy];
        [v7 addObject:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  return v7;
}

+ (id)meanForColumn:(id)column inDataFrame:(id)frame
{
  v4 = [self column:column inDataFrame:frame];
  v5 = MEMORY[0x277CCABB0];
  [v4 mean];
  v6 = [v5 numberWithDouble:?];

  return v6;
}

+ (id)percentile:(double)percentile forColumn:(id)column inDataFrame:(id)frame
{
  v6 = [self column:column inDataFrame:frame];
  v7 = MEMORY[0x277CCABB0];
  [v6 percentile:percentile];
  v8 = [v7 numberWithDouble:?];

  return v8;
}

+ (id)percentiles:(id)percentiles forColumn:(id)column inDataFrame:(id)frame
{
  v5 = [self column:column inDataFrame:frame];
  v6 = [v5 percentiles:v5];

  return v6;
}

+ (id)standardDeviationForColumn:(id)column inDataFrame:(id)frame
{
  v4 = [self column:column inDataFrame:frame];
  v5 = MEMORY[0x277CCABB0];
  [v4 standardDeviation];
  v6 = [v5 numberWithDouble:?];

  return v6;
}

+ (id)varianceForColumn:(id)column inDataFrame:(id)frame
{
  v4 = [self standardDeviationForColumn:column inDataFrame:frame];
  [v4 doubleValue];
  v6 = v5;

  v7 = MEMORY[0x277CCABB0];

  return [v7 numberWithDouble:v6 * v6];
}

+ (id)countForColumn:(id)column inDataFrame:(id)frame
{
  v4 = [self column:column inDataFrame:frame];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];

  return v5;
}

@end