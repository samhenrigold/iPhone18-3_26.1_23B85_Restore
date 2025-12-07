@interface HMDMultiUserSettingsLogEvent
- (HMDMultiUserSettingsLogEvent)initWithMultiUserSettings:(id)settings;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDMultiUserSettingsLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v16[10] = *MEMORY[0x277D85DE8];
  multiUserSettings = [(HMDMultiUserSettingsLogEvent *)self multiUserSettings];
  v15[0] = @"numSharedUsers";
  numSharedUsers = [multiUserSettings numSharedUsers];
  v16[0] = numSharedUsers;
  v15[1] = @"numUsersWithSettings";
  numUsersWithSettings = [multiUserSettings numUsersWithSettings];
  v16[1] = numUsersWithSettings;
  v15[2] = @"numUsersWithIdentifyVoiceOff";
  numUsersWithIdentifyVoiceOff = [multiUserSettings numUsersWithIdentifyVoiceOff];
  v16[2] = numUsersWithIdentifyVoiceOff;
  v15[3] = @"numUsersWithPlayBackInfluencesForYouOff";
  numUsersWithPlayBackInfluencesForYouOff = [multiUserSettings numUsersWithPlayBackInfluencesForYouOff];
  v16[3] = numUsersWithPlayBackInfluencesForYouOff;
  v15[4] = @"numUsersCloudShareTrustNotConfigured";
  numUsersCloudShareTrustNotConfigured = [multiUserSettings numUsersCloudShareTrustNotConfigured];
  v16[4] = numUsersCloudShareTrustNotConfigured;
  v15[5] = @"numUsersSharedBackingStoreNotStarted";
  numUsersSharedBackingStoreNotStarted = [multiUserSettings numUsersSharedBackingStoreNotStarted];
  v16[5] = numUsersSharedBackingStoreNotStarted;
  v15[6] = @"numUsersSharedBackingStoreRunning";
  numUsersSharedBackingStoreRunning = [multiUserSettings numUsersSharedBackingStoreRunning];
  v16[6] = numUsersSharedBackingStoreRunning;
  v15[7] = @"numUsersSharedBackingStoreNotRunningDueToError";
  numUsersSharedBackingStoreNotRunningDueToError = [multiUserSettings numUsersSharedBackingStoreNotRunningDueToError];
  v16[7] = numUsersSharedBackingStoreNotRunningDueToError;
  v15[8] = @"numUsersSharedBackingStoreNotRunningDueToStopped";
  numUsersSharedBackingStoreNotRunningDueToStopped = [multiUserSettings numUsersSharedBackingStoreNotRunningDueToStopped];
  v16[8] = numUsersSharedBackingStoreNotRunningDueToStopped;
  v15[9] = @"numUsersSharedBackingStoreSharedZoneWaitingForShareInvitation";
  numUsersSharedBackingStoreSharedZoneWaitingForShareInvitation = [multiUserSettings numUsersSharedBackingStoreSharedZoneWaitingForShareInvitation];
  v16[9] = numUsersSharedBackingStoreSharedZoneWaitingForShareInvitation;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:10];

  return v11;
}

- (HMDMultiUserSettingsLogEvent)initWithMultiUserSettings:(id)settings
{
  settingsCopy = settings;
  v9.receiver = self;
  v9.super_class = HMDMultiUserSettingsLogEvent;
  v6 = [(HMMLogEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_multiUserSettings, settings);
  }

  return v7;
}

@end