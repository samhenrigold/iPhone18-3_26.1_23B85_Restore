@interface PGExcitingMomentsMemoryGenerator
- (PGExcitingMomentsMemoryGenerator)initWithMemoryGenerationContext:(id)context;
- (id)curationOptionsWithRequiredAssetUUIDs:(id)ds eligibleAssetUUIDs:(id)iDs triggeredMemory:(id)memory;
- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)memory inGraph:(id)graph;
- (id)relevantFeederForTriggeredMemory:(id)memory inGraph:(id)graph allowGuestAsset:(BOOL)asset progressReporter:(id)reporter;
- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph;
- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type;
- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block;
@end

@implementation PGExcitingMomentsMemoryGenerator

- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph
{
  v22 = *MEMORY[0x277D85DE8];
  memoryCopy = memory;
  contextCopy = context;
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];
  v13 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:memoryFeatureNodes];
  if ([v13 count] == 1)
  {
    v14 = [PGExcitingMomentsMemoryTitleGenerator alloc];
    memoryMomentNodes = [memoryCopy memoryMomentNodes];
    temporarySet = [memoryMomentNodes temporarySet];
    v17 = [(PGExcitingMomentsMemoryTitleGenerator *)v14 initWithMomentNodes:temporarySet type:0 titleGenerationContext:contextCopy];

    v18 = [(PGGraphNodeCollection *)PGGraphYearNodeCollection subsetInCollection:memoryFeatureNodes];
    if ([v18 count] == 1)
    {
      [(PGTitleGenerator *)v17 setFeaturedYearNodes:v18];
    }

    [(PGExcitingMomentsMemoryTitleGenerator *)v17 setPersonNodeAsCollection:v13];
  }

  else
  {
    loggingConnection = [(PGMemoryGenerator *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      v21[0] = 67109120;
      v21[1] = [v13 count];
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGExcitingMomentsMemoryGenerator] One person node expected, found %d", v21, 8u);
    }

    v17 = 0;
  }

  return v17;
}

