@interface NSDate
- ($201E9A47BE70A2B12CCA2F48B75AA2F7)tsu_DOSTime;
- (BOOL)p_localeUses24HourTimeCycle;
- (BOOL)tsu_isEqualToDate:(id)date;
- (BOOL)tsu_isEqualToFileModificationDateAccountingForTruncation:(id)truncation;
- (id)dateFormatterFromTemplate12Hour:(id)hour template24Hour:(id)template24Hour withDateFormatter:(id)formatter;
- (id)p_rule1To23HoursAgo:(int64_t)ago withDateFormatter:(id)formatter lowercase:(BOOL)lowercase;
- (id)p_rule1To59MinutesAgo:(int64_t)ago withDateFormatter:(id)formatter lowercase:(BOOL)lowercase;
- (id)p_ruleForOverAWeekAgoForDate:(id)date withDateFormatter:(id)formatter;
- (id)p_ruleForOverAYearAgoForDate:(id)date withDateFormatter:(id)formatter;
- (id)p_ruleForUpToSevenDaysAgoAndNotYesterdayForDate:(id)date withDateFormatter:(id)formatter;
- (id)p_ruleForYesterday:(id)yesterday withDateFormatter:(id)formatter lowercase:(BOOL)lowercase;
- (id)p_stringWithString:(id)string lowercase:(BOOL)lowercase dateFormatter:(id)formatter;
- (id)tsu_fullFormattedDate;
- (id)tsu_initWithDOSTime:(id)time;
- (id)tsu_relativeAnnotationStringForEarlierDate:(id)date withDateFormatter:(id)formatter shortAsPossible:(BOOL)possible lowercaseIfNeeded:(BOOL)needed;
- (id)tsu_shortFormattedDate;
@end

@implementation NSDate

- (id)tsu_initWithDOSTime:(id)time
{
  v4 = 0;
  memset(&v9.tm_wday, 0, 32);
  v9.tm_isdst = -1;
  v9.tm_sec = (*&time >> 15) & 0x3E;
  v9.tm_min = (*&time >> 21) & 0x3F;
  v9.tm_hour = *&time >> 27;
  v9.tm_mday = time.var0 & 0x1F;
  v5 = vand_s8(vshl_u32(vdup_n_s32(*&time), 0xFFFFFFF7FFFFFFFBLL), 0x7F0000000FLL);
  *&v9.tm_mon = vadd_s32(v5, 0x50FFFFFFFFLL);
  v7 = (v5.i32[0] - 13) < 0xFFFFFFF4 || *&time >> 30 == 3 || (time.var0 & 0x1F) == 0;
  if (!v7 && ((*&time >> 21) & 0x3F) <= 0x3B && ((*&time >> 15) & 0x3E) <= 0x3B)
  {
    v4 = [(NSDate *)self initWithTimeIntervalSince1970:mktime(&v9)];
  }

  return v4;
}

- ($201E9A47BE70A2B12CCA2F48B75AA2F7)tsu_DOSTime
{
  [(NSDate *)self timeIntervalSince1970];
  v6 = v2;
  v3 = localtime(&v6);
  tm_year = v3->tm_year;
  if (tm_year <= 81)
  {
    LOWORD(tm_year) = 81;
  }

  return (((32 * v3->tm_mon + 32) | v3->tm_mday | ((tm_year << 9) + 24576)) | (((32 * LOWORD(v3->tm_min)) | (v3->tm_hour << 11) | (v3->tm_sec >> 1)) << 16));
}

