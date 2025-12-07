@interface PGMemoryElector
+ (int64_t)compareMemoryCategoryForMemory:(id)memory toOtherMemory:(id)otherMemory;
- (BOOL)_memoryContainsNegativeFeedbackPets:(id)pets;
- (BOOL)_shouldCheckForSuggestionCollisionsForTriggeredMemory:(id)memory;
- (PGMemoryElector)initWithWorkingContext:(id)context userFeedbackCalculator:(id)calculator;
- (double)_contentScoreWeightForNewMemoryFocusWithCategory:(unint64_t)category;
- (id)_requestedEnrichedMemoriesWithConfiguration:(id)configuration graph:(id)graph;
- (id)electAndEnrichSortedTriggeredMemories:(id)memories alreadyEnrichedMemories:(id)enrichedMemories targetNumberOfMemories:(unint64_t)ofMemories configuration:(id)configuration graph:(id)graph planner:(id)planner context:(id)context progressReporter:(id)self0;
- (id)filterAndSortTriggeredMemories:(id)memories withPlanner:(id)planner context:(id)context configuration:(id)configuration progressReporter:(id)reporter;
- (id)generateEnrichedMemoriesWithConfiguration:(id)configuration graph:(id)graph plannerPastSource:(id)source plannerFutureSource:(id)futureSource progressReporter:(id)reporter;
- (id)generateEnrichedMemoriesWithConfiguration:(id)configuration graph:(id)graph progressReporter:(id)reporter;
- (unint64_t)targetNumberOfMemoriesFromConfigurator:(id)configurator graph:(id)graph context:(id)context;
- (void)persistEnrichedMemories:(id)memories pendingState:(unsigned __int16)state graph:(id)graph progressReporter:(id)reporter;
@end

@implementation PGMemoryElector

- (void)persistEnrichedMemories:(id)memories pendingState:(unsigned __int16)state graph:(id)graph progressReporter:(id)reporter
{
  stateCopy = state;
  v20 = *MEMORY[0x277D85DE8];
  reporterCopy = reporter;
  graphCopy = graph;
  memoriesCopy = memories;
  v13 = [[PGMemoryPhotoKitPersister alloc] initWithPhotoLibrary:self->_photoLibrary];
  v17 = 0;
  v14 = [(PGMemoryPhotoKitPersister *)v13 memoryLocalIdentifiersFromPersistingEnrichedMemories:memoriesCopy withPendingState:stateCopy graph:graphCopy progressReporter:reporterCopy error:&v17];

  v15 = v17;
  if (!v14)
  {
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v15;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGMemoryElector] error persisting enriched memories %@", buf, 0xCu);
    }
  }
}

- (id)_requestedEnrichedMemoriesWithConfiguration:(id)configuration graph:(id)graph
{
  v87 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  graphCopy = graph;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = [[PGGraphLocationHelper alloc] initWithGraph:graphCopy];
  v10 = [[PGMemoryCurationSession alloc] initWithCurationManager:self->_curationManager photoLibrary:self->_photoLibrary curationContext:self->_curationContext locationHelper:v9];
  v11 = [PGEnrichedMemoryFactory alloc];
  selfCopy = self;
  serviceManager = [(PGManagerWorkingContext *)self->_workingContext serviceManager];
  v70 = v10;
  v72 = [(PGEnrichedMemoryFactory *)v11 initWithMemoryCurationSession:v10 graph:graphCopy serviceManager:serviceManager];

  requestedMemoryCategory = [configurationCopy requestedMemoryCategory];
  requestedUniqueMemoryIdentifier = [configurationCopy requestedUniqueMemoryIdentifier];
  v15 = requestedMemoryCategory | [requestedUniqueMemoryIdentifier length];

  requestedTriggerType = [configurationCopy requestedTriggerType];
  if (!v15)
  {
LABEL_10:
    if (requestedTriggerType)
    {
      v67 = v9;
      v36 = v8;
      v37 = [PGMemoryContext alloc];
      localDate = [configurationCopy localDate];
      timeZone = [configurationCopy timeZone];
      v40 = [(PGMemoryContext *)v37 initWithLocalDate:localDate timeZone:timeZone photoLibrary:selfCopy->_photoLibrary];

      v65 = [[PGMemoryMomentNodesWithBlockedFeatureCache alloc] initWithUserFeedbackCalculator:selfCopy->_userFeedbackCalculator loggingConnection:selfCopy->_loggingConnection];
      v41 = [[PGMemoryTriggerHandler alloc] initWithWorkingContext:selfCopy->_workingContext momentNodesWithBlockedFeatureCache:v65];
      requestedTriggerType2 = [configurationCopy requestedTriggerType];
      ignoreProgress = [MEMORY[0x277D22C80] ignoreProgress];
      v64 = v41;
      v66 = v40;
      v69 = graphCopy;
      v44 = [(PGMemoryTriggerHandler *)v41 allTriggeredMemoriesWithContext:v40 forTriggerType:requestedTriggerType2 inGraph:graphCopy progressReporter:ignoreProgress];

      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v45 = v44;
      v46 = [v45 countByEnumeratingWithState:&v73 objects:v81 count:16];
      if (v46)
      {
        v47 = v46;
        v48 = *v74;
        do
        {
          for (i = 0; i != v47; ++i)
          {
            if (*v74 != v48)
            {
              objc_enumerationMutation(v45);
            }

            v50 = *(*(&v73 + 1) + 8 * i);
            v51 = objc_autoreleasePoolPush();
            ignoreProgress2 = [MEMORY[0x277D22C80] ignoreProgress];
            v53 = [(PGEnrichedMemoryFactory *)v72 enrichedMemoryWithTriggeredMemory:v50 withConfiguration:configurationCopy progressReporter:ignoreProgress2];

            if (v53)
            {
              [v36 addObject:v53];
            }

            objc_autoreleasePoolPop(v51);
          }

          v47 = [v45 countByEnumeratingWithState:&v73 objects:v81 count:16];
        }

        while (v47);
      }

      v8 = v36;
      v9 = v67;
      graphCopy = v69;
    }

    if ([configurationCopy shouldPersist])
    {
      pendingState = [configurationCopy pendingState];
      ignoreProgress3 = [MEMORY[0x277D22C80] ignoreProgress];
      [(PGMemoryElector *)selfCopy persistEnrichedMemories:v8 pendingState:pendingState graph:graphCopy progressReporter:ignoreProgress3];
    }

    v56 = v8;
    goto LABEL_24;
  }

  v17 = [(MAElementCollection *)[PGGraphMemoryNodeCollection alloc] initWithGraph:graphCopy];
  if (!requestedMemoryCategory)
  {
LABEL_7:
    requestedUniqueMemoryIdentifier2 = [configurationCopy requestedUniqueMemoryIdentifier];
    v29 = [requestedUniqueMemoryIdentifier2 length];

    if (v29)
    {
      requestedUniqueMemoryIdentifier3 = [configurationCopy requestedUniqueMemoryIdentifier];
      v82 = requestedUniqueMemoryIdentifier3;
      [MEMORY[0x277CBEA60] arrayWithObjects:&v82 count:1];
      v31 = configurationCopy;
      v33 = v32 = v8;
      v34 = [PGGraphMemoryNodeCollection memoryNodesWithUniqueIdentifierArray:v33 inGraph:graphCopy];
      v35 = [(MAElementCollection *)v17 collectionByFormingUnionWith:v34];

      v8 = v32;
      configurationCopy = v31;

      v17 = v35;
    }

    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = __69__PGMemoryElector__requestedEnrichedMemoriesWithConfiguration_graph___block_invoke;
    v77[3] = &unk_278889020;
    v78 = configurationCopy;
    v79 = v72;
    v80 = v8;
    [(MANodeCollection *)v17 enumerateNodesUsingBlock:v77];

    goto LABEL_10;
  }

  v18 = +[PGGraphMemoryNodeCollection memoryNodesOfCategory:inGraph:](PGGraphMemoryNodeCollection, "memoryNodesOfCategory:inGraph:", [configurationCopy requestedMemoryCategory], graphCopy);
  v19 = [(MAElementCollection *)v17 collectionByFormingUnionWith:v18];

  requestedFeature = [configurationCopy requestedFeature];
  v21 = requestedFeature;
  if (!requestedFeature)
  {
LABEL_6:

    v17 = v19;
    goto LABEL_7;
  }

  v22 = [requestedFeature nodeInGraph:graphCopy];
  if (v22)
  {
    v23 = v22;
    v24 = [(MANodeCollection *)[PGGraphFeatureNodeCollection alloc] initWithNode:v22];
    [(PGGraphFeatureNodeCollection *)v24 memoryNodes];
    v25 = configurationCopy;
    v27 = v26 = v8;
    v68 = [(MAElementCollection *)v19 collectionByIntersecting:v27];

    v8 = v26;
    configurationCopy = v25;

    v19 = v68;
    goto LABEL_6;
  }

  loggingConnection = selfCopy->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
  {
    v59 = loggingConnection;
    type = [v21 type];
    [v21 name];
    v61 = configurationCopy;
    v63 = v62 = v8;
    *buf = 67109378;
    v84 = type;
    v85 = 2112;
    v86 = v63;
    _os_log_error_impl(&dword_22F0FC000, v59, OS_LOG_TYPE_ERROR, "[PGMemoryElector] Error fetching graph node for feature of type %d, name %@", buf, 0x12u);

    v8 = v62;
    configurationCopy = v61;
  }

  v56 = MEMORY[0x277CBEBF8];
LABEL_24:

  return v56;
}

