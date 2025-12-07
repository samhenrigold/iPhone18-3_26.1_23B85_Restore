@interface PGTrendsMemoryGenerator
+ (id)allTrendSceneFeatureLabels;
+ (id)trendsConfigurations;
- (PGTrendsMemoryGenerator)initWithMemoryGenerationContext:(id)context configurations:(id)configurations;
- (id)_trendSceneFeatureLabelsToRequireKnownPeopleInCuration;
- (id)allTrendSceneFeatureNodesInGraph:(id)graph;
- (id)curationOptionsWithRequiredAssetUUIDs:(id)ds eligibleAssetUUIDs:(id)iDs triggeredMemory:(id)memory;
- (id)filteredMomentNodes:(id)nodes withSceneLabel:(id)label inGraph:(id)graph;
- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)memory inGraph:(id)graph;
- (id)relevantFeederForTriggeredMemory:(id)memory inGraph:(id)graph allowGuestAsset:(BOOL)asset progressReporter:(id)reporter;
- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph;
- (id)validSceneFeatureNodesInGraph:(id)graph;
- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type;
- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block;
@end

@implementation PGTrendsMemoryGenerator

- (id)_trendSceneFeatureLabelsToRequireKnownPeopleInCuration
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBEB98]);
  v6[0] = @"Table";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v4 = [v2 initWithArray:v3];

  return v4;
}

- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph
{
  contextCopy = context;
  graphCopy = graph;
  memoryCopy = memory;
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];
  memoryMomentNodes = [memoryCopy memoryMomentNodes];

  temporarySet = [memoryMomentNodes temporarySet];

  v17 = [(PGGraphNodeCollection *)PGGraphSceneFeatureNodeCollection subsetInCollection:memoryFeatureNodes];
  v18 = [(PGTrendsMemoryGenerator *)self allTrendSceneFeatureNodesInGraph:graphCopy];

  v19 = [v17 collectionByIntersecting:v18];

  if ([v19 count] == 1)
  {
    labels = [v19 labels];
    anyObject = [labels anyObject];

    v22 = objc_alloc_init(PGTimeTitleOptions);
    [(PGTimeTitleOptions *)v22 setMomentNodes:temporarySet];
    [(PGTimeTitleOptions *)v22 setAllowedFormats:20];
    v23 = [(PGGraphNodeCollection *)PGGraphYearNodeCollection subsetInCollection:memoryFeatureNodes];
    if ([v23 count] == 1)
    {
      [(PGTimeTitleOptions *)v22 setFeaturedYearNodes:v23];
    }

    v37 = v23;
    v24 = [(PGGraphNodeCollection *)PGGraphOverTheYearsNodeCollection subsetInCollection:memoryFeatureNodes];
    -[PGTimeTitleOptions setFilterForSignificantDateNodes:](v22, "setFilterForSignificantDateNodes:", [v24 count] == 0);
    v25 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:memoryFeatureNodes];
    if ([v25 count])
    {
      v26 = [PGTrendsMemoryTitleGenerator alloc];
      anyNode = [v25 anyNode];
      v28 = [(PGTrendsMemoryTitleGenerator *)v26 initWithMomentNodes:temporarySet sceneFeatureLabel:anyObject personNode:anyNode titleGenerationContext:contextCopy timeTitleOptions:v22];
    }

    else
    {
      v36 = contextCopy;
      anyNode = [(PGGraphNodeCollection *)PGGraphLocationCityNodeCollection subsetInCollection:memoryFeatureNodes];
      v30 = [anyNode count];
      v31 = [PGTrendsMemoryTitleGenerator alloc];
      v32 = v31;
      if (v30)
      {
        [anyNode anyNode];
        v33 = v35 = temporarySet;
        contextCopy = v36;
        v29 = [(PGTrendsMemoryTitleGenerator *)v32 initWithMomentNodes:v35 sceneFeatureLabel:anyObject cityNode:v33 titleGenerationContext:v36 timeTitleOptions:v22];

        temporarySet = v35;
        goto LABEL_12;
      }

      contextCopy = v36;
      v28 = [(PGTrendsMemoryTitleGenerator *)v31 initWithMomentNodes:temporarySet sceneFeatureLabel:anyObject titleGenerationContext:v36 timeTitleOptions:v22];
    }

    v29 = v28;
