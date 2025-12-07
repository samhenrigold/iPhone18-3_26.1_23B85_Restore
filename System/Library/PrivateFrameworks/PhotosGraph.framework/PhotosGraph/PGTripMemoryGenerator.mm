@interface PGTripMemoryGenerator
- (id)curationOptionsWithRequiredAssetUUIDs:(id)ds eligibleAssetUUIDs:(id)iDs triggeredMemory:(id)memory;
- (id)featuredLocationOrAreaNodesByTripNodeForTripNodes:(id)nodes;
- (id)generatePotentialMemoriesForProcessingWindow:(id)window graph:(id)graph progressBlock:(id)block;
- (id)relevantFeederForTriggeredMemory:(id)memory inGraph:(id)graph allowGuestAsset:(BOOL)asset progressReporter:(id)reporter;
- (id)relevantKeyCurationFeederForTriggeredMemory:(id)memory inGraph:(id)graph allowGuestAsset:(BOOL)asset progressReporter:(id)reporter;
- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph;
@end

@implementation PGTripMemoryGenerator

- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph
{
  v23 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  memoryFeatureNodes = [memory memoryFeatureNodes];
  v12 = [(PGGraphNodeCollection *)PGGraphHighlightGroupNodeCollection subsetInCollection:memoryFeatureNodes];
  if ([v12 count] == 1)
  {
    loggingConnection3 = [(PGGraphNodeCollection *)PGGraphLocationNodeCollection subsetInCollection:memoryFeatureNodes];
    v14 = [(PGGraphNodeCollection *)PGGraphAreaNodeCollection subsetInCollection:memoryFeatureNodes];
    v15 = [loggingConnection3 count];
    if (v15 + [v14 count])
    {
      loggingConnection2 = [(PGGraphNodeCollection *)PGGraphHighlightTypeNodeCollection subsetInCollection:memoryFeatureNodes];
      if ([loggingConnection2 count])
      {
        labels = [loggingConnection2 labels];
        v19 = [labels containsObject:@"ShortTrip"];

        v17 = [[PGTripMemoryTitleGenerator alloc] initWithHighlightGroupNodeAsCollection:v12 type:v19 titleGenerationContext:contextCopy];
LABEL_14:

        goto LABEL_15;
      }

      loggingConnection = [(PGMemoryGenerator *)self loggingConnection];
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v22[0]) = 0;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGTripMemoryGenerator] No trip type nodes found", v22, 2u);
      }
    }

    else
    {
      loggingConnection2 = [(PGMemoryGenerator *)self loggingConnection];
      if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v22[0]) = 0;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "[PGTripMemoryGenerator] No location or area nodes found", v22, 2u);
      }
    }

    v17 = 0;
    goto LABEL_14;
  }

  loggingConnection3 = [(PGMemoryGenerator *)self loggingConnection];
  if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_ERROR))
  {
    v22[0] = 67109120;
    v22[1] = [v12 count];
    _os_log_error_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_ERROR, "[PGTripMemoryGenerator] One trip highlight group expected, found %d", v22, 8u);
  }

  v17 = 0;
LABEL_15:

  return v17;
}

- (id)relevantFeederForTriggeredMemory:(id)memory inGraph:(id)graph allowGuestAsset:(BOOL)asset progressReporter:(id)reporter
{
  assetCopy = asset;
  graphCopy = graph;
  v27.receiver = self;
  v27.super_class = PGTripMemoryGenerator;
  v11 = [(PGMemoryGenerator *)&v27 relevantFeederForTriggeredMemory:memory inGraph:graphCopy allowGuestAsset:assetCopy progressReporter:reporter];
  assetFetchResult = [v11 assetFetchResult];
  v13 = MEMORY[0x277CD97A8];
  memoryCurationSession = [(PGMemoryGenerator *)self memoryCurationSession];
  curationContext = [memoryCurationSession curationContext];
  v16 = [v13 clsAllAssetsFromFetchResult:assetFetchResult prefetchOptions:22 curationContext:curationContext];

  if ([v16 count] > 0xC)
  {
    v26 = [PGMemoryGeneratorUtils filterImportedAssetsWithoutLocationAndWithoutSceneOrPersonOverlapFromAllAssets:v16 withGraph:graphCopy];
    v18 = objc_alloc(MEMORY[0x277CD98D0]);
    allObjects = [v26 allObjects];
    photoLibrary = [assetFetchResult photoLibrary];
    fetchType = [assetFetchResult fetchType];
    fetchPropertySets = [assetFetchResult fetchPropertySets];
    v23 = [v18 initWithObjects:allObjects photoLibrary:photoLibrary fetchType:fetchType fetchPropertySets:fetchPropertySets identifier:0 registerIfNeeded:0];

    memoryCurationSession2 = [(PGMemoryGenerator *)self memoryCurationSession];
    v17 = [PGMemoryGenerationHelper feederForMemoriesWithAssetFetchResult:v23 memoryCurationSession:memoryCurationSession2 graph:graphCopy];
  }

  else
  {
    v17 = v11;
  }

  return v17;
}