void __69__PGMemoryElector__requestedEnrichedMemoriesWithConfiguration_graph___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [PGTriggeredMemory alloc];
  v5 = [*(a1 + 32) localDate];
  v6 = [(PGTriggeredMemory *)v4 initWithMemoryNode:v11 validityIntervalByTriggerType:MEMORY[0x277CBEC10] creationDate:v5];

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = [MEMORY[0x277D22C80] ignoreProgress];
  v10 = [v7 enrichedMemoryWithTriggeredMemory:v6 withConfiguration:v8 progressReporter:v9];

  if (v10)
  {
    [*(a1 + 48) addObject:v10];
  }

  objc_autoreleasePoolPop(v3);
}

- (id)electAndEnrichSortedTriggeredMemories:(id)memories alreadyEnrichedMemories:(id)enrichedMemories targetNumberOfMemories:(unint64_t)ofMemories configuration:(id)configuration graph:(id)graph planner:(id)planner context:(id)context progressReporter:(id)self0
{
  v109 = *MEMORY[0x277D85DE8];
  memoriesCopy = memories;
  enrichedMemoriesCopy = enrichedMemories;
  configurationCopy = configuration;
  graphCopy = graph;
  plannerCopy = planner;
  contextCopy = context;
  reporterCopy = reporter;
  v63 = graphCopy;
  v56 = [[PGGraphLocationHelper alloc] initWithGraph:graphCopy];
  v64 = [[PGMemoryCurationSession alloc] initWithCurationManager:self->_curationManager photoLibrary:self->_photoLibrary curationContext:self->_curationContext locationHelper:v56];
  v17 = [PGEnrichedMemoryFactory alloc];
  serviceManager = [(PGManagerWorkingContext *)self->_workingContext serviceManager];
  v66 = [(PGEnrichedMemoryFactory *)v17 initWithMemoryCurationSession:v64 graph:v63 serviceManager:serviceManager];

  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = ofMemories;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[MemoryElector] targetNumberOfMemories: %d", buf, 8u);
  }

  if (!ofMemories)
  {
    v58 = MEMORY[0x277CBEBF8];
    goto LABEL_38;
  }

  v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v21 = enrichedMemoriesCopy;
  v22 = [v21 countByEnumeratingWithState:&v97 objects:v108 count:16];
  if (v22)
  {
    v23 = *v98;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v98 != v23)
        {
          objc_enumerationMutation(v21);
        }

        keyAssetUUID = [*(*(&v97 + 1) + 8 * i) keyAssetUUID];
        if (keyAssetUUID)
        {
          [v20 addObject:keyAssetUUID];
        }
      }

      v22 = [v21 countByEnumeratingWithState:&v97 objects:v108 count:16];
    }

    while (v22);
  }

  maximumNumberOfMemoriesWithGuestAssets = [configurationCopy maximumNumberOfMemoriesWithGuestAssets];
  *buf = 0;
  v105 = buf;
  v106 = 0x2020000000;
  v107 = 0;
  v68 = reporterCopy;
  v93 = 0;
  v94 = &v93;
  v95 = 0x2020000000;
  v96 = 0;
  v26 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v21];
  v27 = [memoriesCopy mutableCopy];
  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions setPersonContext:1];
  [librarySpecificFetchOptions setIncludedDetectionTypes:&unk_284486708];
  v62 = librarySpecificFetchOptions;
  v29 = self->_loggingConnection;
  v30 = os_signpost_id_generate(v29);
  v31 = v29;
  v32 = v31;
  spid = v30;
  v54 = v30 - 1;
  if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
  {
    *v88 = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v32, OS_SIGNPOST_INTERVAL_BEGIN, v30, "MemoryElectionElectAndEnrich", "", v88, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v52 = mach_absolute_time();
  *v88 = 0;
  v89 = v88;
  v90 = 0x2020000000;
  v91 = 0;
  v33 = 0.0;
  v34 = MEMORY[0x277D86220];
  v58 = MEMORY[0x277CBEBF8];
  while ([v26 count] < ofMemories && objc_msgSend(v27, "count") && v33 <= 1.0)
  {
    v35 = objc_autoreleasePoolPush();
    v36 = v32;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v42 = [v26 count];
      v43 = [v27 count];
      *v102 = 134218496;
      *&v102[4] = v42;
      *&v102[12] = 2048;
      *&v102[14] = v43;
      *&v102[22] = 2048;
      v103 = *&v33;
      _os_log_debug_impl(&dword_22F0FC000, v36, OS_LOG_TYPE_DEBUG, "electedEnrichedMemories: %lu, sortedRemainingTriggeredMemories: %lu, currentCommonalityThreshold: %.3f", v102, 0x20u);
    }

    if (*(v94 + 24) == 1)
    {
      *(v94 + 24) = 1;
LABEL_25:
      v38 = 1;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *v102 = 67109378;
        *&v102[4] = 533;
        *&v102[8] = 2080;
        *&v102[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGMemoryElector.m";
        _os_log_impl(&dword_22F0FC000, v34, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v102, 0x12u);
      }

      goto LABEL_28;
    }

    v37 = [v68 isCancelledWithProgress:*(v89 + 3)];
    *(v94 + 24) = v37;
    if (v37)
    {
      goto LABEL_25;
    }

    *v102 = 0;
    *&v102[8] = v102;
    *&v102[16] = 0x2020000000;
    v103 = 0x7FEFFFFFFFFFFFFFLL;
    v39 = objc_alloc_init(MEMORY[0x277CCAB58]);
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __157__PGMemoryElector_electAndEnrichSortedTriggeredMemories_alreadyEnrichedMemories_targetNumberOfMemories_configuration_graph_planner_context_progressReporter___block_invoke;
    v69[3] = &unk_278888FF8;
    v70 = v26;
    v40 = v39;
    v71 = v40;
    v72 = plannerCopy;
    v41 = v36;
    v84 = v33;
    v73 = v41;
    v80 = v102;
    v81 = &v93;
    v74 = v68;
    v82 = v88;
    v75 = v66;
    v76 = configurationCopy;
    v83 = buf;
    v85 = maximumNumberOfMemoriesWithGuestAssets;
    v77 = v20;
    v78 = v62;
    selfCopy = self;
    v86 = 1.0 / ofMemories;
    ofMemoriesCopy = ofMemories;
    [v27 enumerateObjectsUsingBlock:v69];
    v33 = *(*&v102[8] + 24);
    [v27 removeObjectsAtIndexes:v40];

    _Block_object_dispose(v102, 8);
    v38 = 0;
LABEL_28:
    objc_autoreleasePoolPop(v35);
    if (v38)
    {
      goto LABEL_36;
    }
  }

  v44 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v47 = v32;
  v48 = v47;
  if (v54 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v47))
  {
    *v102 = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v48, OS_SIGNPOST_INTERVAL_END, spid, "MemoryElectionElectAndEnrich", "", v102, 2u);
  }

  if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
  {
    *v102 = 136315394;
    *&v102[4] = "MemoryElectionElectAndEnrich";
    *&v102[12] = 2048;
    *&v102[14] = ((((v44 - v52) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v48, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v102, 0x16u);
  }

  v49 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"score" ascending:0];
  v101 = v49;
  v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v101 count:1];
  [v26 sortUsingDescriptors:v50];

  v58 = v26;
