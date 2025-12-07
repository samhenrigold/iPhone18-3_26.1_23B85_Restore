@interface PGMyPetMemoryGenerator
- (PGMyPetMemoryGenerator)initWithMemoryGenerationContext:(id)context;
- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)memory inGraph:(id)graph;
- (id)relevantFeederForTriggeredMemory:(id)memory inGraph:(id)graph allowGuestAsset:(BOOL)asset progressReporter:(id)reporter;
- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph;
- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type;
- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block;
@end

@implementation PGMyPetMemoryGenerator

- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph
{
  v29 = *MEMORY[0x277D85DE8];
  memoryCopy = memory;
  contextCopy = context;
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];
  v13 = [(PGGraphNodeCollection *)PGGraphPetNodeCollection subsetInCollection:memoryFeatureNodes];
  if ([v13 count] && objc_msgSend(v13, "count") < 3)
  {
    v16 = [PGPetMemoryTitleGenerator alloc];
    memoryMomentNodes = [memoryCopy memoryMomentNodes];
    temporarySet = [memoryMomentNodes temporarySet];
    loggingConnection2 = [(PGPetMemoryTitleGenerator *)v16 initWithMomentNodes:temporarySet type:0 titleGenerationContext:contextCopy];

    [loggingConnection2 setPetNodes:v13];
    v19 = [(PGGraphNodeCollection *)PGGraphSeasonNodeCollection subsetInCollection:memoryFeatureNodes];
    if ([v19 count])
    {
      anyNode = [v19 anyNode];
      name = [anyNode name];

      if (![name length])
      {
        loggingConnection = [(PGMemoryGenerator *)self loggingConnection];
        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
        {
          v26 = [v19 description];
          v27 = 138412290;
          v28 = v26;
          _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGMyPetMemoryGenerator] No season name found for season node in collection %@", &v27, 0xCu);
        }

        v15 = 0;
        goto LABEL_18;
      }

      [loggingConnection2 setSeasonName:name];
    }

    v22 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:memoryFeatureNodes];
    if ([v22 count] || objc_msgSend(v13, "count") >= 2)
    {
      [loggingConnection2 setUsePetAndPersonTitle:1];
      [loggingConnection2 setPersonNodeAsCollection:v22];
    }

    v23 = [(PGGraphNodeCollection *)PGGraphYearNodeCollection subsetInCollection:memoryFeatureNodes];
    if ([v23 count] == 1)
    {
      [loggingConnection2 setFeaturedYearNodes:v23];
    }

    v15 = loggingConnection2;

LABEL_18:
    goto LABEL_19;
  }

  loggingConnection2 = [(PGMemoryGenerator *)self loggingConnection];
  if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
  {
    v27 = 67109120;
    LODWORD(v28) = [v13 count];
    _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "[PGMyPetMemoryGenerator] At least one and at most two pet nodes expected, found %d", &v27, 8u);
  }

  v15 = 0;
LABEL_19:

  return v15;
}

- (id)relevantFeederForTriggeredMemory:(id)memory inGraph:(id)graph allowGuestAsset:(BOOL)asset progressReporter:(id)reporter
{
  assetCopy = asset;
  v45 = *MEMORY[0x277D85DE8];
  memoryCopy = memory;
  graphCopy = graph;
  reporterCopy = reporter;
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];
  v13 = [(PGGraphNodeCollection *)PGGraphPetNodeCollection subsetInCollection:memoryFeatureNodes];
  if ([v13 count] && objc_msgSend(v13, "count") < 3)
  {
    memoryMomentNodes = [memoryCopy memoryMomentNodes];
    *buf = 0;
    v40 = buf;
    v41 = 0x3032000000;
    v42 = __Block_byref_object_copy__6276;
    v43 = __Block_byref_object_dispose__6277;
    v44 = 0;
    if ([v13 count] == 1)
    {
      v28 = [(PGGraphEdgeCollection *)PGGraphMomentFeaturesEdgeCollection edgesFromNodes:memoryMomentNodes toNodes:v13];
      if ([v28 count])
      {
        allRelevantAssetLocalIdentifiers = [v28 allRelevantAssetLocalIdentifiers];
        v17 = [allRelevantAssetLocalIdentifiers mutableCopy];
        v18 = *(v40 + 5);
        *(v40 + 5) = v17;

        v19 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:memoryFeatureNodes];
        if ([v19 count])
        {
          v27 = [(PGGraphEdgeCollection *)PGGraphMomentFeaturesEdgeCollection edgesFromNodes:memoryMomentNodes toNodes:v19];
          v20 = *(v40 + 5);
          allRelevantAssetLocalIdentifiers2 = [v27 allRelevantAssetLocalIdentifiers];
          [v20 intersectSet:allRelevantAssetLocalIdentifiers2];
        }

        goto LABEL_16;
      }

      loggingConnection = [(PGMemoryGenerator *)self loggingConnection];
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *v35 = 0;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGMyPetMemoryGenerator] No pet moment feature edges found", v35, 2u);
      }
    }

    else
    {
      *v35 = 0;
      v36 = v35;
      v37 = 0x2020000000;
      v38 = 0;
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __100__PGMyPetMemoryGenerator_relevantFeederForTriggeredMemory_inGraph_allowGuestAsset_progressReporter___block_invoke;
      v31[3] = &unk_27887F8C8;
      v32 = memoryMomentNodes;
      v33 = v35;
      v34 = buf;
      [v13 enumerateIdentifiersAsCollectionsWithBlock:v31];
      if (v36[24] != 1)
      {

        _Block_object_dispose(v35, 8);
LABEL_16:
        allObjects = [*(v40 + 5) allObjects];
        memoryCurationSession = [(PGMemoryGenerator *)self memoryCurationSession];
        v15 = [PGMemoryGenerationHelper feederForMemoriesWithAssetLocalIdentifiers:allObjects memoryCurationSession:memoryCurationSession graph:graphCopy allowGuestAsset:assetCopy];

LABEL_21:
        _Block_object_dispose(buf, 8);

        goto LABEL_22;
      }

      loggingConnection2 = [(PGMemoryGenerator *)self loggingConnection];
      if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
      {
        *v30 = 0;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "[PGMyPetMemoryGenerator] No pet moment feature edges found", v30, 2u);
      }

      _Block_object_dispose(v35, 8);
    }

    v15 = 0;
    goto LABEL_21;
  }

  memoryMomentNodes = [(PGMemoryGenerator *)self loggingConnection];
  if (os_log_type_enabled(memoryMomentNodes, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = [v13 count];
    _os_log_error_impl(&dword_22F0FC000, memoryMomentNodes, OS_LOG_TYPE_ERROR, "[PGMyPetMemoryGenerator] At least one and at most two pet nodes expected, found %d", buf, 8u);
  }

  v15 = 0;
LABEL_22:

  return v15;
}

