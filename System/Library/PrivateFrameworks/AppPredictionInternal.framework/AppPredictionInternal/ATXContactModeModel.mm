@interface ATXContactModeModel
- (ATXContactModeModel)initWithMode:(unint64_t)mode contactStore:(id)store;
- (double)scoreFromContactFeatures:(id)features;
- (id)contactKeysToFetch;
- (id)featuresToModel:(id)model;
- (id)loadContactModeModel;
- (id)meContact;
- (id)purgeDeletedContacts:(id)contacts;
- (id)scoredEntities;
- (void)addNotificationsSignalsForIdentifier:(id)identifier toContactSpecificFeatures:(id)features;
@end

@implementation ATXContactModeModel

- (ATXContactModeModel)initWithMode:(unint64_t)mode contactStore:(id)store
{
  storeCopy = store;
  v25.receiver = self;
  v25.super_class = ATXContactModeModel;
  v8 = [(ATXContactModeModel *)&v25 init];
  v9 = v8;
  if (v8)
  {
    v8->_mode = mode;
    objc_storeStrong(&v8->_contactStore, store);
    loadContactModeModel = [(ATXContactModeModel *)v9 loadContactModeModel];
    contactModeModel = v9->_contactModeModel;
    v9->_contactModeModel = loadContactModeModel;

    v12 = [MEMORY[0x277CEB420] cnContactIdsOfFavoriteContactsWithContactStore:storeCopy];
    cnContactIdsOfFavoriteContacts = v9->_cnContactIdsOfFavoriteContacts;
    v9->_cnContactIdsOfFavoriteContacts = v12;

    vipContactEmailAddresses = [MEMORY[0x277CEB420] vipContactEmailAddresses];
    vipContactEmailAddresses = v9->_vipContactEmailAddresses;
    v9->_vipContactEmailAddresses = vipContactEmailAddresses;

    cnContactIdsOfEmergencyContacts = [MEMORY[0x277CEB420] cnContactIdsOfEmergencyContacts];
    cnContactIdsOfEmergencyContacts = v9->_cnContactIdsOfEmergencyContacts;
    v9->_cnContactIdsOfEmergencyContacts = cnContactIdsOfEmergencyContacts;

    cnContactIdsOfICloudFamilyMembers = [MEMORY[0x277CEB420] cnContactIdsOfICloudFamilyMembers];
    cnContactIdsOfICloudFamilyMembers = v9->_cnContactIdsOfICloudFamilyMembers;
    v9->_cnContactIdsOfICloudFamilyMembers = cnContactIdsOfICloudFamilyMembers;

    v20 = [ATXModeEntityModelTrainer eventProviderForMode:v9->_mode];
    modeEventProvider = v9->_modeEventProvider;
    v9->_modeEventProvider = v20;

    v22 = objc_opt_new();
    modeAffinityModelsConstants = v9->_modeAffinityModelsConstants;
    v9->_modeAffinityModelsConstants = v22;
  }

  return v9;
}

