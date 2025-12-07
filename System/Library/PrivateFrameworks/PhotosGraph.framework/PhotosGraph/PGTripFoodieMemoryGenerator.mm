@interface PGTripFoodieMemoryGenerator
- (id)generatePotentialMemoriesForProcessingWindow:(id)window graph:(id)graph progressBlock:(id)block;
@end

@implementation PGTripFoodieMemoryGenerator

- (id)generatePotentialMemoriesForProcessingWindow:(id)window graph:(id)graph progressBlock:(id)block
{
  v70 = *MEMORY[0x277D85DE8];
  windowCopy = window;
  graphCopy = graph;
  blockCopy = block;
  v42 = _Block_copy(blockCopy);
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v10 = [PGGraphSceneFeatureNodeCollection sceneFeatureNodesForSceneName:@"Food" inGraph:graphCopy];
  momentNodes = [v10 momentNodes];
  [PGGraphHighlightTypeNodeCollection concludedTripTypeNodesInGraph:graphCopy];
  v40 = v38 = windowCopy;
  highlightGroupNodes = [v40 highlightGroupNodes];
  v12 = MEMORY[0x277D22BF8];
  v13 = +[PGGraphHighlightGroupNode momentInHighlight];
  v14 = objc_opt_self();
  v15 = [v12 adjacencyWithSources:highlightGroupNodes relation:v13 targetsClass:v14];

  v16 = [v15 intersectingTargetsWith:momentNodes];

  v17 = [PGFoodieMemoryGenerator incompatibleMomentNodesInGraph:graphCopy];
  v18 = [v16 subtractingTargetsWith:v17];

  momentNodesWithBlockedFeatureCache = [(PGMemoryGenerator *)self momentNodesWithBlockedFeatureCache];
  momentNodesWithBlockedFeature = [momentNodesWithBlockedFeatureCache momentNodesWithBlockedFeature];

  v21 = [v18 subtractingTargetsWith:momentNodesWithBlockedFeature];

  targets = [v21 targets];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __96__PGTripFoodieMemoryGenerator_generatePotentialMemoriesForProcessingWindow_graph_progressBlock___block_invoke;
  v53[3] = &unk_278888AE0;
  v23 = v10;
  v54 = v23;
  v24 = [targets filteredCollectionUsingBlock:v53];

  v25 = [v21 intersectingTargetsWith:v24];

  sources = [v25 sources];
  v27 = [sources count];

  if (v27)
  {
    v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v67 = 0;
    *&v68 = &v67;
    *(&v68 + 1) = 0x2020000000;
    v69 = 0;
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __96__PGTripFoodieMemoryGenerator_generatePotentialMemoriesForProcessingWindow_graph_progressBlock___block_invoke_232;
    v44[3] = &unk_278882DD8;
    v48 = &v67;
    v51 = 1.0 / v27;
    v29 = v42;
    v52 = 0x3F847AE147AE147BLL;
    v49 = &v55;
    v50 = &v59;
    v47 = v29;
    v44[4] = self;
    v45 = v23;
    v30 = v28;
    v46 = v30;
    [v25 enumerateTargetsBySourceWithBlock:v44];
    if (*(v60 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        buf = 67109378;
        v64 = 78;
        v65 = 2080;
        v66 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/Memory Generators/CurrentMemoryGenerators/FoodieMemoryGenerators/PGTripFoodieMemoryGenerator.m";
        v31 = MEMORY[0x277D86220];
LABEL_5:
        _os_log_impl(&dword_22F0FC000, v31, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
      }
    }

    else
    {
      if (!v29 || (Current = CFAbsoluteTimeGetCurrent(), Current - v56[3] < 0.01) || (v56[3] = Current, v43 = 0, (*(v29 + 2))(v29, &v43, 1.0), v36 = *(v60 + 24) | v43, *(v60 + 24) = v36, (v36 & 1) == 0))
      {
        v32 = v30;
        goto LABEL_19;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        buf = 67109378;
        v64 = 79;
        v65 = 2080;
        v66 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/Memory Generators/CurrentMemoryGenerators/FoodieMemoryGenerators/PGTripFoodieMemoryGenerator.m";
        v31 = MEMORY[0x277D86220];
        goto LABEL_5;
      }
    }

    v32 = MEMORY[0x277CBEBF8];
LABEL_19:

    _Block_object_dispose(&v67, 8);
    goto LABEL_20;
  }

  if (v42)
  {
    v33 = CFAbsoluteTimeGetCurrent();
    if (v33 - v56[3] >= 0.01)
    {
      v56[3] = v33;
      LOBYTE(buf) = 0;
      (*(v42 + 2))(v42, &buf, 1.0);
      v34 = *(v60 + 24) | buf;
      *(v60 + 24) = v34;
      if ((v34 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v67 = 0x2B04000202;
        LOWORD(v68) = 2080;
        *(&v68 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/Memory Generators/CurrentMemoryGenerators/FoodieMemoryGenerators/PGTripFoodieMemoryGenerator.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v67, 0x12u);
      }
    }
  }

  v32 = MEMORY[0x277CBEBF8];
LABEL_20:

  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v59, 8);

  return v32;
}

BOOL __96__PGTripFoodieMemoryGenerator_generatePotentialMemoriesForProcessingWindow_graph_progressBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [(PGGraphEdgeCollection *)PGGraphMomentFeaturesEdgeCollection edgesFromNodes:a2 toNodes:*(a1 + 32)];
  v3 = [v2 numberOfRelevantAssets] > 1;

  return v3;
}