LABEL_12:

    goto LABEL_13;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to generate Trends title because sceneFeatureNodeCollection count is not equal to 1", buf, 2u);
  }

  v29 = 0;
LABEL_13:

  return v29;
}

- (id)allTrendSceneFeatureNodesInGraph:(id)graph
{
  v33 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  allTrendsSceneFeatureNodesInGraph = self->_allTrendsSceneFeatureNodesInGraph;
  if (!allTrendsSceneFeatureNodesInGraph)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v7 = +[PGTrendsMemoryGenerator trendsConfigurations];
    v8 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v28;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(v7);
          }

          featureLabel = [*(*(&v27 + 1) + 8 * i) featureLabel];
          [v6 addObject:featureLabel];
        }

        v9 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v9);
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = +[PGCLIPTrendsMemoryGenerator CLIPTrendsConfigurations];
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          featureLabel2 = [*(*(&v23 + 1) + 8 * j) featureLabel];
          [v6 addObject:featureLabel2];
        }

        v15 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v15);
    }

    if ([v6 count])
    {
      v19 = [PGGraphSceneFeatureNodeCollection sceneFeatureNodesForSceneNames:v6 inGraph:graphCopy];
    }

    else
    {
      v19 = [(MAElementCollection *)[PGGraphSceneFeatureNodeCollection alloc] initWithGraph:graphCopy];
    }

    v20 = self->_allTrendsSceneFeatureNodesInGraph;
    self->_allTrendsSceneFeatureNodesInGraph = v19;

    allTrendsSceneFeatureNodesInGraph = self->_allTrendsSceneFeatureNodesInGraph;
  }

  v21 = allTrendsSceneFeatureNodesInGraph;

  return allTrendsSceneFeatureNodesInGraph;
}

