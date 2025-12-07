@interface ATXAppModeModel
- (ATXAppModeModel)initWithMode:(unint64_t)mode modeEntityStore:(id)store globalAppModeAffinityModel:(id)model;
- (double)scoreFromAppFeatures:(id)features;
- (id)featuresToModel:(id)model;
- (id)loadAppModeCoreMLModel;
- (id)scoredAppModeEntityWithAppFeatures:(id)features bundleId:(id)id;
- (id)scoredEntitiesWithXPCActivity:(id)activity;
- (void)addAppInterruptingSignalsForIdentifier:(id)identifier toAppSpecificFeatures:(id)features;
- (void)addEntitySpecificFeaturesToAppFeatures:(id)features;
- (void)addGlobalModeAffinityPriorsForIdentifier:(id)identifier toAppSpecificFeatures:(id)features;
- (void)addNotificationsSignalsForIdentifier:(id)identifier toAppSpecificFeatures:(id)features;
@end

@implementation ATXAppModeModel

- (ATXAppModeModel)initWithMode:(unint64_t)mode modeEntityStore:(id)store globalAppModeAffinityModel:(id)model
{
  storeCopy = store;
  modelCopy = model;
  v22.receiver = self;
  v22.super_class = ATXAppModeModel;
  v11 = [(ATXAppModeModel *)&v22 init];
  v12 = v11;
  if (v11)
  {
    v11->_mode = mode;
    loadAppModeCoreMLModel = [(ATXAppModeModel *)v11 loadAppModeCoreMLModel];
    appModeModel = v12->_appModeModel;
    v12->_appModeModel = loadAppModeCoreMLModel;

    objc_storeStrong(&v12->_modeEntityStore, store);
    v15 = objc_opt_new();
    notificationDatastore = v12->_notificationDatastore;
    v12->_notificationDatastore = v15;

    objc_storeStrong(&v12->_globalAppModeAffinityModel, model);
    v17 = [ATXModeEntityModelTrainer eventProviderForMode:mode];
    modeEventProvider = v12->_modeEventProvider;
    v12->_modeEventProvider = v17;

    v19 = objc_opt_new();
    modeAffinityModelsConstants = v12->_modeAffinityModelsConstants;
    v12->_modeAffinityModelsConstants = v19;
  }

  return v12;
}

- (id)scoredEntitiesWithXPCActivity:(id)activity
{
  activityCopy = activity;
  v5 = objc_opt_new();
  v6 = objc_alloc(MEMORY[0x277CBEB58]);
  bundleIds = [(ATXGlobalAppModeAffinityModel *)self->_globalAppModeAffinityModel bundleIds];
  v8 = [v6 initWithSet:bundleIds];

  v9 = objc_opt_new();
  v10 = &off_226871000;
  if (!self->_modeEventProvider)
  {
LABEL_15:
    [v8 minusSet:v9];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = *(v10 + 412);
    v32[2] = __49__ATXAppModeModel_scoredEntitiesWithXPCActivity___block_invoke_2;
    v32[3] = &unk_27859F650;
    v32[4] = self;
    v29 = v5;
    v33 = v29;
    v34 = v9;
    [v8 enumerateObjectsUsingBlock:v32];
    v30 = v29;

    goto LABEL_16;
  }

  v11 = [ATXModeEntityCorrelator alloc];
  modeEventProvider = self->_modeEventProvider;
  v13 = objc_opt_new();
  v14 = objc_opt_new();
  v15 = objc_opt_new();
  v16 = [(ATXModeEntityCorrelator *)v11 initWithModeEventProvider:modeEventProvider appLaunchEventProvider:v13 macPortableAppEventProvider:v14 macDesktopAppEventProvider:v15];

  v17 = [[ATXAppInterruptionsEventProvider alloc] initWithModeEventProvider:self->_modeEventProvider];
  appInterruptionsEventProvider = self->_appInterruptionsEventProvider;
  self->_appInterruptionsEventProvider = v17;

  v19 = [(ATXAppInterruptionsEventProvider *)self->_appInterruptionsEventProvider successfullyCalculatedAppSessionInterruptions:activityCopy];
  if ((v19 & 1) == 0)
  {
    v20 = __atxlog_handle_modes(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [ATXAppModeModel scoredEntitiesWithXPCActivity:];
    }
  }

  didDefer = [activityCopy didDefer];
  if (!didDefer)
  {
    v24 = [[ATXAppNotificationEngagementEventProvider alloc] initWithModeEventProvider:self->_modeEventProvider];
    appNotificationEngagementEventProvider = self->_appNotificationEngagementEventProvider;
    self->_appNotificationEngagementEventProvider = v24;

    successfullyCalculatedNotificationEvents = [(ATXAppNotificationEngagementEventProvider *)self->_appNotificationEngagementEventProvider successfullyCalculatedNotificationEvents];
    v10 = &off_226871000;
    if ((successfullyCalculatedNotificationEvents & 1) == 0)
    {
      v27 = __atxlog_handle_modes(successfullyCalculatedNotificationEvents);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [ATXAppModeModel scoredEntitiesWithXPCActivity:];
      }
    }

    entityFeaturesForModeEntityScoring = [(ATXModeEntityCorrelator *)v16 entityFeaturesForModeEntityScoring];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __49__ATXAppModeModel_scoredEntitiesWithXPCActivity___block_invoke;
    v35[3] = &unk_2785970E0;
    v36 = v8;
    selfCopy = self;
    v38 = v5;
    v39 = v9;
    [entityFeaturesForModeEntityScoring enumerateKeysAndObjectsUsingBlock:v35];

    goto LABEL_15;
  }

  v22 = __atxlog_handle_modes(didDefer);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    [ATXAppModeModel scoredEntitiesWithXPCActivity:];
  }

  v23 = v5;
