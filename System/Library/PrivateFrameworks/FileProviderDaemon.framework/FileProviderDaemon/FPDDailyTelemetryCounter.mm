@interface FPDDailyTelemetryCounter
- (BOOL)isEqual:(id)equal;
- (FPDDailyTelemetryCounter)init;
- (FPDDailyTelemetryCounter)initWithData:(id)data;
- (id)archive;
- (id)dateToKey:(id)key;
- (int)dailyValue;
- (int)getValueAt:(id)at;
- (void)_garbageCollect;
- (void)addNow:(int)now;
- (void)addValue:(int)value at:(id)at;
- (void)replaceValue:(int)value at:(id)at;
@end

@implementation FPDDailyTelemetryCounter

- (FPDDailyTelemetryCounter)initWithData:(id)data
{
  v29 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v27.receiver = self;
  v27.super_class = FPDDailyTelemetryCounter;
  v5 = [(FPDDailyTelemetryCounter *)&v27 init];
  if (!v5)
  {
    goto LABEL_16;
  }

  if (!dataCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v13 = objc_opt_new();
    goto LABEL_15;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = dataCopy;
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = v7;
  v9 = *v24;
  while (2)
  {
    v10 = 0;
    do
    {
      if (*v24 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v23 + 1) + 8 * v10);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v17 = objc_opt_new();
        hourlyValues = v5->_hourlyValues;
        v5->_hourlyValues = v17;

        v19 = v5;
LABEL_20:

        goto LABEL_17;
      }

      v12 = [v6 objectForKeyedSubscript:{v11, v23}];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v20 = objc_opt_new();
        v21 = v5->_hourlyValues;
        v5->_hourlyValues = v20;

        v22 = v5;
        goto LABEL_20;
      }

      ++v10;
    }

    while (v8 != v10);
    v8 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_13:

  v13 = [v6 mutableCopy];
LABEL_15:
  v14 = v5->_hourlyValues;
  v5->_hourlyValues = v13;

LABEL_16:
  v15 = v5;
LABEL_17:

  return v5;
}

- (FPDDailyTelemetryCounter)init
{
  v6.receiver = self;
  v6.super_class = FPDDailyTelemetryCounter;
  v2 = [(FPDDailyTelemetryCounter *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    hourlyValues = v2->_hourlyValues;
    v2->_hourlyValues = v3;
  }

  return v2;
}

- (void)_garbageCollect
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-90000.0];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allKeys = [(NSMutableDictionary *)self->_hourlyValues allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if ([v9 compare:v3] == -1)
        {
          [(NSMutableDictionary *)self->_hourlyValues setObject:0 forKeyedSubscript:v9];
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (id)dateToKey:(id)key
{
  v19 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allKeys = [(NSMutableDictionary *)self->_hourlyValues allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        [keyCopy timeIntervalSinceDate:v10];
        if (fabs(v11) < 3600)
        {
          v12 = v10;

          goto LABEL_11;
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = keyCopy;
LABEL_11:

  return v12;
}

- (int)getValueAt:(id)at
{
  atCopy = at;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(FPDDailyTelemetryCounter *)selfCopy dateToKey:atCopy];
  v7 = [(NSMutableDictionary *)selfCopy->_hourlyValues objectForKey:v6];
  v8 = v7;
  if (v7)
  {
    intValue = [v7 intValue];
  }

  else
  {
    intValue = 0;
  }

  objc_sync_exit(selfCopy);
  return intValue;
}

- (void)addValue:(int)value at:(id)at
{
  v4 = *&value;
  atCopy = at;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(FPDDailyTelemetryCounter *)selfCopy _garbageCollect];
  v7 = [(FPDDailyTelemetryCounter *)selfCopy dateToKey:atCopy];
  v8 = [(NSMutableDictionary *)selfCopy->_hourlyValues objectForKey:v7];
  v9 = v8;
  if (v8)
  {
    [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v8, "intValue") + v4}];
  }

  else
  {
    [MEMORY[0x1E696AD98] numberWithInt:v4];
  }
  v10 = ;
  [(NSMutableDictionary *)selfCopy->_hourlyValues setObject:v10 forKeyedSubscript:v7];

  objc_sync_exit(selfCopy);
}

- (void)replaceValue:(int)value at:(id)at
{
  v4 = *&value;
  atCopy = at;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(FPDDailyTelemetryCounter *)selfCopy _garbageCollect];
  v7 = [(FPDDailyTelemetryCounter *)selfCopy dateToKey:atCopy];
  v8 = [MEMORY[0x1E696AD98] numberWithInt:v4];
  [(NSMutableDictionary *)selfCopy->_hourlyValues setObject:v8 forKeyedSubscript:v7];

  objc_sync_exit(selfCopy);
}

- (void)addNow:(int)now
{
  v3 = *&now;
  v5 = [MEMORY[0x1E695DF00] now];
  [(FPDDailyTelemetryCounter *)self addValue:v3 at:v5];
}

- (int)dailyValue
{
  v16 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(FPDDailyTelemetryCounter *)selfCopy _garbageCollect];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = selfCopy->_hourlyValues;
  v4 = 0;
  v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMutableDictionary *)selfCopy->_hourlyValues objectForKeyedSubscript:*(*(&v11 + 1) + 8 * i), v11];
        intValue = [v8 intValue];

        v4 += intValue;
      }

      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  objc_sync_exit(selfCopy);
  return v4;
}

- (id)archive
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableDictionary *)selfCopy->_hourlyValues copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v8 = 0;
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    hourlyValues = [(FPDDailyTelemetryCounter *)self hourlyValues];
    hourlyValues2 = [v5 hourlyValues];

    LOBYTE(v5) = [hourlyValues isEqualToDictionary:hourlyValues2];
    if (v5)
    {
      v8 = 1;
    }
  }

  return v8;
}

@end