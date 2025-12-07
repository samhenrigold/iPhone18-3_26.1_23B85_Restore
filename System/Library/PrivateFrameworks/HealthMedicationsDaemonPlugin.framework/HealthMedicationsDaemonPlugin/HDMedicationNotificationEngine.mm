@interface HDMedicationNotificationEngine
+ (BOOL)_greaterThanOrEqualNextScheduledDate:(void *)date endDate:(void *)endDate calendar:;
+ (BOOL)_isLastScheduledDoseforScheduledDate:(void *)date schedule:(void *)schedule startGenerationDate:(void *)generationDate calendar:(uint64_t)calendar cycleIntervalIndex:(void *)index interval:;
+ (id)_calculateNextGenerationDateFromGenerationDate:(void *)date calendar:;
+ (id)_generateForSchedule:(uint64_t)schedule configuration:(void *)configuration error:(void *)error;
+ (id)_generateScheduleItemsAtDate:(uint64_t)date withMultiphasicSchedule:(void *)schedule calendar:(void *)calendar startGenerationDate:(void *)generationDate;
+ (id)_generateScheduleItemsAtDate:(void *)date withSchedule:(void *)schedule startGenerationDate:(void *)generationDate calendar:;
+ (id)_getNextDateFromDate:(int)date daysInFuture:(void *)future calendar:;
+ (id)_getStartGenerationDateForSchedule:(uint64_t)schedule configuration:(void *)configuration calendar:(void *)calendar;
+ (id)_makeScheduleItemAtDate:(void *)date withMonophasicInterval:(void *)interval calendar:(void *)calendar schedule:;
+ (id)_makeScheduleItemAtDate:(void *)date withMonophasicInterval:(void *)interval calendar:(void *)calendar schedule:(uint64_t)schedule cyclicIntervalIndex:;
+ (id)_timeBatchItems:(uint64_t)items;
+ (id)generateForSchedules:(id)schedules configuration:(id)configuration error:(id *)error;
+ (uint64_t)_calculateTotalDaysForSchedule:(void *)schedule configuration:(void *)configuration calendar:(void *)calendar startGenerationDate:;
+ (uint64_t)_isLastScheduledTimeForDay:(void *)day schedule:(void *)schedule interval:(void *)interval calendar:;
+ (uint64_t)_optionForWeekday:(uint64_t)weekday;
+ (uint64_t)_validateConfigurationForCyclicSchedule:(int)schedule cycleIntervalIndex:;
+ (unint64_t)_indexForGenerationDate:(void *)date schedule:(void *)schedule calendar:;
+ (unint64_t)_indexThatAddsPastTotalDays:(void *)days fromIntervalLengths:;
+ (unint64_t)_indexThatDoesNotAddPastTotalDays:(void *)days fromIntervalLengths:;
- (HDMedicationNotificationEngine)init;
@end

@implementation HDMedicationNotificationEngine

- (HDMedicationNotificationEngine)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (id)generateForSchedules:(id)schedules configuration:(id)configuration error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  schedulesCopy = schedules;
  configurationCopy = configuration;
  array = [MEMORY[0x277CBEB18] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = schedulesCopy;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v37 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [HDMedicationNotificationEngine _generateForSchedule:self configuration:*(*(&v23 + 1) + 8 * i) error:configurationCopy];
        [array addObjectsFromArray:{v15, v23}];
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v37 count:16];
    }

    while (v12);
  }

  v16 = [(HDMedicationNotificationEngine *)self _timeBatchItems:array];
  _HKInitializeLogging();
  v17 = HKLogMedication();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "count")}];
    v19 = HKSensitiveLogItem();
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
    v21 = HKSensitiveLogItem();
    *buf = 138544386;
    selfCopy = self;
    v29 = 2114;
    v30 = v18;
    v31 = 2114;
    v32 = v19;
    v33 = 2114;
    v34 = v20;
    v35 = 2114;
    v36 = v21;
    _os_log_impl(&dword_25181C000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Generated %{public}@ time batched schedule items: %{public}@, for %{public}@ schedules: %{public}@", buf, 0x34u);
  }

  return v16;
}

