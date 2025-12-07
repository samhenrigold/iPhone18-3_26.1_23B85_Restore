@interface PGPersonMemoryGenerator
- (PGPersonMemoryGenerator)initWithMemoryGenerationContext:(id)context;
- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)memory inGraph:(id)graph;
- (id)relevantFeederForTriggeredMemory:(id)memory inGraph:(id)graph allowGuestAsset:(BOOL)asset progressReporter:(id)reporter;
- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph;
- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type;
- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block;
@end

@implementation PGPersonMemoryGenerator

- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph
{
  v39 = *MEMORY[0x277D85DE8];
  memoryCopy = memory;
  contextCopy = context;
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];
  if ([memoryFeatureNodes count])
  {
    memoryMomentNodes = [memoryCopy memoryMomentNodes];
    if ([memoryMomentNodes count])
    {
      loggingConnection3 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:memoryFeatureNodes];
      if ([loggingConnection3 count])
      {
        anyNode = [loggingConnection3 anyNode];
        if (anyNode)
        {
          loggingConnection2 = [(PGGraphNodeCollection *)PGGraphSeasonNodeCollection subsetInCollection:memoryFeatureNodes];
          if ([loggingConnection2 count])
          {
            anyNode2 = [loggingConnection2 anyNode];
            name = [anyNode2 name];

            if ([name length])
            {
              v19 = [PGPeopleMemoryTitleGenerator alloc];
              temporarySet = [memoryMomentNodes temporarySet];
              [MEMORY[0x277CBEB98] setWithObject:anyNode];
              v35 = loggingConnection2;
              v22 = v21 = name;
              v23 = [(PGPeopleMemoryTitleGenerator *)v19 initWithMomentNodes:temporarySet personNodes:v22 seasonName:v21 type:4 titleGenerationContext:contextCopy];

              name = v21;
              loggingConnection2 = v35;
            }

            else
            {
              loggingConnection = [(PGMemoryGenerator *)self loggingConnection];
              if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
              {
                [loggingConnection2 description];
                v31 = loggingConnection2;
                v33 = v32 = name;
                *buf = 138412290;
                v38 = v33;
                _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGPersonMemoryGenerator] No season name found for season node in collection %@", buf, 0xCu);

                name = v32;
                loggingConnection2 = v31;
              }

              v23 = 0;
            }
          }

          else
          {
            name = [memoryMomentNodes temporarySet];
            v24 = [PGPeopleMemoryTitleGenerator peopleOverTimeTimeTitleOptionsWithMomentNodes:?];
            v36 = [(PGGraphNodeCollection *)PGGraphYearNodeCollection subsetInCollection:memoryFeatureNodes];
            if ([v36 count] == 1)
            {
              [v24 setFeaturedYearNodes:v36];
            }

            v25 = [PGPeopleMemoryTitleGenerator alloc];
            v26 = [MEMORY[0x277CBEB98] setWithObject:anyNode];
            v27 = v24;
            v34 = v24;
            v28 = v26;
            v23 = [(PGPeopleMemoryTitleGenerator *)v25 initWithMomentNodes:name personNodes:v26 timeTitleOptions:v27 type:0 titleGenerationContext:contextCopy];
          }
        }

        else
        {
          loggingConnection2 = [(PGMemoryGenerator *)self loggingConnection];
          if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "[PGPersonMemoryGenerator] unable to cast personNodeCollection.anyNode to PGGraphPersonNode", buf, 2u);
          }

          v23 = 0;
        }
      }

      else
      {
        anyNode = [(PGMemoryGenerator *)self loggingConnection];
        if (os_log_type_enabled(anyNode, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_22F0FC000, anyNode, OS_LOG_TYPE_ERROR, "[PGPersonMemoryGenerator] personNodeCollection is empty", buf, 2u);
        }

        v23 = 0;
      }
    }

    else
    {
      loggingConnection3 = [(PGMemoryGenerator *)self loggingConnection];
      if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_ERROR, "[PGPersonMemoryGenerator] momentNodes is empty", buf, 2u);
      }

      v23 = 0;
    }
  }

  else
  {
    memoryMomentNodes = [(PGMemoryGenerator *)self loggingConnection];
    if (os_log_type_enabled(memoryMomentNodes, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, memoryMomentNodes, OS_LOG_TYPE_ERROR, "[PGPersonMemoryGenerator] featureNodes is empty", buf, 2u);
    }

    v23 = 0;
  }

  return v23;
}

- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)memory inGraph:(id)graph
{
  v11.receiver = self;
  v11.super_class = PGPersonMemoryGenerator;
  memoryCopy = memory;
  v6 = [(PGMemoryGenerator *)&v11 keyAssetCurationOptionsWithTriggeredMemory:memoryCopy inGraph:graph];
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];

  v8 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:memoryFeatureNodes];

  localIdentifiers = [v8 localIdentifiers];
  [v6 setReferencePersonLocalIdentifiers:localIdentifiers];

  return v6;
}

