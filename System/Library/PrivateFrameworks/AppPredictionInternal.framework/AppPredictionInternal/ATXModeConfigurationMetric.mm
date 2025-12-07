@interface ATXModeConfigurationMetric
- (ATXModeConfigurationMetric)init;
- (id)coreAnalyticsDictionary;
- (id)description;
- (unint64_t)cappedForPrivacyWithValue:(int64_t)value;
@end

@implementation ATXModeConfigurationMetric

- (ATXModeConfigurationMetric)init
{
  v3.receiver = self;
  v3.super_class = ATXModeConfigurationMetric;
  result = [(_ATXCoreAnalyticsMetric *)&v3 init];
  if (result)
  {
    result->_numCustomHomeScreens = 0;
  }

  return result;
}

- (id)coreAnalyticsDictionary
{
  v57[36] = *MEMORY[0x277D85DE8];
  v56[0] = @"modeIdentifier";
  modeIdentifier = [(ATXModeConfigurationMetric *)self modeIdentifier];
  if (modeIdentifier)
  {
    modeIdentifier2 = [(ATXModeConfigurationMetric *)self modeIdentifier];
    null = [ATXCoreAnalyticsFieldUtilities hashBoundString:?];
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    modeIdentifier2 = null;
  }

  v25 = null;
  v57[0] = null;
  v56[1] = @"modeSemanticType";
  modeSemanticType = [(ATXModeConfigurationMetric *)self modeSemanticType];
  v5 = modeSemanticType;
  if (!modeSemanticType)
  {
    modeSemanticType = [MEMORY[0x277CBEB68] null];
  }

  v24 = modeSemanticType;
  v57[1] = modeSemanticType;
  v56[2] = @"hasSmartTrigger";
  v52 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeConfigurationMetric hasSmartTrigger](self, "hasSmartTrigger")}];
  v57[2] = v52;
  v56[3] = @"hasAreaTrigger";
  v51 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeConfigurationMetric hasAreaTrigger](self, "hasAreaTrigger")}];
  v57[3] = v51;
  v56[4] = @"hasTimeTrigger";
  v50 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeConfigurationMetric hasTimeTrigger](self, "hasTimeTrigger")}];
  v57[4] = v50;
  v56[5] = @"hasAppTrigger";
  v49 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeConfigurationMetric hasAppTrigger](self, "hasAppTrigger")}];
  v57[5] = v49;
  v56[6] = @"hasScreenActivityTrigger";
  v48 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeConfigurationMetric hasScreenActivityTrigger](self, "hasScreenActivityTrigger")}];
  v57[6] = v48;
  v56[7] = @"hasWorkoutTrigger";
  v47 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeConfigurationMetric hasWorkoutTrigger](self, "hasWorkoutTrigger")}];
  v57[7] = v47;
  v56[8] = @"hasSleepTrigger";
  v46 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeConfigurationMetric hasSleepTrigger](self, "hasSleepTrigger")}];
  v57[8] = v46;
  v56[9] = @"hasDrivingTrigger";
  v45 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeConfigurationMetric hasDrivingTrigger](self, "hasDrivingTrigger")}];
  v57[9] = v45;
  v56[10] = @"numAllowedApps";
  v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXModeConfigurationMetric cappedForPrivacyWithValue:](self, "cappedForPrivacyWithValue:", -[ATXModeConfigurationMetric numAllowedApps](self, "numAllowedApps"))}];
  v57[10] = v44;
  v56[11] = @"numAllowedContacts";
  v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXModeConfigurationMetric cappedForPrivacyWithValue:](self, "cappedForPrivacyWithValue:", -[ATXModeConfigurationMetric numAllowedContacts](self, "numAllowedContacts"))}];
  v57[11] = v43;
  v56[12] = @"isAutomaticallyGenerated";
  v42 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeConfigurationMetric isAutomaticallyGenerated](self, "isAutomaticallyGenerated")}];
  v57[12] = v42;
  v56[13] = @"doesImpactAvailability";
  v41 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeConfigurationMetric doesImpactAvailability](self, "doesImpactAvailability")}];
  v57[13] = v41;
  v56[14] = @"hasCustomHomeScreen";
  v40 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeConfigurationMetric hasCustomHomeScreen](self, "hasCustomHomeScreen")}];
  v57[14] = v40;
  v56[15] = @"numCustomHomeScreens";
  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXModeConfigurationMetric numCustomHomeScreens](self, "numCustomHomeScreens")}];
  v57[15] = v39;
  v56[16] = @"hasCustomHomeScreenUsedInOtherModes";
  v38 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeConfigurationMetric hasCustomHomeScreenUsedInOtherModes](self, "hasCustomHomeScreenUsedInOtherModes")}];
  v57[16] = v38;
  v56[17] = @"numLockScreenPosters";
  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXModeConfigurationMetric cappedForPrivacyWithValue:](self, "cappedForPrivacyWithValue:", -[ATXModeConfigurationMetric numLockScreenPosters](self, "numLockScreenPosters"))}];
  v57[17] = v37;
  v56[18] = @"numDeniedApps";
  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXModeConfigurationMetric cappedForPrivacyWithValue:](self, "cappedForPrivacyWithValue:", -[ATXModeConfigurationMetric numDeniedApps](self, "numDeniedApps"))}];
  v57[18] = v36;
  v56[19] = @"numDeniedContacts";
  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXModeConfigurationMetric cappedForPrivacyWithValue:](self, "cappedForPrivacyWithValue:", -[ATXModeConfigurationMetric numDeniedContacts](self, "numDeniedContacts"))}];
  v57[19] = v35;
  v56[20] = @"appConfigurationType";
  appConfigurationType = [(ATXModeConfigurationMetric *)self appConfigurationType];
  v7 = appConfigurationType;
  if (!appConfigurationType)
  {
    appConfigurationType = [MEMORY[0x277CBEB68] null];
  }

  v23 = appConfigurationType;
  v57[20] = appConfigurationType;
  v56[21] = @"contactConfigurationType";
  contactConfigurationType = [(ATXModeConfigurationMetric *)self contactConfigurationType];
  v33 = contactConfigurationType;
  if (!contactConfigurationType)
  {
    contactConfigurationType = [MEMORY[0x277CBEB68] null];
  }

  v34 = v7;
  v22 = contactConfigurationType;
  v57[21] = contactConfigurationType;
  v56[22] = @"numAcceptedSuggestedHomePages";
  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXModeConfigurationMetric cappedForPrivacyWithValue:](self, "cappedForPrivacyWithValue:", -[ATXModeConfigurationMetric numAcceptedSuggestedHomePages](self, "numAcceptedSuggestedHomePages"))}];
  v57[22] = v32;
  v56[23] = @"numAcceptedSuggestedLockScreens";
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXModeConfigurationMetric cappedForPrivacyWithValue:](self, "cappedForPrivacyWithValue:", -[ATXModeConfigurationMetric numAcceptedSuggestedLockScreens](self, "numAcceptedSuggestedLockScreens"))}];
  v57[23] = v31;
  v56[24] = @"numAcceptedSuggestedApps";
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXModeConfigurationMetric cappedForPrivacyWithValue:](self, "cappedForPrivacyWithValue:", -[ATXModeConfigurationMetric numAcceptedSuggestedApps](self, "numAcceptedSuggestedApps"))}];
  v57[24] = v30;
  v56[25] = @"numAcceptedSuggestedContacts";
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXModeConfigurationMetric cappedForPrivacyWithValue:](self, "cappedForPrivacyWithValue:", -[ATXModeConfigurationMetric numAcceptedSuggestedContacts](self, "numAcceptedSuggestedContacts"))}];
  v57[25] = v29;
  v56[26] = @"didRemoveSuggestedPage";
  v28 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeConfigurationMetric didRemoveSuggestedPage](self, "didRemoveSuggestedPage")}];
  v57[26] = v28;
  v56[27] = @"numAppConfigurations";
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXModeConfigurationMetric cappedForPrivacyWithValue:](self, "cappedForPrivacyWithValue:", -[ATXModeConfigurationMetric numAppConfigurations](self, "numAppConfigurations"))}];
  v57[27] = v27;
  v56[28] = @"isSharingAcrossDevices";
  v26 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeConfigurationMetric isSharingAcrossDevices](self, "isSharingAcrossDevices")}];
  v57[28] = v26;
  v56[29] = @"treatmentId";
  treatmentId = [(ATXModeConfigurationMetric *)self treatmentId];
  v10 = treatmentId;
  if (!treatmentId)
  {
    treatmentId = [MEMORY[0x277CBEB68] null];
  }

  v21 = treatmentId;
  v57[29] = treatmentId;
  v56[30] = @"experimentId";
  experimentId = [(ATXModeConfigurationMetric *)self experimentId];
  null2 = experimentId;
  if (!experimentId)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v53 = v5;
  v57[30] = null2;
  v56[31] = @"deploymentId";
  deploymentId = [(ATXModeConfigurationMetric *)self deploymentId];
  null3 = deploymentId;
  if (!deploymentId)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v57[31] = null3;
  v56[32] = @"isSleepMigrated";
  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeConfigurationMetric isSleepMigrated](self, "isSleepMigrated")}];
  v57[32] = v15;
  v56[33] = @"wasQuickStartPlatterShown";
  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeConfigurationMetric wasQuickStartPlatterShown](self, "wasQuickStartPlatterShown")}];
  v57[33] = v16;
  v56[34] = @"wasColoringBookSeen";
  v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeConfigurationMetric wasColoringBookSeen](self, "wasColoringBookSeen")}];
  v57[34] = v17;
  v56[35] = @"intelligentBreakthroughEnabled";
  v18 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeConfigurationMetric isIntelligentBreakthroughEnabled](self, "isIntelligentBreakthroughEnabled")}];
  v57[35] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:36];

  if (!deploymentId)
  {
  }

  if (!experimentId)
  {
  }

  if (!v10)
  {
  }

  if (!v33)
  {
  }

  if (!v34)
  {
  }

  if (!v53)
  {
  }

  if (modeIdentifier)
  {
  }

  return v19;
}