LABEL_16:

  return v5;
}

void __49__ATXAppModeModel_scoredEntitiesWithXPCActivity___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if ([*(a1 + 32) containsObject:v10])
  {
    v6 = [*(a1 + 40) scoredAppModeEntityWithAppFeatures:v5 bundleId:v10];
    v7 = *(a1 + 48);
    v8 = [v5 entity];
    v9 = [v8 identifier];
    [v7 setObject:v6 forKey:v9];

    [*(a1 + 56) addObject:v10];
  }
}

void __49__ATXAppModeModel_scoredEntitiesWithXPCActivity___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 scoredAppModeEntityWithAppFeatures:0 bundleId:v4];
  [*(a1 + 40) setObject:v5 forKey:v4];
  [*(a1 + 48) addObject:v4];
}

- (id)scoredAppModeEntityWithAppFeatures:(id)features bundleId:(id)id
{
  v22[1] = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  if (!featuresCopy)
  {
    idCopy = id;
    featuresCopy = objc_opt_new();
    v8 = [ATXSessionTaggingAppEntity genreIdForBundleId:idCopy];
    v9 = v8;
    v10 = &unk_283A57A58;
    if (v8)
    {
      v10 = v8;
    }

    v11 = v10;

    v12 = objc_alloc(MEMORY[0x277CEB390]);
    v22[0] = v11;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];

    v14 = [v12 initWithBundleId:idCopy itunesGenreIds:v13];
    [featuresCopy setEntity:v14];
  }

  [(ATXAppModeModel *)self addEntitySpecificFeaturesToAppFeatures:featuresCopy];
  [(ATXAppModeModel *)self scoreFromAppFeatures:featuresCopy];
  v16 = v15;
  v17 = objc_opt_new();
  [v17 setScore:v16];
  jsonRepresentation = [featuresCopy jsonRepresentation];
  [v17 setFeatureVector:jsonRepresentation];

  entity = [featuresCopy entity];
  [entity setScoreMetadata:v17];

  entity2 = [featuresCopy entity];

  return entity2;
}