- (id)scoredEntities
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [[ATXInteractionEventProvider alloc] initWithContactStore:self->_contactStore];
  v5 = [[ATXModeEntityCorrelator alloc] initWithModeEventProvider:self->_modeEventProvider entityEventProvider:v4];
  v6 = [[ATXContactNotificationEngagementEventProvider alloc] initWithModeEventProvider:self->_modeEventProvider];
  contactNotificationEngagementEventProvider = self->_contactNotificationEngagementEventProvider;
  self->_contactNotificationEngagementEventProvider = v6;

  successfullyCalculatedNotificationEvents = [(ATXContactNotificationEngagementEventProvider *)self->_contactNotificationEngagementEventProvider successfullyCalculatedNotificationEvents];
  if ((successfullyCalculatedNotificationEvents & 1) == 0)
  {
    v9 = __atxlog_handle_modes(successfullyCalculatedNotificationEvents);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(ATXContactModeDenyListModel *)v9 scoredEntities];
    }
  }

  entityFeaturesForModeEntityScoring = [(ATXModeEntityCorrelator *)v5 entityFeaturesForModeEntityScoring];
  v11 = __atxlog_handle_notification_management(entityFeaturesForModeEntityScoring);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = ATXModeToString();
    *buf = 136315650;
    v30 = "[ATXContactModeModel scoredEntities]";
    v31 = 2112;
    v32 = v12;
    v33 = 2048;
    v34 = [entityFeaturesForModeEntityScoring count];
    _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "%s: mode: '%@' returned %ld contacts from featurizer", buf, 0x20u);
  }

  [entityFeaturesForModeEntityScoring enumerateKeysAndObjectsUsingBlock:&__block_literal_global_263];
  meContact = [(ATXContactModeModel *)self meContact];
  v14 = [[ATXStableContactRepresentationDatastore alloc] initWithContactStore:self->_contactStore];
  identifier = [meContact identifier];
  v16 = [(ATXStableContactRepresentationDatastore *)v14 stableContactRepresentationForCnContactId:identifier rawIdentifier:0];
  stableContactIdentifier = [v16 stableContactIdentifier];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __37__ATXContactModeModel_scoredEntities__block_invoke_30;
  v24[3] = &unk_2785970E0;
  v25 = stableContactIdentifier;
  selfCopy = self;
  v27 = v14;
  v18 = v3;
  v28 = v18;
  v19 = v14;
  v20 = stableContactIdentifier;
  [entityFeaturesForModeEntityScoring enumerateKeysAndObjectsUsingBlock:v24];
  v21 = v28;
  v22 = v18;

  return v18;
}

void __37__ATXContactModeModel_scoredEntities__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = __atxlog_handle_notification_management(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __37__ATXContactModeModel_scoredEntities__block_invoke_cold_1(v4, v5, v6);
  }
}

void __37__ATXContactModeModel_scoredEntities__block_invoke_30(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = a3;
  v4 = [v26 entity];
  v5 = [v4 identifier];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if ((v6 & 1) == 0)
  {
    v7 = [v26 entitySpecificFeatures];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = objc_opt_new();
    }

    v10 = v9;

    v11 = [v26 entity];
    [v10 setIsVIPContact:{objc_msgSend(v11, "isVIPContactGivenVIPs:contactStore:", *(*(a1 + 40) + 32), *(*(a1 + 40) + 80))}];

    v12 = *(a1 + 48);
    v13 = [v26 entity];
    v14 = [v13 identifier];
    v15 = [v12 stableContactRepresentationForStableContactIdentifier:v14];
    v16 = [v15 cnContactId];

    if (v16)
    {
      [v10 setIsICloudFamilyMember:{objc_msgSend(*(*(a1 + 40) + 48), "containsObject:", v16)}];
      [v10 setIsEmergencyContact:{objc_msgSend(*(*(a1 + 40) + 40), "containsObject:", v16)}];
      [v10 setIsFavoriteContact:{objc_msgSend(*(*(a1 + 40) + 24), "containsObject:", v16)}];
      [*(a1 + 40) addNotificationsSignalsForIdentifier:v16 toContactSpecificFeatures:v10];
    }

    [v26 setEntitySpecificFeatures:v10];
    [*(a1 + 40) scoreFromContactFeatures:v26];
    v18 = v17;
    v19 = objc_opt_new();
    [v19 setScore:v18];
    v20 = [v26 jsonRepresentation];
    [v19 setFeatureVector:v20];

    v21 = [v26 entity];
    [v21 setScoreMetadata:v19];

    v22 = *(a1 + 56);
    v23 = [v26 entity];
    v24 = [v26 entity];
    v25 = [v24 identifier];
    [v22 setObject:v23 forKey:v25];
  }
}

