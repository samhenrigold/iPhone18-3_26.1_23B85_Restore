@interface NSDateComponents(CMSCoding)
+ (id)instanceFromCMSCoded:()CMSCoding;
- (id)cmsCoded;
@end

@implementation NSDateComponents(CMSCoding)

+ (id)instanceFromCMSCoded:()CMSCoding
{
  v3 = a3;
  isKindOfClass = objc_alloc_init(MEMORY[0x277CBEAB8]);
  v5 = isKindOfClass;
  if (isKindOfClass)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_16;
      }

      v12 = v3;
      [v5 setEra:{objc_msgSend(v12, "cmsIntegerForKey:withDefault:", @"era", objc_msgSend(v5, "era"))}];
      [v5 setYear:{objc_msgSend(v12, "cmsIntegerForKey:withDefault:", @"year", objc_msgSend(v5, "year"))}];
      [v5 setMonth:{objc_msgSend(v12, "cmsIntegerForKey:withDefault:", @"month", objc_msgSend(v5, "month"))}];
      [v5 setDay:{objc_msgSend(v12, "cmsIntegerForKey:withDefault:", @"day", objc_msgSend(v5, "day"))}];
      [v5 setHour:{objc_msgSend(v12, "cmsIntegerForKey:withDefault:", @"hour", objc_msgSend(v5, "hour"))}];
      [v5 setMinute:{objc_msgSend(v12, "cmsIntegerForKey:withDefault:", @"minute", objc_msgSend(v5, "minute"))}];
      [v5 setSecond:{objc_msgSend(v12, "cmsIntegerForKey:withDefault:", @"second", objc_msgSend(v5, "second"))}];
      v13 = MEMORY[0x277CBEBB0];
      v6 = [v12 cmsOptionalStringForKey:@"timeZone"];

      v8 = [v13 timeZoneWithName:v6];
      [v5 setTimeZone:v8];
      goto LABEL_15;
    }

    v6 = v3;
    v7 = cmsDateFormatter(v6);
    v8 = [v7 dateFromString:v6];

    if (v8)
    {
      v10 = cmsDateCalender(v9);
      [v10 components:2130174 fromDate:v8];
      v5 = v11 = v5;
    }

    else
    {
      v10 = [v6 componentsSeparatedByString:@"-"];
      v14 = [v10 count];
      if (v14 != 1)
      {
        if (v14 != 2)
        {
          if (v14 != 3)
          {
LABEL_14:

LABEL_15:
            goto LABEL_16;
          }

          v15 = [v10 objectAtIndexedSubscript:2];
          [v5 setDay:{objc_msgSend(v15, "integerValue")}];
        }

        v16 = [v10 objectAtIndexedSubscript:1];
        [v5 setMonth:{objc_msgSend(v16, "integerValue")}];
      }

      v11 = [v10 objectAtIndexedSubscript:0];
      [v5 setYear:{objc_msgSend(v11, "integerValue")}];
    }

    goto LABEL_14;
  }

LABEL_16:
  v17 = cmsDateCalender(isKindOfClass);
  [v5 setCalendar:v17];

  return v5;
}

- (id)cmsCoded
{
  v25 = [self era];
  year = [self year];
  month = [self month];
  v29 = [self day];
  hour = [self hour];
  minute = [self minute];
  second = [self second];
  nanosecond = [self nanosecond];
  v4 = (2 * (v25 != 0x7FFFFFFFFFFFFFFFLL)) | (4 * (year != 0x7FFFFFFFFFFFFFFFLL)) | (8 * (month != 0x7FFFFFFFFFFFFFFFLL)) | (16 * (v29 != 0x7FFFFFFFFFFFFFFFLL)) | (32 * (hour != 0x7FFFFFFFFFFFFFFFLL)) | ((minute != 0x7FFFFFFFFFFFFFFFLL) << 6) | ((second != 0x7FFFFFFFFFFFFFFFLL) << 7);
  v5 = v4 | ((nanosecond != 0x7FFFFFFFFFFFFFFFLL) << 15);
  switch(v5)
  {
    case 0x1CuLL:
      [MEMORY[0x277CCACA8] stringWithFormat:@"%04d-%02d-%02d", year, month, v29];
      goto LABEL_7;
    case 0xCuLL:
      [MEMORY[0x277CCACA8] stringWithFormat:@"%04d-%02d", year, month, v24];
      goto LABEL_7;
    case 4uLL:
      [MEMORY[0x277CCACA8] stringWithFormat:@"%04d", year, v23, v24];
      v6 = LABEL_7:;
      goto LABEL_8;
  }

  if ((v4 & 0xFFFFFFFFFFFF7FFFLL) == 0xFC)
  {
    v8 = cmsDateFormatter(nanosecond);
    date = [self date];
    v6 = [v8 stringFromDate:date];

    goto LABEL_8;
  }

  v10 = nanosecond;
  v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:10];
  calendar = [self calendar];
  timeZone = [self timeZone];
  if (calendar)
  {
    calendarIdentifier = [calendar calendarIdentifier];
    [v6 setValue:calendarIdentifier forKey:@"calendarIdentifier"];
  }

  if (v25 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [v6 setValue:v14 forKey:@"era"];
  }

  if (year != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:year];
    [v6 setValue:v15 forKey:@"year"];
  }

  if (month != 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [v6 setValue:v16 forKey:@"month"];
  }

  if (v29 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [v6 setValue:v17 forKey:@"day"];
  }

  if (hour != 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [v6 setValue:v18 forKey:@"hour"];
  }

  if (minute != 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [v6 setValue:v19 forKey:@"minute"];
  }

  if (second == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_29;
    }

LABEL_32:
    v22 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
    [v6 setValue:v22 forKey:@"nanosecond"];

    if (timeZone)
    {
      goto LABEL_30;
    }

LABEL_33:
    [v6 setValue:@"UTC" forKey:@"timeZone"];
    goto LABEL_34;
  }

  v21 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  [v6 setValue:v21 forKey:@"second"];

  if ((v5 & 0x8000) != 0)
  {
    goto LABEL_32;
  }

LABEL_29:
  if (!timeZone)
  {
    goto LABEL_33;
  }

LABEL_30:
  name = [timeZone name];
  [v6 setValue:name forKey:@"timeZone"];

LABEL_34:
LABEL_8:

  return v6;
}

@end