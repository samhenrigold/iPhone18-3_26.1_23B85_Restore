@interface PGMemoryPhotosGraphProperties
+ (id)_storyRecipeSongCatalogForAppleMusicSubscriber:(BOOL)subscriber;
- (BOOL)isTriggered;
- (PGMemoryPhotosGraphProperties)initWithEnrichedMemory:(id)memory neighborScoreComputer:(id)computer isAppleMusicSubscriber:(BOOL)subscriber photoLibrary:(id)library loggingConnection:(id)connection;
- (id)_recipeFromEnrichedMemory:(id)memory subscriberCatalog:(id)catalog applyColorGrading:(BOOL)grading loggingConnection:(id)connection;
- (id)dictionary;
- (id)encodedBlockableFeatures;
- (id)encodedFeatures;
- (id)featureVectorV1;
- (id)featureVectorV2;
- (id)infoDictionary;
- (id)infoForBackingMoments;
- (id)infoForChapterTitles;
- (id)infoForGraphCollection;
- (id)personLocalIdentifiers;
- (id)storyTitleCategory;
- (id)triggerTypesArray;
- (int64_t)phTitleCategory;
- (int64_t)sourceType;
- (unint64_t)numberOfMoments;
@end

@implementation PGMemoryPhotosGraphProperties

- (id)storyTitleCategory
{
  generateNextStoryTitleStyleIndex = [MEMORY[0x277D3C818] generateNextStoryTitleStyleIndex];

  return MEMORY[0x28219B940](generateNextStoryTitleStyleIndex);
}

- (id)infoForChapterTitles
{
  v17 = *MEMORY[0x277D85DE8];
  chapterTitles = [(PGEnrichedMemoryProtocol *)self->_enrichedMemory chapterTitles];

  if (chapterTitles)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    chapterTitles2 = [(PGEnrichedMemoryProtocol *)self->_enrichedMemory chapterTitles];
    v6 = [chapterTitles2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(chapterTitles2);
          }

          dictionaryRepresentation = [*(*(&v12 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [chapterTitles2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

- (id)infoForGraphCollection
{
  v16[1] = *MEMORY[0x277D85DE8];
  if ([(PGEnrichedMemoryProtocol *)self->_enrichedMemory memoryCategory]== 16)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    memoryMomentNodes = [(PGEnrichedMemoryProtocol *)self->_enrichedMemory memoryMomentNodes];
    anyNode = [memoryMomentNodes anyNode];

    v6 = MEMORY[0x277CCABB0];
    [anyNode contentScore];
    v7 = [v6 numberWithDouble:?];
    [v3 setObject:v7 forKeyedSubscript:@"averageContentScore"];

    v8 = MEMORY[0x277CCABB0];
    [anyNode meaningScore];
    v9 = [v8 numberWithDouble:?];
    [v3 setObject:v9 forKeyedSubscript:@"meaningScore"];

    memoryFeatureNodes = [(PGEnrichedMemoryProtocol *)self->_enrichedMemory memoryFeatureNodes];
    v11 = [(PGGraphNodeCollection *)PGGraphMeaningNodeCollection subsetInCollection:memoryFeatureNodes];
    meaningLabels = [v11 meaningLabels];
    allObjects = [meaningLabels allObjects];
    [v3 setObject:allObjects forKeyedSubscript:@"meaningLabels"];

    v16[0] = v3;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  }

  else
  {
    v14 = MEMORY[0x277CBEBF8];
  }

  return v14;
}

- (id)infoForBackingMoments
{
  v18[1] = *MEMORY[0x277D85DE8];
  if ([(PGMemoryPhotosGraphProperties *)self sourceType]== 1)
  {
    memoryMomentNodes = [(PGEnrichedMemoryProtocol *)self->_enrichedMemory memoryMomentNodes];
    anyNode = [memoryMomentNodes anyNode];

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v6 = MEMORY[0x277CCABB0];
    [anyNode graphScore];
    v7 = [v6 numberWithDouble:?];
    [v5 setObject:v7 forKeyedSubscript:@"graphScore"];

    v8 = MEMORY[0x277CCABB0];
    [(PGNeighborScoreComputer *)self->_neighborScoreComputer neighborScoreWithMomentNode:anyNode];
    v9 = [v8 numberWithDouble:?];
    [v5 setObject:v9 forKeyedSubscript:@"neighborScore"];

    v10 = MEMORY[0x277CCABB0];
    [anyNode contentScore];
    v11 = [v10 numberWithDouble:?];
    [v5 setObject:v11 forKeyedSubscript:@"curationScore"];

    v12 = [anyNode keywordsForRelatedType:63 focusOnNodes:0];
    v13 = [PGManager exportableDictionaryFromKeywords:v12];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = MEMORY[0x277CBEC10];
    }

    [v5 setObject:v15 forKeyedSubscript:@"keywords"];

    v18[0] = v5;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  }

  else
  {
    v16 = MEMORY[0x277CBEBF8];
  }

  return v16;
}

- (id)encodedFeatures
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  memoryFeatureNodes = [(PGEnrichedMemoryProtocol *)self->_enrichedMemory memoryFeatureNodes];
  allFeatures = [memoryFeatureNodes allFeatures];

  v6 = [allFeatures countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(allFeatures);
        }

        encodedFeature = [*(*(&v12 + 1) + 8 * i) encodedFeature];
        [v3 addObject:encodedFeature];
      }

      v7 = [allFeatures countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v3;
}

- (id)encodedBlockableFeatures
{
  v3 = MEMORY[0x277CD98F0];
  blockableFeatures = [(PGEnrichedMemoryProtocol *)self->_enrichedMemory blockableFeatures];
  v5 = [v3 encodedBlockableFeatures:blockableFeatures photoLibrary:self->_photoLibrary];

  return v5;
}

- (BOOL)isTriggered
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  triggerTypes = [(PGEnrichedMemoryProtocol *)self->_enrichedMemory triggerTypes];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__PGMemoryPhotosGraphProperties_isTriggered__block_invoke;
  v4[3] = &unk_2788827C8;
  v4[4] = &v5;
  [triggerTypes enumerateIndexesUsingBlock:v4];

  LOBYTE(triggerTypes) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return triggerTypes;
}

uint64_t __44__PGMemoryPhotosGraphProperties_isTriggered__block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  *a3 = *(*(*(result + 32) + 8) + 24);
  return result;
}

