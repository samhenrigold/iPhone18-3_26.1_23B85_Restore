@interface BCSOpenHours
- (BCSOpenHours)initWithCoder:(id)coder;
- (BCSOpenHours)initWithHoursMessages:(id)messages timeZone:(id)zone;
- (BCSOpenHours)initWithHoursPeriodMessage:(id)message timeZone:(id)zone;
- (BCSOpenHours)initWithJSONObj:(id)obj timeZone:(id)zone;
- (BCSOpenHours)initWithOpenHours:(id)hours timeZone:(id)zone;
- (BCSOpenHours)initWithTimeRanges:(id)ranges timeZone:(id)zone;
- (BOOL)_validTimeRange:(void *)range;
- (BOOL)isOpenAtDate:(id)date;
- (char)_weekdayOrdinalFromDate:(void *)date timeZone:(void *)zone;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dateWhenOpenNextAfterDate:(id)date;
- (id)debugDescription;
- (uint64_t)_totalSecondsInLocalTimeFromPreviousMidnightWithDate:(void *)date timeZone:(void *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BCSOpenHours

- (BCSOpenHours)initWithTimeRanges:(id)ranges timeZone:(id)zone
{
  rangesCopy = ranges;
  zoneCopy = zone;
  v14.receiver = self;
  v14.super_class = BCSOpenHours;
  v8 = [(BCSOpenHours *)&v14 init];
  if (v8)
  {
    v9 = [rangesCopy copy];
    timeRanges = v8->_timeRanges;
    v8->_timeRanges = v9;

    v11 = [MEMORY[0x277CBEBB0] timeZoneWithName:zoneCopy];
    localTimeZone = v8->_localTimeZone;
    v8->_localTimeZone = v11;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  timeRanges = self->_timeRanges;
  coderCopy = coder;
  [coderCopy encodeObject:timeRanges forKey:@"kBCSOpenHoursCoderTimeRangeKey"];
  [coderCopy encodeObject:self->_localTimeZone forKey:@"kBCSOpenHoursCodertimeZoneKey"];
}

- (BCSOpenHours)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v4 setWithObjects:{v6, v7, v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"kBCSOpenHoursCoderTimeRangeKey"];

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kBCSOpenHoursCodertimeZoneKey"];

  name = [v11 name];
  v13 = [(BCSOpenHours *)self initWithTimeRanges:v10 timeZone:name];

  return v13;
}

- (BOOL)isOpenAtDate:(id)date
{
  dateCopy = date;
  v40 = *MEMORY[0x277D85DE8];
  if (self)
  {
    localTimeZone = self->_localTimeZone;
    dateCopy2 = date;
    v7 = localTimeZone;
    if ([(NSDictionary *)self->_timeRanges count])
    {
      v8 = [BCSOpenHours _weekdayOrdinalFromDate:dateCopy2 timeZone:v7];
      timeRanges = self->_timeRanges;
      v10 = MEMORY[0x277CCABB0];
      v11 = timeRanges;
      v29 = v8;
      v12 = [v10 numberWithUnsignedInteger:v8];
      v13 = [(NSDictionary *)v11 objectForKey:v12];

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      obj = v13;
      v14 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v14)
      {
        v15 = v14;
        v32 = *v34;
        v30 = dateCopy;
        while (2)
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v34 != v32)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v33 + 1) + 8 * i);
            v18 = [BCSOpenHours _validTimeRange:v17];
            if (!v18)
            {
              v19 = ABSLogCommon();
              dateCopy = v30;
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                *buf = 134217984;
                v38 = v29;
                _os_log_error_impl(&dword_242072000, v19, OS_LOG_TYPE_ERROR, "Does not have valid time range for weekdayIndex:%lu", buf, 0xCu);
              }

              goto LABEL_21;
            }

            v19 = [v17 objectForKey:@"from"];
            v20 = [v17 objectForKey:@"to"];
            v21 = dateCopy2;
            v22 = v7;
            v23 = [BCSOpenHours _totalSecondsInLocalTimeFromPreviousMidnightWithDate:dateCopy2 timeZone:v7];
            integerValue = [v19 integerValue];
            integerValue2 = [v20 integerValue];

            if (v23 >= integerValue && v23 <= integerValue2)
            {
              dateCopy = v30;
              v7 = v22;
LABEL_21:

              goto LABEL_22;
            }

            v7 = v22;
            dateCopy2 = v21;
          }

          v15 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
          v18 = 0;
          dateCopy = v30;
          if (v15)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v18 = 0;
      }