- (id)curationOptionsWithRequiredAssetUUIDs:(id)ds eligibleAssetUUIDs:(id)iDs triggeredMemory:(id)memory
{
  v7.receiver = self;
  v7.super_class = PGTripMemoryGenerator;
  v5 = [(PGMemoryGenerator *)&v7 curationOptionsWithRequiredAssetUUIDs:ds eligibleAssetUUIDs:iDs triggeredMemory:memory];
  [v5 setLastPassMovieAdditionEnabled:1];

  return v5;
}

- (id)relevantKeyCurationFeederForTriggeredMemory:(id)memory inGraph:(id)graph allowGuestAsset:(BOOL)asset progressReporter:(id)reporter
{
  assetCopy = asset;
  v23 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  memoryFeatureNodes = [memory memoryFeatureNodes];
  v11 = [(PGGraphNodeCollection *)PGGraphHighlightGroupNodeCollection subsetInCollection:memoryFeatureNodes];

  if ([v11 count] == 1)
  {
    uuids = [v11 uuids];
    memoryCurationSession = [(PGMemoryGenerator *)self memoryCurationSession];
    curationManager = [memoryCurationSession curationManager];
    v15 = [PGMemoryGenerationHelper keyAssetFetchResultForHighlightGroupUUIDs:uuids curationManager:curationManager allowGuestAsset:assetCopy];

    if ([v15 count])
    {
      memoryCurationSession2 = [(PGMemoryGenerator *)self memoryCurationSession];
      v17 = [PGMemoryGenerationHelper feederForMemoriesWithAssetFetchResult:v15 memoryCurationSession:memoryCurationSession2 graph:graphCopy];
    }

    else
    {
      loggingConnection = [(PGMemoryGenerator *)self loggingConnection];
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        anyObject = [uuids anyObject];
        v21 = 138412290;
        v22 = anyObject;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGTripMemoryGenerator] No key asset found for trip %@", &v21, 0xCu);
      }

      v17 = 0;
    }
  }

  else
  {
    uuids = [(PGMemoryGenerator *)self loggingConnection];
    if (os_log_type_enabled(uuids, OS_LOG_TYPE_ERROR))
    {
      v21 = 67109120;
      LODWORD(v22) = [v11 count];
      _os_log_error_impl(&dword_22F0FC000, uuids, OS_LOG_TYPE_ERROR, "[PGTripMemoryGenerator] One trip highlight group expected, found %d", &v21, 8u);
    }

    v17 = 0;
  }

  return v17;
}

- (id)featuredLocationOrAreaNodesByTripNodeForTripNodes:(id)nodes
{
  v16[2] = *MEMORY[0x277D85DE8];
  featuredLocationOrAreaNodesByTripNode = self->_featuredLocationOrAreaNodesByTripNode;
  if (!featuredLocationOrAreaNodesByTripNode)
  {
    v5 = MEMORY[0x277D22C90];
    nodesCopy = nodes;
    v7 = +[PGGraphHighlightGroupNodeCollection locationFeatureOfHighlightGroup];
    v16[0] = v7;
    v8 = +[PGGraphHighlightGroupNodeCollection areaFeatureOfHighlightGroup];
    v16[1] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    v10 = [v5 union:v9];

    v11 = MEMORY[0x277D22BF8];
    v12 = objc_opt_self();
    v13 = [v11 adjacencyWithSources:nodesCopy relation:v10 targetsClass:v12];

    v14 = self->_featuredLocationOrAreaNodesByTripNode;
    self->_featuredLocationOrAreaNodesByTripNode = v13;

    featuredLocationOrAreaNodesByTripNode = self->_featuredLocationOrAreaNodesByTripNode;
  }

  return featuredLocationOrAreaNodesByTripNode;
}