- (unint64_t)numberOfMoments
{
  memoryMomentNodes = [(PGEnrichedMemoryProtocol *)self->_enrichedMemory memoryMomentNodes];
  v3 = [memoryMomentNodes count];

  return v3;
}

- (int64_t)phTitleCategory
{
  titleCategory = [(PGEnrichedMemoryProtocol *)self->_enrichedMemory titleCategory];
  if ((titleCategory - 1) > 5)
  {
    return 0;
  }

  else
  {
    return qword_22F78C400[titleCategory - 1];
  }
}

- (id)featureVectorV2
{
  v24 = *MEMORY[0x277D85DE8];
  personLocalIdentifiers = [(PGMemoryPhotosGraphProperties *)self personLocalIdentifiers];
  if ([personLocalIdentifiers count])
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v16 = personLocalIdentifiers;
    obj = personLocalIdentifiers;
    v5 = [obj countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          v10 = [MEMORY[0x277CD98F0] personUniversalIdentifierForPersonLocalIdentifier:v9 photoLibrary:{self->_photoLibrary, v16}];
          v11 = v10;
          if (v10)
          {
            v12 = v10;
          }

          else
          {
            v12 = v9;
          }

          v13 = v12;

          v22[0] = @"People";
          v22[1] = v13;
          v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];

          [v4 addObject:v14];
        }

        v6 = [obj countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v6);
    }

    personLocalIdentifiers = v16;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

- (id)featureVectorV1
{
  v8[1] = *MEMORY[0x277D85DE8];
  personLocalIdentifiers = [(PGMemoryPhotosGraphProperties *)self personLocalIdentifiers];
  if ([personLocalIdentifiers count])
  {
    v7 = @"people";
    allObjects = [personLocalIdentifiers allObjects];
    v4 = [allObjects sortedArrayUsingSelector:sel_compare_];
    v8[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  }

  else
  {
    v5 = MEMORY[0x277CBEC10];
  }

  return v5;
}

- (id)personLocalIdentifiers
{
  memoryFeatureNodes = [(PGEnrichedMemoryProtocol *)self->_enrichedMemory memoryFeatureNodes];
  v3 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:memoryFeatureNodes];

  localIdentifiers = [v3 localIdentifiers];

  return localIdentifiers;
}

