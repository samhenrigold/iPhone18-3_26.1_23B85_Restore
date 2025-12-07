@interface POXSDateDefinition
- (id)stringFromValue:(id)value;
- (id)valueFromString:(id)string;
@end

@implementation POXSDateDefinition

- (id)valueFromString:(id)string
{
  v18 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if (valueFromString__onceToken_0 != -1)
  {
    [POXSDateDefinition valueFromString:];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = valueFromString__dateFormatters;
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

uint64_t __38__POXSDateDefinition_valueFromString___block_invoke()
{
  v0 = +[POXSDateFormatterFactory newDateFormatters];
  v1 = valueFromString__dateFormatters;
  valueFromString__dateFormatters = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)stringFromValue:(id)value
{
  v3 = stringFromValue__onceToken;
  valueCopy = value;
  if (v3 != -1)
  {
    [POXSDateDefinition stringFromValue:];
  }

  calendar = [stringFromValue__dateFormatter calendar];
  v6 = [calendar dateFromComponents:valueCopy];

  v7 = [stringFromValue__dateFormatter stringFromDate:v6];

  return v7;
}

uint64_t __38__POXSDateDefinition_stringFromValue___block_invoke()
{
  v0 = +[POXSDateFormatterFactory newDateFormatter];
  v1 = stringFromValue__dateFormatter;
  stringFromValue__dateFormatter = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end