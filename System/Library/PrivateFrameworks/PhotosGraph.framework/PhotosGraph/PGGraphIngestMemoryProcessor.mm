@interface PGGraphIngestMemoryProcessor
+ (id)memoryCategoriesWithGraphUpdate:(id)update;
+ (void)regenerateMemoriesOfCategory:(unint64_t)category withGraphBuilder:(id)builder progressReporter:(id)reporter;
- (BOOL)shouldRunWithGraphUpdate:(id)update;
- (PGGraphIngestMemoryProcessor)initWithGraphBuilder:(id)builder;
- (id)existingMemoryNodeByUniqueMemoryIdentifierWithGraph:(id)graph;
- (id)insertMemoriesForCategories:(id)categories processingWindow:(id)window loggingConnection:(id)connection progressBlock:(id)block;
- (id)memoryGeneratorsForMemoryCategory:(unint64_t)category memoryGenerationContext:(id)context controller:(id)controller;
- (id)momentNodesByMemoryNodeAdjancyWithGraph:(id)graph;
- (void)deleteWithMemoryCategories:(id)categories;
- (void)insertProcessorDependentMomentFeaturesForMomentNodes:(id)nodes featureProvider:(id)provider progressBlock:(id)block;
- (void)resetMemoryNodesWithMemoryUniqueIdentifiers:(id)identifiers loggingConnection:(id)connection;
- (void)runWithGraphUpdate:(id)update progressBlock:(id)block;
@end

@implementation PGGraphIngestMemoryProcessor

