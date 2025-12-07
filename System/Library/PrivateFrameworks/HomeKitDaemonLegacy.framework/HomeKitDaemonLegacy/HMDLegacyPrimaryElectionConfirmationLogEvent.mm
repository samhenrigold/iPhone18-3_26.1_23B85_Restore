@interface HMDLegacyPrimaryElectionConfirmationLogEvent
- (HMDLegacyPrimaryElectionConfirmationLogEvent)init;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDLegacyPrimaryElectionConfirmationLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v13[5] = *MEMORY[0x277D85DE8];
  if ([(HMDLegacyPrimaryElectionConfirmationLogEvent *)self availableResidentCount])
  {
    residentsRespondedCount = [(HMDLegacyPrimaryElectionConfirmationLogEvent *)self residentsRespondedCount];
    v4 = (100 * (residentsRespondedCount / [(HMDLegacyPrimaryElectionConfirmationLogEvent *)self availableResidentCount]));
  }

  else
  {
    v4 = 0.0;
  }

  v12[0] = @"availableResidents";
  v5 = +[HMDLogEventHistograms configurationDataHistogram];
  v6 = [v5 intervalIndexForValue:{-[HMDLegacyPrimaryElectionConfirmationLogEvent availableResidentCount](self, "availableResidentCount")}];
  v13[0] = v6;
  v12[1] = @"respondedResidentsPercentage";
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
  v13[1] = v7;
  v12[2] = @"criteria";
  criteria = [(HMDLegacyPrimaryElectionConfirmationLogEvent *)self criteria];
  v13[2] = criteria;
  v12[3] = @"changedPrimary";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDLegacyPrimaryElectionConfirmationLogEvent changedPrimary](self, "changedPrimary")}];
  v12[4] = @"eventCount";
  v13[3] = v9;
  v13[4] = &unk_286629248;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:5];

  return v10;
}

- (HMDLegacyPrimaryElectionConfirmationLogEvent)init
{
  v5.receiver = self;
  v5.super_class = HMDLegacyPrimaryElectionConfirmationLogEvent;
  v2 = [(HMMLogEvent *)&v5 init];
  criteria = v2->_criteria;
  v2->_criteria = @"unknown";

  return v2;
}

@end