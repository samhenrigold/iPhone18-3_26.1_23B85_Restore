@interface PGMeaningAggregationMemoryGenerator
+ (id)allMeaningAggregationMemoryGeneratorClasses;
+ (id)featureRelationWithMeaningLabel:(id)label;
+ (id)mostSpecificLabelForMeaning:(unint64_t)meaning;
+ (id)supportedMeaningLabels;
+ (unint64_t)_extendedMeaningForActivityEvent:(id)event;
+ (unint64_t)_extendedMeaningForActivityMeaningLabel:(id)label;
+ (unint64_t)_extendedMeaningForMeaning:(unint64_t)meaning meaningfulEvent:(id)event;
+ (unint64_t)_extendedMeaningForRestaurantEvent:(id)event;
+ (unint64_t)_extendedMeaningForRestaurantMeaningLabel:(id)label;
- (PGMeaningAggregationMemoryGenerator)initWithMemoryGenerationContext:(id)context;
- (id)curationOptionsWithRequiredAssetUUIDs:(id)ds eligibleAssetUUIDs:(id)iDs triggeredMemory:(id)memory;
- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)memory inGraph:(id)graph;
- (id)relevantFeederForTriggeredMemory:(id)memory inGraph:(id)graph allowGuestAsset:(BOOL)asset progressReporter:(id)reporter;
- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph;
- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type;
- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block;
@end

@implementation PGMeaningAggregationMemoryGenerator

- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph
{
  memoryCopy = memory;
  contextCopy = context;
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];
  v13 = [(PGGraphNodeCollection *)PGGraphMeaningNodeCollection subsetInCollection:memoryFeatureNodes];
  meaningLabels = [v13 meaningLabels];
  anyObject = [meaningLabels anyObject];

  v16 = [PGGraph meaningForMeaningLabel:anyObject];
  v17 = v16;
  if (v16 > 12)
  {
    if (v16 == 13)
    {
      v26 = [PGCelebrationOverTimeMemoryTitleGenerator alloc];
      memoryMomentNodes = [memoryCopy memoryMomentNodes];
      v22 = [memoryMomentNodes set];
      v23 = [(PGCelebrationOverTimeMemoryTitleGenerator *)v26 initWithMomentNodes:v22 titleGenerationContext:contextCopy];
LABEL_19:

      goto LABEL_20;
    }

    if (v16 == 15)
    {
      v19 = [PGMeaningAggregationMemoryGenerator _extendedMeaningForRestaurantMeaningLabel:anyObject];
      if (v19)
      {
        v17 = v19;
      }

      else
      {
        v17 = 15;
      }
    }

LABEL_12:
    memoryMomentNodes = [memoryFeatureNodes allFeatures];
    memoryMomentNodes2 = [memoryCopy memoryMomentNodes];
    v22 = [memoryMomentNodes2 set];

    v23 = [[PGMeaningfulEventAggregationMemoryTitleGenerator alloc] initWithMeaning:v17 features:memoryMomentNodes meaningfulEvents:v22 titleGenerationContext:contextCopy];
    [(PGMeaningfulEventAggregationMemoryTitleGenerator *)v23 setUnreliableMeaningRatioThresholdForSpecificTitle:0.8];
    v24 = [(PGGraphNodeCollection *)PGGraphYearNodeCollection subsetInCollection:memoryFeatureNodes];
    if ([v24 count] == 1)
    {
      [(PGTitleGenerator *)v23 setFeaturedYearNodes:v24];
    }

    goto LABEL_19;
  }

  if (v16)
  {
    if (v16 == 1)
    {
      v18 = [PGMeaningAggregationMemoryGenerator _extendedMeaningForActivityMeaningLabel:anyObject];
      if (v18 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = v18;
      }
    }

    goto LABEL_12;
  }

  loggingConnection = [(PGMemoryGenerator *)self loggingConnection];
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
  {
    *v28 = 0;
    _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGMeaningAggregationMemoryGenerator] memory should have a meaning", v28, 2u);
  }

  v23 = 0;
