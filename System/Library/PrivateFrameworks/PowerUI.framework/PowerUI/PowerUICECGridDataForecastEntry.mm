@interface PowerUICECGridDataForecastEntry
- (BOOL)isEqual:(id)equal;
- (PowerUICECGridDataForecastEntry)initWithDate:(id)date forecastValue:(id)value;
- (id)description;
@end

@implementation PowerUICECGridDataForecastEntry

- (PowerUICECGridDataForecastEntry)initWithDate:(id)date forecastValue:(id)value
{
  dateCopy = date;
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = PowerUICECGridDataForecastEntry;
  v9 = [(PowerUICECGridDataForecastEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_forecastDate, date);
    objc_storeStrong(&v10->_forecastValue, value);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    forecastDate = self->_forecastDate;
    forecastDate = [(PowerUICECGridDataForecastEntry *)equalCopy forecastDate];
    if ([(NSDate *)forecastDate isEqualToDate:forecastDate])
    {
      forecastValue = self->_forecastValue;
      forecastValue = [(PowerUICECGridDataForecastEntry *)v5 forecastValue];
      v10 = [(NSNumber *)forecastValue isEqualToNumber:forecastValue];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)description
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v10[0] = @"forecastDate";
  forecastDate = [(PowerUICECGridDataForecastEntry *)self forecastDate];
  v10[1] = @"forecastValue";
  v11[0] = forecastDate;
  forecastValue = [(PowerUICECGridDataForecastEntry *)self forecastValue];
  v11[1] = forecastValue;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v8 = [v3 stringWithFormat:@"<%@:%p %@>", v4, self, v7];

  return v8;
}

@end