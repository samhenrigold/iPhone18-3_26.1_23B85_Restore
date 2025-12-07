@interface SCLScheduleAttributes
- (SCLScheduleAttributes)initWithSchedule:(id)schedule options:(unint64_t)options;
- (void)_prepareWithRecurrences:(id)recurrences;
@end

@implementation SCLScheduleAttributes

- (SCLScheduleAttributes)initWithSchedule:(id)schedule options:(unint64_t)options
{
  scheduleCopy = schedule;
  v12.receiver = self;
  v12.super_class = SCLScheduleAttributes;
  v7 = [(SCLScheduleAttributes *)&v12 init];
  if (v7)
  {
    v8 = [scheduleCopy copy];
    schedule = v7->_schedule;
    v7->_schedule = v8;

    v7->_validationOptions = options;
    recurrences = [scheduleCopy recurrences];
    [(SCLScheduleAttributes *)v7 _prepareWithRecurrences:recurrences];
  }

  return v7;
}

- (void)_prepareWithRecurrences:(id)recurrences
{
  v50 = *MEMORY[0x277D85DE8];
  recurrencesCopy = recurrences;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v5 = [MEMORY[0x277CBEB58] set];
  v6 = [MEMORY[0x277CBEB58] set];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __49__SCLScheduleAttributes__prepareWithRecurrences___block_invoke;
  v33[3] = &unk_279B6CB08;
  v39 = &v41;
  v8 = dictionary;
  v34 = v8;
  selfCopy = self;
  v40 = &v45;
  v9 = v6;
  v36 = v9;
  v10 = recurrencesCopy;
  v37 = v10;
  v11 = v5;
  v38 = v11;
  [v10 enumerateObjectsUsingBlock:v33];
  self->_scheduledDays = v42[3];
  v12 = v46[3];
  self->_valid = v12 == 0;
  if (v12)
  {
    nextObject = objc_alloc_init(MEMORY[0x277CBEB38]);
    [nextObject setObject:@"Recurrence validation failed." forKeyedSubscript:*MEMORY[0x277CCA450]];
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v46[3]];
    [nextObject setObject:v14 forKeyedSubscript:@"FailedValidations"];

    if ([v11 count])
    {
      [nextObject setObject:v11 forKeyedSubscript:@"OverlappingRecurrences"];
    }

    if ([v9 count])
    {
      [nextObject setObject:v9 forKeyedSubscript:@"CrossDayBoundaryRecurrences"];
    }

    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.schooltime" code:3 userInfo:nextObject];
    validationError = self->_validationError;
    self->_validationError = v15;
  }

  else
  {
    v17 = [v8 count] != 0;
    objectEnumerator = [v8 objectEnumerator];
    nextObject = [objectEnumerator nextObject];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    objectEnumerator2 = [v8 objectEnumerator];
    v20 = [objectEnumerator2 countByEnumeratingWithState:&v29 objects:v49 count:16];
    v25 = v11;
    v26 = v9;
    v27 = v8;
    v28 = v10;
    if (v20)
    {
      v21 = *v30;
      v22 = 1;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v30 != v21)
          {
            objc_enumerationMutation(objectEnumerator2);
          }

          v24 = *(*(&v29 + 1) + 8 * i);
          v22 &= [v24 isEqual:{nextObject, v25, v26, v27, v28}];
          v17 &= [v24 count] < 2;
        }

        v20 = [objectEnumerator2 countByEnumeratingWithState:&v29 objects:v49 count:16];
      }

      while (v20);
    }

    else
    {
      LOBYTE(v22) = 1;
    }

    v8 = v27;
    v10 = v28;
    v11 = v25;
    v9 = v26;
    self->_hasUniformIntervals = v22;
    self->_hasSingleIntervalPerDay = v17;
  }

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);
}

void __49__SCLScheduleAttributes__prepareWithRecurrences___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 72) + 8) + 24) |= SCLRepeatScheduleForDay([v3 day]);
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "day")}];
  v5 = [*(a1 + 32) objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = [MEMORY[0x277CBEB58] set];
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v4];
  }

  v6 = [v3 timeInterval];
  [v5 addObject:v6];

  if ((*(*(a1 + 40) + 24) & 2) != 0)
  {
    v7 = [v3 timeInterval];
    v8 = [v7 crossesDayBoundary];

    if (v8)
    {
      *(*(*(a1 + 80) + 8) + 24) |= 2uLL;
      [*(a1 + 48) addObject:v3];
    }
  }

  if (*(*(a1 + 40) + 24))
  {
    v9 = *(a1 + 56);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __49__SCLScheduleAttributes__prepareWithRecurrences___block_invoke_2;
    v12[3] = &unk_279B6CAE0;
    v10 = v3;
    v11 = *(a1 + 80);
    v13 = v10;
    v15 = v11;
    v14 = *(a1 + 64);
    [v9 enumerateObjectsUsingBlock:v12];
  }
}

uint64_t __49__SCLScheduleAttributes__prepareWithRecurrences___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4 != v3)
  {
    v6 = v3;
    if ([v4 intersectsRecurrence:v3])
    {
      *(*(*(a1 + 48) + 8) + 24) |= 1uLL;
      [*(a1 + 40) addObject:*(a1 + 32)];
      [*(a1 + 40) addObject:v6];
    }
  }

  return MEMORY[0x2821F96F8]();
}

@end