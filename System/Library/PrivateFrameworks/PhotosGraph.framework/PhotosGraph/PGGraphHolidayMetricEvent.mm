@interface PGGraphHolidayMetricEvent
+ (id)celebratedHolidayMetricEventsWithGraphManager:(id)manager;
- (PGGraphHolidayMetricEvent)initWithHolidayName:(id)name numberOfCelebrations:(unint64_t)celebrations;
- (id)payload;
@end

@implementation PGGraphHolidayMetricEvent

- (id)payload
{
  v7[2] = *MEMORY[0x277D85DE8];
  holidayName = self->_holidayName;
  v6[0] = @"holiday";
  v6[1] = @"numberOfCelebrations";
  v7[0] = holidayName;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfCelebrations];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

- (PGGraphHolidayMetricEvent)initWithHolidayName:(id)name numberOfCelebrations:(unint64_t)celebrations
{
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = PGGraphHolidayMetricEvent;
  v7 = [(PGGraphHolidayMetricEvent *)&v10 init];
  if (v7)
  {
    if ([(__CFString *)nameCopy length])
    {
      v8 = nameCopy;
    }

    else
    {
      v8 = &stru_2843F5C58;
    }

    objc_storeStrong(&v7->_holidayName, v8);
    v7->_numberOfCelebrations = celebrations;
  }

  return v7;
}

+ (id)celebratedHolidayMetricEventsWithGraphManager:(id)manager
{
  managerCopy = manager;
  array = [MEMORY[0x277CBEB18] array];
  if ([managerCopy isReady])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __75__PGGraphHolidayMetricEvent_celebratedHolidayMetricEventsWithGraphManager___block_invoke;
    v6[3] = &unk_27888A3B8;
    v7 = array;
    [managerCopy performSynchronousConcurrentGraphReadUsingBlock:v6];
  }

  return array;
}

void __75__PGGraphHolidayMetricEvent_celebratedHolidayMetricEventsWithGraphManager___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CCA940] set];
  v5 = [v3 graph];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __75__PGGraphHolidayMetricEvent_celebratedHolidayMetricEventsWithGraphManager___block_invoke_2;
  v17[3] = &unk_278888D00;
  v6 = v4;
  v18 = v6;
  [v5 enumerateCelebratedHolidayNodesUsingBlock:v17];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = -[PGGraphHolidayMetricEvent initWithHolidayName:numberOfCelebrations:]([PGGraphHolidayMetricEvent alloc], "initWithHolidayName:numberOfCelebrations:", *(*(&v13 + 1) + 8 * v11), [v7 countForObject:{*(*(&v13 + 1) + 8 * v11), v13}]);
        if (v12)
        {
          [*(a1 + 32) addObject:v12];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v9);
  }
}

void __75__PGGraphHolidayMetricEvent_celebratedHolidayMetricEventsWithGraphManager___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  if ([v3 length])
  {
    [*(a1 + 32) addObject:v3];
  }
}

@end