@interface PGSeasonMemoryGenerator
+ (void)enumerateMomentNodesBySeasonInYearFromMomentNodes:(id)nodes loggingConnection:(id)connection usingBlock:(id)block;
- (PGSeasonMemoryGenerator)initWithMemoryGenerationContext:(id)context;
- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)memory inGraph:(id)graph;
- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph;
- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type;
- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block;
@end

@implementation PGSeasonMemoryGenerator

- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph
{
  v23 = *MEMORY[0x277D85DE8];
  memoryCopy = memory;
  contextCopy = context;
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];
  v13 = [(PGGraphNodeCollection *)PGGraphSeasonNodeCollection subsetInCollection:memoryFeatureNodes];

  if ([v13 count] == 1)
  {
    anyNode = [v13 anyNode];
    name = [anyNode name];

    v16 = [PGSeasonMemoryTitleGenerator alloc];
    memoryMomentNodes = [memoryCopy memoryMomentNodes];
    v18 = [memoryMomentNodes set];
    v19 = [(PGSeasonMemoryTitleGenerator *)v16 initWithMomentNodes:v18 seasonName:name titleGenerationContext:contextCopy];
  }

  else
  {
    loggingConnection = [(PGMemoryGenerator *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      v22[0] = 67109120;
      v22[1] = [v13 count];
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGSeasonMemoryGenerator] One season node expected, found %d", v22, 8u);
    }

    v19 = 0;
  }

  return v19;
}

- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)memory inGraph:(id)graph
{
  v6.receiver = self;
  v6.super_class = PGSeasonMemoryGenerator;
  v4 = [(PGMemoryGenerator *)&v6 keyAssetCurationOptionsWithTriggeredMemory:memory inGraph:graph];
  [v4 setPrefilterAssetsWithFacesThreshold:2.22507386e-308];

  return v4;
}

- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block
{
  blockCopy = block;
  graphCopy = graph;
  v7 = [(PGGraphNodeCollection *)PGGraphMomentNodeCollection nodesInGraph:graphCopy];
  meNodeCollection = [graphCopy meNodeCollection];
  homeOrWorkNodes = [meNodeCollection homeOrWorkNodes];
  addressNodes = [homeOrWorkNodes addressNodes];
  momentNodes = [addressNodes momentNodes];
  v12 = [v7 collectionBySubtracting:momentNodes];

  v13 = [(PGGraphNodeCollection *)PGGraphMeaningNodeCollection nodesInGraph:graphCopy];
  momentNodes2 = [v13 momentNodes];
  v15 = [v12 collectionByFormingUnionWith:momentNodes2];

  v17 = 0;
  v16 = [(MAElementCollection *)[PGGraphFeatureNodeCollection alloc] initWithGraph:graphCopy];

  blockCopy[2](blockCopy, v15, v16, &v17);
}

- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type
{
  v12 = *MEMORY[0x277D85DE8];
  if (type == 2)
  {
    return 14001;
  }

  typeCopy = type;
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

- (PGSeasonMemoryGenerator)initWithMemoryGenerationContext:(id)context
{
  v10.receiver = self;
  v10.super_class = PGSeasonMemoryGenerator;
  v3 = [(PGMemoryGenerator *)&v10 initWithMemoryGenerationContext:context];
  v4 = v3;
  if (v3)
  {
    v3->_requireSceneProcessingMeetsThresholdOverTime = 1;
    v3->_requireFaceProcessingMeetsThresholdOverTime = 0;
    v5 = objc_alloc_init(PGMemoryMomentRequirements);
    momentRequirements = v4->_momentRequirements;
    v4->_momentRequirements = v5;

    [(PGMemoryMomentRequirements *)v4->_momentRequirements setFilterUninterestingForMemories:1];
    [(PGMemoryMomentRequirements *)v4->_momentRequirements setMinimumNumberOfPersons:1];
    [(PGMemoryMomentRequirements *)v4->_momentRequirements setAboveContentScoreThreshold:0.5];
    [(PGMemoryMomentRequirements *)v4->_momentRequirements setFilterMomentsWithNotEnoughScenesProcessed:1];
    v7 = objc_alloc_init(PGFeaturedTimePeriodMemoryConfiguration);
    featuredSeasonConfiguration = v4->_featuredSeasonConfiguration;
    v4->_featuredSeasonConfiguration = v7;

    [(PGOverTimeMemoryConfiguration *)v4->_featuredSeasonConfiguration setMinimumNumberOfMoments:6];
    [(PGOverTimeMemoryConfiguration *)v4->_featuredSeasonConfiguration setMinimumNumberOfAssetsInExtendedCuration:13];
    [(PGOverTimeMemoryConfiguration *)v4->_featuredSeasonConfiguration setAboveMomentAverageContentScoreThreshold:0.5];
  }

  return v4;
}

+ (void)enumerateMomentNodesBySeasonInYearFromMomentNodes:(id)nodes loggingConnection:(id)connection usingBlock:(id)block
{
  v29[2] = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  connectionCopy = connection;
  blockCopy = block;
  if ([MEMORY[0x277D27690] currentLocaleSupportsSeasons])
  {
    graph = [nodesCopy graph];
    v11 = MEMORY[0x277D22C90];
    v12 = +[PGGraphMomentNode dateOfMoment];
    v29[0] = v12;
    v13 = +[PGGraphDateNode seasonOfDate];
    v29[1] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
    v15 = [v11 chain:v14];

    v16 = [MEMORY[0x277D22BF8] adjacencyWithSources:nodesCopy relation:v15 targetsClass:objc_opt_class()];
    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __106__PGSeasonMemoryGenerator_enumerateMomentNodesBySeasonInYearFromMomentNodes_loggingConnection_usingBlock___block_invoke;
    v26[3] = &unk_2788898A0;
    v18 = v17;
    v27 = v18;
    [nodesCopy enumerateUniversalStartDatesUsingBlock:v26];
    transposed = [v16 transposed];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __106__PGSeasonMemoryGenerator_enumerateMomentNodesBySeasonInYearFromMomentNodes_loggingConnection_usingBlock___block_invoke_2;
    v22[3] = &unk_278887228;
    v23 = v18;
    v24 = graph;
    v25 = blockCopy;
    v20 = graph;
    v21 = v18;
    [transposed enumerateTargetsBySourceWithBlock:v22];
  }

  else if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, connectionCopy, OS_LOG_TYPE_INFO, "[PGSeasonMemoryGenerator] Current locale does not support seasons, not generating season based memories.", buf, 2u);
  }
}

