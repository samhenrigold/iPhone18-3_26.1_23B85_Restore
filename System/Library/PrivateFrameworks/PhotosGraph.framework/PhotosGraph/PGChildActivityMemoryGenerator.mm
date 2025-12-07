@interface PGChildActivityMemoryGenerator
- (PGChildActivityMemoryGenerator)initWithMemoryGenerationContext:(id)context;
- (id)_supportedCompoundActivityLabels;
- (id)_supportedIndividualActivityLabels;
- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)memory inGraph:(id)graph;
- (id)relevantFeederForTriggeredMemory:(id)memory inGraph:(id)graph allowGuestAsset:(BOOL)asset progressReporter:(id)reporter;
- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph;
- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type;
- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block;
@end

@implementation PGChildActivityMemoryGenerator

- (id)_supportedCompoundActivityLabels
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"PersonActionPlayingOnASwing", @"PersonActionPlayingOnASlide", 0}];
  v6[0] = v2;
  v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"PersonActionHugging", @"PersonActionKissing", 0}];
  v6[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];

  return v4;
}

- (id)_supportedIndividualActivityLabels
{
  v6[8] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBEB58]);
  v6[0] = @"PersonBeachWater";
  v6[1] = @"PersonToys";
  v6[2] = @"PersonPlayground";
  v6[3] = @"PersonSoccer";
  v6[4] = @"PersonMartialArts";
  v6[5] = @"PersonActionSwimming";
  v6[6] = @"PersonActionJumpingOrLeaping";
  v6[7] = @"PersonActionRunningOrJogging";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:8];
  v4 = [v2 initWithArray:v3];

  return v4;
}

- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph
{
  v35 = *MEMORY[0x277D85DE8];
  memoryCopy = memory;
  contextCopy = context;
  memoryMomentNodes = [memoryCopy memoryMomentNodes];
  temporarySet = [memoryMomentNodes temporarySet];

  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];
  v15 = [(PGGraphNodeCollection *)PGGraphPersonActivityMeaningNodeCollection subsetInCollection:memoryFeatureNodes];

  personActivityMeaningLabels = [v15 personActivityMeaningLabels];
  if ([personActivityMeaningLabels count])
  {
    personNodes = [v15 personNodes];
    if ([personNodes count] >= 2)
    {
      loggingConnection = [(PGMemoryGenerator *)self loggingConnection];
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v34 = v15;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGChildActivityMemoryGenerator] More than 1 child found in activityNode:%@", buf, 0xCu);
      }
    }

    anyNode = [personNodes anyNode];
    memoryGenerationContext = [(PGMemoryGenerator *)self memoryGenerationContext];
    serviceManager = [memoryGenerationContext serviceManager];
    v22 = [PGPeopleTitleUtility nameFromPersonNode:anyNode serviceManager:serviceManager];

    v23 = [PGChildActivityMemoryTitleGenerator alloc];
    loggingConnection2 = [(PGMemoryGenerator *)self loggingConnection];
    v32 = temporarySet;
    v25 = temporarySet;
    v26 = contextCopy;
    v27 = [(PGChildActivityMemoryTitleGenerator *)v23 initWithMomentNodes:v25 activityLabels:personActivityMeaningLabels childName:v22 titleGenerationContext:contextCopy loggingConnection:loggingConnection2];

    memoryFeatureNodes2 = [memoryCopy memoryFeatureNodes];
    v29 = [(PGGraphNodeCollection *)PGGraphYearNodeCollection subsetInCollection:memoryFeatureNodes2];

    if ([v29 count] == 1)
    {
      [(PGTitleGenerator *)v27 setFeaturedYearNodes:v29];
    }

    contextCopy = v26;
    temporarySet = v32;
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (id)relevantFeederForTriggeredMemory:(id)memory inGraph:(id)graph allowGuestAsset:(BOOL)asset progressReporter:(id)reporter
{
  assetCopy = asset;
  memoryCopy = memory;
  graphCopy = graph;
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];
  v12 = [(PGGraphNodeCollection *)PGGraphPersonActivityMeaningNodeCollection subsetInCollection:memoryFeatureNodes];

  if ([v12 count])
  {
    memoryMomentNodes = [memoryCopy memoryMomentNodes];
    loggingConnection2 = [(PGGraphEdgeCollection *)PGGraphMomentFeaturesEdgeCollection edgesFromNodes:memoryMomentNodes toNodes:v12];

    if ([loggingConnection2 count])
    {
      allRelevantAssetLocalIdentifiers = [loggingConnection2 allRelevantAssetLocalIdentifiers];
      allObjects = [allRelevantAssetLocalIdentifiers allObjects];
      memoryCurationSession = [(PGMemoryGenerator *)self memoryCurationSession];
      v18 = [PGMemoryGenerationHelper feederForMemoriesWithAssetLocalIdentifiers:allObjects memoryCurationSession:memoryCurationSession graph:graphCopy allowGuestAsset:assetCopy];

      goto LABEL_10;
    }

    loggingConnection = [(PGMemoryGenerator *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *v21 = 0;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGChildActivityMemoryGenerator] No moment feature edges found", v21, 2u);
    }
  }

  else
  {
    loggingConnection2 = [(PGMemoryGenerator *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "[PGChildActivityMemoryGenerator] One or more person activity node expected", buf, 2u);
    }
  }

  v18 = 0;
