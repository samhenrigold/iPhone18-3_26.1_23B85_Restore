@interface PGEarlyMomentsWithPeopleMemoryGenerator
+ (id)earlyMomentNodesByPersonNodeWithPersonNodes:(id)nodes;
+ (unint64_t)numberOfPotentialMemoriesForGraph:(id)graph;
- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)memory inGraph:(id)graph;
- (id)relevantFeederForTriggeredMemory:(id)memory inGraph:(id)graph allowGuestAsset:(BOOL)asset progressReporter:(id)reporter;
- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph;
- (void)_enumerateEarlyMomentsWithPeopleForLocalDate:(id)date withGraph:(id)graph usingBlock:(id)block;
- (void)_enumeratePotentialMemoriesForProcessingWindow:(id)window graph:(id)graph progressBlock:(id)block usingBlock:(id)usingBlock;
@end

@implementation PGEarlyMomentsWithPeopleMemoryGenerator

- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph
{
  contextCopy = context;
  memoryCopy = memory;
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];
  v12 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:memoryFeatureNodes];

  memoryMomentNodes = [memoryCopy memoryMomentNodes];

  v14 = [PGPeopleMemoryTitleGenerator alloc];
  temporarySet = [memoryMomentNodes temporarySet];
  temporarySet2 = [v12 temporarySet];
  v17 = [(PGPeopleMemoryTitleGenerator *)v14 initWithMomentNodes:temporarySet personNodes:temporarySet2 timeTitleOptions:0 type:3 titleGenerationContext:contextCopy];

  return v17;
}

- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)memory inGraph:(id)graph
{
  graphCopy = graph;
  memoryCopy = memory;
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];
  v9 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:memoryFeatureNodes];

  v13.receiver = self;
  v13.super_class = PGEarlyMomentsWithPeopleMemoryGenerator;
  v10 = [(PGMemoryGenerator *)&v13 keyAssetCurationOptionsWithTriggeredMemory:memoryCopy inGraph:graphCopy];

  localIdentifiers = [v9 localIdentifiers];
  [v10 setReferencePersonLocalIdentifiers:localIdentifiers];

  [v10 setMinimumNumberOfReferencePersons:0];

  return v10;
}

- (id)relevantFeederForTriggeredMemory:(id)memory inGraph:(id)graph allowGuestAsset:(BOOL)asset progressReporter:(id)reporter
{
  assetCopy = asset;
  v72 = *MEMORY[0x277D85DE8];
  memoryCopy = memory;
  graphCopy = graph;
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 0;
  reporterCopy = reporter;
  v12 = [reporterCopy isCancelledWithProgress:0.0];
  *(v64 + 24) = v12;
  v52 = graphCopy;
  v53 = memoryCopy;
  if (v12)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v69 = 248;
      v70 = 2080;
      v71 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/Memory Generators/CurrentMemoryGenerators/PersonMemoryGenerators/PGEarlyMomentsWithPeopleMemoryGenerator.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v13 = 0;
    goto LABEL_39;
  }

  v14 = [reporterCopy childProgressReporterFromStart:0.0 toEnd:0.25];
  v62.receiver = self;
  v62.super_class = PGEarlyMomentsWithPeopleMemoryGenerator;
  v51 = [(PGMemoryGenerator *)&v62 relevantFeederForTriggeredMemory:memoryCopy inGraph:graphCopy allowGuestAsset:assetCopy progressReporter:v14];
  selfCopy = self;

  if (*(v64 + 24) == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v69 = 251;
      v70 = 2080;
      v71 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/Memory Generators/CurrentMemoryGenerators/PersonMemoryGenerators/PGEarlyMomentsWithPeopleMemoryGenerator.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v13 = 0;
    goto LABEL_38;
  }

  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];
  v49 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:memoryFeatureNodes];

  memoryMomentNodes = [memoryCopy memoryMomentNodes];
  v48 = [(PGGraphEdgeCollection *)PGGraphMomentFeaturesEdgeCollection edgesFromNodes:memoryMomentNodes toNodes:v49];

  if (![v48 count])
  {
    loggingConnection = [(PGMemoryGenerator *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGEarlyMomentsWithPeopleMemoryGenerator] No moment feature edges found", buf, 2u);
    }

    v13 = 0;
    goto LABEL_37;
  }

  localIdentifiers = [v49 localIdentifiers];
  loggingConnection = [localIdentifiers anyObject];

  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  allItems = [v51 allItems];
  v21 = [allItems countByEnumeratingWithState:&v58 objects:v67 count:16];
  if (!v21)
  {
    goto LABEL_21;
  }

  v22 = *v59;
  do
  {
    for (i = 0; i != v21; ++i)
    {
      if (*v59 != v22)
      {
        objc_enumerationMutation(allItems);
      }

      v24 = *(*(&v58 + 1) + 8 * i);
      clsPersonLocalIdentifiers = [v24 clsPersonLocalIdentifiers];
      if ([clsPersonLocalIdentifiers containsObject:loggingConnection])
      {
      }

      else
      {
        clsFaceInformationSummary = [v24 clsFaceInformationSummary];
        v27 = [clsFaceInformationSummary numberOfFacesIncludingPets] == 0;

        if (!v27)
        {
          continue;
        }
      }

      [v19 addObject:v24];
    }

    v21 = [allItems countByEnumeratingWithState:&v58 objects:v67 count:16];
  }

  while (v21);
