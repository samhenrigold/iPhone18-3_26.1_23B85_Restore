@interface PGGraphInfoNode
+ (id)assetPropertiesWithNumberOfUtilityAssets:(unint64_t)assets numberOfDefaultAssets:(unint64_t)defaultAssets numberOfImprovedAssets:(unint64_t)improvedAssets numberOfBetterAssets:(unint64_t)betterAssets;
+ (id)genericPropertiesWithCreationDate:(id)date localeIdentifier:(id)identifier languageIdentifiers:(id)identifiers geoServiceProviderID:(id)d curationAlgorithmsVersion:(unint64_t)version contactsStoreAccess:(BOOL)access;
+ (id)locationPropertiesWithCanUseLocationDomain:(BOOL)domain;
+ (id)numberOfSelfies:(unint64_t)selfies;
+ (id)propertiesWithLastIncrementalUpdateInvocationOnDate:(id)date;
+ (id)routineInfoPropertiesWithServiceManager:(id)manager;
+ (id)topTierScorePropertiesWithAestheticScore:(double)score aestheticScoreForTripKeyAsset:(double)asset;
- (BOOL)hasProperties:(id)properties;
- (NSArray)languageIdentifiers;
- (NSLocale)locale;
- (PGGraphInfoNode)initWithCreationDate:(id)date localeIdentifier:(id)identifier languageIdentifiers:(id)identifiers geoServiceProviderID:(id)d curationAlgorithmsVersion:(unint64_t)version contactsStoreAccess:(BOOL)access;
- (PGGraphInfoNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties;
- (double)topTierAestheticScore;
- (double)topTierAestheticScoreForTripKeyAsset;
- (id)propertyDictionary;
- (void)setLocalProperties:(id)properties;
@end

@implementation PGGraphInfoNode

- (double)topTierAestheticScoreForTripKeyAsset
{
  result = self->_topTierAestheticScoreForTripKeyAsset;
  if (result < 0.52)
  {
    return 0.52;
  }

  return result;
}

- (double)topTierAestheticScore
{
  result = self->_topTierAestheticScore;
  if (result < 0.52)
  {
    return 0.52;
  }

  return result;
}

- (NSArray)languageIdentifiers
{
  v3 = objc_opt_class();
  flattenedLanguageIdentifiers = self->_flattenedLanguageIdentifiers;

  return [v3 deserializeLanguageIdentifiers:flattenedLanguageIdentifiers];
}

- (NSLocale)locale
{
  v2 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:self->_localeIdentifier];

  return v2;
}