- (void)addNotificationsSignalsForIdentifier:(id)identifier toContactSpecificFeatures:(id)features
{
  v6 = MEMORY[0x277CCABB0];
  contactNotificationEngagementEventProvider = self->_contactNotificationEngagementEventProvider;
  featuresCopy = features;
  identifierCopy = identifier;
  v10 = [v6 numberWithUnsignedInteger:{-[ATXContactNotificationEngagementEventProvider globalCountOfNotificationsClearedForContactId:](contactNotificationEngagementEventProvider, "globalCountOfNotificationsClearedForContactId:", identifierCopy)}];
  [featuresCopy setGlobalCountOfNotificationsClearedForEntity:v10];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContactNotificationEngagementEventProvider modeCountOfNotificationsClearedForContactId:](self->_contactNotificationEngagementEventProvider, "modeCountOfNotificationsClearedForContactId:", identifierCopy)}];
  [featuresCopy setModeCountOfNotificationsClearedForEntity:v11];

  v12 = MEMORY[0x277CCABB0];
  [(ATXContactNotificationEngagementEventProvider *)self->_contactNotificationEngagementEventProvider localNotificationsClearedRateForContactId:identifierCopy];
  v13 = [v12 numberWithDouble:?];
  [featuresCopy setLocalNotificationsClearedRateForEntity:v13];

  v14 = MEMORY[0x277CCABB0];
  [(ATXContactNotificationEngagementEventProvider *)self->_contactNotificationEngagementEventProvider globalNotificationsClearedRateForContactId:identifierCopy];
  v15 = [v14 numberWithDouble:?];
  [featuresCopy setGlobalNotificationsClearedRateForEntity:v15];

  v16 = MEMORY[0x277CCABB0];
  [(ATXContactNotificationEngagementEventProvider *)self->_contactNotificationEngagementEventProvider ratioOfLocalToGlobalNotificationsClearedRateForContactId:identifierCopy];
  v17 = [v16 numberWithDouble:?];
  [featuresCopy setRatioOfLocalToGlobalNotificationsClearedRateForEntity:v17];

  v18 = MEMORY[0x277CCABB0];
  [(ATXContactNotificationEngagementEventProvider *)self->_contactNotificationEngagementEventProvider classConditionalOfNotificationsClearedForContactId:identifierCopy];
  v19 = [v18 numberWithDouble:?];
  [featuresCopy setClassConditionalOfNotificationsClearedForEntity:v19];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContactNotificationEngagementEventProvider globalCountOfNotificationsReceivedForContactId:](self->_contactNotificationEngagementEventProvider, "globalCountOfNotificationsReceivedForContactId:", identifierCopy)}];
  [featuresCopy setGlobalCountOfNotificationsReceivedForEntity:v20];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContactNotificationEngagementEventProvider modeCountOfNotificationsReceivedForContactId:](self->_contactNotificationEngagementEventProvider, "modeCountOfNotificationsReceivedForContactId:", identifierCopy)}];
  [featuresCopy setModeCountOfNotificationsReceivedForEntity:v21];

  v22 = MEMORY[0x277CCABB0];
  [(ATXContactNotificationEngagementEventProvider *)self->_contactNotificationEngagementEventProvider localPopularityOfNotificationsReceivedForContactId:identifierCopy];
  v23 = [v22 numberWithDouble:?];
  [featuresCopy setLocalPopularityOfNotificationsReceivedForEntity:v23];

  v24 = MEMORY[0x277CCABB0];
  [(ATXContactNotificationEngagementEventProvider *)self->_contactNotificationEngagementEventProvider globalPopularityOfNotificationsReceivedForContactId:identifierCopy];
  v25 = [v24 numberWithDouble:?];
  [featuresCopy setGlobalPopularityOfNotificationsReceivedForEntity:v25];

  v26 = MEMORY[0x277CCABB0];
  [(ATXContactNotificationEngagementEventProvider *)self->_contactNotificationEngagementEventProvider ratioOfLocalToGlobalPopularityOfNotificationsReceivedForContactId:identifierCopy];
  v27 = [v26 numberWithDouble:?];
  [featuresCopy setRatioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity:v27];

  v28 = MEMORY[0x277CCABB0];
  [(ATXContactNotificationEngagementEventProvider *)self->_contactNotificationEngagementEventProvider classConditionalOfNotificationsReceivedForContactId:identifierCopy];
  v30 = v29;

  v31 = [v28 numberWithDouble:v30];
  [featuresCopy setClassConditionalOfNotificationsReceivedForEntity:v31];
}

