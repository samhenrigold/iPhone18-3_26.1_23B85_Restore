@interface HDKeyValueDomain(AFibBurdenNotificationManagerAdherence)
- (void)setNotificationSentDate:()AFibBurdenNotificationManagerAdherence;
@end

@implementation HDKeyValueDomain(AFibBurdenNotificationManagerAdherence)

- (void)setNotificationSentDate:()AFibBurdenNotificationManagerAdherence
{
  v3 = *MEMORY[0x277D12EB8];
  v7 = 0;
  v4 = [self setDate:a3 forKey:v3 error:&v7];
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [HDKeyValueDomain(AFibBurdenNotificationManagerAdherence) setNotificationSentDate:];
    }
  }
}

@end