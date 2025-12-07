@interface PGRecurrentTripMemoryGenerator
- (id)chapterTitleGeneratorForTriggeredMemory:(id)memory curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph;
- (id)generatePotentialMemoriesForProcessingWindow:(id)window graph:(id)graph progressBlock:(id)block;
- (id)relevantFeederForTriggeredMemory:(id)memory inGraph:(id)graph allowGuestAsset:(BOOL)asset progressReporter:(id)reporter;
- (id)relevantKeyCurationFeederForTriggeredMemory:(id)memory inGraph:(id)graph allowGuestAsset:(BOOL)asset progressReporter:(id)reporter;
- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph;
@end

@implementation PGRecurrentTripMemoryGenerator

- (id)chapterTitleGeneratorForTriggeredMemory:(id)memory curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph
{
  memoryCopy = memory;
  memoryMomentNodes = [memoryCopy memoryMomentNodes];
  dateNodes = [memoryMomentNodes dateNodes];
  yearNodes = [dateNodes yearNodes];
  v11 = [yearNodes count];

  if (v11 < 2)
  {
    v12 = 0;
  }

  else
  {
    v12 = [[PGYearChapterTitleGenerator alloc] initWithTriggeredMemory:memoryCopy];
  }

  return v12;
}

- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph
{
  contextCopy = context;
  memoryFeatureNodes = [memory memoryFeatureNodes];
  v11 = [(PGGraphNodeCollection *)PGGraphNamedLocationNodeCollection subsetInCollection:memoryFeatureNodes];

  v12 = [PGRecurrentTripMemoryTitleGenerator alloc];
  temporarySet = [v11 temporarySet];
  v14 = [(PGRecurrentTripMemoryTitleGenerator *)v12 initWithLocationNodes:temporarySet titleGenerationContext:contextCopy];

  return v14;
}

- (id)relevantFeederForTriggeredMemory:(id)memory inGraph:(id)graph allowGuestAsset:(BOOL)asset progressReporter:(id)reporter
{
  v24 = *MEMORY[0x277D85DE8];
  memoryCopy = memory;
  graphCopy = graph;
  reporterCopy = reporter;
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];
  v13 = [(PGGraphNodeCollection *)PGGraphLocationNodeCollection subsetInCollection:memoryFeatureNodes];

  if ([v13 count] == 1)
  {
    memoryMomentNodes = [memoryCopy memoryMomentNodes];
    anyNode = [v13 anyNode];
    memoryCurationSession = [(PGMemoryGenerator *)self memoryCurationSession];
    curationManager = [memoryCurationSession curationManager];
    v18 = [PGMemoryGenerationHelper assetFetchResultForMomentNodes:memoryMomentNodes inLocationOrAreaNode:anyNode requireInteresting:0 curationManager:curationManager progressReporter:reporterCopy];

    memoryCurationSession2 = [(PGMemoryGenerator *)self memoryCurationSession];
    v20 = [PGMemoryGenerationHelper feederForMemoriesWithAssetFetchResult:v18 memoryCurationSession:memoryCurationSession2 graph:graphCopy];
  }

  else
  {
    loggingConnection = [(PGMemoryGenerator *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      v23[0] = 67109120;
      v23[1] = [v13 count];
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGRecurrentTripMemoryGenerator] One location node expected, found %d", v23, 8u);
    }

    v20 = 0;
  }

  return v20;
}