- (id)meContact
{
  contactStore = self->_contactStore;
  contactKeysToFetch = [(ATXContactModeModel *)self contactKeysToFetch];
  v15 = 0;
  v4 = [(CNContactStore *)contactStore _crossPlatformUnifiedMeContactWithKeysToFetch:contactKeysToFetch error:&v15];
  v5 = v15;

  if (v5)
  {
    v7 = __atxlog_handle_notification_management(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(ATXContactModeDenyListModel *)v5 meContact:v7];
    }
  }

  return v4;
}

- (id)contactKeysToFetch
{
  v5[3] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBD098];
  v5[0] = *MEMORY[0x277CBD018];
  v5[1] = v2;
  v5[2] = *MEMORY[0x277CBCFC0];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];

  return v3;
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
      [ATXContactModeModel featuresToModel:v8];
    }
  }

  entitySpecificFeatures2 = [modelCopy entitySpecificFeatures];
  v10 = MEMORY[0x277CCABB0];
  [modelCopy classConditionalProbability];
  v40 = [v10 numberWithDouble:?];
  v11 = MEMORY[0x277CCABB0];
  [modelCopy posteriorProbability];
  v41 = [v11 numberWithDouble:?];
  v12 = MEMORY[0x277CCABB0];
  [modelCopy globalPopularity];
  v38 = [v12 numberWithDouble:?];
  v13 = MEMORY[0x277CCABB0];
  [modelCopy modePopularity];
  v39 = [v13 numberWithDouble:?];
  v29 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(modelCopy, "entityOccurredGloballyOverLastNDays:", -[ATXModeAffinityModelsConstants numOfDaysToComputeEntityOccurenceFeaturesForContacts](self->_modeAffinityModelsConstants, "numOfDaysToComputeEntityOccurenceFeaturesForContacts"))}];
  v28 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(modelCopy, "entityOccurredInModeOverLastNDays:", -[ATXModeAffinityModelsConstants numOfDaysToComputeEntityOccurenceFeaturesForContacts](self->_modeAffinityModelsConstants, "numOfDaysToComputeEntityOccurenceFeaturesForContacts"))}];
  v37 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(entitySpecificFeatures2, "isFavoriteContact")}];
  v36 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(entitySpecificFeatures2, "isVIPContact")}];
  v35 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(entitySpecificFeatures2, "isEmergencyContact")}];
  v34 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(entitySpecificFeatures2, "isICloudFamilyMember")}];
  v14 = MEMORY[0x277CCABB0];
  [modelCopy ratioModeAndGlobalPopularity];
  v16 = v15;

  v24 = [v14 numberWithDouble:v16];
  globalCountOfNotificationsReceivedForEntity = [entitySpecificFeatures2 globalCountOfNotificationsReceivedForEntity];
  modeCountOfNotificationsReceivedForEntity = [entitySpecificFeatures2 modeCountOfNotificationsReceivedForEntity];
  localPopularityOfNotificationsReceivedForEntity = [entitySpecificFeatures2 localPopularityOfNotificationsReceivedForEntity];
  globalPopularityOfNotificationsReceivedForEntity = [entitySpecificFeatures2 globalPopularityOfNotificationsReceivedForEntity];
  ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity = [entitySpecificFeatures2 ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity];
  classConditionalOfNotificationsReceivedForEntity = [entitySpecificFeatures2 classConditionalOfNotificationsReceivedForEntity];
  globalCountOfNotificationsClearedForEntity = [entitySpecificFeatures2 globalCountOfNotificationsClearedForEntity];
  modeCountOfNotificationsClearedForEntity = [entitySpecificFeatures2 modeCountOfNotificationsClearedForEntity];
  localNotificationsClearedRateForEntity = [entitySpecificFeatures2 localNotificationsClearedRateForEntity];
  globalNotificationsClearedRateForEntity = [entitySpecificFeatures2 globalNotificationsClearedRateForEntity];
  ratioOfLocalToGlobalNotificationsClearedRateForEntity = [entitySpecificFeatures2 ratioOfLocalToGlobalNotificationsClearedRateForEntity];
  classConditionalOfNotificationsClearedForEntity = [entitySpecificFeatures2 classConditionalOfNotificationsClearedForEntity];
  v22 = objc_opt_new();
  [v22 setObject:v40 forKey:@"classConditionalProbability"];
  [v22 setObject:v41 forKey:@"posteriorProbability"];
  [v22 setObject:v38 forKey:@"globalPopularity"];
  [v22 setObject:v39 forKey:@"modePopularity"];
  [v22 setObject:v29 forKey:@"contactEngagedGloballyOverLastNDays"];
  [v22 setObject:v28 forKey:@"contactEngagedInModeOverLastNDays"];
  [v22 setObject:v37 forKey:@"contactIsFavorite"];
  [v22 setObject:v36 forKey:@"contactIsVIP"];
  [v22 setObject:v35 forKey:@"contactIsEmergency"];
  [v22 setObject:v34 forKey:@"contactIsICloudFamilyMember"];
  [v22 setObject:v24 forKey:@"ratioOfModePopularityToGlobalPopularityOfEntity"];
  [v22 setObject:globalCountOfNotificationsReceivedForEntity forKey:@"globalCountOfNotificationsReceivedForEntity"];
  [v22 setObject:modeCountOfNotificationsReceivedForEntity forKey:@"modeCountOfNotificationsReceivedForEntity"];
  [v22 setObject:localPopularityOfNotificationsReceivedForEntity forKey:@"localPopularityOfNotificationsReceivedForEntity"];
  [v22 setObject:globalPopularityOfNotificationsReceivedForEntity forKey:@"globalPopularityOfNotificationsReceivedForEntity"];
  [v22 setObject:ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity forKey:@"ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity"];
  [v22 setObject:classConditionalOfNotificationsReceivedForEntity forKey:@"classConditionalOfNotificationsReceivedForEntity"];
  [v22 setObject:globalCountOfNotificationsClearedForEntity forKey:@"globalCountOfNotificationsClearedForEntity"];
  [v22 setObject:modeCountOfNotificationsClearedForEntity forKey:@"modeCountOfNotificationsClearedForEntity"];
  [v22 setObject:localNotificationsClearedRateForEntity forKey:@"localNotificationsClearedRateForEntity"];
  [v22 setObject:globalNotificationsClearedRateForEntity forKey:@"globalNotificationsClearedRateForEntity"];
  [v22 setObject:ratioOfLocalToGlobalNotificationsClearedRateForEntity forKey:@"ratioOfLocalToGlobalNotificationsClearedRateForEntity"];
  [v22 setObject:classConditionalOfNotificationsClearedForEntity forKey:@"classConditionalOfNotificationsClearedForEntity"];

  return v22;
}