LABEL_20:

  return v23;
}

- (id)relevantFeederForTriggeredMemory:(id)memory inGraph:(id)graph allowGuestAsset:(BOOL)asset progressReporter:(id)reporter
{
  assetCopy = asset;
  v98 = *MEMORY[0x277D85DE8];
  memoryCopy = memory;
  graphCopy = graph;
  reporterCopy = reporter;
  if ([reporterCopy isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v92 = 202;
      *&v92[4] = 2080;
      *&v92[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/Memory Generators/CurrentMemoryGenerators/MeaningMemoryGenerators/PGMeaningAggregationMemoryGenerator.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v12 = 0;
    goto LABEL_45;
  }

  v78 = objc_alloc_init(MEMORY[0x277CBEB58]);
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];
  v14 = [(PGGraphNodeCollection *)PGGraphMeaningNodeCollection subsetInCollection:memoryFeatureNodes];
  labels = [v14 labels];
  anyObject = [labels anyObject];

  v74 = [(PGGraphNodeCollection *)PGGraphAddressNodeCollection subsetInCollection:memoryFeatureNodes];
  locations = [v74 locations];
  v79 = [(PGGraphNodeCollection *)PGGraphLocationCityNodeCollection subsetInCollection:memoryFeatureNodes];
  v80 = [(PGGraphNodeCollection *)PGGraphAreaNodeCollection subsetInCollection:memoryFeatureNodes];
  memoryCurationSession = [(PGMemoryGenerator *)self memoryCurationSession];
  curationManager = [memoryCurationSession curationManager];
  curationCriteriaFactory = [curationManager curationCriteriaFactory];
  v81 = anyObject;
  v76 = [curationCriteriaFactory curationCriteriaWithMeaningLabel:anyObject featureNodes:memoryFeatureNodes inGraph:graphCopy client:1];

  memoryMomentNodes = [memoryCopy memoryMomentNodes];
  memoryCurationSession2 = [(PGMemoryGenerator *)self memoryCurationSession];
  curationManager2 = [memoryCurationSession2 curationManager];
  defaultAssetFetchOptionsForMemories = [curationManager2 defaultAssetFetchOptionsForMemories];

  v84 = defaultAssetFetchOptionsForMemories;
  [defaultAssetFetchOptionsForMemories setIncludeGuestAssets:assetCopy];
  memoryCurationSession3 = [(PGMemoryGenerator *)self memoryCurationSession];
  photoLibrary = [memoryCurationSession3 photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v27 = MEMORY[0x277CD97B8];
  localIdentifiers = [memoryMomentNodes localIdentifiers];
  allObjects = [localIdentifiers allObjects];
  [v27 fetchAssetCollectionsWithLocalIdentifiers:allObjects options:librarySpecificFetchOptions];
  v31 = v30 = graphCopy;

  v32 = [v31 count];
  v77 = memoryMomentNodes;
  if (v32 < [memoryMomentNodes count])
  {
    v33 = v30;
    log = [(PGMemoryGenerator *)self loggingConnection];
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, log, OS_LOG_TYPE_ERROR, "[PGMeaningAggregationMemoryGenerator] Failed to fetch all momentNodes, graph is out-of-sync with the photo library.", buf, 2u);
    }

    v12 = 0;
    v34 = v74;
    goto LABEL_44;
  }

  selfCopy = self;
  v70 = librarySpecificFetchOptions;
  v71 = memoryFeatureNodes;
  v72 = v30;
  v73 = memoryCopy;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v69 = v31;
  v35 = v31;
  v36 = [v35 countByEnumeratingWithState:&v87 objects:v97 count:16];
  v37 = locations;
  if (!v36)
  {
    goto LABEL_35;
  }

  v38 = v36;
  v83 = *v88;
  log = v35;
  while (2)
  {
    for (i = 0; i != v38; ++i)
    {
      if (*v88 != v83)
      {
        objc_enumerationMutation(v35);
      }

      v40 = *(*(&v87 + 1) + 8 * i);
      v41 = objc_autoreleasePoolPush();
      v42 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:v40 options:v84];
      v43 = MEMORY[0x277CD97A8];
      memoryCurationSession4 = [(PGMemoryGenerator *)selfCopy memoryCurationSession];
      curationContext = [memoryCurationSession4 curationContext];
      v46 = [v43 clsAllAssetsFromFetchResult:v42 prefetchOptions:23 curationContext:curationContext];

      v47 = v46;
      if ([v37 count])
      {
        v48 = [PGCurationManager filterAssets:v47 withLocations:v37 maximumDistance:100.0];
      }

      else if ([v80 count])
      {
        v48 = [PGCurationManager filterAssets:v47 inMomentNodes:v77 forAreaNodes:v80 withMaximumDistance:500.0];
      }

      else
      {
        v49 = v47;
        if (![v79 count])
        {
          goto LABEL_21;
        }

        v48 = [PGCurationManager filterAssets:v47 inMomentNodes:v77 forCityNodes:v79 withMaximumDistance:5000.0];
      }

      v49 = v48;

LABEL_21:
      if ([v49 count])
      {
        if (([v81 isEqualToString:@"HolidayEvent"] & 1) == 0)
        {
          v50 = [v76 passingAssetsInAssets:v49];

          v49 = v50;
        }

        v51 = [v49 count];
        if (v51 != [v47 count])
        {
          v52 = [PGMemoryGenerationHelper assetLocalIdentifiersFromAssets:v49];
          v53 = [PGCurationManager filteredAssetsFromAssets:v47 withContextualAssetLocalIdentifiers:v52 approximateTimeDistance:300.0];

          v49 = v53;
        }

        v37 = locations;
        if ([v49 count] >= 3)
        {
          [v78 addObjectsFromArray:v47];
        }

        if ([reporterCopy isCancelledWithProgress:0.5])
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v92 = 263;
            *&v92[4] = 2080;
            *&v92[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/Memory Generators/CurrentMemoryGenerators/MeaningMemoryGenerators/PGMeaningAggregationMemoryGenerator.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          objc_autoreleasePoolPop(v41);
          v12 = 0;
          v33 = v72;
          memoryCopy = v73;
          librarySpecificFetchOptions = v70;
          memoryFeatureNodes = v71;
          v34 = v74;
          v31 = v69;
          goto LABEL_44;
        }
      }

      else
      {
        loggingConnection = [(PGMemoryGenerator *)selfCopy loggingConnection];
        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
        {
          uuid = [v40 uuid];
          anyNode = [v80 anyNode];
          anyNode2 = [v79 anyNode];
          *buf = 138413059;
          *v92 = uuid;
          *&v92[8] = 2113;
          *&v92[10] = locations;
          v93 = 2113;
          v94 = anyNode;
          v95 = 2113;
          v96 = anyNode2;
          _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGMeaningAggregationMemoryGenerator] No relevant assets found for moment (%@) at locations: %{private}@, aoi: %{private}@, city: %{private}@", buf, 0x2Au);

          v35 = log;
          v37 = locations;
        }
      }

      objc_autoreleasePoolPop(v41);
    }

    v38 = [v35 countByEnumeratingWithState:&v87 objects:v97 count:16];
    if (v38)
    {
      continue;
    }

    break;
  }