+ (id)_generateForSchedule:(uint64_t)schedule configuration:(void *)configuration error:(void *)error
{
  configurationCopy = configuration;
  errorCopy = error;
  objc_opt_self();
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  calendar = [errorCopy calendar];
  createdUTCOffset = [configurationCopy createdUTCOffset];
  [calendar setTimeZone:createdUTCOffset];

  v9 = [HDMedicationNotificationEngine _getStartGenerationDateForSchedule:configurationCopy configuration:errorCopy calendar:?];
  v10 = [HDMedicationNotificationEngine _calculateTotalDaysForSchedule:configurationCopy configuration:errorCopy calendar:calendar startGenerationDate:v9];
  v11 = v9;
  v12 = v11;
  v13 = v11;
  if (v10 >= 1)
  {
    v14 = v11;
    do
    {
      v15 = objc_autoreleasePoolPush();
      v16 = [HDMedicationNotificationEngine _generateScheduleItemsAtDate:v14 withSchedule:configurationCopy startGenerationDate:v12 calendar:calendar];
      [v6 addObjectsFromArray:v16];

      v13 = [HDMedicationNotificationEngine _calculateNextGenerationDateFromGenerationDate:v14 calendar:calendar];

      objc_autoreleasePoolPop(v15);
      v14 = v13;
      --v10;
    }

    while (v10);
  }

  return v6;
}

+ (id)_timeBatchItems:(uint64_t)items
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_self();
  v3 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:{objc_msgSend(v2, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v2;
  v4 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        v9 = [v3 indexOfObject:v8];
        if (v9 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v3 addObject:v8];
        }

        else
        {
          v10 = v9;
          v11 = [v3 objectAtIndexedSubscript:v9];
          doses = [v11 doses];
          v13 = [doses mutableCopy];

          doses2 = [v8 doses];
          [v13 addObjectsFromArray:doses2];

          v15 = objc_alloc(MEMORY[0x277D11588]);
          scheduledDateTime = [v11 scheduledDateTime];
          v17 = [v15 initWithScheduledDateTime:scheduledDateTime notificationSent:objc_msgSend(v11 doses:{"notificationSent"), v13}];
          [v3 setObject:v17 atIndexedSubscript:v10];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  array = [v3 array];

  return array;
}

+ (id)_getStartGenerationDateForSchedule:(uint64_t)schedule configuration:(void *)configuration calendar:(void *)calendar
{
  calendarCopy = calendar;
  configurationCopy = configuration;
  objc_opt_self();
  startGenerationDate = [calendarCopy startGenerationDate];

  startDateTime = [configurationCopy startDateTime];

  if ([startDateTime hk_isAfterOrEqualToDate:startGenerationDate])
  {
    v8 = startDateTime;

    startGenerationDate = v8;
  }

  return startGenerationDate;
}

+ (uint64_t)_calculateTotalDaysForSchedule:(void *)schedule configuration:(void *)configuration calendar:(void *)calendar startGenerationDate:
{
  v8 = a2;
  configurationCopy = configuration;
  calendarCopy = calendar;
  scheduleCopy = schedule;
  objc_opt_self();
  endGenerationDate = [scheduleCopy endGenerationDate];

  v13 = [configurationCopy startOfDayForDate:calendarCopy];

  endDateTime = [v8 endDateTime];

  if (endDateTime)
  {
    v15 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v15 setDay:1];
    endDateTime2 = [v8 endDateTime];
    v17 = [configurationCopy dateByAddingComponents:v15 toDate:endDateTime2 options:2];
    v18 = [configurationCopy startOfDayForDate:v17];

    if ([endGenerationDate hk_isAfterOrEqualToDate:v18])
    {
      v19 = v18;

      endGenerationDate = v19;
    }
  }

  v20 = [configurationCopy components:16 fromDate:v13 toDate:endGenerationDate options:2];
  v21 = [v20 day];

  return v21;
}

