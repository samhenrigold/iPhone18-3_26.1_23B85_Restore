@interface HMDUserCloudShareOwnerAdoptionDailyEvent
- (HMDUserCloudShareOwnerAdoptionDailyEvent)initWithConfigureState:(int64_t)state isPrimaryResident:(BOOL)resident trustStatusCounts:(CloudShareTrustManagerTrustStatusCounts *)counts;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDUserCloudShareOwnerAdoptionDailyEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v16[10] = *MEMORY[0x277D85DE8];
  v15[0] = @"configureState";
  configureState = [(HMDUserCloudShareOwnerAdoptionDailyEvent *)self configureState];
  v16[0] = configureState;
  v15[1] = @"isPrimaryResident";
  isPrimaryResident = [(HMDUserCloudShareOwnerAdoptionDailyEvent *)self isPrimaryResident];
  v16[1] = isPrimaryResident;
  v15[2] = @"hasSharedUser";
  hasSharedUser = [(HMDUserCloudShareOwnerAdoptionDailyEvent *)self hasSharedUser];
  v16[2] = hasSharedUser;
  v15[3] = @"percentageOfParticipantsHaveAccepted";
  percentageOfParticipantsHaveAccepted = [(HMDUserCloudShareOwnerAdoptionDailyEvent *)self percentageOfParticipantsHaveAccepted];
  v16[3] = percentageOfParticipantsHaveAccepted;
  v15[4] = @"percentageOfParticipantsHaveCloudShareIDAndHaveAccepted";
  percentageOfParticipantsHaveCloudShareIDAndHaveAccepted = [(HMDUserCloudShareOwnerAdoptionDailyEvent *)self percentageOfParticipantsHaveCloudShareIDAndHaveAccepted];
  v16[4] = percentageOfParticipantsHaveCloudShareIDAndHaveAccepted;
  v15[5] = @"percentageOfParticipantsHaveCloudShareIDButNotAccepted";
  percentageOfParticipantsHaveCloudShareIDButNotAccepted = [(HMDUserCloudShareOwnerAdoptionDailyEvent *)self percentageOfParticipantsHaveCloudShareIDButNotAccepted];
  v16[5] = percentageOfParticipantsHaveCloudShareIDButNotAccepted;
  v15[6] = @"percentageOfNonAcceptedParticipantsWithKnownCapability";
  percentageOfNonAcceptedParticipantsWithKnownCapability = [(HMDUserCloudShareOwnerAdoptionDailyEvent *)self percentageOfNonAcceptedParticipantsWithKnownCapability];
  v16[6] = percentageOfNonAcceptedParticipantsWithKnownCapability;
  v15[7] = @"percentageOfUsersThatAreNotParticipant";
  percentageOfUsersThatAreNotParticipant = [(HMDUserCloudShareOwnerAdoptionDailyEvent *)self percentageOfUsersThatAreNotParticipant];
  v16[7] = percentageOfUsersThatAreNotParticipant;
  v15[8] = @"percentageOfParticipatingUsersThatNotAccepted";
  percentageOfParticipatingUsersThatNotAccepted = [(HMDUserCloudShareOwnerAdoptionDailyEvent *)self percentageOfParticipatingUsersThatNotAccepted];
  v16[8] = percentageOfParticipatingUsersThatNotAccepted;
  v15[9] = @"percentageOfAcceptedParticipantsWithoutCloudShareID";
  percentageOfAcceptedParticipantsWithoutCloudShareID = [(HMDUserCloudShareOwnerAdoptionDailyEvent *)self percentageOfAcceptedParticipantsWithoutCloudShareID];
  v16[9] = percentageOfAcceptedParticipantsWithoutCloudShareID;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:10];

  return v12;
}

- (HMDUserCloudShareOwnerAdoptionDailyEvent)initWithConfigureState:(int64_t)state isPrimaryResident:(BOOL)resident trustStatusCounts:(CloudShareTrustManagerTrustStatusCounts *)counts
{
  residentCopy = resident;
  v30.receiver = self;
  v30.super_class = HMDUserCloudShareOwnerAdoptionDailyEvent;
  v8 = [(HMMLogEvent *)&v30 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:state];
    configureState = v8->_configureState;
    v8->_configureState = v9;

    v11 = [MEMORY[0x277CCABB0] numberWithBool:residentCopy];
    isPrimaryResident = v8->_isPrimaryResident;
    v8->_isPrimaryResident = v11;

    v13 = [MEMORY[0x277CCABB0] numberWithInteger:counts->var0];
    hasSharedUser = v8->_hasSharedUser;
    v8->_hasSharedUser = v13;

    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:counts->var1];
    percentageOfParticipantsHaveAccepted = v8->_percentageOfParticipantsHaveAccepted;
    v8->_percentageOfParticipantsHaveAccepted = v15;

    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:counts->var2];
    percentageOfParticipantsHaveCloudShareIDAndHaveAccepted = v8->_percentageOfParticipantsHaveCloudShareIDAndHaveAccepted;
    v8->_percentageOfParticipantsHaveCloudShareIDAndHaveAccepted = v17;

    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:counts->var3];
    percentageOfParticipantsHaveCloudShareIDButNotAccepted = v8->_percentageOfParticipantsHaveCloudShareIDButNotAccepted;
    v8->_percentageOfParticipantsHaveCloudShareIDButNotAccepted = v19;

    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:counts->var4];
    percentageOfNonAcceptedParticipantsWithKnownCapability = v8->_percentageOfNonAcceptedParticipantsWithKnownCapability;
    v8->_percentageOfNonAcceptedParticipantsWithKnownCapability = v21;

    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:counts->var5];
    percentageOfUsersThatAreNotParticipant = v8->_percentageOfUsersThatAreNotParticipant;
    v8->_percentageOfUsersThatAreNotParticipant = v23;

    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:counts->var6];
    percentageOfParticipatingUsersThatNotAccepted = v8->_percentageOfParticipatingUsersThatNotAccepted;
    v8->_percentageOfParticipatingUsersThatNotAccepted = v25;

    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:counts->var7];
    percentageOfAcceptedParticipantsWithoutCloudShareID = v8->_percentageOfAcceptedParticipantsWithoutCloudShareID;
    v8->_percentageOfAcceptedParticipantsWithoutCloudShareID = v27;
  }

  return v8;
}

@end