LABEL_35:

  v58 = objc_alloc(MEMORY[0x277CD98D0]);
  allObjects2 = [v78 allObjects];
  photoLibrary2 = [v84 photoLibrary];
  v61 = MEMORY[0x277CBEB98];
  fetchPropertySets = [v84 fetchPropertySets];
  v63 = [v61 setWithArray:fetchPropertySets];
  v64 = [v58 initWithObjects:allObjects2 photoLibrary:photoLibrary2 fetchType:0 fetchPropertySets:v63 identifier:0 registerIfNeeded:0];

  memoryCurationSession5 = [(PGMemoryGenerator *)selfCopy memoryCurationSession];
  v66 = [PGMemoryGenerationHelper feederForMemoriesWithAssetFetchResult:v64 memoryCurationSession:memoryCurationSession5 graph:v72];

  log = v64;
  v33 = v72;
  if ([reporterCopy isCancelledWithProgress:1.0])
  {
    librarySpecificFetchOptions = v70;
    memoryFeatureNodes = v71;
    v34 = v74;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v92 = 269;
      *&v92[4] = 2080;
      *&v92[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/Memory Generators/CurrentMemoryGenerators/MeaningMemoryGenerators/PGMeaningAggregationMemoryGenerator.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v12 = 0;
    memoryCopy = v73;
  }

  else
  {
    v12 = v66;
    memoryCopy = v73;
    v34 = v74;
    librarySpecificFetchOptions = v70;
    memoryFeatureNodes = v71;
  }

  v31 = v69;

LABEL_44:
  graphCopy = v33;
LABEL_45:

  return v12;
}

- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)memory inGraph:(id)graph
{
  graphCopy = graph;
  memoryCopy = memory;
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];
  v9 = [(PGGraphNodeCollection *)PGGraphMeaningNodeCollection subsetInCollection:memoryFeatureNodes];
  meaningLabels = [v9 meaningLabels];
  anyObject = [meaningLabels anyObject];

  memoryCurationSession = [(PGMemoryGenerator *)self memoryCurationSession];
  curationManager = [memoryCurationSession curationManager];
  curationCriteriaFactory = [curationManager curationCriteriaFactory];
  v15 = [curationCriteriaFactory curationCriteriaWithMeaningLabel:anyObject featureNodes:memoryFeatureNodes inGraph:graphCopy client:1];

  v18.receiver = self;
  v18.super_class = PGMeaningAggregationMemoryGenerator;
  v16 = [(PGMemoryGenerator *)&v18 keyAssetCurationOptionsWithTriggeredMemory:memoryCopy inGraph:graphCopy];

  [v16 setCurationCriteria:v15];

  return v16;
}

- (id)curationOptionsWithRequiredAssetUUIDs:(id)ds eligibleAssetUUIDs:(id)iDs triggeredMemory:(id)memory
{
  v7.receiver = self;
  v7.super_class = PGMeaningAggregationMemoryGenerator;
  v5 = [(PGMemoryGenerator *)&v7 curationOptionsWithRequiredAssetUUIDs:ds eligibleAssetUUIDs:iDs triggeredMemory:memory];
  [v5 setMinimumNumberOfItems:15];
  [v5 setFailIfMinimumDurationNotReached:1];

  return v5;
}

- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block
{
  v26[2] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  graphCopy = graph;
  supportedMeaningLabels = [objc_opt_class() supportedMeaningLabels];
  v9 = [PGGraphMeaningNodeCollection meaningNodesWithMeaningLabels:supportedMeaningLabels inGraph:graphCopy];

  v26[0] = @"Lunch";
  v26[1] = @"Dinner";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v11 = [PGGraphMeaningNodeCollection meaningNodesWithMeaningLabels:v10 inGraph:graphCopy];
  v12 = [PGGraphBusinessNodeCollection restaurantBusinessNodesInGraph:graphCopy];

  v13 = +[PGGraphBusinessNode momentOfBusiness];
  v14 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:v12 withRelation:v13];

  v15 = MEMORY[0x277D22BF8];
  v16 = +[PGGraphMeaningNode momentOfReliableMeaning];
  v17 = [v15 adjacencyWithSources:v9 relation:v16 targetsClass:objc_opt_class()];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __93__PGMeaningAggregationMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke;
  v21[3] = &unk_27887FDF8;
  v22 = v11;
  v23 = v14;
  selfCopy = self;
  v25 = blockCopy;
  v18 = blockCopy;
  v19 = v14;
  v20 = v11;
  [v17 enumerateTargetsBySourceWithBlock:v21];
}