- (id)propertyDictionary
{
  v55[48] = *MEMORY[0x277D85DE8];
  v54[0] = @"creationDate";
  v53 = [MEMORY[0x277CCABB0] numberWithDouble:self->_creationDateTimeInterval];
  v55[0] = v53;
  v54[1] = @"dateOfLastIncrementalUpdateInvocation";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:self->_dateOfLastIncrementalUpdateInvocationTimeInterval];
  v52 = v3;
  localeIdentifier = self->_localeIdentifier;
  geoServiceProviderID = &stru_2843F5C58;
  if (!localeIdentifier)
  {
    localeIdentifier = &stru_2843F5C58;
  }

  v55[1] = v3;
  v55[2] = localeIdentifier;
  v54[2] = @"localeIdentifier";
  v54[3] = @"languageIdentifiers";
  flattenedLanguageIdentifiers = self->_flattenedLanguageIdentifiers;
  if (!flattenedLanguageIdentifiers)
  {
    flattenedLanguageIdentifiers = &stru_2843F5C58;
  }

  if (self->_geoServiceProviderID)
  {
    geoServiceProviderID = self->_geoServiceProviderID;
  }

  v55[3] = flattenedLanguageIdentifiers;
  v55[4] = geoServiceProviderID;
  v54[4] = @"geoServiceProviderID";
  v54[5] = @"curationAlgorithmsVersion";
  v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_curationAlgorithmsVersion];
  v55[5] = v51;
  v54[6] = @"memoriesAlgorithmsVersion";
  v50 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_memoriesAlgorithmsVersion];
  v55[6] = v50;
  v54[7] = @"meaningAlgorithmsVersion";
  v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_meaningAlgorithmsVersion];
  v55[7] = v49;
  v54[8] = @"eventLabelingV2ModelVersion";
  v48 = [MEMORY[0x277CCABB0] numberWithInteger:self->_eventLabelingV2ModelVersion];
  v55[8] = v48;
  v54[9] = @"personalTraitsEntityNamesVersion";
  v47 = [MEMORY[0x277CCABB0] numberWithInteger:self->_personalTraitsEntityNamesVersion];
  v55[9] = v47;
  v54[10] = @"personActivityMeaningAlgorithmsVersion";
  v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_personActivityMeaningAlgorithmsVersion];
  v55[10] = v46;
  v54[11] = @"relationshipAlgorithmsVersion";
  v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_relationshipAlgorithmsVersion];
  v55[11] = v45;
  v54[12] = @"businessitemAlgorithmsVersion";
  v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_businessItemAlgorithmsVersion];
  v55[12] = v44;
  v54[13] = @"publiceventAlgorithmsVersion";
  v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_publicEventAlgorithmsVersion];
  v55[13] = v43;
  v54[14] = @"holidayAlgorithmsVersion";
  v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_holidayAlgorithmsVersion];
  v55[14] = v42;
  v54[15] = @"frequentlocationAlgorithmsVersion";
  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_frequentLocationAlgorithmsVersion];
  v55[15] = v41;
  v54[16] = @"autonamingAlgorithmsVersion";
  v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_autonamingAlgorithmsVersion];
  v55[16] = v40;
  v54[17] = @"questionsVersion";
  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_questionsVersion];
  v55[17] = v39;
  v54[18] = @"tripKeyAssetAlgorithmsVersion";
  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_tripKeyAssetAlgorithmsVersion];
  v55[18] = v38;
  v54[19] = @"ageCategoryAlgorithmsVersion";
  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_ageCategoryAlgorithmsVersion];
  v55[19] = v37;
  v54[20] = @"memoryQualityAlgorithmsVersion";
  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_memoryQualityAlgorithmsVersion];
  v55[20] = v36;
  v54[21] = @"petAlgorithmsVersion";
  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_petAlgorithmsVersion];
  v55[21] = v35;
  v54[22] = @"featuredPhotoAlgorithmsVersion";
  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_featuredPhotoAlgorithmsVersion];
  v55[22] = v34;
  v54[23] = @"longTailFeaturedPhotoAlgorithmsVersion";
  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_longTailFeaturedPhotoAlgorithmsVersion];
  v55[23] = v33;
  v54[24] = @"sharedLibrarySuggestionsAlgorithmsVersion";
  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_sharedLibrarySuggestionsAlgorithmsVersion];
  v55[24] = v32;
  v54[25] = @"sharedLibraryStartAlgorithmsVersion";
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_sharedLibraryStartAlgorithmsVersion];
  v55[25] = v31;
  v54[26] = @"sharedLibraryCameraLibrarySwitchAlgorithmsVersion";
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_sharedLibraryCameraLibrarySwitchAlgorithmsVersion];
  v55[26] = v30;
  v54[27] = @"wallpaperAlgorithmsVersion";
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_wallpaperAlgorithmsVersion];
  v55[27] = v29;
  v54[28] = @"locationRepresentativeAssetAlgorithmsVersion";
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_locationRepresentativeAssetAlgorithmsVersion];
  v55[28] = v28;
  v54[29] = @"canUseLocationDomain";
  v27 = [MEMORY[0x277CCABB0] numberWithBool:self->_canUseLocationDomain];
  v55[29] = v27;
  v54[30] = @"routineAvailable";
  v26 = [MEMORY[0x277CCABB0] numberWithBool:self->_routineInfo.routineAvailable];
  v55[30] = v26;
  v54[31] = @"routineNumberOfLocationsOfInterest";
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_routineInfo.numberOfLocationsOfInterest];
  v55[31] = v25;
  v54[32] = @"routineNumberOfVisits";
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_routineInfo.numberOfVisits];
  v55[32] = v24;
  v54[33] = @"routineNumberOfTimeMatches";
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_routineInfo.numberOfTimeMatches];
  v55[33] = v23;
  v54[34] = @"routineNumberOfClosebyLocationMatches";
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_routineInfo.numberOfCloseByLocationMatches];
  v55[34] = v22;
  v54[35] = @"routineNumberOfRemoteLocationMatches";
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_routineInfo.numberOfRemoteLocationMatches];
  v55[35] = v21;
  v54[36] = @"routineNumberofMatchRequests";
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_routineInfo.numberOfMatchRequests];
  v55[36] = v20;
  v54[37] = @"routinePinningVisitsRatio";
  v19 = [MEMORY[0x277CCABB0] numberWithDouble:self->_routineInfo.pinningVisitsRatio];
  v55[37] = v19;
  v54[38] = @"numberOfSelfies";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfSelfies];
  v55[38] = v18;
  v54[39] = @"topTierAestheticScore";
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_topTierAestheticScore];
  v55[39] = v7;
  v54[40] = @"topTierAestheticScoreForTripKeyAsset";
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_topTierAestheticScoreForTripKeyAsset];
  v55[40] = v8;
  v54[41] = @"numberOfUtilityAssets";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfUtilityAssets];
  v55[41] = v9;
  v54[42] = @"numberOfDefaultAssets";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfDefaultAssets];
  v55[42] = v10;
  v54[43] = @"numberOfImprovedAssets";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfImprovedAssets];
  v55[43] = v11;
  v54[44] = @"numberOfBetterAssets";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfBetterAssets];
  v55[44] = v12;
  v54[45] = @"canAccessContactsStore";
  v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_canAccessContactsStore];
  v55[45] = v13;
  v54[46] = @"mergeCandidateConfidenceThreshold";
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mergeCandidateConfidenceThreshold];
  v55[46] = v14;
  v54[47] = @"IntelligencePlatformVersion";
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:self->_intelligencePlatformVersion];
  v55[47] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:48];

  return v16;
}