void __106__PGSeasonMemoryGenerator_enumerateMomentNodesBySeasonInYearFromMomentNodes_loggingConnection_usingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CCABB0];
  v6 = a3;
  v7 = [v5 numberWithUnsignedInteger:a2];
  [v4 setObject:v6 forKeyedSubscript:v7];
}

void __106__PGSeasonMemoryGenerator_enumerateMomentNodesBySeasonInYearFromMomentNodes_loggingConnection_usingBlock___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v64 = *MEMORY[0x277D85DE8];
  v46 = a2;
  v7 = a3;
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v41 = v7;
  v9 = [v7 elementIdentifiers];
  v10 = [v9 indexArray];

  v11 = [v10 countByEnumeratingWithState:&v57 objects:v63 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v58;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v58 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v57 + 1) + 8 * i);
        v16 = [*(a1 + 32) objectForKeyedSubscript:v15];
        [v8 setObject:v16 forKeyedSubscript:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v57 objects:v63 count:16];
    }

    while (v12);
  }

  v17 = [v8 keysSortedByValueUsingSelector:sel_compare_];
  v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = objc_alloc_init(MEMORY[0x277D22BD0]);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v17;
  v19 = [obj countByEnumeratingWithState:&v53 objects:v62 count:16];
  v48 = a4;
  if (v19)
  {
    v20 = v19;
    v21 = 0;
    v22 = *v54;
LABEL_10:
    v23 = 0;
    while (1)
    {
      v24 = v21;
      if (*v54 != v22)
      {
        objc_enumerationMutation(obj);
      }

      if (*a4)
      {
        break;
      }

      v25 = *(*(&v53 + 1) + 8 * v23);
      v26 = [v25 unsignedIntegerValue];
      v27 = [*(a1 + 32) objectForKeyedSubscript:v25];
      v21 = v27;
      if (v24)
      {
        [v27 timeIntervalSinceDate:v24];
        if (v28 > 10368000.0)
        {
          [v43 addObject:v18];
          v29 = objc_alloc_init(MEMORY[0x277D22BD0]);

          v18 = v29;
          a4 = v48;
        }
      }

      [v18 addIdentifier:v26];

      if (v20 == ++v23)
      {
        v20 = [obj countByEnumeratingWithState:&v53 objects:v62 count:16];
        if (v20)
        {
          goto LABEL_10;
        }

        break;
      }
    }
  }

  else
  {
    v21 = 0;
  }

  if ((*a4 & 1) == 0)
  {
    if ([v18 count])
    {
      [v43 addObject:v18];
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v42 = v43;
    v45 = [v42 countByEnumeratingWithState:&v49 objects:v61 count:16];
    if (v45)
    {
      v44 = *v50;
LABEL_27:
      v30 = 0;
      while (1)
      {
        if (*v50 != v44)
        {
          objc_enumerationMutation(v42);
        }

        if (*a4)
        {
          break;
        }

        v31 = *(*(&v49 + 1) + 8 * v30);
        v32 = [PGGraphMomentNodeCollection alloc];
        v33 = *(a1 + 40);
        v34 = [objc_alloc(MEMORY[0x277D22BB0]) initWithElementIdentifier:{objc_msgSend(v31, "firstElement")}];
        v35 = [(MAElementCollection *)v32 initWithGraph:v33 elementIdentifiers:v34];

        v36 = [(PGGraphMomentNodeCollection *)v35 localStartDates];
        v37 = [v36 anyObject];

        v38 = [MEMORY[0x277D27690] yearFromDate:v37];
        if ([MEMORY[0x277D27690] monthFromDate:v37] == 12)
        {
          ++v38;
        }

        v39 = [(MAElementCollection *)[PGGraphMomentNodeCollection alloc] initWithGraph:*(a1 + 40) elementIdentifiers:v31];
        v40 = [PGGraphYearNodeCollection yearNodesForYear:v38 inGraph:*(a1 + 40)];
        (*(*(a1 + 48) + 16))();

        a4 = v48;
        if (v45 == ++v30)
        {
          v45 = [v42 countByEnumeratingWithState:&v49 objects:v61 count:16];
          if (v45)
          {
            goto LABEL_27;
          }

          break;
        }
      }
    }
  }
}

@end