- (void)addEntitySpecificFeaturesToAppFeatures:(id)features
{
  featuresCopy = features;
  if (featuresCopy)
  {
    modeEntityStore = self->_modeEntityStore;
    v37 = featuresCopy;
    entity = [featuresCopy entity];
    identifier = [entity identifier];
    v8 = [(ATXModeEntityStore *)modeEntityStore appEntityForBundleId:identifier];

    if (v8)
    {
      affinityVector = [v8 affinityVector];
      [affinityVector scoreForMode:self->_mode];
      v11 = v10;

      affinityVector_v2 = [v8 affinityVector_v2];
      [affinityVector_v2 scoreForMode:self->_mode];
      v14 = v13;

      entitySpecificFeatures = [v37 entitySpecificFeatures];
      v16 = entitySpecificFeatures;
      if (entitySpecificFeatures)
      {
        v17 = entitySpecificFeatures;
      }

      else
      {
        v17 = objc_opt_new();
      }

      v18 = v17;

      v19 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
      [v18 setAppCategoryScore:v19];

      v20 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
      [v18 setAppCategoryScore_v2:v20];

      entity2 = [v37 entity];
      identifier2 = [entity2 identifier];
      [(ATXAppModeModel *)self addAppInterruptingSignalsForIdentifier:identifier2 toAppSpecificFeatures:v18];

      entity3 = [v37 entity];
      identifier3 = [entity3 identifier];
      [(ATXAppModeModel *)self addNotificationsSignalsForIdentifier:identifier3 toAppSpecificFeatures:v18];

      entity4 = [v37 entity];
      identifier4 = [entity4 identifier];
      [(ATXAppModeModel *)self addGlobalModeAffinityPriorsForIdentifier:identifier4 toAppSpecificFeatures:v18];

      notificationDatastore = self->_notificationDatastore;
      v28 = MEMORY[0x277CBEAA8];
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v30 = [v28 dateWithTimeIntervalSinceReferenceDate:v29 + -1209600.0];
      v31 = [(ATXNotificationAndSuggestionDatastore *)notificationDatastore notificationsReceivedPerBundleIdSinceDate:v30];

      entity5 = [v37 entity];
      identifier5 = [entity5 identifier];
      v34 = [v31 objectForKeyedSubscript:identifier5];
      v35 = v34;
      if (v34)
      {
        v36 = v34;
      }

      else
      {
        v36 = &unk_283A57A58;
      }

      [v18 setNotificationsReceivedInLastTwoWeeks:v36];

      [v37 setEntitySpecificFeatures:v18];
    }

    featuresCopy = v37;
  }
}

- (void)addGlobalModeAffinityPriorsForIdentifier:(id)identifier toAppSpecificFeatures:(id)features
{
  v5 = MEMORY[0x277CCABB0];
  globalAppModeAffinityModel = self->_globalAppModeAffinityModel;
  mode = self->_mode;
  modeAffinityModelsConstants = self->_modeAffinityModelsConstants;
  featuresCopy = features;
  identifierCopy = identifier;
  [(ATXModeAffinityModelsConstants *)modeAffinityModelsConstants scalingFactorForModeGlobalPriors];
  [(ATXGlobalAppModeAffinityModel *)globalAppModeAffinityModel scoreForMode:mode bundleId:identifierCopy scalingFactor:?];
  v12 = v11;

  v13 = [v5 numberWithDouble:v12];
  [featuresCopy setGlobalModeAffinityPrior:v13];
}

- (void)addAppInterruptingSignalsForIdentifier:(id)identifier toAppSpecificFeatures:(id)features
{
  v6 = MEMORY[0x277CCABB0];
  appInterruptionsEventProvider = self->_appInterruptionsEventProvider;
  featuresCopy = features;
  identifierCopy = identifier;
  v10 = [v6 numberWithUnsignedInteger:{-[ATXAppInterruptionsEventProvider modeAppInterruptionsCountByEntity:](appInterruptionsEventProvider, "modeAppInterruptionsCountByEntity:", identifierCopy)}];
  [featuresCopy setModeAppInterruptionsCountByEntity:v10];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXAppInterruptionsEventProvider globalAppInterruptionsCountByEntity:](self->_appInterruptionsEventProvider, "globalAppInterruptionsCountByEntity:", identifierCopy)}];
  [featuresCopy setGlobalAppInterruptionsCountByEntity:v11];

  v12 = MEMORY[0x277CCABB0];
  [(ATXAppInterruptionsEventProvider *)self->_appInterruptionsEventProvider modePopularityOfInterruptingEntity:identifierCopy];
  v13 = [v12 numberWithDouble:?];
  [featuresCopy setModePopularityOfInterruptingEntity:v13];

  v14 = MEMORY[0x277CCABB0];
  [(ATXAppInterruptionsEventProvider *)self->_appInterruptionsEventProvider globalPopularityOfInterruptingEntity:identifierCopy];
  v15 = [v14 numberWithDouble:?];
  [featuresCopy setGlobalPopularityOfInterruptingEntity:v15];

  v16 = MEMORY[0x277CCABB0];
  [(ATXAppInterruptionsEventProvider *)self->_appInterruptionsEventProvider modeAppInterruptionsClassConditionalProbabilityByEntity:identifierCopy];
  v17 = [v16 numberWithDouble:?];
  [featuresCopy setModeAppInterruptionsClassConditionalProbabilityByEntity:v17];

  v18 = MEMORY[0x277CCABB0];
  [(ATXAppInterruptionsEventProvider *)self->_appInterruptionsEventProvider ratioOfModePopularityToGlobalPopularityOfInterruptingEntity:identifierCopy];
  v20 = v19;

  v21 = [v18 numberWithDouble:v20];
  [featuresCopy setRatioOfModePopularityToGlobalPopularityOfInterruptingEntity:v21];
}