LABEL_36:
  _Block_object_dispose(v88, 8);

  _Block_object_dispose(&v93, 8);
  _Block_object_dispose(buf, 8);

LABEL_38:

  return v58;
}

void __157__PGMemoryElector_electAndEnrichSortedTriggeredMemories_alreadyEnrichedMemories_targetNumberOfMemories_configuration_graph_planner_context_progressReporter___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v77 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = objc_autoreleasePoolPush();
  if (![PGMemoryPlanner canElectTriggeredMemory:v7 withAlreadyElectedMemories:*(a1 + 32)])
  {
    [*(a1 + 40) addIndex:a3];
    goto LABEL_48;
  }

  v58 = a4;
  v60 = v8;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v9 = *(a1 + 32);
  v10 = [v9 countByEnumeratingWithState:&v66 objects:v76 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v67;
    v13 = 1.79769313e308;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v67 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v66 + 1) + 8 * i);
        [*(a1 + 48) commonalityScoreComparingMemory:v7 toAlreadyElectedMemory:v15];
        v17 = v16;
        v18 = *(a1 + 56);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v19 = *(a1 + 144);
          v20 = *(*(*(a1 + 112) + 8) + 24);
          *buf = 134218496;
          v71 = *&v17;
          v72 = 2048;
          v73 = v19;
          v74 = 2048;
          v75 = v20;
          _os_log_debug_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_DEBUG, "commonalityScore: %.3f, currentCommonalityThreshold: %.3f, lowestCommonality: %.3f", buf, 0x20u);
        }

        if (v17 > *(a1 + 144))
        {
          *(*(*(a1 + 112) + 8) + 24) = fmin(*(*(*(a1 + 112) + 8) + 24), v17);
          v21 = *(a1 + 56);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            v52 = v21;
            v53 = [v7 uniqueMemoryIdentifier];
            [v15 uniqueMemoryIdentifier];
            v54 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            *buf = 138412546;
            v71 = v53;
            v72 = 2112;
            v73 = v54;
            _os_log_debug_impl(&dword_22F0FC000, v52, OS_LOG_TYPE_DEBUG, "tooMuchOverlapWithElectedMemory: %@ - %@", buf, 0x16u);
          }

          goto LABEL_47;
        }

        v13 = fmin(v13, v17);
      }

      v11 = [v9 countByEnumeratingWithState:&v66 objects:v76 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v13 = 1.79769313e308;
  }

  *(*(*(a1 + 112) + 8) + 24) = fmin(*(*(*(a1 + 112) + 8) + 24), v13);
  v22 = MEMORY[0x277D22C80];
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __157__PGMemoryElector_electAndEnrichSortedTriggeredMemories_alreadyEnrichedMemories_targetNumberOfMemories_configuration_graph_planner_context_progressReporter___block_invoke_255;
  v62[3] = &unk_278888FD0;
  v64 = *(a1 + 120);
  v23 = *(a1 + 64);
  v24 = *(a1 + 128);
  v63 = v23;
  v65 = v24;
  v25 = [v22 progressReporterWithProgressBlock:v62];
  v26 = [*(a1 + 72) enrichedMemoryWithTriggeredMemory:v7 withConfiguration:*(a1 + 80) progressReporter:v25];
  [*(a1 + 40) addIndex:a3];
  if (v26)
  {
    v27 = [v26 featuresGuestAssets];
    if (!v27 || (v28 = *(*(*(a1 + 136) + 8) + 24), v29 = *(a1 + 152), *&v28 < v29))
    {
      v30 = [v26 keyAssetUUID];
      if (v30)
      {
        if ([*(a1 + 88) containsObject:v30])
        {
          v31 = *(a1 + 56);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v71 = v26;
            _os_log_impl(&dword_22F0FC000, v31, OS_LOG_TYPE_DEFAULT, "[PGMemoryElector] Discarding %@: key asset already used.", buf, 0xCu);
          }

LABEL_45:

          goto LABEL_46;
        }

        [*(a1 + 88) addObject:v30];
      }

      v57 = v27;
      v59 = v30;
      v33 = *(a1 + 56);
      v34 = os_signpost_id_generate(v33);
      v35 = v33;
      v36 = v35;
      v37 = v34 - 1;
      if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v36, OS_SIGNPOST_INTERVAL_BEGIN, v34, "MemoryElectionUserFeedback", "", buf, 2u);
      }

      spid = v34;

      info = 0;
      mach_timebase_info(&info);
      v56 = mach_absolute_time();
      v38 = MEMORY[0x277CD9938];
      v39 = [v26 curatedAssetUUIDs];
      v40 = [v38 fetchVerifiedPersonUUIDsGroupedByAssetUUIDForAssetUUIDs:v39 options:*(a1 + 96)];

      v41 = *(*(a1 + 104) + 40);
      v42 = [v40 allKeys];
      v43 = [v26 keyAssetUUID];
      [v41 scoreForAssetUUIDs:v42 keyAssetUUID:v43 personsUUIDsByAssetUUIDs:v40 memoryFeatures:0];
      v45 = v44;

      v46 = mach_absolute_time();
      v47 = info;
      v48 = v36;
      v49 = v48;
      if (v37 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v49, OS_SIGNPOST_INTERVAL_END, spid, "MemoryElectionUserFeedback", "", buf, 2u);
      }

      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v71 = "MemoryElectionUserFeedback";
        v72 = 2048;
        v73 = ((((v46 - v56) * v47.numer) / v47.denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v49, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }

      v30 = v59;
      if (([MEMORY[0x277CD99F8] score:v45 meetsScoreThreshold:{*MEMORY[0x277CD9CD0], spid}] & 1) == 0)
      {
        [*(a1 + 32) addObject:v26];
        if (v57)
        {
          v50 = ++*(*(*(a1 + 136) + 8) + 24);
          if (v50 == *(a1 + 152))
          {
            v51 = *(a1 + 56);
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              v71 = v50;
              _os_log_impl(&dword_22F0FC000, v51, OS_LOG_TYPE_DEFAULT, "[PGMemoryElector] Reached maximumNumberOfMemoriesWithGuestAssets %lu: mutating configuration to disallow guest asset.", buf, 0xCu);
            }

            [*(a1 + 80) setAllowGuestAsset:0];
          }
        }

        *(*(*(a1 + 128) + 8) + 24) = *(a1 + 160) + *(*(*(a1 + 128) + 8) + 24);
        if ([*(a1 + 32) count] == *(a1 + 168))
        {
          *v58 = 1;
        }
      }

      goto LABEL_45;
    }

    v32 = *(a1 + 56);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v71 = v26;
      v72 = 2048;
      v73 = v28;
      v74 = 2048;
      v75 = v29;
      _os_log_error_impl(&dword_22F0FC000, v32, OS_LOG_TYPE_ERROR, "[PGMemoryElector] Discarding %@: maximumNumberOfMemoriesWithGuestAssets %lu is at the limit %lu.", buf, 0x20u);
    }
  }

