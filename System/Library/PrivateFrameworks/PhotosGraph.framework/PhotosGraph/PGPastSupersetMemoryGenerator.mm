@interface PGPastSupersetMemoryGenerator
- (id)chapterTitleGeneratorForTriggeredMemory:(id)memory curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph;
- (id)curationOptionsWithRequiredAssetUUIDs:(id)ds eligibleAssetUUIDs:(id)iDs triggeredMemory:(id)memory;
- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)memory inGraph:(id)graph;
- (id)relevantCurationFeederForTriggeredMemory:(id)memory relevantFeeder:(id)feeder inGraph:(id)graph allowGuestAsset:(BOOL)asset progressReporter:(id)reporter;
- (id)relevantFeederForTriggeredMemory:(id)memory inGraph:(id)graph allowGuestAsset:(BOOL)asset progressReporter:(id)reporter;
- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph;
- (void)_enumeratePotentialMemoriesForProcessingWindow:(id)window graph:(id)graph progressBlock:(id)block usingBlock:(id)usingBlock;
- (void)generateMoodForEnrichedMemory:(id)memory extendedCuratedAssets:(id)assets configuration:(id)configuration inGraph:(id)graph;
@end

@implementation PGPastSupersetMemoryGenerator

- (void)generateMoodForEnrichedMemory:(id)memory extendedCuratedAssets:(id)assets configuration:(id)configuration inGraph:(id)graph
{
  memoryCopy = memory;
  [memoryCopy setSuggestedMood:16];
  [memoryCopy setForbiddenMoods:896];
  [memoryCopy setRecommendedMoods:0];
}

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
  memoryCopy = memory;
  memoryMomentNodes = [memoryCopy memoryMomentNodes];
  universalDateInterval = [memoryMomentNodes universalDateInterval];

  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];
  v14 = [(PGGraphNodeCollection *)PGGraphNamedLocationNodeCollection subsetInCollection:memoryFeatureNodes];
  anyNode = [v14 anyNode];

  v16 = [PGPastSupersetMemoryTitleGenerator alloc];
  memoryMomentNodes2 = [memoryCopy memoryMomentNodes];

  v18 = [memoryMomentNodes2 set];
  v19 = [(PGPastSupersetMemoryTitleGenerator *)v16 initWithMomentNodes:v18 supersetLocationNode:anyNode supersetDateInterval:universalDateInterval titleGenerationContext:contextCopy];

  return v19;
}

- (id)curationOptionsWithRequiredAssetUUIDs:(id)ds eligibleAssetUUIDs:(id)iDs triggeredMemory:(id)memory
{
  v14.receiver = self;
  v14.super_class = PGPastSupersetMemoryGenerator;
  memoryCopy = memory;
  v8 = [(PGMemoryGenerator *)&v14 curationOptionsWithRequiredAssetUUIDs:ds eligibleAssetUUIDs:iDs triggeredMemory:memoryCopy];
  memoryMomentNodes = [memoryCopy memoryMomentNodes];

  universalDateInterval = [memoryMomentNodes universalDateInterval];
  [universalDateInterval duration];
  v12 = v11;

  if (v12 > 31557600.0)
  {
    [v8 setDuration:21];
  }

  return v8;
}

- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)memory inGraph:(id)graph
{
  v10.receiver = self;
  v10.super_class = PGPastSupersetMemoryGenerator;
  graphCopy = graph;
  v6 = [(PGMemoryGenerator *)&v10 keyAssetCurationOptionsWithTriggeredMemory:memory inGraph:graphCopy];
  [v6 setComplete:{1, v10.receiver, v10.super_class}];
  meNodeCollection = [graphCopy meNodeCollection];

  localIdentifiers = [meNodeCollection localIdentifiers];
  [v6 setReferencePersonLocalIdentifiers:localIdentifiers];

  [v6 setFocusOnPeople:1];

  return v6;
}