- (id)description
{
  v37 = MEMORY[0x277CCACA8];
  modeIdentifier = [(ATXModeConfigurationMetric *)self modeIdentifier];
  modeSemanticType = [(ATXModeConfigurationMetric *)self modeSemanticType];
  hasSmartTrigger = [(ATXModeConfigurationMetric *)self hasSmartTrigger];
  hasAreaTrigger = [(ATXModeConfigurationMetric *)self hasAreaTrigger];
  hasTimeTrigger = [(ATXModeConfigurationMetric *)self hasTimeTrigger];
  hasAppTrigger = [(ATXModeConfigurationMetric *)self hasAppTrigger];
  hasScreenActivityTrigger = [(ATXModeConfigurationMetric *)self hasScreenActivityTrigger];
  hasWorkoutTrigger = [(ATXModeConfigurationMetric *)self hasWorkoutTrigger];
  hasSleepTrigger = [(ATXModeConfigurationMetric *)self hasSleepTrigger];
  hasDrivingTrigger = [(ATXModeConfigurationMetric *)self hasDrivingTrigger];
  numAllowedApps = [(ATXModeConfigurationMetric *)self numAllowedApps];
  numAllowedContacts = [(ATXModeConfigurationMetric *)self numAllowedContacts];
  isAutomaticallyGenerated = [(ATXModeConfigurationMetric *)self isAutomaticallyGenerated];
  doesImpactAvailability = [(ATXModeConfigurationMetric *)self doesImpactAvailability];
  hasCustomHomeScreen = [(ATXModeConfigurationMetric *)self hasCustomHomeScreen];
  numCustomHomeScreens = [(ATXModeConfigurationMetric *)self numCustomHomeScreens];
  hasCustomHomeScreenUsedInOtherModes = [(ATXModeConfigurationMetric *)self hasCustomHomeScreenUsedInOtherModes];
  numDeniedApps = [(ATXModeConfigurationMetric *)self numDeniedApps];
  numDeniedContacts = [(ATXModeConfigurationMetric *)self numDeniedContacts];
  appConfigurationType = [(ATXModeConfigurationMetric *)self appConfigurationType];
  contactConfigurationType = [(ATXModeConfigurationMetric *)self contactConfigurationType];
  numAcceptedSuggestedHomePages = [(ATXModeConfigurationMetric *)self numAcceptedSuggestedHomePages];
  numAcceptedSuggestedLockScreens = [(ATXModeConfigurationMetric *)self numAcceptedSuggestedLockScreens];
  numAcceptedSuggestedApps = [(ATXModeConfigurationMetric *)self numAcceptedSuggestedApps];
  numAcceptedSuggestedContacts = [(ATXModeConfigurationMetric *)self numAcceptedSuggestedContacts];
  didRemoveSuggestedPage = [(ATXModeConfigurationMetric *)self didRemoveSuggestedPage];
  numAppConfigurations = [(ATXModeConfigurationMetric *)self numAppConfigurations];
  isSharingAcrossDevices = [(ATXModeConfigurationMetric *)self isSharingAcrossDevices];
  numLockScreenPosters = [(ATXModeConfigurationMetric *)self numLockScreenPosters];
  treatmentId = [(ATXModeConfigurationMetric *)self treatmentId];
  experimentId = [(ATXModeConfigurationMetric *)self experimentId];
  deploymentId = [(ATXModeConfigurationMetric *)self deploymentId];
  v9 = [v37 stringWithFormat:@"ATXModeConfigurationMetric modeIdentifier:%@\nmodeSemanticType:%@\nhasSmartTrigger:%d\nhasAreaTrigger:%d\nhasTimeTrigger:%d\nhasAppTrigger:%d\nhasScreenActivityTrigger:%d\nhasWorkoutTrigger:%d\nhasSleepTrigger:%d\nhasDrivingTrigger:%d\nnumAllowedApps:%lu\nnumAllowedContacts:%lu\nisAutomaticallyGenerated:%d\ndoesImpactAvailability:%d\nhasCustomHomeScreen:%d\nnumCustomHomeScreens:%lu\nhasCustomHomeScreenUsedInOtherModes:%d\nnumDeniedApps:%lu\nnumDeniedContacts:%lu\nappConfigurationType:%@\ncontactConfigurationType:%@\nnumAcceptedSuggestedHomePages:%lu\nnumAcceptedSuggestedLockScreens:%lu\nnumAcceptedSuggestedApps:%lu\nnumAcceptedSuggestedContacts:%lu\ndidRemoveSuggestedPage:%d\nnumAppConfigurations:%lu\nisSharingAcrossDevices:%d\nnumLockScreenPosters:%lu\ntreatmentId:%@\nexperimentId:%@\ndeploymentId:%@\nisSleepMigrated:%d\nwasQuickStartPlatterShown:%d\nwasColoringBookSeen:%d\nintelligentBreakthroughEnabled:%d\n", modeIdentifier, modeSemanticType, hasSmartTrigger, hasAreaTrigger, hasTimeTrigger, hasAppTrigger, hasScreenActivityTrigger, hasWorkoutTrigger, hasSleepTrigger, hasDrivingTrigger, numAllowedApps, numAllowedContacts, isAutomaticallyGenerated, doesImpactAvailability, hasCustomHomeScreen, numCustomHomeScreens, hasCustomHomeScreenUsedInOtherModes, numDeniedApps, numDeniedContacts, appConfigurationType, contactConfigurationType, numAcceptedSuggestedHomePages, numAcceptedSuggestedLockScreens, numAcceptedSuggestedApps, numAcceptedSuggestedContacts, didRemoveSuggestedPage, numAppConfigurations, isSharingAcrossDevices, numLockScreenPosters, treatmentId, experimentId, deploymentId, -[ATXModeConfigurationMetric isSleepMigrated](self, "isSleepMigrated"), -[ATXModeConfigurationMetric wasQuickStartPlatterShown](self, "wasQuickStartPlatterShown"), -[ATXModeConfigurationMetric wasColoringBookSeen](self, "wasColoringBookSeen"), -[ATXModeConfigurationMetric isIntelligentBreakthroughEnabled](self, "isIntelligentBreakthroughEnabled")];

  return v9;
}

- (unint64_t)cappedForPrivacyWithValue:(int64_t)value
{
  if (value >= 0x14)
  {
    return 20;
  }

  else
  {
    return value;
  }
}

@end