void __93__PGMeaningAggregationMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (![v7 intersectsCollection:*(a1 + 32)] || (objc_msgSend(v8, "collectionByIntersecting:", *(a1 + 40)), v9 = objc_claimAutoreleasedReturnValue(), v8, v8 = v9, objc_msgSend(v9, "count")))
  {
    v10 = [objc_opt_class() requiredFeatureRelation];
    if (v10)
    {
      v11 = [MEMORY[0x277D22BF8] adjacencyWithSources:v8 relation:v10 targetsClass:objc_opt_class()];
      v12 = [v11 transposed];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __93__PGMeaningAggregationMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke_2;
      v14[3] = &unk_27887FDD0;
      v15 = v7;
      v16 = *(a1 + 56);
      v17 = a4;
      [v12 enumerateTargetsBySourceWithBlock:v14];
    }

    else
    {
      v13 = *(a1 + 56);
      v11 = [v7 featureNodeCollection];
      (*(v13 + 16))(v13, v8, v11, a4);
    }
  }
}

void __93__PGMeaningAggregationMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a3;
  v9 = [a2 collectionByFormingUnionWith:v7];
  (*(*(a1 + 40) + 16))();

  *a4 = **(a1 + 48);
}

- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type
{
  v12 = *MEMORY[0x277D85DE8];
  if (type == 1)
  {
    return 11002;
  }

  typeCopy = type;
  if (type == 3)
  {
    return 11003;
  }

  loggingConnection = [(PGMemoryGenerator *)self loggingConnection];
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138412546;
    v9 = v7;
    v10 = 1024;
    v11 = typeCopy;
    _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[%@] Returning PHMemoryCategorySubcategoryNone for PGOverTimeMemoryType %d, this should never happen", &v8, 0x12u);
  }

  return 0;
}

- (PGMeaningAggregationMemoryGenerator)initWithMemoryGenerationContext:(id)context
{
  v12.receiver = self;
  v12.super_class = PGMeaningAggregationMemoryGenerator;
  v3 = [(PGMemoryGenerator *)&v12 initWithMemoryGenerationContext:context];
  v4 = v3;
  if (v3)
  {
    v3->_requireSceneProcessingMeetsThresholdOverTime = 1;
    v3->_requireFaceProcessingMeetsThresholdOverTime = 0;
    v5 = objc_alloc_init(PGMemoryMomentRequirements);
    momentRequirements = v4->_momentRequirements;
    v4->_momentRequirements = v5;

    [(PGMemoryMomentRequirements *)v4->_momentRequirements setFilterMomentsWithNotEnoughScenesProcessed:1];
    v7 = +[PGOverTheYearsMemoryConfiguration defaultOverTheYearsMemoryConfiguration];
    overTheYearsConfiguration = v4->_overTheYearsConfiguration;
    v4->_overTheYearsConfiguration = v7;

    [(PGOverTimeMemoryConfiguration *)v4->_overTheYearsConfiguration setMinimumNumberOfAssetsInExtendedCuration:13];
    [(PGOverTimeMemoryConfiguration *)v4->_overTheYearsConfiguration setAboveMomentAverageContentScoreThreshold:0.5];
    v9 = +[PGFeaturedTimePeriodMemoryConfiguration defaultFeaturedYearMemoryConfiguration];
    featuredYearConfiguration = v4->_featuredYearConfiguration;
    v4->_featuredYearConfiguration = v9;

    [(PGOverTimeMemoryConfiguration *)v4->_featuredYearConfiguration setMinimumMomentSpreadicityTimeInterval:604800.0];
    [(PGOverTimeMemoryConfiguration *)v4->_featuredYearConfiguration setMinimumNumberOfAssetsInExtendedCuration:13];
    [(PGOverTimeMemoryConfiguration *)v4->_featuredYearConfiguration setAboveMomentAverageContentScoreThreshold:0.5];
  }

  return v4;
}