LABEL_46:

LABEL_47:
  v8 = v60;
LABEL_48:
  objc_autoreleasePoolPop(v8);
}

uint64_t __157__PGMemoryElector_electAndEnrichSortedTriggeredMemories_alreadyEnrichedMemories_targetNumberOfMemories_configuration_graph_planner_context_progressReporter___block_invoke_255(uint64_t a1, _BYTE *a2)
{
  v4 = *(*(a1 + 40) + 8);
  if (*(v4 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:*(*(*(a1 + 48) + 8) + 24)];
    v4 = *(*(a1 + 40) + 8);
  }

  *(v4 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

- (unint64_t)targetNumberOfMemoriesFromConfigurator:(id)configurator graph:(id)graph context:(id)context
{
  contextCopy = context;
  graphCopy = graph;
  configuratorCopy = configurator;
  v10 = +[(PGGraphNodeCollection *)PGGraphMemoryNodeCollection];
  v11 = [graphCopy numberOfNodesMatchingFilter:v10];

  v12 = [configuratorCopy targetNumberOfMemoriesWithMemoryContext:contextCopy totalNumberOfMemoryNodes:v11 referenceNumberOfDays:{objc_msgSend(configuratorCopy, "numberOfDaysToLookInPast")}];
  return v12;
}

- (BOOL)_shouldCheckForSuggestionCollisionsForTriggeredMemory:(id)memory
{
  memoryCopy = memory;
  memoryCategory = [memoryCopy memoryCategory];
  if (memoryCategory > 0x13 || ((1 << memoryCategory) & 0x90002) == 0)
  {
    memoryMomentNodes = [memoryCopy memoryMomentNodes];
    v9 = [memoryMomentNodes count];

    if (v9 == 1)
    {
      loggingConnection = self->_loggingConnection;
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_FAULT))
      {
        *v12 = 0;
        _os_log_fault_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_FAULT, "[PGMemoryElector] Triggered memory has only one moment but isn't of type single moment or meaningful event. Please update [PGMemoryElector _shouldCheckForSuggestionCollisionsForTriggeredMemory:]", v12, 2u);
      }
    }

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (double)_contentScoreWeightForNewMemoryFocusWithCategory:(unint64_t)category
{
  result = 1.0;
  if (category - 25 >= 6 && category != 10)
  {
    return 0.5;
  }

  return result;
}

- (BOOL)_memoryContainsNegativeFeedbackPets:(id)pets
{
  v21 = *MEMORY[0x277D85DE8];
  petsCopy = pets;
  memoryFeatureNodes = [petsCopy memoryFeatureNodes];
  v6 = [(PGGraphNodeCollection *)PGGraphPetNodeCollection subsetInCollection:memoryFeatureNodes];

  if ([v6 count] != 1)
  {
    goto LABEL_8;
  }

  v7 = MEMORY[0x277CD9918];
  localIdentifiers = [v6 localIdentifiers];
  anyObject = [localIdentifiers anyObject];
  v10 = [v7 uuidFromLocalIdentifier:anyObject];

  if (![v10 length] || (-[PHUserFeedbackCalculator userFeedbackTypeForPersonUUID:](self->_userFeedbackCalculator, "userFeedbackTypeForPersonUUID:", v10) & 0xFFFFFFFFFFFFFFFELL) != 2)
  {

LABEL_8:
    v15 = 0;
    goto LABEL_9;
  }

  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    v12 = MEMORY[0x277CD98D8];
    v13 = loggingConnection;
    v14 = [v12 stringForCategory:{objc_msgSend(petsCopy, "memoryCategory")}];
    v17 = 138412546;
    v18 = v14;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_DEFAULT, "[PGMemoryElector] Not considering to elect memory of category %@ featuring pets with uuid %@", &v17, 0x16u);
  }

  v15 = 1;
LABEL_9:

  return v15;
}