LABEL_10:

  return v18;
}

- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)memory inGraph:(id)graph
{
  v11.receiver = self;
  v11.super_class = PGChildActivityMemoryGenerator;
  memoryCopy = memory;
  v6 = [(PGMemoryGenerator *)&v11 keyAssetCurationOptionsWithTriggeredMemory:memoryCopy inGraph:graph];
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];

  v8 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:memoryFeatureNodes];

  localIdentifiers = [v8 localIdentifiers];
  [v6 setReferencePersonLocalIdentifiers:localIdentifiers];

  return v6;
}

- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block
{
  v42 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v7 = [PGGraphPersonNodeCollection personNodesInAgeCategories:&unk_284486240 includingMe:0 inGraph:graph];
  if ([v7 count])
  {
    v30 = blockCopy;
    _supportedIndividualActivityLabels = [(PGChildActivityMemoryGenerator *)self _supportedIndividualActivityLabels];
    _supportedCompoundActivityLabels = [(PGChildActivityMemoryGenerator *)self _supportedCompoundActivityLabels];
    v10 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:_supportedIndividualActivityLabels];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v11 = _supportedCompoundActivityLabels;
    v12 = [v11 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v37;
      do
      {
        v15 = 0;
        do
        {
          if (*v37 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [v10 unionSet:*(*(&v36 + 1) + 8 * v15++)];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v13);
    }

    v16 = MEMORY[0x277D22C90];
    v17 = +[PGGraphPersonNode personActivityMeaningOfPerson];
    v40[0] = v17;
    v18 = [PGGraphPersonActivityMeaningNode filterWithActivityLabels:v10];
    relation = [v18 relation];
    v40[1] = relation;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
    v21 = [v16 chain:v20];

    v22 = [MEMORY[0x277D22BF8] adjacencyWithSources:v7 relation:v21 targetsClass:objc_opt_class()];
    v23 = MEMORY[0x277D22BF8];
    targets = [v22 targets];
    v25 = +[PGGraphFeatureNodeCollection momentOfFeature];
    v26 = [v23 adjacencyWithSources:targets relation:v25 targetsClass:objc_opt_class()];

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __88__PGChildActivityMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke;
    v31[3] = &unk_278885620;
    v31[4] = self;
    v32 = v11;
    v33 = v26;
    blockCopy = v30;
    v34 = _supportedIndividualActivityLabels;
    v35 = v30;
    v27 = _supportedIndividualActivityLabels;
    v28 = v26;
    v29 = v11;
    [v22 enumerateTargetsBySourceWithBlock:v31];
  }
}

void __88__PGChildActivityMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke(id *a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v29 = a2;
  v5 = a3;
  v6 = [a1[4] loggingConnection];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v29 localIdentifiers];
    v8 = [v7 anyObject];
    v9 = [v5 personActivityMeaningLabels];
    *buf = 138412546;
    v42 = v8;
    v43 = 2112;
    v44 = v9;
    _os_log_impl(&dword_22F0FC000, v6, OS_LOG_TYPE_INFO, "[PGChildActivityMemoryGenerator] Generate activity memories for child %@ with activity meanings:%@", buf, 0x16u);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = a1[5];
  v10 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v37;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v36 + 1) + 8 * i);
        v15 = [a1[4] loggingConnection];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v42 = v14;
          _os_log_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_INFO, "[PGChildActivityMemoryGenerator] Generate compound activities: %@", buf, 0xCu);
        }

        v16 = [v5 subsetWithActivityLabels:v14];
        v17 = [v16 count];
        v18 = [a1[4] loggingConnection];
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
        if (v17)
        {
          if (v19)
          {
            v20 = [v16 labels];
            *buf = 138412290;
            v42 = v20;
            _os_log_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_INFO, "[PGChildActivityMemoryGenerator] Found compound activities: %@", buf, 0xCu);
          }

          v18 = [a1[6] targetsForSources:v16];
          v21 = [v16 featureNodeCollection];
          v22 = [v29 featureNodeCollection];
          v23 = [v21 collectionByFormingUnionWith:v22];

          (*(a1[8] + 2))();
        }

        else if (v19)
        {
          *buf = 0;
          _os_log_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_INFO, "[PGChildActivityMemoryGenerator] Cannot find any of the compound activities", buf, 2u);
        }
      }

      v11 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v11);
  }

  v24 = [v5 subsetWithActivityLabels:a1[7]];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __88__PGChildActivityMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke_238;
  v30[3] = &unk_2788855F8;
  v25 = a1[7];
  v26 = a1[4];
  v31 = v25;
  v32 = v26;
  v33 = a1[6];
  v34 = v29;
  v35 = a1[8];
  v27 = v29;
  [v24 enumerateIdentifiersAsCollectionsWithBlock:v30];
}