- (id)relevantCurationFeederForTriggeredMemory:(id)memory relevantFeeder:(id)feeder inGraph:(id)graph allowGuestAsset:(BOOL)asset progressReporter:(id)reporter
{
  v25 = *MEMORY[0x277D85DE8];
  memoryCopy = memory;
  graphCopy = graph;
  reporterCopy = reporter;
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];
  v14 = [(PGGraphNodeCollection *)PGGraphNamedLocationNodeCollection subsetInCollection:memoryFeatureNodes];

  if ([v14 count] == 1)
  {
    memoryMomentNodes = [memoryCopy memoryMomentNodes];
    anyNode = [v14 anyNode];
    memoryCurationSession = [(PGMemoryGenerator *)self memoryCurationSession];
    curationManager = [memoryCurationSession curationManager];
    v19 = [PGMemoryGenerationHelper assetFetchResultForMomentNodes:memoryMomentNodes inLocationOrAreaNode:anyNode requireInteresting:1 curationManager:curationManager progressReporter:reporterCopy];

    memoryCurationSession2 = [(PGMemoryGenerator *)self memoryCurationSession];
    v21 = [PGMemoryGenerationHelper feederForMemoriesWithAssetFetchResult:v19 memoryCurationSession:memoryCurationSession2 graph:graphCopy];
  }

  else
  {
    loggingConnection = [(PGMemoryGenerator *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      v24[0] = 67109120;
      v24[1] = [v14 count];
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGPastSupersetMemoryGenerator] One frequent location node expected, found %d", v24, 8u);
    }

    v21 = 0;
  }

  return v21;
}

- (id)relevantFeederForTriggeredMemory:(id)memory inGraph:(id)graph allowGuestAsset:(BOOL)asset progressReporter:(id)reporter
{
  v24 = *MEMORY[0x277D85DE8];
  memoryCopy = memory;
  graphCopy = graph;
  reporterCopy = reporter;
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];
  v13 = [(PGGraphNodeCollection *)PGGraphNamedLocationNodeCollection subsetInCollection:memoryFeatureNodes];

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
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGPastSupersetMemoryGenerator] One frequent location node expected, found %d", v23, 8u);
    }

    v20 = 0;
  }

  return v20;
}