+ (id)_generateScheduleItemsAtDate:(void *)date withSchedule:(void *)schedule startGenerationDate:(void *)generationDate calendar:
{
  v73 = *MEMORY[0x277D85DE8];
  v8 = a2;
  dateCopy = date;
  scheduleCopy = schedule;
  generationDateCopy = generationDate;
  v12 = dateCopy;
  v13 = generationDateCopy;
  v14 = objc_opt_self();
  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_opt_self();
  v52 = v13;
  v16 = [v13 components:636 fromDate:v8];
  weekday = [v16 weekday];

  timeIntervals = [v12 timeIntervals];
  frequencyType = [v12 frequencyType];
  v20 = frequencyType;
  v51 = v15;
  if (frequencyType > 1)
  {
    if (frequencyType == 2)
    {
      v49 = v14;
      v50 = timeIntervals;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v35 = timeIntervals;
      v36 = [v35 countByEnumeratingWithState:&v53 objects:v71 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = *v54;
        do
        {
          for (i = 0; i != v37; ++i)
          {
            if (*v54 != v38)
            {
              objc_enumerationMutation(v35);
            }

            v40 = [HDMedicationNotificationEngine _makeScheduleItemAtDate:v8 withMonophasicInterval:*(*(&v53 + 1) + 8 * i) calendar:v52 schedule:v12];
            [v15 addObject:v40];
          }

          v37 = [v35 countByEnumeratingWithState:&v53 objects:v71 count:16];
        }

        while (v37);
      }

LABEL_28:
      v14 = v49;
      timeIntervals = v50;
      goto LABEL_29;
    }

    if (frequencyType != 4)
    {
      if (frequencyType != 3)
      {
        goto LABEL_29;
      }

      v48 = scheduleCopy;
      v49 = v14;
      v21 = v12;
      v22 = v8;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v50 = timeIntervals;
      v23 = timeIntervals;
      v24 = [v23 countByEnumeratingWithState:&v57 objects:v72 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v58;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v58 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v57 + 1) + 8 * j);
            daysOfWeek = [v28 daysOfWeek];
            if (([HDMedicationNotificationEngine _optionForWeekday:weekday]& daysOfWeek) != 0)
            {
              v30 = [HDMedicationNotificationEngine _makeScheduleItemAtDate:v22 withMonophasicInterval:v28 calendar:v52 schedule:v21];
              [v51 addObject:v30];
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v57 objects:v72 count:16];
        }

        while (v25);
      }

      v8 = v22;
      v12 = v21;
      scheduleCopy = v48;
      goto LABEL_28;
    }

LABEL_19:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:sel__generateScheduleItemsAtDate_withSchedule_startGenerationDate_calendar_ object:v14 file:@"HDMedicationNotificationEngine.m" lineNumber:217 description:{@"frequency type %ld is not a supported schedule type.", v20}];

    goto LABEL_29;
  }

  if (!frequencyType)
  {
    goto LABEL_19;
  }

  if (frequencyType == 1)
  {
    timeIntervals2 = [v12 timeIntervals];
    v32 = [timeIntervals2 count];

    if (v32)
    {
      v33 = [HDMedicationNotificationEngine _generateScheduleItemsAtDate:v8 withMultiphasicSchedule:v12 calendar:v52 startGenerationDate:?];
      [v51 addObjectsFromArray:v33];
    }
  }

