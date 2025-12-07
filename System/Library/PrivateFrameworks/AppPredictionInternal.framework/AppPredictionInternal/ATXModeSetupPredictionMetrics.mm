@interface ATXModeSetupPredictionMetrics
- (id)coreAnalyticsDictionary;
- (id)description;
@end

@implementation ATXModeSetupPredictionMetrics

- (id)coreAnalyticsDictionary
{
  v130[49] = *MEMORY[0x277D85DE8];
  v129[0] = @"ModeName";
  modeName = [(ATXModeSetupPredictionMetrics *)self modeName];
  v128 = modeName;
  if (!modeName)
  {
    modeName = [MEMORY[0x277CBEB68] null];
  }

  v130[0] = modeName;
  v129[1] = @"ModeIsCreated";
  v127 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeSetupPredictionMetrics modeIsCreated](self, "modeIsCreated", modeName)}];
  v130[1] = v127;
  v129[2] = @"ModeWasCreatedWithin7Days";
  v126 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeSetupPredictionMetrics modeWasCreatedWithin7Days](self, "modeWasCreatedWithin7Days")}];
  v130[2] = v126;
  v129[3] = @"ModeWasCreatedToday";
  v125 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeSetupPredictionMetrics modeWasCreatedToday](self, "modeWasCreatedToday")}];
  v130[3] = v125;
  v129[4] = @"ModeHasActivatedWithin7Days";
  v124 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeSetupPredictionMetrics modeHasActivatedWithin7Days](self, "modeHasActivatedWithin7Days")}];
  v130[4] = v124;
  v129[5] = @"ModeHasActivatedToday";
  v123 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeSetupPredictionMetrics modeHasActivatedToday](self, "modeHasActivatedToday")}];
  v130[5] = v123;
  v129[6] = @"WasOfferedDigestOnboardingSuggestion";
  v122 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeSetupPredictionMetrics wasOfferedDigestOnboardingSuggestion](self, "wasOfferedDigestOnboardingSuggestion")}];
  v130[6] = v122;
  v129[7] = @"HasSetupDigestThroughOnboardingSuggestion";
  v121 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeSetupPredictionMetrics hasSetupDigestThroughOnboardingSuggestion](self, "hasSetupDigestThroughOnboardingSuggestion")}];
  v130[7] = v121;
  v129[8] = @"IsDigestCurrentlyEnabled";
  v120 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeSetupPredictionMetrics isDigestCurrentlyEnabled](self, "isDigestCurrentlyEnabled")}];
  v130[8] = v120;
  v129[9] = @"ModeHasLinkedPoster";
  v119 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeSetupPredictionMetrics modeHasLinkedPoster](self, "modeHasLinkedPoster")}];
  v130[9] = v119;
  v129[10] = @"ModeHasSmartActivationEnabled";
  v118 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeSetupPredictionMetrics modeHasSmartActivationEnabled](self, "modeHasSmartActivationEnabled")}];
  v130[10] = v118;
  v129[11] = @"GlobalAllPagesFolderCountBucket";
  globalAllPagesFolderCountBucket = [(ATXModeSetupPredictionMetrics *)self globalAllPagesFolderCountBucket];
  v117 = globalAllPagesFolderCountBucket;
  if (globalAllPagesFolderCountBucket)
  {
    v5 = globalAllPagesFolderCountBucket;
  }

  else
  {
    v5 = &unk_283A55F40;
  }

  v130[11] = v5;
  v129[12] = @"GlobalAllPagesWidgetCountBucket";
  globalAllPagesWidgetCountBucket = [(ATXModeSetupPredictionMetrics *)self globalAllPagesWidgetCountBucket];
  v116 = globalAllPagesWidgetCountBucket;
  if (globalAllPagesWidgetCountBucket)
  {
    v7 = globalAllPagesWidgetCountBucket;
  }

  else
  {
    v7 = &unk_283A55F40;
  }

  v130[12] = v7;
  v129[13] = @"HomePageFolderCountBucket";
  homePageFolderCountBucket = [(ATXModeSetupPredictionMetrics *)self homePageFolderCountBucket];
  v115 = homePageFolderCountBucket;
  if (homePageFolderCountBucket)
  {
    v9 = homePageFolderCountBucket;
  }

  else
  {
    v9 = &unk_283A55F40;
  }

  v130[13] = v9;
  v129[14] = @"HomePageWidgetCountBucket";
  homePageWidgetCountBucket = [(ATXModeSetupPredictionMetrics *)self homePageWidgetCountBucket];
  v114 = homePageWidgetCountBucket;
  if (homePageWidgetCountBucket)
  {
    v11 = homePageWidgetCountBucket;
  }

  else
  {
    v11 = &unk_283A55F40;
  }

  v130[14] = v11;
  v129[15] = @"GlobalAppLaunchCount7Days";
  globalAppLaunchCount7Days = [(ATXModeSetupPredictionMetrics *)self globalAppLaunchCount7Days];
  v113 = globalAppLaunchCount7Days;
  if (globalAppLaunchCount7Days)
  {
    v13 = globalAppLaunchCount7Days;
  }

  else
  {
    v13 = &unk_283A55F40;
  }

  v130[15] = v13;
  v129[16] = @"GlobalAppLaunchCountToday";
  globalAppLaunchCountToday = [(ATXModeSetupPredictionMetrics *)self globalAppLaunchCountToday];
  v112 = globalAppLaunchCountToday;
  if (globalAppLaunchCountToday)
  {
    v15 = globalAppLaunchCountToday;
  }

  else
  {
    v15 = &unk_283A55F40;
  }

  v130[16] = v15;
  v129[17] = @"ModeAppLaunchCountBasedOnGlobalPriors7Days";
  modeAppLaunchCountBasedOnGlobalPriors7Days = [(ATXModeSetupPredictionMetrics *)self modeAppLaunchCountBasedOnGlobalPriors7Days];
  v111 = modeAppLaunchCountBasedOnGlobalPriors7Days;
  if (modeAppLaunchCountBasedOnGlobalPriors7Days)
  {
    v17 = modeAppLaunchCountBasedOnGlobalPriors7Days;
  }

  else
  {
    v17 = &unk_283A55F40;
  }

  v130[17] = v17;
  v129[18] = @"ModeAppLaunchCountBasedOnGlobalPriorsToday";
  modeAppLaunchCountBasedOnGlobalPriorsToday = [(ATXModeSetupPredictionMetrics *)self modeAppLaunchCountBasedOnGlobalPriorsToday];
  v110 = modeAppLaunchCountBasedOnGlobalPriorsToday;
  if (modeAppLaunchCountBasedOnGlobalPriorsToday)
  {
    v19 = modeAppLaunchCountBasedOnGlobalPriorsToday;
  }

  else
  {
    v19 = &unk_283A55F40;
  }

  v130[18] = v19;
  v129[19] = @"ModeInferredDuration7Days";
  modeInferredDuration7Days = [(ATXModeSetupPredictionMetrics *)self modeInferredDuration7Days];
  v109 = modeInferredDuration7Days;
  if (modeInferredDuration7Days)
  {
    v21 = modeInferredDuration7Days;
  }

  else
  {
    v21 = &unk_283A55F40;
  }

  v130[19] = v21;
  v129[20] = @"ModeInferredDurationToday";
  modeInferredDurationToday = [(ATXModeSetupPredictionMetrics *)self modeInferredDurationToday];
  v108 = modeInferredDurationToday;
  if (modeInferredDurationToday)
  {
    v23 = modeInferredDurationToday;
  }

  else
  {
    v23 = &unk_283A55F40;
  }

  v130[20] = v23;
  v129[21] = @"ModeInferredCount7Days";
  modeInferredCount7Days = [(ATXModeSetupPredictionMetrics *)self modeInferredCount7Days];
  v107 = modeInferredCount7Days;
  if (modeInferredCount7Days)
  {
    v25 = modeInferredCount7Days;
  }

  else
  {
    v25 = &unk_283A55F40;
  }

  v130[21] = v25;
  v129[22] = @"ModeInferredCountToday";
  modeInferredCountToday = [(ATXModeSetupPredictionMetrics *)self modeInferredCountToday];
  v106 = modeInferredCountToday;
  if (modeInferredCountToday)
  {
    v27 = modeInferredCountToday;
  }

  else
  {
    v27 = &unk_283A55F40;
  }

  v130[22] = v27;
  v129[23] = @"ModeTurnedOnCount7Days";
  modeTurnedOnCount7Days = [(ATXModeSetupPredictionMetrics *)self modeTurnedOnCount7Days];
  v105 = modeTurnedOnCount7Days;
  if (modeTurnedOnCount7Days)
  {
    v29 = modeTurnedOnCount7Days;
  }

  else
  {
    v29 = &unk_283A55F40;
  }

  v130[23] = v29;
  v129[24] = @"ModeTurnedOnCountToday";
  modeTurnedOnCountToday = [(ATXModeSetupPredictionMetrics *)self modeTurnedOnCountToday];
  v104 = modeTurnedOnCountToday;
  if (modeTurnedOnCountToday)
  {
    v31 = modeTurnedOnCountToday;
  }

  else
  {
    v31 = &unk_283A55F40;
  }

  v130[24] = v31;
  v129[25] = @"ModeTurnedOnDuration7Days";
  modeTurnedOnDuration7Days = [(ATXModeSetupPredictionMetrics *)self modeTurnedOnDuration7Days];
  v103 = modeTurnedOnDuration7Days;
  if (modeTurnedOnDuration7Days)
  {
    v33 = modeTurnedOnDuration7Days;
  }

  else
  {
    v33 = &unk_283A55F40;
  }

  v130[25] = v33;
  v129[26] = @"ModeTurnedOnDurationToday";
  modeTurnedOnDurationToday = [(ATXModeSetupPredictionMetrics *)self modeTurnedOnDurationToday];
  v102 = modeTurnedOnDurationToday;
  if (modeTurnedOnDurationToday)
  {
    v35 = modeTurnedOnDurationToday;
  }

  else
  {
    v35 = &unk_283A55F40;
  }

  v130[26] = v35;
  v129[27] = @"ModeNotificationsClearedCount7Days";
  modeNotificationsClearedCount7Days = [(ATXModeSetupPredictionMetrics *)self modeNotificationsClearedCount7Days];
  v101 = modeNotificationsClearedCount7Days;
  if (modeNotificationsClearedCount7Days)
  {
    v37 = modeNotificationsClearedCount7Days;
  }

  else
  {
    v37 = &unk_283A55F40;
  }

  v130[27] = v37;
  v129[28] = @"ModeNotificationsClearedCountToday";
  modeNotificationsClearedCountToday = [(ATXModeSetupPredictionMetrics *)self modeNotificationsClearedCountToday];
  v100 = modeNotificationsClearedCountToday;
  if (modeNotificationsClearedCountToday)
  {
    v39 = modeNotificationsClearedCountToday;
  }

  else
  {
    v39 = &unk_283A55F40;
  }

  v130[28] = v39;
  v129[29] = @"GlobalNotificationsClearedCount7Days";
  globalNotificationsClearedCount7Days = [(ATXModeSetupPredictionMetrics *)self globalNotificationsClearedCount7Days];
  v99 = globalNotificationsClearedCount7Days;
  if (globalNotificationsClearedCount7Days)
  {
    v41 = globalNotificationsClearedCount7Days;
  }

  else
  {
    v41 = &unk_283A55F40;
  }

  v130[29] = v41;
  v129[30] = @"GlobalNotificationsClearedCountToday";
  globalNotificationsClearedCountToday = [(ATXModeSetupPredictionMetrics *)self globalNotificationsClearedCountToday];
  v98 = globalNotificationsClearedCountToday;
  if (globalNotificationsClearedCountToday)
  {
    v43 = globalNotificationsClearedCountToday;
  }

  else
  {
    v43 = &unk_283A55F40;
  }

  v130[30] = v43;
  v129[31] = @"ModeNotificationsCount7Days";
  modeNotificationsCount7Days = [(ATXModeSetupPredictionMetrics *)self modeNotificationsCount7Days];
  v97 = modeNotificationsCount7Days;
  if (modeNotificationsCount7Days)
  {
    v45 = modeNotificationsCount7Days;
  }

  else
  {
    v45 = &unk_283A55F40;
  }

  v130[31] = v45;
  v129[32] = @"ModeNotificationsCountToday";
  modeNotificationsCountToday = [(ATXModeSetupPredictionMetrics *)self modeNotificationsCountToday];
  v96 = modeNotificationsCountToday;
  if (modeNotificationsCountToday)
  {
    v47 = modeNotificationsCountToday;
  }

  else
  {
    v47 = &unk_283A55F40;
  }

  v130[32] = v47;
  v129[33] = @"GlobalNotificationsCount7Days";
  globalNotificationsCount7Days = [(ATXModeSetupPredictionMetrics *)self globalNotificationsCount7Days];
  v95 = globalNotificationsCount7Days;
  if (globalNotificationsCount7Days)
  {
    v49 = globalNotificationsCount7Days;
  }

  else
  {
    v49 = &unk_283A55F40;
  }

  v130[33] = v49;
  v129[34] = @"GlobalNotificationsCountToday";
  globalNotificationsCountToday = [(ATXModeSetupPredictionMetrics *)self globalNotificationsCountToday];
  v94 = globalNotificationsCountToday;
  if (globalNotificationsCountToday)
  {
    v51 = globalNotificationsCountToday;
  }

  else
  {
    v51 = &unk_283A55F40;
  }

  v130[34] = v51;
  v129[35] = @"ModeWeightedAppLaunchCountBasedOnGlobalPriors7Days";
  modeWeightedAppLaunchCountBasedOnGlobalPriors7Days = [(ATXModeSetupPredictionMetrics *)self modeWeightedAppLaunchCountBasedOnGlobalPriors7Days];
  v93 = modeWeightedAppLaunchCountBasedOnGlobalPriors7Days;
  if (modeWeightedAppLaunchCountBasedOnGlobalPriors7Days)
  {
    v53 = modeWeightedAppLaunchCountBasedOnGlobalPriors7Days;
  }

  else
  {
    v53 = &unk_283A55F40;
  }

  v130[35] = v53;
  v129[36] = @"ModeWeightedAppLaunchCountBasedOnGlobalPriorsToday";
  modeWeightedAppLaunchCountBasedOnGlobalPriorsToday = [(ATXModeSetupPredictionMetrics *)self modeWeightedAppLaunchCountBasedOnGlobalPriorsToday];
  v92 = modeWeightedAppLaunchCountBasedOnGlobalPriorsToday;
  if (modeWeightedAppLaunchCountBasedOnGlobalPriorsToday)
  {
    v55 = modeWeightedAppLaunchCountBasedOnGlobalPriorsToday;
  }

  else
  {
    v55 = &unk_283A55F40;
  }

  v130[36] = v55;
  v129[37] = @"GlobalPosterConfigurationsCount";
  globalPosterConfigurationsCount = [(ATXModeSetupPredictionMetrics *)self globalPosterConfigurationsCount];
  v91 = globalPosterConfigurationsCount;
  if (globalPosterConfigurationsCount)
  {
    v57 = globalPosterConfigurationsCount;
  }

  else
  {
    v57 = &unk_283A55F40;
  }

  v130[37] = v57;
  v129[38] = @"GlobalAppInterruptionsCount7Days";
  globalAppInterruptionsCount7Days = [(ATXModeSetupPredictionMetrics *)self globalAppInterruptionsCount7Days];
  v90 = globalAppInterruptionsCount7Days;
  if (globalAppInterruptionsCount7Days)
  {
    v59 = globalAppInterruptionsCount7Days;
  }

  else
  {
    v59 = &unk_283A55F40;
  }

  v130[38] = v59;
  v129[39] = @"GlobalAppInterruptionsCountToday";
  globalAppInterruptionsCountToday = [(ATXModeSetupPredictionMetrics *)self globalAppInterruptionsCountToday];
  v89 = globalAppInterruptionsCountToday;
  if (globalAppInterruptionsCountToday)
  {
    v61 = globalAppInterruptionsCountToday;
  }

  else
  {
    v61 = &unk_283A55F40;
  }

  v130[39] = v61;
  v129[40] = @"ModeAppInterruptionsCountInModeInferred7Days";
  modeAppInterruptionsCountInModeInferred7Days = [(ATXModeSetupPredictionMetrics *)self modeAppInterruptionsCountInModeInferred7Days];
  v88 = modeAppInterruptionsCountInModeInferred7Days;
  if (modeAppInterruptionsCountInModeInferred7Days)
  {
    v63 = modeAppInterruptionsCountInModeInferred7Days;
  }

  else
  {
    v63 = &unk_283A55F40;
  }

  v130[40] = v63;
  v129[41] = @"ModeAppInterruptionsCountInModeInferredToday";
  modeAppInterruptionsCountInModeInferredToday = [(ATXModeSetupPredictionMetrics *)self modeAppInterruptionsCountInModeInferredToday];
  v87 = modeAppInterruptionsCountInModeInferredToday;
  if (modeAppInterruptionsCountInModeInferredToday)
  {
    v65 = modeAppInterruptionsCountInModeInferredToday;
  }

  else
  {
    v65 = &unk_283A55F40;
  }

  v130[41] = v65;
  v129[42] = @"ModeAppInterruptionsCountBasedOnAllowListOfInferredMode7Days";
  modeAppInterruptionsCountBasedOnAllowListOfInferredMode7Days = [(ATXModeSetupPredictionMetrics *)self modeAppInterruptionsCountBasedOnAllowListOfInferredMode7Days];
  v67 = modeAppInterruptionsCountBasedOnAllowListOfInferredMode7Days;
  if (modeAppInterruptionsCountBasedOnAllowListOfInferredMode7Days)
  {
    v68 = modeAppInterruptionsCountBasedOnAllowListOfInferredMode7Days;
  }

  else
  {
    v68 = &unk_283A55F40;
  }

  v130[42] = v68;
  v129[43] = @"ModeAppInterruptionsCountBasedOnAllowListOfInferredModeToday";
  modeAppInterruptionsCountBasedOnAllowListOfInferredModeToday = [(ATXModeSetupPredictionMetrics *)self modeAppInterruptionsCountBasedOnAllowListOfInferredModeToday];
  v70 = modeAppInterruptionsCountBasedOnAllowListOfInferredModeToday;
  if (modeAppInterruptionsCountBasedOnAllowListOfInferredModeToday)
  {
    v71 = modeAppInterruptionsCountBasedOnAllowListOfInferredModeToday;
  }

  else
  {
    v71 = &unk_283A55F40;
  }

  v130[43] = v71;
  v129[44] = @"ModeAppInterruptionsCountBasedOnDenyListOfInferredMode7Days";
  modeAppInterruptionsCountBasedOnDenyListOfInferredMode7Days = [(ATXModeSetupPredictionMetrics *)self modeAppInterruptionsCountBasedOnDenyListOfInferredMode7Days];
  v73 = modeAppInterruptionsCountBasedOnDenyListOfInferredMode7Days;
  if (modeAppInterruptionsCountBasedOnDenyListOfInferredMode7Days)
  {
    v74 = modeAppInterruptionsCountBasedOnDenyListOfInferredMode7Days;
  }

  else
  {
    v74 = &unk_283A55F40;
  }

  v130[44] = v74;
  v129[45] = @"ModeAppInterruptionsCountBasedOnDenyListOfInferredModeToday";
  modeAppInterruptionsCountBasedOnDenyListOfInferredModeToday = [(ATXModeSetupPredictionMetrics *)self modeAppInterruptionsCountBasedOnDenyListOfInferredModeToday];
  v76 = modeAppInterruptionsCountBasedOnDenyListOfInferredModeToday;
  if (modeAppInterruptionsCountBasedOnDenyListOfInferredModeToday)
  {
    v77 = modeAppInterruptionsCountBasedOnDenyListOfInferredModeToday;
  }

  else
  {
    v77 = &unk_283A55F40;
  }

  v130[45] = v77;
  v129[46] = @"TrialTreatmentId";
  trialTreatmentId = [(ATXModeSetupPredictionMetrics *)self trialTreatmentId];
  null = trialTreatmentId;
  if (!trialTreatmentId)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v130[46] = null;
  v129[47] = @"TrialExperimentId";
  trialExperimentId = [(ATXModeSetupPredictionMetrics *)self trialExperimentId];
  null2 = trialExperimentId;
  if (!trialExperimentId)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v130[47] = null2;
  v129[48] = @"TrialDeploymentId";
  trialDeploymentId = [(ATXModeSetupPredictionMetrics *)self trialDeploymentId];
  null3 = trialDeploymentId;
  if (!trialDeploymentId)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v130[48] = null3;
  v86 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v130 forKeys:v129 count:49];
  if (!trialDeploymentId)
  {
  }

  if (!trialExperimentId)
  {
  }

  if (!trialTreatmentId)
  {
  }

  if (!v128)
  {
  }

  return v86;
}