- (int64_t)sourceType
{
  memoryCategory = [(PGEnrichedMemoryProtocol *)self->_enrichedMemory memoryCategory];

  return PGMemorySourceTypeFromCategory(memoryCategory);
}

- (id)triggerTypesArray
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  triggerTypes = [(PGEnrichedMemoryProtocol *)self->_enrichedMemory triggerTypes];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__PGMemoryPhotosGraphProperties_triggerTypesArray__block_invoke;
  v7[3] = &unk_27888A200;
  v5 = v3;
  v8 = v5;
  [triggerTypes enumerateIndexesUsingBlock:v7];

  return v5;
}

void __50__PGMemoryPhotosGraphProperties_triggerTypesArray__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  [v2 addObject:v3];
}

- (id)infoDictionary
{
  v46[20] = *MEMORY[0x277D85DE8];
  v45[0] = @"sourceType";
  sourceType = [(PGMemoryPhotosGraphProperties *)self sourceType];
  if (sourceType > 4)
  {
    v4 = @"Unsupported Source Type";
  }

  else
  {
    v4 = off_278886E70[sourceType];
  }

  v44 = v4;
  v46[0] = v44;
  v45[1] = @"sourceTypeEnum";
  v43 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PGMemoryPhotosGraphProperties sourceType](self, "sourceType")}];
  v46[1] = v43;
  v45[2] = @"creationDate";
  creationDate = [(PGEnrichedMemoryProtocol *)self->_enrichedMemory creationDate];
  v46[2] = creationDate;
  v45[3] = @"assetCount";
  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PGEnrichedMemoryProtocol numberOfRelevantAssets](self->_enrichedMemory, "numberOfRelevantAssets")}];
  v46[3] = v41;
  v45[4] = @"repCount";
  v5 = MEMORY[0x277CCABB0];
  representativeAssetUUIDs = [(PGEnrichedMemoryProtocol *)self->_enrichedMemory representativeAssetUUIDs];
  v39 = [v5 numberWithUnsignedInteger:{objc_msgSend(representativeAssetUUIDs, "count")}];
  v46[4] = v39;
  v45[5] = @"relevantAssetCount";
  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PGEnrichedMemoryProtocol numberOfRelevantAssets](self->_enrichedMemory, "numberOfRelevantAssets")}];
  v46[5] = v38;
  v45[6] = @"curatedCount";
  v6 = MEMORY[0x277CCABB0];
  curatedAssetUUIDs = [(PGEnrichedMemoryProtocol *)self->_enrichedMemory curatedAssetUUIDs];
  v36 = [v6 numberWithUnsignedInteger:{objc_msgSend(curatedAssetUUIDs, "count")}];
  v46[6] = v36;
  v45[7] = @"extendedCuratedCount";
  v7 = MEMORY[0x277CCABB0];
  extendedCuratedAssetUUIDs = [(PGEnrichedMemoryProtocol *)self->_enrichedMemory extendedCuratedAssetUUIDs];
  v34 = [v7 numberWithUnsignedInteger:{objc_msgSend(extendedCuratedAssetUUIDs, "count")}];
  v46[7] = v34;
  v45[8] = @"keyAssetUUID";
  keyAssetUUID = [(PGEnrichedMemoryProtocol *)self->_enrichedMemory keyAssetUUID];
  v46[8] = keyAssetUUID;
  v45[9] = @"notificationQuality";
  notificationLevel = [(PGEnrichedMemoryProtocol *)self->_enrichedMemory notificationLevel];
  if ((notificationLevel - 1) > 3)
  {
    v9 = @"PGMemoryNotificationLevelUndefined";
  }

  else
  {
    v9 = off_278886E50[notificationLevel - 1];
  }

  v32 = v9;
  v46[9] = v32;
  v45[10] = @"isTriggered";
  isTriggered = [(PGMemoryPhotosGraphProperties *)self isTriggered];
  v11 = @"NO";
  if (isTriggered)
  {
    v11 = @"YES";
  }

  v46[10] = v11;
  v45[11] = @"numberOfMoments";
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PGMemoryPhotosGraphProperties numberOfMoments](self, "numberOfMoments")}];
  v46[11] = v31;
  v45[12] = @"numberOfCollections";
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PGMemoryPhotosGraphProperties numberOfMoments](self, "numberOfMoments")}];
  v46[12] = v30;
  v45[13] = @"suggestedMood";
  [(PGEnrichedMemoryProtocol *)self->_enrichedMemory suggestedMood];
  v29 = PHStringForMemoryMood();
  v46[13] = v29;
  v45[14] = @"forbiddenMoods";
  [(PGEnrichedMemoryProtocol *)self->_enrichedMemory forbiddenMoods];
  v28 = PHStringForMemoryMood();
  v46[14] = v28;
  v45[15] = @"recommendedMoods";
  [(PGEnrichedMemoryProtocol *)self->_enrichedMemory recommendedMoods];
  v12 = PHStringForMemoryMood();
  v46[15] = v12;
  v45[16] = @"moodWeights";
  positiveMoodVector = [(PGEnrichedMemoryProtocol *)self->_enrichedMemory positiveMoodVector];
  v14 = [positiveMoodVector description];
  v15 = v14;
  v16 = &stru_2843F5C58;
  if (v14)
  {
    v16 = v14;
  }

  v46[16] = v16;
  v45[17] = @"moodKeywords";
  legacyMoodKeywords = [(PGEnrichedMemoryProtocol *)self->_enrichedMemory legacyMoodKeywords];
  v18 = legacyMoodKeywords;
  v19 = MEMORY[0x277CBEBF8];
  if (legacyMoodKeywords)
  {
    v19 = legacyMoodKeywords;
  }

  v46[17] = v19;
  v45[18] = @"osInfo";
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  operatingSystemVersionString = [processInfo operatingSystemVersionString];
  v46[18] = operatingSystemVersionString;
  v45[19] = @"meaningLabels";
  memoryMomentNodes = [(PGEnrichedMemoryProtocol *)self->_enrichedMemory memoryMomentNodes];
  meaningNodes = [memoryMomentNodes meaningNodes];
  meaningLabels = [meaningNodes meaningLabels];
  allObjects = [meaningLabels allObjects];
  v46[19] = allObjects;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:20];

  return v27;
}

