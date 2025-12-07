@interface POXSDateTimeDefinition
- (id)stringFromValue:(id)value;
- (id)valueFromString:(id)string;
@end

@implementation POXSDateTimeDefinition

- (id)valueFromString:(id)string
{
  v18 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if (valueFromString__onceToken_1 != -1)
  {
    [POXSDateTimeDefinition valueFromString:];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = valueFromString__dateTimeFormatters;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 dateFromString:{stringCopy, v13}];
        if (v9)
        {
          v10 = v9;
          calendar = [v8 calendar];
          v5 = [calendar components:3178750 fromDate:v10];

          goto LABEL_13;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v5;
}

uint64_t __42__POXSDateTimeDefinition_valueFromString___block_invoke()
{
  v0 = +[POXSDateFormatterFactory newDateTimeFormatters];
  v1 = valueFromString__dateTimeFormatters;
  valueFromString__dateTimeFormatters = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)stringFromValue:(id)value
{
  valueCopy = value;
  timeZone = [valueCopy timeZone];
  v5 = [objc_alloc(MEMORY[0x277CBEBB0]) initWithName:@"UTC"];
  if ([timeZone isEqualToTimeZone:v5])
  {
    v6 = 2;
  }

  else
  {
    if (timeZone)
    {
      v7 = [POXSDateFormatterFactory newDateTimeFormatterWithTimeZoneStyle:1];
      [v7 setTimeZone:timeZone];
      goto LABEL_7;
    }

    v6 = 0;
  }

  v7 = [POXSDateFormatterFactory newDateTimeFormatterWithTimeZoneStyle:v6];
LABEL_7:
  calendar = [v7 calendar];
  v9 = [calendar dateFromComponents:valueCopy];

  v10 = [v7 stringFromDate:v9];

  return v10;
}

@end