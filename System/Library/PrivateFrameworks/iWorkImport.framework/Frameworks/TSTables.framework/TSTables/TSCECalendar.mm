@interface TSCECalendar
+ (BOOL)isLeapYear:(int64_t)year;
+ (id)ISO8601Calendar;
+ (id)dateWithSerialNumber:(double)number dateMode:(int)mode;
+ (id)gregorianGMTCalendar;
+ (id)referenceDate1904;
+ (int64_t)isoWeekNumberForDate:(id)date;
- (TSCECalendar)init;
- (TSCECalendar)initWithCalendarIdentifier:(id)identifier timeZone:(id)zone;
- (double)dayCountFromStartDate:(id)date endDate:(id)endDate basis:(int64_t)basis outError:(id *)error;
- (double)numDaysInYearWithStartDate:(id)date endDate:(id)endDate basis:(int64_t)basis outError:(id *)error;
- (id)clearOffTime:(id)time;
- (id)components:(unint64_t)components fromDate:(id)date;
- (id)components:(unint64_t)components fromDate:(id)date toDate:(id)toDate options:(unint64_t)options;
- (id)dateByAddingComponents:(id)components toDate:(id)date options:(unint64_t)options;
- (id)dateFromComponents:(id)components;
- (id)dateWithIdenticalComponentsInGMTForDate:(id)date;
- (id)dateWithYear:(int64_t)year month:(int64_t)month day:(int64_t)day;
- (id)dateWithYear:(int64_t)year month:(int64_t)month day:(int64_t)day hour:(int64_t)hour minute:(int64_t)minute second:(int64_t)second;
- (int64_t)extractDay:(id)day;
- (int64_t)extractHour:(id)hour;
- (int64_t)extractMinute:(id)minute;
- (int64_t)extractMonth:(id)month;
- (int64_t)extractSecond:(id)second;
- (int64_t)extractWeekday:(id)weekday;
- (int64_t)extractYear:(id)year;
- (int64_t)weekNumberForDate:(id)date withType:(int)type;
- (void)extractComponentsFromDate:(id)date year:(int64_t *)year month:(int64_t *)month day:(int64_t *)day hour:(int64_t *)hour minute:(int64_t *)minute second:(int64_t *)second;
@end

@implementation TSCECalendar

- (TSCECalendar)init
{
  v3 = TSUGetGMTTimeZone();
  v5 = objc_msgSend_initWithCalendarIdentifier_timeZone_(self, v4, *MEMORY[0x277CBE5C0], v3);

  return v5;
}

- (TSCECalendar)initWithCalendarIdentifier:(id)identifier timeZone:(id)zone
{
  identifierCopy = identifier;
  zoneCopy = zone;
  v17.receiver = self;
  v17.super_class = TSCECalendar;
  v8 = [(TSCECalendar *)&v17 init];
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277CBEA80]);
    v12 = objc_msgSend_initWithCalendarIdentifier_(v9, v10, identifierCopy, v11);
    calendar = v8->_calendar;
    v8->_calendar = v12;

    objc_msgSend_setTimeZone_(v8->_calendar, v14, zoneCopy, v15);
  }

  return v8;
}

+ (id)referenceDate1904
{
  v2 = qword_27CFB5648;
  if (!qword_27CFB5648)
  {
    v3 = objc_opt_class();
    objc_sync_enter(v3);
    if (!qword_27CFB5648)
    {
      v7 = objc_msgSend_gregorianCalendar(TSCECalendar, v4, v5, v6);
      v9 = objc_msgSend_dateWithYear_month_day_(v7, v8, 1904, 1, 1);
      v10 = qword_27CFB5648;
      qword_27CFB5648 = v9;
    }

    objc_sync_exit(v3);

    v2 = qword_27CFB5648;
  }

  return v2;
}

- (id)dateFromComponents:(id)components
{
  v4 = objc_msgSend_dateFromComponents_(self->_calendar, a2, components, v3);

  return v4;
}

- (id)components:(unint64_t)components fromDate:(id)date
{
  v4 = objc_msgSend_components_fromDate_(self->_calendar, a2, components, date);

  return v4;
}

- (id)dateByAddingComponents:(id)components toDate:(id)date options:(unint64_t)options
{
  v5 = objc_msgSend_dateByAddingComponents_toDate_options_(self->_calendar, a2, components, date, options);

  return v5;
}

- (id)components:(unint64_t)components fromDate:(id)date toDate:(id)toDate options:(unint64_t)options
{
  v6 = objc_msgSend_components_fromDate_toDate_options_(self->_calendar, a2, components, date, toDate, options);

  return v6;
}