- (void)addNotificationsSignalsForIdentifier:(id)identifier toAppSpecificFeatures:(id)features
{
  v6 = MEMORY[0x277CCABB0];
  appNotificationEngagementEventProvider = self->_appNotificationEngagementEventProvider;
  featuresCopy = features;
  identifierCopy = identifier;
  v10 = [v6 numberWithUnsignedInteger:{-[ATXAppNotificationEngagementEventProvider modeCountOfNotificationsClearedForBundleId:](appNotificationEngagementEventProvider, "modeCountOfNotificationsClearedForBundleId:", identifierCopy)}];
  [featuresCopy setModeCountOfNotificationsClearedForEntity:v10];

  v11 = MEMORY[0x277CCABB0];
  [(ATXAppNotificationEngagementEventProvider *)self->_appNotificationEngagementEventProvider localNotificationsClearedRateForBundleId:identifierCopy];
  v12 = [v11 numberWithDouble:?];
  [featuresCopy setLocalNotificationsClearedRateForEntity:v12];

  v13 = MEMORY[0x277CCABB0];
  [(ATXAppNotificationEngagementEventProvider *)self->_appNotificationEngagementEventProvider globalNotificationsClearedRateForBundleId:identifierCopy];
  v14 = [v13 numberWithDouble:?];
  [featuresCopy setGlobalNotificationsClearedRateForEntity:v14];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXAppNotificationEngagementEventProvider globalCountOfNotificationsClearedForBundleId:](self->_appNotificationEngagementEventProvider, "globalCountOfNotificationsClearedForBundleId:", identifierCopy)}];
  [featuresCopy setGlobalCountOfNotificationsClearedForEntity:v15];

  v16 = MEMORY[0x277CCABB0];
  [(ATXAppNotificationEngagementEventProvider *)self->_appNotificationEngagementEventProvider ratioOfLocalToGlobalNotificationsClearedRateForBundleId:identifierCopy];
  v17 = [v16 numberWithDouble:?];
  [featuresCopy setRatioOfLocalToGlobalNotificationsClearedRateForEntity:v17];

  v18 = MEMORY[0x277CCABB0];
  [(ATXAppNotificationEngagementEventProvider *)self->_appNotificationEngagementEventProvider classConditionalOfNotificationsClearedForBundleId:identifierCopy];
  v19 = [v18 numberWithDouble:?];
  [featuresCopy setClassConditionalOfNotificationsClearedForEntity:v19];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXAppNotificationEngagementEventProvider globalCountOfNotificationsReceivedForBundleId:](self->_appNotificationEngagementEventProvider, "globalCountOfNotificationsReceivedForBundleId:", identifierCopy)}];
  [featuresCopy setGlobalCountOfNotificationsReceivedForEntity:v20];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXAppNotificationEngagementEventProvider modeCountOfNotificationsReceivedForBundleId:](self->_appNotificationEngagementEventProvider, "modeCountOfNotificationsReceivedForBundleId:", identifierCopy)}];
  [featuresCopy setModeCountOfNotificationsReceivedForEntity:v21];

  v22 = MEMORY[0x277CCABB0];
  [(ATXAppNotificationEngagementEventProvider *)self->_appNotificationEngagementEventProvider localPopularityOfNotificationsReceivedForBundleId:identifierCopy];
  v23 = [v22 numberWithDouble:?];
  [featuresCopy setLocalPopularityOfNotificationsReceivedForEntity:v23];

  v24 = MEMORY[0x277CCABB0];
  [(ATXAppNotificationEngagementEventProvider *)self->_appNotificationEngagementEventProvider globalPopularityOfNotificationsReceivedForBundleId:identifierCopy];
  v25 = [v24 numberWithDouble:?];
  [featuresCopy setGlobalPopularityOfNotificationsReceivedForEntity:v25];

  v26 = MEMORY[0x277CCABB0];
  [(ATXAppNotificationEngagementEventProvider *)self->_appNotificationEngagementEventProvider ratioOfLocalToGlobalPopularityOfNotificationsReceivedForBundleId:identifierCopy];
  v27 = [v26 numberWithDouble:?];
  [featuresCopy setRatioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity:v27];

  v28 = MEMORY[0x277CCABB0];
  [(ATXAppNotificationEngagementEventProvider *)self->_appNotificationEngagementEventProvider classConditionalOfNotificationsReceivedForBundleId:identifierCopy];
  v30 = v29;

  v31 = [v28 numberWithDouble:v30];
  [featuresCopy setClassConditionalOfNotificationsReceivedForEntity:v31];
}