void __88__PGChildActivityMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke_238(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 personActivityMeaningLabels];
  v6 = [v5 anyObject];

  if ([*(a1 + 32) containsObject:v6])
  {
    v7 = [*(a1 + 40) loggingConnection];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_INFO, "[PGChildActivityMemoryGenerator] Generate for single activity: %@", &v12, 0xCu);
    }

    v8 = [*(a1 + 48) targetsForSources:v4];
    v9 = [v4 featureNodeCollection];
    v10 = [*(a1 + 56) featureNodeCollection];
    v11 = [v9 collectionByFormingUnionWith:v10];

    (*(*(a1 + 64) + 16))();
  }
}

- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type
{
  v12 = *MEMORY[0x277D85DE8];
  if (type == 1)
  {
    return 15001;
  }

  typeCopy = type;
  if (type == 3)
  {
    return 15002;
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

- (PGChildActivityMemoryGenerator)initWithMemoryGenerationContext:(id)context
{
  v16.receiver = self;
  v16.super_class = PGChildActivityMemoryGenerator;
  v3 = [(PGMemoryGenerator *)&v16 initWithMemoryGenerationContext:context];
  v4 = v3;
  if (v3)
  {
    v3->_requireSceneProcessingMeetsThresholdOverTime = 1;
    v3->_requireFaceProcessingMeetsThresholdOverTime = 1;
    v5 = objc_alloc_init(PGMemoryMomentRequirements);
    momentRequirements = v4->_momentRequirements;
    v4->_momentRequirements = v5;

    [(PGMemoryMomentRequirements *)v4->_momentRequirements setMinimumNumberOfRelevantAssets:3];
    [(PGMemoryMomentRequirements *)v4->_momentRequirements setFilterMomentsWithNotEnoughScenesProcessed:1];
    v7 = +[PGOverTheYearsMemoryConfiguration defaultOverTheYearsMemoryConfiguration];
    overTheYearsConfiguration = v4->_overTheYearsConfiguration;
    v4->_overTheYearsConfiguration = v7;

    [(PGOverTimeMemoryConfiguration *)v4->_overTheYearsConfiguration setMinimumNumberOfMoments:2];
    [(PGOverTheYearsMemoryConfiguration *)v4->_overTheYearsConfiguration setMinimumNumberOfMomentsForTwoConsecutiveYears:4];
    [(PGOverTimeMemoryConfiguration *)v4->_overTheYearsConfiguration setMinimumNumberOfRelevantAssets:13];
    v9 = +[PGFeaturedTimePeriodMemoryConfiguration defaultFeaturedYearMemoryConfiguration];
    featuredYearConfiguration = v4->_featuredYearConfiguration;
    v4->_featuredYearConfiguration = v9;

    [(PGOverTimeMemoryConfiguration *)v4->_featuredYearConfiguration setMinimumNumberOfMoments:4];
    [(PGOverTimeMemoryConfiguration *)v4->_featuredYearConfiguration setMinimumMomentSpreadicityTimeInterval:604800.0];
    [(PGOverTimeMemoryConfiguration *)v4->_featuredYearConfiguration setMinimumOverallTimeIntervalOfMoments:7889400.0];
    [(PGOverTimeMemoryConfiguration *)v4->_featuredYearConfiguration setMinimumNumberOfRelevantAssets:13];
    v4->_minimumNumberOfDefaultMemories = 3;
    v11 = +[PGOverTheYearsMemoryConfiguration defaultFallbackOverTheYearsMemoryConfiguration];
    fallbackOverTheYearsConfiguration = v4->_fallbackOverTheYearsConfiguration;
    v4->_fallbackOverTheYearsConfiguration = v11;

    [(PGOverTimeMemoryConfiguration *)v4->_fallbackOverTheYearsConfiguration setMinimumNumberOfMoments:2];
    v13 = +[PGFeaturedTimePeriodMemoryConfiguration defaultFallbackFeaturedYearMemoryConfiguration];
    fallbackFeaturedYearConfiguration = v4->_fallbackFeaturedYearConfiguration;
    v4->_fallbackFeaturedYearConfiguration = v13;

    [(PGOverTimeMemoryConfiguration *)v4->_fallbackFeaturedYearConfiguration setMinimumOverallTimeIntervalOfMoments:7889400.0];
  }

  return v4;
}

@end