- (id)description
{
  v39 = MEMORY[0x277CCACA8];
  modeName = [(ATXModeSetupPredictionMetrics *)self modeName];
  if ([(ATXModeSetupPredictionMetrics *)self modeIsCreated])
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v38 = v3;
  if ([(ATXModeSetupPredictionMetrics *)self modeWasCreatedWithin7Days])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v37 = v4;
  if ([(ATXModeSetupPredictionMetrics *)self modeWasCreatedToday])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v36 = v5;
  if ([(ATXModeSetupPredictionMetrics *)self modeHasActivatedWithin7Days])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v35 = v6;
  if ([(ATXModeSetupPredictionMetrics *)self modeHasActivatedToday])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v34 = v7;
  if ([(ATXModeSetupPredictionMetrics *)self wasOfferedDigestOnboardingSuggestion])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v33 = v8;
  if ([(ATXModeSetupPredictionMetrics *)self hasSetupDigestThroughOnboardingSuggestion])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v32 = v9;
  if ([(ATXModeSetupPredictionMetrics *)self isDigestCurrentlyEnabled])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v31 = v10;
  if ([(ATXModeSetupPredictionMetrics *)self modeHasLinkedPoster])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v30 = v11;
  if ([(ATXModeSetupPredictionMetrics *)self modeHasSmartActivationEnabled])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v29 = v12;
  globalAllPagesFolderCountBucket = [(ATXModeSetupPredictionMetrics *)self globalAllPagesFolderCountBucket];
  globalAllPagesWidgetCountBucket = [(ATXModeSetupPredictionMetrics *)self globalAllPagesWidgetCountBucket];
  homePageFolderCountBucket = [(ATXModeSetupPredictionMetrics *)self homePageFolderCountBucket];
  homePageWidgetCountBucket = [(ATXModeSetupPredictionMetrics *)self homePageWidgetCountBucket];
  globalAppLaunchCount7Days = [(ATXModeSetupPredictionMetrics *)self globalAppLaunchCount7Days];
  globalAppLaunchCountToday = [(ATXModeSetupPredictionMetrics *)self globalAppLaunchCountToday];
  modeAppLaunchCountBasedOnGlobalPriors7Days = [(ATXModeSetupPredictionMetrics *)self modeAppLaunchCountBasedOnGlobalPriors7Days];
  modeAppLaunchCountBasedOnGlobalPriorsToday = [(ATXModeSetupPredictionMetrics *)self modeAppLaunchCountBasedOnGlobalPriorsToday];
  modeInferredDuration7Days = [(ATXModeSetupPredictionMetrics *)self modeInferredDuration7Days];
  modeInferredDurationToday = [(ATXModeSetupPredictionMetrics *)self modeInferredDurationToday];
  modeInferredCount7Days = [(ATXModeSetupPredictionMetrics *)self modeInferredCount7Days];
  modeInferredCountToday = [(ATXModeSetupPredictionMetrics *)self modeInferredCountToday];
  modeTurnedOnCount7Days = [(ATXModeSetupPredictionMetrics *)self modeTurnedOnCount7Days];
  modeTurnedOnCountToday = [(ATXModeSetupPredictionMetrics *)self modeTurnedOnCountToday];
  modeTurnedOnDuration7Days = [(ATXModeSetupPredictionMetrics *)self modeTurnedOnDuration7Days];
  modeTurnedOnDurationToday = [(ATXModeSetupPredictionMetrics *)self modeTurnedOnDurationToday];
  modeNotificationsClearedCount7Days = [(ATXModeSetupPredictionMetrics *)self modeNotificationsClearedCount7Days];
  modeNotificationsClearedCountToday = [(ATXModeSetupPredictionMetrics *)self modeNotificationsClearedCountToday];
  globalNotificationsClearedCount7Days = [(ATXModeSetupPredictionMetrics *)self globalNotificationsClearedCount7Days];
  globalNotificationsClearedCountToday = [(ATXModeSetupPredictionMetrics *)self globalNotificationsClearedCountToday];
  modeNotificationsCount7Days = [(ATXModeSetupPredictionMetrics *)self modeNotificationsCount7Days];
  modeNotificationsCountToday = [(ATXModeSetupPredictionMetrics *)self modeNotificationsCountToday];
  globalNotificationsCount7Days = [(ATXModeSetupPredictionMetrics *)self globalNotificationsCount7Days];
  globalNotificationsCountToday = [(ATXModeSetupPredictionMetrics *)self globalNotificationsCountToday];
  modeWeightedAppLaunchCountBasedOnGlobalPriors7Days = [(ATXModeSetupPredictionMetrics *)self modeWeightedAppLaunchCountBasedOnGlobalPriors7Days];
  modeWeightedAppLaunchCountBasedOnGlobalPriorsToday = [(ATXModeSetupPredictionMetrics *)self modeWeightedAppLaunchCountBasedOnGlobalPriorsToday];
  globalPosterConfigurationsCount = [(ATXModeSetupPredictionMetrics *)self globalPosterConfigurationsCount];
  globalAppInterruptionsCount7Days = [(ATXModeSetupPredictionMetrics *)self globalAppInterruptionsCount7Days];
  globalAppInterruptionsCountToday = [(ATXModeSetupPredictionMetrics *)self globalAppInterruptionsCountToday];
  modeAppInterruptionsCountInModeInferred7Days = [(ATXModeSetupPredictionMetrics *)self modeAppInterruptionsCountInModeInferred7Days];
  modeAppInterruptionsCountInModeInferredToday = [(ATXModeSetupPredictionMetrics *)self modeAppInterruptionsCountInModeInferredToday];
  modeAppInterruptionsCountBasedOnAllowListOfInferredMode7Days = [(ATXModeSetupPredictionMetrics *)self modeAppInterruptionsCountBasedOnAllowListOfInferredMode7Days];
  modeAppInterruptionsCountBasedOnAllowListOfInferredModeToday = [(ATXModeSetupPredictionMetrics *)self modeAppInterruptionsCountBasedOnAllowListOfInferredModeToday];
  modeAppInterruptionsCountBasedOnDenyListOfInferredMode7Days = [(ATXModeSetupPredictionMetrics *)self modeAppInterruptionsCountBasedOnDenyListOfInferredMode7Days];
  modeAppInterruptionsCountBasedOnDenyListOfInferredModeToday = [(ATXModeSetupPredictionMetrics *)self modeAppInterruptionsCountBasedOnDenyListOfInferredModeToday];
  trialTreatmentId = [(ATXModeSetupPredictionMetrics *)self trialTreatmentId];
  trialExperimentId = [(ATXModeSetupPredictionMetrics *)self trialExperimentId];
  trialDeploymentId = [(ATXModeSetupPredictionMetrics *)self trialDeploymentId];
  v40 = [v39 stringWithFormat:@"ATXModeSetupPredictionMetrics\nModeName:%@ \nModeIsCreated:%@ \nModeWasCreatedWithin7Days:%@ \nModeWasCreatedToday:%@ \nModeHasActivatedWithin7Days:%@ \nModeHasActivatedToday:%@ \nWasOfferedDigestOnboardingSuggestion:%@ \nHasSetupDigestThroughOnboardingSuggestion:%@ \nIsDigestCurrentlyEnabled:%@ \nModeHasLinkedPoster:%@ \nModeHasSmartActivationEnabled:%@ \nGlobalAllPagesFolderCountBucket:%@ \nGlobalAllPagesWidgetCountBucket:%@ \nHomePageFolderCountBucket:%@ \nHomePageWidgetCountBucket:%@ \nGlobalAppLaunchCount7Days:%@ \nGlobalAppLaunchCountToday:%@ \nModeAppLaunchCountBasedOnGlobalPriors7Days:%@ \nModeAppLaunchCountBasedOnGlobalPriorsToday:%@ \nModeInferredDuration7Days:%@ \nModeInferredDurationToday:%@ \nModeInferredCount7Days:%@ \nModeInferredCountToday:%@ \nModeTurnedOnCount7Days:%@ \nModeTurnedOnCountToday:%@ \nModeTurnedOnDuration7Days:%@ \nModeTurnedOnDurationToday:%@ \nModeNotificationsClearedCount7Days:%@ \nModeNotificationsClearedCountToday:%@ \nGlobalNotificationsClearedCount7Days:%@ \nGlobalNotificationsClearedCountToday:%@ \nModeNotificationsCount7Days:%@ \nModeNotificationsCountToday:%@ \nGlobalNotificationsCount7Days:%@ \nGlobalNotificationsCountToday:%@ \nModeWeightedAppLaunchCountBasedOnGlobalPriors7Days:%@ \nModeWeightedAppLaunchCountBasedOnGlobalPriorsToday:%@ \nGlobalPosterConfigurationsCount:%@ \nGlobalAppInterruptionsCount7Days:%@ \nGlobalAppInterruptionsCountToday:%@ \nModeAppInterruptionsCountInModeInferred7Days:%@ \nModeAppInterruptionsCountInModeInferredToday:%@ \nModeAppInterruptionsCountBasedOnAllowListOfInferredMode7Days:%@ \nModeAppInterruptionsCountBasedOnAllowListOfInferredModeToday:%@ \nModeAppInterruptionsCountBasedOnDenyListOfInferredMode7Days:%@ \nModeAppInterruptionsCountBasedOnDenyListOfInferredModeToday:%@ \nTrialTreatmentId:%@ \nTrialExperimentId:%@ \nTrialDeploymentId:%@ \n", modeName, v38, v37, v36, v35, v34, v33, v32, v31, v30, v29, globalAllPagesFolderCountBucket, globalAllPagesWidgetCountBucket, homePageFolderCountBucket, homePageWidgetCountBucket, globalAppLaunchCount7Days, globalAppLaunchCountToday, modeAppLaunchCountBasedOnGlobalPriors7Days, modeAppLaunchCountBasedOnGlobalPriorsToday, modeInferredDuration7Days, modeInferredDurationToday, modeInferredCount7Days, modeInferredCountToday, modeTurnedOnCount7Days, modeTurnedOnCountToday, modeTurnedOnDuration7Days, modeTurnedOnDurationToday, modeNotificationsClearedCount7Days, modeNotificationsClearedCountToday, globalNotificationsClearedCount7Days, globalNotificationsClearedCountToday, modeNotificationsCount7Days, modeNotificationsCountToday, globalNotificationsCount7Days, globalNotificationsCountToday, modeWeightedAppLaunchCountBasedOnGlobalPriors7Days, modeWeightedAppLaunchCountBasedOnGlobalPriorsToday, globalPosterConfigurationsCount, globalAppInterruptionsCount7Days, globalAppInterruptionsCountToday, modeAppInterruptionsCountInModeInferred7Days, modeAppInterruptionsCountInModeInferredToday, modeAppInterruptionsCountBasedOnAllowListOfInferredMode7Days, modeAppInterruptionsCountBasedOnAllowListOfInferredModeToday, modeAppInterruptionsCountBasedOnDenyListOfInferredMode7Days, modeAppInterruptionsCountBasedOnDenyListOfInferredModeToday, trialTreatmentId, trialExperimentId, trialDeploymentId];

  return v40;
}

@end