LABEL_22:
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    dateCopy3 = date;
    v7 = 0;
    v18 = 0;
  }

  return v18;
}

- (char)_weekdayOrdinalFromDate:(void *)date timeZone:(void *)zone
{
  v3 = MEMORY[0x277CBEA80];
  zoneCopy = zone;
  dateCopy = date;
  currentCalendar = [v3 currentCalendar];
  [currentCalendar setTimeZone:zoneCopy];

  v7 = [currentCalendar components:512 fromDate:dateCopy];

  weekday = [v7 weekday];
  return (weekday - 1);
}

- (BOOL)_validTimeRange:(void *)range
{
  rangeCopy = range;
  null = [MEMORY[0x277CBEB68] null];

  v3 = 0;
  if (rangeCopy && null != rangeCopy)
  {
    allKeys = [rangeCopy allKeys];
    v3 = [allKeys count] == 2;
  }

  return v3;
}

- (uint64_t)_totalSecondsInLocalTimeFromPreviousMidnightWithDate:(void *)date timeZone:(void *)zone
{
  v3 = MEMORY[0x277CBEA80];
  zoneCopy = zone;
  dateCopy = date;
  currentCalendar = [v3 currentCalendar];
  [currentCalendar setTimeZone:zoneCopy];

  v7 = [currentCalendar components:96 fromDate:dateCopy];

  hour = [v7 hour];
  minute = [v7 minute];

  return 60 * (minute + 60 * hour);
}

- (id)dateWhenOpenNextAfterDate:(id)date
{
  dateCopy = date;
  v47 = *MEMORY[0x277D85DE8];
  if (self)
  {
    selfCopy = self;
    localTimeZone = self->_localTimeZone;
    dateCopy2 = date;
    v7 = localTimeZone;
    v37 = [BCSOpenHours _weekdayOrdinalFromDate:dateCopy2 timeZone:v7];
    v8 = [BCSOpenHours _totalSecondsInLocalTimeFromPreviousMidnightWithDate:dateCopy2 timeZone:selfCopy->_localTimeZone];
    if ([BCSOpenHours _validTimeRange:?])
    {
      v9 = 0;
      v10 = 0;
    }

    else
    {
      v33 = dateCopy2;
      v34 = dateCopy;
      v10 = 0;
      v35 = 0;
      v11 = 0;
      v36 = selfCopy;
      do
      {
        v12 = (&v37[v11] * 0x2492492492492493uLL) >> 64;
        v13 = -7 * ((v12 + (&v37[v11 - v12] >> 1)) >> 2);
        v14 = MEMORY[0x277CCABB0];
        v15 = selfCopy->_timeRanges;
        v16 = [v14 numberWithUnsignedInteger:&v37[v11 + v13]];
        v17 = [(NSDictionary *)v15 objectForKey:v16];

        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v18 = v17;
        v19 = [v18 countByEnumeratingWithState:&v38 objects:v46 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v39;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v39 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v38 + 1) + 8 * i);
              if ([BCSOpenHours _validTimeRange:v23])
              {
                v24 = [v23 objectForKey:@"from"];
                if (v8 < [v24 integerValue] || v11 != 0)
                {
                  v26 = v23;

                  v35 = v11;
                  v10 = v26;
                  goto LABEL_19;
                }
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v38 objects:v46 count:16];
          }

          while (v20);
        }

LABEL_19:

        selfCopy = v36;
        if ([BCSOpenHours _validTimeRange:v10])
        {
          break;
        }
      }

      while (v11++ < 7);
      v9 = 86400 * v35;
      dateCopy = v34;
      dateCopy2 = v33;
    }

    if ([BCSOpenHours _validTimeRange:v10])
    {
      v28 = [v10 objectForKey:@"from"];
      [dateCopy2 timeIntervalSince1970];
      v30 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{(v9 - v8 + -[NSObject integerValue](v28, "integerValue") + v29)}];
    }

    else
    {
      v28 = ABSLogCommon();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v43 = dateCopy2;
        v44 = 2048;
        v45 = v37;
        _os_log_error_impl(&dword_242072000, v28, OS_LOG_TYPE_ERROR, "Valid date not found for open next after date:%@ weekdayIndex:%lu", buf, 0x16u);
      }

      v30 = 0;
    }
  }

  else
  {
    dateCopy3 = date;
    v7 = 0;
    v30 = 0;
  }

  return v30;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    if (self)
    {
      v6 = self->_localTimeZone;
      v7 = [(NSTimeZone *)v6 copyWithZone:zone];
      v8 = v5[2];
      v5[2] = v7;

      timeRanges = self->_timeRanges;
    }

    else
    {
      v14 = [0 copyWithZone:zone];
      v15 = v5[2];
      v5[2] = v14;

      timeRanges = 0;
    }

    v10 = timeRanges;
    v11 = [(NSDictionary *)v10 copyWithZone:zone];
    v12 = v5[1];
    v5[1] = v11;
  }

  return v5;
}