- (id)relevantKeyCurationFeederForTriggeredMemory:(id)memory inGraph:(id)graph allowGuestAsset:(BOOL)asset progressReporter:(id)reporter
{
  assetCopy = asset;
  v41 = *MEMORY[0x277D85DE8];
  memoryCopy = memory;
  graphCopy = graph;
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];
  v12 = [(PGGraphNodeCollection *)PGGraphHighlightGroupNodeCollection subsetInCollection:memoryFeatureNodes];

  if ([v12 count])
  {
    uuids = [v12 uuids];
    memoryCurationSession = [(PGMemoryGenerator *)self memoryCurationSession];
    curationManager = [memoryCurationSession curationManager];
    v16 = [PGMemoryGenerationHelper keyAssetFetchResultForHighlightGroupUUIDs:uuids curationManager:curationManager allowGuestAsset:assetCopy];

    if ([v16 count])
    {
      v38 = graphCopy;
      v17 = MEMORY[0x277CD97A8];
      memoryCurationSession2 = [(PGMemoryGenerator *)self memoryCurationSession];
      curationContext = [memoryCurationSession2 curationContext];
      loggingConnection3 = [v17 clsAllAssetsFromFetchResult:v16 prefetchOptions:16 curationContext:curationContext];

      memoryFeatureNodes2 = [memoryCopy memoryFeatureNodes];
      v22 = [(PGGraphNodeCollection *)PGGraphLocationNodeCollection subsetInCollection:memoryFeatureNodes2];
      if ([v22 count])
      {
        memoryMomentNodes = [memoryCopy memoryMomentNodes];
        v24 = [PGCurationManager filterAssets:loggingConnection3 inMomentNodes:memoryMomentNodes forLocationNodes:v22 withMaximumDistance:5000.0];

        if ([v24 count])
        {
          v25 = objc_alloc(MEMORY[0x277CD98D0]);
          photoLibrary = [v16 photoLibrary];
          [v16 fetchType];
          v27 = v37 = memoryFeatureNodes2;
          [v16 fetchPropertySets];
          v36 = v22;
          v29 = v28 = v24;
          v30 = [v25 initWithObjects:v28 photoLibrary:photoLibrary fetchType:v27 fetchPropertySets:v29 identifier:0 registerIfNeeded:0];

          memoryCurationSession3 = [(PGMemoryGenerator *)self memoryCurationSession];
          memoryFeatureNodes2 = v37;
          graphCopy = v38;
          v32 = [PGMemoryGenerationHelper feederForMemoriesWithAssetFetchResult:v30 memoryCurationSession:memoryCurationSession3 graph:v38];

          loggingConnection3 = v28;
          v22 = v36;
        }

        else
        {
          loggingConnection = [(PGMemoryGenerator *)self loggingConnection];
          if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGRecurrentTripMemoryGenerator] No key assets found in locations featured by Recurrent Trip memory.", buf, 2u);
          }

          v32 = 0;
          loggingConnection3 = v24;
          graphCopy = v38;
        }
      }

      else
      {
        loggingConnection2 = [(PGMemoryGenerator *)self loggingConnection];
        graphCopy = v38;
        if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "[PGRecurrentTripMemoryGenerator] Location nodes expected in memory features, found none.", buf, 2u);
        }

        v32 = 0;
      }
    }

    else
    {
      loggingConnection3 = [(PGMemoryGenerator *)self loggingConnection];
      if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v40 = uuids;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_ERROR, "[PGRecurrentTripMemoryGenerator] No key assets found for trips %@", buf, 0xCu);
      }

      v32 = 0;
    }
  }

  else
  {
    uuids = [(PGMemoryGenerator *)self loggingConnection];
    if (os_log_type_enabled(uuids, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, uuids, OS_LOG_TYPE_ERROR, "[PGRecurrentTripMemoryGenerator] Highlight group nodes expected in features, found none", buf, 2u);
    }

    v32 = 0;
  }

  return v32;
}