- (id)relevantFeederForTriggeredMemory:(id)memory inGraph:(id)graph allowGuestAsset:(BOOL)asset progressReporter:(id)reporter
{
  assetCopy = asset;
  v97 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  memoryCopy = memory;
  memoryCurationSession = [(PGMemoryGenerator *)self memoryCurationSession];
  curationManager = [memoryCurationSession curationManager];

  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];
  v14 = [(PGGraphNodeCollection *)PGGraphSceneFeatureNodeCollection subsetInCollection:memoryFeatureNodes];
  memoryMomentNodes = [memoryCopy memoryMomentNodes];

  v16 = [(PGGraphEdgeCollection *)PGGraphMomentFeaturesEdgeCollection edgesFromNodes:memoryMomentNodes toNodes:v14];
  if ([v16 count])
  {
    v89 = curationManager;
    v86 = graphCopy;
    v87 = v16;
    allRelevantAssetLocalIdentifiers = [v16 allRelevantAssetLocalIdentifiers];
    v18 = [allRelevantAssetLocalIdentifiers mutableCopy];

    _trendSceneFeatureLabelsToRequireKnownPeopleInCuration = [(PGTrendsMemoryGenerator *)self _trendSceneFeatureLabelsToRequireKnownPeopleInCuration];
    v85 = v14;
    labels = [v14 labels];
    v21 = [_trendSceneFeatureLabelsToRequireKnownPeopleInCuration intersectsSet:labels];

    if (v21)
    {
      graph = [memoryMomentNodes graph];
      v23 = [PGGraphPersonNodeCollection personNodesIncludingMeInGraph:graph];

      v24 = [(PGGraphEdgeCollection *)PGGraphMomentFeaturesEdgeCollection edgesFromNodes:memoryMomentNodes toNodes:v23];
      allRelevantAssetLocalIdentifiers2 = [v24 allRelevantAssetLocalIdentifiers];
      [v18 intersectSet:allRelevantAssetLocalIdentifiers2];
    }

    curationManager = v89;
    defaultAssetFetchOptionsForMemories = [v89 defaultAssetFetchOptionsForMemories];
    [defaultAssetFetchOptionsForMemories setIncludeGuestAssets:assetCopy];
    v27 = MEMORY[0x277CD97A8];
    v28 = v18;
    allObjects = [v18 allObjects];
    v84 = defaultAssetFetchOptionsForMemories;
    v30 = [v27 fetchAssetsWithLocalIdentifiers:allObjects options:defaultAssetFetchOptionsForMemories];

    v31 = MEMORY[0x277CD97A8];
    memoryCurationSession2 = [(PGMemoryGenerator *)self memoryCurationSession];
    curationContext = [memoryCurationSession2 curationContext];
    v34 = [v31 clsAllAssetsFromFetchResult:v30 prefetchOptions:20 curationContext:curationContext];

    v35 = [(PGGraphNodeCollection *)PGGraphLocationCityNodeCollection subsetInCollection:memoryFeatureNodes];
    v36 = [v35 count];
    v37 = MEMORY[0x277CBEB98];
    v82 = v35;
    v83 = v34;
    if (v36)
    {
      v38 = [PGCurationManager filterAssets:v34 inMomentNodes:memoryMomentNodes forCityNodes:v35 withMaximumDistance:5000.0];
      v39 = [v37 setWithArray:v38];
    }

    else
    {
      v39 = [MEMORY[0x277CBEB98] setWithArray:v34];
    }

    v42 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:memoryFeatureNodes];
    v43 = [v42 count];
    loggingConnection4 = v28;
    v88 = v30;
    v81 = v42;
    if (!v43)
    {
LABEL_31:
      v67 = objc_alloc(MEMORY[0x277CD98D0]);
      v90 = v39;
      allObjects2 = [v39 allObjects];
      photoLibrary = [v30 photoLibrary];
      fetchType = [v30 fetchType];
      fetchPropertySets = [v30 fetchPropertySets];
      loggingConnection3 = [v67 initWithObjects:allObjects2 photoLibrary:photoLibrary fetchType:fetchType fetchPropertySets:fetchPropertySets identifier:0 registerIfNeeded:0];

      memoryCurationSession3 = [(PGMemoryGenerator *)self memoryCurationSession];
      graphCopy = v86;
      v41 = [PGMemoryGenerationHelper feederForMemoriesWithAssetFetchResult:loggingConnection3 memoryCurationSession:memoryCurationSession3 graph:v86];

      curationManager = v89;
      goto LABEL_32;
    }

    v44 = v43;
    v90 = v39;
    if (v43 == 1)
    {
      loggingConnection3 = [(PGGraphEdgeCollection *)PGGraphMomentFeaturesEdgeCollection edgesFromNodes:memoryMomentNodes toNodes:v42];
      if ([loggingConnection3 count])
      {
        allRelevantAssetLocalIdentifiers3 = [loggingConnection3 allRelevantAssetLocalIdentifiers];
        v47 = [loggingConnection4 mutableCopy];
        [v47 intersectSet:allRelevantAssetLocalIdentifiers3];
        v48 = MEMORY[0x277CCAC30];
        v93[0] = MEMORY[0x277D85DD0];
        v93[1] = 3221225472;
        v93[2] = __101__PGTrendsMemoryGenerator_relevantFeederForTriggeredMemory_inGraph_allowGuestAsset_progressReporter___block_invoke;
        v93[3] = &unk_2788894C0;
        v79 = v47;
        v94 = v79;
        v49 = [v48 predicateWithBlock:v93];
        v50 = [v90 filteredSetUsingPredicate:v49];

        v80 = v50;
        if ([v50 count] < 3)
        {
          v64 = v50;

          v90 = v64;
          v16 = v87;
        }

        else
        {
          v51 = [loggingConnection4 mutableCopy];
          v78 = allRelevantAssetLocalIdentifiers3;
          [v51 minusSet:allRelevantAssetLocalIdentifiers3];
          v52 = MEMORY[0x277CCAC30];
          v91[0] = MEMORY[0x277D85DD0];
          v91[1] = 3221225472;
          v91[2] = __101__PGTrendsMemoryGenerator_relevantFeederForTriggeredMemory_inGraph_allowGuestAsset_progressReporter___block_invoke_2;
          v91[3] = &unk_2788894C0;
          v77 = v51;
          v92 = v77;
          v53 = [v52 predicateWithBlock:v91];
          v54 = [v90 filteredSetUsingPredicate:v53];

          v55 = [objc_alloc(MEMORY[0x277D3C7B8]) initForSceneNetOnly:1];
          v56 = [PGSceneAssetFilter alloc];
          v75 = v55;
          v57 = [(PGSceneAssetFilter *)v56 initWithPositiveScenes:MEMORY[0x277CBEBF8] negativeScenes:&unk_284485AC0 sceneTaxonomy:v55];
          v76 = v54;
          if (v57)
          {
            allObjects3 = [v54 allObjects];
            v59 = [(PGSceneAssetFilter *)v57 filteredAssetsFromAssets:allObjects3];

            v60 = [v80 setByAddingObjectsFromArray:v59];

            v61 = v59;
            v90 = v60;
            v62 = v76;
            v16 = v87;
          }

          else
          {
            loggingConnection = [(PGMemoryGenerator *)self loggingConnection];
            v16 = v87;
            if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGTrendsMemoryGenerator] No-people scene asset filter is invalid, disabling", buf, 2u);
            }

            v61 = loggingConnection;
            v62 = v76;
            v57 = 0;
          }

          if (!v57)
          {
            v66 = 0;
            allRelevantAssetLocalIdentifiers3 = v78;
            goto LABEL_29;
          }

          allRelevantAssetLocalIdentifiers3 = v78;
        }

        v66 = 1;
