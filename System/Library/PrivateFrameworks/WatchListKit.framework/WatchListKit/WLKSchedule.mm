@interface WLKSchedule
- (BOOL)_isDate:(id)date containedByDate:(id)byDate andDate:(id)andDate;
- (BOOL)isEqual:(id)equal;
- (NSArray)events;
- (WLKSchedule)initWithDictionary:(id)dictionary;
- (id)adjacentEventsForDate:(id)date fuzziness:(double)fuzziness;
- (id)eventAfterDate:(id)date;
- (id)eventForDate:(id)date;
- (id)eventForDate:(id)date fuzziness:(double)fuzziness;
- (void)prune;
@end

@implementation WLKSchedule

- (WLKSchedule)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (![dictionaryCopy count])
  {
    selfCopy = 0;
    goto LABEL_9;
  }

  v27.receiver = self;
  v27.super_class = WLKSchedule;
  v5 = [(WLKSchedule *)&v27 init];
  if (v5)
  {
    array = [MEMORY[0x277CBEB18] array];
    v7 = [dictionaryCopy wlk_arrayForKey:@"schedule"];
    if (v7)
    {
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __34__WLKSchedule_initWithDictionary___block_invoke;
      v25[3] = &unk_279E5F4A8;
      v26 = array;
      [v7 enumerateObjectsUsingBlock:v25];
      v8 = [dictionaryCopy wlk_stringForKey:@"serviceId"];
      v9 = [v8 copy];
      serviceID = v5->_serviceID;
      v5->_serviceID = v9;

      v11 = [dictionaryCopy wlk_dateFromMillisecondsSince1970ForKey:@"scheduleStartTime"];
      v12 = [v11 copy];
      startDate = v5->_startDate;
      v5->_startDate = v12;

      v14 = [dictionaryCopy wlk_dateFromMillisecondsSince1970ForKey:@"scheduleEndTime"];
      v15 = [v14 copy];
      endDate = v5->_endDate;
      v5->_endDate = v15;

      v17 = v26;
    }

    else
    {
      v24 = [dictionaryCopy wlk_stringForKey:@"canonicalId"];

      if (!v24)
      {
        goto LABEL_6;
      }

      v17 = [[WLKEvent alloc] initWithDictionary:dictionaryCopy];
      if (v17)
      {
        [(NSMutableArray *)array addObject:v17];
      }
    }

LABEL_6:
    mutableEvents = v5->_mutableEvents;
    v5->_mutableEvents = array;
    v19 = array;

    v20 = [dictionaryCopy copy];
    dictionary = v5->_dictionary;
    v5->_dictionary = v20;
  }

  self = v5;
  selfCopy = self;
LABEL_9:

  return selfCopy;
}

void __34__WLKSchedule_initWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [[WLKEvent alloc] initWithDictionary:v3];

  v4 = v5;
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
    v4 = v5;
  }
}

- (NSArray)events
{
  v2 = [(NSMutableArray *)self->_mutableEvents copy];

  return v2;
}

- (id)eventForDate:(id)date
{
  v21 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_mutableEvents;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        startDate = [v10 startDate];
        endDate = [v10 endDate];
        v13 = [(WLKSchedule *)self _isDate:dateCopy containedByDate:startDate andDate:endDate];

        if (v13)
        {
          v14 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (id)eventForDate:(id)date fuzziness:(double)fuzziness
{
  v22 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = self->_mutableEvents;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = objc_alloc(MEMORY[0x277CCA970]);
        v13 = [v12 initWithStartDate:dateCopy duration:{fuzziness, v17}];
        startDate = [v11 startDate];
        v15 = [v13 containsDate:startDate];

        if (v15)
        {
          v8 = v11;

          goto LABEL_11;
        }
      }

      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (id)adjacentEventsForDate:(id)date fuzziness:(double)fuzziness
{
  v25 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  array = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = self->_mutableEvents;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        startDate = [v12 startDate];
        v14 = [startDate dateByAddingTimeInterval:-fuzziness];

        endDate = [v12 endDate];
        v16 = [endDate dateByAddingTimeInterval:fuzziness];

        if ([(WLKSchedule *)self _isDate:dateCopy containedByDate:v14 andDate:v16])
        {
          [array addObject:v12];
        }
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v17 = [array copy];

  return v17;
}

- (id)eventAfterDate:(id)date
{
  v18 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_mutableEvents;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        startDate = [v9 startDate];
        v11 = [startDate compare:dateCopy];

        if (v11 == 1)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)prune
{
  v8 = objc_alloc_init(MEMORY[0x277CCAB58]);
  date = [MEMORY[0x277CBEAA8] date];
  if ([(NSMutableArray *)self->_mutableEvents count])
  {
    v4 = 0;
    do
    {
      v5 = [(NSMutableArray *)self->_mutableEvents objectAtIndex:v4];
      endDate = [v5 endDate];
      v7 = [date compare:endDate];

      if (v7 == 1)
      {
        [v8 addIndex:v4];
      }

      ++v4;
    }

    while (v4 < [(NSMutableArray *)self->_mutableEvents count]);
  }

  [(NSMutableArray *)self->_mutableEvents removeObjectsAtIndexes:v8];
}

- (BOOL)_isDate:(id)date containedByDate:(id)byDate andDate:(id)andDate
{
  dateCopy = date;
  andDateCopy = andDate;
  v9 = [dateCopy compare:byDate] <= 1 && (objc_msgSend(dateCopy, "compare:", andDateCopy) + 1) < 2;

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSDictionary *)self->_dictionary isEqualToDictionary:equalCopy->_dictionary];
  }

  return v5;
}

@end