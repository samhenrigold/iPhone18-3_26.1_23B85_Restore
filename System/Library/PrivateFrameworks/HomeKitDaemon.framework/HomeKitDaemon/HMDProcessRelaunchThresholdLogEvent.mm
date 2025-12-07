@interface HMDProcessRelaunchThresholdLogEvent
- (HMDProcessRelaunchThresholdLogEvent)initWithTimeSincePreviousLaunch:(id)launch;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDProcessRelaunchThresholdLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"timeIntervalSincePreviousProcessLaunch";
  v3 = +[HMDLogEventHistograms latencyHistogram];
  timeIntervalSincePreviousProcessLaunch = [(HMDProcessRelaunchThresholdLogEvent *)self timeIntervalSincePreviousProcessLaunch];
  v5 = [v3 intervalIndexForValue:{1000 * objc_msgSend(timeIntervalSincePreviousProcessLaunch, "unsignedIntegerValue")}];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  return v6;
}

- (HMDProcessRelaunchThresholdLogEvent)initWithTimeSincePreviousLaunch:(id)launch
{
  launchCopy = launch;
  v9.receiver = self;
  v9.super_class = HMDProcessRelaunchThresholdLogEvent;
  v6 = [(HMMLogEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_timeIntervalSincePreviousProcessLaunch, launch);
  }

  return v7;
}

@end