@interface HKSPAnalyticsSleepScheduleChangeEvent
+ (id)_payloadWithApplication:(id)application isSleepTrackingEnabled:(BOOL)enabled activeWatchProductType:(id)type provenanceSource:(id)source;
- (HKSPAnalyticsSleepScheduleChangeEvent)initWithScheduleChangeInfo:(id)info provenanceInfo:(id)provenanceInfo;
- (NSString)description;
@end

@implementation HKSPAnalyticsSleepScheduleChangeEvent

- (HKSPAnalyticsSleepScheduleChangeEvent)initWithScheduleChangeInfo:(id)info provenanceInfo:(id)provenanceInfo
{
  infoCopy = info;
  provenanceInfoCopy = provenanceInfo;
  v19.receiver = self;
  v19.super_class = HKSPAnalyticsSleepScheduleChangeEvent;
  v8 = [(HKSPAnalyticsSleepScheduleChangeEvent *)&v19 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_eventName, @"com.apple.SleepHealth.ScheduleChangeEvent");
    v10 = objc_opt_class();
    applicationPayloadValue = [infoCopy applicationPayloadValue];
    isSleepTrackingEnabled = [infoCopy isSleepTrackingEnabled];
    activePairedWatchProductType = [infoCopy activePairedWatchProductType];
    source = [provenanceInfoCopy source];
    v15 = [v10 _payloadWithApplication:applicationPayloadValue isSleepTrackingEnabled:isSleepTrackingEnabled activeWatchProductType:activePairedWatchProductType provenanceSource:source];
    eventPayload = v9->_eventPayload;
    v9->_eventPayload = v15;

    v17 = v9;
  }

  return v9;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"[%@.%p] event=%@, payload=%@", v5, self, self->_eventName, self->_eventPayload];

  return v6;
}

+ (id)_payloadWithApplication:(id)application isSleepTrackingEnabled:(BOOL)enabled activeWatchProductType:(id)type provenanceSource:(id)source
{
  enabledCopy = enabled;
  v20[2] = *MEMORY[0x277D85DE8];
  typeCopy = type;
  sourceCopy = source;
  v11 = MEMORY[0x277CBEB38];
  applicationCopy = application;
  v13 = [v11 alloc];
  v19[0] = @"sourceChange";
  v19[1] = @"watchSleepTrackingEnabled";
  v20[0] = applicationCopy;
  v14 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
  v20[1] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

  v16 = [v13 initWithDictionary:v15];
  if (typeCopy)
  {
    [v16 setObject:typeCopy forKeyedSubscript:@"activeWatchProductType"];
  }

  if (sourceCopy)
  {
    [v16 setObject:sourceCopy forKeyedSubscript:@"provenance"];
  }

  v17 = [v16 copy];

  return v17;
}

@end