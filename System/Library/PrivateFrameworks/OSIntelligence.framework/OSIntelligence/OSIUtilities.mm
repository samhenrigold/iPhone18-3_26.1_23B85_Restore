@interface OSIUtilities
+ (BOOL)isWeekend:(id)weekend;
+ (BOOL)isiPhone;
+ (id)loIAtBeginningAndEndOfIntervals:(id)intervals;
+ (id)midnightDateFrom:(id)from;
+ (int64_t)currentBatteryLevelWithContext:(id)context;
@end

@implementation OSIUtilities

+ (id)loIAtBeginningAndEndOfIntervals:(id)intervals
{
  v98 = *MEMORY[0x277D85DE8];
  intervalsCopy = intervals;
  oslog = os_log_create("com.apple.osintelligence", "osiutilities.loi");
  defaultManager = [MEMORY[0x277D01280] defaultManager];
  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = __Block_byref_object_copy__2;
  v78 = __Block_byref_object_dispose__2;
  v79 = 0;
  v3 = dispatch_semaphore_create(0);
  firstObject = [intervalsCopy firstObject];
  startDate = [firstObject startDate];
  v52 = [startDate dateByAddingTimeInterval:-86400.0];

  lastObject = [intervalsCopy lastObject];
  endDate = [lastObject endDate];
  v51 = [endDate dateByAddingTimeInterval:86400.0];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v81 = v52;
    v82 = 2112;
    v83 = v51;
    _os_log_impl(&dword_25D171000, oslog, OS_LOG_TYPE_INFO, "Querying for LoIs and visits between start %@ and end %@", buf, 0x16u);
  }

  v72[0] = 0;
  v72[1] = v72;
  v72[2] = 0x3032000000;
  v72[3] = __Block_byref_object_copy__2;
  v72[4] = __Block_byref_object_dispose__2;
  v73 = 0;
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __48__OSIUtilities_loIAtBeginningAndEndOfIntervals___block_invoke;
  v68[3] = &unk_2799C1998;
  v70 = &v74;
  v71 = v72;
  v8 = v3;
  v69 = v8;
  [defaultManager fetchLocationsOfInterestVisitedBetweenStartDate:v52 endDate:v51 withHandler:v68];
  v9 = dispatch_time(0, 30000000000);
  dispatch_semaphore_wait(v8, v9);
  v59 = objc_opt_new();
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v75[5];
  v48 = v8;
  v56 = [obj countByEnumeratingWithState:&v64 objects:v97 count:16];
  if (v56)
  {
    v55 = *v65;
    do
    {
      for (i = 0; i != v56; ++i)
      {
        if (*v65 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v64 + 1) + 8 * i);
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        visits = [v10 visits];
        v12 = [visits countByEnumeratingWithState:&v60 objects:v96 count:16];
        if (v12)
        {
          v13 = *v61;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v61 != v13)
              {
                objc_enumerationMutation(visits);
              }

              v15 = *(*(&v60 + 1) + 8 * j);
              v94[0] = @"visitEntryDate";
              entryDate = [v15 entryDate];
              v95[0] = entryDate;
              v94[1] = @"visitExitDate";
              exitDate = [v15 exitDate];
              v95[1] = exitDate;
              v94[2] = @"loi";
              identifier = [v10 identifier];
              uUIDString = [identifier UUIDString];
              v95[2] = uUIDString;
              v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v95 forKeys:v94 count:3];

              [v59 addObject:v20];
            }

            v12 = [visits countByEnumeratingWithState:&v60 objects:v96 count:16];
          }

          while (v12);
        }
      }

      v56 = [obj countByEnumeratingWithState:&v64 objects:v97 count:16];
    }

    while (v56);
  }

  [v59 sortUsingComparator:&__block_literal_global_3];
  v21 = objc_opt_new();
  for (k = 0; [intervalsCopy count] > k; ++k)
  {
    v92[0] = @"interval";
    v23 = [intervalsCopy objectAtIndexedSubscript:k];
    v92[1] = @"loi";
    v93[0] = v23;
    v93[1] = &stru_286EB4F30;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:v92 count:2];
    [v21 addObject:v24];
  }

  v58 = 0;
  v25 = 0;
  for (m = 0; ; m = v27 + (v42 ^ 1))
  {
    v27 = m;
    if ([intervalsCopy count] <= m || objc_msgSend(v59, "count") <= v25)
    {
      break;
    }

    v28 = [v59 objectAtIndexedSubscript:?];
    v29 = [intervalsCopy objectAtIndexedSubscript:m];
    v30 = [v28 objectForKeyedSubscript:@"visitEntryDate"];
    startDate2 = [v29 startDate];
    [v30 timeIntervalSinceDate:startDate2];
    if (v32 <= 0.0)
    {
      v33 = [v28 objectForKeyedSubscript:@"visitExitDate"];
      endDate2 = [v29 endDate];
      [v33 timeIntervalSinceDate:endDate2];
      v36 = v35 < 0.0;

      if (v36)
      {
        goto LABEL_28;
      }

      v37 = [v21 objectAtIndexedSubscript:v27];
      v30 = [v37 mutableCopy];

      v38 = [v28 objectForKeyedSubscript:@"loi"];
      [v30 setObject:v38 forKeyedSubscript:@"loi"];

      [v21 setObject:v30 atIndexedSubscript:v27];
      ++v58;
    }

    else
    {
    }

LABEL_28:
    v39 = [v28 objectForKeyedSubscript:@"visitExitDate"];
    endDate3 = [v29 endDate];
    [v39 timeIntervalSinceDate:endDate3];
    v42 = v41 <= 0.0;

    v25 += v42;
  }

  v43 = oslog;
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v44 = [intervalsCopy count];
    v45 = [v75[5] count];
    v46 = [v59 count];
    *buf = 134219266;
    v81 = v44;
    v82 = 2112;
    v83 = v52;
    v84 = 2112;
    v85 = v51;
    v86 = 2048;
    v87 = v45;
    v88 = 2048;
    v89 = v46;
    v90 = 1024;
    v91 = v58;
    _os_log_impl(&dword_25D171000, v43, OS_LOG_TYPE_DEFAULT, "For %lu intervals spanning from %@ to %@: \n found %lu lois and %lu visits \n associated %d intervals with lois", buf, 0x3Au);
  }

  _Block_object_dispose(v72, 8);
  _Block_object_dispose(&v74, 8);

  return v21;
}