- (id)loadContactModeModel
{
  v3 = objc_opt_new();
  modelName = [(ATXContactModeModel *)self modelName];
  v5 = [v3 loadCoreMLModelFromTrialWithName:modelName];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    modelName2 = [(ATXContactModeModel *)self modelName];
    v6 = [ATXCoreMLUtilities loadCoreMLModelWithName:modelName2];
  }

  return v6;
}

- (double)scoreFromContactFeatures:(id)features
{
  v44 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  uniqueOccurrencesInMode = [featuresCopy uniqueOccurrencesInMode];
  if (uniqueOccurrencesInMode > 2)
  {
    if (!self->_contactModeModel)
    {
      v7 = 0.0;
      goto LABEL_16;
    }

    v11 = objc_alloc(MEMORY[0x277CBFED0]);
    v12 = [(ATXContactModeModel *)self featuresToModel:featuresCopy];
    v35 = 0;
    entityDescription = [v11 initWithDictionary:v12 error:&v35];
    v13 = v35;

    if (v13)
    {
      v15 = __atxlog_handle_modes(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(ATXContactModeModel *)v13 scoreFromContactFeatures:v15, v16, v17, v18, v19, v20, v21];
      }
    }

    contactModeModel = self->_contactModeModel;
    v34 = v13;
    v10 = [(MLModel *)contactModeModel predictionFromFeatures:entityDescription error:&v34];
    v6 = v34;

    if (v6)
    {
      v24 = __atxlog_handle_modes(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [(ATXContactModeModel *)v6 scoreFromContactFeatures:v24, v25, v26, v27, v28, v29, v30];
      }
    }

    v31 = [v10 featureValueForName:@"classProbability"];
    [ATXCoreMLUtilities scoreForModelOutputValue:v31 outputIndexedSubscript:1];
    v7 = v32;

    goto LABEL_14;
  }

  v6 = __atxlog_handle_notification_management(uniqueOccurrencesInMode);
  v7 = 0.0;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    entityDescription = [featuresCopy entityDescription];
    uniqueOccurrencesInMode2 = [featuresCopy uniqueOccurrencesInMode];
    v10 = ATXModeToString();
    *buf = 136315907;
    v37 = "[ATXContactModeModel scoreFromContactFeatures:]";
    v38 = 2117;
    v39 = entityDescription;
    v40 = 2048;
    v41 = uniqueOccurrencesInMode2;
    v42 = 2112;
    v43 = v10;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "%s: contact '%{sensitive}@' only had %ld < 3 unique occurrences in mode: '%@' so setting score to zero", buf, 0x2Au);
