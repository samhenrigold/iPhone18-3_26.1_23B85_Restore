@interface ATXFocusModeSignalsMetric
- (id)coreAnalyticsDictionary;
@end

@implementation ATXFocusModeSignalsMetric

- (id)coreAnalyticsDictionary
{
  v164[47] = *MEMORY[0x277D85DE8];
  v163[0] = @"FocusMode";
  [(ATXFocusModeSignalsMetric *)self focusMode];
  null = ATXModeToString();
  v4 = null;
  if (!null)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v121 = null;
  v164[0] = null;
  v163[1] = @"AppBundleId";
  appBundleId = [(ATXFocusModeSignalsMetric *)self appBundleId];
  v6 = appBundleId;
  if (!appBundleId)
  {
    appBundleId = [MEMORY[0x277CBEB68] null];
  }

  v138 = v6;
  v139 = v4;
  v120 = appBundleId;
  v164[1] = appBundleId;
  v163[2] = @"ActiveConfigurationType";
  activeConfigurationType = [(ATXFocusModeSignalsMetric *)self activeConfigurationType];
  v8 = activeConfigurationType;
  if (!activeConfigurationType)
  {
    activeConfigurationType = [MEMORY[0x277CBEB68] null];
  }

  v119 = activeConfigurationType;
  v164[2] = activeConfigurationType;
  v163[3] = @"wasAppSuggestedDuringModeSetup";
  v136 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXFocusModeSignalsMetric wasAppSuggestedDuringModeSetup](self, "wasAppSuggestedDuringModeSetup")}];
  v164[3] = v136;
  v163[4] = @"wasAppSuggestionDuringModeSetupAccepted";
  v135 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXFocusModeSignalsMetric wasAppSuggestionDuringModeSetupAccepted](self, "wasAppSuggestionDuringModeSetupAccepted")}];
  v164[4] = v135;
  v163[5] = @"CategoryScore";
  categoryScore = [(ATXFocusModeSignalsMetric *)self categoryScore];
  v10 = categoryScore;
  if (!categoryScore)
  {
    categoryScore = [MEMORY[0x277CBEB68] null];
  }

  v118 = categoryScore;
  v164[5] = categoryScore;
  v163[6] = @"ClassConditionalProbabilityOfModeGivenEntity";
  classConditionalProbabilityOfModeGivenEntity = [(ATXFocusModeSignalsMetric *)self classConditionalProbabilityOfModeGivenEntity];
  v12 = classConditionalProbabilityOfModeGivenEntity;
  if (!classConditionalProbabilityOfModeGivenEntity)
  {
    classConditionalProbabilityOfModeGivenEntity = [MEMORY[0x277CBEB68] null];
  }

  v117 = classConditionalProbabilityOfModeGivenEntity;
  v164[6] = classConditionalProbabilityOfModeGivenEntity;
  v163[7] = @"EntityModeEntityScore";
  entityModeEntityScore = [(ATXFocusModeSignalsMetric *)self entityModeEntityScore];
  v14 = entityModeEntityScore;
  if (!entityModeEntityScore)
  {
    entityModeEntityScore = [MEMORY[0x277CBEB68] null];
  }

  v116 = entityModeEntityScore;
  v164[7] = entityModeEntityScore;
  v163[8] = @"GlobalPopularityForEntity";
  globalPopularityForEntity = [(ATXFocusModeSignalsMetric *)self globalPopularityForEntity];
  v16 = globalPopularityForEntity;
  if (!globalPopularityForEntity)
  {
    globalPopularityForEntity = [MEMORY[0x277CBEB68] null];
  }

  v115 = globalPopularityForEntity;
  v164[8] = globalPopularityForEntity;
  v163[9] = @"ModePopularityForEntity";
  modePopularityForEntity = [(ATXFocusModeSignalsMetric *)self modePopularityForEntity];
  v18 = modePopularityForEntity;
  if (!modePopularityForEntity)
  {
    modePopularityForEntity = [MEMORY[0x277CBEB68] null];
  }

  v114 = modePopularityForEntity;
  v164[9] = modePopularityForEntity;
  v163[10] = @"RatioOfModePopularityToGlobalPopularityOfEntity";
  ratioOfModePopularityToGlobalPopularityOfEntity = [(ATXFocusModeSignalsMetric *)self ratioOfModePopularityToGlobalPopularityOfEntity];
  v129 = ratioOfModePopularityToGlobalPopularityOfEntity;
  if (!ratioOfModePopularityToGlobalPopularityOfEntity)
  {
    ratioOfModePopularityToGlobalPopularityOfEntity = [MEMORY[0x277CBEB68] null];
  }

  v113 = ratioOfModePopularityToGlobalPopularityOfEntity;
  v164[10] = ratioOfModePopularityToGlobalPopularityOfEntity;
  v163[11] = @"PosteriorProbabilityOfEntityGivenMode";
  posteriorProbabilityOfEntityGivenMode = [(ATXFocusModeSignalsMetric *)self posteriorProbabilityOfEntityGivenMode];
  v21 = posteriorProbabilityOfEntityGivenMode;
  if (!posteriorProbabilityOfEntityGivenMode)
  {
    posteriorProbabilityOfEntityGivenMode = [MEMORY[0x277CBEB68] null];
  }

  v112 = posteriorProbabilityOfEntityGivenMode;
  v164[11] = posteriorProbabilityOfEntityGivenMode;
  v163[12] = @"GlobalOccurrencesOfEntity";
  globalOccurrencesOfEntity = [(ATXFocusModeSignalsMetric *)self globalOccurrencesOfEntity];
  v162 = globalOccurrencesOfEntity;
  if (!globalOccurrencesOfEntity)
  {
    globalOccurrencesOfEntity = [MEMORY[0x277CBEB68] null];
  }

  v111 = globalOccurrencesOfEntity;
  v164[12] = globalOccurrencesOfEntity;
  v163[13] = @"LocalOccurrencesOfEntityInMode";
  localOccurrencesOfEntityInMode = [(ATXFocusModeSignalsMetric *)self localOccurrencesOfEntityInMode];
  v161 = localOccurrencesOfEntityInMode;
  if (!localOccurrencesOfEntityInMode)
  {
    localOccurrencesOfEntityInMode = [MEMORY[0x277CBEB68] null];
  }

  v110 = localOccurrencesOfEntityInMode;
  v164[13] = localOccurrencesOfEntityInMode;
  v163[14] = @"UniqueOccurrencesOfEntityInMode";
  uniqueOccurrencesOfEntityInMode = [(ATXFocusModeSignalsMetric *)self uniqueOccurrencesOfEntityInMode];
  v160 = uniqueOccurrencesOfEntityInMode;
  if (!uniqueOccurrencesOfEntityInMode)
  {
    uniqueOccurrencesOfEntityInMode = [MEMORY[0x277CBEB68] null];
  }

  v109 = uniqueOccurrencesOfEntityInMode;
  v164[14] = uniqueOccurrencesOfEntityInMode;
  v163[15] = @"EntityOccurredGloballyOverTheLastNDays";
  v127 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXFocusModeSignalsMetric entityOccurredGloballyOverLastNDays](self, "entityOccurredGloballyOverLastNDays")}];
  v164[15] = v127;
  v163[16] = @"EntityOccurredInModeOverLastNDays";
  v126 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXFocusModeSignalsMetric entityOccurredInModeOverLastNDays](self, "entityOccurredInModeOverLastNDays")}];
  v164[16] = v126;
  v163[17] = @"WidgetBundleIdAndKind";
  widgetBundleIdAndKind = [(ATXFocusModeSignalsMetric *)self widgetBundleIdAndKind];
  v159 = widgetBundleIdAndKind;
  if (!widgetBundleIdAndKind)
  {
    widgetBundleIdAndKind = [MEMORY[0x277CBEB68] null];
  }

  v108 = widgetBundleIdAndKind;
  v164[17] = widgetBundleIdAndKind;
  v163[18] = @"WidgetSize";
  widgetSize = [(ATXFocusModeSignalsMetric *)self widgetSize];
  v158 = widgetSize;
  if (!widgetSize)
  {
    widgetSize = [MEMORY[0x277CBEB68] null];
  }

  v107 = widgetSize;
  v164[18] = widgetSize;
  v163[19] = @"IntentHash";
  intentHash = [(ATXFocusModeSignalsMetric *)self intentHash];
  v157 = intentHash;
  if (!intentHash)
  {
    intentHash = [MEMORY[0x277CBEB68] null];
  }

  v106 = intentHash;
  v164[19] = intentHash;
  v163[20] = @"ABGroup";
  abGroup = [(ATXFocusModeSignalsMetric *)self abGroup];
  v156 = abGroup;
  if (!abGroup)
  {
    abGroup = [MEMORY[0x277CBEB68] null];
  }

  v105 = abGroup;
  v164[20] = abGroup;
  v163[21] = @"GlobalClearanceRateForEntity";
  globalClearanceRateForEntity = [(ATXFocusModeSignalsMetric *)self globalClearanceRateForEntity];
  v155 = globalClearanceRateForEntity;
  if (!globalClearanceRateForEntity)
  {
    globalClearanceRateForEntity = [MEMORY[0x277CBEB68] null];
  }

  v104 = globalClearanceRateForEntity;
  v164[21] = globalClearanceRateForEntity;
  v163[22] = @"LocalClearanceRateForEntity";
  localClearanceRateForEntity = [(ATXFocusModeSignalsMetric *)self localClearanceRateForEntity];
  v154 = localClearanceRateForEntity;
  if (!localClearanceRateForEntity)
  {
    localClearanceRateForEntity = [MEMORY[0x277CBEB68] null];
  }

  v103 = localClearanceRateForEntity;
  v164[22] = localClearanceRateForEntity;
  v163[23] = @"NotificationsClearedInMode";
  notificationsClearedInMode = [(ATXFocusModeSignalsMetric *)self notificationsClearedInMode];
  v153 = notificationsClearedInMode;
  if (!notificationsClearedInMode)
  {
    notificationsClearedInMode = [MEMORY[0x277CBEB68] null];
  }

  v102 = notificationsClearedInMode;
  v164[23] = notificationsClearedInMode;
  v163[24] = @"NotificationsClearedGlobally";
  notificationsClearedGlobally = [(ATXFocusModeSignalsMetric *)self notificationsClearedGlobally];
  v152 = notificationsClearedGlobally;
  if (!notificationsClearedGlobally)
  {
    notificationsClearedGlobally = [MEMORY[0x277CBEB68] null];
  }

  v101 = notificationsClearedGlobally;
  v164[24] = notificationsClearedGlobally;
  v163[25] = @"NotificationsMuted";
  notificationsMuted = [(ATXFocusModeSignalsMetric *)self notificationsMuted];
  v151 = notificationsMuted;
  if (!notificationsMuted)
  {
    notificationsMuted = [MEMORY[0x277CBEB68] null];
  }

  v100 = notificationsMuted;
  v164[25] = notificationsMuted;
  v163[26] = @"RatioOfLocalToGlobalNotificationsClearedRateForEntity";
  ratioOfLocalToGlobalNotificationsClearedRateForEntity = [(ATXFocusModeSignalsMetric *)self ratioOfLocalToGlobalNotificationsClearedRateForEntity];
  v150 = ratioOfLocalToGlobalNotificationsClearedRateForEntity;
  if (!ratioOfLocalToGlobalNotificationsClearedRateForEntity)
  {
    ratioOfLocalToGlobalNotificationsClearedRateForEntity = [MEMORY[0x277CBEB68] null];
  }

  v99 = ratioOfLocalToGlobalNotificationsClearedRateForEntity;
  v164[26] = ratioOfLocalToGlobalNotificationsClearedRateForEntity;
  v163[27] = @"ClassConditionalOfNotificationsClearedForEntity";
  classConditionalOfNotificationsClearedForEntity = [(ATXFocusModeSignalsMetric *)self classConditionalOfNotificationsClearedForEntity];
  v149 = classConditionalOfNotificationsClearedForEntity;
  if (!classConditionalOfNotificationsClearedForEntity)
  {
    classConditionalOfNotificationsClearedForEntity = [MEMORY[0x277CBEB68] null];
  }

  v98 = classConditionalOfNotificationsClearedForEntity;
  v164[27] = classConditionalOfNotificationsClearedForEntity;
  v163[28] = @"NotificationsReceivedGlobally";
  notificationsReceivedGlobally = [(ATXFocusModeSignalsMetric *)self notificationsReceivedGlobally];
  v148 = notificationsReceivedGlobally;
  if (!notificationsReceivedGlobally)
  {
    notificationsReceivedGlobally = [MEMORY[0x277CBEB68] null];
  }

  v97 = notificationsReceivedGlobally;
  v164[28] = notificationsReceivedGlobally;
  v163[29] = @"NotificationsReceivedInMode";
  notificationsReceivedInMode = [(ATXFocusModeSignalsMetric *)self notificationsReceivedInMode];
  v147 = notificationsReceivedInMode;
  if (!notificationsReceivedInMode)
  {
    notificationsReceivedInMode = [MEMORY[0x277CBEB68] null];
  }

  v96 = notificationsReceivedInMode;
  v164[29] = notificationsReceivedInMode;
  v163[30] = @"LocalPopularityOfNotificationsReceivedForEntity";
  localPopularityOfNotificationsReceivedForEntity = [(ATXFocusModeSignalsMetric *)self localPopularityOfNotificationsReceivedForEntity];
  v146 = localPopularityOfNotificationsReceivedForEntity;
  if (!localPopularityOfNotificationsReceivedForEntity)
  {
    localPopularityOfNotificationsReceivedForEntity = [MEMORY[0x277CBEB68] null];
  }

  v95 = localPopularityOfNotificationsReceivedForEntity;
  v164[30] = localPopularityOfNotificationsReceivedForEntity;
  v163[31] = @"GlobalPopularityOfNotificationsReceivedForEntity";
  globalPopularityOfNotificationsReceivedForEntity = [(ATXFocusModeSignalsMetric *)self globalPopularityOfNotificationsReceivedForEntity];
  v145 = globalPopularityOfNotificationsReceivedForEntity;
  if (!globalPopularityOfNotificationsReceivedForEntity)
  {
    globalPopularityOfNotificationsReceivedForEntity = [MEMORY[0x277CBEB68] null];
  }

  v94 = globalPopularityOfNotificationsReceivedForEntity;
  v164[31] = globalPopularityOfNotificationsReceivedForEntity;
  v163[32] = @"RatioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity";
  ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity = [(ATXFocusModeSignalsMetric *)self ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity];
  v144 = ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity;
  if (!ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity)
  {
    ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity = [MEMORY[0x277CBEB68] null];
  }

  v93 = ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity;
  v164[32] = ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity;
  v163[33] = @"ClassConditionalOfNotificationsReceivedForEntity";
  classConditionalOfNotificationsReceivedForEntity = [(ATXFocusModeSignalsMetric *)self classConditionalOfNotificationsReceivedForEntity];
  v143 = classConditionalOfNotificationsReceivedForEntity;
  if (!classConditionalOfNotificationsReceivedForEntity)
  {
    classConditionalOfNotificationsReceivedForEntity = [MEMORY[0x277CBEB68] null];
  }

  v92 = classConditionalOfNotificationsReceivedForEntity;
  v164[33] = classConditionalOfNotificationsReceivedForEntity;
  v163[34] = @"IsAppCandidateSuggestion";
  v125 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXFocusModeSignalsMetric isAppCandidateSuggestion](self, "isAppCandidateSuggestion")}];
  v164[34] = v125;
  v163[35] = @"IsAppRecommendedSuggestion";
  v124 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXFocusModeSignalsMetric isAppRecommendedSuggestion](self, "isAppRecommendedSuggestion")}];
  v164[35] = v124;
  v163[36] = @"TreatmentId";
  treatmentId = [(ATXFocusModeSignalsMetric *)self treatmentId];
  v142 = treatmentId;
  if (!treatmentId)
  {
    treatmentId = [MEMORY[0x277CBEB68] null];
  }

  v91 = treatmentId;
  v164[36] = treatmentId;
  v163[37] = @"ExperimentId";
  experimentId = [(ATXFocusModeSignalsMetric *)self experimentId];
  v141 = experimentId;
  if (!experimentId)
  {
    experimentId = [MEMORY[0x277CBEB68] null];
  }

  v90 = experimentId;
  v164[37] = experimentId;
  v163[38] = @"DeploymentId";
  deploymentId = [(ATXFocusModeSignalsMetric *)self deploymentId];
  v140 = deploymentId;
  if (!deploymentId)
  {
    deploymentId = [MEMORY[0x277CBEB68] null];
  }

  v128 = v21;
  v89 = deploymentId;
  v164[38] = deploymentId;
  v163[39] = @"GlobalModeAffinityPrior";
  globalModeAffinityPrior = [(ATXFocusModeSignalsMetric *)self globalModeAffinityPrior];
  v123 = globalModeAffinityPrior;
  if (!globalModeAffinityPrior)
  {
    globalModeAffinityPrior = [MEMORY[0x277CBEB68] null];
  }

  v134 = v10;
  v88 = globalModeAffinityPrior;
  v164[39] = globalModeAffinityPrior;
  v163[40] = @"GlobalInterruptingPrior";
  globalInterruptingPrior = [(ATXFocusModeSignalsMetric *)self globalInterruptingPrior];
  v47 = globalInterruptingPrior;
  if (!globalInterruptingPrior)
  {
    globalInterruptingPrior = [MEMORY[0x277CBEB68] null];
  }

  v137 = v8;
  v87 = globalInterruptingPrior;
  v164[40] = globalInterruptingPrior;
  v163[41] = @"ModeAppInterruptionsCountByEntity";
  modeAppInterruptionsCountByEntity = [(ATXFocusModeSignalsMetric *)self modeAppInterruptionsCountByEntity];
  v49 = modeAppInterruptionsCountByEntity;
  if (!modeAppInterruptionsCountByEntity)
  {
    modeAppInterruptionsCountByEntity = [MEMORY[0x277CBEB68] null];
  }

  v86 = modeAppInterruptionsCountByEntity;
  v164[41] = modeAppInterruptionsCountByEntity;
  v163[42] = @"ModeAppInterruptionsClassConditionalProbabilityByEntity";
  modeAppInterruptionsClassConditionalProbabilityByEntity = [(ATXFocusModeSignalsMetric *)self modeAppInterruptionsClassConditionalProbabilityByEntity];
  v51 = modeAppInterruptionsClassConditionalProbabilityByEntity;
  if (!modeAppInterruptionsClassConditionalProbabilityByEntity)
  {
    modeAppInterruptionsClassConditionalProbabilityByEntity = [MEMORY[0x277CBEB68] null];
  }

  v130 = v18;
  v133 = v12;
  v85 = modeAppInterruptionsClassConditionalProbabilityByEntity;
  v164[42] = modeAppInterruptionsClassConditionalProbabilityByEntity;
  v163[43] = @"GlobalAppInterruptionsCountByEntity";
  globalAppInterruptionsCountByEntity = [(ATXFocusModeSignalsMetric *)self globalAppInterruptionsCountByEntity];
  v53 = globalAppInterruptionsCountByEntity;
  if (!globalAppInterruptionsCountByEntity)
  {
    globalAppInterruptionsCountByEntity = [MEMORY[0x277CBEB68] null];
  }

  v131 = v16;
  v132 = v14;
  v84 = globalAppInterruptionsCountByEntity;
  v164[43] = globalAppInterruptionsCountByEntity;
  v163[44] = @"GlobalPopularityOfInterruptingEntity";
  globalPopularityOfInterruptingEntity = [(ATXFocusModeSignalsMetric *)self globalPopularityOfInterruptingEntity];
  null2 = globalPopularityOfInterruptingEntity;
  if (!globalPopularityOfInterruptingEntity)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v164[44] = null2;
  v163[45] = @"ModePopularityOfInterruptingEntity";
  modePopularityOfInterruptingEntity = [(ATXFocusModeSignalsMetric *)self modePopularityOfInterruptingEntity];
  null3 = modePopularityOfInterruptingEntity;
  if (!modePopularityOfInterruptingEntity)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v164[45] = null3;
  v163[46] = @"RatioOfModePopularityToGlobalPopularityOfInterruptingEntity";
  ratioOfModePopularityToGlobalPopularityOfInterruptingEntity = [(ATXFocusModeSignalsMetric *)self ratioOfModePopularityToGlobalPopularityOfInterruptingEntity];
  null4 = ratioOfModePopularityToGlobalPopularityOfInterruptingEntity;
  if (!ratioOfModePopularityToGlobalPopularityOfInterruptingEntity)
  {
    null4 = [MEMORY[0x277CBEB68] null];
  }

  v164[46] = null4;
  v122 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v164 forKeys:v163 count:47];
  if (!ratioOfModePopularityToGlobalPopularityOfInterruptingEntity)
  {
  }

  if (!modePopularityOfInterruptingEntity)
  {
  }

  if (!globalPopularityOfInterruptingEntity)
  {
  }

  if (!v53)
  {
  }

  if (!v51)
  {
  }

  if (!v49)
  {
  }

  if (!v47)
  {
  }

  if (!v123)
  {
  }

  v60 = v140;
  if (!v140)
  {

    v60 = 0;
  }

  v61 = v141;
  if (!v141)
  {

    v61 = 0;
  }

  v62 = v142;
  if (!v142)
  {

    v62 = 0;
  }

  v63 = v143;
  if (!v143)
  {

    v63 = 0;
  }

  v64 = v144;
  if (!v144)
  {

    v64 = 0;
  }

  v65 = v145;
  if (!v145)
  {

    v65 = 0;
  }

  v66 = v146;
  if (!v146)
  {

    v66 = 0;
  }

  v67 = v147;
  if (!v147)
  {

    v67 = 0;
  }

  v68 = v148;
  if (!v148)
  {

    v68 = 0;
  }

  v69 = v149;
  if (!v149)
  {

    v69 = 0;
  }

  v70 = v150;
  if (!v150)
  {

    v70 = 0;
  }

  v71 = v151;
  if (!v151)
  {

    v71 = 0;
  }

  v72 = v152;
  if (!v152)
  {

    v72 = 0;
  }

  v73 = v153;
  if (!v153)
  {

    v73 = 0;
  }

  v74 = v154;
  if (!v154)
  {

    v74 = 0;
  }

  v75 = v155;
  if (!v155)
  {

    v75 = 0;
  }

  v76 = v156;
  if (!v156)
  {

    v76 = 0;
  }

  v77 = v157;
  if (!v157)
  {

    v77 = 0;
  }

  v78 = v158;
  if (!v158)
  {

    v78 = 0;
  }

  v79 = v159;
  if (!v159)
  {

    v79 = 0;
  }

  v80 = v160;
  if (!v160)
  {

    v80 = 0;
  }

  v81 = v161;
  if (!v161)
  {

    v81 = 0;
  }

  v82 = v162;
  if (!v162)
  {

    v82 = 0;
  }

  if (!v128)
  {
  }

  if (!v129)
  {
  }

  if (!v130)
  {
  }

  if (!v131)
  {
  }

  if (!v132)
  {
  }

  if (!v133)
  {
  }

  if (!v134)
  {
  }

  if (!v137)
  {
  }

  if (!v138)
  {
  }

  if (!v139)
  {
  }

  return v122;
}

@end