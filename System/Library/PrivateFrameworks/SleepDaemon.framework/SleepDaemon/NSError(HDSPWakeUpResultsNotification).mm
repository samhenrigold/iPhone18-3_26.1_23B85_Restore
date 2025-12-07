@interface NSError(HDSPWakeUpResultsNotification)
+ (id)hdsp_insufficientSleepDataError;
- (BOOL)hdsp_isInsufficientSleepDataError;
@end

@implementation NSError(HDSPWakeUpResultsNotification)

+ (id)hdsp_insufficientSleepDataError
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277CCA450];
  v5[0] = @"Query returned data insufficient to attempt wake up result computation";
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v2 = [v0 errorWithDomain:@"HDSPWakeUpResultsNotificationErrorDomain" code:1 userInfo:v1];

  return v2;
}

- (BOOL)hdsp_isInsufficientSleepDataError
{
  domain = [self domain];
  if ([domain isEqualToString:@"HDSPWakeUpResultsNotificationErrorDomain"])
  {
    v3 = [self code] == 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end