- (id)featuresToModel:(id)model
{
  modelCopy = model;
  entitySpecificFeatures = [modelCopy entitySpecificFeatures];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v8 = __atxlog_handle_modes(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [ATXAppModeDenyListModel featuresToModel:];
    }
  }

  entitySpecificFeatures2 = [modelCopy entitySpecificFeatures];
  appCategoryScore_v2 = [entitySpecificFeatures2 appCategoryScore_v2];
  v10 = MEMORY[0x277CCABB0];
  [modelCopy globalPopularity];
  v63 = [v10 numberWithDouble:?];
  v62 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(modelCopy, "globalOccurrences")}];
  v61 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(modelCopy, "entityOccurredGloballyOverLastNDays:", -[ATXModeAffinityModelsConstants numOfDaysToComputeEntityOccurenceFeatures](self->_modeAffinityModelsConstants, "numOfDaysToComputeEntityOccurenceFeatures"))}];
  v60 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(modelCopy, "entityOccurredInModeOverLastNDays:", -[ATXModeAffinityModelsConstants numOfDaysToComputeEntityOccurenceFeatures](self->_modeAffinityModelsConstants, "numOfDaysToComputeEntityOccurenceFeatures"))}];
  v11 = MEMORY[0x277CCABB0];
  [modelCopy ratioModeAndGlobalPopularity];
  v58 = [v11 numberWithDouble:?];
  v59 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(modelCopy, "localOccurrences")}];
  v57 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(modelCopy, "uniqueOccurrencesInMode")}];
  v12 = MEMORY[0x277CCABB0];
  localOccurrences = [modelCopy localOccurrences];
  globalModeAffinityPrior = [entitySpecificFeatures2 globalModeAffinityPrior];
  [globalModeAffinityPrior doubleValue];
  v16 = v15 + localOccurrences;
  globalOccurrences = [modelCopy globalOccurrences];
  [(ATXModeAffinityModelsConstants *)self->_modeAffinityModelsConstants scalingFactorForModeGlobalPriors];
  v46 = [v12 numberWithDouble:v16 / (v18 + globalOccurrences + 0.00000001)];

  v19 = MEMORY[0x277CCABB0];
  uniqueOccurrencesInMode = [modelCopy uniqueOccurrencesInMode];
  globalModeAffinityPrior2 = [entitySpecificFeatures2 globalModeAffinityPrior];
  [globalModeAffinityPrior2 doubleValue];
  v23 = v22 + uniqueOccurrencesInMode;
  modeOccurrences = [modelCopy modeOccurrences];
  [(ATXModeAffinityModelsConstants *)self->_modeAffinityModelsConstants scalingFactorForModeGlobalPriors];
  v44 = [v19 numberWithDouble:v23 / (v25 + modeOccurrences + 0.00000001)];

  v26 = MEMORY[0x277CCABB0];
  localOccurrences2 = [modelCopy localOccurrences];
  globalModeAffinityPrior3 = [entitySpecificFeatures2 globalModeAffinityPrior];
  [globalModeAffinityPrior3 doubleValue];
  v30 = v29 + localOccurrences2;
  localOccurrencesAcrossAllEntities = [modelCopy localOccurrencesAcrossAllEntities];

  [(ATXModeAffinityModelsConstants *)self->_modeAffinityModelsConstants scalingFactorForModeGlobalPriors];
  v45 = [v26 numberWithDouble:v30 / (v32 + localOccurrencesAcrossAllEntities + 0.00000001)];

  globalModeAffinityPrior4 = [entitySpecificFeatures2 globalModeAffinityPrior];
  modeAppInterruptionsCountByEntity = [entitySpecificFeatures2 modeAppInterruptionsCountByEntity];
  globalAppInterruptionsCountByEntity = [entitySpecificFeatures2 globalAppInterruptionsCountByEntity];
  modePopularityOfInterruptingEntity = [entitySpecificFeatures2 modePopularityOfInterruptingEntity];
  globalPopularityOfInterruptingEntity = [entitySpecificFeatures2 globalPopularityOfInterruptingEntity];
  modeAppInterruptionsClassConditionalProbabilityByEntity = [entitySpecificFeatures2 modeAppInterruptionsClassConditionalProbabilityByEntity];
  ratioOfModePopularityToGlobalPopularityOfInterruptingEntity = [entitySpecificFeatures2 ratioOfModePopularityToGlobalPopularityOfInterruptingEntity];
  globalCountOfNotificationsReceivedForEntity = [entitySpecificFeatures2 globalCountOfNotificationsReceivedForEntity];
  modeCountOfNotificationsReceivedForEntity = [entitySpecificFeatures2 modeCountOfNotificationsReceivedForEntity];
  localPopularityOfNotificationsReceivedForEntity = [entitySpecificFeatures2 localPopularityOfNotificationsReceivedForEntity];
  globalPopularityOfNotificationsReceivedForEntity = [entitySpecificFeatures2 globalPopularityOfNotificationsReceivedForEntity];
  ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity = [entitySpecificFeatures2 ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity];
  classConditionalOfNotificationsReceivedForEntity = [entitySpecificFeatures2 classConditionalOfNotificationsReceivedForEntity];
  modeCountOfNotificationsClearedForEntity = [entitySpecificFeatures2 modeCountOfNotificationsClearedForEntity];
  localNotificationsClearedRateForEntity = [entitySpecificFeatures2 localNotificationsClearedRateForEntity];
  globalNotificationsClearedRateForEntity = [entitySpecificFeatures2 globalNotificationsClearedRateForEntity];
  globalCountOfNotificationsClearedForEntity = [entitySpecificFeatures2 globalCountOfNotificationsClearedForEntity];
  ratioOfLocalToGlobalNotificationsClearedRateForEntity = [entitySpecificFeatures2 ratioOfLocalToGlobalNotificationsClearedRateForEntity];
  classConditionalOfNotificationsClearedForEntity = [entitySpecificFeatures2 classConditionalOfNotificationsClearedForEntity];
  v37 = objc_opt_new();
  [v37 setObject:v61 forKey:@"entityOccurredGloballyOverTheLastNDays"];
  [v37 setObject:v60 forKey:@"entityOccurredInModeOverLastNDays"];
  [v37 setObject:appCategoryScore_v2 forKey:@"appCategoryScore"];
  [v37 setObject:v46 forKey:@"classConditionalProbabilityOfModeGivenEntity"];
  [v37 setObject:v62 forKey:@"globalOccurrencesOfEntity"];
  [v37 setObject:v63 forKey:@"globalPopularityForEntity"];
  [v37 setObject:v59 forKey:@"localOccurrencesOfEntityInMode"];
  [v37 setObject:v45 forKey:@"modePopularityForEntity"];
  [v37 setObject:v44 forKey:@"posteriorProbabilityOfEntityGivenMode"];
  [v37 setObject:v58 forKey:@"ratioOfModePopularityToGlobalPopularityOfEntity"];
  [v37 setObject:v57 forKey:@"uniqueOccurrencesOfEntityInMode"];
  [v37 setObject:globalModeAffinityPrior4 forKey:@"globalModeAffinityPrior"];
  [v37 setObject:modeAppInterruptionsCountByEntity forKey:@"modeAppInterruptionsCountByEntity"];
  [v37 setObject:globalAppInterruptionsCountByEntity forKey:@"globalAppInterruptionsCountByEntity"];
  [v37 setObject:modePopularityOfInterruptingEntity forKey:@"modePopularityOfInterruptingEntity"];
  [v37 setObject:globalPopularityOfInterruptingEntity forKey:@"globalPopularityOfInterruptingEntity"];
  [v37 setObject:modeAppInterruptionsClassConditionalProbabilityByEntity forKey:@"modeAppInterruptionsClassConditionalProbabilityByEntity"];
  [v37 setObject:ratioOfModePopularityToGlobalPopularityOfInterruptingEntity forKey:@"ratioOfModePopularityToGlobalPopularityOfInterruptingEntity"];
  [v37 setObject:globalCountOfNotificationsReceivedForEntity forKey:@"globalCountOfNotificationsReceivedForEntity"];
  [v37 setObject:modeCountOfNotificationsReceivedForEntity forKey:@"modeCountOfNotificationsReceivedForEntity"];
  [v37 setObject:localPopularityOfNotificationsReceivedForEntity forKey:@"localPopularityOfNotificationsReceivedForEntity"];
  [v37 setObject:globalPopularityOfNotificationsReceivedForEntity forKey:@"globalPopularityOfNotificationsReceivedForEntity"];
  [v37 setObject:ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity forKey:@"ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity"];
  [v37 setObject:classConditionalOfNotificationsReceivedForEntity forKey:@"classConditionalOfNotificationsReceivedForEntity"];
  [v37 setObject:modeCountOfNotificationsClearedForEntity forKey:@"modeCountOfNotificationsClearedForEntity"];
  [v37 setObject:localNotificationsClearedRateForEntity forKey:@"localNotificationsClearedRateForEntity"];
  [v37 setObject:globalNotificationsClearedRateForEntity forKey:@"globalNotificationsClearedRateForEntity"];
  [v37 setObject:globalCountOfNotificationsClearedForEntity forKey:@"globalCountOfNotificationsClearedForEntity"];
  [v37 setObject:ratioOfLocalToGlobalNotificationsClearedRateForEntity forKey:@"ratioOfLocalToGlobalNotificationsClearedRateForEntity"];
  [v37 setObject:classConditionalOfNotificationsClearedForEntity forKey:@"classConditionalOfNotificationsClearedForEntity"];

  return v37;
}