- (void)_enumeratePotentialMemoriesForProcessingWindow:(id)window graph:(id)graph progressBlock:(id)block usingBlock:(id)usingBlock
{
  v272[1] = *MEMORY[0x277D85DE8];
  windowCopy = window;
  graphCopy = graph;
  blockCopy = block;
  usingBlockCopy = usingBlock;
  v160 = objc_opt_new();
  v163 = [MEMORY[0x277D27690] yearFromDate:self->_localDate];
  v10 = MEMORY[0x277D27690];
  selfCopy = self;
  localDate = [(PGPastSupersetMemoryGenerator *)self localDate];
  v12 = [v10 dateByAddingMonths:-6 toDate:localDate];

  v159 = v12;
  upperBoundLocalDate = [(PGFeaturedMemoryGenerator *)self upperBoundLocalDate];

  v173 = v159;
  if (upperBoundLocalDate)
  {
    upperBoundLocalDate2 = [(PGFeaturedMemoryGenerator *)self upperBoundLocalDate];
    v173 = [v159 earlierDate:upperBoundLocalDate2];
  }

  v15 = objc_alloc(MEMORY[0x277CCA970]);
  localDate2 = [(PGPastSupersetMemoryGenerator *)self localDate];
  v187 = [v15 initWithStartDate:v159 endDate:localDate2];

  array = [MEMORY[0x277CBEB18] array];
  locationHelper = [(PGMemoryGenerator *)self locationHelper];
  memoryGenerationContext = [(PGMemoryGenerator *)self memoryGenerationContext];
  v156 = [memoryGenerationContext momentNodesForProcessingWindow:windowCopy inGraph:graphCopy];

  frequentLocationNodes = [v156 frequentLocationNodes];
  v20 = MEMORY[0x277D22BF8];
  v21 = +[PGGraphFrequentLocationNode momentOfFrequentLocation];
  v22 = [v20 adjacencyWithSources:frequentLocationNodes relation:v21 targetsClass:objc_opt_class()];

  v23 = MEMORY[0x277D22BF8];
  v24 = +[PGGraphFrequentLocationNode addressOfFrequentLocation];
  v25 = [v23 adjacencyWithSources:frequentLocationNodes relation:v24 targetsClass:objc_opt_class()];

  v26 = MEMORY[0x277D22BF8];
  targets = [v25 targets];
  v28 = +[PGGraphAddressNode cityOfAddress];
  v29 = [v26 adjacencyWithSources:targets relation:v28 targetsClass:objc_opt_class()];

  v244[0] = MEMORY[0x277D85DD0];
  v244[1] = 3221225472;
  v244[2] = __111__PGPastSupersetMemoryGenerator__enumeratePotentialMemoriesForProcessingWindow_graph_progressBlock_usingBlock___block_invoke;
  v244[3] = &unk_27887F0E8;
  v152 = v25;
  v245 = v152;
  v153 = v29;
  v246 = v153;
  v199 = locationHelper;
  v247 = v199;
  v250 = 208;
  v151 = v22;
  v248 = v151;
  v155 = array;
  v249 = v155;
  [frequentLocationNodes enumerateNodesUsingBlock:v244];
  array2 = [MEMORY[0x277CBEB18] array];
  v30 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"dateInterval" ascending:1];
  v262 = v30;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v262 count:1];
  v32 = [v155 sortedArrayUsingDescriptors:v31];

  v242 = 0u;
  v243 = 0u;
  v240 = 0u;
  v241 = 0u;
  obj = v32;
  v185 = [obj countByEnumeratingWithState:&v240 objects:v261 count:16];
  if (v185)
  {
    v181 = *v241;
    do
    {
      v33 = 0;
      do
      {
        if (*v241 != v181)
        {
          v34 = v33;
          objc_enumerationMutation(obj);
          v33 = v34;
        }

        v188 = v33;
        v35 = *(*(&v240 + 1) + 8 * v33);
        context = objc_autoreleasePoolPush();
        dateInterval = [v35 dateInterval];
        momentNodes = [v35 momentNodes];
        supersetCityNodes = [v35 supersetCityNodes];
        densestCloseLocationNodes = [v35 densestCloseLocationNodes];
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v264 = __Block_byref_object_copy__1215;
        *v265 = __Block_byref_object_dispose__1216;
        *&v265[8] = 0;
        v236 = 0u;
        v237 = 0u;
        v238 = 0u;
        v239 = 0u;
        v36 = array2;
        v37 = [v36 countByEnumeratingWithState:&v236 objects:v260 count:16];
        if (v37)
        {
          v38 = *v237;
          while (2)
          {
            for (i = 0; i != v37; ++i)
            {
              if (*v237 != v38)
              {
                objc_enumerationMutation(v36);
              }

              v40 = *(*(&v236 + 1) + 8 * i);
              dateInterval2 = [v40 dateInterval];
              v42 = [dateInterval intersectionWithDateInterval:dateInterval2];
              [v42 duration];
              v44 = v43 > 7889400.0;

              if (v44)
              {
                densestCloseLocationNodes2 = [v40 densestCloseLocationNodes];
                v46 = [densestCloseLocationNodes2 containsCollection:densestCloseLocationNodes];

                if (v46)
                {
                  v58 = *&buf[8];
                  v59 = v40;
                  v57 = *(v58 + 40);
                  *(v58 + 40) = v59;
LABEL_24:

                  goto LABEL_25;
                }

                supersetCityNodes2 = [v40 supersetCityNodes];
                v48 = [v199 stateNodeFromCityNodeAsCollection:supersetCityNodes];
                stateNodeAsCollection = [v40 stateNodeAsCollection];
                if (stateNodeAsCollection)
                {
                  if ([v48 intersectsCollection:stateNodeAsCollection])
                  {
                    v50 = [v199 addressNodesFromLocationNodes:supersetCityNodes];
                    anyNode = [v50 anyNode];
                    [anyNode coordinate];
                    v53 = v52;
                    v55 = v54;

                    v229[0] = MEMORY[0x277D85DD0];
                    v229[1] = 3221225472;
                    v229[2] = __111__PGPastSupersetMemoryGenerator__enumeratePotentialMemoriesForProcessingWindow_graph_progressBlock_usingBlock___block_invoke_239;
                    v229[3] = &unk_27887F110;
                    v56 = v199;
                    v234 = v53;
                    v235 = v55;
                    v233 = buf;
                    v230 = v56;
                    v231 = v40;
                    v57 = supersetCityNodes2;
                    v232 = v57;
                    [v57 enumerateIdentifiersAsCollectionsWithBlock:v229];
                    LOBYTE(v50) = *(*&buf[8] + 40) == 0;

                    if ((v50 & 1) == 0)
                    {

                      goto LABEL_24;
                    }
                  }
                }
              }
            }

            v37 = [v36 countByEnumeratingWithState:&v236 objects:v260 count:16];
            if (v37)
            {
              continue;
            }

            break;
          }
        }

LABEL_25:

        v60 = *(*&buf[8] + 40);
        if (v60)
        {
          dateInterval3 = [v60 dateInterval];
          startDate = [dateInterval3 startDate];
          startDate2 = [dateInterval startDate];
          v64 = [startDate earlierDate:startDate2];

          endDate = [dateInterval3 endDate];
          endDate2 = [dateInterval endDate];
          v67 = [endDate laterDate:endDate2];

          v68 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v64 endDate:v67];
          [*(*&buf[8] + 40) setDateInterval:v68];
          momentNodes2 = [*(*&buf[8] + 40) momentNodes];
          v70 = [momentNodes2 collectionByFormingUnionWith:momentNodes];
          [*(*&buf[8] + 40) setMomentNodes:v70];

          supersetCityNodes3 = [*(*&buf[8] + 40) supersetCityNodes];
          v72 = [supersetCityNodes3 collectionByFormingUnionWith:supersetCityNodes];
          [*(*&buf[8] + 40) setSupersetCityNodes:v72];

          densestCloseLocationNodes3 = [*(*&buf[8] + 40) densestCloseLocationNodes];
          v74 = [densestCloseLocationNodes3 collectionByFormingUnionWith:densestCloseLocationNodes];
          [*(*&buf[8] + 40) setDensestCloseLocationNodes:v74];
        }

        else
        {
          dateInterval3 = [PGPastSupersetGroup pastSupersetGroupWithMomentNodes:momentNodes dateInterval:dateInterval supersetCityNodeAsCollection:supersetCityNodes densestCloseLocationNodeAsCollection:densestCloseLocationNodes locationHelper:v199];
          [v36 addObject:dateInterval3];
        }

        _Block_object_dispose(buf, 8);
        objc_autoreleasePoolPop(context);
        v33 = v188 + 1;
      }

      while (v188 + 1 != v185);
      v185 = [obj countByEnumeratingWithState:&v240 objects:v261 count:16];
    }

    while (v185);
  }

  v223 = 0;
  v224 = &v223;
  v225 = 0x3032000000;
  v226 = __Block_byref_object_copy__1215;
  v227 = __Block_byref_object_dispose__1216;
  v228 = [(MAElementCollection *)[PGGraphLocationNodeCollection alloc] initWithGraph:graphCopy];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v221 = 0u;
  v222 = 0u;
  v219 = 0u;
  v220 = 0u;
  v197 = array2;
  v75 = [v197 countByEnumeratingWithState:&v219 objects:v259 count:16];
  if (v75)
  {
    v76 = *v220;
    do
    {
      for (j = 0; j != v75; ++j)
      {
        if (*v220 != v76)
        {
          objc_enumerationMutation(v197);
        }

        v78 = *(*(&v219 + 1) + 8 * j);
        dateInterval4 = [v78 dateInterval];
        v80 = [dateInterval4 intersectsDateInterval:v187];

        densestCloseLocationNodes4 = [v78 densestCloseLocationNodes];
        v214[0] = MEMORY[0x277D85DD0];
        v214[1] = 3221225472;
        v214[2] = __111__PGPastSupersetMemoryGenerator__enumeratePotentialMemoriesForProcessingWindow_graph_progressBlock_usingBlock___block_invoke_2;
        v214[3] = &unk_27887F138;
        v215 = dictionary;
        v216 = v78;
        v218 = v80;
        v217 = &v223;
        [densestCloseLocationNodes4 enumerateNodesUsingBlock:v214];
      }

      v75 = [v197 countByEnumeratingWithState:&v219 objects:v259 count:16];
    }

    while (v75);
  }

  meNode = [graphCopy meNode];
  localIdentifier = [meNode localIdentifier];

  momentNodesWithBlockedFeatureCache = [(PGMemoryGenerator *)selfCopy momentNodesWithBlockedFeatureCache];
  momentNodesWithBlockedFeature = [momentNodesWithBlockedFeatureCache momentNodesWithBlockedFeature];

  processedScenesAndFacesCache = [(PGMemoryGenerator *)selfCopy processedScenesAndFacesCache];
  v168 = [processedScenesAndFacesCache momentNodesWithEnoughScenesProcessedInGraph:graphCopy];
  v212 = 0u;
  v213 = 0u;
  v210 = 0u;
  v211 = 0u;
  v175 = v197;
  v179 = [v175 countByEnumeratingWithState:&v210 objects:v258 count:16];
  if (v179)
  {
    v166 = 0;
    v167 = 0;
    v164 = 0;
    v172 = 0;
    v176 = *v211;
    v177 = 0;
    do
    {
      for (k = 0; k != v179; ++k)
      {
        if (*v211 != v176)
        {
          objc_enumerationMutation(v175);
        }

        v84 = *(*(&v210 + 1) + 8 * k);
        momentNodes3 = [v84 momentNodes];
        if ([processedScenesAndFacesCache allMomentNodesInCollectionHaveScenesProcessed:?])
        {
          densestCloseLocationNodes5 = [v84 densestCloseLocationNodes];
          v174 = v84;
          dateInterval5 = [v84 dateInterval];
          endDate3 = [dateInterval5 endDate];

          if ([endDate3 compare:v173] == 1)
          {
            ++v172;
          }

          else
          {
            if ([v224[5] intersectsCollection:densestCloseLocationNodes5])
            {
              v86 = [densestCloseLocationNodes5 collectionByIntersecting:v224[5]];
              v208 = 0u;
              v209 = 0u;
              v206 = 0u;
              v207 = 0u;
              v170 = v86;
              temporarySet = [v86 temporarySet];
              v88 = [temporarySet countByEnumeratingWithState:&v206 objects:v257 count:16];
              if (v88)
              {
                contexta = *v207;
                v182 = temporarySet;
                while (2)
                {
                  v186 = v88;
                  for (m = 0; m != v186; ++m)
                  {
                    if (*v207 != contexta)
                    {
                      objc_enumerationMutation(v182);
                    }

                    v90 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(*(&v206 + 1) + 8 * m), "identifier")}];
                    v91 = [dictionary objectForKeyedSubscript:v90];

                    v198 = v91;
                    v92 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:0];
                    v272[0] = v92;
                    v93 = [MEMORY[0x277CBEA60] arrayWithObjects:v272 count:1];
                    v94 = [v198 sortedArrayUsingDescriptors:v93];

                    firstObject = [v94 firstObject];
                    v254 = 0u;
                    v252 = 0u;
                    v253 = 0u;
                    v251 = 0u;
                    v96 = v94;
                    v97 = [v96 countByEnumeratingWithState:&v251 objects:buf count:16];
                    if (v97)
                    {
                      v98 = *v252;
                      do
                      {
                        for (n = 0; n != v97; ++n)
                        {
                          if (*v252 != v98)
                          {
                            objc_enumerationMutation(v96);
                          }

                          v100 = *(*(&v251 + 1) + 8 * n);
                          if (([v100 intersectsDateInterval:firstObject] & 1) == 0)
                          {
                            startDate3 = [firstObject startDate];
                            endDate4 = [v100 endDate];
                            [startDate3 timeIntervalSinceDate:endDate4];
                            v104 = v103 > 15778800.0;

                            if (v104)
                            {
                              continue;
                            }
                          }

                          v105 = v100;

                          firstObject = v105;
                        }

                        v97 = [v96 countByEnumeratingWithState:&v251 objects:buf count:16];
                      }

                      while (v97);
                    }

                    startDate4 = [firstObject startDate];

                    [startDate4 timeIntervalSinceDate:endDate3];
                    v108 = v107 < 31557600.0;

                    if (v108)
                    {

                      ++v166;
                      goto LABEL_92;
                    }
                  }

                  temporarySet = v182;
                  v88 = [v182 countByEnumeratingWithState:&v206 objects:v257 count:16];
                  if (v88)
                  {
                    continue;
                  }

                  break;
                }
              }
            }

            v109 = [momentNodes3 collectionBySubtracting:momentNodesWithBlockedFeature];
            v110 = [v109 collectionByIntersecting:v168];

            memoryGenerationContext2 = [(PGMemoryGenerator *)selfCopy memoryGenerationContext];
            v112 = [memoryGenerationContext2 interestingWithAlternateJunkingSubsetFromMomentNodes:v110];

            if ([v112 count] > 4)
            {
              universalDateInterval = [v112 universalDateInterval];
              [universalDateInterval duration];
              v115 = v114;

              universalDateInterval2 = [momentNodes3 universalDateInterval];
              [universalDateInterval2 duration];
              v118 = v117;
              v119 = MEMORY[0x277D27690];
              startDate5 = [universalDateInterval2 startDate];
              v121 = [v119 yearFromDate:startDate5];

              v122 = MEMORY[0x277D27690];
              endDate5 = [universalDateInterval2 endDate];
              v124 = [v122 yearFromDate:endDate5];

              if (((v163 - v124) & ~((v163 - v124) >> 63)) >= 10)
              {
                v125 = 10;
              }

              else
              {
                v125 = (v163 - v124) & ~((v163 - v124) >> 63);
              }

              if (v124 < v121)
              {
                v126 = -1;
              }

              else
              {
                v126 = v124 - v121;
              }

              v127 = v126 + 1;
              if (v124 - v121 <= 9)
              {
                v128 = v127 / 10.0 * 0.4;
              }

              else
              {
                v128 = 0.4;
              }

              if (v115 < 7889400.0 || v115 < v118 / 3.0)
              {
                v164 = (v164 + 1);
              }

              else
              {
                supersetCityNodes4 = [v174 supersetCityNodes];
                v130 = [supersetCityNodes4 count];
                v131 = supersetCityNodes4;
                if (v130 == 1 || (v132 = [densestCloseLocationNodes5 count], v131 = densestCloseLocationNodes5, v132 == 1))
                {
                  anyNode2 = [v131 anyNode];
                }

                else
                {
                  stateNodeAsCollection2 = [v174 stateNodeAsCollection];
                  anyNode2 = [stateNodeAsCollection2 anyNode];
                }

                v135 = [densestCloseLocationNodes5 collectionByFormingUnionWith:supersetCityNodes4];
                v136 = [[PGPotentialPastSupersetMemory alloc] initWithSupersetLocationNode:anyNode2 supersetDateInterval:universalDateInterval2 interestingMomentNodes:v112 momentNodes:momentNodes3];
                [(PGPotentialMemory *)v136 setScore:v128 + v125 / 10.0 * 0.6];
                v137 = [PGFeature featureWithNode:anyNode2];
                if (v137)
                {
                  v138 = [MEMORY[0x277CBEB98] setWithObject:v137];
                  [(PGPotentialMemory *)v136 setFeatures:v138];
                }

                [(PGPotentialPastSupersetMemory *)v136 setSupersetLocationNodes:v135];
                if ([localIdentifier length])
                {
                  v139 = [MEMORY[0x277CBEB98] setWithObject:localIdentifier];
                  [(PGPotentialMemory *)v136 setPeopleUUIDs:v139];
                }

                [v160 addObject:v136];
              }
            }

            else
            {
              ++v167;
            }
          }

