@interface EKEvent(daySpan)
- (char)daySpan;
@end

@implementation EKEvent(daySpan)

- (char)daySpan
{
  startCalendarDate = [self startCalendarDate];
  calendarDateForDay = [startCalendarDate calendarDateForDay];

  endCalendarDate = [self endCalendarDate];
  calendarDateForDay2 = [endCalendarDate calendarDateForDay];

  v6 = [calendarDateForDay2 differenceInDays:calendarDateForDay];
  return (v6 + 1);
}

@end