- (id)filterAndSortTriggeredMemories:(id)memories withPlanner:(id)planner context:(id)context configuration:(id)configuration progressReporter:(id)reporter
{
  v151 = *MEMORY[0x277D85DE8];
  memoriesCopy = memories;
  plannerCopy = planner;
  contextCopy = context;
  configurationCopy = configuration;
  v104 = memoriesCopy;
  reporterCopy = reporter;
  if (![memoriesCopy count])
  {
    v91 = MEMORY[0x277CBEBF8];
    goto LABEL_90;
  }

  selfCopy = self;
  v13 = self->_loggingConnection;
  v14 = os_signpost_id_generate(v13);
  v15 = v13;
  v16 = v15;
  spid = v14;
  v95 = v14 - 1;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "MemoryElectionFilterAndSortFilter", "", buf, 2u);
  }

  v98 = v16;

  info = 0;
  mach_timebase_info(&info);
  v93 = mach_absolute_time();
  v103 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:0];
  v102 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:0];
  v101 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:0];
  v100 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:0];
  numberOfDaysSinceMemoryUpgrade = [contextCopy numberOfDaysSinceMemoryUpgrade];
  numberOfDaysToFocusOnNewMemoryTypes = [configurationCopy numberOfDaysToFocusOnNewMemoryTypes];
  v99 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:0];
  v17 = objc_alloc(MEMORY[0x277CBEB98]);
  v18 = [(PGRemoteConfiguration *)self->_remoteConfiguration arrayValueForKey:@"com.apple.photos.memories.election.blockedMemoryCategorySubcategories" withFallbackValue:MEMORY[0x277CBEBF8]];
  v110 = [v17 initWithArray:v18];

  v111 = reporterCopy;
  *buf = 0;
  v143 = buf;
  v144 = 0x2020000000;
  v145 = 0;
  v138 = 0;
  v139 = &v138;
  v140 = 0x2020000000;
  v141 = 0;
  v19 = [memoriesCopy count];
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v20 = memoriesCopy;
  v21 = [v20 countByEnumeratingWithState:&v134 objects:v150 count:16];
  if (!v21)
  {
    goto LABEL_65;
  }

  v22 = 0.5 / v19;
  v115 = *v135;
  obj = v20;
  while (2)
  {
    v116 = v21;
    for (i = 0; i != v116; ++i)
    {
      if (*v135 != v115)
      {
        objc_enumerationMutation(obj);
      }

      v24 = *(*(&v134 + 1) + 8 * i);
      context = objc_autoreleasePoolPush();
      v139[3] = v22 + v139[3];
      if (v143[24])
      {
        v143[24] = 1;
LABEL_13:
        v27 = 1;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *v148 = 67109378;
          *v149 = 212;
          *&v149[4] = 2080;
          *&v149[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGMemoryElector.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v148, 0x12u);
        }

        goto LABEL_61;
      }

      v25 = [v111 isCancelledWithProgress:?];
      p_isa = &selfCopy->super.isa;
      v143[24] = v25;
      if (v25)
      {
        goto LABEL_13;
      }

      if ([v110 count])
      {
        v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v24, "memoryCategorySubcategory")}];
        v29 = [v110 containsObject:v28];

        p_isa = &selfCopy->super.isa;
        if (v29)
        {
          v30 = selfCopy->_loggingConnection;
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            uniqueMemoryIdentifier = [v24 uniqueMemoryIdentifier];
            memoryCategorySubcategory = [v24 memoryCategorySubcategory];
            *v148 = 138478083;
            *v149 = uniqueMemoryIdentifier;
            *&v149[8] = 2048;
            *&v149[10] = memoryCategorySubcategory;
            _os_log_impl(&dword_22F0FC000, v30, OS_LOG_TYPE_INFO, "[PGMemoryElector] Not considering to elect memory %{private}@ of type %lu because it is blocked", v148, 0x16u);
          }

          goto LABEL_23;
        }
      }

      if (![plannerCopy tooSoonToElectMemory:v24])
      {
        collidableSuggestions = [configurationCopy collidableSuggestions];
        if ([collidableSuggestions count])
        {
          v34 = [p_isa _shouldCheckForSuggestionCollisionsForTriggeredMemory:v24];

          if (!v34)
          {
            goto LABEL_39;
          }

          memoryMomentNodes = [v24 memoryMomentNodes];
          collidableSuggestions = [memoryMomentNodes universalDateInterval];

          startDate = [collidableSuggestions startDate];
          endDate = [collidableSuggestions endDate];
          v132 = 0u;
          v133 = 0u;
          v131 = 0u;
          v130 = 0u;
          collidableSuggestions2 = [configurationCopy collidableSuggestions];
          v38 = [collidableSuggestions2 countByEnumeratingWithState:&v130 objects:v147 count:16];
          if (v38)
          {
            v39 = *v131;
            while (2)
            {
              for (j = 0; j != v38; ++j)
              {
                if (*v131 != v39)
                {
                  objc_enumerationMutation(collidableSuggestions2);
                }

                v41 = *(*(&v130 + 1) + 8 * j);
                universalEndDate = [v41 universalEndDate];
                if ([startDate compare:universalEndDate] == 1)
                {
                }

                else
                {
                  universalStartDate = [v41 universalStartDate];
                  v44 = [endDate compare:universalStartDate] == -1;

                  if (!v44)
                  {

                    loggingConnection = selfCopy->_loggingConnection;
                    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
                    {
                      *v148 = 138412546;
                      *v149 = startDate;
                      *&v149[8] = 2112;
                      *&v149[10] = endDate;
                      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGMemoryElector] Not considering to elect memory with moment nodes start date %@ and end date %@ because it collides with a suggestion", v148, 0x16u);
                    }

                    goto LABEL_24;
                  }
                }
              }

              v38 = [collidableSuggestions2 countByEnumeratingWithState:&v130 objects:v147 count:16];
              if (v38)
              {
                continue;
              }

              break;
            }
          }
        }

LABEL_39:
        memoryCategory = [v24 memoryCategory];
        memoryFeatureNodes = [v24 memoryFeatureNodes];
        v47 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:memoryFeatureNodes];

        v48 = [v47 count];
        v49 = selfCopy;
        if (v48 == 1)
        {
          uuids = [v47 uuids];
          anyObject = [uuids anyObject];

          if ([anyObject length] && (-[PHUserFeedbackCalculator userFeedbackTypeForPersonUUID:](selfCopy->_userFeedbackCalculator, "userFeedbackTypeForPersonUUID:", anyObject) & 0xFFFFFFFFFFFFFFFELL) == 2)
          {
            v52 = selfCopy->_loggingConnection;
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
            {
              v53 = [MEMORY[0x277CD98D8] stringForCategory:memoryCategory];
              *v148 = 138412546;
              *v149 = v53;
              *&v149[8] = 2112;
              *&v149[10] = anyObject;
              _os_log_impl(&dword_22F0FC000, v52, OS_LOG_TYPE_DEFAULT, "[PGMemoryElector] Not considering to elect memory of category %@ featuring persons with uuid %@", v148, 0x16u);
            }

            v27 = 3;
            goto LABEL_59;
          }

          v49 = selfCopy;
        }

        if ([(PGMemoryElector *)v49 _memoryContainsNegativeFeedbackPets:v24])
        {
          v27 = 3;
LABEL_60:

          goto LABEL_61;
        }

        memoryFeatureNodes2 = [v24 memoryFeatureNodes];
        memoryMomentNodes2 = [v24 memoryMomentNodes];
        anyObject = [PGMemoryFeatureBlocking blockableFeaturesForFeatureNodes:memoryFeatureNodes2 momentNodes:memoryMomentNodes2 memoryCategory:memoryCategory];

        [v24 setBlockableFeatures:anyObject];
        v52 = [(PHUserFeedbackCalculator *)selfCopy->_userFeedbackCalculator memoryFeaturesWithNegativeFeedbackForMemoryFeatures:anyObject];
        if ([v52 count])
        {
          v56 = selfCopy->_loggingConnection;
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            v57 = [MEMORY[0x277CD98D8] stringForCategory:memoryCategory];
            *v148 = 138412546;
            *v149 = v57;
            *&v149[8] = 2112;
            *&v149[10] = v52;
            _os_log_impl(&dword_22F0FC000, v56, OS_LOG_TYPE_DEFAULT, "[PGMemoryElector] Not considering to elect memory of category %@ because it contains blocked features %@", v148, 0x16u);
          }

          v27 = 3;
        }

        else
        {
          [PGMemoryTriggerHandler triggerScoreForTriggeredMemory:v24];
          v60 = v59;
          v61 = [MEMORY[0x277CCABB0] numberWithDouble:?];
          [v103 setObject:v61 forKey:v24];

          [plannerCopy collisionScoreForMemory:v24];
          v63 = v62;
          v64 = [MEMORY[0x277CCABB0] numberWithDouble:?];
          [v102 setObject:v64 forKey:v24];

          [plannerCopy avoidScoreForMemory:v24];
          v65 = [MEMORY[0x277CCABB0] numberWithDouble:?];
          [v101 setObject:v65 forKey:v24];

          memoryMomentNodes3 = [v24 memoryMomentNodes];
          [memoryMomentNodes3 averageContentScore];
          v68 = v67;

          if (numberOfDaysSinceMemoryUpgrade <= numberOfDaysToFocusOnNewMemoryTypes)
          {
            [(PGMemoryElector *)selfCopy _contentScoreWeightForNewMemoryFocusWithCategory:memoryCategory];
            v68 = v68 * v69;
          }

          v70 = [MEMORY[0x277CCABB0] numberWithDouble:v68];
          [v100 setObject:v70 forKey:v24];

          [v24 setElectionScore:v60 + v63 * 0.01 + v68 * 0.001];
          validityIntervalByTriggerType = [v24 validityIntervalByTriggerType];
          v72 = [PGMemoryTriggerHandler maximumValidityPeriodForValidityIntervalByTriggerType:validityIntervalByTriggerType context:contextCopy];

          v56 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v72];
          [v99 setObject:v56 forKey:v24];
          v27 = 0;
        }