LABEL_14:
  }

LABEL_16:
  return v7;
}

- (id)purgeDeletedContacts:(id)contacts
{
  v24[1] = *MEMORY[0x277D85DE8];
  contactsCopy = contacts;
  v5 = objc_opt_new();
  v6 = [[ATXStableContactRepresentationDatastore alloc] initWithContactStore:self->_contactStore];
  contactStore = self->_contactStore;
  v8 = objc_alloc(MEMORY[0x277CBDA70]);
  v24[0] = *MEMORY[0x277CBD018];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v10 = [v8 initWithKeysToFetch:v9];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __44__ATXContactModeModel_purgeDeletedContacts___block_invoke;
  v20[3] = &unk_278599BD8;
  v21 = v6;
  v11 = contactsCopy;
  v22 = v11;
  v12 = v5;
  v23 = v12;
  v13 = v6;
  [(CNContactStore *)contactStore enumerateContactsWithFetchRequest:v10 error:0 usingBlock:v20];

  v14 = [v12 count];
  v15 = [v11 count];
  if (v14 != v15)
  {
    v16 = __atxlog_handle_notification_management(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [(ATXContactModeModel *)v11 purgeDeletedContacts:v12, v16];
    }
  }

  v17 = v23;
  v18 = v12;

  return v12;
}

void __44__ATXContactModeModel_purgeDeletedContacts___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 identifier];
  v5 = [v3 stableContactRepresentationForCnContactId:v4 rawIdentifier:0];
  v8 = [v5 stableContactIdentifier];

  v6 = [*(a1 + 40) objectForKeyedSubscript:v8];

  if (v6)
  {
    v7 = [*(a1 + 40) objectForKeyedSubscript:v8];
    [*(a1 + 48) setObject:v7 forKeyedSubscript:v8];
  }
}

void __37__ATXContactModeModel_scoredEntities__block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = [a2 debugDescription];
  v6 = [v5 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_2839A6058];
  v7 = 136315651;
  v8 = "[ATXContactModeModel scoredEntities]_block_invoke";
  v9 = 2117;
  v10 = a1;
  v11 = 2117;
  v12 = v6;
  _os_log_debug_impl(&dword_2263AA000, a3, OS_LOG_TYPE_DEBUG, "  %s: contactId: '%{sensitive}@' features: '%{sensitive}@'", &v7, 0x20u);
}

- (void)scoreFromContactFeatures:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_2263AA000, a2, a3, "ATXContactModeModel - Error initializing MLDictionaryFeatureProvider for inference on the CoreMLModel: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)scoreFromContactFeatures:(uint64_t)a3 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_2263AA000, a2, a3, "ATXContactModeModel - Error during inference on the CoreMLModel: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)purgeDeletedContacts:(NSObject *)a3 .cold.1(void *a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a1 count];
  v6 = 136315394;
  v7 = "[ATXContactModeModel purgeDeletedContacts:]";
  v8 = 2048;
  v9 = v5 - [a2 count];
  _os_log_debug_impl(&dword_2263AA000, a3, OS_LOG_TYPE_DEBUG, "%s: Filtered out %ld deleted contacts", &v6, 0x16u);
}

@end