LABEL_29:
  _HKInitializeLogging();
  v41 = HKLogMedication();
  v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG);

  if (v42)
  {
    v43 = HKLogMedication();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v51, "count")}];
      v46 = HKSensitiveLogItem();
      v47 = HKSensitiveLogItem();
      *buf = 138544386;
      v62 = v14;
      v63 = 2114;
      v64 = v45;
      v65 = 2114;
      v66 = v46;
      v67 = 2114;
      v68 = v47;
      v69 = 2114;
      v70 = v8;
      _os_log_debug_impl(&dword_25181C000, v43, OS_LOG_TYPE_DEBUG, "[%{public}@] Generated %{public}@ schedule items: %{public}@, for schedule: %{public}@, at date: %{public}@", buf, 0x34u);
    }
  }

  return v51;
}

+ (id)_calculateNextGenerationDateFromGenerationDate:(void *)date calendar:
{
  dateCopy = date;
  v5 = a2;
  objc_opt_self();
  v6 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v6 setDay:1];
  v7 = [dateCopy dateByAddingComponents:v6 toDate:v5 options:2];

  return v7;
}

+ (uint64_t)_optionForWeekday:(uint64_t)weekday
{
  objc_opt_self();
  if ((a2 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return qword_251879578[a2 - 1];
  }
}

+ (id)_makeScheduleItemAtDate:(void *)date withMonophasicInterval:(void *)interval calendar:(void *)calendar schedule:
{
  calendarCopy = calendar;
  intervalCopy = interval;
  dateCopy = date;
  v11 = a2;
  v12 = objc_opt_self();
  v13 = [(HDMedicationNotificationEngine *)v12 _makeScheduleItemAtDate:v11 withMonophasicInterval:dateCopy calendar:intervalCopy schedule:calendarCopy cyclicIntervalIndex:0xFFFFFFFFLL];

  return v13;
}

+ (id)_generateScheduleItemsAtDate:(uint64_t)date withMultiphasicSchedule:(void *)schedule calendar:(void *)calendar startGenerationDate:(void *)generationDate
{
  v37 = *MEMORY[0x277D85DE8];
  scheduleCopy = schedule;
  calendarCopy = calendar;
  generationDateCopy = generationDate;
  v9 = objc_opt_self();
  v29 = generationDateCopy;
  v30 = scheduleCopy;
  v10 = [(HDMedicationNotificationEngine *)v9 _indexForGenerationDate:scheduleCopy schedule:calendarCopy calendar:generationDateCopy];
  v11 = calendarCopy;
  timeIntervals = [calendarCopy timeIntervals];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __116__HDMedicationNotificationEngine__generateScheduleItemsAtDate_withMultiphasicSchedule_calendar_startGenerationDate___block_invoke;
  v35[3] = &__block_descriptor_40_e76___HKMedicationScheduleIntervalData_16__0__HKMedicationScheduleIntervalData_8l;
  v35[4] = v10;
  v13 = [timeIntervals hk_map:v35];

  v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v13, "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v32;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v32 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v31 + 1) + 8 * i);
        dose = [v20 dose];
        if (dose)
        {
          v22 = dose;
          dose2 = [v20 dose];
          [dose2 doubleValue];
          v25 = fabs(v24);

          if (v25 < 2.22044605e-16)
          {
            continue;
          }
        }

        v26 = [HDMedicationNotificationEngine _makeScheduleItemAtDate:v30 withMonophasicInterval:v20 calendar:v29 schedule:v11 cyclicIntervalIndex:v10];
        [v14 addObject:v26];
      }

      v17 = [v15 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v17);
  }

  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v14];

  return v27;
}