LABEL_59:
        goto LABEL_60;
      }

      v30 = p_isa[3];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        uniqueMemoryIdentifier2 = [v24 uniqueMemoryIdentifier];
        *v148 = 138477827;
        *v149 = uniqueMemoryIdentifier2;
        _os_log_impl(&dword_22F0FC000, v30, OS_LOG_TYPE_INFO, "[PGMemoryElector] Not considering to elect memory %{private}@ because it is too soon since we last elected it", v148, 0xCu);
      }

LABEL_23:

LABEL_24:
      v27 = 3;
LABEL_61:
      objc_autoreleasePoolPop(context);
      if (v27 != 3 && v27)
      {
        v91 = MEMORY[0x277CBEBF8];
        goto LABEL_88;
      }
    }

    v20 = obj;
    v21 = [obj countByEnumeratingWithState:&v134 objects:v150 count:16];
    if (v21)
    {
      continue;
    }

    break;
  }

LABEL_65:

  v73 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v76 = v98;
  v77 = v76;
  if (v95 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v76))
  {
    *v148 = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v77, OS_SIGNPOST_INTERVAL_END, spid, "MemoryElectionFilterAndSortFilter", "", v148, 2u);
  }

  if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
  {
    *v148 = 136315394;
    *v149 = "MemoryElectionFilterAndSortFilter";
    *&v149[8] = 2048;
    *&v149[10] = ((((v73 - v93) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v77, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v148, 0x16u);
  }

  if ([v103 count])
  {
    v78 = [v103 count];
    v79 = selfCopy->_loggingConnection;
    v80 = os_signpost_id_generate(v79);
    v81 = v79;
    v82 = v81;
    if (v80 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v81))
    {
      *v148 = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v82, OS_SIGNPOST_INTERVAL_BEGIN, v80, "MemoryElectionFilterAndSortSort", "", v148, 2u);
    }

    v129 = 0;
    mach_timebase_info(&v129);
    v83 = mach_absolute_time();
    keyEnumerator = [v103 keyEnumerator];
    allObjects = [keyEnumerator allObjects];

    v118[0] = MEMORY[0x277D85DD0];
    v118[1] = 3221225472;
    v118[2] = __101__PGMemoryElector_filterAndSortTriggeredMemories_withPlanner_context_configuration_progressReporter___block_invoke;
    v118[3] = &unk_278888FA8;
    v128 = 0.5 / v78;
    v126 = &v138;
    v127 = buf;
    v119 = v111;
    v120 = v101;
    v121 = v102;
    v122 = v103;
    v123 = v99;
    v124 = selfCopy;
    v125 = v100;
    v86 = [allObjects sortedArrayUsingComparator:v118];
    v87 = mach_absolute_time();
    v88 = v129;
    v89 = v82;
    v90 = v89;
    if (v80 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v89))
    {
      *v148 = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v90, OS_SIGNPOST_INTERVAL_END, v80, "MemoryElectionFilterAndSortSort", "", v148, 2u);
    }

    obj = v90;

    if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
    {
      *v148 = 136315394;
      *v149 = "MemoryElectionFilterAndSortSort";
      *&v149[8] = 2048;
      *&v149[10] = ((((v87 - v83) * v88.numer) / v88.denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v90, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v148, 0x16u);
    }

    if (v143[24] == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v148 = 67109378;
        *v149 = 407;
        *&v149[4] = 2080;
        *&v149[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGMemoryElector.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v148, 0x12u);
      }

      v91 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v91 = v86;
    }

LABEL_88:
  }

  else
  {
    v91 = MEMORY[0x277CBEBF8];
  }

  _Block_object_dispose(&v138, 8);
  _Block_object_dispose(buf, 8);

LABEL_90:

  return v91;
}

uint64_t __101__PGMemoryElector_filterAndSortTriggeredMemories_withPlanner_context_configuration_progressReporter___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  *(*(*(a1 + 88) + 8) + 24) = *(a1 + 104) + *(*(*(a1 + 88) + 8) + 24);
  v7 = *(*(a1 + 96) + 8);
  if (*(v7 + 24))
  {
    v8 = 1;
  }

  else
  {
    v8 = [*(a1 + 32) isCancelledWithProgress:*(*(*(a1 + 88) + 8) + 24)];
    v7 = *(*(a1 + 96) + 8);
  }

  *(v7 + 24) = v8;
  v9 = [*(a1 + 40) objectForKey:v5];
  [v9 doubleValue];
  v11 = v10;

  v12 = [*(a1 + 40) objectForKey:v6];
  [v12 doubleValue];
  v14 = v13;

  if (v11 > 0.9 && v14 <= 0.9)
  {
    goto LABEL_6;
  }

  if (v14 > 0.9 && v11 <= 0.9)
  {
LABEL_9:
    v15 = -1;
    goto LABEL_10;
  }

  v17 = [*(a1 + 48) objectForKey:v5];
  [v17 doubleValue];
  v19 = v18;

  v20 = [*(a1 + 48) objectForKey:v6];
  [v20 doubleValue];
  v22 = v21;

  if (v19 >= 1.0 && v22 < v19)
  {
    goto LABEL_6;
  }

  if (v22 >= 1.0 && v19 < v22)
  {
    goto LABEL_9;
  }

  v23 = [*(a1 + 56) objectForKey:v5];
  [v23 doubleValue];
  v25 = v24;

  v26 = [*(a1 + 56) objectForKey:v6];
  [v26 doubleValue];
  v28 = v27;

  if (v25 == 1.0 && v28 < 1.0)
  {
    goto LABEL_9;
  }

  if (v28 == 1.0 && v25 < 1.0)
  {
    goto LABEL_6;
  }

  if (v25 != 0.0 && v28 != 0.0)
  {
    v29 = [*(a1 + 64) objectForKey:v5];
    v30 = [v29 unsignedIntegerValue];

    v31 = [*(a1 + 64) objectForKey:v6];
    v32 = [v31 unsignedIntegerValue];

    if (v30 > v32)
    {
      goto LABEL_6;
    }

    if (v32 > v30)
    {
      goto LABEL_9;
    }
  }

  if (v19 == 0.0 && v22 > 0.25)
  {
    goto LABEL_9;
  }

  if (v22 == 0.0 && v19 > 0.25)
  {
    goto LABEL_6;
  }

  if (v25 != 0.0 || v28 != 0.0)
  {
    if (v25 > v28)
    {
      goto LABEL_9;
    }

    if (v28 > v25)
    {
      goto LABEL_6;
    }
  }

  if ([v5 generatedWithFallbackRequirements] && !objc_msgSend(v6, "generatedWithFallbackRequirements"))
  {
    goto LABEL_6;
  }

  if ([v5 generatedWithFallbackRequirements] & 1) == 0 && (objc_msgSend(v6, "generatedWithFallbackRequirements"))
  {
    goto LABEL_9;
  }

  if ([v5 memoryCategory] == 9 && objc_msgSend(v6, "memoryCategory") != 9)
  {
LABEL_6:
    v15 = 1;
    goto LABEL_10;
  }

  if ([v5 memoryCategory] != 9 && objc_msgSend(v6, "memoryCategory") == 9)
  {
    goto LABEL_9;
  }

  v33 = [objc_opt_class() compareMemoryCategoryForMemory:v5 toOtherMemory:v6];
  v34 = -1;
  if (v19 >= v22)
  {
    v34 = 1;
  }

  if (v33)
  {
    v15 = v33;
  }

  else
  {
    v15 = v34;
  }

  if (!v33 && v19 >= v22 && v19 <= v22)
  {
    v35 = [*(a1 + 80) objectForKey:v5];
    [v35 doubleValue];
    v37 = v36;

    v38 = [*(a1 + 80) objectForKey:v6];
    [v38 doubleValue];
    v40 = v39;

    if (v37 <= v40)
    {
      if (v40 <= v37)
      {
        v41 = [v5 uniqueMemoryIdentifier];
        v42 = [v6 uniqueMemoryIdentifier];
        v15 = [v41 compare:v42];

        goto LABEL_10;
      }

      goto LABEL_6;
    }

    goto LABEL_9;
  }