- (id)tsu_relativeAnnotationStringForEarlierDate:(id)date withDateFormatter:(id)formatter shortAsPossible:(BOOL)possible lowercaseIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  possibleCopy = possible;
  dateCopy = date;
  formatterCopy = formatter;
  if (!dateCopy)
  {
    tsu_fullFormattedDate = @" ";
    goto LABEL_22;
  }

  if ([(NSDate *)self compare:dateCopy]== NSOrderedAscending)
  {
    tsu_fullFormattedDate = [(NSDate *)self tsu_fullFormattedDate];
    goto LABEL_22;
  }

  v12 = +[NSCalendar currentCalendar];
  v13 = [v12 components:240 fromDate:dateCopy toDate:self options:0];
  v14 = [v12 components:752 fromDate:dateCopy];
  v15 = [v12 components:512 fromDate:self];
  weekday = [v15 weekday];
  v17 = weekday - [v14 weekday] == 1 || objc_msgSend(v14, "weekday") == 7 && objc_msgSend(v15, "weekday") == 1;
  if ([v13 day] < 365)
  {
    if ([v13 day] < 8)
    {
      if ([v13 day] <= 1 && (objc_msgSend(v13, "day") != 1 || v17))
      {
        if ([v13 day] == 1 && v17)
        {
          if (!possibleCopy)
          {
            v19 = [(NSDate *)self p_ruleForYesterday:dateCopy withDateFormatter:formatterCopy lowercase:neededCopy];
            goto LABEL_20;
          }

          v20 = SFUMainBundle();
          v21 = v20;
          v22 = @"Yesterday";
        }

        else
        {
          if ([v13 hour] >= 1)
          {
            v19 = -[NSDate p_rule1To23HoursAgo:withDateFormatter:lowercase:](self, "p_rule1To23HoursAgo:withDateFormatter:lowercase:", [v13 hour], formatterCopy, neededCopy);
            goto LABEL_20;
          }

          if ([v13 minute] >= 1)
          {
            v19 = -[NSDate p_rule1To59MinutesAgo:withDateFormatter:lowercase:](self, "p_rule1To59MinutesAgo:withDateFormatter:lowercase:", [v13 minute], formatterCopy, neededCopy);
            goto LABEL_20;
          }

          v20 = SFUMainBundle();
          v21 = v20;
          v22 = @"Just now";
        }

        v25 = [v20 localizedStringForKey:v22 value:&stru_1001D3878 table:@"TSUtility"];
        v23 = [(NSDate *)self p_stringWithString:v25 lowercase:neededCopy dateFormatter:formatterCopy];

        goto LABEL_21;
      }

      v19 = [(NSDate *)self p_ruleForUpToSevenDaysAgoAndNotYesterdayForDate:dateCopy withDateFormatter:formatterCopy];
    }

    else
    {
      v19 = [(NSDate *)self p_ruleForOverAWeekAgoForDate:dateCopy withDateFormatter:formatterCopy];
    }
  }

  else
  {
    v19 = [(NSDate *)self p_ruleForOverAYearAgoForDate:dateCopy withDateFormatter:formatterCopy];
  }

LABEL_20:
  v23 = v19;
LABEL_21:
  tsu_fullFormattedDate = v23;

LABEL_22:

  return tsu_fullFormattedDate;
}

- (id)p_rule1To59MinutesAgo:(int64_t)ago withDateFormatter:(id)formatter lowercase:(BOOL)lowercase
{
  lowercaseCopy = lowercase;
  formatterCopy = formatter;
  v9 = SFUMainBundle();
  v10 = [v9 localizedStringForKey:@"%d min ago" value:&stru_1001D3878 table:@"TSUtility"];

  v11 = [NSString localizedStringWithFormat:v10, ago];
  v12 = [(NSDate *)self p_stringWithString:v11 lowercase:lowercaseCopy dateFormatter:formatterCopy];

  return v12;
}

- (id)p_rule1To23HoursAgo:(int64_t)ago withDateFormatter:(id)formatter lowercase:(BOOL)lowercase
{
  lowercaseCopy = lowercase;
  formatterCopy = formatter;
  v9 = SFUMainBundle();
  v10 = [v9 localizedStringForKey:@"%ld hour(s) ago" value:&stru_1001D3878 table:@"TSUtility"];
  v11 = [NSString localizedStringWithFormat:v10, ago];

  v12 = [(NSDate *)self p_stringWithString:v11 lowercase:lowercaseCopy dateFormatter:formatterCopy];

  return v12;
}

- (id)p_ruleForYesterday:(id)yesterday withDateFormatter:(id)formatter lowercase:(BOOL)lowercase
{
  lowercaseCopy = lowercase;
  formatterCopy = formatter;
  yesterdayCopy = yesterday;
  v10 = [(NSDate *)self dateFormatterFromTemplate12Hour:@"hhmma" template24Hour:@"HHmm" withDateFormatter:formatterCopy];
  v11 = SFUMainBundle();
  v12 = [v11 localizedStringForKey:@"Yesterday value:%@" table:{&stru_1001D3878, @"TSUtility"}];

  v13 = [(NSDate *)self p_stringWithString:v12 lowercase:lowercaseCopy dateFormatter:formatterCopy];

  v14 = [v10 stringFromDate:yesterdayCopy];

  v15 = [NSString stringWithFormat:v13, v14];

  return v15;
}

