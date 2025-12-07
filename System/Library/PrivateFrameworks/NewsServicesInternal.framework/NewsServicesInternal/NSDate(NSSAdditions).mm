@interface NSDate(NSSAdditions)
+ (id)_todayStringDateFormatterForThread;
- (void)nss_gregorianDescriptionWithFlags:()NSSAdditions options:completion:;
@end

@implementation NSDate(NSSAdditions)

+ (id)_todayStringDateFormatterForThread
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v2 = [threadDictionary objectForKey:@"kCurrentThreadTodayStringFormatterKey"];

  if (!v2)
  {
    v2 = objc_opt_new();
    [v2 setDoesRelativeDateFormatting:1];
    [v2 setTimeStyle:0];
    [v2 setDateStyle:4];
    currentThread2 = [MEMORY[0x277CCACC8] currentThread];
    threadDictionary2 = [currentThread2 threadDictionary];
    [threadDictionary2 setObject:v2 forKey:@"kCurrentThreadTodayStringFormatterKey"];
  }

  return v2;
}

- (void)nss_gregorianDescriptionWithFlags:()NSSAdditions options:completion:
{
  v57 = a5;
  [self timeIntervalSinceNow];
  v9 = v8;
  v10 = -v8;
  if (v9 < 0.0)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v14 = [threadDictionary objectForKey:@"NSDateCurrentThreadNSDateComponentsFormatterKey"];

  if (!v14)
  {
    v14 = objc_opt_new();
    [v14 setUnitsStyle:5];
    [v14 setAllowedUnits:124];
    [v14 setFormattingContext:2];
    [v14 setMaximumUnitCount:1];
    currentThread2 = [MEMORY[0x277CCACC8] currentThread];
    threadDictionary2 = [currentThread2 threadDictionary];
    [threadDictionary2 setObject:v14 forKey:@"NSDateCurrentThreadNSDateComponentsFormatterKey"];
  }

  if (v9 >= 0.0 || v11 < 60.0)
  {
    v20 = NSSBundleInternal(v15);
    v21 = [v20 localizedStringForKey:@"now" value:&stru_286D8BB50 table:0];

    v22 = v21;
LABEL_12:
    v23 = v22;
    v24 = v23;
    v19 = v23;
    goto LABEL_59;
  }

  if (v11 >= 3600.0)
  {
    if (v11 >= 86400.0)
    {
      if (v11 >= 604800.0)
      {
        if (v11 >= 31449600.0)
        {
          if (a3)
          {
            v15 = [v14 stringFromTimeInterval:v11];
            v19 = v15;
          }

          else
          {
            v19 = 0;
          }

          v47 = v11 / 31449600.0;
          v32 = floorf(v47);
          if ((a3 & 2) != 0)
          {
            v54 = MEMORY[0x277CCACA8];
            v55 = NSSBundleInternal(v15);
            v56 = [v55 localizedStringForKey:@"%d year/years ago medium" value:&stru_286D8BB50 table:0];
            v24 = [v54 localizedStringWithFormat:v56, v32];
          }

          else
          {
            v24 = 0;
          }

          if ((a3 & 4) == 0)
          {
            goto LABEL_58;
          }

          v37 = MEMORY[0x277CCACA8];
          v38 = NSSBundleInternal(v15);
          v39 = v38;
          v40 = @"%d year/years ago long";
        }

        else
        {
          if (a3)
          {
            v15 = [v14 stringFromTimeInterval:v11];
            v19 = v15;
          }

          else
          {
            v19 = 0;
          }

          v46 = v11 / 604800.0;
          v32 = floorf(v46);
          if ((a3 & 2) != 0)
          {
            v51 = MEMORY[0x277CCACA8];
            v52 = NSSBundleInternal(v15);
            v53 = [v52 localizedStringForKey:@"%d week/weeks ago medium" value:&stru_286D8BB50 table:0];
            v24 = [v51 localizedStringWithFormat:v53, v32];
          }

          else
          {
            v24 = 0;
          }

          if ((a3 & 4) == 0)
          {
            goto LABEL_58;
          }

          v37 = MEMORY[0x277CCACA8];
          v38 = NSSBundleInternal(v15);
          v39 = v38;
          v40 = @"%d week/weeks ago long";
        }

        goto LABEL_27;
      }

      if (a3)
      {
        v15 = [v14 stringFromTimeInterval:v11];
        v19 = v15;
      }

      else
      {
        v19 = 0;
      }

      v33 = v11 / 86400.0;
      v32 = floorf(v33);
      if ((a3 & 2) != 0)
      {
        v48 = MEMORY[0x277CCACA8];
        v49 = NSSBundleInternal(v15);
        v50 = [v49 localizedStringForKey:@"%d day/days ago medium" value:&stru_286D8BB50 table:0];
        v24 = [v48 localizedStringWithFormat:v50, v32];

        if ((a3 & 4) == 0)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v24 = 0;
        if ((a3 & 4) == 0)
        {
          goto LABEL_58;
        }
      }

      v37 = MEMORY[0x277CCACA8];
      v38 = NSSBundleInternal(v15);
      v39 = v38;
      v40 = @"%d day/days ago long";
      goto LABEL_27;
    }

    v25 = v11 / 3600.0;
    v26 = floorf(v25);
    if ((a4 & 1) != 0 && v26 > 6.0)
    {
      currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
      v28 = [currentCalendar isDateInToday:self];

      if (v28)
      {
        _todayStringDateFormatterForThread = [MEMORY[0x277CBEAA8] _todayStringDateFormatterForThread];
        date = [MEMORY[0x277CBEAA8] date];
        v31 = [_todayStringDateFormatterForThread stringFromDate:date];

        v22 = v31;
        goto LABEL_12;
      }
    }

    if (a3)
    {
      v15 = [v14 stringFromTimeInterval:v11];
      v19 = v15;
      if ((a3 & 2) != 0)
      {
LABEL_31:
        v43 = MEMORY[0x277CCACA8];
        v44 = NSSBundleInternal(v15);
        v45 = [v44 localizedStringForKey:@"%d hour/hours ago medium" value:&stru_286D8BB50 table:0];
        v24 = [v43 localizedStringWithFormat:v45, v26];

        if ((a3 & 4) == 0)
        {
          goto LABEL_58;
        }

        goto LABEL_38;
      }
    }

    else
    {
      v19 = 0;
      if ((a3 & 2) != 0)
      {
        goto LABEL_31;
      }
    }

    v24 = 0;
    if ((a3 & 4) == 0)
    {
      goto LABEL_58;
    }

LABEL_38:
    v37 = MEMORY[0x277CCACA8];
    v39 = NSSBundleInternal(v15);
    v41 = [v39 localizedStringForKey:@"%d hour/hours ago long" value:&stru_286D8BB50 table:0];
    v42 = v26;
    goto LABEL_28;
  }

  if (a3)
  {
    v15 = [v14 stringFromTimeInterval:v11];
    v19 = v15;
  }

  else
  {
    v19 = 0;
  }

  v18 = v11 / 60.0;
  v32 = floorf(v18);
  if ((a3 & 2) == 0)
  {
    v24 = 0;
    if ((a3 & 4) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_26;
  }

  v34 = MEMORY[0x277CCACA8];
  v35 = NSSBundleInternal(v15);
  v36 = [v35 localizedStringForKey:@"%d minute/minutes ago medium" value:&stru_286D8BB50 table:0];
  v24 = [v34 localizedStringWithFormat:v36, v32];

  if ((a3 & 4) != 0)
  {
LABEL_26:
    v37 = MEMORY[0x277CCACA8];
    v38 = NSSBundleInternal(v15);
    v39 = v38;
    v40 = @"%d minute/minutes ago long";
LABEL_27:
    v41 = [v38 localizedStringForKey:v40 value:&stru_286D8BB50 table:0];
    v42 = v32;
LABEL_28:
    v23 = [v37 localizedStringWithFormat:v41, v42];

    goto LABEL_59;
  }

LABEL_58:
  v23 = 0;
LABEL_59:
  if (v57)
  {
    v57[2](v57, v19, v24, v23);
  }
}

@end