LABEL_10:

  return v15;
}

- (id)generateEnrichedMemoriesWithConfiguration:(id)configuration graph:(id)graph plannerPastSource:(id)source plannerFutureSource:(id)futureSource progressReporter:(id)reporter
{
  v82 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  graphCopy = graph;
  sourceCopy = source;
  futureSourceCopy = futureSource;
  reporterCopy = reporter;
  if ([configurationCopy requestedMemoryCategory])
  {
    goto LABEL_5;
  }

  requestedUniqueMemoryIdentifier = [configurationCopy requestedUniqueMemoryIdentifier];
  if ([requestedUniqueMemoryIdentifier length])
  {

LABEL_5:
    v19 = [(PGMemoryElector *)self _requestedEnrichedMemoriesWithConfiguration:configurationCopy graph:graphCopy];
    goto LABEL_6;
  }

  requestedTriggerType = [configurationCopy requestedTriggerType];

  if (requestedTriggerType)
  {
    goto LABEL_5;
  }

  v21 = [objc_alloc(MEMORY[0x277D22C88]) initWithProgressReporter:reporterCopy];
  v75 = [v21 childProgressReporterToCheckpoint:0.1];
  v74 = [v21 childProgressReporterToCheckpoint:0.3];
  v73 = [v21 childProgressReporterToCheckpoint:0.4];
  v72 = [v21 childProgressReporterToCheckpoint:0.6];
  v70 = [v21 childProgressReporterToCheckpoint:0.8];
  v71 = [v21 childProgressReporterToCheckpoint:0.9];
  v69 = [v21 childProgressReporterToCheckpoint:1.0];
  v68 = [[PGMemoryMomentNodesWithBlockedFeatureCache alloc] initWithUserFeedbackCalculator:self->_userFeedbackCalculator loggingConnection:self->_loggingConnection];
  v22 = [[PGMemoryTriggerHandler alloc] initWithWorkingContext:self->_workingContext momentNodesWithBlockedFeatureCache:v68];
  if (sourceCopy)
  {
    v23 = sourceCopy;
  }

  else
  {
    v23 = [[PGMemoryPlannerPhotoKitSource alloc] initWithPhotoLibrary:self->_photoLibrary loggingConnection:self->_loggingConnection];
  }

  v24 = v23;
  if (futureSourceCopy)
  {
    v25 = futureSourceCopy;
  }

  else
  {
    v25 = v22;
  }

  v66 = v25;
  v67 = v24;
  v26 = [[PGMemoryPlanner alloc] initWithPastSource:v24 futureSource:v66 configuration:configurationCopy graph:graphCopy loggingConnection:self->_loggingConnection progressReporter:v75];
  if (([reporterCopy isCancelled] & 1) == 0)
  {
    v63 = v21;
    v28 = [[PGMemoryContext alloc] initWithMemoryPlanner:v26 photoLibrary:self->_photoLibrary];
    v29 = [(PGMemoryTriggerHandler *)v22 allTriggeredMemoriesWithContext:v28 inGraph:graphCopy progressReporter:v74];
    v64 = v28;
    v65 = v26;
    if ([reporterCopy isCancelled])
    {
      v19 = MEMORY[0x277CBEBF8];
      v30 = v29;
      v27 = v72;
    }

    else
    {
      v30 = [(PGMemoryPlanner *)v26 filterMemories:v29 forTriggerCollisionsWithTriggerHandler:v22 graph:graphCopy progressReporter:v73];

      if (([reporterCopy isCancelled] & 1) == 0)
      {
        v60 = sourceCopy;
        holidayService = [(PGMemoryTriggerHandler *)v22 holidayService];
        v32 = v28;
        v33 = [PGMemoryTriggerHandler fallbackTriggeredMemoriesWithContext:v28 excludingTriggeredMemories:v30 inGraph:graphCopy holidayService:holidayService];

        v58 = v33;
        v34 = [v30 arrayByAddingObjectsFromArray:v33];

        v59 = v34;
        v35 = v34;
        v36 = v32;
        v37 = v32;
        v27 = v72;
        v38 = [(PGMemoryElector *)self filterAndSortTriggeredMemories:v35 withPlanner:v65 context:v36 configuration:configurationCopy progressReporter:v72];
        v62 = v38;
        if ([reporterCopy isCancelled])
        {
          v19 = MEMORY[0x277CBEBF8];
          sourceCopy = v60;
          v21 = v63;
        }

        else
        {
          v39 = [(PGMemoryElector *)self targetNumberOfMemoriesFromConfigurator:configurationCopy graph:graphCopy context:v37];
          v76 = objc_alloc_init(MEMORY[0x277CBEB18]);
          firstObject = [v38 firstObject];
          memoryCategory = [firstObject memoryCategory];

          v57 = v39;
          if (memoryCategory == 8)
          {
            selfCopy = self;
            v55 = reporterCopy;
            v56 = futureSourceCopy;
            v79 = 0u;
            v80 = 0u;
            v77 = 0u;
            v78 = 0u;
            v42 = v38;
            v43 = [v42 countByEnumeratingWithState:&v77 objects:v81 count:16];
            if (v43)
            {
              v44 = v43;
              v45 = *v78;
              do
              {
                for (i = 0; i != v44; ++i)
                {
                  v47 = v22;
                  if (*v78 != v45)
                  {
                    objc_enumerationMutation(v42);
                  }

                  v48 = *(*(&v77 + 1) + 8 * i);
                  triggerTypes = [v48 triggerTypes];
                  v50 = [triggerTypes containsIndex:5];

                  if (v50)
                  {
                    [v76 addObject:v48];
                  }

                  v22 = v47;
                }

                v44 = [v42 countByEnumeratingWithState:&v77 objects:v81 count:16];
              }

              while (v44);
            }

            sourceCopy = v60;
            if ([v76 count])
            {
              self = selfCopy;
              v39 = v57;
              v51 = [(PGMemoryElector *)selfCopy electAndEnrichSortedTriggeredMemories:v76 alreadyEnrichedMemories:MEMORY[0x277CBEBF8] targetNumberOfMemories:v57 configuration:configurationCopy graph:graphCopy planner:v65 context:v64 progressReporter:v70];
              reporterCopy = v55;
              futureSourceCopy = v56;
            }

            else
            {
              v51 = MEMORY[0x277CBEBF8];
              reporterCopy = v55;
              futureSourceCopy = v56;
              self = selfCopy;
              v39 = v57;
            }
          }

          else
          {
            v51 = MEMORY[0x277CBEBF8];
            sourceCopy = v60;
          }

          if ([v51 count] >= v39)
          {
            v61 = v51;
            v21 = v63;
            v27 = v72;
          }

          else
          {
            v52 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v62];
            [v52 removeObjectsInArray:v76];
            v61 = [(PGMemoryElector *)self electAndEnrichSortedTriggeredMemories:v52 alreadyEnrichedMemories:v51 targetNumberOfMemories:v57 configuration:configurationCopy graph:graphCopy planner:v65 context:v64 progressReporter:v71];

            v27 = v72;
            v21 = v63;
          }

          if ([reporterCopy isCancelled] & 1) != 0 || objc_msgSend(configurationCopy, "shouldPersist") && (-[PGMemoryElector persistEnrichedMemories:pendingState:graph:progressReporter:](self, "persistEnrichedMemories:pendingState:graph:progressReporter:", v61, objc_msgSend(configurationCopy, "pendingState"), graphCopy, v69), (objc_msgSend(reporterCopy, "isCancelled")))
          {
            v19 = MEMORY[0x277CBEBF8];
            v53 = v61;
          }

          else
          {
            v53 = v61;
            v19 = v61;
          }
        }

        v30 = v59;
        goto LABEL_48;
      }

      v19 = MEMORY[0x277CBEBF8];
      v27 = v72;
    }

    v21 = v63;
LABEL_48:

    v26 = v65;
    goto LABEL_49;
  }

  v19 = MEMORY[0x277CBEBF8];
  v27 = v72;