- (id)loadAppModeCoreMLModel
{
  v3 = objc_opt_new();
  modelName = [(ATXAppModeModel *)self modelName];
  v5 = [v3 loadCoreMLModelFromTrialWithName:modelName];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    modelName2 = [(ATXAppModeModel *)self modelName];
    v6 = [ATXCoreMLUtilities loadCoreMLModelWithName:modelName2];
  }

  return v6;
}

- (double)scoreFromAppFeatures:(id)features
{
  featuresCopy = features;
  if (self->_appModeModel)
  {
    v5 = objc_alloc(MEMORY[0x277CBFED0]);
    v6 = [(ATXAppModeModel *)self featuresToModel:featuresCopy];
    v21 = 0;
    v7 = [v5 initWithDictionary:v6 error:&v21];
    v8 = v21;

    if (v8)
    {
      v10 = __atxlog_handle_modes(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [ATXAppModeModel scoreFromAppFeatures:];
      }
    }

    appModeModel = self->_appModeModel;
    v20 = v8;
    v12 = [(MLModel *)appModeModel predictionFromFeatures:v7 error:&v20];
    v13 = v20;

    if (v13)
    {
      v15 = __atxlog_handle_modes(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [ATXAppModeModel scoreFromAppFeatures:];
      }
    }

    v16 = [v12 featureValueForName:@"classProbability"];
    [ATXCoreMLUtilities scoreForModelOutputValue:v16 outputIndexedSubscript:1];
    v18 = v17;
    if ([featuresCopy uniqueOccurrencesInMode] < 2)
    {
      v18 = v18 * 0.5;
    }
  }

  else
  {
    v18 = 0.0;
  }

  return v18;
}

- (void)scoredEntitiesWithXPCActivity:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)scoredEntitiesWithXPCActivity:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)scoredEntitiesWithXPCActivity:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end