+ (id)mostSpecificLabelForMeaning:(unint64_t)meaning
{
  v4 = @"Unknown";
  if (meaning > 999)
  {
    if (meaning > 2000)
    {
      if (meaning > 2002)
      {
        if (meaning == 2003)
        {
          v5 = kPGGraphNodeMeaningWinterSport;
        }

        else
        {
          if (meaning != 2004)
          {
            goto LABEL_36;
          }

          v5 = kPGGraphNodeMeaningClimbing;
        }
      }

      else if (meaning == 2001)
      {
        v5 = kPGGraphNodeMeaningBeaching;
      }

      else
      {
        v5 = kPGGraphNodeMeaningDiving;
      }
    }

    else if (meaning > 1001)
    {
      if (meaning == 1002)
      {
        v5 = kPGGraphNodeMeaningDinner;
      }

      else
      {
        if (meaning != 2000)
        {
          goto LABEL_36;
        }

        v5 = kPGGraphNodeMeaningHiking;
      }
    }

    else if (meaning == 1000)
    {
      v5 = &kPGGraphNodeMeaningBreakfast;
    }

    else
    {
      v5 = kPGGraphNodeMeaningLunch;
    }

LABEL_35:
    v4 = *v5;
  }

  else
  {
    v5 = kPGGraphNodeMeaningActivity;
    switch(meaning)
    {
      case 1uLL:
        goto LABEL_35;
      case 2uLL:
        v5 = kPGGraphNodeMeaningEntertainment;
        goto LABEL_35;
      case 3uLL:
        v5 = kPGGraphNodeMeaningSportEvent;
        goto LABEL_35;
      case 4uLL:
        v5 = kPGGraphNodeMeaningAmusementPark;
        goto LABEL_35;
      case 5uLL:
        v5 = kPGGraphNodeMeaningPerformance;
        goto LABEL_35;
      case 6uLL:
        v5 = kPGGraphNodeMeaningConcert;
        goto LABEL_35;
      case 7uLL:
        v5 = kPGGraphNodeMeaningFestival;
        goto LABEL_35;
      case 8uLL:
        v5 = kPGGraphNodeMeaningNightOut;
        goto LABEL_35;
      case 9uLL:
        v5 = kPGGraphNodeMeaningMuseum;
        goto LABEL_35;
      case 0xAuLL:
        v5 = kPGGraphNodeMeaningCelebration;
        goto LABEL_35;
      case 0xBuLL:
        v5 = kPGGraphNodeMeaningAnniversary;
        goto LABEL_35;
      case 0xCuLL:
        v5 = kPGGraphNodeMeaningBirthday;
        goto LABEL_35;
      case 0xDuLL:
        v5 = kPGGraphNodeMeaningHolidayEvent;
        goto LABEL_35;
      case 0xEuLL:
        v5 = kPGGraphNodeMeaningWedding;
        goto LABEL_35;
      case 0xFuLL:
        v5 = kPGGraphNodeMeaningRestaurant;
        goto LABEL_35;
      case 0x10uLL:
        v5 = kPGGraphNodeMeaningGathering;
        goto LABEL_35;
      default:
        break;
    }
  }

LABEL_36:

  return v4;
}