- (id)dictionary
{
  v43[15] = *MEMORY[0x277D85DE8];
  v42[0] = @"graphMemoryIdentifier";
  uniqueMemoryIdentifier = [(PGEnrichedMemoryProtocol *)self->_enrichedMemory uniqueMemoryIdentifier];
  v40 = uniqueMemoryIdentifier;
  v4 = &stru_2843F5C58;
  if (uniqueMemoryIdentifier)
  {
    v4 = uniqueMemoryIdentifier;
  }

  v43[0] = v4;
  v42[1] = @"memoryCategorySubcategory";
  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PGEnrichedMemoryProtocol memoryCategorySubcategory](self->_enrichedMemory, "memoryCategorySubcategory")}];
  v43[1] = v39;
  v42[2] = @"triggerTypes";
  triggerTypesArray = [(PGMemoryPhotosGraphProperties *)self triggerTypesArray];
  v43[2] = triggerTypesArray;
  v42[3] = @"encodedFeatures";
  encodedFeatures = [(PGMemoryPhotosGraphProperties *)self encodedFeatures];
  v43[3] = encodedFeatures;
  v42[4] = @"featureVector_v2";
  featureVectorV2 = [(PGMemoryPhotosGraphProperties *)self featureVectorV2];
  v43[4] = featureVectorV2;
  v42[5] = @"featureVector";
  featureVectorV1 = [(PGMemoryPhotosGraphProperties *)self featureVectorV1];
  v43[5] = featureVectorV1;
  v42[6] = @"titleCategory";
  v34 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PGMemoryPhotosGraphProperties phTitleCategory](self, "phTitleCategory")}];
  v43[6] = v34;
  v42[7] = @"notificationQuality";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PGEnrichedMemoryProtocol notificationLevel](self->_enrichedMemory, "notificationLevel")}];
  v43[7] = v5;
  v42[8] = @"blacklistableFeatures";
  encodedBlockableFeatures = [(PGMemoryPhotosGraphProperties *)self encodedBlockableFeatures];
  v43[8] = encodedBlockableFeatures;
  v42[9] = @"backingMoments";
  infoForBackingMoments = [(PGMemoryPhotosGraphProperties *)self infoForBackingMoments];
  v43[9] = infoForBackingMoments;
  v42[10] = @"collectionsInfo";
  infoForGraphCollection = [(PGMemoryPhotosGraphProperties *)self infoForGraphCollection];
  v43[10] = infoForGraphCollection;
  v42[11] = @"info";
  infoDictionary = [(PGMemoryPhotosGraphProperties *)self infoDictionary];
  v43[11] = infoDictionary;
  v42[12] = @"chapterTitles";
  infoForChapterTitles = [(PGMemoryPhotosGraphProperties *)self infoForChapterTitles];
  v43[12] = infoForChapterTitles;
  v42[13] = @"generatedWithFallbackRequirements";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[PGEnrichedMemoryProtocol generatedWithFallbackRequirements](self->_enrichedMemory, "generatedWithFallbackRequirements")}];
  v43[13] = v11;
  v42[14] = @"storyTitleCategory";
  storyTitleCategory = [(PGMemoryPhotosGraphProperties *)self storyTitleCategory];
  v43[14] = storyTitleCategory;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:15];
  v41 = [v13 mutableCopy];

  if ([(PGEnrichedMemoryProtocol *)self->_enrichedMemory memoryCategory]== 27)
  {
    memoryFeatureNodes = [(PGEnrichedMemoryProtocol *)self->_enrichedMemory memoryFeatureNodes];
    v15 = [(PGGraphNodeCollection *)PGGraphSceneFeatureNodeCollection subsetInCollection:memoryFeatureNodes];

    labels = [v15 labels];
    v17 = [labels containsObject:@"SunriseSunset"];
    v18 = [labels containsObject:@"Rainbow"];
    v19 = [labels containsObject:@"Snow"] | v18 | v17;

LABEL_10:
    v20 = v19 ^ 1;

    goto LABEL_11;
  }

  if ([(PGEnrichedMemoryProtocol *)self->_enrichedMemory memoryCategory]== 9)
  {
    v20 = 0;
    goto LABEL_11;
  }

  if ([(PGEnrichedMemoryProtocol *)self->_enrichedMemory memoryCategory]== 16 || [(PGEnrichedMemoryProtocol *)self->_enrichedMemory memoryCategory]== 17)
  {
    memoryFeatureNodes2 = [(PGEnrichedMemoryProtocol *)self->_enrichedMemory memoryFeatureNodes];
    v15 = [(PGGraphNodeCollection *)PGGraphMeaningNodeCollection subsetInCollection:memoryFeatureNodes2];

    meaningLabels = [v15 meaningLabels];
    v23 = [meaningLabels containsObject:@"Diving"];

    meaningLabels2 = [v15 meaningLabels];
    v25 = [meaningLabels2 containsObject:@"WinterSport"];

    LOBYTE(v19) = v25 | v23;
    goto LABEL_10;
  }

  v20 = 1;