LABEL_29:

        if (!v66)
        {
          v41 = 0;
          v14 = v85;
          graphCopy = v86;
          v73 = v83;
          goto LABEL_33;
        }

        v39 = v90;
        goto LABEL_31;
      }

      loggingConnection2 = [(PGMemoryGenerator *)self loggingConnection];
      if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "[PGTrendsMemoryGenerator] No person moment feature edges found", buf, 2u);
      }
    }

    else
    {
      loggingConnection3 = [(PGMemoryGenerator *)self loggingConnection];
      if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v96 = v44;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_ERROR, "[PGTrendsMemoryGenerator] One featured person node expected, found %d", buf, 8u);
      }
    }

    v41 = 0;
    graphCopy = v86;
LABEL_32:
    v16 = v87;
    v73 = v83;

    v14 = v85;
LABEL_33:

    goto LABEL_34;
  }

  loggingConnection4 = [(PGMemoryGenerator *)self loggingConnection];
  if (os_log_type_enabled(loggingConnection4, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_22F0FC000, loggingConnection4, OS_LOG_TYPE_ERROR, "[PGTrendsMemoryGenerator] No scene moment feature edges found", buf, 2u);
  }

  v41 = 0;
LABEL_34:

  return v41;
}

uint64_t __101__PGTrendsMemoryGenerator_relevantFeederForTriggeredMemory_inGraph_allowGuestAsset_progressReporter___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 localIdentifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

uint64_t __101__PGTrendsMemoryGenerator_relevantFeederForTriggeredMemory_inGraph_allowGuestAsset_progressReporter___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 localIdentifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (id)curationOptionsWithRequiredAssetUUIDs:(id)ds eligibleAssetUUIDs:(id)iDs triggeredMemory:(id)memory
{
  v7.receiver = self;
  v7.super_class = PGTrendsMemoryGenerator;
  v5 = [(PGMemoryGenerator *)&v7 curationOptionsWithRequiredAssetUUIDs:ds eligibleAssetUUIDs:iDs triggeredMemory:memory];
  [v5 setMinimumNumberOfItems:15];
  [v5 setFailIfMinimumDurationNotReached:1];

  return v5;
}

- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)memory inGraph:(id)graph
{
  v11.receiver = self;
  v11.super_class = PGTrendsMemoryGenerator;
  memoryCopy = memory;
  v6 = [(PGMemoryGenerator *)&v11 keyAssetCurationOptionsWithTriggeredMemory:memoryCopy inGraph:graph];
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];

  v8 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:memoryFeatureNodes];

  if ([v8 count])
  {
    localIdentifiers = [v8 localIdentifiers];
    [v6 setReferencePersonLocalIdentifiers:localIdentifiers];

    [v6 setMinimumNumberOfReferencePersons:0];
  }

  return v6;
}

