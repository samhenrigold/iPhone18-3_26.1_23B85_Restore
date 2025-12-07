@interface HKSPAnalyticsSleepRoomEntryEvent
+ (id)_payloadWithProvidenceInfo:(id)info isOnboarded:(BOOL)onboarded secondsSinceAlarmDismissed:(double)dismissed;
- (HKSPAnalyticsSleepRoomEntryEvent)initWithProvenanceInfo:(id)info isOnboarded:(BOOL)onboarded secondsSinceAlarmDismissed:(double)dismissed;
- (NSString)description;
@end

@implementation HKSPAnalyticsSleepRoomEntryEvent

- (HKSPAnalyticsSleepRoomEntryEvent)initWithProvenanceInfo:(id)info isOnboarded:(BOOL)onboarded secondsSinceAlarmDismissed:(double)dismissed
{
  onboardedCopy = onboarded;
  infoCopy = info;
  v15.receiver = self;
  v15.super_class = HKSPAnalyticsSleepRoomEntryEvent;
  v9 = [(HKSPAnalyticsSleepRoomEntryEvent *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_eventName, @"com.apple.SleepHealth.SleepRoomView");
    v11 = [objc_opt_class() _payloadWithProvidenceInfo:infoCopy isOnboarded:onboardedCopy secondsSinceAlarmDismissed:dismissed];
    eventPayload = v10->_eventPayload;
    v10->_eventPayload = v11;

    v13 = v10;
  }

  return v10;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"[%@.%p] event=%@, payload=%@", v5, self, self->_eventName, self->_eventPayload];

  return v6;
}

+ (id)_payloadWithProvidenceInfo:(id)info isOnboarded:(BOOL)onboarded secondsSinceAlarmDismissed:(double)dismissed
{
  onboardedCopy = onboarded;
  v18[3] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CBEB38];
  v17[0] = @"provenance";
  infoCopy = info;
  source = [infoCopy source];
  v18[0] = source;
  v17[1] = @"context";
  presentation = [infoCopy presentation];

  v18[1] = presentation;
  v17[2] = @"isOnboardedSleep";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:onboardedCopy];
  v18[2] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
  v13 = [v7 dictionaryWithDictionary:v12];

  if (dismissed > 0.0)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:dismissed];
    [v13 setObject:v14 forKeyedSubscript:@"secondsSinceAlarmLastDismissed"];
  }

  v15 = [v13 copy];

  return v15;
}

@end