- (void)extractComponentsFromDate:(id)date year:(int64_t *)year month:(int64_t *)month day:(int64_t *)day hour:(int64_t *)hour minute:(int64_t *)minute second:(int64_t *)second
{
  v17 = objc_autoreleasePoolPush();
  v18 = 12;
  if (!month)
  {
    v18 = 4;
  }

  if (day)
  {
    v18 |= 0x10uLL;
  }

  if (hour | minute)
  {
    v18 |= 0x60uLL;
  }

  if (second)
  {
    objc_msgSend_components_fromDate_(self, v16, v18 | 0x80, date);
  }

  else
  {
    objc_msgSend_components_fromDate_(self, v16, v18, date);
  }
  v19 = ;
  v23 = v19;
  if (year)
  {
    *year = objc_msgSend_year(v19, v20, v21, v22);
  }

  if (month)
  {
    *month = objc_msgSend_month(v23, v20, v21, v22);
  }

  if (day)
  {
    *day = objc_msgSend_day(v23, v20, v21, v22);
  }

  if (hour)
  {
    *hour = objc_msgSend_hour(v23, v20, v21, v22);
  }

  if (minute)
  {
    *minute = objc_msgSend_minute(v23, v20, v21, v22);
  }

  if (second)
  {
    *second = objc_msgSend_second(v23, v20, v21, v22);
  }

  objc_autoreleasePoolPop(v17);
}

- (int64_t)extractYear:(id)year
{
  v3 = objc_msgSend_components_fromDate_(self, a2, 4, year);
  v7 = objc_msgSend_year(v3, v4, v5, v6);

  return v7;
}

- (int64_t)extractMonth:(id)month
{
  v3 = objc_msgSend_components_fromDate_(self, a2, 8, month);
  v7 = objc_msgSend_month(v3, v4, v5, v6);

  return v7;
}

- (int64_t)extractDay:(id)day
{
  v3 = objc_msgSend_components_fromDate_(self, a2, 16, day);
  v7 = objc_msgSend_day(v3, v4, v5, v6);

  return v7;
}

- (int64_t)extractHour:(id)hour
{
  v3 = objc_msgSend_components_fromDate_(self, a2, 32, hour);
  v7 = objc_msgSend_hour(v3, v4, v5, v6);

  return v7;
}

- (int64_t)extractMinute:(id)minute
{
  v3 = objc_msgSend_components_fromDate_(self, a2, 64, minute);
  v7 = objc_msgSend_minute(v3, v4, v5, v6);

  return v7;
}

- (int64_t)extractSecond:(id)second
{
  v3 = objc_msgSend_components_fromDate_(self, a2, 128, second);
  v7 = objc_msgSend_second(v3, v4, v5, v6);

  return v7;
}

- (int64_t)extractWeekday:(id)weekday
{
  v3 = objc_msgSend_components_fromDate_(self, a2, 512, weekday);
  v7 = objc_msgSend_weekday(v3, v4, v5, v6);

  return v7;
}

- (id)clearOffTime:(id)time
{
  timeCopy = time;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  objc_msgSend_extractComponentsFromDate_year_month_day_(self, v5, timeCopy, &v11, &v10, &v9);
  v7 = objc_msgSend_dateWithYear_month_day_(self, v6, v11, v10, v9);

  return v7;
}

+ (int64_t)isoWeekNumberForDate:(id)date
{
  dateCopy = date;
  v7 = objc_msgSend_ISO8601Calendar(TSCECalendar, v4, v5, v6);
  v9 = objc_msgSend_components_fromDate_(v7, v8, 0x2000, dateCopy);
  v13 = objc_msgSend_weekOfYear(v9, v10, v11, v12);

  return v13;
}

- (id)dateWithYear:(int64_t)year month:(int64_t)month day:(int64_t)day
{
  v9 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  objc_msgSend_setYear_(v9, v10, year, v11);
  objc_msgSend_setMonth_(v9, v12, month, v13);
  objc_msgSend_setDay_(v9, v14, day, v15);
  v18 = objc_msgSend_dateFromComponents_(self, v16, v9, v17);

  return v18;
}

- (id)dateWithYear:(int64_t)year month:(int64_t)month day:(int64_t)day hour:(int64_t)hour minute:(int64_t)minute second:(int64_t)second
{
  v15 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  objc_msgSend_setYear_(v15, v16, year, v17);
  objc_msgSend_setMonth_(v15, v18, month, v19);
  objc_msgSend_setDay_(v15, v20, day, v21);
  objc_msgSend_setHour_(v15, v22, hour, v23);
  objc_msgSend_setMinute_(v15, v24, minute, v25);
  objc_msgSend_setSecond_(v15, v26, second, v27);
  v30 = objc_msgSend_dateFromComponents_(self, v28, v15, v29);

  return v30;
}