- (id)filteredMomentNodes:(id)nodes withSceneLabel:(id)label inGraph:(id)graph
{
  v23[1] = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  labelCopy = label;
  graphCopy = graph;
  if ([labelCopy isEqualToString:@"Snow"])
  {
    winterSportMomentNodes = self->_winterSportMomentNodes;
    if (!winterSportMomentNodes)
    {
      v23[0] = @"WinterSport";
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
      v13 = [PGGraphMeaningNodeCollection meaningNodesWithMeaningLabels:v12 inGraph:graphCopy];

      momentNodes = [v13 momentNodes];
      v15 = self->_winterSportMomentNodes;
      self->_winterSportMomentNodes = momentNodes;

      winterSportMomentNodes = self->_winterSportMomentNodes;
    }

    v16 = [nodesCopy collectionBySubtracting:winterSportMomentNodes];

    nodesCopy = v16;
  }

  if ([labelCopy isEqualToString:@"Cooking"])
  {
    restaurantMomentNodes = self->_restaurantMomentNodes;
    if (!restaurantMomentNodes)
    {
      v18 = [PGGraphBusinessNodeCollection restaurantBusinessNodesInGraph:graphCopy];
      momentNodes2 = [v18 momentNodes];
      v20 = self->_restaurantMomentNodes;
      self->_restaurantMomentNodes = momentNodes2;

      restaurantMomentNodes = self->_restaurantMomentNodes;
    }

    v21 = [nodesCopy collectionBySubtracting:restaurantMomentNodes];

    nodesCopy = v21;
  }

  return nodesCopy;
}

- (id)validSceneFeatureNodesInGraph:(id)graph
{
  v25 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  configurations = [(PGTrendsMemoryGenerator *)self configurations];
  v6 = [configurations countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(configurations);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        featureLabel = [v10 featureLabel];
        if (featureLabel)
        {
          validTrendTypes = [v10 validTrendTypes];
          trendType = [(PGTrendsMemoryGenerator *)self trendType];
          v14 = [validTrendTypes containsObject:trendType];

          if (v14)
          {
            [v4 addObject:featureLabel];
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[PGTrendsMemoryGenerator] sceneFeatureLabel should not be nil", buf, 2u);
        }
      }

      v7 = [configurations countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    v15 = [PGGraphSceneFeatureNodeCollection sceneFeatureNodesForSceneNames:v4 inGraph:graphCopy];
  }

  else
  {
    v15 = [(MAElementCollection *)[PGGraphSceneFeatureNodeCollection alloc] initWithGraph:graphCopy];
  }

  v16 = v15;

  return v16;
}

- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block
{
  graphCopy = graph;
  blockCopy = block;
  v8 = [(PGTrendsMemoryGenerator *)self validSceneFeatureNodesInGraph:graphCopy];
  if ([v8 count])
  {
    v9 = MEMORY[0x277D22BF8];
    v10 = +[PGGraphFeatureNodeCollection momentOfFeature];
    v11 = [v9 adjacencyWithSources:v8 relation:v10 targetsClass:objc_opt_class()];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __81__PGTrendsMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke;
    v12[3] = &unk_278889518;
    v12[4] = self;
    v13 = graphCopy;
    v14 = blockCopy;
    [v11 enumerateTargetsBySourceWithBlock:v12];
  }
}

void __81__PGTrendsMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a1[4];
  v8 = a3;
  v9 = a2;
  v10 = [v9 labels];
  v11 = [v10 anyObject];
  v14 = [v7 filteredMomentNodes:v8 withSceneLabel:v11 inGraph:a1[5]];

  v12 = a1[6];
  v13 = [v9 featureNodeCollection];

  (*(v12 + 16))(v12, v14, v13, a4);
}

- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type
{
  v12 = *MEMORY[0x277D85DE8];
  if (type == 1)
  {
    return 16001;
  }

  typeCopy = type;
  if (type == 3)
  {
    return 16002;
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

- (PGTrendsMemoryGenerator)initWithMemoryGenerationContext:(id)context configurations:(id)configurations
{
  configurationsCopy = configurations;
  v21.receiver = self;
  v21.super_class = PGTrendsMemoryGenerator;
  v8 = [(PGMemoryGenerator *)&v21 initWithMemoryGenerationContext:context];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_configurations, configurations);
    v9->_requireSceneProcessingMeetsThresholdOverTime = 1;
    v9->_requireFaceProcessingMeetsThresholdOverTime = 0;
    v10 = objc_alloc_init(PGMemoryMomentRequirements);
    momentRequirements = v9->_momentRequirements;
    v9->_momentRequirements = v10;

    [(PGMemoryMomentRequirements *)v9->_momentRequirements setMinimumNumberOfRelevantAssets:2];
    [(PGMemoryMomentRequirements *)v9->_momentRequirements setFilterMomentsWithNotEnoughScenesProcessed:1];
    v12 = +[PGOverTheYearsMemoryConfiguration strictDefaultOverTheYearsMemoryConfiguration];
    overTheYearsConfiguration = v9->_overTheYearsConfiguration;
    v9->_overTheYearsConfiguration = v12;

    [(PGOverTimeMemoryConfiguration *)v9->_overTheYearsConfiguration setMinimumNumberOfMoments:5];
    [(PGOverTimeMemoryConfiguration *)v9->_overTheYearsConfiguration setMinimumNumberOfRelevantAssets:15];
    v14 = +[PGFeaturedTimePeriodMemoryConfiguration strictDefaultFeaturedYearMemoryConfiguration];
    featuredYearConfiguration = v9->_featuredYearConfiguration;
    v9->_featuredYearConfiguration = v14;

    [(PGOverTimeMemoryConfiguration *)v9->_featuredYearConfiguration setMinimumNumberOfRelevantAssets:15];
    v16 = +[PGFeaturedTimePeriodMemoryConfiguration defaultFallbackFeaturedYearMemoryConfiguration];
    fallbackFeaturedYearConfiguration = v9->_fallbackFeaturedYearConfiguration;
    v9->_fallbackFeaturedYearConfiguration = v16;

    v18 = +[PGOverTheYearsMemoryConfiguration defaultFallbackOverTheYearsMemoryConfiguration];
    fallbackOverTheYearsConfiguration = v9->_fallbackOverTheYearsConfiguration;
    v9->_fallbackOverTheYearsConfiguration = v18;

    v9->_minimumNumberOfDefaultMemories = 3;
  }

  return v9;
}

+ (id)allTrendSceneFeatureLabels
{
  v4[13] = *MEMORY[0x277D85DE8];
  v4[0] = @"Cityscape";
  v4[1] = @"Coffee";
  v4[2] = @"Forest";
  v4[3] = @"Rainbow";
  v4[4] = @"Snow";
  v4[5] = @"SunriseSunset";
  v4[6] = @"Waterfall";
  v4[7] = @"Biking";
  v4[8] = @"Table";
  v4[9] = @"Cooking";
  v4[10] = @"SpringBloom";
  v4[11] = @"AutumnFoliage";
  v4[12] = @"PlayTime";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:13];

  return v2;
}

+ (id)trendsConfigurations
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = trendsConfigurations__trendsConfigurations;
  if (!trendsConfigurations__trendsConfigurations)
  {
    v19 = objc_alloc_init(PGRemoteConfiguration);
    v3 = [(PGRemoteConfiguration *)v19 dictionaryValueForKey:@"com.apple.photos.memories.trendsmemory.trendsscenes" withFallbackValue:MEMORY[0x277CBEC10]];
    if (![v3 count])
    {
      v4 = +[PGLogging sharedLogging];
      loggingConnection = [v4 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v27 = @"com.apple.photos.memories.trendsmemory.trendsscenes";
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "PGTrendsMemoryGenerator: Couldn't load remote configuration dictionary from key: %@", buf, 0xCu);
      }
    }

    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        v11 = 0;
        do
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [v7 objectForKeyedSubscript:*(*(&v20 + 1) + 8 * v11)];
          v13 = [[PGDictionaryConfigurationSource alloc] initWithDictionary:v12];
          v14 = [PGTrendsConfiguration alloc];
          v24 = v13;
          v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
          v16 = [(PGConfiguration *)v14 initWithSources:v15 version:1.0];

          [v6 addObject:v16];
          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v9);
    }

    v17 = trendsConfigurations__trendsConfigurations;
    trendsConfigurations__trendsConfigurations = v6;

    v2 = trendsConfigurations__trendsConfigurations;
  }

  return v2;
}

@end