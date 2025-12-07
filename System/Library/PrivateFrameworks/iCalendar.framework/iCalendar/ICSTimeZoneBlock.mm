@interface ICSTimeZoneBlock
- (BOOL)validate:(id *)validate;
- (ICSDate)dtstart;
- (NSArray)rrule;
- (NSArray)tzname;
- (id)computeTimeZoneChangeListFromDate:(id)date toDate:(id)toDate;
- (int64_t)compare:(id)compare;
- (int64_t)tzoffsetfrom;
- (int64_t)tzoffsetto;
- (void)setRrule:(id)rrule;
- (void)setTzname:(id)tzname;
- (void)setTzoffsetfrom:(int64_t)tzoffsetfrom;
- (void)setTzoffsetto:(int64_t)tzoffsetto;
@end

@implementation ICSTimeZoneBlock

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  dtstart = [(ICSTimeZoneBlock *)self dtstart];
  value = [dtstart value];
  dtstart2 = [compareCopy dtstart];

  value2 = [dtstart2 value];
  v9 = [value compare:value2];

  return v9;
}

- (BOOL)validate:(id *)validate
{
  v5 = [(ICSComponent *)self propertiesForName:@"DTSTART"];

  if (v5)
  {
    v6 = [(ICSComponent *)self propertiesForName:@"TZOFFSETTO"];

    if (v6)
    {
      v7 = [(ICSComponent *)self propertiesForName:@"TZOFFSETFROM"];

      if (v7)
      {
        v8 = [(ICSComponent *)self propertiesForName:@"RRULE"];
        if (!v8 || (v9 = v8, [(ICSComponent *)self propertiesForName:@"RDATE"], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, !v10))
        {
          v17.receiver = self;
          v17.super_class = ICSTimeZoneBlock;
          return [(ICSComponent *)&v17 validate:validate];
        }

        if (validate)
        {
          v11 = MEMORY[0x277CCA9B8];
          v12 = MEMORY[0x277CBEAC0];
          v13 = *MEMORY[0x277CCA450];
          v14 = @"RDATE and RRULE cannot both be set for VTIMEZONE.";
LABEL_15:
          v16 = [v12 dictionaryWithObject:v14 forKey:v13];
          *validate = [v11 errorWithDomain:@"com.apple.iCalendar" code:1000 userInfo:v16];
        }
      }

      else if (validate)
      {
        v11 = MEMORY[0x277CCA9B8];
        v12 = MEMORY[0x277CBEAC0];
        v13 = *MEMORY[0x277CCA450];
        v14 = @"TZOFFSETFROM is required for VTIMEZONE.";
        goto LABEL_15;
      }
    }

    else if (validate)
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = MEMORY[0x277CBEAC0];
      v13 = *MEMORY[0x277CCA450];
      v14 = @"TZOFFSETTO is required for VTIMEZONE.";
      goto LABEL_15;
    }
  }

  else if (validate)
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = MEMORY[0x277CBEAC0];
    v13 = *MEMORY[0x277CCA450];
    v14 = @"DTSTART is required for VTIMEZONE.";
    goto LABEL_15;
  }

  return 0;
}

- (ICSDate)dtstart
{
  v2 = [(ICSComponent *)self propertiesForName:@"DTSTART"];
  lastObject = [v2 lastObject];

  return lastObject;
}

- (void)setRrule:(id)rrule
{
  v19 = *MEMORY[0x277D85DE8];
  rruleCopy = rrule;
  array = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = rruleCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = [ICSProperty alloc];
        v13 = [(ICSProperty *)v12 initWithValue:v11 type:5029, v14];
        [array addObject:v13];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [(ICSComponent *)self setProperties:array forName:@"RRULE"];
}

- (NSArray)rrule
{
  v16 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v4 = [(ICSComponent *)self propertiesForName:@"RRULE"];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        value = [*(*(&v11 + 1) + 8 * i) value];
        [array addObject:value];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (NSArray)tzname
{
  v16 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v4 = [(ICSComponent *)self propertiesForName:@"TZNAME"];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        value = [*(*(&v11 + 1) + 8 * i) value];
        [array addObject:value];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (void)setTzname:(id)tzname
{
  v19 = *MEMORY[0x277D85DE8];
  tznameCopy = tzname;
  array = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = tznameCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = [ICSProperty alloc];
        v13 = [(ICSProperty *)v12 initWithValue:v11 type:5007, v14];
        [array addObject:v13];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [(ICSComponent *)self setProperties:array forName:@"TZNAME"];
}

- (int64_t)tzoffsetfrom
{
  v2 = [(ICSComponent *)self propertiesForName:@"TZOFFSETFROM"];
  lastObject = [v2 lastObject];
  value = [lastObject value];
  integerValue = [value integerValue];

  return integerValue;
}

- (void)setTzoffsetfrom:(int64_t)tzoffsetfrom
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:tzoffsetfrom];
  [(ICSComponent *)self setPropertyValue:v4 type:5018 forName:@"TZOFFSETFROM"];
}