+ (BOOL)_isLastScheduledDoseforScheduledDate:(void *)date schedule:(void *)schedule startGenerationDate:(void *)generationDate calendar:(uint64_t)calendar cycleIntervalIndex:(void *)index interval:
{
  calendarCopy = calendar;
  v60 = *MEMORY[0x277D85DE8];
  v12 = a2;
  dateCopy = date;
  scheduleCopy = schedule;
  generationDateCopy = generationDate;
  indexCopy = index;
  v17 = objc_opt_self();
  endDateTime = [dateCopy endDateTime];
  v19 = v12;
  if (!endDateTime)
  {
    goto LABEL_37;
  }

  dose = [indexCopy dose];

  if (!dose || ![(HDMedicationNotificationEngine *)v17 _isLastScheduledTimeForDay:v19 schedule:dateCopy interval:indexCopy calendar:generationDateCopy])
  {
    goto LABEL_37;
  }

  frequencyType = [dateCopy frequencyType];
  if (frequencyType > 2)
  {
    if (frequencyType == 3)
    {
      timeIntervals = [dateCopy timeIntervals];
      v37 = [timeIntervals count];

      if (v37)
      {
        v53 = scheduleCopy;
        v54 = v17;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        timeIntervals2 = [dateCopy timeIntervals];
        v39 = [timeIntervals2 countByEnumeratingWithState:&v55 objects:v59 count:16];
        if (v39)
        {
          v40 = v39;
          v41 = 0;
          v42 = *v56;
          do
          {
            for (i = 0; i != v40; ++i)
            {
              if (*v56 != v42)
              {
                objc_enumerationMutation(timeIntervals2);
              }

              v41 |= [*(*(&v55 + 1) + 8 * i) daysOfWeek];
            }

            v40 = [timeIntervals2 countByEnumeratingWithState:&v55 objects:v59 count:16];
          }

          while (v40);
        }

        else
        {
          v41 = 0;
        }

        v47 = 1;
        v17 = v54;
        while (1)
        {
          v22 = [(HDMedicationNotificationEngine *)v17 _getNextDateFromDate:v19 daysInFuture:v47 calendar:generationDateCopy];
          objc_opt_self();
          v48 = [generationDateCopy components:636 fromDate:v22];
          weekday = [v48 weekday];

          if (([HDMedicationNotificationEngine _optionForWeekday:weekday]& v41) != 0)
          {
            break;
          }

          ++v47;
          v17 = v54;
          if (v47 == 8)
          {
            v22 = v19;
            scheduleCopy = v53;
            goto LABEL_47;
          }
        }

        scheduleCopy = v53;
        v17 = v54;
        goto LABEL_47;
      }

      _HKInitializeLogging();
      v44 = HKLogMedication();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        +[HDMedicationNotificationEngine _isLastScheduledDoseforScheduledDate:schedule:startGenerationDate:calendar:cycleIntervalIndex:interval:];
      }

LABEL_36:

      goto LABEL_37;
    }

    v22 = v19;
    if (frequencyType != 4)
    {
      goto LABEL_47;
    }
  }

  else
  {
    if (frequencyType != 1)
    {
      v22 = v19;
      if (frequencyType != 2)
      {
LABEL_47:
        v45 = [(HDMedicationNotificationEngine *)v17 _greaterThanOrEqualNextScheduledDate:v22 endDate:endDateTime calendar:generationDateCopy];
        goto LABEL_38;
      }

      timeIntervals3 = [dateCopy timeIntervals];
      v24 = [timeIntervals3 count];

      if (v24)
      {
        v22 = [(HDMedicationNotificationEngine *)v17 _getNextDateFromDate:v19 daysInFuture:1 calendar:generationDateCopy];

        goto LABEL_47;
      }

      _HKInitializeLogging();
      v44 = HKLogMedication();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        +[HDMedicationNotificationEngine _isLastScheduledDoseforScheduledDate:schedule:startGenerationDate:calendar:cycleIntervalIndex:interval:];
      }

      goto LABEL_36;
    }

    if ([(HDMedicationNotificationEngine *)v17 _validateConfigurationForCyclicSchedule:dateCopy cycleIntervalIndex:calendarCopy])
    {
      v25 = 1;
      v26 = [(HDMedicationNotificationEngine *)v17 _getNextDateFromDate:v19 daysInFuture:1 calendar:generationDateCopy];
      if ([(HDMedicationNotificationEngine *)v17 _indexForGenerationDate:v26 schedule:dateCopy calendar:generationDateCopy]!= calendarCopy)
      {
        v50 = indexCopy;
        v51 = v26;
        v52 = scheduleCopy;
        v27 = 1;
        while (1)
        {
          timeIntervals4 = [dateCopy timeIntervals];
          v29 = [timeIntervals4 count] - 1;

          timeIntervals5 = [dateCopy timeIntervals];
          v31 = timeIntervals5;
          v32 = v29 == calendarCopy ? 0 : calendarCopy + 1;
          v33 = [timeIntervals5 objectAtIndexedSubscript:v32];

          dose2 = [v33 dose];

          if (dose2)
          {
            break;
          }

          if (v29 == calendarCopy)
          {
            calendarCopy = 0;
          }

          else
          {
            ++calendarCopy;
          }

          cycleIntervalDays = [v33 cycleIntervalDays];
          v27 += [cycleIntervalDays intValue];
        }

        scheduleCopy = v52;
        v25 = v27;
        indexCopy = v50;
        v26 = v51;
      }

      v22 = [(HDMedicationNotificationEngine *)v17 _getNextDateFromDate:v19 daysInFuture:v25 calendar:generationDateCopy];

      goto LABEL_47;
    }
  }