- (id)dateWithIdenticalComponentsInGMTForDate:(id)date
{
  dateCopy = date;
  v18 = 0;
  v16 = 0;
  v17 = 0;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  objc_msgSend_extractComponentsFromDate_year_month_day_hour_minute_second_(self, v5, dateCopy, &v18, &v17, &v16, &v15, &v14, &v13);
  v9 = objc_msgSend_gregorianGMTCalendar(TSCECalendar, v6, v7, v8);
  v11 = objc_msgSend_dateWithYear_month_day_hour_minute_second_(v9, v10, v18, v17, v16, v15, v14, v13);

  return v11;
}

- (double)dayCountFromStartDate:(id)date endDate:(id)endDate basis:(int64_t)basis outError:(id *)error
{
  dateCopy = date;
  endDateCopy = endDate;
  if (!error)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSCECalendar dayCountFromStartDate:endDate:basis:outError:]", v12);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalendar.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 207, 0, "Need non-nil outError for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
  }

  v52 = 0;
  v53 = 0;
  v50 = 0;
  v51 = 0;
  v49 = 0;
  objc_msgSend_extractComponentsFromDate_year_month_day_(self, v11, dateCopy, &v53, &v52, &v51, 0);
  objc_msgSend_extractComponentsFromDate_year_month_day_(self, v23, endDateCopy, &v50, &v49, &v48);
  if ((basis - 1) >= 3)
  {
    if (basis)
    {
      if (basis == 4)
      {
        v32 = v51;
        v33 = 30;
        if (v51 == 31)
        {
          v32 = 30;
        }

        if (v48 != 31)
        {
          v33 = v48;
        }

        v31 = (v49 - v52) * 30.0 + (v50 - v53) * 360.0 + v33 - v32;
      }

      else
      {
        *error = objc_msgSend_numberError(TSCEError, v24, v25, v26);
        v31 = 0.0;
      }
    }

    else
    {
      isLeapYear = objc_msgSend_isLeapYear_(TSCECalendar, v24, v53, v26);
      v37 = objc_msgSend_isLeapYear_(TSCECalendar, v35, v50, v36);
      if (v52 == 2)
      {
        v38 = v51 == 28;
        if (isLeapYear)
        {
          v38 = v51 == 29;
        }
      }

      else
      {
        v38 = 0;
      }

      if (v49 == 2)
      {
        v39 = v48;
        v40 = 28;
        if (v37)
        {
          v40 = 29;
        }

        v46 = v48 == v40;
        v41 = v51;
        v42 = !v38;
        if (!v46)
        {
          v42 = 1;
        }

        if (v42)
        {
          v43 = v48;
        }

        else
        {
          v43 = 30;
          v48 = 30;
        }
      }

      else
      {
        v41 = v51;
        v43 = v48;
        v39 = v48;
      }

      v44 = v41;
      if (v41 == 31 || v38)
      {
        v44 = 30.0;
      }

      v45 = v43;
      v46 = (v41 & 0xFFFFFFFFFFFFFFFELL) == 0x1E && v39 == 31;
      if (v46)
      {
        v45 = 30.0;
      }

      v31 = (v49 - v52) * 30.0 + (v50 - v53) * 360.0 + v45 - v44;
    }
  }

  else
  {
    v27 = objc_msgSend_components_fromDate_toDate_options_(self, v24, 16, dateCopy, endDateCopy, 0);
    v31 = objc_msgSend_day(v27, v28, v29, v30);
  }

  return v31;
}