- (int64_t)tzoffsetto
{
  v2 = [(ICSComponent *)self propertiesForName:@"TZOFFSETTO"];
  lastObject = [v2 lastObject];
  value = [lastObject value];
  integerValue = [value integerValue];

  return integerValue;
}

- (void)setTzoffsetto:(int64_t)tzoffsetto
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:tzoffsetto];
  [(ICSComponent *)self setPropertyValue:v4 type:5018 forName:@"TZOFFSETTO"];
}

- (id)computeTimeZoneChangeListFromDate:(id)date toDate:(id)toDate
{
  v68 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  toDateCopy = toDate;
  array = [MEMORY[0x277CBEB18] array];
  dtstart = [(ICSTimeZoneBlock *)self dtstart];
  value = [dtstart value];

  tzoffsetfrom = [(ICSTimeZoneBlock *)self tzoffsetfrom];
  tzoffsetto = [(ICSTimeZoneBlock *)self tzoffsetto];
  v11 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:tzoffsetfrom];
  v12 = objc_alloc(MEMORY[0x277CBEA80]);
  v48 = [v12 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v45 = v11;
  [v48 setTimeZone:v11];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  selfCopy = self;
  obj = [(ICSTimeZoneBlock *)self rrule];
  v46 = value;
  v47 = [obj countByEnumeratingWithState:&v61 objects:v67 count:16];
  if (v47)
  {
    v44 = *v62;
    do
    {
      v13 = 0;
      do
      {
        if (*v62 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v50 = v13;
        v14 = [*(*(&v61 + 1) + 8 * v13) occurrencesForStartDate:value fromDate:dateCopy toDate:toDateCopy inTimeZone:v45];
        components = [dateCopy components];
        v16 = [v48 dateFromComponents:components];

        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v17 = v14;
        v18 = [v17 countByEnumeratingWithState:&v57 objects:v66 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v58;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v58 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v57 + 1) + 8 * i);
              if ([v16 compare:v22] == -1)
              {
                v23 = [ICSTimeZoneChange alloc];
                [v22 timeIntervalSinceReferenceDate];
                v24 = [(ICSTimeZoneChange *)v23 initWithTimeInterval:tzoffsetto tzOffsetTo:?];
                [array addObject:v24];
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v57 objects:v66 count:16];
          }

          while (v19);
        }

        v13 = v50 + 1;
        value = v46;
      }

      while (v50 + 1 != v47);
      v47 = [obj countByEnumeratingWithState:&v61 objects:v67 count:16];
    }

    while (v47);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  rdate = [(ICSTimeZoneBlock *)selfCopy rdate];
  v25 = [rdate countByEnumeratingWithState:&v53 objects:v65 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v54;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v54 != v27)
        {
          objc_enumerationMutation(rdate);
        }

        v29 = *(*(&v53 + 1) + 8 * j);
        value2 = [v29 value];
        if ([dateCopy compare:value2] == -1)
        {
          value3 = [v29 value];
          v32 = [toDateCopy compare:value3];

          if (v32 == -1)
          {
            continue;
          }

          value4 = [v29 value];
          components2 = [value4 components];
          value2 = [v48 dateFromComponents:components2];

          v35 = [ICSTimeZoneChange alloc];
          [value2 timeIntervalSinceReferenceDate];
          v36 = [(ICSTimeZoneChange *)v35 initWithTimeInterval:tzoffsetto tzOffsetTo:?];
          [array addObject:v36];
        }
      }

      v26 = [rdate countByEnumeratingWithState:&v53 objects:v65 count:16];
    }

    while (v26);
  }

  if (![array count] && objc_msgSend(dateCopy, "compare:", v46) == -1 && objc_msgSend(toDateCopy, "compare:", v46) != -1)
  {
    components3 = [v46 components];
    v38 = [v48 dateFromComponents:components3];

    v39 = [ICSTimeZoneChange alloc];
    [v38 timeIntervalSinceReferenceDate];
    v40 = [(ICSTimeZoneChange *)v39 initWithTimeInterval:tzoffsetto tzOffsetTo:?];
    [array addObject:v40];
  }

  return array;
}

@end