LABEL_49:

LABEL_6:

  return v19;
}

- (id)generateEnrichedMemoriesWithConfiguration:(id)configuration graph:(id)graph progressReporter:(id)reporter
{
  v32 = *MEMORY[0x277D85DE8];
  v9 = self->_loggingConnection;
  reporterCopy = reporter;
  graphCopy = graph;
  configurationCopy = configuration;
  v13 = os_signpost_id_generate(v9);
  v14 = v9;
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "MemoryElection", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v16 = mach_absolute_time();
  v17 = [(PGMemoryElector *)self generateEnrichedMemoriesWithConfiguration:configurationCopy graph:graphCopy plannerPastSource:0 plannerFutureSource:0 progressReporter:reporterCopy];

  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    v19 = loggingConnection;
    v20 = [v17 count];
    *buf = 67109120;
    LODWORD(v29) = v20;
    _os_log_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_DEFAULT, "[PGMemoryElector] Generated %d memories", buf, 8u);
  }

  v21 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v24 = v15;
  v25 = v24;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v25, OS_SIGNPOST_INTERVAL_END, v13, "MemoryElection", " enableTelemetry=YES ", buf, 2u);
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v29 = "MemoryElection";
    v30 = 2048;
    v31 = ((((v21 - v16) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v25, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  return v17;
}

- (PGMemoryElector)initWithWorkingContext:(id)context userFeedbackCalculator:(id)calculator
{
  contextCopy = context;
  calculatorCopy = calculator;
  v23.receiver = self;
  v23.super_class = PGMemoryElector;
  v9 = [(PGMemoryElector *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_workingContext, context);
    photoLibrary = [contextCopy photoLibrary];
    photoLibrary = v10->_photoLibrary;
    v10->_photoLibrary = photoLibrary;

    loggingConnection = [contextCopy loggingConnection];
    loggingConnection = v10->_loggingConnection;
    v10->_loggingConnection = loggingConnection;

    curationManager = [contextCopy curationManager];
    curationManager = v10->_curationManager;
    v10->_curationManager = curationManager;

    objc_storeStrong(&v10->_userFeedbackCalculator, calculator);
    v17 = objc_alloc_init(MEMORY[0x277D3C7A0]);
    v18 = [objc_alloc(MEMORY[0x277D3C790]) initWithUserFeedbackCalculator:v10->_userFeedbackCalculator curationSession:v17];
    curationContext = v10->_curationContext;
    v10->_curationContext = v18;

    v20 = [[PGRemoteConfiguration alloc] initWithTrialNamespace:1 onDiskResourceFile:0];
    remoteConfiguration = v10->_remoteConfiguration;
    v10->_remoteConfiguration = v20;
  }

  return v10;
}

+ (int64_t)compareMemoryCategoryForMemory:(id)memory toOtherMemory:(id)otherMemory
{
  memoryCopy = memory;
  otherMemoryCopy = otherMemory;
  triggerTypes = [memoryCopy triggerTypes];
  if ([triggerTypes containsIndex:5])
  {
    triggerTypes2 = [otherMemoryCopy triggerTypes];
    v9 = [triggerTypes2 containsIndex:5];

    if (v9)
    {
      if ([memoryCopy memoryCategory] == 8 && objc_msgSend(otherMemoryCopy, "memoryCategory") != 8)
      {
        goto LABEL_27;
      }

      if ([memoryCopy memoryCategory] != 8 && objc_msgSend(otherMemoryCopy, "memoryCategory") == 8)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
  }

  triggerTypes3 = [memoryCopy triggerTypes];
  if ([triggerTypes3 containsIndex:4])
  {
    triggerTypes4 = [otherMemoryCopy triggerTypes];
    v12 = [triggerTypes4 containsIndex:4];

    if (v12)
    {
      if ([memoryCopy memoryCategory] == 23 && objc_msgSend(otherMemoryCopy, "memoryCategory") == 1)
      {
        goto LABEL_27;
      }

      if ([memoryCopy memoryCategory] == 1 && objc_msgSend(otherMemoryCopy, "memoryCategory") == 23)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
  }

  triggerTypes5 = [memoryCopy triggerTypes];
  if (([triggerTypes5 containsIndex:1] & 1) == 0)
  {

    goto LABEL_23;
  }

  triggerTypes6 = [otherMemoryCopy triggerTypes];
  v15 = [triggerTypes6 containsIndex:1];

  if (!v15)
  {
LABEL_23:
    v16 = 0;
    goto LABEL_24;
  }

  if ([memoryCopy memoryCategory] != 16 || objc_msgSend(otherMemoryCopy, "memoryCategory") != 17)
  {
    if ([memoryCopy memoryCategory] == 17 && objc_msgSend(otherMemoryCopy, "memoryCategory") == 16)
    {
LABEL_27:
      v16 = -1;
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_21:
  v16 = 1;
LABEL_24:

  return v16;
}

@end