LABEL_11:
  v26 = [PGMemoryPhotosGraphProperties _storyRecipeSongCatalogForAppleMusicSubscriber:self->_isAppleMusicSubscriber];
  v27 = [(PGMemoryPhotosGraphProperties *)self _recipeFromEnrichedMemory:self->_enrichedMemory subscriberCatalog:v26 applyColorGrading:v20 & 1 loggingConnection:self->_loggingConnection];
  v28 = v27;
  if (v27)
  {
    if (v20)
    {
      currentStyle = [v27 currentStyle];
      originalColorGradeCategory = [currentStyle originalColorGradeCategory];

      if (originalColorGradeCategory)
      {
        [v41 setObject:originalColorGradeCategory forKeyedSubscript:@"storyColorGradeCategory"];
      }
    }

    v31 = objc_alloc_init(MEMORY[0x277D3B4E0]);
    v32 = [v31 archivedDataWithRecipe:v28];

    if (v32)
    {
      [v41 setObject:v32 forKeyedSubscript:@"storyRecipeData"];
    }
  }

  return v41;
}

- (PGMemoryPhotosGraphProperties)initWithEnrichedMemory:(id)memory neighborScoreComputer:(id)computer isAppleMusicSubscriber:(BOOL)subscriber photoLibrary:(id)library loggingConnection:(id)connection
{
  memoryCopy = memory;
  computerCopy = computer;
  libraryCopy = library;
  connectionCopy = connection;
  v20.receiver = self;
  v20.super_class = PGMemoryPhotosGraphProperties;
  v17 = [(PGMemoryPhotosGraphProperties *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_enrichedMemory, memory);
    objc_storeStrong(&v18->_photoLibrary, library);
    v18->_isAppleMusicSubscriber = subscriber;
    objc_storeStrong(&v18->_neighborScoreComputer, computer);
    objc_storeStrong(&v18->_loggingConnection, connection);
  }

  return v18;
}

