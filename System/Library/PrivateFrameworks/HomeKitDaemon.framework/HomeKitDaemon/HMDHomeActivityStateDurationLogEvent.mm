@interface HMDHomeActivityStateDurationLogEvent
- (HMDHomeActivityStateDurationLogEvent)initWithHomeUUID:(id)d state:(id)state nextState:(id)nextState durationInMinutes:(id)minutes supportsAdaptiveTemperatureAutomations:(BOOL)automations;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDHomeActivityStateDurationLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v10[4] = *MEMORY[0x277D85DE8];
  v9[0] = @"state";
  state = [(HMDHomeActivityStateDurationLogEvent *)self state];
  v10[0] = state;
  v9[1] = @"nextState";
  nextState = [(HMDHomeActivityStateDurationLogEvent *)self nextState];
  v10[1] = nextState;
  v9[2] = @"durationInMinutes";
  durationInMinutes = [(HMDHomeActivityStateDurationLogEvent *)self durationInMinutes];
  v10[2] = durationInMinutes;
  v9[3] = @"supportsAdaptiveTemperatureAutomations";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeActivityStateDurationLogEvent supportsAdaptiveTemperatureAutomations](self, "supportsAdaptiveTemperatureAutomations")}];
  v10[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];

  return v7;
}

- (HMDHomeActivityStateDurationLogEvent)initWithHomeUUID:(id)d state:(id)state nextState:(id)nextState durationInMinutes:(id)minutes supportsAdaptiveTemperatureAutomations:(BOOL)automations
{
  stateCopy = state;
  nextStateCopy = nextState;
  minutesCopy = minutes;
  v19.receiver = self;
  v19.super_class = HMDHomeActivityStateDurationLogEvent;
  v16 = [(HMMHomeLogEvent *)&v19 initWithHomeUUID:d];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_state, state);
    objc_storeStrong(&v17->_nextState, nextState);
    objc_storeStrong(&v17->_durationInMinutes, minutes);
    v17->_supportsAdaptiveTemperatureAutomations = automations;
  }

  return v17;
}

@end