- (BOOL)hasProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = propertiesCopy;
  if (propertiesCopy && [propertiesCopy count])
  {
    v6 = [v5 objectForKeyedSubscript:@"creationDate"];
    v7 = v6;
    v61 = 0;
    if (!v6 || ([v6 doubleValue], v8 == self->_creationDateTimeInterval))
    {

      v9 = [v5 objectForKeyedSubscript:@"dateOfLastIncrementalUpdateInvocation"];
      v7 = v9;
      if (!v9 || ([v9 doubleValue], v10 == self->_dateOfLastIncrementalUpdateInvocationTimeInterval))
      {

        v11 = [v5 objectForKeyedSubscript:@"localeIdentifier"];
        v7 = v11;
        if (!v11 || [v11 isEqual:self->_localeIdentifier])
        {

          v12 = [v5 objectForKeyedSubscript:@"languageIdentifiers"];
          v7 = v12;
          if (!v12 || [v12 isEqual:self->_flattenedLanguageIdentifiers])
          {

            v13 = [v5 objectForKeyedSubscript:@"geoServiceProviderID"];
            v7 = v13;
            if (!v13 || [v13 isEqual:self->_geoServiceProviderID])
            {

              v14 = [v5 objectForKeyedSubscript:@"curationAlgorithmsVersion"];
              v7 = v14;
              if (!v14 || [v14 unsignedIntegerValue] == self->_curationAlgorithmsVersion)
              {

                v15 = [v5 objectForKeyedSubscript:@"memoriesAlgorithmsVersion"];
                v7 = v15;
                if (!v15 || [v15 unsignedIntegerValue] == self->_memoriesAlgorithmsVersion)
                {

                  v16 = [v5 objectForKeyedSubscript:@"meaningAlgorithmsVersion"];
                  v7 = v16;
                  if (!v16 || [v16 unsignedIntegerValue] == self->_meaningAlgorithmsVersion)
                  {

                    v17 = [v5 objectForKeyedSubscript:@"personActivityMeaningAlgorithmsVersion"];
                    v7 = v17;
                    if (!v17 || [v17 unsignedIntegerValue] == self->_personActivityMeaningAlgorithmsVersion)
                    {

                      v18 = [v5 objectForKeyedSubscript:@"relationshipAlgorithmsVersion"];
                      v7 = v18;
                      if (!v18 || [v18 unsignedIntegerValue] == self->_relationshipAlgorithmsVersion)
                      {

                        v19 = [v5 objectForKeyedSubscript:@"businessitemAlgorithmsVersion"];
                        v7 = v19;
                        if (!v19 || [v19 unsignedIntegerValue] == self->_businessItemAlgorithmsVersion)
                        {

                          v20 = [v5 objectForKeyedSubscript:@"publiceventAlgorithmsVersion"];
                          v7 = v20;
                          if (!v20 || [v20 unsignedIntegerValue] == self->_publicEventAlgorithmsVersion)
                          {

                            v21 = [v5 objectForKeyedSubscript:@"holidayAlgorithmsVersion"];
                            v7 = v21;
                            if (!v21 || [v21 unsignedIntegerValue] == self->_holidayAlgorithmsVersion)
                            {

                              v22 = [v5 objectForKeyedSubscript:@"frequentlocationAlgorithmsVersion"];
                              v7 = v22;
                              if (!v22 || [v22 unsignedIntegerValue] == self->_frequentLocationAlgorithmsVersion)
                              {

                                v23 = [v5 objectForKeyedSubscript:@"autonamingAlgorithmsVersion"];
                                v7 = v23;
                                if (!v23 || [v23 unsignedIntegerValue] == self->_autonamingAlgorithmsVersion)
                                {

                                  v24 = [v5 objectForKeyedSubscript:@"questionsVersion"];
                                  v7 = v24;
                                  if (!v24 || [v24 unsignedIntegerValue] == self->_questionsVersion)
                                  {

                                    v25 = [v5 objectForKeyedSubscript:@"tripKeyAssetAlgorithmsVersion"];
                                    v7 = v25;
                                    if (!v25 || [v25 unsignedIntegerValue] == self->_tripKeyAssetAlgorithmsVersion)
                                    {

                                      v26 = [v5 objectForKeyedSubscript:@"ageCategoryAlgorithmsVersion"];
                                      v7 = v26;
                                      if (!v26 || [v26 unsignedIntegerValue] == self->_ageCategoryAlgorithmsVersion)
                                      {

                                        v27 = [v5 objectForKeyedSubscript:@"memoryQualityAlgorithmsVersion"];
                                        v7 = v27;
                                        if (!v27 || [v27 unsignedIntegerValue] == self->_memoryQualityAlgorithmsVersion)
                                        {

                                          v28 = [v5 objectForKeyedSubscript:@"petAlgorithmsVersion"];
                                          v7 = v28;
                                          if (!v28 || [v28 unsignedIntegerValue] == self->_petAlgorithmsVersion)
                                          {

                                            v29 = [v5 objectForKeyedSubscript:@"featuredPhotoAlgorithmsVersion"];
                                            v7 = v29;
                                            if (!v29 || [v29 unsignedIntegerValue] == self->_featuredPhotoAlgorithmsVersion)
                                            {

                                              v30 = [v5 objectForKeyedSubscript:@"longTailFeaturedPhotoAlgorithmsVersion"];
                                              v7 = v30;
                                              if (!v30 || [v30 unsignedIntegerValue] == self->_longTailFeaturedPhotoAlgorithmsVersion)
                                              {

                                                v31 = [v5 objectForKeyedSubscript:@"sharedLibrarySuggestionsAlgorithmsVersion"];
                                                v7 = v31;
                                                if (!v31 || [v31 unsignedIntegerValue] == self->_sharedLibrarySuggestionsAlgorithmsVersion)
                                                {

                                                  v32 = [v5 objectForKeyedSubscript:@"sharedLibraryStartAlgorithmsVersion"];
                                                  v7 = v32;
                                                  if (!v32 || [v32 unsignedIntegerValue] == self->_sharedLibraryStartAlgorithmsVersion)
                                                  {

                                                    v33 = [v5 objectForKeyedSubscript:@"sharedLibraryCameraLibrarySwitchAlgorithmsVersion"];
                                                    v7 = v33;
                                                    if (!v33 || [v33 unsignedIntegerValue] == self->_sharedLibraryCameraLibrarySwitchAlgorithmsVersion)
                                                    {

                                                      v34 = [v5 objectForKeyedSubscript:@"wallpaperAlgorithmsVersion"];
                                                      v7 = v34;
                                                      if (!v34 || [v34 unsignedIntegerValue] == self->_wallpaperAlgorithmsVersion)
                                                      {

                                                        v35 = [v5 objectForKeyedSubscript:@"locationRepresentativeAssetAlgorithmsVersion"];
                                                        v7 = v35;
                                                        if (!v35 || [v35 unsignedIntegerValue] == self->_locationRepresentativeAssetAlgorithmsVersion)
                                                        {

                                                          v36 = [v5 objectForKeyedSubscript:@"eventLabelingV2ModelVersion"];
                                                          v7 = v36;
                                                          if (!v36 || [v36 integerValue] == self->_eventLabelingV2ModelVersion)
                                                          {

                                                            v37 = [v5 objectForKeyedSubscript:@"personalTraitsEntityNamesVersion"];
                                                            v7 = v37;
                                                            if (!v37 || [v37 integerValue] == self->_personalTraitsEntityNamesVersion)
                                                            {

                                                              v38 = [v5 objectForKeyedSubscript:@"canUseLocationDomain"];
                                                              v7 = v38;
                                                              if (!v38 || self->_canUseLocationDomain == [v38 BOOLValue])
                                                              {

                                                                v39 = [v5 objectForKeyedSubscript:@"routineAvailable"];
                                                                v7 = v39;
                                                                if (!v39 || self->_routineInfo.routineAvailable == [v39 BOOLValue])
                                                                {

                                                                  v40 = [v5 objectForKeyedSubscript:@"routineNumberOfLocationsOfInterest"];
                                                                  v7 = v40;
                                                                  if (!v40 || [v40 unsignedIntegerValue] == self->_routineInfo.numberOfLocationsOfInterest)
                                                                  {

                                                                    v41 = [v5 objectForKeyedSubscript:@"routineNumberOfVisits"];
                                                                    v7 = v41;
                                                                    if (!v41 || [v41 unsignedIntegerValue] == self->_routineInfo.numberOfVisits)
                                                                    {

                                                                      v42 = [v5 objectForKeyedSubscript:@"routineNumberOfTimeMatches"];
                                                                      v7 = v42;
                                                                      if (!v42 || [v42 unsignedIntegerValue] == self->_routineInfo.numberOfTimeMatches)
                                                                      {

                                                                        v43 = [v5 objectForKeyedSubscript:@"routineNumberOfClosebyLocationMatches"];
                                                                        v7 = v43;
                                                                        if (!v43 || [v43 unsignedIntegerValue] == self->_routineInfo.numberOfCloseByLocationMatches)
                                                                        {

                                                                          v44 = [v5 objectForKeyedSubscript:@"routineNumberOfRemoteLocationMatches"];
                                                                          v7 = v44;
                                                                          if (!v44 || [v44 unsignedIntegerValue] == self->_routineInfo.numberOfRemoteLocationMatches)
                                                                          {

                                                                            v45 = [v5 objectForKeyedSubscript:@"routineNumberofMatchRequests"];
                                                                            v7 = v45;
                                                                            if (!v45 || [v45 unsignedIntegerValue] == self->_routineInfo.numberOfMatchRequests)
                                                                            {

                                                                              v46 = [v5 objectForKeyedSubscript:@"routinePinningVisitsRatio"];
                                                                              v7 = v46;
                                                                              if (!v46 || self->_routineInfo.pinningVisitsRatio == [v46 unsignedIntegerValue])
                                                                              {

                                                                                v47 = [v5 objectForKeyedSubscript:@"numberOfSelfies"];
                                                                                v7 = v47;
                                                                                if (!v47 || [v47 unsignedIntegerValue] == self->_numberOfSelfies)
                                                                                {

                                                                                  v48 = [v5 objectForKeyedSubscript:@"topTierAestheticScore"];
                                                                                  v7 = v48;
                                                                                  if (!v48 || ([v48 doubleValue], v49 == self->_topTierAestheticScore))
                                                                                  {

                                                                                    v50 = [v5 objectForKeyedSubscript:@"topTierAestheticScoreForTripKeyAsset"];
                                                                                    v7 = v50;
                                                                                    if (!v50 || ([v50 doubleValue], v51 == self->_topTierAestheticScoreForTripKeyAsset))
                                                                                    {

                                                                                      v52 = [v5 objectForKeyedSubscript:@"numberOfUtilityAssets"];
                                                                                      v7 = v52;
                                                                                      if (!v52 || [v52 unsignedIntegerValue] == self->_numberOfUtilityAssets)
                                                                                      {

                                                                                        v53 = [v5 objectForKeyedSubscript:@"numberOfDefaultAssets"];
                                                                                        v7 = v53;
                                                                                        if (!v53 || [v53 unsignedIntegerValue] == self->_numberOfDefaultAssets)
                                                                                        {

                                                                                          v54 = [v5 objectForKeyedSubscript:@"numberOfImprovedAssets"];
                                                                                          v7 = v54;
                                                                                          if (!v54 || [v54 unsignedIntegerValue] == self->_numberOfImprovedAssets)
                                                                                          {

                                                                                            v55 = [v5 objectForKeyedSubscript:@"numberOfBetterAssets"];
                                                                                            v7 = v55;
                                                                                            if (!v55 || [v55 unsignedIntegerValue] == self->_numberOfBetterAssets)
                                                                                            {

                                                                                              v56 = [v5 objectForKeyedSubscript:@"canAccessContactsStore"];
                                                                                              v7 = v56;
                                                                                              if (!v56 || self->_canAccessContactsStore == [v56 BOOLValue])
                                                                                              {

                                                                                                v57 = [v5 objectForKeyedSubscript:@"mergeCandidateConfidenceThreshold"];
                                                                                                v7 = v57;
                                                                                                if (!v57 || ([v57 doubleValue], v58 == self->_mergeCandidateConfidenceThreshold))
                                                                                                {

                                                                                                  v59 = [v5 objectForKeyedSubscript:@"IntelligencePlatformVersion"];
                                                                                                  v7 = v59;
                                                                                                  if (!v59 || ([v59 doubleValue], v60 == self->_intelligencePlatformVersion))
                                                                                                  {
                                                                                                    v61 = 1;
                                                                                                  }
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v61 = 1;
  }

  return v61;
}

- (void)setLocalProperties:(id)properties
{
  propertiesCopy = properties;
  v4 = [propertiesCopy objectForKeyedSubscript:@"creationDate"];
  [v4 doubleValue];
  self->_creationDateTimeInterval = v5;

  v6 = [propertiesCopy objectForKeyedSubscript:@"dateOfLastIncrementalUpdateInvocation"];
  [v6 doubleValue];
  self->_dateOfLastIncrementalUpdateInvocationTimeInterval = v7;

  v8 = [propertiesCopy objectForKeyedSubscript:@"localeIdentifier"];
  localeIdentifier = self->_localeIdentifier;
  self->_localeIdentifier = v8;

  v10 = [propertiesCopy objectForKeyedSubscript:@"languageIdentifiers"];
  flattenedLanguageIdentifiers = self->_flattenedLanguageIdentifiers;
  self->_flattenedLanguageIdentifiers = v10;

  v12 = [propertiesCopy objectForKeyedSubscript:@"geoServiceProviderID"];
  geoServiceProviderID = self->_geoServiceProviderID;
  self->_geoServiceProviderID = v12;

  v14 = [propertiesCopy objectForKeyedSubscript:@"curationAlgorithmsVersion"];
  self->_curationAlgorithmsVersion = [v14 unsignedIntegerValue];

  v15 = [propertiesCopy objectForKeyedSubscript:@"memoriesAlgorithmsVersion"];
  self->_memoriesAlgorithmsVersion = [v15 unsignedIntegerValue];

  v16 = [propertiesCopy objectForKeyedSubscript:@"meaningAlgorithmsVersion"];
  self->_meaningAlgorithmsVersion = [v16 unsignedIntegerValue];

  v17 = [propertiesCopy objectForKeyedSubscript:@"personActivityMeaningAlgorithmsVersion"];
  self->_personActivityMeaningAlgorithmsVersion = [v17 unsignedIntegerValue];

  v18 = [propertiesCopy objectForKeyedSubscript:@"relationshipAlgorithmsVersion"];
  self->_relationshipAlgorithmsVersion = [v18 unsignedIntegerValue];

  v19 = [propertiesCopy objectForKeyedSubscript:@"businessitemAlgorithmsVersion"];
  self->_businessItemAlgorithmsVersion = [v19 unsignedIntegerValue];

  v20 = [propertiesCopy objectForKeyedSubscript:@"publiceventAlgorithmsVersion"];
  self->_publicEventAlgorithmsVersion = [v20 unsignedIntegerValue];

  v21 = [propertiesCopy objectForKeyedSubscript:@"holidayAlgorithmsVersion"];
  self->_holidayAlgorithmsVersion = [v21 unsignedIntegerValue];

  v22 = [propertiesCopy objectForKeyedSubscript:@"frequentlocationAlgorithmsVersion"];
  self->_frequentLocationAlgorithmsVersion = [v22 unsignedIntegerValue];

  v23 = [propertiesCopy objectForKeyedSubscript:@"autonamingAlgorithmsVersion"];
  self->_autonamingAlgorithmsVersion = [v23 unsignedIntegerValue];

  v24 = [propertiesCopy objectForKeyedSubscript:@"questionsVersion"];
  self->_questionsVersion = [v24 unsignedIntegerValue];

  v25 = [propertiesCopy objectForKeyedSubscript:@"tripKeyAssetAlgorithmsVersion"];
  self->_tripKeyAssetAlgorithmsVersion = [v25 unsignedIntegerValue];

  v26 = [propertiesCopy objectForKeyedSubscript:@"ageCategoryAlgorithmsVersion"];
  self->_ageCategoryAlgorithmsVersion = [v26 unsignedIntegerValue];

  v27 = [propertiesCopy objectForKeyedSubscript:@"memoryQualityAlgorithmsVersion"];
  self->_memoryQualityAlgorithmsVersion = [v27 unsignedIntegerValue];

  v28 = [propertiesCopy objectForKeyedSubscript:@"petAlgorithmsVersion"];
  self->_petAlgorithmsVersion = [v28 unsignedIntegerValue];

  v29 = [propertiesCopy objectForKeyedSubscript:@"featuredPhotoAlgorithmsVersion"];
  self->_featuredPhotoAlgorithmsVersion = [v29 unsignedIntegerValue];

  v30 = [propertiesCopy objectForKeyedSubscript:@"longTailFeaturedPhotoAlgorithmsVersion"];
  self->_longTailFeaturedPhotoAlgorithmsVersion = [v30 unsignedIntegerValue];

  v31 = [propertiesCopy objectForKeyedSubscript:@"sharedLibrarySuggestionsAlgorithmsVersion"];
  self->_sharedLibrarySuggestionsAlgorithmsVersion = [v31 unsignedIntegerValue];

  v32 = [propertiesCopy objectForKeyedSubscript:@"sharedLibraryStartAlgorithmsVersion"];
  self->_sharedLibraryStartAlgorithmsVersion = [v32 unsignedIntegerValue];

  v33 = [propertiesCopy objectForKeyedSubscript:@"sharedLibraryCameraLibrarySwitchAlgorithmsVersion"];
  self->_sharedLibraryCameraLibrarySwitchAlgorithmsVersion = [v33 unsignedIntegerValue];

  v34 = [propertiesCopy objectForKeyedSubscript:@"wallpaperAlgorithmsVersion"];
  self->_wallpaperAlgorithmsVersion = [v34 unsignedIntegerValue];

  v35 = [propertiesCopy objectForKeyedSubscript:@"locationRepresentativeAssetAlgorithmsVersion"];
  self->_locationRepresentativeAssetAlgorithmsVersion = [v35 unsignedIntegerValue];

  v36 = [propertiesCopy objectForKeyedSubscript:@"eventLabelingV2ModelVersion"];
  self->_eventLabelingV2ModelVersion = [v36 integerValue];

  v37 = [propertiesCopy objectForKeyedSubscript:@"personalTraitsEntityNamesVersion"];
  self->_personalTraitsEntityNamesVersion = [v37 integerValue];

  v38 = [propertiesCopy objectForKeyedSubscript:@"canUseLocationDomain"];
  v39 = v38;
  if (v38)
  {
    bOOLValue = [v38 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  self->_canUseLocationDomain = bOOLValue;
  v41 = [propertiesCopy objectForKeyedSubscript:@"routineAvailable"];
  self->_routineInfo.routineAvailable = [v41 BOOLValue];

  v42 = [propertiesCopy objectForKeyedSubscript:@"routineNumberOfLocationsOfInterest"];
  self->_routineInfo.numberOfLocationsOfInterest = [v42 unsignedIntegerValue];

  v43 = [propertiesCopy objectForKeyedSubscript:@"routineNumberOfVisits"];
  self->_routineInfo.numberOfVisits = [v43 unsignedIntegerValue];

  v44 = [propertiesCopy objectForKeyedSubscript:@"routineNumberOfTimeMatches"];
  self->_routineInfo.numberOfTimeMatches = [v44 unsignedIntegerValue];

  v45 = [propertiesCopy objectForKeyedSubscript:@"routineNumberOfClosebyLocationMatches"];
  self->_routineInfo.numberOfCloseByLocationMatches = [v45 unsignedIntegerValue];

  v46 = [propertiesCopy objectForKeyedSubscript:@"routineNumberOfRemoteLocationMatches"];
  self->_routineInfo.numberOfRemoteLocationMatches = [v46 unsignedIntegerValue];

  v47 = [propertiesCopy objectForKeyedSubscript:@"routineNumberofMatchRequests"];
  self->_routineInfo.numberOfMatchRequests = [v47 unsignedIntegerValue];

  v48 = [propertiesCopy objectForKeyedSubscript:@"routinePinningVisitsRatio"];
  [v48 doubleValue];
  self->_routineInfo.pinningVisitsRatio = v49;

  v50 = [propertiesCopy objectForKeyedSubscript:@"numberOfSelfies"];
  self->_numberOfSelfies = [v50 unsignedIntegerValue];

  v51 = [propertiesCopy objectForKeyedSubscript:@"topTierAestheticScore"];
  [v51 doubleValue];
  self->_topTierAestheticScore = v52;

  v53 = [propertiesCopy objectForKeyedSubscript:@"topTierAestheticScoreForTripKeyAsset"];
  [v53 doubleValue];
  self->_topTierAestheticScoreForTripKeyAsset = v54;

  v55 = [propertiesCopy objectForKeyedSubscript:@"numberOfUtilityAssets"];
  self->_numberOfUtilityAssets = [v55 unsignedIntegerValue];

  v56 = [propertiesCopy objectForKeyedSubscript:@"numberOfDefaultAssets"];
  self->_numberOfDefaultAssets = [v56 unsignedIntegerValue];

  v57 = [propertiesCopy objectForKeyedSubscript:@"numberOfImprovedAssets"];
  self->_numberOfImprovedAssets = [v57 unsignedIntegerValue];

  v58 = [propertiesCopy objectForKeyedSubscript:@"numberOfBetterAssets"];
  self->_numberOfBetterAssets = [v58 unsignedIntegerValue];

  v59 = [propertiesCopy objectForKeyedSubscript:@"canAccessContactsStore"];
  v60 = v59;
  if (v59)
  {
    bOOLValue2 = [v59 BOOLValue];
  }

  else
  {
    bOOLValue2 = 1;
  }

  self->_canAccessContactsStore = bOOLValue2;
  v62 = [propertiesCopy objectForKeyedSubscript:@"mergeCandidateConfidenceThreshold"];
  [v62 doubleValue];
  self->_mergeCandidateConfidenceThreshold = v63;

  v64 = [propertiesCopy objectForKeyedSubscript:@"IntelligencePlatformVersion"];
  [v64 doubleValue];
  self->_intelligencePlatformVersion = v65;
}

- (PGGraphInfoNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties
{
  propertiesCopy = properties;
  v7 = [(PGGraphNode *)self init];
  v8 = v7;
  if (v7)
  {
    [(PGGraphInfoNode *)v7 setLocalProperties:propertiesCopy];
  }

  return v8;
}

- (PGGraphInfoNode)initWithCreationDate:(id)date localeIdentifier:(id)identifier languageIdentifiers:(id)identifiers geoServiceProviderID:(id)d curationAlgorithmsVersion:(unint64_t)version contactsStoreAccess:(BOOL)access
{
  accessCopy = access;
  dateCopy = date;
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  dCopy = d;
  v21.receiver = self;
  v21.super_class = PGGraphInfoNode;
  v18 = [(PGGraphNode *)&v21 init];
  if (v18)
  {
    v19 = [objc_opt_class() genericPropertiesWithCreationDate:dateCopy localeIdentifier:identifierCopy languageIdentifiers:identifiersCopy geoServiceProviderID:dCopy curationAlgorithmsVersion:version contactsStoreAccess:accessCopy];
    [(PGGraphInfoNode *)v18 setLocalProperties:v19];
  }

  return v18;
}

+ (id)numberOfSelfies:(unint64_t)selfies
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"numberOfSelfies";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:selfies];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

+ (id)topTierScorePropertiesWithAestheticScore:(double)score aestheticScoreForTripKeyAsset:(double)asset
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"topTierAestheticScore";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:score];
  v9[1] = @"topTierAestheticScoreForTripKeyAsset";
  v10[0] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:asset];
  v10[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

+ (id)assetPropertiesWithNumberOfUtilityAssets:(unint64_t)assets numberOfDefaultAssets:(unint64_t)defaultAssets numberOfImprovedAssets:(unint64_t)improvedAssets numberOfBetterAssets:(unint64_t)betterAssets
{
  v16[4] = *MEMORY[0x277D85DE8];
  v15[0] = @"numberOfUtilityAssets";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:assets];
  v16[0] = v9;
  v15[1] = @"numberOfDefaultAssets";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:defaultAssets];
  v16[1] = v10;
  v15[2] = @"numberOfImprovedAssets";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:improvedAssets];
  v16[2] = v11;
  v15[3] = @"numberOfBetterAssets";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:betterAssets];
  v16[3] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];

  return v13;
}

+ (id)routineInfoPropertiesWithServiceManager:(id)manager
{
  v19[8] = *MEMORY[0x277D85DE8];
  v18[0] = @"routineAvailable";
  v3 = MEMORY[0x277CCABB0];
  managerCopy = manager;
  v5 = [v3 numberWithBool:{objc_msgSend(managerCopy, "routineIsAvailable")}];
  v19[0] = v5;
  v18[1] = @"routineNumberOfLocationsOfInterest";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(managerCopy, "numberOfLocationsOfInterest")}];
  v19[1] = v6;
  v18[2] = @"routineNumberOfVisits";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(managerCopy, "numberOfVisits")}];
  v19[2] = v7;
  v18[3] = @"routineNumberOfTimeMatches";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(managerCopy, "numberOfTimeMatches")}];
  v19[3] = v8;
  v18[4] = @"routineNumberOfClosebyLocationMatches";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(managerCopy, "numberOfCloseByLocationMatches")}];
  v19[4] = v9;
  v18[5] = @"routineNumberOfRemoteLocationMatches";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(managerCopy, "numberOfRemoteLocationMatches")}];
  v19[5] = v10;
  v18[6] = @"routineNumberofMatchRequests";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(managerCopy, "numberOfMatchRequests")}];
  v19[6] = v11;
  v18[7] = @"routinePinningVisitsRatio";
  v12 = MEMORY[0x277CCABB0];
  [managerCopy pinningVisitsRatio];
  v14 = v13;

  v15 = [v12 numberWithDouble:v14];
  v19[7] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:8];

  return v16;
}

+ (id)locationPropertiesWithCanUseLocationDomain:(BOOL)domain
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"canUseLocationDomain";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:domain];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

+ (id)propertiesWithLastIncrementalUpdateInvocationOnDate:(id)date
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"dateOfLastIncrementalUpdateInvocation";
  v3 = MEMORY[0x277CCABB0];
  [date timeIntervalSinceReferenceDate];
  v4 = [v3 numberWithDouble:?];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

+ (id)genericPropertiesWithCreationDate:(id)date localeIdentifier:(id)identifier languageIdentifiers:(id)identifiers geoServiceProviderID:(id)d curationAlgorithmsVersion:(unint64_t)version contactsStoreAccess:(BOOL)access
{
  accessCopy = access;
  v43[32] = *MEMORY[0x277D85DE8];
  dCopy = d;
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  dateCopy = date;
  v39 = [objc_opt_class() serializeLanguageIdentifiers:identifiersCopy];

  v41 = objc_alloc_init(PGEventLabelingConfiguration);
  modelVersion = [(PGEventLabelingConfiguration *)v41 modelVersion];
  v15 = objc_alloc_init(MEMORY[0x277D3C800]);
  configurationVersion = [v15 configurationVersion];

  v17 = *MEMORY[0x277D1F400];
  v42[0] = @"creationDate";
  v18 = MEMORY[0x277CCABB0];
  [dateCopy timeIntervalSinceReferenceDate];
  v40 = [v18 numberWithDouble:?];
  v43[0] = v40;
  v42[1] = @"dateOfLastIncrementalUpdateInvocation";
  v19 = MEMORY[0x277CCABB0];
  [dateCopy timeIntervalSinceReferenceDate];
  v21 = v20;

  v22 = [v19 numberWithDouble:v21];
  v43[1] = v22;
  v43[2] = identifierCopy;
  v42[2] = @"localeIdentifier";
  v42[3] = @"languageIdentifiers";
  v43[3] = v39;
  v43[4] = dCopy;
  v42[4] = @"geoServiceProviderID";
  v42[5] = @"canAccessContactsStore";
  v23 = [MEMORY[0x277CCABB0] numberWithBool:accessCopy];
  v43[5] = v23;
  v42[6] = @"eventLabelingV2ModelVersion";
  v24 = [MEMORY[0x277CCABB0] numberWithInteger:modelVersion];
  v43[6] = v24;
  v42[7] = @"personalTraitsEntityNamesVersion";
  v25 = [MEMORY[0x277CCABB0] numberWithInteger:configurationVersion];
  v43[7] = v25;
  v42[8] = @"curationAlgorithmsVersion";
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:version];
  v43[8] = v26;
  v43[9] = &unk_2844846F8;
  v42[9] = @"memoriesAlgorithmsVersion";
  v42[10] = @"meaningAlgorithmsVersion";
  v42[11] = @"personActivityMeaningAlgorithmsVersion";
  v42[12] = @"relationshipAlgorithmsVersion";
  v43[10] = &unk_284484710;
  v43[11] = &unk_284484728;
  v43[12] = &unk_284484740;
  v42[13] = @"businessitemAlgorithmsVersion";
  v27 = MEMORY[0x277CCABB0];
  if (_os_feature_enabled_impl())
  {
    v28 = 2;
  }

  else
  {
    v28 = 1;
  }

  v29 = [v27 numberWithUnsignedInteger:{v28, version}];
  v43[13] = v29;
  v43[14] = &unk_284484728;
  v42[14] = @"publiceventAlgorithmsVersion";
  v42[15] = @"holidayAlgorithmsVersion";
  v43[15] = &unk_284484758;
  v43[16] = &unk_284484758;
  v42[16] = @"frequentlocationAlgorithmsVersion";
  v42[17] = @"autonamingAlgorithmsVersion";
  v43[17] = &unk_284484728;
  v43[18] = &unk_284484770;
  v42[18] = @"questionsVersion";
  v42[19] = @"tripKeyAssetAlgorithmsVersion";
  v43[19] = &unk_284484728;
  v43[20] = &unk_284484728;
  v42[20] = @"ageCategoryAlgorithmsVersion";
  v42[21] = @"memoryQualityAlgorithmsVersion";
  v43[21] = &unk_284484728;
  v42[22] = @"petAlgorithmsVersion";
  v30 = [MEMORY[0x277CCABB0] numberWithInt:201];
  v43[22] = v30;
  v43[23] = &unk_284484728;
  v42[23] = @"featuredPhotoAlgorithmsVersion";
  v42[24] = @"longTailFeaturedPhotoAlgorithmsVersion";
  v43[24] = &unk_284484728;
  v43[25] = &unk_284484728;
  v42[25] = @"sharedLibrarySuggestionsAlgorithmsVersion";
  v42[26] = @"sharedLibraryStartAlgorithmsVersion";
  v43[26] = &unk_284484728;
  v43[27] = &unk_284484758;
  v42[27] = @"sharedLibraryCameraLibrarySwitchAlgorithmsVersion";
  v42[28] = @"wallpaperAlgorithmsVersion";
  v43[28] = &unk_284484728;
  v43[29] = &unk_284484758;
  v42[29] = @"locationRepresentativeAssetAlgorithmsVersion";
  v42[30] = @"mergeCandidateConfidenceThreshold";
  v31 = MEMORY[0x277CCABB0];
  [MEMORY[0x277D3C790] mergeCandidateConfidenceThreshold];
  v32 = [v31 numberWithDouble:?];
  v43[30] = v32;
  v42[31] = @"IntelligencePlatformVersion";
  v33 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
  v43[31] = v33;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:32];

  return v34;
}

@end