LABEL_37:
  v45 = 0;
  v22 = v19;
LABEL_38:

  return v45;
}

+ (uint64_t)_isLastScheduledTimeForDay:(void *)day schedule:(void *)schedule interval:(void *)interval calendar:
{
  v51 = *MEMORY[0x277D85DE8];
  v8 = a2;
  dayCopy = day;
  scheduleCopy = schedule;
  intervalCopy = interval;
  objc_opt_self();
  v43 = [intervalCopy components:224 fromDate:v8];
  [v43 setCalendar:intervalCopy];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  timeIntervals = [dayCopy timeIntervals];
  v13 = [timeIntervals countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (!v13)
  {
    v38 = 1;
    goto LABEL_21;
  }

  v40 = intervalCopy;
  v41 = dayCopy;
  v42 = v8;
  v14 = *v47;
  v15 = v13;
  do
  {
    v16 = 0;
    v44 = v15;
    do
    {
      if (*v47 != v14)
      {
        objc_enumerationMutation(timeIntervals);
      }

      v17 = *(*(&v46 + 1) + 8 * v16);
      cycleIntervalDays = [scheduleCopy cycleIntervalDays];
      cycleIntervalDays2 = [v17 cycleIntervalDays];
      if (cycleIntervalDays != cycleIntervalDays2)
      {
        goto LABEL_9;
      }

      cycleIndex = [scheduleCopy cycleIndex];
      cycleIndex2 = [v17 cycleIndex];
      v22 = cycleIndex2;
      if (cycleIndex != cycleIndex2)
      {

LABEL_9:
        goto LABEL_10;
      }

      daysOfWeek = [scheduleCopy daysOfWeek];
      v23 = scheduleCopy;
      v24 = v14;
      v25 = timeIntervals;
      daysOfWeek2 = [v17 daysOfWeek];

      v27 = daysOfWeek == daysOfWeek2;
      timeIntervals = v25;
      v14 = v24;
      scheduleCopy = v23;
      v15 = v44;
      if (v27)
      {
        v28 = objc_alloc_init(MEMORY[0x277CBEAB8]);
        startTimeComponent = [v17 startTimeComponent];
        calendar = [startTimeComponent calendar];
        [v28 setCalendar:calendar];

        startTimeComponent2 = [v17 startTimeComponent];
        [v28 setHour:{objc_msgSend(startTimeComponent2, "hour")}];

        startTimeComponent3 = [v17 startTimeComponent];
        [v28 setMinute:{objc_msgSend(startTimeComponent3, "minute")}];

        startTimeComponent4 = [v17 startTimeComponent];
        [v28 setSecond:{objc_msgSend(startTimeComponent4, "second")}];

        date = [v43 date];
        date2 = [v28 date];
        v36 = [date compare:date2];

        v27 = v36 == -1;
        v15 = v44;
        if (v27)
        {
          v38 = 0;
          goto LABEL_19;
        }
      }

LABEL_10:
      ++v16;
    }

    while (v15 != v16);
    v37 = [timeIntervals countByEnumeratingWithState:&v46 objects:v50 count:16];
    v15 = v37;
  }

  while (v37);
  v38 = 1;
LABEL_19:
  dayCopy = v41;
  v8 = v42;
  intervalCopy = v40;
LABEL_21:

  return v38;
}

+ (id)_getNextDateFromDate:(int)date daysInFuture:(void *)future calendar:
{
  futureCopy = future;
  v7 = a2;
  objc_opt_self();
  v8 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v8 setDay:date];
  v9 = [futureCopy dateByAddingComponents:v8 toDate:v7 options:0];

  return v9;
}

