@interface LifetimeServoAFLUT
- (LifetimeServoAFLUT)initWithAFTableColumns:(id)columns;
- (float)accelerationFactor:(int)factor voltage:(int)voltage;
@end

@implementation LifetimeServoAFLUT

- (LifetimeServoAFLUT)initWithAFTableColumns:(id)columns
{
  v17.receiver = self;
  v17.super_class = LifetimeServoAFLUT;
  v4 = [(LifetimeServoAFLUT *)&v17 init];
  if (v4)
  {
    v5 = [columns count];
    v4->_columnCount = v5;
    if (v5 <= 26)
    {
      if (v5 >= 1)
      {
        v7 = 0;
        do
        {
          v8 = [columns objectAtIndex:v7];
          v4->_afLUTColumns[v7++] = -[LifetimeServoAFLUTColumn initWithLUTColumn:voltage:]([LifetimeServoAFLUTColumn alloc], "initWithLUTColumn:voltage:", [v8 objectForKey:@"afColumn"], objc_msgSend(objc_msgSend(v8, "objectForKey:", @"voltage"), "intValue"));
          columnCount = v4->_columnCount;
        }

        while (v7 < columnCount);
        if (columnCount >= 2)
        {
          v10 = 0;
          v11 = &v4->_afLUTColumns[1];
          do
          {
            voltage = [*(v11 - 1) voltage];
            if (voltage >= [*v11 voltage])
            {
              v13 = qword_1000AB718;
              if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
              {
                sub_1000533D8(&v15, v16, v13);
              }
            }

            ++v10;
            ++v11;
          }

          while (v10 < v4->_columnCount - 1);
        }
      }

      v4->_minVoltage = [(LifetimeServoAFLUTColumn *)v4->_afLUTColumns[0] voltage];
      v4->_maxVoltage = [(LifetimeServoAFLUTColumn *)v4->_afLUTColumns[v4->_columnCount - 1] voltage];
    }

    else
    {
      v6 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100053418(v6);
      }

      return 0;
    }
  }

  return v4;
}

- (float)accelerationFactor:(int)factor voltage:(int)voltage
{
  v4 = *&factor;
  minVoltage = self->_minVoltage;
  if (minVoltage <= voltage)
  {
    if (self->_maxVoltage >= voltage)
    {
      minVoltage = voltage;
    }

    else
    {
      minVoltage = self->_maxVoltage;
    }
  }

  afLUTColumns = self->_afLUTColumns;
  if (self->_columnCount < 2)
  {
    LODWORD(v9) = 1;
  }

  else
  {
    v8 = &self->_afLUTColumns[1];
    v9 = 1;
    do
    {
      if (minVoltage <= [*v8 voltage])
      {
        break;
      }

      ++v9;
      ++v8;
    }

    while (v9 < self->_columnCount);
  }

  v10 = &afLUTColumns[v9];
  voltage = [(LifetimeServoAFLUTColumn *)*(v10 - 1) voltage];
  voltage2 = [(LifetimeServoAFLUTColumn *)afLUTColumns[v9] voltage];
  [(LifetimeServoAFLUTColumn *)*(v10 - 1) accelerationFactor:v4];
  v14 = v13;
  [(LifetimeServoAFLUTColumn *)afLUTColumns[v9] accelerationFactor:v4];
  v16 = 0.0;
  if (voltage2 != voltage)
  {
    return ((v14 * (voltage2 - minVoltage)) + (v15 * (minVoltage - voltage))) / (voltage2 - voltage);
  }

  return v16;
}

@end