LABEL_92:
        }

        else
        {
          ++v177;
        }
      }

      v179 = [v175 countByEnumeratingWithState:&v210 objects:v258 count:16];
    }

    while (v179);
  }

  else
  {
    v177 = 0;
    v166 = 0;
    v167 = 0;
    v164 = 0;
    v172 = 0;
  }

  v140 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"score" ascending:0];
  v256[0] = v140;
  v141 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:1];
  v256[1] = v141;
  v142 = [MEMORY[0x277CBEA60] arrayWithObjects:v256 count:2];

  [v160 sortUsingDescriptors:v142];
  v204 = 0u;
  v205 = 0u;
  v202 = 0u;
  v203 = 0u;
  v143 = v160;
  v144 = 0;
  v145 = [v143 countByEnumeratingWithState:&v202 objects:v255 count:16];
  if (v145)
  {
    v146 = *v203;
    do
    {
      for (ii = 0; ii != v145; ++ii)
      {
        if (*v203 != v146)
        {
          objc_enumerationMutation(v143);
        }

        v148 = *(*(&v202 + 1) + 8 * ii);
        [v148 computeContentScore];
        if (v149 > 0.5 || [(PGFeaturedMemoryGenerator *)selfCopy usesLowRequirements])
        {
          buf[0] = 0;
          usingBlockCopy[2](usingBlockCopy, v148, buf);
          if (buf[0])
          {
            goto LABEL_109;
          }
        }

        else
        {
          ++v144;
        }
      }

      v145 = [v143 countByEnumeratingWithState:&v202 objects:v255 count:16];
    }

    while (v145);
  }