- (id)p_ruleForUpToSevenDaysAgoAndNotYesterdayForDate:(id)date withDateFormatter:(id)formatter
{
  dateCopy = date;
  v7 = [(NSDate *)self dateFormatterFromTemplate12Hour:@"eeehhmma" template24Hour:@"eeeHHmm" withDateFormatter:formatter];
  v8 = [v7 stringFromDate:dateCopy];

  return v8;
}

- (id)p_ruleForOverAWeekAgoForDate:(id)date withDateFormatter:(id)formatter
{
  dateCopy = date;
  v7 = [(NSDate *)self dateFormatterFromTemplate12Hour:@"MMMdhhmma" template24Hour:@"MMMdHHmm" withDateFormatter:formatter];
  v8 = [v7 stringFromDate:dateCopy];

  return v8;
}

- (id)p_ruleForOverAYearAgoForDate:(id)date withDateFormatter:(id)formatter
{
  dateCopy = date;
  formatterCopy = formatter;
  v7 = formatterCopy;
  if (formatterCopy)
  {
    v8 = formatterCopy;
  }

  else
  {
    v8 = objc_alloc_init(NSDateFormatter);
  }

  v9 = v8;
  [v8 setLocalizedDateFormatFromTemplate:@"Mdy"];
  v10 = [v9 stringFromDate:dateCopy];

  return v10;
}

- (id)tsu_fullFormattedDate
{
  v3 = [(NSDate *)self dateFormatterFromTemplate12Hour:@"MMMMddyyyyhhmma" template24Hour:@"MMMMddyyyyHHmm" withDateFormatter:0];
  v4 = [v3 stringFromDate:self];

  return v4;
}

- (id)tsu_shortFormattedDate
{
  v3 = [(NSDate *)self dateFormatterFromTemplate12Hour:@"MMMdyhhmma" template24Hour:@"MMMdyHHmm" withDateFormatter:0];
  v4 = [v3 stringFromDate:self];

  return v4;
}

- (id)dateFormatterFromTemplate12Hour:(id)hour template24Hour:(id)template24Hour withDateFormatter:(id)formatter
{
  hourCopy = hour;
  template24HourCopy = template24Hour;
  formatterCopy = formatter;
  v11 = formatterCopy;
  if (formatterCopy)
  {
    v12 = formatterCopy;
  }

  else
  {
    v12 = objc_alloc_init(NSDateFormatter);
  }

  v13 = v12;
  if ([(NSDate *)self p_localeUses24HourTimeCycle])
  {
    v14 = template24HourCopy;
  }

  else
  {
    v14 = hourCopy;
  }

  [v13 setLocalizedDateFormatFromTemplate:v14];

  return v13;
}

- (BOOL)p_localeUses24HourTimeCycle
{
  v2 = +[NSLocale autoupdatingCurrentLocale];
  v3 = [NSDateFormatter dateFormatFromTemplate:@"j" options:0 locale:v2];
  v4 = [v3 rangeOfString:@"a"] == 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

- (BOOL)tsu_isEqualToDate:(id)date
{
  dateCopy = date;
  if (dateCopy)
  {
    [(NSDate *)self timeIntervalSince1970];
    v6 = v5;
    [dateCopy timeIntervalSince1970];
    v8 = v6 == v7 || vabdd_f64(v6, v7) < fabs(v7 * 1.0e-10);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)p_stringWithString:(id)string lowercase:(BOOL)lowercase dateFormatter:(id)formatter
{
  stringCopy = string;
  v8 = stringCopy;
  if (lowercase)
  {
    locale = [formatter locale];
    v10 = [v8 lowercaseStringWithLocale:locale];
  }

  else
  {
    v10 = stringCopy;
  }

  return v10;
}

- (BOOL)tsu_isEqualToFileModificationDateAccountingForTruncation:(id)truncation
{
  truncationCopy = truncation;
  if (truncationCopy)
  {
    if (([(NSDate *)self isEqual:truncationCopy]& 1) != 0)
    {
      v5 = 1;
    }

    else
    {
      [(NSDate *)self timeIntervalSinceReferenceDate];
      v7 = v6;
      [truncationCopy timeIntervalSinceReferenceDate];
      v5 = 1;
      v9 = v7 == floor(v8) || v7 == v8;
      if (!v9 && vabdd_f64(v7, v8) >= 0.001)
      {
        v5 = floor(v7) == v8;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end