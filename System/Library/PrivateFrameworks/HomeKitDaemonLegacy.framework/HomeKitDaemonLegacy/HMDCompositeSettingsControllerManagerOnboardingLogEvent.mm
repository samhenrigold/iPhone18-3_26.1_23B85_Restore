@interface HMDCompositeSettingsControllerManagerOnboardingLogEvent
- (HMDCompositeSettingsControllerManagerOnboardingLogEvent)initWithError:(id)error siriEndpointCertificationReason:(int64_t)reason;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDCompositeSettingsControllerManagerOnboardingLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"siriEndpointCertificationReason";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDCompositeSettingsControllerManagerOnboardingLogEvent siriEndpointCertificationReason](self, "siriEndpointCertificationReason")}];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

- (HMDCompositeSettingsControllerManagerOnboardingLogEvent)initWithError:(id)error siriEndpointCertificationReason:(int64_t)reason
{
  errorCopy = error;
  v11.receiver = self;
  v11.super_class = HMDCompositeSettingsControllerManagerOnboardingLogEvent;
  v7 = [(HMMLogEvent *)&v11 init];
  v8 = v7;
  if (v7)
  {
    v10.receiver = v7;
    v10.super_class = HMDCompositeSettingsControllerManagerOnboardingLogEvent;
    [(HMMLogEvent *)&v10 setError:errorCopy];
    v8->_siriEndpointCertificationReason = reason;
  }

  return v8;
}

@end