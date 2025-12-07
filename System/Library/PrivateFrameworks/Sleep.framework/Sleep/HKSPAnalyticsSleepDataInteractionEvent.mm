@interface HKSPAnalyticsSleepDataInteractionEvent
- (HKSPAnalyticsSleepDataInteractionEvent)initWithType:(unint64_t)type secondsSinceAlarmDismissal:(id)dismissal isSleepOnWatchOnboarded:(BOOL)onboarded isWatchSleepTrackingEnabled:(BOOL)enabled isSleepScheduleEnabled:(id)scheduleEnabled isOnboardedVitals:(BOOL)vitals;
- (NSString)description;
@end

@implementation HKSPAnalyticsSleepDataInteractionEvent

- (HKSPAnalyticsSleepDataInteractionEvent)initWithType:(unint64_t)type secondsSinceAlarmDismissal:(id)dismissal isSleepOnWatchOnboarded:(BOOL)onboarded isWatchSleepTrackingEnabled:(BOOL)enabled isSleepScheduleEnabled:(id)scheduleEnabled isOnboardedVitals:(BOOL)vitals
{
  vitalsCopy = vitals;
  enabledCopy = enabled;
  onboardedCopy = onboarded;
  v42[4] = *MEMORY[0x277D85DE8];
  dismissalCopy = dismissal;
  scheduleEnabledCopy = scheduleEnabled;
  v40.receiver = self;
  v40.super_class = HKSPAnalyticsSleepDataInteractionEvent;
  v16 = [(HKSPAnalyticsSleepDataInteractionEvent *)&v40 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_eventName, @"com.apple.health.sleepdata.interactions");
    v18 = objc_alloc(MEMORY[0x277CBEB38]);
    v19 = v18;
    v41[0] = @"type";
    if (type - 1 >= 3)
    {
      v39 = onboardedCopy;
      v21 = dismissalCopy;
      v22 = enabledCopy;
      v23 = scheduleEnabledCopy;
      v24 = v18;
      v25 = vitalsCopy;
      v26 = MEMORY[0x277CCACA8];
      v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
      v28 = v26;
      vitalsCopy = v25;
      v19 = v24;
      scheduleEnabledCopy = v23;
      enabledCopy = v22;
      dismissalCopy = v21;
      onboardedCopy = v39;
      v20 = [v28 stringWithFormat:@"HKSPAnalyticsSleepDataInteractionType-%@", v27];
    }

    else
    {
      v20 = off_279C75CA0[type - 1];
    }

    v42[0] = v20;
    v41[1] = @"isSleepOnWatchOnboarded";
    v29 = [MEMORY[0x277CCABB0] numberWithBool:onboardedCopy];
    v42[1] = v29;
    v41[2] = @"isWatchSleepTrackingEnabled";
    v30 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
    v42[2] = v30;
    v41[3] = @"isOnboardedVitals";
    v31 = [MEMORY[0x277CCABB0] numberWithBool:vitalsCopy];
    v42[3] = v31;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:4];
    v33 = [v19 initWithDictionary:v32];

    [dismissalCopy doubleValue];
    if (v34 > 0.0)
    {
      [v33 setObject:dismissalCopy forKeyedSubscript:@"secondsSinceAlarmLastDismissed"];
    }

    [v33 setObject:scheduleEnabledCopy forKeyedSubscript:@"isSleepScheduleEnabled"];
    v35 = [v33 copy];
    eventPayload = v17->_eventPayload;
    v17->_eventPayload = v35;

    v37 = v17;
  }

  return v17;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"[%@.%p] event=%@, payload=%@", v5, self, self->_eventName, self->_eventPayload];

  return v6;
}

@end