- (id)relevantFeederForTriggeredMemory:(id)memory inGraph:(id)graph allowGuestAsset:(BOOL)asset progressReporter:(id)reporter
{
  assetCopy = asset;
  graphCopy = graph;
  memoryCopy = memory;
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];
  v12 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:memoryFeatureNodes];

  memoryMomentNodes = [memoryCopy memoryMomentNodes];

  v14 = [(PGGraphEdgeCollection *)PGGraphMomentFeaturesEdgeCollection edgesFromNodes:memoryMomentNodes toNodes:v12];

  if ([v14 count])
  {
    allRelevantAssetLocalIdentifiers = [v14 allRelevantAssetLocalIdentifiers];
    allObjects = [allRelevantAssetLocalIdentifiers allObjects];
    memoryCurationSession = [(PGMemoryGenerator *)self memoryCurationSession];
    v18 = [PGMemoryGenerationHelper feederForMemoriesWithAssetLocalIdentifiers:allObjects memoryCurationSession:memoryCurationSession graph:graphCopy allowGuestAsset:assetCopy];
  }

  else
  {
    loggingConnection = [(PGMemoryGenerator *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *v21 = 0;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGPersonMemoryGenerator] No moment feature edges found", v21, 2u);
    }

    v18 = 0;
  }

  return v18;
}

- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block
{
  blockCopy = block;
  v6 = [PGGraphPersonNodeCollection personNodesExcludingMeInGraph:graph];
  v7 = MEMORY[0x277D22BF8];
  v8 = +[PGGraphFeatureNodeCollection momentOfFeature];
  v9 = [v7 adjacencyWithSources:v6 relation:v8 targetsClass:objc_opt_class()];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__PGPersonMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke;
  v11[3] = &unk_278880440;
  v12 = blockCopy;
  v10 = blockCopy;
  [v9 enumerateTargetsBySourceWithBlock:v11];
}

void __81__PGPersonMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [a2 featureNodeCollection];
  (*(v6 + 16))(v6, v7, v8, a4);
}

- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type
{
  typeCopy = type;
  v12 = *MEMORY[0x277D85DE8];
  if (type - 1 < 3)
  {
    return type | 0x7D0;
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

- (PGPersonMemoryGenerator)initWithMemoryGenerationContext:(id)context
{
  v14.receiver = self;
  v14.super_class = PGPersonMemoryGenerator;
  v3 = [(PGMemoryGenerator *)&v14 initWithMemoryGenerationContext:context];
  v4 = v3;
  if (v3)
  {
    v3->_requireSceneProcessingMeetsThresholdOverTime = 1;
    v3->_requireFaceProcessingMeetsThresholdOverTime = 1;
    v5 = objc_alloc_init(PGMemoryMomentRequirements);
    momentRequirements = v4->_momentRequirements;
    v4->_momentRequirements = v5;

    [(PGMemoryMomentRequirements *)v4->_momentRequirements setFilterUninterestingForMemories:1];
    [(PGMemoryMomentRequirements *)v4->_momentRequirements setMinimumNumberOfRelevantAssets:1];
    [(PGMemoryMomentRequirements *)v4->_momentRequirements setFilterMomentsWithNotEnoughScenesProcessed:1];
    v7 = +[PGOverTheYearsMemoryConfiguration strictDefaultOverTheYearsMemoryConfiguration];
    overTheYearsConfiguration = v4->_overTheYearsConfiguration;
    v4->_overTheYearsConfiguration = v7;

    [(PGOverTimeMemoryConfiguration *)v4->_overTheYearsConfiguration setMinimumNumberOfRelevantAssets:13];
    [(PGOverTimeMemoryConfiguration *)v4->_overTheYearsConfiguration setAboveMomentAverageContentScoreThreshold:0.5];
    v9 = +[PGFeaturedTimePeriodMemoryConfiguration strictDefaultFeaturedYearMemoryConfiguration];
    featuredYearConfiguration = v4->_featuredYearConfiguration;
    v4->_featuredYearConfiguration = v9;

    [(PGOverTimeMemoryConfiguration *)v4->_featuredYearConfiguration setMinimumNumberOfRelevantAssets:13];
    [(PGOverTimeMemoryConfiguration *)v4->_featuredYearConfiguration setAboveMomentAverageContentScoreThreshold:0.5];
    v11 = +[PGFeaturedTimePeriodMemoryConfiguration defaultFeaturedSeasonMemoryConfiguration];
    featuredSeasonConfiguration = v4->_featuredSeasonConfiguration;
    v4->_featuredSeasonConfiguration = v11;

    [(PGOverTimeMemoryConfiguration *)v4->_featuredSeasonConfiguration setMinimumNumberOfRelevantAssets:13];
    [(PGOverTimeMemoryConfiguration *)v4->_featuredSeasonConfiguration setAboveMomentAverageContentScoreThreshold:0.5];
  }

  return v4;
}

@end