- (double)numDaysInYearWithStartDate:(id)date endDate:(id)endDate basis:(int64_t)basis outError:(id *)error
{
  dateCopy = date;
  endDateCopy = endDate;
  if (!error)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSCECalendar numDaysInYearWithStartDate:endDate:basis:outError:]", v12);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalendar.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 328, 0, "Need non-nil outError for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
  }

  if (objc_msgSend_compare_(dateCopy, v11, endDateCopy, v12) == 1)
  {
LABEL_4:
    *error = objc_msgSend_numberError(TSCEError, v23, v24, v25);
    v26 = 0.0;
    goto LABEL_5;
  }

  v26 = 360.0;
  if (basis <= 1)
  {
    if (!basis)
    {
      goto LABEL_5;
    }

    if (basis != 1)
    {
      goto LABEL_4;
    }

    v28 = objc_msgSend_components_fromDate_toDate_options_(self, v23, 28, dateCopy, endDateCopy, 0);
    v32 = objc_msgSend_year(v28, v29, v30, v31);
    v36 = objc_msgSend_month(v28, v33, v34, v35);
    if (objc_msgSend_day(v28, v37, v38, v39))
    {
      v42 = 0;
    }

    else
    {
      v42 = v36 == 0;
    }

    v43 = v42 && v32 == 1;
    if (v43 || !v32)
    {
      Year = objc_msgSend_extractYear_(self, v40, dateCopy, v41);
      v57 = objc_msgSend_extractYear_(self, v55, endDateCopy, v56);
      isLeapYear = objc_msgSend_isLeapYear_(TSCECalendar, v58, Year, v59);
      v63 = objc_msgSend_isLeapYear_(TSCECalendar, v61, v57, v62);
      if (isLeapYear & v63)
      {
        v26 = 366.0;
      }

      else if ((isLeapYear | v63))
      {
        if ((isLeapYear ^ 1 | v63))
        {
          v65 = objc_msgSend_dateWithYear_month_day_(self, v64, v57, 2, 29);
          v68 = objc_msgSend_compare_(endDateCopy, v66, v65, v67) == -1;
        }

        else
        {
          v65 = objc_msgSend_dateWithYear_month_day_(self, v64, Year, 2, 29);
          v68 = objc_msgSend_compare_(dateCopy, v69, v65, v70) == 1;
        }

        v71 = v68;
        v26 = dbl_2217E1F30[v71];
      }

      else
      {
        v26 = 365.0;
      }
    }

    else
    {
      v44 = objc_msgSend_extractYear_(self, v40, dateCopy, v41);
      v47 = objc_msgSend_extractYear_(self, v45, endDateCopy, v46);
      v50 = 0.0;
      v51 = v47 - v44;
      if (v47 >= v44)
      {
        v52 = v47 + 1;
        do
        {
          if (objc_msgSend_isLeapYear_(TSCECalendar, v48, v44, v49))
          {
            v53 = 366.0;
          }

          else
          {
            v53 = 365.0;
          }

          v50 = v50 + v53;
          ++v44;
        }

        while (v52 != v44);
      }

      v26 = v50 / (v51 + 1);
    }
  }

  else if (basis != 2 && basis != 4)
  {
    if (basis == 3)
    {
      v26 = 365.0;
      goto LABEL_5;
    }

    goto LABEL_4;
  }

LABEL_5:

  return v26;
}

- (int64_t)weekNumberForDate:(id)date withType:(int)type
{
  v44 = 0;
  v45 = 0;
  v43 = 0;
  objc_msgSend_extractComponentsFromDate_year_month_day_(self, a2, date, &v45, &v44, &v43);
  isLeapYear = objc_msgSend_isLeapYear_(TSCECalendar, v6, v45, v7);
  if (v44 > 6)
  {
    if (v44 <= 9)
    {
      if (v44 == 7)
      {
        v11 = v43;
        v12 = isLeapYear == 0;
        v13 = 181;
      }

      else
      {
        v11 = v43;
        v12 = isLeapYear == 0;
        if (v44 == 8)
        {
          v13 = 212;
        }

        else
        {
          v13 = 243;
        }
      }

      goto LABEL_26;
    }

    switch(v44)
    {
      case 10:
        v11 = v43;
        v12 = isLeapYear == 0;
        v13 = 273;
        goto LABEL_26;
      case 11:
        v11 = v43;
        v12 = isLeapYear == 0;
        v13 = 304;
        goto LABEL_26;
      case 12:
        v11 = v43;
        v12 = isLeapYear == 0;
        v13 = 334;
        goto LABEL_26;
    }

LABEL_40:
    v34 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSCECalendar weekNumberForDate:withType:]", v10);
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalendar.mm", v37);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v39, v35, v38, 457, 0, "Incorrect month number in function WEEKNUM");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42);
    v14 = 0;
    goto LABEL_29;
  }

  if (v44 > 3)
  {
    if (v44 == 4)
    {
      v11 = v43;
      v12 = isLeapYear == 0;
      v13 = 90;
    }

    else
    {
      v11 = v43;
      v12 = isLeapYear == 0;
      if (v44 == 5)
      {
        v13 = 120;
      }

      else
      {
        v13 = 151;
      }
    }

    goto LABEL_26;
  }

  if (v44 == 1)
  {
    v14 = v43;
    goto LABEL_29;
  }

  if (v44 == 2)
  {
    v14 = v43 + 31;
    goto LABEL_29;
  }

  if (v44 != 3)
  {
    goto LABEL_40;
  }

  v11 = v43;
  v12 = isLeapYear == 0;
  v13 = 59;
