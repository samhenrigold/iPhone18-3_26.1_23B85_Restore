@interface HMDLegacyPrimaryElectionLogEvent
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDLegacyPrimaryElectionLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v10[4] = *MEMORY[0x277D85DE8];
  v9[0] = @"reason";
  reason = [(HMDLegacyPrimaryElectionLogEvent *)self reason];
  v10[0] = reason;
  v9[1] = @"criteria";
  criteria = [(HMDLegacyPrimaryElectionLogEvent *)self criteria];
  v10[1] = criteria;
  v9[2] = @"availableResidents";
  v5 = +[HMDLogEventHistograms configurationDataHistogram];
  v6 = [v5 intervalIndexForValue:{-[HMDLegacyPrimaryElectionLogEvent availableResidentCount](self, "availableResidentCount")}];
  v9[3] = @"eventCount";
  v10[2] = v6;
  v10[3] = &unk_2866295A8;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];

  return v7;
}

@end