void __100__PGMyPetMemoryGenerator_relevantFeederForTriggeredMemory_inGraph_allowGuestAsset_progressReporter___block_invoke(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v12 = [(PGGraphEdgeCollection *)PGGraphMomentFeaturesEdgeCollection edgesFromNodes:a1[4] toNodes:a3];
  if ([v12 count])
  {
    v6 = *(*(a1[6] + 8) + 40);
    v7 = [v12 allRelevantAssetLocalIdentifiers];
    v8 = v7;
    if (v6)
    {
      [v6 intersectSet:v7];
    }

    else
    {
      v9 = [v7 mutableCopy];
      v10 = *(a1[6] + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }
  }

  else
  {
    *(*(a1[5] + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)memory inGraph:(id)graph
{
  v14.receiver = self;
  v14.super_class = PGMyPetMemoryGenerator;
  memoryCopy = memory;
  v6 = [(PGMemoryGenerator *)&v14 keyAssetCurationOptionsWithTriggeredMemory:memoryCopy inGraph:graph];
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];

  v8 = [(PGGraphNodeCollection *)PGGraphPetNodeCollection subsetInCollection:memoryFeatureNodes];
  localIdentifiers = [v8 localIdentifiers];
  v10 = [localIdentifiers mutableCopy];

  v11 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:memoryFeatureNodes];
  if ([v11 count])
  {
    localIdentifiers2 = [v11 localIdentifiers];
    [v10 unionSet:localIdentifiers2];
  }

  [v6 setReferencePersonLocalIdentifiers:v10];
  [v6 setMinimumNumberOfReferencePersons:0];

  return v6;
}

- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type
{
  typeCopy = type;
  v12 = *MEMORY[0x277D85DE8];
  if (type - 1 < 3)
  {
    return type | 0x1B58;
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

- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block
{
  blockCopy = block;
  v6 = [(PGGraphNodeCollection *)PGGraphPetNodeCollection nodesInGraph:graph];
  v7 = MEMORY[0x277D22BF8];
  v8 = +[PGGraphFeatureNodeCollection momentOfFeature];
  v9 = [v7 adjacencyWithSources:v6 relation:v8 targetsClass:objc_opt_class()];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__PGMyPetMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke;
  v11[3] = &unk_278887E38;
  v12 = blockCopy;
  v10 = blockCopy;
  [v9 enumerateTargetsBySourceWithBlock:v11];
}

void __80__PGMyPetMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [a2 featureNodeCollection];
  (*(v6 + 16))(v6, v7, v8, a4);
}

- (PGMyPetMemoryGenerator)initWithMemoryGenerationContext:(id)context
{
  v14.receiver = self;
  v14.super_class = PGMyPetMemoryGenerator;
  v3 = [(PGMemoryGenerator *)&v14 initWithMemoryGenerationContext:context];
  v4 = v3;
  if (v3)
  {
    v3->_requireSceneProcessingMeetsThresholdOverTime = 1;
    v3->_requireFaceProcessingMeetsThresholdOverTime = 1;
    v5 = objc_alloc_init(PGMemoryMomentRequirements);
    momentRequirements = v4->_momentRequirements;
    v4->_momentRequirements = v5;

    [(PGMemoryMomentRequirements *)v4->_momentRequirements setMinimumNumberOfRelevantAssets:2];
    [(PGMemoryMomentRequirements *)v4->_momentRequirements setFilterMomentsWithNotEnoughScenesProcessed:1];
    v7 = +[PGOverTheYearsMemoryConfiguration strictDefaultOverTheYearsMemoryConfiguration];
    overTheYearsConfiguration = v4->_overTheYearsConfiguration;
    v4->_overTheYearsConfiguration = v7;

    [(PGOverTimeMemoryConfiguration *)v4->_overTheYearsConfiguration setMinimumNumberOfRelevantAssets:13];
    v9 = +[PGFeaturedTimePeriodMemoryConfiguration strictDefaultFeaturedYearMemoryConfiguration];
    featuredYearConfiguration = v4->_featuredYearConfiguration;
    v4->_featuredYearConfiguration = v9;

    [(PGOverTimeMemoryConfiguration *)v4->_featuredYearConfiguration setMinimumNumberOfRelevantAssets:13];
    v11 = +[PGFeaturedTimePeriodMemoryConfiguration defaultFeaturedSeasonMemoryConfiguration];
    featuredSeasonConfiguration = v4->_featuredSeasonConfiguration;
    v4->_featuredSeasonConfiguration = v11;

    [(PGOverTimeMemoryConfiguration *)v4->_featuredSeasonConfiguration setMinimumNumberOfRelevantAssets:13];
  }

  return v4;
}

@end