LABEL_26:
  if (!v12)
  {
    ++v13;
  }

  v14 = v13 + v11;
LABEL_29:
  v17 = objc_msgSend_dateWithYear_month_day_(self, v9, v45, 1, 1);
  if (type == 2)
  {
    Weekday = objc_msgSend_extractWeekday_(self, v15, v17, v16);
    v18 = Weekday - 9;
    if (Weekday == 1)
    {
      v18 = -1;
    }
  }

  else if (type == 1)
  {
    v18 = objc_msgSend_extractWeekday_(self, v15, v17, v16) - 8;
  }

  else
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSCECalendar weekNumberForDate:withType:]", v16);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalendar.mm", v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v25, v21, v24, 472, 0, "Incorrect type number in function WEEKNUM.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28);
    v18 = 0;
  }

  v29 = v18 + v14;
  v30 = v29 < 1;
  v31 = v29 - 1;
  if (v30)
  {
    v32 = 1;
  }

  else
  {
    v32 = (v31 / 7 + 2);
  }

  return v32;
}

+ (id)dateWithSerialNumber:(double)number dateMode:(int)mode
{
  if (mode > 2)
  {
    v8 = 1900;
    v6 = 1;
    v7 = 1;
  }

  else
  {
    v6 = qword_2217E1F40[mode];
    v7 = qword_2217E1F58[mode];
    v8 = qword_2217E1F70[mode];
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  objc_msgSend_setDay_(v9, v10, v6, v11);
  objc_msgSend_setMonth_(v9, v12, v7, v13);
  objc_msgSend_setYear_(v9, v14, v8, v15);
  v16 = objc_alloc(MEMORY[0x277CBEA80]);
  v19 = objc_msgSend_initWithCalendarIdentifier_(v16, v17, *MEMORY[0x277CBE5C0], v18);
  v22 = objc_msgSend_timeZoneWithName_(MEMORY[0x277CBEBB0], v20, @"UTC", v21);
  objc_msgSend_setTimeZone_(v19, v23, v22, v24);

  v27 = objc_msgSend_dateFromComponents_(v19, v25, v9, v26);
  v28 = objc_alloc(MEMORY[0x277CBEAA8]);
  v31 = mode != 1 || number <= 60.0;
  numberCopy = number + -1.0;
  if (v31)
  {
    numberCopy = number;
  }

  v33 = objc_msgSend_initWithTimeInterval_sinceDate_(v28, v29, v27, v30, numberCopy * 86400.0);

  return v33;
}

+ (id)gregorianGMTCalendar
{
  v2 = qword_27CFB5650;
  if (!qword_27CFB5650)
  {
    v3 = objc_opt_class();
    objc_sync_enter(v3);
    if (!qword_27CFB5650)
    {
      v4 = [TSCECalendar alloc];
      v5 = TSUGetGMTTimeZone();
      v7 = objc_msgSend_initWithCalendarIdentifier_timeZone_(v4, v6, *MEMORY[0x277CBE5C0], v5);

      __dmb(0xBu);
      v8 = qword_27CFB5650;
      qword_27CFB5650 = v7;
    }

    objc_sync_exit(v3);

    v2 = qword_27CFB5650;
  }

  return v2;
}

+ (id)ISO8601Calendar
{
  v2 = qword_27CFB5658;
  if (!qword_27CFB5658)
  {
    v3 = objc_opt_class();
    objc_sync_enter(v3);
    if (!qword_27CFB5658)
    {
      v4 = [TSCECalendar alloc];
      v5 = TSUGetGMTTimeZone();
      v7 = objc_msgSend_initWithCalendarIdentifier_timeZone_(v4, v6, *MEMORY[0x277CBE5D0], v5);

      __dmb(0xBu);
      v8 = qword_27CFB5658;
      qword_27CFB5658 = v7;
    }

    objc_sync_exit(v3);

    v2 = qword_27CFB5658;
  }

  return v2;
}

+ (BOOL)isLeapYear:(int64_t)year
{
  if ((year & 3) != 0)
  {
    return 0;
  }

  if (__ROR8__(0x8F5C28F5C28F5C29 * year + 0x51EB851EB851EB8, 2) <= 0x28F5C28F5C28F5CuLL)
  {
    return __ROR8__(0x8F5C28F5C28F5C29 * year + 0x51EB851EB851EB0, 4) < 0xA3D70A3D70A3D7uLL;
  }

  return 1;
}

@end