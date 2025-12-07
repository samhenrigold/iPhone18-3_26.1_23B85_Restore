@interface DDMatchCalendarEvent
- (DDMatchCalendarEvent)initWithDDScannerResult:(id)result;
@end

@implementation DDMatchCalendarEvent

- (DDMatchCalendarEvent)initWithDDScannerResult:(id)result
{
  resultCopy = result;
  v25.receiver = self;
  v25.super_class = DDMatchCalendarEvent;
  v5 = [(DDMatch *)&v25 initWithDDScannerResult:resultCopy];
  if (v5)
  {
    [resultCopy coreResult];
    if ((DDResultHasType() & 1) != 0 || DDResultHasType())
    {
      v24 = 0;
      v22 = 0;
      v23 = 0;
      v20 = 0;
      v21 = 0;
      v6 = [resultCopy extractStartDate:&v23 startTimezone:&v22 endDate:&v21 endTimezone:&v20 allDayRef:&v24 referenceDate:0 referenceTimezone:0];
      v7 = v23;
      v18 = v23;
      v8 = v22;
      v9 = v22;
      v10 = v21;
      v11 = v21;
      v12 = v20;
      v13 = v20;
      if (v6)
      {
        objc_storeStrong(&v5->_startDate, v7);
        objc_storeStrong(&v5->_startTimeZone, v8);
        objc_storeStrong(&v5->_endDate, v10);
        objc_storeStrong(&v5->_endTimeZone, v12);
        v5->_allDay = v24;
      }
    }

    else
    {
      v24 = 0;
      v19 = 0;
      v14 = [resultCopy dateFromReferenceDate:0 referenceTimezone:0 timezoneRef:&v19 allDayRef:&v24];
      v15 = v19;
      v16 = v19;
      if (v14)
      {
        objc_storeStrong(&v5->_startDate, v14);
        objc_storeStrong(&v5->_startTimeZone, v15);
        v5->_allDay = v24;
      }
    }
  }

  return v5;
}

@end