- (id)debugDescription
{
  selfCopy2 = self;
  v3 = 0;
  v4 = &stru_28544C2A0;
  v33 = *MEMORY[0x277D85DE8];
  do
  {
    if (selfCopy2)
    {
      timeRanges = selfCopy2->_timeRanges;
    }

    else
    {
      timeRanges = 0;
    }

    v6 = MEMORY[0x277CCABB0];
    v7 = timeRanges;
    v8 = [v6 numberWithInt:v3];
    v9 = [(NSDictionary *)v7 objectForKey:v8];

    if (selfCopy2)
    {
      v10 = @"Invalid week index";
      if (v3 <= 6)
      {
        v10 = off_278D387D8[v3];
      }
    }

    else
    {
      v10 = 0;
    }

    v27 = v3;
    v11 = MEMORY[0x277CCACA8];
    v12 = v10;
    v13 = [v11 stringWithFormat:@"%@:\n", v12];
    v14 = [(__CFString *)v4 stringByAppendingString:v13];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v15 = v9;
    v16 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v29;
      v4 = v14;
      do
      {
        v19 = 0;
        v20 = v4;
        do
        {
          if (*v29 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v21 = *(*(&v28 + 1) + 8 * v19);
          v22 = [v21 objectForKey:@"from"];
          v23 = [v21 objectForKey:@"to"];
          v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"\t%d - %d\n", objc_msgSend(v22, "intValue"), objc_msgSend(v23, "intValue")];
          v4 = [(__CFString *)v20 stringByAppendingString:v24];

          ++v19;
          v20 = v4;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v17);
    }

    else
    {
      v4 = v14;
    }

    v3 = (v27 + 1);
    selfCopy2 = self;
  }

  while (v27 != 6);

  return v4;
}

- (BCSOpenHours)initWithHoursPeriodMessage:(id)message timeZone:(id)zone
{
  zoneCopy = zone;
  hours = [message hours];
  v8 = [(BCSOpenHours *)self initWithHoursMessages:hours timeZone:zoneCopy];

  return v8;
}