- (id)memoryGeneratorsForMemoryCategory:(unint64_t)category memoryGenerationContext:(id)context controller:(id)controller
{
  v63 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = 1;
  switch(category)
  {
    case 0uLL:
      v10 = [[PGYearInReviewMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v10];

      v9 = 0;
      goto LABEL_3;
    case 1uLL:
      v51 = PGSingleMomentMemoryGenerator;
      goto LABEL_38;
    case 3uLL:
      v52 = [[PGPersonMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v52];
      v53 = PGMePersonMemoryGenerator;
      goto LABEL_29;
    case 4uLL:
      v52 = [(PGMemoryGenerator *)[PGEarlyMomentsWithPeopleMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [(PGPersonMemoryGenerator *)v52 setShouldGenerateAllMemories:1];
      goto LABEL_39;
    case 6uLL:
      v51 = PGSocialGroupMemoryGenerator;
      goto LABEL_38;
    case 8uLL:
      v51 = PGYearInReviewMemoryGenerator;
      goto LABEL_38;
    case 9uLL:
LABEL_3:
      v11 = [[PGFoodieMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v11];

      v12 = [[PGPersonFoodieMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v12];

      v13 = [(PGFoodieMemoryGenerator *)[PGRestaurantFoodieMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v13];

      v14 = [(PGFoodieMemoryGenerator *)[PGHomeFoodieMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v14];

      v15 = [(PGFoodieMemoryGenerator *)[PGCityFoodieMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v15];

      v16 = [(PGMemoryGenerator *)[PGTripFoodieMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v16];

      if (v9)
      {
        goto LABEL_41;
      }

      v17 = [[PGMyPetMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v17];
      v18 = [[PGMyPetAndPersonMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v18];

      v19 = [[PGMyPetOutdoorMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v19];

      v20 = [[PGPersonMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v20];
      v21 = [[PGMePersonMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v21];

      v22 = [(PGMemoryGenerator *)[PGEarlyMomentsWithPeopleMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [(PGEarlyMomentsWithPeopleMemoryGenerator *)v22 setShouldGenerateAllMemories:1];
      [v8 addObject:v22];

      v23 = [[PGPlaceLocationMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v23];

      v24 = [[PGPlaceRegionMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v24];

      v25 = [(PGMemoryGenerator *)[PGMeaningfulEventMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v25];

      v9 = 0;
      goto LABEL_5;
    case 0xAuLL:
      v52 = [[PGMyPetMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v52];
      v53 = PGMyPetAndPersonMemoryGenerator;
LABEL_29:
      v54 = [[v53 alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v54];

      goto LABEL_40;
    case 0xCuLL:
      v51 = PGPlaceLocationMemoryGenerator;
      goto LABEL_38;
    case 0xDuLL:
      v51 = PGPlaceRegionMemoryGenerator;
      goto LABEL_38;
    case 0xEuLL:
      v51 = PGPlaceAreaMemoryGenerator;
      goto LABEL_38;
    case 0x10uLL:
      v51 = PGMeaningfulEventMemoryGenerator;
      goto LABEL_38;
    case 0x11uLL:
LABEL_5:
      v26 = +[PGMeaningAggregationMemoryGenerator allMeaningAggregationMemoryGeneratorClasses];
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v27 = [v26 countByEnumeratingWithState:&v58 objects:v62 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v59;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v59 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = [objc_alloc(*(*(&v58 + 1) + 8 * i)) initWithMemoryGenerationContext:contextCopy];
            [v8 addObject:v31];
          }

          v28 = [v26 countByEnumeratingWithState:&v58 objects:v62 count:16];
        }

        while (v28);
      }

      if (v9)
      {
        goto LABEL_41;
      }

      v32 = [[PGSocialGroupMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v32];

      v33 = [(PGMemoryGenerator *)[PGRecurrentTripMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v33];

      v34 = [(PGMemoryGenerator *)[PGTripMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v34];

      v35 = [(PGMemoryGenerator *)[PGOngoingTripMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v35];

      v36 = [(PGMemoryGenerator *)[PGPastSupersetMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [(PGPastSupersetMemoryGenerator *)v36 setLocalDate:self->_localDate];
      [v8 addObject:v36];

      v37 = [(PGMemoryGenerator *)[PGSingleMomentMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v37];

      v38 = [[PGSeasonMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v38];

      v39 = [[PGPlaceAreaMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v39];

      v40 = [[PGChildActivityMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v40];

      v41 = [[PGExcitingMomentsMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [v8 addObject:v41];

      v9 = 0;
LABEL_14:
      v42 = +[PGTrendsMemoryGenerator trendsConfigurations];
      v57 = [[PGTrendsMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy configurations:v42];
      v43 = [[PGPersonTrendsMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy configurations:v42];
      v44 = [[PGLocationTrendsMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy configurations:v42];
      [v8 addObject:v57];
      [v8 addObject:v43];
      [v8 addObject:v44];
      v45 = +[PGCLIPTrendsMemoryGenerator CLIPTrendsConfigurations];
      v46 = [[PGCLIPTrendsMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy configurations:v45];
      v47 = [[PGPersonCLIPTrendsMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy configurations:v45];
      v48 = [[PGLocationCLIPTrendsMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy configurations:v45];
      [v8 addObject:v46];
      [v8 addObject:v47];
      [v8 addObject:v48];

      if ((v9 & 1) == 0)
      {
        v49 = [[PGChildAndPersonMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
        [v8 addObject:v49];

        v50 = [[PGChildOutdoorMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
        [v8 addObject:v50];

LABEL_16:
        v51 = PGDayInHistoryAggregationMemoryGenerator;
LABEL_38:
        v52 = [[v51 alloc] initWithMemoryGenerationContext:contextCopy];
LABEL_39:
        [v8 addObject:v52];
LABEL_40:
      }

LABEL_41:

      return v8;
    case 0x12uLL:
      v51 = PGRecurrentTripMemoryGenerator;
      goto LABEL_38;
    case 0x13uLL:
      v51 = PGTripMemoryGenerator;
      goto LABEL_38;
    case 0x14uLL:
      v55 = [(PGMemoryGenerator *)[PGPastSupersetMemoryGenerator alloc] initWithMemoryGenerationContext:contextCopy];
      [(PGPastSupersetMemoryGenerator *)v55 setLocalDate:self->_localDate];
      [v8 addObject:v55];

      goto LABEL_41;
    case 0x15uLL:
      v51 = PGSeasonMemoryGenerator;
      goto LABEL_38;
    case 0x17uLL:
      goto LABEL_16;
    case 0x19uLL:
      v51 = PGChildActivityMemoryGenerator;
      goto LABEL_38;
    case 0x1AuLL:
      v51 = PGExcitingMomentsMemoryGenerator;
      goto LABEL_38;
    case 0x1BuLL:
      goto LABEL_14;
    case 0x1CuLL:
      v51 = PGMyPetOutdoorMemoryGenerator;
      goto LABEL_38;
    case 0x1DuLL:
      v51 = PGChildAndPersonMemoryGenerator;
      goto LABEL_38;
    case 0x1EuLL:
      v51 = PGChildOutdoorMemoryGenerator;
      goto LABEL_38;
    case 0x1FuLL:
      v51 = PGOngoingTripMemoryGenerator;
      goto LABEL_38;
    default:
      goto LABEL_41;
  }
}

- (id)momentNodesByMemoryNodeAdjancyWithGraph:(id)graph
{
  momentNodesByMemoryNodeAdjancy = self->_momentNodesByMemoryNodeAdjancy;
  if (!momentNodesByMemoryNodeAdjancy)
  {
    v5 = [(PGGraphNodeCollection *)PGGraphMemoryNodeCollection nodesInGraph:graph];
    v6 = MEMORY[0x277D22BF8];
    v7 = +[PGGraphMemoryNode momentOfMemory];
    v8 = objc_opt_self();
    v9 = [v6 adjacencyWithSources:v5 relation:v7 targetsClass:v8];
    v10 = self->_momentNodesByMemoryNodeAdjancy;
    self->_momentNodesByMemoryNodeAdjancy = v9;

    momentNodesByMemoryNodeAdjancy = self->_momentNodesByMemoryNodeAdjancy;
  }

  return momentNodesByMemoryNodeAdjancy;
}

- (id)existingMemoryNodeByUniqueMemoryIdentifierWithGraph:(id)graph
{
  existingMemoryNodeByUniqueMemoryIdentifier = self->_existingMemoryNodeByUniqueMemoryIdentifier;
  if (!existingMemoryNodeByUniqueMemoryIdentifier)
  {
    v5 = MEMORY[0x277CBEB38];
    graphCopy = graph;
    dictionary = [v5 dictionary];
    v8 = self->_existingMemoryNodeByUniqueMemoryIdentifier;
    self->_existingMemoryNodeByUniqueMemoryIdentifier = dictionary;

    v9 = [(PGGraphNodeCollection *)PGGraphMemoryNodeCollection nodesInGraph:graphCopy];

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __84__PGGraphIngestMemoryProcessor_existingMemoryNodeByUniqueMemoryIdentifierWithGraph___block_invoke;
    v11[3] = &unk_2788822E0;
    v11[4] = self;
    [v9 enumerateNodesUsingBlock:v11];

    existingMemoryNodeByUniqueMemoryIdentifier = self->_existingMemoryNodeByUniqueMemoryIdentifier;
  }

  return existingMemoryNodeByUniqueMemoryIdentifier;
}

void __84__PGGraphIngestMemoryProcessor_existingMemoryNodeByUniqueMemoryIdentifierWithGraph___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 uniqueMemoryIdentifier];
  v5 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:v4];
  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = [*(v6 + 8) loggingConnection];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412802;
      v9 = v4;
      v10 = 2112;
      v11 = v5;
      v12 = 2112;
      v13 = v3;
      _os_log_error_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_ERROR, "Two memory nodes have the same unique identifier %@: %@, %@\n", &v8, 0x20u);
    }
  }

  else
  {
    [*(v6 + 24) setObject:v3 forKeyedSubscript:v4];
  }
}

- (id)insertMemoriesForCategories:(id)categories processingWindow:(id)window loggingConnection:(id)connection progressBlock:(id)block
{
  v195 = *MEMORY[0x277D85DE8];
  categoriesCopy = categories;
  windowCopy = window;
  connectionCopy = connection;
  aBlock = block;
  v10 = connectionCopy;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = [categoriesCopy count];
    _os_log_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_DEFAULT, "[PGGraphIngestMemoryProcessor] Starting to insert memories for %d categories", buf, 8u);
  }

  v109 = v10;

  graph = [(PGGraphBuilder *)self->_graphBuilder graph];
  if (!windowCopy)
  {
    [(PGGraphIngestMemoryProcessor *)self deleteWithMemoryCategories:categoriesCopy];
  }

  v114 = self->_memoryController;
  v11 = [PGMemoryGenerationContext alloc];
  photoLibrary = [(PGMemoryController *)v114 photoLibrary];
  curationContext = [(PGGraphBuilder *)self->_graphBuilder curationContext];
  userFeedbackCalculator = [curationContext userFeedbackCalculator];
  serviceManager = [(PGGraphBuilder *)self->_graphBuilder serviceManager];
  v113 = [(PGMemoryGenerationContext *)v11 initWithPhotoLibrary:photoLibrary userFeedbackCalculator:userFeedbackCalculator graph:graph serviceManager:serviceManager loggingConnection:v109];

  [(PGMemoryController *)v114 setMemoryGenerationContext:v113];
  v110 = _Block_copy(aBlock);
  v118 = [MEMORY[0x277CBEB98] set];
  *buf = 0;
  v192 = buf;
  v193 = 0x2020000000;
  v194 = 0;
  v179 = 0;
  v180 = &v179;
  v181 = 0x2020000000;
  v182 = 0;
  if (v110 && (v16 = CFAbsoluteTimeGetCurrent(), v16 - v180[3] >= 0.01) && (v180[3] = v16, LOBYTE(info.numer) = 0, (*(v110 + 2))(v110, &info, 0.0), v17 = v192[24] | LOBYTE(info.numer), v192[24] = v17, (v17 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *v185 = 67109378;
      *v186 = 300;
      *&v186[4] = 2080;
      *&v186[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestMemoryProcessor.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v185, 0x12u);
    }

    v18 = v118;
  }

  else
  {
    v19 = v109;
    v20 = os_signpost_id_generate(v19);
    v21 = v19;
    v22 = v21;
    v103 = v20 - 1;
    spid = v20;
    if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *v185 = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v20, "InsertMemories", "", v185, 2u);
    }

    oslog = v22;

    info = 0;
    mach_timebase_info(&info);
    v102 = mach_absolute_time();
    v23 = MEMORY[0x277D22C80];
    v173[0] = MEMORY[0x277D85DD0];
    v173[1] = 3221225472;
    v173[2] = __109__PGGraphIngestMemoryProcessor_insertMemoriesForCategories_processingWindow_loggingConnection_progressBlock___block_invoke;
    v173[3] = &unk_27888A188;
    v121 = v110;
    v174 = v121;
    v175 = &v179;
    v177 = 0x3F847AE147AE147BLL;
    v176 = buf;
    v105 = [v23 progressReporterWithProgressBlock:v173];
    momentNodesWithBlockedFeatureCache = [(PGMemoryGenerationContext *)v113 momentNodesWithBlockedFeatureCache];
    [momentNodesWithBlockedFeatureCache prefetchMomentNodesWithBlockedFeatureIfNeededInGraph:graph progressReporter:v105];

    if (v192[24] == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v185 = 67109378;
        *v186 = 308;
        *&v186[4] = 2080;
        *&v186[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestMemoryProcessor.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v185, 0x12u);
      }

      v18 = v118;
    }

    else
    {
      v25 = [MEMORY[0x277CBEB58] set];
      v171 = 0u;
      v172 = 0u;
      v169 = 0u;
      v170 = 0u;
      obj = categoriesCopy;
      v26 = [obj countByEnumeratingWithState:&v169 objects:v190 count:16];
      v142 = v25;
      if (v26)
      {
        v112 = *v170;
        while (2)
        {
          v117 = 0;
          v111 = v26;
          do
          {
            if (*v170 != v112)
            {
              objc_enumerationMutation(obj);
            }

            v27 = *(*(&v169 + 1) + 8 * v117);
            context = objc_autoreleasePoolPush();
            unsignedIntValue = [v27 unsignedIntValue];
            v120 = [MEMORY[0x277CD98D8] stringForCategory:unsignedIntValue];
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
            {
              *v185 = 138412290;
              *v186 = v120;
              _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_DEFAULT, "[PGGraphIngestMemoryProcessor] Starting to insert memories for category %@", v185, 0xCu);
            }

            v116 = [(PGGraphIngestMemoryProcessor *)self memoryGeneratorsForMemoryCategory:unsignedIntValue memoryGenerationContext:v113 controller:v114];
            v29 = [v116 count];
            if (v29)
            {
              v167 = 0u;
              v168 = 0u;
              v165 = 0u;
              v166 = 0u;
              v119 = v116;
              v30 = oslog;
              v123 = [v119 countByEnumeratingWithState:&v165 objects:v189 count:16];
              if (v123)
              {
                v31 = 0.9 / v29;
                v122 = *v166;
                v32 = 0.1;
                while (2)
                {
                  for (i = 0; i != v123; ++i)
                  {
                    if (*v166 != v122)
                    {
                      objc_enumerationMutation(v119);
                    }

                    v129 = *(*(&v165 + 1) + 8 * i);
                    v33 = v30;
                    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
                    {
                      v34 = objc_opt_class();
                      v35 = NSStringFromClass(v34);
                      *v185 = 138412546;
                      *v186 = v35;
                      *&v186[8] = 2112;
                      *&v186[10] = v120;
                      _os_log_impl(&dword_22F0FC000, v33, OS_LOG_TYPE_INFO, "[PGGraphIngestMemoryProcessor] Starting to generate memories with %@ for category %@", v185, 0x16u);
                    }

                    v36 = v33;
                    v37 = os_signpost_id_generate(v36);
                    v38 = v36;
                    v39 = v38;
                    if (v37 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
                    {
                      *v185 = 0;
                      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v39, OS_SIGNPOST_INTERVAL_BEGIN, v37, "MemoryGeneration", "", v185, 2u);
                    }

                    v164 = 0;
                    mach_timebase_info(&v164);
                    v40 = mach_absolute_time();
                    v157[0] = MEMORY[0x277D85DD0];
                    v157[1] = 3221225472;
                    v157[2] = __109__PGGraphIngestMemoryProcessor_insertMemoriesForCategories_processingWindow_loggingConnection_progressBlock___block_invoke_295;
                    v157[3] = &unk_278886858;
                    v161 = v32;
                    v162 = v31;
                    v158 = v121;
                    v159 = &v179;
                    v163 = 0x3F847AE147AE147BLL;
                    v160 = buf;
                    v128 = [v129 generatePotentialMemoriesForProcessingWindow:windowCopy graph:graph progressBlock:v157];
                    v41 = mach_absolute_time();
                    v42 = v164;
                    v43 = v39;
                    v44 = v43;
                    if (v37 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
                    {
                      v45 = objc_opt_class();
                      v46 = NSStringFromClass(v45);
                      *v185 = 138412290;
                      *v186 = v46;
                      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v44, OS_SIGNPOST_INTERVAL_END, v37, "MemoryGeneration", "Memory Generator: %@", v185, 0xCu);
                    }

                    log = v44;
                    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
                    {
                      v47 = MEMORY[0x277CCACA8];
                      v48 = objc_opt_class();
                      v49 = NSStringFromClass(v48);
                      v50 = [v47 stringWithFormat:@"Memory Generator: %@", v49];
                      *v185 = 136315650;
                      *v186 = "MemoryGeneration";
                      *&v186[8] = 2112;
                      *&v186[10] = v50;
                      v187 = 2048;
                      v188 = ((((v41 - v40) * v42.numer) / v42.denom) / 1000000.0);
                      _os_log_impl(&dword_22F0FC000, log, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", v185, 0x20u);
                    }

                    v125 = v192[24];
                    if (v125 == 1)
                    {
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                      {
                        *v185 = 67109378;
                        *v186 = 334;
                        *&v186[4] = 2080;
                        *&v186[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestMemoryProcessor.m";
                        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v185, 0x12u);
                      }

                      v51 = v118;
                    }

                    else
                    {
                      v134 = log;
                      if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
                      {
                        v52 = objc_opt_class();
                        v53 = NSStringFromClass(v52);
                        v54 = [v128 count];
                        *v185 = 138412546;
                        *v186 = v53;
                        *&v186[8] = 1024;
                        *&v186[10] = v54;
                        _os_log_impl(&dword_22F0FC000, v134, OS_LOG_TYPE_DEFAULT, "[PGGraphIngestMemoryProcessor] %@ generated %d potential Memories", v185, 0x12u);
                      }

                      v141 = objc_alloc_init(MEMORY[0x277D22C50]);
                      v138 = objc_alloc_init(MEMORY[0x277CBEB58]);
                      v132 = objc_alloc_init(MEMORY[0x277CBEB18]);
                      v131 = objc_alloc_init(MEMORY[0x277CBEB18]);
                      if (windowCopy)
                      {
                        v136 = [(PGGraphIngestMemoryProcessor *)self existingMemoryNodeByUniqueMemoryIdentifierWithGraph:graph];
                        v133 = [(PGGraphIngestMemoryProcessor *)self momentNodesByMemoryNodeAdjancyWithGraph:graph];
                        v155 = 0u;
                        v156 = 0u;
                        v153 = 0u;
                        v154 = 0u;
                        v135 = v128;
                        v55 = [v135 countByEnumeratingWithState:&v153 objects:v184 count:16];
                        if (v55)
                        {
                          v137 = *v154;
                          do
                          {
                            for (j = 0; j != v55; ++j)
                            {
                              if (*v154 != v137)
                              {
                                objc_enumerationMutation(v135);
                              }

                              v57 = *(*(&v153 + 1) + 8 * j);
                              memoryCategory = [v57 memoryCategory];
                              v59 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:memoryCategory];
                              [v138 addObject:v59];

                              v60 = [v57 memoryFeatureNodesInGraph:graph];
                              if ([v60 count])
                              {
                                v61 = [PGGraphBuilder memoryLabelForCategory:memoryCategory];
                                v62 = [PGGraphMemoryNode uniqueMemoryIdentifierWithMemoryLabel:v61 featureNodes:v60];
                                v63 = [v136 objectForKeyedSubscript:v62];
                                v64 = v63;
                                if (v63)
                                {
                                  collection = [v63 collection];
                                  v66 = [v133 targetsForSources:collection];

                                  LODWORD(collection) = [v57 generatedWithFallbackRequirements];
                                  if (collection == [v64 generatedWithFallbackRequirements] && (objc_msgSend(v57, "memoryMomentNodes"), v67 = objc_claimAutoreleasedReturnValue(), v68 = objc_msgSend(v67, "isEqual:", v66), v67, v68))
                                  {
                                    [v131 addObject:v57];
                                    [v142 addObject:v62];
                                  }

                                  else
                                  {
                                    [v132 addObject:v64];
                                  }
                                }
                              }

                              else if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
                              {
                                *v185 = 0;
                                _os_log_error_impl(&dword_22F0FC000, v134, OS_LOG_TYPE_ERROR, "[PGGraphIngestMemoryProcessor] Attempting to insert memory with no feature nodes", v185, 2u);
                              }
                            }

                            v55 = [v135 countByEnumeratingWithState:&v153 objects:v184 count:16];
                          }

                          while (v55);
                        }

                        v69 = v134;
                        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
                        {
                          v70 = objc_opt_class();
                          v71 = NSStringFromClass(v70);
                          v72 = [v131 count];
                          *&v73 = COERCE_DOUBLE([v132 count]);
                          *v185 = 138412802;
                          *v186 = v71;
                          *&v186[8] = 2048;
                          *&v186[10] = v72;
                          v187 = 2048;
                          v188 = *&v73;
                          _os_log_impl(&dword_22F0FC000, v69, OS_LOG_TYPE_DEFAULT, "[PGGraphIngestMemoryProcessor] %@: %tu potential Memories to skip ingest, %tu memory nodes to remove", v185, 0x20u);
                        }
                      }

                      v74 = [v128 arrayByExcludingObjectsInArray:v131];
                      v151 = 0u;
                      v152 = 0u;
                      v149 = 0u;
                      v150 = 0u;
                      v75 = v74;
                      v76 = [v75 countByEnumeratingWithState:&v149 objects:v183 count:16];
                      if (v76)
                      {
                        v77 = *v150;
                        do
                        {
                          for (k = 0; k != v76; ++k)
                          {
                            if (*v150 != v77)
                            {
                              objc_enumerationMutation(v75);
                            }

                            v79 = [(PGGraphBuilder *)self->_graphBuilder insertMemoryNodeFromMemory:*(*(&v149 + 1) + 8 * k) changeRequest:v141];
                            uniqueMemoryIdentifier = [v79 uniqueMemoryIdentifier];
                            [v142 addObject:uniqueMemoryIdentifier];
                          }

                          v76 = [v75 countByEnumeratingWithState:&v149 objects:v183 count:16];
                        }

                        while (v76);
                      }

                      if (windowCopy)
                      {
                        v81 = [(PGGraphIngestMemoryProcessor *)self existingMemoryNodeByUniqueMemoryIdentifierWithGraph:graph];
                        v82 = objc_alloc_init(MEMORY[0x277CBEB18]);
                        v83 = [(PGGraphIngestMemoryProcessor *)self momentNodesByMemoryNodeAdjancyWithGraph:graph];
                        v143[0] = MEMORY[0x277D85DD0];
                        v143[1] = 3221225472;
                        v143[2] = __109__PGGraphIngestMemoryProcessor_insertMemoriesForCategories_processingWindow_loggingConnection_progressBlock___block_invoke_305;
                        v143[3] = &unk_2788822B8;
                        v144 = v142;
                        v145 = v138;
                        v84 = v83;
                        v146 = v84;
                        v147 = windowCopy;
                        v85 = v82;
                        v148 = v85;
                        [v81 enumerateKeysAndObjectsUsingBlock:v143];
                        [v132 addObjectsFromArray:v85];
                        v86 = v134;
                        if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
                        {
                          v87 = objc_opt_class();
                          v88 = NSStringFromClass(v87);
                          v89 = [v85 count];
                          *v185 = 138412546;
                          *v186 = v88;
                          *&v186[8] = 2048;
                          *&v186[10] = v89;
                          _os_log_impl(&dword_22F0FC000, v86, OS_LOG_TYPE_DEFAULT, "[PGGraphIngestMemoryProcessor] %@: %tu memory nodes to remove (not existing anymore)", v185, 0x16u);
                        }

                        if ([v132 count])
                        {
                          v90 = [objc_alloc(MEMORY[0x277D22C70]) initWithArray:v132 graph:graph];
                          [v141 removeNodes:v90];
                        }
                      }

                      [graph executeGraphChangeRequest:v141];

                      v32 = v31 + v32;
                    }

                    if (v125)
                    {
                      v91 = 1;
                      goto LABEL_90;
                    }

                    v30 = oslog;
                  }

                  v123 = [v119 countByEnumeratingWithState:&v165 objects:v189 count:16];
                  if (v123)
                  {
                    continue;
                  }

                  break;
                }
              }

              v91 = 0;
LABEL_90:
            }

            else
            {
              if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
              {
                *v185 = 134217984;
                *v186 = unsignedIntValue;
                _os_log_error_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_ERROR, "[PGGraphIngestMemoryProcessor] No memory generators found for memory category %lu", v185, 0xCu);
              }

              v91 = 3;
            }

            objc_autoreleasePoolPop(context);
            if (v91 != 3 && v91)
            {

              v18 = v118;
              v97 = v142;
              goto LABEL_109;
            }

            ++v117;
          }

          while (v117 != v111);
          v26 = [obj countByEnumeratingWithState:&v169 objects:v190 count:16];
          if (v26)
          {
            continue;
          }

          break;
        }
      }

      v92 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v95 = oslog;
      v96 = v95;
      if (v103 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v95))
      {
        *v185 = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v96, OS_SIGNPOST_INTERVAL_END, spid, "InsertMemories", "", v185, 2u);
      }

      if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
      {
        *v185 = 136315394;
        *v186 = "InsertMemories";
        *&v186[8] = 2048;
        *&v186[10] = ((((v92 - v102) * numer) / denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v96, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v185, 0x16u);
      }

      v97 = v142;
      if (v110 && (Current = CFAbsoluteTimeGetCurrent(), Current - v180[3] >= 0.01) && (v180[3] = Current, LOBYTE(v164.numer) = 0, (*(v121 + 2))(v121, &v164, 1.0), v99 = v192[24] | LOBYTE(v164.numer), v192[24] = v99, (v99 & 1) != 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *v185 = 67109378;
          *v186 = 423;
          *&v186[4] = 2080;
          *&v186[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestMemoryProcessor.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v185, 0x12u);
        }

        v100 = v118;
      }

      else
      {
        v100 = v142;
      }

      v18 = v100;
LABEL_109:
    }
  }

  _Block_object_dispose(&v179, 8);
  _Block_object_dispose(buf, 8);

  return v18;
}

void __109__PGGraphIngestMemoryProcessor_insertMemoriesForCategories_processingWindow_loggingConnection_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.1);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __109__PGGraphIngestMemoryProcessor_insertMemoriesForCategories_processingWindow_loggingConnection_progressBlock___block_invoke_295(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    Current = CFAbsoluteTimeGetCurrent();
    v9 = *(*(a1 + 40) + 8);
    if (Current - *(v9 + 24) >= *(a1 + 72))
    {
      *(v9 + 24) = Current;
      (*(*(a1 + 32) + 16))(v6 + a3 * v7);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __109__PGGraphIngestMemoryProcessor_insertMemoriesForCategories_processingWindow_loggingConnection_progressBlock___block_invoke_305(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = a3;
  if (([*(a1 + 32) containsObject:a2] & 1) == 0)
  {
    v5 = *(a1 + 40);
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "memoryCategory")}];
    LODWORD(v5) = [v5 containsObject:v6];

    if (v5)
    {
      v7 = *(a1 + 48);
      v8 = [v12 collection];
      v9 = [v7 targetsForSources:v8];

      v10 = [v9 universalDateInterval];
      v11 = [v10 intersectsDateInterval:*(a1 + 56)];

      if (v11)
      {
        [*(a1 + 64) addObject:v12];
      }
    }
  }
}

- (void)resetMemoryNodesWithMemoryUniqueIdentifiers:(id)identifiers loggingConnection:(id)connection
{
  identifiersCopy = identifiers;
  if ([identifiersCopy count])
  {
    photoLibrary = [(PGGraphBuilder *)self->_graphBuilder photoLibrary];
    allObjects = [identifiersCopy allObjects];
    v7 = [PGGraphMemoryProcessorHelper localMemoryByUniqueIdentifierWithGraphMemoryIdentifiers:allObjects inPhotoLibrary:photoLibrary];

    if ([v7 count])
    {
      allValues = [v7 allValues];
      [PGGraphMemoryProcessorHelper resetLocalMemoryLastEnrichmentDateOfMemoriesWithLocalMemories:allValues inPhotoLibrary:photoLibrary];
    }
  }
}

- (void)deleteWithMemoryCategories:(id)categories
{
  v16 = *MEMORY[0x277D85DE8];
  categoriesCopy = categories;
  if ([categoriesCopy containsObject:&unk_284483300])
  {
    [(PGGraphBuilder *)self->_graphBuilder deleteAllMemoryNodesAndEdges];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277CCAB58]);
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = categoriesCopy;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v5 addIndex:{objc_msgSend(*(*(&v11 + 1) + 8 * v10++), "unsignedIntValue", v11)}];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }

    [(PGGraphBuilder *)self->_graphBuilder deleteAllMemoryNodesAndEdgesForMemoryCategories:v5];
  }
}

- (void)insertProcessorDependentMomentFeaturesForMomentNodes:(id)nodes featureProvider:(id)provider progressBlock:(id)block
{
  v46 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  providerCopy = provider;
  blockCopy = block;
  loggingConnection = [(PGGraphBuilder *)self->_graphBuilder loggingConnection];
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v42 = [nodesCopy count];
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[PGGraphIngestMemoryProcessor] Starting to insert processor-dependent features for %d moments", buf, 8u);
  }

  v11 = 0.0;
  v35 = _Block_copy(blockCopy);
  if (v35)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current >= 0.01)
    {
      v40 = 0;
      v35[2](v35, &v40, 0.0);
      if (v40 == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v42 = 158;
          v43 = 2080;
          v44[0] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestMemoryProcessor.m";
          v13 = MEMORY[0x277D86220];
LABEL_29:
          _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          goto LABEL_33;
        }

        goto LABEL_33;
      }

      v11 = Current;
    }
  }

  oslog = loggingConnection;
  v14 = [nodesCopy count];
  v15 = CFAbsoluteTimeGetCurrent();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v31 = nodesCopy;
  obj = nodesCopy;
  v16 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    v19 = 1.0 / v14;
    v20 = *v37;
    v21 = 0.0;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v37 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v36 + 1) + 8 * i);
        v24 = objc_autoreleasePoolPush();
        if (v35)
        {
          v25 = CFAbsoluteTimeGetCurrent();
          if (v25 - v11 >= 0.01)
          {
            v40 = 0;
            v35[2](v35, &v40, v21);
            if (v40)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                v42 = 166;
                v43 = 2080;
                v44[0] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestMemoryProcessor.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              objc_autoreleasePoolPop(v24);

              blockCopy = v30;
              nodesCopy = v31;
              loggingConnection = oslog;
              goto LABEL_33;
            }

            v11 = v25;
          }
        }

        if (25 * (v18 / 0x19) == v18)
        {
          v26 = CFAbsoluteTimeGetCurrent();
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109632;
            v42 = v18;
            v43 = 1024;
            LODWORD(v44[0]) = 25;
            WORD2(v44[0]) = 2048;
            *(v44 + 6) = v26 - v15;
            _os_log_debug_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_DEBUG, "[PGGraphIngestMemoryProcessor] Processed %d moments, batch of %d took %.2f seconds", buf, 0x18u);
          }

          v15 = v26;
        }

        v21 = v19 + v21;
        ++v18;
        graphBuilder = self->_graphBuilder;
        photoLibrary = [(PGGraphBuilder *)graphBuilder photoLibrary];
        curationContext = [(PGGraphBuilder *)self->_graphBuilder curationContext];
        [(PGGraphBuilder *)graphBuilder insertMomentFeaturesForMomentNode:v23 momentEnvelope:0 photoLibrary:photoLibrary featureProvider:providerCopy atMomentIngest:0 curationContext:curationContext];

        objc_autoreleasePoolPop(v24);
      }

      v17 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  blockCopy = v30;
  nodesCopy = v31;
  loggingConnection = oslog;
  if (v35)
  {
    if (CFAbsoluteTimeGetCurrent() - v11 >= 0.01)
    {
      v40 = 0;
      v35[2](v35, &v40, 1.0);
      if (v40)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v42 = 179;
          v43 = 2080;
          v44[0] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestMemoryProcessor.m";
          v13 = MEMORY[0x277D86220];
          goto LABEL_29;
        }
      }
    }
  }

LABEL_33:
}

- (void)runWithGraphUpdate:(id)update progressBlock:(id)block
{
  *(&v65[2] + 4) = *MEMORY[0x277D85DE8];
  updateCopy = update;
  blockCopy = block;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  v37 = _Block_copy(blockCopy);
  if (!v37 || (v7 = CFAbsoluteTimeGetCurrent(), v7 - v57[3] < 0.01) || (v57[3] = v7, LOBYTE(info.numer) = 0, (*(v37 + 2))(v37, &info, 0.0), v8 = *(v61 + 24) | LOBYTE(info.numer), *(v61 + 24) = v8, (v8 & 1) == 0))
  {
    graph = [(PGGraphBuilder *)self->_graphBuilder graph];
    v34 = [objc_opt_class() memoryCategoriesWithGraphUpdate:updateCopy];
    if (updateCopy && ([updateCopy isResumingFullAnalysis] & 1) == 0)
    {
      momentChangesDateInterval = [updateCopy momentChangesDateInterval];
      v9 = 0;
    }

    else
    {
      momentChangesDateInterval = 0;
      v9 = 1;
    }

    [(PGGraphIngestMemoryProcessor *)self insertSingletonFeatureNodes];
    loggingConnection = [(PGGraphBuilder *)self->_graphBuilder loggingConnection];
    v11 = os_signpost_id_generate(loggingConnection);
    v12 = loggingConnection;
    v13 = v12;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "PGGraphIngestMemoryProcessor", "", &buf, 2u);
    }

    info = 0;
    mach_timebase_info(&info);
    v31 = mach_absolute_time();
    graphBuilder = self->_graphBuilder;
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __65__PGGraphIngestMemoryProcessor_runWithGraphUpdate_progressBlock___block_invoke;
    v50[3] = &unk_27888A188;
    v15 = v37;
    v51 = v15;
    v52 = &v56;
    v53 = &v60;
    v54 = 0x3F847AE147AE147BLL;
    v36 = [(PGGraphBuilder *)graphBuilder featureProviderWithProgressBlock:v50];
    if (*(v61 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        buf = 67109378;
        LODWORD(v65[0]) = 120;
        WORD2(v65[0]) = 2080;
        *(v65 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestMemoryProcessor.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
      }

      goto LABEL_39;
    }

    insertedMomentNodes = [updateCopy insertedMomentNodes];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __65__PGGraphIngestMemoryProcessor_runWithGraphUpdate_progressBlock___block_invoke_226;
    v45[3] = &unk_27888A188;
    v17 = v15;
    v46 = v17;
    v47 = &v56;
    v49 = 0x3F847AE147AE147BLL;
    v48 = &v60;
    [(PGGraphIngestMemoryProcessor *)self insertProcessorDependentMomentFeaturesForMomentNodes:insertedMomentNodes featureProvider:v36 progressBlock:v45];

    if (*(v61 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        buf = 67109378;
        LODWORD(v65[0]) = 126;
        WORD2(v65[0]) = 2080;
        *(v65 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestMemoryProcessor.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
      }

      goto LABEL_38;
    }

    v18 = [v34 count];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __65__PGGraphIngestMemoryProcessor_runWithGraphUpdate_progressBlock___block_invoke_227;
    v39[3] = &unk_27888A1B0;
    v43 = 0.6 / v18;
    v30 = v17;
    v40 = v30;
    v41 = &v56;
    v44 = 0x3F847AE147AE147BLL;
    v42 = &v60;
    v19 = [(PGGraphIngestMemoryProcessor *)self insertMemoriesForCategories:v34 processingWindow:momentChangesDateInterval loggingConnection:v13 progressBlock:v39];
    if (*(v61 + 24) == 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_37:

LABEL_38:
LABEL_39:

        goto LABEL_40;
      }

      buf = 67109378;
      LODWORD(v65[0]) = 133;
      WORD2(v65[0]) = 2080;
      *(v65 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestMemoryProcessor.m";
      v20 = MEMORY[0x277D86220];
    }

    else
    {
      if ((v9 & 1) == 0)
      {
        v21 = [MEMORY[0x277CBEB58] setWithSet:v19];
        if ([updateCopy hasDeletedMomentNodes])
        {
          identifiersForMemoriesRelatedToDeletedMoments = [updateCopy identifiersForMemoriesRelatedToDeletedMoments];
          [v21 unionSet:identifiersForMemoriesRelatedToDeletedMoments];
        }

        [(PGGraphIngestMemoryProcessor *)self resetMemoryNodesWithMemoryUniqueIdentifiers:v21 loggingConnection:v13];
      }

      v23 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v26 = v13;
      v27 = v26;
      if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
      {
        LOWORD(buf) = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v27, OS_SIGNPOST_INTERVAL_END, v11, "PGGraphIngestMemoryProcessor", "", &buf, 2u);
      }

      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        buf = 136315394;
        v65[0] = "PGGraphIngestMemoryProcessor";
        LOWORD(v65[1]) = 2048;
        *(&v65[1] + 2) = ((((v23 - v31) * numer) / denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v27, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", &buf, 0x16u);
      }

      if (!v37)
      {
        goto LABEL_37;
      }

      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v57[3] < 0.01)
      {
        goto LABEL_37;
      }

      v57[3] = Current;
      v38 = 0;
      (*(v30 + 2))(v30, &v38, 1.0);
      v29 = *(v61 + 24) | v38;
      *(v61 + 24) = v29;
      if ((v29 & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_37;
      }

      buf = 67109378;
      LODWORD(v65[0]) = 146;
      WORD2(v65[0]) = 2080;
      *(v65 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestMemoryProcessor.m";
      v20 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
    goto LABEL_37;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    buf = 67109378;
    LODWORD(v65[0]) = 97;
    WORD2(v65[0]) = 2080;
    *(v65 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestMemoryProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
  }

LABEL_40:
  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v60, 8);
}

void __65__PGGraphIngestMemoryProcessor_runWithGraphUpdate_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.1);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __65__PGGraphIngestMemoryProcessor_runWithGraphUpdate_progressBlock___block_invoke_226(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.3 + 0.1);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __65__PGGraphIngestMemoryProcessor_runWithGraphUpdate_progressBlock___block_invoke_227(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    v6 = *(a1 + 56);
    Current = CFAbsoluteTimeGetCurrent();
    v8 = *(*(a1 + 40) + 8);
    if (Current - *(v8 + 24) >= *(a1 + 64))
    {
      *(v8 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * v6 + 0.1);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (BOOL)shouldRunWithGraphUpdate:(id)update
{
  updateCopy = update;
  if ([updateCopy isResumingFullAnalysis])
  {
    hasAnythingToDo = 1;
  }

  else
  {
    hasAnythingToDo = [updateCopy hasAnythingToDo];
  }

  return hasAnythingToDo;
}

- (PGGraphIngestMemoryProcessor)initWithGraphBuilder:(id)builder
{
  builderCopy = builder;
  v17.receiver = self;
  v17.super_class = PGGraphIngestMemoryProcessor;
  v6 = [(PGGraphIngestMemoryProcessor *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graphBuilder, builder);
    v8 = [PGMemoryController alloc];
    graph = [builderCopy graph];
    photoLibrary = [builderCopy photoLibrary];
    loggingConnection = [builderCopy loggingConnection];
    v12 = [(PGMemoryController *)v8 initWithGraph:graph photoLibrary:photoLibrary loggingConnection:loggingConnection];
    memoryController = v7->_memoryController;
    v7->_memoryController = v12;

    currentLocalDate = [MEMORY[0x277D27690] currentLocalDate];
    localDate = v7->_localDate;
    v7->_localDate = currentLocalDate;
  }

  return v7;
}

+ (void)regenerateMemoriesOfCategory:(unint64_t)category withGraphBuilder:(id)builder progressReporter:(id)reporter
{
  v20[1] = *MEMORY[0x277D85DE8];
  builderCopy = builder;
  reporterCopy = reporter;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  v9 = [[PGGraphIngestMemoryProcessor alloc] initWithGraphBuilder:builderCopy];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:category];
  v20[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  loggingConnection = [builderCopy loggingConnection];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __95__PGGraphIngestMemoryProcessor_regenerateMemoriesOfCategory_withGraphBuilder_progressReporter___block_invoke;
  v15[3] = &unk_278889448;
  v17 = v18;
  v13 = reporterCopy;
  v16 = v13;
  v14 = [(PGGraphIngestMemoryProcessor *)v9 insertMemoriesForCategories:v11 processingWindow:0 loggingConnection:loggingConnection progressBlock:v15];

  _Block_object_dispose(v18, 8);
}

uint64_t __95__PGGraphIngestMemoryProcessor_regenerateMemoriesOfCategory_withGraphBuilder_progressReporter___block_invoke(uint64_t a1, _BYTE *a2)
{
  v4 = *(*(a1 + 40) + 8);
  if (*(v4 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:?];
    v4 = *(*(a1 + 40) + 8);
  }

  *(v4 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

+ (id)memoryCategoriesWithGraphUpdate:(id)update
{
  updateCopy = update;
  if ([updateCopy isResumingFullAnalysis])
  {
    array = &unk_2844859E8;
  }

  else if ([updateCopy hasInsertedMomentNodes] & 1) != 0 || (objc_msgSend(updateCopy, "hasDeletedMomentNodes"))
  {
    array = &unk_284485A00;
  }

  else if (([updateCopy momentUpdateTypes] & 0x13) != 0)
  {
    array = &unk_284485A18;
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
    if (([updateCopy momentUpdateTypes] & 4) != 0)
    {
      [array addObjectsFromArray:&unk_284485A30];
    }

    if (([updateCopy hasUpdatedPersonNodes] & 1) != 0 || (objc_msgSend(updateCopy, "hasDeletedPersonNodes") & 1) != 0 || (objc_msgSend(updateCopy, "momentUpdateTypes") & 8) != 0)
    {
      [array addObjectsFromArray:&unk_284485A48];
    }

    if (([updateCopy hasInsertedHighlightNodes] & 1) != 0 || (objc_msgSend(updateCopy, "hasUpdatedHighlightNodes") & 1) != 0 || objc_msgSend(updateCopy, "hasDeletedHighlightNodes"))
    {
      [array addObjectsFromArray:&unk_284485A60];
    }
  }

  return array;
}

@end