+ (unint64_t)_extendedMeaningForActivityMeaningLabel:(id)label
{
  labelCopy = label;
  if ([labelCopy isEqualToString:@"Hiking"])
  {
    v4 = 2000;
  }

  else if ([labelCopy isEqualToString:@"Beaching"])
  {
    v4 = 2001;
  }

  else if ([labelCopy isEqualToString:@"Diving"])
  {
    v4 = 2002;
  }

  else if ([labelCopy isEqualToString:@"WinterSport"])
  {
    v4 = 2003;
  }

  else if ([labelCopy isEqualToString:@"Climbing"])
  {
    v4 = 2004;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (unint64_t)_extendedMeaningForActivityEvent:(id)event
{
  eventCopy = event;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__PGMeaningAggregationMemoryGenerator__extendedMeaningForActivityEvent___block_invoke;
  v7[3] = &unk_27887FE20;
  v7[4] = &v8;
  v7[5] = self;
  [eventCopy enumerateMeaningNodesUsingBlock:v7];
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __72__PGMeaningAggregationMemoryGenerator__extendedMeaningForActivityEvent___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = [a2 label];
  v5 = [*(a1 + 40) _extendedMeaningForActivityMeaningLabel:?];
  if (v5)
  {
    v6 = *(*(a1 + 32) + 8);
    if (*(v6 + 24))
    {
      *(v6 + 24) = 0;
      *a3 = 1;
    }

    else
    {
      *(v6 + 24) = v5;
    }
  }
}

+ (unint64_t)_extendedMeaningForRestaurantMeaningLabel:(id)label
{
  labelCopy = label;
  if ([labelCopy isEqualToString:@"Breakfast"])
  {
    v4 = 1000;
  }

  else if ([labelCopy isEqualToString:@"Lunch"])
  {
    v4 = 1001;
  }

  else if ([labelCopy isEqualToString:@"Dinner"])
  {
    v4 = 1002;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (unint64_t)_extendedMeaningForRestaurantEvent:(id)event
{
  eventCopy = event;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__PGMeaningAggregationMemoryGenerator__extendedMeaningForRestaurantEvent___block_invoke;
  v7[3] = &unk_27887FE20;
  v7[4] = &v8;
  v7[5] = self;
  [eventCopy enumerateMeaningNodesUsingBlock:v7];
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __74__PGMeaningAggregationMemoryGenerator__extendedMeaningForRestaurantEvent___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = [a2 label];
  v5 = [*(a1 + 40) _extendedMeaningForRestaurantMeaningLabel:?];
  if (v5)
  {
    v6 = *(*(a1 + 32) + 8);
    if (*(v6 + 24))
    {
      *(v6 + 24) = 0;
      *a3 = 1;
    }

    else
    {
      *(v6 + 24) = v5;
    }
  }
}

+ (unint64_t)_extendedMeaningForMeaning:(unint64_t)meaning meaningfulEvent:(id)event
{
  eventCopy = event;
  if (meaning == 1)
  {
    v7 = [self _extendedMeaningForActivityEvent:eventCopy];
  }

  else
  {
    if (meaning != 15)
    {
      v8 = 0;
      goto LABEL_7;
    }

    v7 = [self _extendedMeaningForRestaurantEvent:eventCopy];
  }

  v8 = v7;
LABEL_7:

  return v8;
}

+ (id)featureRelationWithMeaningLabel:(id)label
{
  v23 = *MEMORY[0x277D85DE8];
  labelCopy = label;
  allMeaningAggregationMemoryGeneratorClasses = [self allMeaningAggregationMemoryGeneratorClasses];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = allMeaningAggregationMemoryGeneratorClasses;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        supportedMeaningLabels = [v12 supportedMeaningLabels];
        v14 = [supportedMeaningLabels containsObject:labelCopy];

        if (v14)
        {
          requiredFeatureRelation = [v12 requiredFeatureRelation];
          if (requiredFeatureRelation)
          {
            [v6 addObject:requiredFeatureRelation];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  if ([v6 count])
  {
    v16 = [MEMORY[0x277D22C90] union:v6];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)allMeaningAggregationMemoryGeneratorClasses
{
  v4[6] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v4[4] = objc_opt_class();
  v4[5] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:6];

  return v2;
}

+ (id)supportedMeaningLabels
{
  v4[5] = *MEMORY[0x277D85DE8];
  v4[0] = @"Hiking";
  v4[1] = @"Climbing";
  v4[2] = @"Beaching";
  v4[3] = @"Diving";
  v4[4] = @"WinterSport";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:5];

  return v2;
}

@end