LABEL_21:

  v28 = objc_alloc(MEMORY[0x277CD98D0]);
  memoryCurationSession = [(PGMemoryGenerator *)selfCopy memoryCurationSession];
  photoLibrary = [memoryCurationSession photoLibrary];
  v31 = MEMORY[0x277CBEB98];
  assetFetchOptions = [v51 assetFetchOptions];
  fetchPropertySets = [assetFetchOptions fetchPropertySets];
  v34 = [v31 setWithArray:fetchPropertySets];
  v35 = [v28 initWithObjects:v19 photoLibrary:photoLibrary fetchType:0 fetchPropertySets:v34 identifier:0 registerIfNeeded:0];

  memoryCurationSession2 = [(PGMemoryGenerator *)selfCopy memoryCurationSession];
  curationManager = [memoryCurationSession2 curationManager];
  durationForCuration = [(PGMemoryGenerator *)selfCopy durationForCuration];
  allRelevantAssetLocalIdentifiers = [v48 allRelevantAssetLocalIdentifiers];
  memoryCurationSession3 = [(PGMemoryGenerator *)selfCopy memoryCurationSession];
  curationContext = [memoryCurationSession3 curationContext];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __117__PGEarlyMomentsWithPeopleMemoryGenerator_relevantFeederForTriggeredMemory_inGraph_allowGuestAsset_progressReporter___block_invoke;
  v55[3] = &unk_278889448;
  v57 = &v63;
  v42 = reporterCopy;
  v56 = v42;
  v43 = [curationManager memoryCuratedAssetsForAssets:v35 duration:durationForCuration withContextualAssetLocalIdentifiers:allRelevantAssetLocalIdentifiers minimumProportion:v52 graph:curationContext curationContext:v55 progressBlock:0.7];

  if (*(v64 + 24) != 1)
  {
    memoryCurationSession4 = [(PGMemoryGenerator *)selfCopy memoryCurationSession];
    v45 = [PGMemoryGenerationHelper feederForMemoriesWithAssetFetchResult:v43 memoryCurationSession:memoryCurationSession4 graph:v52];

    if (v64[3])
    {
      *(v64 + 24) = 1;
    }

    else
    {
      v46 = [v42 isCancelledWithProgress:1.0];
      *(v64 + 24) = v46;
      if ((v46 & 1) == 0)
      {
        v13 = v45;
LABEL_35:

        goto LABEL_36;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v69 = 277;
      v70 = 2080;
      v71 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/Memory Generators/CurrentMemoryGenerators/PersonMemoryGenerators/PGEarlyMomentsWithPeopleMemoryGenerator.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v13 = 0;
    goto LABEL_35;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v69 = 273;
    v70 = 2080;
    v71 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/Memory Generators/CurrentMemoryGenerators/PersonMemoryGenerators/PGEarlyMomentsWithPeopleMemoryGenerator.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v13 = 0;
LABEL_36:

LABEL_37:
LABEL_38:

LABEL_39:
  _Block_object_dispose(&v63, 8);

  return v13;
}

uint64_t __117__PGEarlyMomentsWithPeopleMemoryGenerator_relevantFeederForTriggeredMemory_inGraph_allowGuestAsset_progressReporter___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  v5 = *(*(a1 + 40) + 8);
  if (*(v5 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:a3 * 0.75 + 0.25];
    v5 = *(*(a1 + 40) + 8);
  }

  *(v5 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

- (void)_enumeratePotentialMemoriesForProcessingWindow:(id)window graph:(id)graph progressBlock:(id)block usingBlock:(id)usingBlock
{
  v58 = *MEMORY[0x277D85DE8];
  windowCopy = window;
  graphCopy = graph;
  blockCopy = block;
  usingBlockCopy = usingBlock;
  memoryGenerationContext = [(PGMemoryGenerator *)self memoryGenerationContext];
  processedScenesAndFacesCache = [memoryGenerationContext processedScenesAndFacesCache];
  v16 = [processedScenesAndFacesCache libraryHasEnoughScenesProcessed:1 andProcessedFaces:1];

  if (v16)
  {
    localDate = [(PGEarlyMomentsWithPeopleMemoryGenerator *)self localDate];
    if (localDate)
    {
      [(PGEarlyMomentsWithPeopleMemoryGenerator *)self localDate];
    }

    else
    {
      [MEMORY[0x277CBEAA8] date];
    }
    v18 = ;

    v44 = 0;
    v45 = &v44;
    v46 = 0x2020000000;
    v47 = 0;
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v43 = 0;
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 0;
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __121__PGEarlyMomentsWithPeopleMemoryGenerator__enumeratePotentialMemoriesForProcessingWindow_graph_progressBlock_usingBlock___block_invoke;
    v24[3] = &unk_27887F350;
    v28 = &v44;
    v29 = &v40;
    v30 = &v36;
    v25 = graphCopy;
    selfCopy = self;
    v31 = &v32;
    v27 = usingBlockCopy;
    [(PGEarlyMomentsWithPeopleMemoryGenerator *)self _enumerateEarlyMomentsWithPeopleForLocalDate:v18 withGraph:v25 usingBlock:v24];
    loggingConnection = [(PGMemoryGenerator *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v45[3];
      v21 = v41[3];
      v22 = v37[3];
      v23 = v33[3];
      *buf = 134219008;
      v49 = v20;
      v50 = 2048;
      v51 = v21;
      v52 = 2048;
      v53 = v22;
      v54 = 2048;
      v55 = 0;
      v56 = 2048;
      v57 = v23;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "Memory Creation Request: Found %lu, rejected %lu uninteresting, %lu too short, %lu insufficiently faced, %lu blocklisting", buf, 0x34u);
    }

    _Block_object_dispose(&v32, 8);
    _Block_object_dispose(&v36, 8);
    _Block_object_dispose(&v40, 8);
    _Block_object_dispose(&v44, 8);
  }
}

void __121__PGEarlyMomentsWithPeopleMemoryGenerator__enumeratePotentialMemoriesForProcessingWindow_graph_progressBlock_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  ++*(*(*(a1 + 56) + 8) + 24);
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v49;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v49 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (([*(*(&v48 + 1) + 8 * i) isInterestingForMemories] & 1) == 0)
        {
          ++*(*(*(a1 + 64) + 8) + 24);

          goto LABEL_36;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v48 objects:v54 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v12 = v7;
  v13 = [v12 countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (!v13)
  {

LABEL_21:
    ++*(*(*(a1 + 72) + 8) + 24);
    goto LABEL_36;
  }

  v14 = v13;
  v15 = 0;
  v16 = *v45;
  do
  {
    for (j = 0; j != v14; ++j)
    {
      if (*v45 != v16)
      {
        objc_enumerationMutation(v12);
      }

      v15 += [*(*(&v44 + 1) + 8 * j) numberOfAssets];
    }

    v14 = [v12 countByEnumeratingWithState:&v44 objects:v53 count:16];
  }

  while (v14);

  if (v15 <= 0xC)
  {
    goto LABEL_21;
  }

  v18 = [(MAElementCollection *)[PGGraphMomentNodeCollection alloc] initWithArray:v12 graph:*(a1 + 32)];
  v19 = [v6 collection];
  v20 = [(PGGraphEdgeCollection *)PGGraphMomentFeaturesEdgeCollection edgesFromNodes:v18 toNodes:v19];
  if ([v20 numberOfRelevantAssets] > 8)
  {
    v38 = v19;
    v39 = v18;
    v21 = [*(a1 + 40) memoryGenerationContext];
    v22 = [v21 momentNodesWithBlockedFeatureCache];
    v23 = [v22 momentNodesWithBlockedFeature];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v24 = v12;
    v25 = [(PGPotentialEarlyMomentsWithPeopleMemory *)v24 countByEnumeratingWithState:&v40 objects:v52 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v41;
      while (2)
      {
        for (k = 0; k != v26; ++k)
        {
          if (*v41 != v27)
          {
            objc_enumerationMutation(v24);
          }

          if ([v23 containsNode:*(*(&v40 + 1) + 8 * k)])
          {
            ++*(*(*(a1 + 80) + 8) + 24);
            goto LABEL_34;
          }
        }

        v26 = [(PGPotentialEarlyMomentsWithPeopleMemory *)v24 countByEnumeratingWithState:&v40 objects:v52 count:16];
        if (v26)
        {
          continue;
        }

        break;
      }
    }

    v29 = [PGPotentialEarlyMomentsWithPeopleMemory alloc];
    v30 = [MEMORY[0x277CBEB98] setWithArray:v24];
    v31 = [MEMORY[0x277CBEB98] setWithObject:v6];
    v24 = [(PGPotentialEarlyMomentsWithPeopleMemory *)v29 initWithMomentNodes:v30 personNodes:v31];

    [v6 personScore];
    -[PGPotentialMemory setScore:](v24, "setScore:", v32 + [v6 numberOfMomentNodes] * 0.01);
    v33 = MEMORY[0x277CBEB98];
    v34 = [PGFeature featureWithType:3 node:v6];
    v35 = [v33 setWithObject:v34];
    [(PGPotentialMemory *)v24 setFeatures:v35];

    [(PGPotentialMemory *)v24 computeContentScore];
    v36 = [v6 localIdentifier];
    if ([v36 length])
    {
      v37 = [MEMORY[0x277CBEB98] setWithObject:v36];
      [(PGPotentialMemory *)v24 setPeopleUUIDs:v37];
    }

    (*(*(a1 + 48) + 16))();

LABEL_34:
    v19 = v38;
    v18 = v39;
  }

  else
  {
    ++*(*(*(a1 + 72) + 8) + 24);
  }

LABEL_36:
}

- (void)_enumerateEarlyMomentsWithPeopleForLocalDate:(id)date withGraph:(id)graph usingBlock:(id)block
{
  v64 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  graphCopy = graph;
  blockCopy = block;
  v43 = dateCopy;
  if ([(PGEarlyMomentsWithPeopleMemoryGenerator *)self shouldGenerateAllMemories])
  {
    momentNodes = [graphCopy momentNodes];
  }

  else
  {
    v11 = [MEMORY[0x277D27690] monthFromDate:dateCopy];
    v12 = [MEMORY[0x277D27690] weekOfMonthFromDate:dateCopy];
    v13 = [graphCopy dateNodesForMonth:v11];
    v14 = [graphCopy dateNodesForWeekOfMonth:v12];
    v15 = [MEMORY[0x277CBEB58] setWithSet:v14];
    [v15 intersectSet:v13];
    v16 = [(MAElementCollection *)[PGGraphDateNodeCollection alloc] initWithSet:v15 graph:graphCopy];
    momentNodes = [(PGGraphDateNodeCollection *)v16 momentNodes];
  }

  personNodes = [momentNodes personNodes];
  meNodeCollection = [graphCopy meNodeCollection];
  v19 = [personNodes collectionBySubtracting:meNodeCollection];

  memoryGenerationContext = [(PGMemoryGenerator *)self memoryGenerationContext];
  v42 = graphCopy;
  v21 = [memoryGenerationContext momentNodesAtSensitiveLocationsInGraph:graphCopy];

  v60 = 0;
  v41 = v19;
  [objc_opt_class() earlyMomentNodesByPersonNodeWithPersonNodes:v19];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v22 = v59 = 0u;
  v47 = [v22 countByEnumeratingWithState:&v56 objects:v63 count:16];
  if (v47)
  {
    v45 = v22;
    v46 = *v57;
    while (2)
    {
      for (i = 0; i != v47; ++i)
      {
        if (*v57 != v46)
        {
          objc_enumerationMutation(v22);
        }

        v24 = *(*(&v56 + 1) + 8 * i);
        v25 = [v22 objectForKey:v24];
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v26 = v25;
        v27 = [v26 countByEnumeratingWithState:&v52 objects:v62 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = 0;
          v30 = *v53;
          while (2)
          {
            v31 = 0;
            v32 = v29;
            v29 += v28;
            do
            {
              if (*v53 != v30)
              {
                objc_enumerationMutation(v26);
              }

              if (![momentNodes containsNode:*(*(&v52 + 1) + 8 * v31)])
              {
                v29 = v32;
                goto LABEL_19;
              }

              ++v32;
              ++v31;
            }

            while (v28 != v31);
            v28 = [v26 countByEnumeratingWithState:&v52 objects:v62 count:16];
            if (v28)
            {
              continue;
            }

            break;
          }

LABEL_19:

          if (v29)
          {
            if (v29 != [v26 count])
            {
              v33 = [v26 subarrayWithRange:{0, v29}];

              v26 = v33;
            }

            v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v48 = 0u;
            v49 = 0u;
            v50 = 0u;
            v51 = 0u;
            v26 = v26;
            v35 = [v26 countByEnumeratingWithState:&v48 objects:v61 count:16];
            if (v35)
            {
              v36 = v35;
              v37 = *v49;
              do
              {
                for (j = 0; j != v36; ++j)
                {
                  if (*v49 != v37)
                  {
                    objc_enumerationMutation(v26);
                  }

                  v39 = *(*(&v48 + 1) + 8 * j);
                  if (([v21 containsNode:v39] & 1) == 0)
                  {
                    [v34 addObject:v39];
                  }
                }

                v36 = [v26 countByEnumeratingWithState:&v48 objects:v61 count:16];
              }

              while (v36);
            }

            blockCopy[2](blockCopy, v34, v24, &v60);
            v40 = v60;

            if (v40 == 1)
            {

              v22 = v45;
              goto LABEL_38;
            }
          }

          v22 = v45;
        }

        else
        {
        }
      }

      v47 = [v22 countByEnumeratingWithState:&v56 objects:v63 count:16];
      if (v47)
      {
        continue;
      }

      break;
    }
  }

LABEL_38:
}

+ (id)earlyMomentNodesByPersonNodeWithPersonNodes:(id)nodes
{
  nodesCopy = nodes;
  socialGroupNodes = [nodesCopy socialGroupNodes];
  personNodes = [socialGroupNodes personNodes];
  v6 = [personNodes collectionByIntersecting:nodesCopy];

  strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __87__PGEarlyMomentsWithPeopleMemoryGenerator_earlyMomentNodesByPersonNodeWithPersonNodes___block_invoke;
  v10[3] = &unk_27887F328;
  v8 = strongToStrongObjectsMapTable;
  v11 = v8;
  [v6 enumerateIdentifiersAsCollectionsWithBlock:v10];

  return v8;
}

void __87__PGEarlyMomentsWithPeopleMemoryGenerator_earlyMomentNodesByPersonNodeWithPersonNodes___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v31[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 featureNodeCollection];
  v6 = [v5 momentNodes];

  v7 = [v6 interestingSubset];

  v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:1];
  v31[0] = v8;
  v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalEndDate" ascending:1];
  v31[1] = v9;
  v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:1];
  v31[2] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:3];

  v12 = [v7 sortedArrayUsingDescriptors:v11];

  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:5];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v27;
    v18 = 0.0;
LABEL_3:
    v19 = 0;
    while (1)
    {
      if (*v27 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v20 = *(*(&v26 + 1) + 8 * v19);
      if ([v20 totalNumberOfPersons] <= 0x13)
      {
        [v20 timestampUTCStart];
        v22 = v21;
        if (v18 != 0.0)
        {
          v21 = v21 - v18;
          v23 = v22 - v18 <= 15552000.0;
          v22 = v18;
          if (!v23)
          {
            break;
          }
        }

        [v13 addObject:{v20, v21}];
        v18 = v22;
        if ([v13 count] > 4)
        {
          break;
        }
      }

      if (v16 == ++v19)
      {
        v16 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v16)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if ([v13 count])
  {
    v24 = *(a1 + 32);
    v25 = [v4 anyNode];
    [v24 setObject:v13 forKey:v25];
  }
}

+ (unint64_t)numberOfPotentialMemoriesForGraph:(id)graph
{
  v4 = [PGGraphPersonNodeCollection personNodesExcludingMeInGraph:graph];
  v5 = [self earlyMomentNodesByPersonNodeWithPersonNodes:v4];
  v6 = [v5 count];

  return v6;
}

@end