+ (uint64_t)_validateConfigurationForCyclicSchedule:(int)schedule cycleIntervalIndex:
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_opt_self();
  timeIntervals = [v4 timeIntervals];
  v6 = [timeIntervals count];

  if (schedule < 0 || v6 <= 1)
  {
    _HKInitializeLogging();
    timeIntervals2 = HKLogMedication();
    if (os_log_type_enabled(timeIntervals2, OS_LOG_TYPE_ERROR))
    {
      +[HDMedicationNotificationEngine _validateConfigurationForCyclicSchedule:cycleIntervalIndex:];
    }
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    timeIntervals2 = [v4 timeIntervals];
    v8 = [timeIntervals2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(timeIntervals2);
          }

          dose = [*(*(&v15 + 1) + 8 * v11) dose];

          if (dose)
          {
            v13 = 1;
            goto LABEL_17;
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [timeIntervals2 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    _HKInitializeLogging();
    timeIntervals2 = HKLogMedication();
    if (os_log_type_enabled(timeIntervals2, OS_LOG_TYPE_ERROR))
    {
      +[HDMedicationNotificationEngine _validateConfigurationForCyclicSchedule:cycleIntervalIndex:];
    }
  }

  v13 = 0;
LABEL_17:

  return v13;
}

+ (unint64_t)_indexForGenerationDate:(void *)date schedule:(void *)schedule calendar:
{
  v6 = a2;
  dateCopy = date;
  scheduleCopy = schedule;
  v9 = objc_opt_self();
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v26[3] = 0x8000000000000000;
  timeIntervals = [dateCopy timeIntervals];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __76__HDMedicationNotificationEngine__indexForGenerationDate_schedule_calendar___block_invoke;
  v25[3] = &unk_2796CE460;
  v25[4] = v26;
  v11 = [timeIntervals hk_map:v25];

  startDateTime = [dateCopy startDateTime];
  v13 = [scheduleCopy components:124 fromDate:startDateTime];

  cycleStartDate = [dateCopy cycleStartDate];
  if (cycleStartDate)
  {
    cycleStartDate2 = [dateCopy cycleStartDate];
  }

  else
  {
    cycleStartDate2 = v13;
  }

  v16 = cycleStartDate2;

  v17 = [scheduleCopy dateFromComponents:v16];
  v18 = [scheduleCopy components:16 fromDate:v17 toDate:v6 options:2];
  v19 = [v18 day];

  if (v19 < 0)
  {
    hk_reversed = [v11 hk_reversed];
    v22 = [(HDMedicationNotificationEngine *)v9 _indexThatDoesNotAddPastTotalDays:hk_reversed fromIntervalLengths:?];
    v23 = [v11 count];
    objc_opt_self();
    v20 = v23 + ~v22;
  }

  else
  {
    v20 = [(HDMedicationNotificationEngine *)v9 _indexThatAddsPastTotalDays:v19 fromIntervalLengths:v11];
  }

  _Block_object_dispose(v26, 8);
  return v20;
}

+ (BOOL)_greaterThanOrEqualNextScheduledDate:(void *)date endDate:(void *)endDate calendar:
{
  endDateCopy = endDate;
  dateCopy = date;
  v8 = a2;
  objc_opt_self();
  v9 = [endDateCopy compareDate:v8 toDate:dateCopy toUnitGranularity:16];

  return v9 == 1;
}

+ (id)_makeScheduleItemAtDate:(void *)date withMonophasicInterval:(void *)interval calendar:(void *)calendar schedule:(uint64_t)schedule cyclicIntervalIndex:
{
  v28[1] = *MEMORY[0x277D85DE8];
  calendarCopy = calendar;
  intervalCopy = interval;
  dateCopy = date;
  v13 = a2;
  v14 = objc_opt_self();
  startTimeComponent = [dateCopy startTimeComponent];
  v16 = [intervalCopy components:28 fromDate:v13];
  [v16 setHour:{objc_msgSend(startTimeComponent, "hour")}];
  [v16 setMinute:{objc_msgSend(startTimeComponent, "minute")}];
  [v16 setSecond:{objc_msgSend(startTimeComponent, "second")}];
  [v16 setCalendar:intervalCopy];
  date = [v16 date];
  v18 = [(HDMedicationNotificationEngine *)v14 _isLastScheduledDoseforScheduledDate:date schedule:calendarCopy startGenerationDate:v13 calendar:intervalCopy cycleIntervalIndex:schedule interval:dateCopy];

  v19 = objc_alloc(MEMORY[0x277D11590]);
  uUID = [calendarCopy UUID];
  dose = [dateCopy dose];

  medicationIdentifier = [calendarCopy medicationIdentifier];

  v23 = [v19 initWithScheduleUUID:uUID dose:dose medicationIdentifier:medicationIdentifier isLastScheduledDose:v18];
  v24 = objc_alloc(MEMORY[0x277D11588]);
  v28[0] = v23;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  v26 = [v24 initWithScheduledDateTime:date notificationSent:0 doses:v25];

  return v26;
}

id __116__HDMedicationNotificationEngine__generateScheduleItemsAtDate_withMultiphasicSchedule_calendar_startGenerationDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 cycleIndex];
  v5 = v4;
  if (v4 && [v4 integerValue] == *(a1 + 32))
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __76__HDMedicationNotificationEngine__indexForGenerationDate_schedule_calendar___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 cycleIndex];
  v5 = v4;
  if (v4 && [v4 integerValue] == *(*(*(a1 + 32) + 8) + 24))
  {
    v6 = 0;
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = [v5 integerValue];
    v6 = [v3 cycleIntervalDays];
  }

  return v6;
}

+ (unint64_t)_indexThatDoesNotAddPastTotalDays:(void *)days fromIntervalLengths:
{
  daysCopy = days;
  objc_opt_self();
  if (a2 < 1)
  {
    v6 = -1;
  }

  else
  {
    v5 = 0;
    v6 = -1;
    do
    {
      v6 = (v6 + 1) % [daysCopy count];
      v7 = [daysCopy objectAtIndexedSubscript:v6];
      v5 += [v7 integerValue];
    }

    while (v5 < a2);
  }

  return v6;
}

+ (unint64_t)_indexThatAddsPastTotalDays:(void *)days fromIntervalLengths:
{
  daysCopy = days;
  objc_opt_self();
  if (a2 < 0)
  {
    v6 = -1;
  }

  else
  {
    v5 = 0;
    v6 = -1;
    do
    {
      v6 = (v6 + 1) % [daysCopy count];
      v7 = [daysCopy objectAtIndexedSubscript:v6];
      v5 += [v7 integerValue];
    }

    while (v5 <= a2);
  }

  return v6;
}

@end