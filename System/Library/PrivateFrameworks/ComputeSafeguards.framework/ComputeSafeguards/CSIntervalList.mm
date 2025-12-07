@interface CSIntervalList
- (CSIntervalList)initWithIntervals:(id)intervals;
- (double)durationInSeconds;
- (double)sum;
- (double)timeWeightedSum;
- (id)firstInterval;
- (id)intersectWithIntervalList:(id)list;
- (id)lastInterval;
@end

@implementation CSIntervalList

- (CSIntervalList)initWithIntervals:(id)intervals
{
  v20 = *MEMORY[0x277D85DE8];
  intervalsCopy = intervals;
  v18.receiver = self;
  v18.super_class = CSIntervalList;
  v5 = [(CSIntervalList *)&v18 init];
  if (v5)
  {
    array = [MEMORY[0x277CBEB18] array];
    intervalArray = v5->_intervalArray;
    v5->_intervalArray = array;

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = intervalsCopy;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [(NSMutableArray *)v5->_intervalArray addObject:*(*(&v14 + 1) + 8 * v12++), v14];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v10);
    }
  }

  return v5;
}

- (id)lastInterval
{
  lastObject = [(NSMutableArray *)self->_intervalArray count];
  if (lastObject)
  {
    lastObject = [(NSMutableArray *)self->_intervalArray lastObject];
  }

  return lastObject;
}

- (id)firstInterval
{
  firstObject = [(NSMutableArray *)self->_intervalArray count];
  if (firstObject)
  {
    firstObject = [(NSMutableArray *)self->_intervalArray firstObject];
  }

  return firstObject;
}

- (id)intersectWithIntervalList:(id)list
{
  listCopy = list;
  v5 = [CSIntervalList alloc];
  v25 = [(CSIntervalList *)v5 initWithIntervals:MEMORY[0x277CBEBF8]];
  if ([(CSIntervalList *)self count])
  {
    v6 = 0;
    v7 = 0;
    v26 = listCopy;
    do
    {
      if (v7 >= [listCopy count])
      {
        break;
      }

      v8 = [(NSMutableArray *)self->_intervalArray objectAtIndexedSubscript:v6];
      intervalArray = [listCopy intervalArray];
      v10 = [intervalArray objectAtIndexedSubscript:v7];

      startTime = [v8 startTime];
      startTime2 = [v10 startTime];
      v13 = [startTime laterDate:startTime2];

      endTime = [v8 endTime];
      endTime2 = [v10 endTime];
      v16 = [endTime earlierDate:endTime2];

      selfCopy = self;
      if ([v13 compare:v16] == -1)
      {
        [v8 value];
        v19 = [[CSInterval alloc] initWithStartTime:v13 endTime:v16 value:v18];
        [(CSIntervalList *)v25 addInterval:v19];
      }

      endTime3 = [v8 endTime];
      endTime4 = [v10 endTime];
      v22 = [endTime3 compare:endTime4];

      if (v22 == -1)
      {
        ++v6;
      }

      else
      {
        ++v7;
      }

      v23 = [(CSIntervalList *)selfCopy count];
      self = selfCopy;
      listCopy = v26;
    }

    while (v6 < v23);
  }

  return v25;
}

- (double)sum
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_intervalArray;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v10 + 1) + 8 * i) value];
        v6 = v6 + v8;
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (double)timeWeightedSum
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = self->_intervalArray;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        endTime = [v8 endTime];
        startTime = [v8 startTime];
        [endTime timeIntervalSinceDate:startTime];
        v12 = v11;

        if (v12 > 0.0)
        {
          [v8 value];
          v6 = v6 + v13 * v12;
        }
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (double)durationInSeconds
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = self->_intervalArray;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        endTime = [v8 endTime];
        startTime = [v8 startTime];
        [endTime timeIntervalSinceDate:startTime];
        v12 = v11;

        v6 = v6 + v12;
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

@end