LABEL_109:

  loggingConnection = [(PGMemoryGenerator *)selfCopy loggingConnection];
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219776;
    *&buf[4] = 0;
    *&buf[12] = 2048;
    *&buf[14] = v167;
    *&buf[22] = 2048;
    v264 = v164;
    *v265 = 2048;
    *&v265[2] = v166;
    *&v265[10] = 2048;
    *&v265[12] = v172;
    v266 = 2048;
    v267 = v144;
    v268 = 2048;
    v269 = 0;
    v270 = 2048;
    v271 = v177;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "Memory Creation Request: Found %lu, rejected %lu not interseting enough, %lu small superset duration overlap, %lu not disjoint from recent close supersets, %lu untimely, %lu low scoring, %lu insufficiently Superseted, %lu not enough scenes processed", buf, 0x52u);
  }

  _Block_object_dispose(&v223, 8);
}

void __111__PGPastSupersetMemoryGenerator__enumeratePotentialMemoriesForProcessingWindow_graph_progressBlock_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) targetsForSourceIdentifier:{objc_msgSend(v3, "identifier")}];
  v5 = [*(a1 + 40) targetsForSources:v4];
  if ([v5 count])
  {
    v17 = v4;
    v6 = [v5 anyNode];
    v7 = [*(a1 + 48) densestCloseLocationNodeFromLocationNode:v6 withDateInterval:0 locationMask:*(a1 + 72)];
    if (!v7)
    {
      v8 = +[PGLogging sharedLogging];
      v9 = [v8 loggingConnection];

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v19 = v6;
        _os_log_error_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_ERROR, "No densestLocationNode for supersetCityNode %@", buf, 0xCu);
      }

      v7 = v6;
    }

    v10 = [*(a1 + 56) targetsForSourceIdentifier:{objc_msgSend(v3, "identifier")}];
    v11 = [v3 universalDateInterval];
    v12 = [v6 collection];
    v13 = [v7 locationNodeCollection];
    v14 = [PGPastSupersetGroup pastSupersetGroupWithMomentNodes:v10 dateInterval:v11 supersetCityNodeAsCollection:v12 densestCloseLocationNodeAsCollection:v13 locationHelper:*(a1 + 48)];

    [*(a1 + 64) addObject:v14];
    v4 = v17;
  }

  else
  {
    v15 = +[PGLogging sharedLogging];
    v6 = [v15 loggingConnection];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v16 = [v4 anyNode];
      *buf = 138477827;
      v19 = v16;
      _os_log_error_impl(&dword_22F0FC000, v6, OS_LOG_TYPE_ERROR, "No supersetCityNode for home superset best address node %{private}@", buf, 0xCu);
    }
  }
}

