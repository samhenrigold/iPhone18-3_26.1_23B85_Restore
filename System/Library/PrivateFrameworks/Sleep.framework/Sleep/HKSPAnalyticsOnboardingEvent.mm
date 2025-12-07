@interface HKSPAnalyticsOnboardingEvent
- (HKSPAnalyticsOnboardingEvent)initWithOnboardingInfo:(id)info provenanceInfo:(id)provenanceInfo;
- (NSString)description;
@end

@implementation HKSPAnalyticsOnboardingEvent

- (HKSPAnalyticsOnboardingEvent)initWithOnboardingInfo:(id)info provenanceInfo:(id)provenanceInfo
{
  v32[5] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  provenanceInfoCopy = provenanceInfo;
  v30.receiver = self;
  v30.super_class = HKSPAnalyticsOnboardingEvent;
  v8 = [(HKSPAnalyticsOnboardingEvent *)&v30 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_eventName, @"com.apple.SleepHealth.OnboardingSteps");
    stepPayloadValue = [infoCopy stepPayloadValue];
    entryPointPayloadValue = [infoCopy entryPointPayloadValue];
    actionPayloadValue = [infoCopy actionPayloadValue];
    source = [provenanceInfoCopy source];
    v29 = provenanceInfoCopy;
    presentation = [provenanceInfoCopy presentation];
    v15 = actionPayloadValue;
    v16 = MEMORY[0x277CBEB38];
    v17 = presentation;
    v18 = source;
    v19 = entryPointPayloadValue;
    v20 = stepPayloadValue;
    v21 = [v16 alloc];
    v31[0] = @"step";
    v31[1] = @"entryPoint";
    v32[0] = v20;
    v32[1] = v19;
    v31[2] = @"device";
    v22 = +[HKSPAnalyticsManager currentDeviceType];
    v32[2] = v22;
    v32[3] = v18;
    v31[3] = @"provenance";
    v31[4] = @"context";
    v32[4] = v17;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:5];

    v24 = [v21 initWithDictionary:v23];
    if (v15)
    {
      [v24 setObject:v15 forKeyedSubscript:@"action"];
    }

    v25 = [v24 copy];

    eventPayload = v9->_eventPayload;
    v9->_eventPayload = v25;

    v27 = v9;
    provenanceInfoCopy = v29;
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

@end