- (id)generatePotentialMemoriesForProcessingWindow:(id)window graph:(id)graph progressBlock:(id)block
{
  v81 = *MEMORY[0x277D85DE8];
  windowCopy = window;
  graphCopy = graph;
  blockCopy = block;
  v8 = _Block_copy(blockCopy);
  v72 = 0;
  v73 = &v72;
  v74 = 0x2020000000;
  v75 = 0;
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 0;
  if (!v8 || (v9 = CFAbsoluteTimeGetCurrent(), v9 - v69[3] < 0.01) || (v69[3] = v9, LOBYTE(v64) = 0, (*(v8 + 2))(v8, &v64, 0.0), v10 = *(v73 + 24) | v64, *(v73 + 24) = v10, (v10 & 1) == 0))
  {
    buf = 0;
    *&v79 = &buf;
    *(&v79 + 1) = 0x2020000000;
    v80 = 0;
    v64 = 0;
    v65 = &v64;
    v66 = 0x2020000000;
    v67 = 0;
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v13 = [PGGraphHighlightTypeNodeCollection concludedTripTypeNodesInGraph:graphCopy];
    highlightGroupNodes = [v13 highlightGroupNodes];
    v15 = MEMORY[0x277D22BF8];
    v16 = +[PGGraphHighlightGroupNode momentInHighlight];
    v17 = objc_opt_self();
    v18 = [v15 adjacencyWithSources:highlightGroupNodes relation:v16 targetsClass:v17];
    v37 = highlightGroupNodes;

    memoryGenerationContext = [(PGMemoryGenerator *)self memoryGenerationContext];
    v40 = [memoryGenerationContext momentNodesAtSensitiveLocationsInGraph:graphCopy];

    v41 = [v18 subtractingTargetsWith:v40];

    locationHelper = [(PGMemoryGenerator *)self locationHelper];
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __99__PGRecurrentTripMemoryGenerator_generatePotentialMemoriesForProcessingWindow_graph_progressBlock___block_invoke;
    v57[3] = &unk_278884DD0;
    v21 = locationHelper;
    v58 = v21;
    v22 = v12;
    v59 = v22;
    v23 = v8;
    v60 = v23;
    v61 = &v68;
    v62 = &v72;
    v63 = 0x3F847AE147AE147BLL;
    [v41 enumerateTargetsBySourceWithBlock:v57];
    if (*(v73 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v76 = 67109378;
        LODWORD(v77[0]) = 72;
        WORD2(v77[0]) = 2080;
        *(v77 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/Memory Generators/CurrentMemoryGenerators/TripMemoryGenerators/PGRecurrentTripMemoryGenerator.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v76, 0x12u);
      }

      v11 = MEMORY[0x277CBEBF8];
      goto LABEL_25;
    }

    v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
    momentNodesWithBlockedFeatureCache = [(PGMemoryGenerator *)self momentNodesWithBlockedFeatureCache];
    momentNodesWithBlockedFeature = [momentNodesWithBlockedFeatureCache momentNodesWithBlockedFeature];

    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __99__PGRecurrentTripMemoryGenerator_generatePotentialMemoriesForProcessingWindow_graph_progressBlock___block_invoke_257;
    v44[3] = &unk_278884E20;
    v27 = v23;
    v51 = v27;
    v52 = &v68;
    v56 = 0x3F847AE147AE147BLL;
    v53 = &v72;
    v45 = v21;
    v46 = v41;
    v28 = momentNodesWithBlockedFeature;
    v47 = v28;
    selfCopy = self;
    p_buf = &buf;
    v49 = graphCopy;
    v55 = &v64;
    v29 = v24;
    v50 = v29;
    [v22 enumerateKeysAndObjectsUsingBlock:v44];
    if (*(v73 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v76 = 67109378;
        LODWORD(v77[0]) = 129;
        WORD2(v77[0]) = 2080;
        *(v77 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/Memory Generators/CurrentMemoryGenerators/TripMemoryGenerators/PGRecurrentTripMemoryGenerator.m";
        v30 = MEMORY[0x277D86220];
LABEL_14:
        _os_log_impl(&dword_22F0FC000, v30, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v76, 0x12u);
      }
    }

    else
    {
      loggingConnection = [(PGMemoryGenerator *)self loggingConnection];
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
      {
        v32 = *(v79 + 24);
        v33 = v65[3];
        v76 = 134218240;
        v77[0] = v32;
        LOWORD(v77[1]) = 2048;
        *(&v77[1] + 2) = v33;
        _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "Memory Creation Request: %lu not interesting, %lu no scenes processed", &v76, 0x16u);
      }

      if (!v8 || (Current = CFAbsoluteTimeGetCurrent(), Current - v69[3] < 0.01) || (v69[3] = Current, v43 = 0, (*(v27 + 2))(v27, &v43, 1.0), v35 = *(v73 + 24) | v43, *(v73 + 24) = v35, (v35 & 1) == 0))
      {
        v11 = v29;
        goto LABEL_24;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v76 = 67109378;
        LODWORD(v77[0]) = 133;
        WORD2(v77[0]) = 2080;
        *(v77 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/Memory Generators/CurrentMemoryGenerators/TripMemoryGenerators/PGRecurrentTripMemoryGenerator.m";
        v30 = MEMORY[0x277D86220];
        goto LABEL_14;
      }
    }

    v11 = MEMORY[0x277CBEBF8];
LABEL_24:

LABEL_25:
    _Block_object_dispose(&v64, 8);
    _Block_object_dispose(&buf, 8);
    goto LABEL_26;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    buf = 0x2204000202;
    LOWORD(v79) = 2080;
    *(&v79 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/Memory Generators/CurrentMemoryGenerators/TripMemoryGenerators/PGRecurrentTripMemoryGenerator.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
  }

  v11 = MEMORY[0x277CBEBF8];
LABEL_26:
  _Block_object_dispose(&v68, 8);
  _Block_object_dispose(&v72, 8);

  return v11;
}

void __99__PGRecurrentTripMemoryGenerator_generatePotentialMemoriesForProcessingWindow_graph_progressBlock___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v31 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v6 temporaryArray];
  v9 = [v7 relevantLocationNodesForMomentNodes:v8 applyDensestCloseLocationNode:0];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v34;
    v30 = v6;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v33 + 1) + 8 * i);
        v15 = *(a1 + 32);
        v16 = [v14 locationNodeCollection];
        v17 = [v15 addressNodesFromLocationNodes:v16];

        v18 = [*(a1 + 32) momentNodesByAddressNode];
        v19 = [v18 targetsForSources:v17];

        v20 = [v19 collectionByIntersecting:v6];
        v21 = [v20 count];
        if ([v6 count] <= (2 * v21))
        {
          v22 = [*(a1 + 40) objectForKeyedSubscript:v14];
          v23 = v22;
          if (v22)
          {
            [v22 collectionByFormingUnionWith:v31];
            v24 = v11;
            v26 = v25 = v12;
            [*(a1 + 40) setObject:v26 forKeyedSubscript:v14];

            v12 = v25;
            v11 = v24;
            v6 = v30;
          }

          else
          {
            [*(a1 + 40) setObject:v31 forKeyedSubscript:v14];
          }
        }
      }

      v11 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v11);
  }

  if (*(a1 + 48))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v28 = *(*(a1 + 56) + 8);
    if (Current - *(v28 + 24) >= *(a1 + 72))
    {
      *(v28 + 24) = Current;
      (*(*(a1 + 48) + 16))(0.25);
      *(*(*(a1 + 64) + 8) + 24) = *(*(*(a1 + 64) + 8) + 24);
      if (*(*(*(a1 + 64) + 8) + 24) == 1)
      {
        *a4 = 1;
      }
    }
  }
}

