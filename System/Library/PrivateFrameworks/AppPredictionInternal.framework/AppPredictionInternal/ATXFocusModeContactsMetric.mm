@interface ATXFocusModeContactsMetric
- (id)coreAnalyticsDictionary;
@end

@implementation ATXFocusModeContactsMetric

- (id)coreAnalyticsDictionary
{
  v106[36] = *MEMORY[0x277D85DE8];
  v105[0] = @"FocusMode";
  [(ATXFocusModeContactsMetric *)self focusMode];
  null = ATXModeToString();
  v94 = null;
  if (!null)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v74 = null;
  v106[0] = null;
  v105[1] = @"ActiveConfigurationType";
  activeConfigurationType = [(ATXFocusModeContactsMetric *)self activeConfigurationType];
  v5 = activeConfigurationType;
  if (!activeConfigurationType)
  {
    activeConfigurationType = [MEMORY[0x277CBEB68] null];
  }

  v73 = activeConfigurationType;
  v106[1] = activeConfigurationType;
  v105[2] = @"EntityModeEntityScore";
  entityModeEntityScore = [(ATXFocusModeContactsMetric *)self entityModeEntityScore];
  v7 = entityModeEntityScore;
  if (!entityModeEntityScore)
  {
    entityModeEntityScore = [MEMORY[0x277CBEB68] null];
  }

  v72 = entityModeEntityScore;
  v106[2] = entityModeEntityScore;
  v105[3] = @"ClassConditionalProbability";
  classConditionalProbability = [(ATXFocusModeContactsMetric *)self classConditionalProbability];
  v9 = classConditionalProbability;
  if (!classConditionalProbability)
  {
    classConditionalProbability = [MEMORY[0x277CBEB68] null];
  }

  v71 = classConditionalProbability;
  v106[3] = classConditionalProbability;
  v105[4] = @"ContactMuted";
  contactMuted = [(ATXFocusModeContactsMetric *)self contactMuted];
  v11 = contactMuted;
  if (!contactMuted)
  {
    contactMuted = [MEMORY[0x277CBEB68] null];
  }

  v70 = contactMuted;
  v106[4] = contactMuted;
  v105[5] = @"GlobalPopularity";
  globalPopularity = [(ATXFocusModeContactsMetric *)self globalPopularity];
  v13 = globalPopularity;
  if (!globalPopularity)
  {
    globalPopularity = [MEMORY[0x277CBEB68] null];
  }

  v69 = globalPopularity;
  v106[5] = globalPopularity;
  v105[6] = @"ModePopularity";
  modePopularity = [(ATXFocusModeContactsMetric *)self modePopularity];
  v15 = modePopularity;
  if (!modePopularity)
  {
    modePopularity = [MEMORY[0x277CBEB68] null];
  }

  v68 = modePopularity;
  v106[6] = modePopularity;
  v105[7] = @"RatioOfModePopularityToGlobalPopularityOfEntity";
  ratioOfModePopularityToGlobalPopularityOfEntity = [(ATXFocusModeContactsMetric *)self ratioOfModePopularityToGlobalPopularityOfEntity];
  v17 = ratioOfModePopularityToGlobalPopularityOfEntity;
  if (!ratioOfModePopularityToGlobalPopularityOfEntity)
  {
    ratioOfModePopularityToGlobalPopularityOfEntity = [MEMORY[0x277CBEB68] null];
  }

  v67 = ratioOfModePopularityToGlobalPopularityOfEntity;
  v106[7] = ratioOfModePopularityToGlobalPopularityOfEntity;
  v105[8] = @"LocalNotificationsClearanceRateForEntity";
  localNotificationsClearedRateForEntity = [(ATXFocusModeContactsMetric *)self localNotificationsClearedRateForEntity];
  v19 = localNotificationsClearedRateForEntity;
  if (!localNotificationsClearedRateForEntity)
  {
    localNotificationsClearedRateForEntity = [MEMORY[0x277CBEB68] null];
  }

  v66 = localNotificationsClearedRateForEntity;
  v106[8] = localNotificationsClearedRateForEntity;
  v105[9] = @"GlobalNotificationsClearanceRateForEntity";
  globalNotificationsClearedRateForEntity = [(ATXFocusModeContactsMetric *)self globalNotificationsClearedRateForEntity];
  v21 = globalNotificationsClearedRateForEntity;
  if (!globalNotificationsClearedRateForEntity)
  {
    globalNotificationsClearedRateForEntity = [MEMORY[0x277CBEB68] null];
  }

  v65 = globalNotificationsClearedRateForEntity;
  v106[9] = globalNotificationsClearedRateForEntity;
  v105[10] = @"NotificationsClearedInMode";
  notificationsClearedInMode = [(ATXFocusModeContactsMetric *)self notificationsClearedInMode];
  v104 = notificationsClearedInMode;
  if (!notificationsClearedInMode)
  {
    notificationsClearedInMode = [MEMORY[0x277CBEB68] null];
  }

  v64 = notificationsClearedInMode;
  v106[10] = notificationsClearedInMode;
  v105[11] = @"NotificationsClearedGlobally";
  notificationsClearedGlobally = [(ATXFocusModeContactsMetric *)self notificationsClearedGlobally];
  v103 = notificationsClearedGlobally;
  if (!notificationsClearedGlobally)
  {
    notificationsClearedGlobally = [MEMORY[0x277CBEB68] null];
  }

  v63 = notificationsClearedGlobally;
  v106[11] = notificationsClearedGlobally;
  v105[12] = @"PosteriorProbability";
  posteriorProbability = [(ATXFocusModeContactsMetric *)self posteriorProbability];
  v102 = posteriorProbability;
  if (!posteriorProbability)
  {
    posteriorProbability = [MEMORY[0x277CBEB68] null];
  }

  v62 = posteriorProbability;
  v106[12] = posteriorProbability;
  v105[13] = @"RatioOfLocalToGlobalNotificationsClearedRateForEntity";
  ratioOfLocalToGlobalNotificationsClearedRateForEntity = [(ATXFocusModeContactsMetric *)self ratioOfLocalToGlobalNotificationsClearedRateForEntity];
  v101 = ratioOfLocalToGlobalNotificationsClearedRateForEntity;
  if (!ratioOfLocalToGlobalNotificationsClearedRateForEntity)
  {
    ratioOfLocalToGlobalNotificationsClearedRateForEntity = [MEMORY[0x277CBEB68] null];
  }

  v61 = ratioOfLocalToGlobalNotificationsClearedRateForEntity;
  v106[13] = ratioOfLocalToGlobalNotificationsClearedRateForEntity;
  v105[14] = @"ClassConditionalOfNotificationsClearedForEntity";
  classConditionalOfNotificationsClearedForEntity = [(ATXFocusModeContactsMetric *)self classConditionalOfNotificationsClearedForEntity];
  v100 = classConditionalOfNotificationsClearedForEntity;
  if (!classConditionalOfNotificationsClearedForEntity)
  {
    classConditionalOfNotificationsClearedForEntity = [MEMORY[0x277CBEB68] null];
  }

  v60 = classConditionalOfNotificationsClearedForEntity;
  v106[14] = classConditionalOfNotificationsClearedForEntity;
  v105[15] = @"NotificationsReceivedGlobally";
  notificationsReceivedGlobally = [(ATXFocusModeContactsMetric *)self notificationsReceivedGlobally];
  v99 = notificationsReceivedGlobally;
  if (!notificationsReceivedGlobally)
  {
    notificationsReceivedGlobally = [MEMORY[0x277CBEB68] null];
  }

  v59 = notificationsReceivedGlobally;
  v106[15] = notificationsReceivedGlobally;
  v105[16] = @"NotificationsReceivedInMode";
  notificationsReceivedInMode = [(ATXFocusModeContactsMetric *)self notificationsReceivedInMode];
  v98 = notificationsReceivedInMode;
  if (!notificationsReceivedInMode)
  {
    notificationsReceivedInMode = [MEMORY[0x277CBEB68] null];
  }

  v58 = notificationsReceivedInMode;
  v106[16] = notificationsReceivedInMode;
  v105[17] = @"LocalPopularityOfNotificationsReceivedForEntity";
  localPopularityOfNotificationsReceivedForEntity = [(ATXFocusModeContactsMetric *)self localPopularityOfNotificationsReceivedForEntity];
  v97 = localPopularityOfNotificationsReceivedForEntity;
  if (!localPopularityOfNotificationsReceivedForEntity)
  {
    localPopularityOfNotificationsReceivedForEntity = [MEMORY[0x277CBEB68] null];
  }

  v57 = localPopularityOfNotificationsReceivedForEntity;
  v106[17] = localPopularityOfNotificationsReceivedForEntity;
  v105[18] = @"GlobalPopularityOfNotificationsReceivedForEntity";
  globalPopularityOfNotificationsReceivedForEntity = [(ATXFocusModeContactsMetric *)self globalPopularityOfNotificationsReceivedForEntity];
  v96 = globalPopularityOfNotificationsReceivedForEntity;
  if (!globalPopularityOfNotificationsReceivedForEntity)
  {
    globalPopularityOfNotificationsReceivedForEntity = [MEMORY[0x277CBEB68] null];
  }

  v56 = globalPopularityOfNotificationsReceivedForEntity;
  v106[18] = globalPopularityOfNotificationsReceivedForEntity;
  v105[19] = @"RatioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity";
  ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity = [(ATXFocusModeContactsMetric *)self ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity];
  v95 = ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity;
  if (!ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity)
  {
    ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity = [MEMORY[0x277CBEB68] null];
  }

  v86 = v19;
  v87 = v17;
  v88 = v15;
  v89 = v13;
  v91 = v9;
  v92 = v7;
  v93 = v5;
  v55 = ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity;
  v106[19] = ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity;
  v105[20] = @"ClassConditionalOfNotificationsReceivedForEntity";
  classConditionalOfNotificationsReceivedForEntity = [(ATXFocusModeContactsMetric *)self classConditionalOfNotificationsReceivedForEntity];
  v84 = classConditionalOfNotificationsReceivedForEntity;
  if (!classConditionalOfNotificationsReceivedForEntity)
  {
    classConditionalOfNotificationsReceivedForEntity = [MEMORY[0x277CBEB68] null];
  }

  v85 = v21;
  v90 = v11;
  v54 = classConditionalOfNotificationsReceivedForEntity;
  v106[20] = classConditionalOfNotificationsReceivedForEntity;
  v105[21] = @"ContactEngagedGloballyOverLastNDays";
  v83 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXFocusModeContactsMetric contactEngagedGloballyOverLastNDays](self, "contactEngagedGloballyOverLastNDays")}];
  v106[21] = v83;
  v105[22] = @"ContactEngagedInModeOverLastNDays";
  v82 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXFocusModeContactsMetric contactEngagedInModeOverLastNDays](self, "contactEngagedInModeOverLastNDays")}];
  v106[22] = v82;
  v105[23] = @"ContactIsEmergency";
  v81 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXFocusModeContactsMetric contactIsEmergency](self, "contactIsEmergency")}];
  v106[23] = v81;
  v105[24] = @"ContactIsFavorite";
  v80 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXFocusModeContactsMetric contactIsFavorite](self, "contactIsFavorite")}];
  v106[24] = v80;
  v105[25] = @"ContactIsiCloudFamilyMember";
  v79 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXFocusModeContactsMetric contactIsiCloudFamilyMember](self, "contactIsiCloudFamilyMember")}];
  v106[25] = v79;
  v105[26] = @"ContactIsPinned";
  v78 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXFocusModeContactsMetric contactIsPinned](self, "contactIsPinned")}];
  v106[26] = v78;
  v105[27] = @"ContactIsVIP";
  v77 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXFocusModeContactsMetric contactIsVIP](self, "contactIsVIP")}];
  v106[27] = v77;
  v105[28] = @"ContactMessageHideAlerts";
  v76 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXFocusModeContactsMetric contactMessageHideAlerts](self, "contactMessageHideAlerts")}];
  v106[28] = v76;
  v105[29] = @"IsContactCandidateSuggestion";
  v33 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXFocusModeContactsMetric isContactCandidateSuggestion](self, "isContactCandidateSuggestion")}];
  v106[29] = v33;
  v105[30] = @"IsContactRecommendedSuggestion";
  v34 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXFocusModeContactsMetric isContactRecommendedSuggestion](self, "isContactRecommendedSuggestion")}];
  v106[30] = v34;
  v105[31] = @"wasContactSuggestedDuringModeSetup";
  v35 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXFocusModeContactsMetric wasContactSuggestedDuringModeSetup](self, "wasContactSuggestedDuringModeSetup")}];
  v106[31] = v35;
  v105[32] = @"wasContactSuggestionDuringModeSetupAccepted";
  v36 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXFocusModeContactsMetric wasContactSuggestionDuringModeSetupAccepted](self, "wasContactSuggestionDuringModeSetupAccepted")}];
  v106[32] = v36;
  v105[33] = @"TreatmentId";
  treatmentId = [(ATXFocusModeContactsMetric *)self treatmentId];
  null2 = treatmentId;
  if (!treatmentId)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v106[33] = null2;
  v105[34] = @"ExperimentId";
  experimentId = [(ATXFocusModeContactsMetric *)self experimentId];
  null3 = experimentId;
  if (!experimentId)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v106[34] = null3;
  v105[35] = @"DeploymentId";
  deploymentId = [(ATXFocusModeContactsMetric *)self deploymentId];
  null4 = deploymentId;
  if (!deploymentId)
  {
    null4 = [MEMORY[0x277CBEB68] null];
  }

  v106[35] = null4;
  v75 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v106 forKeys:v105 count:36];
  if (!deploymentId)
  {
  }

  if (!experimentId)
  {
  }

  if (!treatmentId)
  {
  }

  if (!v84)
  {
  }

  v43 = v95;
  if (!v95)
  {

    v43 = 0;
  }

  v44 = v96;
  if (!v96)
  {

    v44 = 0;
  }

  v45 = v97;
  if (!v97)
  {

    v45 = 0;
  }

  v46 = v98;
  if (!v98)
  {

    v46 = 0;
  }

  v47 = v99;
  if (!v99)
  {

    v47 = 0;
  }

  v48 = v100;
  if (!v100)
  {

    v48 = 0;
  }

  v49 = v101;
  if (!v101)
  {

    v49 = 0;
  }

  v50 = v102;
  if (!v102)
  {

    v50 = 0;
  }

  v51 = v103;
  if (!v103)
  {

    v51 = 0;
  }

  v52 = v104;
  if (!v104)
  {

    v52 = 0;
  }

  if (!v85)
  {
  }

  if (!v86)
  {
  }

  if (!v87)
  {
  }

  if (!v88)
  {
  }

  if (!v89)
  {
  }

  if (!v90)
  {
  }

  if (!v91)
  {
  }

  if (!v92)
  {
  }

  if (!v93)
  {
  }

  if (!v94)
  {
  }

  return v75;
}

@end