void __111__PGPastSupersetMemoryGenerator__enumeratePotentialMemoriesForProcessingWindow_graph_progressBlock_usingBlock___block_invoke_239(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) addressNodesFromLocationNodes:a3];
  v7 = [v6 anyNode];
  [v7 coordinate];
  v11 = v8;
  v12 = v9;

  CLLocationCoordinate2DGetDistanceFrom();
  if (v10 <= 160000.0)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 40));
    goto LABEL_5;
  }

  if (v10 > [*(a1 + 48) count] * 160000.0)
  {
LABEL_5:
    *a4 = 1;
  }
}

void __111__PGPastSupersetMemoryGenerator__enumeratePotentialMemoriesForProcessingWindow_graph_progressBlock_usingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a2, "identifier")}];
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];

  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    [*(a1 + 32) setObject:v4 forKeyedSubscript:v12];
  }

  v5 = [*(a1 + 32) objectForKeyedSubscript:v12];
  v6 = [*(a1 + 40) dateInterval];
  [v5 addObject:v6];

  if (*(a1 + 56) == 1)
  {
    v7 = *(*(*(a1 + 48) + 8) + 40);
    v8 = [*(a1 + 40) densestCloseLocationNodes];
    v9 = [v7 collectionByFormingUnionWith:v8];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

@end