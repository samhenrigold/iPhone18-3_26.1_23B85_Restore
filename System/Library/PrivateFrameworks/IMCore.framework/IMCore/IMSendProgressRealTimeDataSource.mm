@interface IMSendProgressRealTimeDataSource
- (double)timeIntervalSinceReferenceDate;
@end

@implementation IMSendProgressRealTimeDataSource

- (double)timeIntervalSinceReferenceDate
{
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSinceReferenceDate];
  v4 = v3;

  return v4;
}

@end