void __99__PGRecurrentTripMemoryGenerator_generatePotentialMemoriesForProcessingWindow_graph_progressBlock___block_invoke_257(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = objc_autoreleasePoolPush();
  if (*(a1 + 80) && (Current = CFAbsoluteTimeGetCurrent(), v11 = *(*(a1 + 88) + 8), Current - *(v11 + 24) >= *(a1 + 120)) && (*(v11 + 24) = Current, v41 = 0, (*(*(a1 + 80) + 16))(0.5), *(*(*(a1 + 96) + 8) + 24) = *(*(*(a1 + 96) + 8) + 24), *(*(*(a1 + 96) + 8) + 24) == 1))
  {
    *a4 = 1;
  }

  else if ([v8 count] >= 3)
  {
    v12 = *(a1 + 32);
    v13 = [v7 locationNodeCollection];
    v14 = [v12 addressNodesFromLocationNodes:v13];

    v15 = [*(a1 + 32) momentNodesByAddressNode];
    v16 = [v15 targetsForSources:v14];

    v17 = objc_alloc_init(MEMORY[0x277D22BD0]);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __99__PGRecurrentTripMemoryGenerator_generatePotentialMemoriesForProcessingWindow_graph_progressBlock___block_invoke_2;
    v35[3] = &unk_278884DF8;
    v36 = *(a1 + 40);
    v18 = v16;
    v37 = v18;
    v19 = *(a1 + 48);
    v20 = *(a1 + 56);
    v38 = v19;
    v39 = v20;
    v21 = v17;
    v40 = v21;
    v22 = [v8 filteredCollectionUsingBlock:v35];
    if ([v22 count] > 2)
    {
      v23 = [(MAElementCollection *)[PGGraphMomentNodeCollection alloc] initWithGraph:*(a1 + 64) elementIdentifiers:v21];
      v24 = [(PGGraphMomentNodeCollection *)v23 universalDateInterval];
      [v24 duration];
      v26 = v25;

      if (v26 >= 31557600.0)
      {
        v34 = v14;
        v27 = [*(a1 + 56) processedScenesAndFacesCache];
        v28 = [v27 allMomentNodesInCollectionHaveScenesProcessed:v23];

        if (v28)
        {
          v29 = [v22 featureNodeCollection];
          v32 = [v7 locationNodeCollection];
          v30 = [v32 featureNodeCollection];
          v33 = [v29 collectionByFormingUnionWith:v30];

          v31 = [[PGGraphMemory alloc] initWithMemoryCategory:18 memoryCategorySubcategory:12002 momentNodes:v23 featureNodes:v33];
          [*(a1 + 72) addObject:v31];
        }

        else
        {
          ++*(*(*(a1 + 112) + 8) + 24);
        }

        v14 = v34;
      }
    }

    else
    {
      ++*(*(*(a1 + 104) + 8) + 24);
    }
  }

  objc_autoreleasePoolPop(v9);
}

BOOL __99__PGRecurrentTripMemoryGenerator_generatePotentialMemoriesForProcessingWindow_graph_progressBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) targetsForSources:a2];
  v4 = [*(a1 + 40) collectionByIntersecting:v3];
  v5 = [v4 collectionBySubtracting:*(a1 + 48)];

  v6 = [*(a1 + 56) memoryGenerationContext];
  v7 = [v6 interestingForMemoriesSubsetFromMomentNodes:v5];
  v8 = [v7 count];

  if (v8)
  {
    v9 = *(a1 + 64);
    v10 = [v5 elementIdentifiers];
    [v9 unionWithIdentifierSet:v10];
  }

  return v8 != 0;
}

@end