- (id)generatePotentialMemoriesForProcessingWindow:(id)window graph:(id)graph progressBlock:(id)block
{
  v89 = *MEMORY[0x277D85DE8];
  windowCopy = window;
  graphCopy = graph;
  blockCopy = block;
  v55 = _Block_copy(blockCopy);
  v77 = 0;
  v78 = &v77;
  v79 = 0x2020000000;
  v80 = 0;
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v76 = 0;
  v54 = [objc_opt_class() tripTypeNodesInGraph:graphCopy];
  v9 = MEMORY[0x277D22BF8];
  v10 = +[PGGraphHighlightTypeNode highlightGroupOfType];
  v11 = objc_opt_self();
  v12 = [v9 adjacencyWithSources:v54 relation:v10 targetsClass:v11];
  transposed = [v12 transposed];

  sources = [transposed sources];
  if (windowCopy)
  {
    memoryGenerationContext = [(PGMemoryGenerator *)self memoryGenerationContext];
    v15 = [memoryGenerationContext momentNodesForProcessingWindow:windowCopy inGraph:graphCopy];

    highlightNodes = [v15 highlightNodes];
    highlightGroupNodes = [highlightNodes highlightGroupNodes];
    v18 = [sources collectionByIntersecting:highlightGroupNodes];

    sources = v18;
  }

  v19 = [sources count];
  if (v19)
  {
    v50 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v86 = 0;
    *&v87 = &v86;
    *(&v87 + 1) = 0x2020000000;
    v88 = 0;
    v20 = MEMORY[0x277D22C90];
    v21 = +[PGGraphHighlightGroupNode highlightOfHighlightGroup];
    v85[0] = v21;
    v22 = +[PGGraphHighlightNode momentInHighlight];
    v85[1] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:2];
    v52 = [v20 chain:v23];

    v24 = MEMORY[0x277D22BF8];
    v25 = objc_opt_self();
    v26 = [v24 adjacencyWithSources:sources relation:v52 targetsClass:v25];

    momentNodesWithBlockedFeatureCache = [(PGMemoryGenerator *)self momentNodesWithBlockedFeatureCache];
    momentNodesWithBlockedFeature = [momentNodesWithBlockedFeatureCache momentNodesWithBlockedFeature];

    memoryGenerationContext2 = [(PGMemoryGenerator *)self memoryGenerationContext];
    v29 = [memoryGenerationContext2 momentNodesAtSensitiveLocationsInGraph:graphCopy];

    v30 = [v26 subtractingTargetsWith:momentNodesWithBlockedFeature];

    v31 = [v30 subtractingTargetsWith:v29];

    v32 = [(PGTripMemoryGenerator *)self featuredLocationOrAreaNodesByTripNodeForTripNodes:sources];
    sources2 = [v32 sources];

    v34 = [v31 intersectingSourcesWith:sources2];

    memoryGenerationContext3 = [(PGMemoryGenerator *)self memoryGenerationContext];
    targets = [v34 targets];
    v37 = [memoryGenerationContext3 interestingWithAlternateJunkingSubsetFromMomentNodes:targets];

    sources3 = [v34 sources];
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __90__PGTripMemoryGenerator_generatePotentialMemoriesForProcessingWindow_graph_progressBlock___block_invoke;
    v59[3] = &unk_2788802F8;
    v68 = &v86;
    v71 = 1.0 / v19;
    v39 = v55;
    v67 = v39;
    v69 = &v73;
    v72 = 0x3F847AE147AE147BLL;
    v70 = &v77;
    v40 = v34;
    v60 = v40;
    selfCopy = self;
    v41 = v37;
    v62 = v41;
    v63 = transposed;
    v64 = graphCopy;
    v65 = sources;
    v42 = v50;
    v66 = v42;
    [sources3 enumerateUUIDs:v59];

    if (*(v78 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        buf = 67109378;
        v82 = 124;
        v83 = 2080;
        v84 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/Memory Generators/CurrentMemoryGenerators/TripMemoryGenerators/PGTripMemoryGenerator.m";
        v43 = MEMORY[0x277D86220];
LABEL_7:
        _os_log_impl(&dword_22F0FC000, v43, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
      }
    }

    else
    {
      if (!v39 || (Current = CFAbsoluteTimeGetCurrent(), Current - v74[3] < 0.01) || (v74[3] = Current, v58 = 0, (*(v39 + 2))(v39, &v58, 1.0), v48 = *(v78 + 24) | v58, *(v78 + 24) = v48, (v48 & 1) == 0))
      {
        v44 = v42;
        goto LABEL_21;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        buf = 67109378;
        v82 = 125;
        v83 = 2080;
        v84 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/Memory Generators/CurrentMemoryGenerators/TripMemoryGenerators/PGTripMemoryGenerator.m";
        v43 = MEMORY[0x277D86220];
        goto LABEL_7;
      }
    }

    v44 = MEMORY[0x277CBEBF8];
LABEL_21:

    _Block_object_dispose(&v86, 8);
    goto LABEL_22;
  }

  if (v55)
  {
    v45 = CFAbsoluteTimeGetCurrent();
    if (v45 - v74[3] >= 0.01)
    {
      v74[3] = v45;
      LOBYTE(buf) = 0;
      (*(v55 + 2))(v55, &buf, 1.0);
      v46 = *(v78 + 24) | buf;
      *(v78 + 24) = v46;
      if ((v46 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v86 = 0x4404000202;
        LOWORD(v87) = 2080;
        *(&v87 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/Memory Generators/CurrentMemoryGenerators/TripMemoryGenerators/PGTripMemoryGenerator.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v86, 0x12u);
      }
    }
  }

  v44 = MEMORY[0x277CBEBF8];
LABEL_22:

  _Block_object_dispose(&v73, 8);
  _Block_object_dispose(&v77, 8);

  return v44;
}

void __90__PGTripMemoryGenerator_generatePotentialMemoriesForProcessingWindow_graph_progressBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = a3;
  *(*(*(a1 + 96) + 8) + 24) = *(a1 + 120) + *(*(*(a1 + 96) + 8) + 24);
  if (!*(a1 + 88) || (Current = CFAbsoluteTimeGetCurrent(), v9 = *(*(a1 + 104) + 8), Current - *(v9 + 24) < *(a1 + 128)) || (*(v9 + 24) = Current, LOBYTE(v38) = 0, (*(*(a1 + 88) + 16))(*(*(*(a1 + 96) + 8) + 24)), *(*(*(a1 + 112) + 8) + 24) = *(*(*(a1 + 112) + 8) + 24), *(*(*(a1 + 112) + 8) + 24) != 1))
  {
    v10 = [*(a1 + 32) targetsForSourceIdentifier:a2];
    v11 = [*(a1 + 40) processedScenesAndFacesCache];
    v12 = [v11 allMomentNodesInCollectionHaveScenesProcessed:v10];

    if (v12)
    {
      v13 = [*(a1 + 48) intersectsCollection:v10];
      v14 = *(a1 + 40);
      if (v13)
      {
        v15 = [v14 memoryGenerationContext];
        v16 = [v15 numberOfAssetsInExtendedCurationForMomentNodes:v10];

        v17 = *(a1 + 40);
        if (v16 > 0xC)
        {
          v22 = [v17 memoryGenerationContext];
          [v22 averageContentScoreForMomentNodes:v10];
          v24 = v23;

          if (v24 > 0.5)
          {
            v18 = [*(a1 + 56) targetsForSourceIdentifier:a2];
            v25 = [PGGraphHighlightGroupNodeCollection alloc];
            v26 = *(a1 + 64);
            v27 = [objc_alloc(MEMORY[0x277D22BB0]) initWithElementIdentifier:a2];
            v28 = [(MAElementCollection *)v25 initWithGraph:v26 elementIdentifiers:v27];

            v29 = [(PGGraphHighlightNodeCollection *)v28 featureNodeCollection];
            v30 = [v18 featureNodeCollection];
            v31 = [v29 collectionByFormingUnionWith:v30];

            v32 = [*(a1 + 40) featuredLocationOrAreaNodesByTripNodeForTripNodes:*(a1 + 72)];
            v33 = [v32 targetsForSourceIdentifier:a2];

            v34 = [v31 collectionByFormingUnionWith:v33];

            v35 = [PGGraphMemory alloc];
            v36 = [objc_opt_class() memoryCategory];
            v37 = -[PGGraphMemory initWithMemoryCategory:memoryCategorySubcategory:momentNodes:featureNodes:](v35, "initWithMemoryCategory:memoryCategorySubcategory:momentNodes:featureNodes:", v36, [objc_opt_class() memoryCategorySubcategory], v10, v34);
            [*(a1 + 80) addObject:v37];

            goto LABEL_16;
          }

          v18 = [*(a1 + 40) loggingConnection];
          if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            goto LABEL_16;
          }

          v38 = 138412546;
          v39 = v7;
          v40 = 2048;
          v41 = v24;
          v19 = "[PGTripMemoryGenerator] Not creating memory for trip with uuid %@, average moment content score not high enough (%f)";
          v20 = v18;
          v21 = 22;
          goto LABEL_15;
        }

        v18 = [v17 loggingConnection];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v38 = 138412546;
          v39 = v7;
          v40 = 1024;
          LODWORD(v41) = v16;
          v19 = "[PGTripMemoryGenerator] Not creating memory for trip with uuid %@, not enough assets in extended curation (%d)";
          v20 = v18;
          v21 = 18;
LABEL_15:
          _os_log_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_INFO, v19, &v38, v21);
        }

LABEL_16:

        goto LABEL_17;
      }

      v18 = [v14 loggingConnection];
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        goto LABEL_16;
      }

      v38 = 138412290;
      v39 = v7;
      v19 = "[PGTripMemoryGenerator] Not creating memory for trip with uuid %@, no interesting moment nodes found";
    }

    else
    {
      v18 = [*(a1 + 40) loggingConnection];
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        goto LABEL_16;
      }

      v38 = 138412290;
      v39 = v7;
      v19 = "[PGTripMemoryGenerator] Not creating memory for trip with uuid %@, not all moments in trip have scenes processed";
    }

    v20 = v18;
    v21 = 12;
    goto LABEL_15;
  }

  *a4 = 1;
LABEL_17:
}

@end