- (BCSOpenHours)initWithHoursMessages:(id)messages timeZone:(id)zone
{
  selfCopy = self;
  v43 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  zoneCopy = zone;
  v27 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = messagesCopy;
  v28 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
  if (v28)
  {
    v26 = *v36;
    do
    {
      v6 = 0;
      do
      {
        if (*v36 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v30 = v6;
        v7 = *(*(&v35 + 1) + 8 * v6);
        timeRanges = [v7 timeRanges];
        v29 = *[v7 days];
        v9 = objc_opt_new();
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v10 = timeRanges;
        v11 = [v10 countByEnumeratingWithState:&v31 objects:v41 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v32;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v32 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v31 + 1) + 8 * i);
              if ([v15 hasAllDay] && objc_msgSend(v15, "allDay"))
              {
                v16 = [MEMORY[0x277CCABB0] numberWithInteger:86400];
                v17 = &unk_2854606F0;
              }

              else
              {
                v17 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v15, "from")}];
                v16 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v15, "to")}];
              }

              v39[0] = @"from";
              v39[1] = @"to";
              v40[0] = v17;
              v40[1] = v16;
              v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
              [v9 addObject:v18];
            }

            v12 = [v10 countByEnumeratingWithState:&v31 objects:v41 count:16];
          }

          while (v12);
        }

        v19 = [MEMORY[0x277CCABB0] numberWithInteger:v29 - 1];
        [v27 setObject:v9 forKey:v19];

        v6 = v30 + 1;
      }

      while (v30 + 1 != v28);
      v28 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
    }

    while (v28);
  }

  v20 = [v27 copy];
  v21 = [(BCSOpenHours *)selfCopy initWithTimeRanges:v20 timeZone:zoneCopy];

  return v21;
}

- (BCSOpenHours)initWithJSONObj:(id)obj timeZone:(id)zone
{
  objCopy = obj;
  zoneCopy = zone;
  if ([objCopy length])
  {
    v8 = [objCopy dataUsingEncoding:4];
    v12 = 0;
    v9 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v8 options:1 error:&v12];
    if (v12)
    {
      selfCopy = 0;
    }

    else
    {
      self = [(BCSOpenHours *)self initWithOpenHours:v9 timeZone:zoneCopy];
      selfCopy = self;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BCSOpenHours)initWithOpenHours:(id)hours timeZone:(id)zone
{
  v54 = *MEMORY[0x277D85DE8];
  hoursCopy = hours;
  zoneCopy = zone;
  v33 = objc_opt_new();
  v31 = hoursCopy;
  firstObject = [hoursCopy firstObject];
  v7 = [firstObject objectForKeyedSubscript:@"hours"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v9 = ABSLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_242072000, v9, OS_LOG_TYPE_ERROR, "Open Hours dictionary doesn't have array at first level", buf, 2u);
    }
  }

  [firstObject objectForKeyedSubscript:{@"hours", firstObject}];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v48 = 0u;
  v36 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v36)
  {
    v34 = *v46;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v46 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v45 + 1) + 8 * i);
        v12 = [v11 objectForKeyedSubscript:@"day"];
        firstObject2 = [v12 firstObject];
        v14 = [(BCSOpenHours *)self _weekdayIndexFromWeekdayString:firstObject2];
        if (v14 != -1)
        {
          v37 = v14;
          v38 = firstObject2;
          v39 = v12;
          v40 = i;
          v15 = objc_opt_new();
          v16 = [v11 objectForKeyedSubscript:@"timeRange"];
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v17 = [v16 countByEnumeratingWithState:&v41 objects:v52 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v42;
            do
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v42 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v41 + 1) + 8 * j);
                v22 = [v21 objectForKeyedSubscript:@"from"];
                v23 = [v21 objectForKeyedSubscript:@"to"];
                v50[0] = @"from";
                v50[1] = @"to";
                v51[0] = v22;
                v51[1] = v23;
                v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:2];
                [v15 addObject:v24];
              }

              v18 = [v16 countByEnumeratingWithState:&v41 objects:v52 count:16];
            }

            while (v18);
          }

          v25 = [MEMORY[0x277CCABB0] numberWithInteger:v37];
          [v33 setObject:v15 forKey:v25];

          v12 = v39;
          i = v40;
          firstObject2 = v38;
        }
      }

      v36 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v36);
  }

  v26 = [v33 copy];
  v27 = [(BCSOpenHours *)self initWithTimeRanges:v26 timeZone:zoneCopy];

  return v27;
}

@end