- (id)relevantFeederForTriggeredMemory:(id)memory inGraph:(id)graph allowGuestAsset:(BOOL)asset progressReporter:(id)reporter
{
  v59 = *MEMORY[0x277D85DE8];
  memoryCopy = memory;
  graphCopy = graph;
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];
  v11 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:memoryFeatureNodes];
  if ([v11 count] == 1)
  {
    memoryMomentNodes = [memoryCopy memoryMomentNodes];
    v13 = [(PGGraphEdgeCollection *)PGGraphMomentFeaturesEdgeCollection edgesFromNodes:memoryMomentNodes toNodes:v11];
    if ([v13 count])
    {
      allRelevantAssetLocalIdentifiers = [v13 allRelevantAssetLocalIdentifiers];
      loggingConnection5 = [allRelevantAssetLocalIdentifiers mutableCopy];

      v16 = [(PGGraphNodeCollection *)PGGraphAudioFeatureNodeCollection subsetInCollection:memoryFeatureNodes];
      if ([v16 count] == 1)
      {
        loggingConnection4 = [(PGGraphEdgeCollection *)PGGraphMomentFeaturesEdgeCollection edgesFromNodes:memoryMomentNodes toNodes:v16];
        if ([loggingConnection4 count])
        {
          v50 = v16;
          allRelevantAssetLocalIdentifiers2 = [loggingConnection4 allRelevantAssetLocalIdentifiers];
          [loggingConnection5 intersectSet:allRelevantAssetLocalIdentifiers2];

          if ([loggingConnection5 count])
          {
            v42 = loggingConnection4;
            v44 = v13;
            v45 = memoryMomentNodes;
            v46 = v11;
            v47 = memoryFeatureNodes;
            v48 = graphCopy;
            v49 = memoryCopy;
            memoryCurationSession = [(PGMemoryGenerator *)self memoryCurationSession];
            curationManager = [memoryCurationSession curationManager];
            defaultAssetFetchOptionsForMemories = [curationManager defaultAssetFetchOptionsForMemories];

            v22 = MEMORY[0x277CD97A8];
            v43 = loggingConnection5;
            allObjects = [loggingConnection5 allObjects];
            v51 = defaultAssetFetchOptionsForMemories;
            v24 = [v22 fetchAssetsWithLocalIdentifiers:allObjects options:defaultAssetFetchOptionsForMemories];

            v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v26 = objc_alloc_init(MEMORY[0x277D3C7A0]);
            v52 = 0u;
            v53 = 0u;
            v54 = 0u;
            v55 = 0u;
            v27 = v24;
            v28 = [v27 countByEnumeratingWithState:&v52 objects:v56 count:16];
            if (v28)
            {
              v29 = v28;
              v30 = *v53;
              do
              {
                for (i = 0; i != v29; ++i)
                {
                  if (*v53 != v30)
                  {
                    objc_enumerationMutation(v27);
                  }

                  v32 = *(*(&v52 + 1) + 8 * i);
                  v33 = [v26 curationModelForAsset:v32];
                  v34 = [v33 isInterestingLivePhotoWithAsset:v32];

                  if (v34)
                  {
                    objectID = [v32 objectID];
                    [v25 addObject:objectID];
                  }
                }

                v29 = [v27 countByEnumeratingWithState:&v52 objects:v56 count:16];
              }

              while (v29);
            }

            if ([v25 count])
            {
              loggingConnection = [objc_alloc(MEMORY[0x277CD9888]) initWithExistingFetchResult:v27 filteredObjectIDs:v25];
              memoryCurationSession2 = [(PGMemoryGenerator *)self memoryCurationSession];
              graphCopy = v48;
              v38 = [PGMemoryGenerationHelper feederForMemoriesWithAssetFetchResult:loggingConnection memoryCurationSession:memoryCurationSession2 graph:v48];

              memoryCopy = v49;
              v11 = v46;
              memoryFeatureNodes = v47;
            }

            else
            {
              loggingConnection = [(PGMemoryGenerator *)self loggingConnection];
              graphCopy = v48;
              v11 = v46;
              if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGExcitingMomentsMemoryGenerator] No assets with good enough autoplay suggestion score found in relevant assets for exciting moments memory", buf, 2u);
              }

              v38 = 0;
              memoryCopy = v49;
              memoryFeatureNodes = v47;
            }

            loggingConnection4 = v42;

            v13 = v44;
            memoryMomentNodes = v45;
            loggingConnection5 = v43;
          }

          else
          {
            loggingConnection2 = [(PGMemoryGenerator *)self loggingConnection];
            v51 = loggingConnection2;
            if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "[PGExcitingMomentsMemoryGenerator] No intersecting relevantAssetLocalIdentifiers found for exciting moments memory", buf, 2u);
            }

            v38 = 0;
          }

          v16 = v50;
        }

        else
        {
          loggingConnection3 = [(PGMemoryGenerator *)self loggingConnection];
          v51 = loggingConnection3;
          if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_ERROR, "[PGExcitingMomentsMemoryGenerator] No excitementAudioMomentFeaturesEdges found", buf, 2u);
          }

          v38 = 0;
        }
      }

      else
      {
        loggingConnection4 = [(PGMemoryGenerator *)self loggingConnection];
        if (os_log_type_enabled(loggingConnection4, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v58 = [v16 count];
          _os_log_error_impl(&dword_22F0FC000, loggingConnection4, OS_LOG_TYPE_ERROR, "[PGExcitingMomentsMemoryGenerator] One excitement audio node expected, found %d", buf, 8u);
        }

        v38 = 0;
      }
    }

    else
    {
      loggingConnection5 = [(PGMemoryGenerator *)self loggingConnection];
      if (os_log_type_enabled(loggingConnection5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection5, OS_LOG_TYPE_ERROR, "[PGExcitingMomentsMemoryGenerator] No personMomentFeaturesEdges found", buf, 2u);
      }

      v38 = 0;
    }
  }

  else
  {
    memoryMomentNodes = [(PGMemoryGenerator *)self loggingConnection];
    if (os_log_type_enabled(memoryMomentNodes, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v58 = [v11 count];
      _os_log_error_impl(&dword_22F0FC000, memoryMomentNodes, OS_LOG_TYPE_ERROR, "[PGExcitingMomentsMemoryGenerator] One person node expected, found %d", buf, 8u);
    }

    v38 = 0;
  }

  return v38;
}

- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)memory inGraph:(id)graph
{
  v11.receiver = self;
  v11.super_class = PGExcitingMomentsMemoryGenerator;
  memoryCopy = memory;
  v6 = [(PGMemoryGenerator *)&v11 keyAssetCurationOptionsWithTriggeredMemory:memoryCopy inGraph:graph];
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];

  v8 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:memoryFeatureNodes];

  localIdentifiers = [v8 localIdentifiers];
  [v6 setReferencePersonLocalIdentifiers:localIdentifiers];

  [v6 setMinimumNumberOfReferencePersons:0];

  return v6;
}

- (id)curationOptionsWithRequiredAssetUUIDs:(id)ds eligibleAssetUUIDs:(id)iDs triggeredMemory:(id)memory
{
  v7.receiver = self;
  v7.super_class = PGExcitingMomentsMemoryGenerator;
  v5 = [(PGMemoryGenerator *)&v7 curationOptionsWithRequiredAssetUUIDs:ds eligibleAssetUUIDs:iDs triggeredMemory:memory];
  [v5 setMinimumNumberOfItems:15];
  [v5 setFailIfMinimumDurationNotReached:1];

  return v5;
}

- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block
{
  v19[2] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v6 = [PGGraphAudioFeatureNodeCollection audioFeatureNodesForLabel:@"ExcitementAudio" inGraph:graph];
  momentNodes = [v6 momentNodes];
  if ([momentNodes count])
  {
    v8 = MEMORY[0x277D22C90];
    v9 = +[PGGraphMomentNode featureOfMoment];
    v19[0] = v9;
    v10 = +[PGGraphPersonNode filterExcludingMe];
    relation = [v10 relation];
    v19[1] = relation;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
    v13 = [v8 chain:v12];

    v14 = [MEMORY[0x277D22BF8] adjacencyWithSources:momentNodes relation:v13 targetsClass:objc_opt_class()];
    transposed = [v14 transposed];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __90__PGExcitingMomentsMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke;
    v16[3] = &unk_278887368;
    v17 = v6;
    v18 = blockCopy;
    [transposed enumerateTargetsBySourceWithBlock:v16];
  }
}

void __90__PGExcitingMomentsMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 featureNodeCollection];
  v9 = [v7 featureNodeCollection];

  v10 = [v8 collectionByFormingUnionWith:v9];

  (*(*(a1 + 40) + 16))();
}

- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type
{
  v12 = *MEMORY[0x277D85DE8];
  if (type == 1)
  {
    return 2005;
  }

  typeCopy = type;
  if (type == 3)
  {
    return 2006;
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

- (PGExcitingMomentsMemoryGenerator)initWithMemoryGenerationContext:(id)context
{
  v12.receiver = self;
  v12.super_class = PGExcitingMomentsMemoryGenerator;
  v3 = [(PGMemoryGenerator *)&v12 initWithMemoryGenerationContext:context];
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

    [(PGOverTimeMemoryConfiguration *)v4->_overTheYearsConfiguration setMinimumNumberOfRelevantAssets:15];
    v9 = +[PGFeaturedTimePeriodMemoryConfiguration strictDefaultFeaturedYearMemoryConfiguration];
    featuredYearConfiguration = v4->_featuredYearConfiguration;
    v4->_featuredYearConfiguration = v9;

    [(PGOverTimeMemoryConfiguration *)v4->_featuredYearConfiguration setMinimumNumberOfRelevantAssets:15];
    v4->_intersectRelevantAssetsForFeatures = 1;
  }

  return v4;
}

@end