void __96__PGTripFoodieMemoryGenerator_generatePotentialMemoriesForProcessingWindow_graph_progressBlock___block_invoke_232(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  *(*(*(a1 + 64) + 8) + 24) = *(a1 + 88) + *(*(*(a1 + 64) + 8) + 24);
  if (*(a1 + 56) && (Current = CFAbsoluteTimeGetCurrent(), v10 = *(*(a1 + 72) + 8), Current - *(v10 + 24) >= *(a1 + 96)) && (*(v10 + 24) = Current, LOBYTE(v32) = 0, (*(*(a1 + 56) + 16))(*(*(*(a1 + 64) + 8) + 24)), *(*(*(a1 + 80) + 8) + 24) = *(*(*(a1 + 80) + 8) + 24), *(*(*(a1 + 80) + 8) + 24) == 1))
  {
    *a4 = 1;
  }

  else
  {
    v11 = [v7 uuids];
    v12 = [v11 anyObject];

    v13 = [*(a1 + 32) processedScenesAndFacesCache];
    v14 = [v13 allMomentNodesInCollectionHaveScenesProcessed:v8];

    if (v14)
    {
      v15 = [(PGGraphEdgeCollection *)PGGraphMomentFeaturesEdgeCollection edgesFromNodes:v8 toNodes:*(a1 + 40)];
      if ([v15 numberOfRelevantAssets]>= 0xD)
      {
        v16 = [PGLocationTripTitleUtility alloc];
        v17 = [v8 temporarySet];
        v18 = [*(a1 + 32) locationHelper];
        v19 = [(PGLocationTripTitleUtility *)v16 initWithMomentNodes:v17 filterMomentsAndCities:1 locationHelper:v18];

        if ([(PGLocationTripTitleUtility *)v19 tripTitleType]- 3 >= 0xFFFFFFFFFFFFFFFELL)
        {
          v20 = [(PGLocationTripTitleUtility *)v19 usedLocationNodes];
          v21 = [v20 anyObject];
          v22 = [v21 locationOrAreaNodeCollection];

          v23 = [v22 addressNodes];
          v24 = [v23 momentNodes];
          v25 = [v8 collectionByIntersecting:v24];

          if ([v25 count])
          {
            v26 = [*(a1 + 40) featureNodeCollection];
            v27 = [v22 featureNodeCollection];
            v28 = [v26 collectionByFormingUnionWith:v27];

            v29 = [v7 featureNodeCollection];
            v30 = [v28 collectionByFormingUnionWith:v29];

            v31 = [[PGGraphMemory alloc] initWithMemoryCategory:9 memoryCategorySubcategory:6011 momentNodes:v25 featureNodes:v30];
            [*(a1 + 48) addObject:v31];
          }

          else
          {
            v30 = [*(a1 + 32) loggingConnection];
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              v32 = 138412290;
              v33 = v12;
              _os_log_error_impl(&dword_22F0FC000, v30, OS_LOG_TYPE_ERROR, "[PGTripFoodieMemoryGenerator] No moment nodes at trip's used location nodes address for trip with uuid %@", &v32, 0xCu);
            }
          }

          v8 = v25;
        }
      }
    }

    else
    {
      v15 = [*(a1 + 32) loggingConnection];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v32 = 138412290;
        v33 = v12;
        _os_log_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_INFO, "[PGTripFoodieMemoryGenerator] Not creating foodie memory for trip with uuid %@, not all moments in trip have scenes processed", &v32, 0xCu);
      }
    }
  }
}

@end