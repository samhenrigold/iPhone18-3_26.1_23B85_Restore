@interface MTSleepObjCWrapper
+ (void)toggleNextSleepAlarmWithCompletion:(id)completion;
+ (void)turnNextSleepAlarmEnabled:(BOOL)enabled completion:(id)completion;
@end

@implementation MTSleepObjCWrapper

+ (void)turnNextSleepAlarmEnabled:(BOOL)enabled completion:(id)completion
{
  enabledCopy = enabled;
  completionCopy = completion;
  v6 = objc_alloc(getHKSPSleepStoreClass());
  v7 = objc_alloc_init(getHKHealthStoreClass());
  v9 = [v6 initWithHealthStore:v7];

  date = [MEMORY[0x277CBEAA8] date];
  [v9 setUpcomingWakeUpAlarmEnabled:enabledCopy date:date completion:completionCopy];
}

+ (void)toggleNextSleepAlarmWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = objc_alloc(getHKSPSleepStoreClass());
  v5 = objc_alloc_init(getHKHealthStoreClass());
  v6 = [v4 initWithHealthStore:v5];

  v13 = 0;
  date = [MEMORY[0x277CBEAA8] date];
  v12 = 0;
  v8 = [v6 upcomingScheduleOccurrenceAfterDate:date alarmStatus:&v13 error:&v12];
  v9 = v12;

  if (v9)
  {
    completionCopy[2](completionCopy, 0, v9);
  }

  else
  {
    v10 = v13 == 1;
    date2 = [MEMORY[0x277CBEAA8] date];
    [v6 setUpcomingWakeUpAlarmEnabled:v10 date:date2 completion:completionCopy];
  }
}

@end