@interface ATXMagicalMomentsContexts
+ (id)eventIdentifierPredicateForValue:(id)value;
+ (id)getCurrentLOI;
+ (id)locationOfInterestForDate:(id)date dateIntervalForSearch:(id)search;
+ (id)loiPredicateForUUIDString:(id)string;
+ (id)partOfWeekPredicatesUsingStartDate:(BOOL)date;
+ (id)timeOfDayPredicatesWithRequestedDurationInHours:(unint64_t)hours shouldPredicateOnStartDate:(BOOL)date;
+ (unint64_t)getMinTemporalDistanceFromDate:(id)date toVisitsToLOI:(id)i;
+ (unint64_t)minDistanceFromDate:(id)date toDateRange:(_NSRange)range;
@end

@implementation ATXMagicalMomentsContexts

+ (id)getCurrentLOI
{
  mEMORY[0x277D41BF8] = [MEMORY[0x277D41BF8] sharedInstance];
  locationOfInterestAtCurrentLocation = [mEMORY[0x277D41BF8] locationOfInterestAtCurrentLocation];

  return locationOfInterestAtCurrentLocation;
}

+ (unint64_t)minDistanceFromDate:(id)date toDateRange:(_NSRange)range
{
  location = range.location;
  v5 = range.location + range.length;
  [date timeIntervalSinceReferenceDate];
  v7 = v6;
  v8 = v6 - v5;
  if (v6 < v5)
  {
    v8 = 0;
  }

  v9 = location >= v7;
  v10 = location - v7;
  if (v10 != 0 && v9)
  {
    return v10;
  }

  else
  {
    return v8;
  }
}

+ (unint64_t)getMinTemporalDistanceFromDate:(id)date toVisitsToLOI:(id)i
{
  v22 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  visits = [i visits];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [visits countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    v11 = -1;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(visits);
        }

        rangeValue = [*(*(&v17 + 1) + 8 * i) rangeValue];
        v15 = [self minDistanceFromDate:dateCopy toDateRange:{rangeValue, v14}];
        if (v15 < v11)
        {
          v11 = v15;
        }
      }

      v9 = [visits countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  else
  {
    v11 = -1;
  }

  return v11;
}

+ (id)locationOfInterestForDate:(id)date dateIntervalForSearch:(id)search
{
  dateCopy = date;
  searchCopy = search;
  mEMORY[0x277D41BF8] = [MEMORY[0x277D41BF8] sharedInstance];
  v8 = dispatch_semaphore_create(0);
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__22;
  v24 = __Block_byref_object_dispose__22;
  v25 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __77__ATXMagicalMomentsContexts_locationOfInterestForDate_dateIntervalForSearch___block_invoke;
  v16[3] = &unk_2785991D8;
  v9 = dateCopy;
  v17 = v9;
  v19 = &v20;
  v10 = v8;
  v18 = v10;
  [mEMORY[0x277D41BF8] fetchLocationsOfInterestVisitedDuring:searchCopy handler:v16];
  v11 = [MEMORY[0x277D425A0] waitForSemaphore:v10 timeoutSeconds:2.0];
  if (v11)
  {
    v12 = __atxlog_handle_default(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 0;
      _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "LOI fetch near date timed out", &v15, 2u);
    }

    v13 = 0;
  }

  else
  {
    v13 = v21[5];
  }

  _Block_object_dispose(&v20, 8);

  return v13;
}

void __77__ATXMagicalMomentsContexts_locationOfInterestForDate_dateIntervalForSearch___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    v7 = 900;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v13 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v12 + 1) + 8 * v8);
      v10 = [ATXMagicalMomentsContexts getMinTemporalDistanceFromDate:*(a1 + 32) toVisitsToLOI:v9, v12];
      if (v10 < v7)
      {
        v11 = v10;
        objc_storeStrong((*(*(a1 + 48) + 8) + 40), v9);
        v7 = v11;
        if (!v11)
        {
          break;
        }
      }

      if (v5 == ++v8)
      {
        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

+ (id)timeOfDayPredicatesWithRequestedDurationInHours:(unint64_t)hours shouldPredicateOnStartDate:(BOOL)date
{
  if (hours)
  {
    dateCopy = date;
    if (hours >= 0x18)
    {
      hoursCopy = 24;
    }

    else
    {
      hoursCopy = hours;
    }

    v19 = 0x18 / hoursCopy;
    if ((v19 * hoursCopy) != 24)
    {
      v7 = __atxlog_handle_default(self);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [ATXMagicalMomentsContexts timeOfDayPredicatesWithRequestedDurationInHours:v7 shouldPredicateOnStartDate:?];
      }
    }

    v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v19];
    v8 = 0;
    v9 = 0;
    v10 = 0;
    if (dateCopy)
    {
      v11 = @"startDateSecondsAfterMidnight";
    }

    else
    {
      v11 = @"endDateSecondsAfterMidnight";
    }

    v12 = 3600 * hoursCopy;
    v13 = 3600 * hoursCopy;
    v14 = hoursCopy;
    do
    {
      if (v9 % 0x18 >= v14 % 0x18)
      {
        [MEMORY[0x277CCAC30] predicateWithFormat:@"%K < %lu OR %K >= %lu", v11, v13 - 86400 * (v14 / 0x18), v11, v8 - 86400 * (v9 / 0x18)];
      }

      else
      {
        [MEMORY[0x277CCAC30] predicateWithFormat:@"%K >= %lu AND %K < %lu", v11, v8 - 86400 * (v9 / 0x18), v11, v13 - 86400 * (v14 / 0x18)];
      }
      v15 = ;
      ++v10;
      [v18 addObject:v15];

      v14 += hoursCopy;
      v13 += v12;
      v9 += hoursCopy;
      v8 += v12;
    }

    while (v10 < v19);
    v16 = v18;
  }

  else
  {
    v16 = MEMORY[0x277CBEBF8];
  }

  return v16;
}

+ (id)partOfWeekPredicatesUsingStartDate:(BOOL)date
{
  v8[2] = *MEMORY[0x277D85DE8];
  if (date)
  {
    v3 = @"isStartDateOnWeekday";
  }

  else
  {
    v3 = @"isEndDateOnWeekday";
  }

  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == YES", v3];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == NO", v3];
  v8[0] = v4;
  v8[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];

  return v6;
}

+ (id)eventIdentifierPredicateForValue:(id)value
{
  valueCopy = value;
  if (!valueCopy)
  {
    [(ATXMagicalMomentsContexts *)a2 eventIdentifierPredicateForValue:self];
  }

  valueCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"identifier = %@", valueCopy];

  return valueCopy;
}

+ (id)loiPredicateForUUIDString:(id)string
{
  stringCopy = string;
  if (!stringCopy)
  {
    [(ATXMagicalMomentsContexts *)a2 loiPredicateForUUIDString:self];
  }

  stringCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"locationIdentifierUUIDString = %@", stringCopy];

  return stringCopy;
}

+ (void)eventIdentifierPredicateForValue:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXMagicalMomentsContexts.m" lineNumber:157 description:{@"Invalid parameter not satisfying: %@", @"eventIdentifier"}];
}

+ (void)loiPredicateForUUIDString:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXMagicalMomentsContexts.m" lineNumber:163 description:{@"Invalid parameter not satisfying: %@", @"uuidString"}];
}

@end