- (id)_recipeFromEnrichedMemory:(id)memory subscriberCatalog:(id)catalog applyColorGrading:(BOOL)grading loggingConnection:(id)connection
{
  gradingCopy = grading;
  v80 = *MEMORY[0x277D85DE8];
  memoryCopy = memory;
  catalogCopy = catalog;
  connectionCopy = connection;
  v73 = memoryCopy;
  flexMusicCuration = [memoryCopy flexMusicCuration];
  bestSongSuggestions = [flexMusicCuration bestSongSuggestions];
  firstObject = [bestSongSuggestions firstObject];

  v72 = [firstObject uid];
  log = connectionCopy;
  v69 = firstObject;
  if ([v72 length])
  {
    v65 = catalogCopy;
    v13 = firstObject;
    v67 = connectionCopy;
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    tagIDs = [v13 tagIDs];
    v16 = [tagIDs countByEnumeratingWithState:&v74 objects:buf count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v75;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v75 != v18)
          {
            objc_enumerationMutation(tagIDs);
          }

          v20 = [*(*(&v74 + 1) + 8 * i) componentsSeparatedByString:@"_"];
          if ([v20 count] == 2)
          {
            v21 = [v20 objectAtIndexedSubscript:0];
            v22 = [v20 objectAtIndexedSubscript:1];
            [v14 setObject:v22 forKeyedSubscript:v21];
          }
        }

        v17 = [tagIDs countByEnumeratingWithState:&v74 objects:buf count:16];
      }

      while (v17);
    }

    v23 = [v14 objectForKeyedSubscript:@"Arousal"];
    v24 = [v14 objectForKeyedSubscript:@"Valence"];
    v25 = v24;
    if (v23 && v24)
    {
      [v24 doubleValue];
      [v23 doubleValue];
      v26 = PFStoryColorGradeCategoryFromValenceArousal();
      catalogCopy = v65;
      v27 = 0x277D3B000;
      v28 = v67;
    }

    else
    {
      v30 = v67;
      v31 = [v14 objectForKeyedSubscript:@"Mood"];
      v27 = 0x277D3B000uLL;
      if (!PHMemoryMoodForString() && os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v79 = v31;
        _os_log_error_impl(&dword_22F0FC000, v30, OS_LOG_TYPE_ERROR, "[PGMemoryPhotosGraphProperties] unsupported Flex Mood tag '%@'", buf, 0xCu);
      }

      catalogCopy = v65;
      v28 = v67;
      v26 = PFStoryColorGradeCategoryNamed();
    }

    arousal = [v13 arousal];
    valence = [v13 valence];
    v34 = valence;
    if ((!arousal || !valence) && os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v79 = v72;
      _os_log_error_impl(&dword_22F0FC000, v28, OS_LOG_TYPE_ERROR, "[PGMemoryPhotosGraphProperties] Failed to assign proper color grade category for key flex song (%@) because arousal OR valence information was not available.", buf, 0xCu);
    }

    v35 = *(v27 + 1264);
    v36 = *MEMORY[0x277D3B5D8];
    songName = [v13 songName];
    artistName = [v13 artistName];
    v29 = [v35 createAssetWithCategory:1 subcategory:1 catalog:v36 songID:v72 title:songName subtitle:artistName colorGradeCategory:v26];

    connectionCopy = log;
  }

  else
  {
    v29 = 0;
    v27 = 0x277D3B000;
  }

  musicCuration = [v73 musicCuration];
  keySongAdamID = [musicCuration keySongAdamID];
  v68 = keySongAdamID;
  if ([keySongAdamID length])
  {
    keySongArousal = [musicCuration keySongArousal];
    keySongValence = [musicCuration keySongValence];
    v43 = keySongValence;
    if (keySongArousal && keySongValence)
    {
      v44 = catalogCopy;
      [keySongValence doubleValue];
      [keySongArousal doubleValue];
      v45 = PFStoryColorGradeCategoryFromValenceArousal();
    }

    else
    {
      v47 = os_log_type_enabled(connectionCopy, OS_LOG_TYPE_ERROR);
      v44 = catalogCopy;
      if (v47)
      {
        *buf = 138412290;
        v79 = keySongAdamID;
        _os_log_error_impl(&dword_22F0FC000, log, OS_LOG_TYPE_ERROR, "[PGMemoryPhotosGraphProperties] Failed to assign color grade category for key apple music song (%@) because arousal and valence information was not available.", buf, 0xCu);
      }

      v45 = 0;
    }

    v48 = *(v27 + 1264);
    v49 = *MEMORY[0x277D3B5D0];
    keySongTitle = [musicCuration keySongTitle];
    keySongArtist = [musicCuration keySongArtist];
    v52 = v49;
    keySongAdamID = v68;
    v46 = [v48 createAssetWithCategory:1 subcategory:1 catalog:v52 songID:v68 title:keySongTitle subtitle:keySongArtist colorGradeCategory:v45];

    catalogCopy = v44;
    connectionCopy = log;
  }

  else
  {
    v46 = 0;
  }

  if (v29 | v46)
  {
    createRecipe = [MEMORY[0x277D3B4E8] createRecipe];
    v53 = [createRecipe mutableCopyWithZone:0];

    v55 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (v46 && ([v53 addAsset:v46], objc_msgSend(v46, "identifier"), v56 = objc_claimAutoreleasedReturnValue(), v57 = *MEMORY[0x277D3B5D0], objc_msgSend(v55, "setObject:forKeyedSubscript:", v56, *MEMORY[0x277D3B5D0]), v56, v57 == catalogCopy))
    {
      colorGradeCategory = [v46 colorGradeCategory];
      if (!v29)
      {
LABEL_46:
        v62 = [v55 copy];
        [v53 setSeedSongIdentifiersByCatalog:v62];

        v63 = [MEMORY[0x277D3B4F8] createStyleWithOriginalColorGradeCategory:colorGradeCategory customColorGradeKind:!gradingCopy songAssetIdentifier:0 isCustomized:0];
        [v53 setCurrentStyle:v63];

        goto LABEL_47;
      }
    }

    else
    {
      colorGradeCategory = 0;
      if (!v29)
      {
        goto LABEL_46;
      }
    }

    [v53 addAsset:v29];
    identifier = [v29 identifier];
    v60 = *MEMORY[0x277D3B5D8];
    [v55 setObject:identifier forKeyedSubscript:*MEMORY[0x277D3B5D8]];

    if (v60 == catalogCopy || !colorGradeCategory)
    {
      colorGradeCategory2 = [v29 colorGradeCategory];

      colorGradeCategory = colorGradeCategory2;
    }

    keySongAdamID = v68;
    goto LABEL_46;
  }

  if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_22F0FC000, connectionCopy, OS_LOG_TYPE_ERROR, "[PGMemoryPhotosGraphProperties] Failed to assign color grade category because music curation was not available.", buf, 2u);
  }

  v53 = 0;
LABEL_47:

  return v53;
}

+ (id)_storyRecipeSongCatalogForAppleMusicSubscriber:(BOOL)subscriber
{
  subscriberCopy = subscriber;
  v4 = *MEMORY[0x277D3B5D8];
  if (subscriberCopy)
  {
    v5 = *MEMORY[0x277D3B5D0];

    v4 = v5;
  }

  return v4;
}

@end