void __48__OSIUtilities_loIAtBeginningAndEndOfIntervals___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t __48__OSIUtilities_loIAtBeginningAndEndOfIntervals___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectForKeyedSubscript:@"visitEntryDate"];
  v6 = [v4 objectForKeyedSubscript:@"visitEntryDate"];

  v7 = [v5 compare:v6];
  return v7;
}

+ (int64_t)currentBatteryLevelWithContext:(id)context
{
  v3 = MEMORY[0x277CFE338];
  contextCopy = context;
  keyPathForBatteryStateDataDictionary = [v3 keyPathForBatteryStateDataDictionary];
  v6 = [contextCopy objectForKeyedSubscript:keyPathForBatteryStateDataDictionary];

  batteryPercentageKey = [MEMORY[0x277CFE338] batteryPercentageKey];
  v8 = [v6 objectForKeyedSubscript:batteryPercentageKey];
  integerValue = [v8 integerValue];

  return integerValue;
}

+ (id)midnightDateFrom:(id)from
{
  v3 = MEMORY[0x277CBEA80];
  fromCopy = from;
  currentCalendar = [v3 currentCalendar];
  systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
  [currentCalendar setTimeZone:systemTimeZone];

  v7 = [currentCalendar components:540 fromDate:fromCopy];

  v8 = [currentCalendar dateFromComponents:v7];

  return v8;
}

+ (BOOL)isWeekend:(id)weekend
{
  v3 = MEMORY[0x277CBEA80];
  weekendCopy = weekend;
  currentCalendar = [v3 currentCalendar];
  v6 = [currentCalendar isDateInWeekend:weekendCopy];

  return v6;
}

+ (BOOL)isiPhone
{
  v2 = MGGetStringAnswer();
  v3 = [v2 isEqualToString:@"iPhone"];

  return v3;
}

@end