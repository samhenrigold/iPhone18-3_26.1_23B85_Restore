@interface PGFoodieMemoryGenerator
+ (id)incompatibleMomentNodesInGraph:(id)graph;
- (PGFoodieMemoryGenerator)initWithMemoryGenerationContext:(id)context;
- (id)_foodieTitleGeneratorWithMomentNodes:(id)nodes featureNodes:(id)featureNodes titleGenerationContext:(id)context;
- (id)curationOptionsWithRequiredAssetUUIDs:(id)ds eligibleAssetUUIDs:(id)iDs triggeredMemory:(id)memory;
- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)memory inGraph:(id)graph;
- (id)relevantFeederForTriggeredMemory:(id)memory inGraph:(id)graph allowGuestAsset:(BOOL)asset progressReporter:(id)reporter;
- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph;
- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type;
- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block;
@end

@implementation PGFoodieMemoryGenerator

- (id)relevantFeederForTriggeredMemory:(id)memory inGraph:(id)graph allowGuestAsset:(BOOL)asset progressReporter:(id)reporter
{
  assetCopy = asset;
  v154 = *MEMORY[0x277D85DE8];
  memoryCopy = memory;
  graphCopy = graph;
  reporterCopy = reporter;
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];
  v14 = [(PGGraphNodeCollection *)PGGraphSceneFeatureNodeCollection subsetInCollection:memoryFeatureNodes];
  if ([v14 count] == 1)
  {
    memoryMomentNodes = [memoryCopy memoryMomentNodes];
    v16 = [(PGGraphEdgeCollection *)PGGraphMomentFeaturesEdgeCollection edgesFromNodes:memoryMomentNodes toNodes:v14];
    if (![v16 count])
    {
      log = [(PGMemoryGenerator *)self loggingConnection];
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_22F0FC000, log, OS_LOG_TYPE_ERROR, "[PGFoodieMemoryGenerator] No moment feature edges for food found", buf, 2u);
      }

      v38 = 0;
      goto LABEL_65;
    }

    v125 = v14;
    v126 = graphCopy;
    v128 = memoryFeatureNodes;
    v124 = v16;
    allRelevantAssetUUIDs = [v16 allRelevantAssetUUIDs];
    memoryCurationSession = [(PGMemoryGenerator *)self memoryCurationSession];
    curationManager = [memoryCurationSession curationManager];
    defaultAssetFetchOptionsForMemories = [curationManager defaultAssetFetchOptionsForMemories];

    [defaultAssetFetchOptionsForMemories setIncludeGuestAssets:assetCopy];
    v21 = MEMORY[0x277CD97A8];
    allObjects = [allRelevantAssetUUIDs allObjects];
    v132 = defaultAssetFetchOptionsForMemories;
    v23 = [v21 fetchAssetsWithUUIDs:allObjects options:defaultAssetFetchOptionsForMemories];

    v24 = MEMORY[0x277CD97A8];
    memoryCurationSession2 = [(PGMemoryGenerator *)self memoryCurationSession];
    curationContext = [memoryCurationSession2 curationContext];
    v123 = v23;
    v27 = [v24 clsAllAssetsFromFetchResult:v23 prefetchOptions:1 curationContext:curationContext];

    memoryCurationSession3 = [(PGMemoryGenerator *)self memoryCurationSession];
    photoLibrary = [memoryCurationSession3 photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    v31 = MEMORY[0x277CD97B8];
    localIdentifiers = [memoryMomentNodes localIdentifiers];
    allObjects2 = [localIdentifiers allObjects];
    v122 = librarySpecificFetchOptions;
    v34 = [v31 fetchAssetCollectionsWithLocalIdentifiers:allObjects2 options:librarySpecificFetchOptions];

    v35 = v34;
    v36 = [v34 count];
    v127 = memoryMomentNodes;
    log = allRelevantAssetUUIDs;
    if (v36 < [memoryMomentNodes count])
    {
      loggingConnection = [(PGMemoryGenerator *)self loggingConnection];
      memoryFeatureNodes = v128;
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGFoodieMemoryGenerator] Failed to fetch all momentNodes, graph is out-of-sync with the photo library.", buf, 2u);
      }

      v38 = 0;
      goto LABEL_64;
    }

    selfCopy = self;
    memoryFeatureNodes = v128;
    v39 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:v128];
    v142 = [v39 count];
    v121 = v39;
    if (v142)
    {
      v40 = [(PGGraphEdgeCollection *)PGGraphMomentFeaturesEdgeCollection edgesFromNodes:memoryMomentNodes toNodes:v39];
      if (![v40 count])
      {
        v144 = v40;
        loggingConnection2 = [(PGMemoryGenerator *)self loggingConnection];
        if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "[PGFoodieMemoryGenerator] No moment feature edges for person found", buf, 2u);
        }

        v38 = 0;
        allObjects3 = MEMORY[0x277CBEBF8];
        loggingConnection = v121;
LABEL_63:

LABEL_64:
        v16 = v124;
        v14 = v125;
        graphCopy = v126;
        memoryMomentNodes = v127;
LABEL_65:

        goto LABEL_66;
      }

      [v40 allRelevantAssetUUIDs];
      v42 = v41 = v40;
      allObjects3 = [v42 allObjects];
    }

    else
    {
      allObjects3 = MEMORY[0x277CBEBF8];
    }

    v119 = reporterCopy;
    v120 = memoryCopy;
    v144 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v129 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v130 = v35;
    if ([v35 count])
    {
      v43 = 0;
      do
      {
        context = objc_autoreleasePoolPush();
        v136 = v43;
        v134 = [v35 objectAtIndexedSubscript:v43];
        v44 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:? options:?];
        v45 = MEMORY[0x277CD97A8];
        memoryCurationSession4 = [(PGMemoryGenerator *)selfCopy memoryCurationSession];
        curationContext2 = [memoryCurationSession4 curationContext];
        v133 = v44;
        v48 = [v45 clsAllAssetsFromFetchResult:v44 prefetchOptions:1 curationContext:curationContext2];

        v49 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v137 = objc_alloc_init(MEMORY[0x277CBEB18]);
        if ([v48 count])
        {
          v50 = 0;
          v140 = v49;
          do
          {
            v51 = objc_autoreleasePoolPush();
            v52 = [v48 objectAtIndexedSubscript:v50];
            uuid = [v52 uuid];
            [v49 addObject:uuid];
            if (([allRelevantAssetUUIDs containsObject:uuid]& 1) == 0)
            {
              clsPeopleCount = [v52 clsPeopleCount];
              if (clsPeopleCount)
              {
                if (!v142 || (v55 = clsPeopleCount, v56 = [allObjects3 containsObject:uuid], v55 <= 2) && v56)
                {
                  creationDate = [v52 creationDate];
                  [v52 locationCoordinate];
                  *buf = v58;
                  v153 = v59;
                  if ([v27 count])
                  {
                    v60 = 0;
                    while (1)
                    {
                      v61 = [v27 objectAtIndexedSubscript:v60];
                      creationDate2 = [v61 creationDate];
                      [creationDate timeIntervalSinceDate:creationDate2];
                      v64 = fabs(v63);

                      if (v64 < 600.0)
                      {
                        [v61 locationCoordinate];
                        v149 = v156;
                        if (CLLocationCoordinate2DIsValid(v156))
                        {
                          CLLocationCoordinate2DGetDistanceFrom();
                          if (v65 < 200.0)
                          {
                            break;
                          }
                        }
                      }

                      if (++v60 >= [v27 count])
                      {
                        goto LABEL_34;
                      }
                    }

                    [v137 addObject:v52];
                  }

LABEL_34:

                  allRelevantAssetUUIDs = log;
                  v49 = v140;
                }
              }
            }

            objc_autoreleasePoolPop(v51);
            ++v50;
          }

          while (v50 < [v48 count]);
        }

        if (v142 && ![v137 count])
        {
          v66 = v144;
          v67 = v49;
        }

        else
        {
          v66 = v129;
          v67 = v137;
        }

        [v66 addObjectsFromArray:{v67, v119, v120}];
        v35 = v130;

        objc_autoreleasePoolPop(context);
        v43 = v136 + 1;
      }

      while (v136 + 1 < [v130 count]);
    }

    loggingConnection2 = v129;
    v145 = 0u;
    v146 = 0u;
    v147 = 0u;
    v148 = 0u;
    v69 = v27;
    v70 = [v69 countByEnumeratingWithState:&v145 objects:v151 count:16];
    loggingConnection = v121;
    if (v70)
    {
      v71 = v70;
      v72 = *v146;
      do
      {
        for (i = 0; i != v71; ++i)
        {
          if (*v146 != v72)
          {
            objc_enumerationMutation(v69);
          }

          v74 = *(*(&v145 + 1) + 8 * i);
          uuid2 = [v74 uuid];
          v76 = [v144 containsObject:uuid2];

          if ((v76 & 1) == 0)
          {
            [loggingConnection2 addObject:v74];
          }
        }

        v71 = [v69 countByEnumeratingWithState:&v145 objects:v151 count:16];
      }

      while (v71);
    }

    if (v142)
    {
      v77 = objc_alloc(MEMORY[0x277CD98D0]);
      photoLibrary2 = [v132 photoLibrary];
      v79 = MEMORY[0x277CBEB98];
      fetchPropertySets = [v132 fetchPropertySets];
      v81 = [v79 setWithArray:fetchPropertySets];
      v82 = [v77 initWithObjects:loggingConnection2 photoLibrary:photoLibrary2 fetchType:0 fetchPropertySets:v81 identifier:0 registerIfNeeded:0];

      memoryCurationSession5 = [(PGMemoryGenerator *)selfCopy memoryCurationSession];
      v38 = [PGMemoryGenerationHelper feederForMemoriesWithAssetFetchResult:v82 memoryCurationSession:memoryCurationSession5 graph:v126];
      reporterCopy = v119;
      memoryCopy = v120;
    }

    else
    {
      v82 = [(PGGraphNodeCollection *)PGGraphHighlightGroupNodeCollection subsetInCollection:v128];
      v84 = [(PGGraphNodeCollection *)PGGraphLocationCityNodeCollection subsetInCollection:v128];
      if ([v82 count] || objc_msgSend(v84, "count"))
      {
        if ([v84 count])
        {
          v85 = v127;
        }

        else
        {
          v86 = [(PGGraphNodeCollection *)PGGraphNamedLocationNodeCollection subsetInCollection:v128];
          addressNodes = [v86 addressNodes];
          cityNodes = [addressNodes cityNodes];
          v85 = v127;
          cityNodes2 = [v127 cityNodes];
          v90 = [cityNodes collectionByIntersecting:cityNodes2];

          v84 = v90;
        }

        v143 = v84;
        v91 = [PGCurationManager filterAssets:loggingConnection2 inMomentNodes:v85 forCityNodes:v84 withMaximumDistance:5000.0];
        v92 = objc_alloc(MEMORY[0x277CD98D0]);
        photoLibrary3 = [v132 photoLibrary];
        v94 = MEMORY[0x277CBEB98];
        fetchPropertySets2 = [v132 fetchPropertySets];
        v96 = [v94 setWithArray:fetchPropertySets2];
        v97 = [v92 initWithObjects:v91 photoLibrary:photoLibrary3 fetchType:0 fetchPropertySets:v96 identifier:0 registerIfNeeded:0];

        memoryCurationSession6 = [(PGMemoryGenerator *)selfCopy memoryCurationSession];
        v38 = [PGMemoryGenerationHelper feederForMemoriesWithAssetFetchResult:v97 memoryCurationSession:memoryCurationSession6 graph:v126];
        loggingConnection = v121;
      }

      else
      {
        v143 = v84;
        v100 = [(PGGraphNodeCollection *)PGGraphAddressNodeCollection subsetInCollection:v128];
        v97 = [(PGGraphNodeCollection *)PGGraphBusinessNodeCollection subsetInCollection:v128];
        v141 = v82;
        if ([v100 count] || objc_msgSend(v97, "count"))
        {
          memoryCurationSession6 = [v100 locations];
          v91 = v100;
          if (![v100 count])
          {
            anyNode = [v97 anyNode];
            [anyNode coordinates];
            v104 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:v102 longitude:v103];
            v150 = v104;
            v105 = [MEMORY[0x277CBEA60] arrayWithObjects:&v150 count:1];

            memoryCurationSession6 = v105;
          }

          memoryCurationSession8 = [PGCurationManager filterAssets:loggingConnection2 withLocations:memoryCurationSession6 maximumDistance:100.0];
          v107 = objc_alloc(MEMORY[0x277CD98D0]);
          photoLibrary4 = [v132 photoLibrary];
          v109 = MEMORY[0x277CBEB98];
          fetchPropertySets3 = [v132 fetchPropertySets];
          v111 = [v109 setWithArray:fetchPropertySets3];
          v112 = [v107 initWithObjects:memoryCurationSession8 photoLibrary:photoLibrary4 fetchType:0 fetchPropertySets:v111 identifier:0 registerIfNeeded:0];

          memoryCurationSession7 = [(PGMemoryGenerator *)selfCopy memoryCurationSession];
          v38 = [PGMemoryGenerationHelper feederForMemoriesWithAssetFetchResult:v112 memoryCurationSession:memoryCurationSession7 graph:v126];

          loggingConnection = v121;
        }

        else
        {
          v91 = v100;
          v114 = objc_alloc(MEMORY[0x277CD98D0]);
          photoLibrary5 = [v132 photoLibrary];
          v116 = MEMORY[0x277CBEB98];
          fetchPropertySets4 = [v132 fetchPropertySets];
          v118 = [v116 setWithArray:fetchPropertySets4];
          memoryCurationSession6 = [v114 initWithObjects:loggingConnection2 photoLibrary:photoLibrary5 fetchType:0 fetchPropertySets:v118 identifier:0 registerIfNeeded:0];

          memoryCurationSession8 = [(PGMemoryGenerator *)selfCopy memoryCurationSession];
          v38 = [PGMemoryGenerationHelper feederForMemoriesWithAssetFetchResult:memoryCurationSession6 memoryCurationSession:memoryCurationSession8 graph:v126];
        }

        v82 = v141;
      }

      reporterCopy = v119;
      memoryCopy = v120;
      memoryCurationSession5 = v143;
    }

    memoryFeatureNodes = v128;
    v35 = v130;
    goto LABEL_63;
  }

  memoryMomentNodes = [(PGMemoryGenerator *)self loggingConnection];
  if (os_log_type_enabled(memoryMomentNodes, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = [v14 count];
    _os_log_error_impl(&dword_22F0FC000, memoryMomentNodes, OS_LOG_TYPE_ERROR, "[PGFoodieMemoryGenerator] One food scene feature node expected, found %d", buf, 8u);
  }

  v38 = 0;
LABEL_66:

  return v38;
}

- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)memory inGraph:(id)graph
{
  graphCopy = graph;
  memoryCopy = memory;
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];
  v9 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:memoryFeatureNodes];

  memoryCurationSession = [(PGMemoryGenerator *)self memoryCurationSession];
  curationManager = [memoryCurationSession curationManager];

  if ([v9 count])
  {
    anyNode = [v9 anyNode];
    localIdentifier = [anyNode localIdentifier];
    if (localIdentifier)
    {
      curationCriteriaFactory = [curationManager curationCriteriaFactory];
      v15 = [curationCriteriaFactory foodieCurationCriteriaWithPersonLocalIdentifier:localIdentifier client:1];
    }

    else
    {
      loggingConnection = [(PGMemoryGenerator *)self loggingConnection];
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGFoodieMemoryGenerator] Nil local identifier found for featured person, falling back to default key asset curation criteria", buf, 2u);
      }

      curationCriteriaFactory = [curationManager curationCriteriaFactory];
      v15 = [curationCriteriaFactory foodieCurationCriteriaWithClient:1];
    }

    v16 = v15;
  }

  else
  {
    anyNode = [curationManager curationCriteriaFactory];
    v16 = [anyNode foodieCurationCriteriaWithClient:1];
  }

  v20.receiver = self;
  v20.super_class = PGFoodieMemoryGenerator;
  v18 = [(PGMemoryGenerator *)&v20 keyAssetCurationOptionsWithTriggeredMemory:memoryCopy inGraph:graphCopy];

  [v18 setComplete:1];
  [v18 setCurationCriteria:v16];

  return v18;
}

- (id)_foodieTitleGeneratorWithMomentNodes:(id)nodes featureNodes:(id)featureNodes titleGenerationContext:(id)context
{
  nodesCopy = nodes;
  featureNodesCopy = featureNodes;
  contextCopy = context;
  v11 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:featureNodesCopy];
  if (![v11 count])
  {
    anyNode4 = [(PGGraphNodeCollection *)PGGraphHighlightGroupNodeCollection subsetInCollection:featureNodesCopy];
    if ([anyNode4 count])
    {
      v16 = [(PGGraphNodeCollection *)PGGraphNamedLocationNodeCollection subsetInCollection:featureNodesCopy];
      anyNode = [v16 anyNode];

      label = [anyNode label];
      if ([label isEqual:@"City"])
      {
        v19 = 1;
      }

      else if ([label isEqual:@"State"])
      {
        v19 = 2;
      }

      else if ([label isEqual:@"Country"])
      {
        v19 = 3;
      }

      else
      {
        v19 = 0;
      }

      v26 = [PGFoodieMemoryTitleGenerator alloc];
      temporarySet = [nodesCopy temporarySet];
      v25 = [(PGFoodieMemoryTitleGenerator *)v26 initWithMomentNodes:temporarySet tripLocationNode:anyNode tripTitleLocationType:v19 titleGenerationContext:contextCopy];
      goto LABEL_19;
    }

    anyNode = [(PGGraphNodeCollection *)PGGraphLocationCityNodeCollection subsetInCollection:featureNodesCopy];
    if ([anyNode count])
    {
      v23 = [PGFoodieMemoryTitleGenerator alloc];
      label = [nodesCopy temporarySet];
      temporarySet = [anyNode anyNode];
      v25 = [(PGFoodieMemoryTitleGenerator *)v23 initWithMomentNodes:label cityNode:temporarySet titleGenerationContext:contextCopy];
LABEL_19:
      v22 = v25;
LABEL_20:

      goto LABEL_21;
    }

    label = [(PGGraphNodeCollection *)PGGraphAddressNodeCollection subsetInCollection:featureNodesCopy];
    if ([label count])
    {
      v28 = [PGFoodieMemoryTitleGenerator alloc];
      temporarySet = [nodesCopy temporarySet];
      anyNode2 = [label anyNode];
      v30 = [(PGFoodieMemoryTitleGenerator *)v28 initWithMomentNodes:temporarySet addressNode:anyNode2 titleGenerationContext:contextCopy];
    }

    else
    {
      temporarySet = [(PGGraphNodeCollection *)PGGraphBusinessNodeCollection subsetInCollection:featureNodesCopy];
      v31 = [temporarySet count];
      v33 = [PGFoodieMemoryTitleGenerator alloc];
      anyNode2 = [nodesCopy temporarySet];
      if (v31)
      {
        anyNode3 = [temporarySet anyNode];
        v22 = [(PGFoodieMemoryTitleGenerator *)v33 initWithMomentNodes:anyNode2 businessNode:anyNode3 titleGenerationContext:contextCopy];

        goto LABEL_29;
      }

      v30 = [(PGTitleGenerator *)v33 initWithMomentNodes:anyNode2 type:0 titleGenerationContext:contextCopy];
    }

    v22 = v30;
LABEL_29:

    goto LABEL_20;
  }

  anyNode4 = [v11 anyNode];
  if (anyNode4)
  {
    v13 = [PGFoodieMemoryTitleGenerator alloc];
    temporarySet2 = [nodesCopy temporarySet];
    v15 = [(PGFoodieMemoryTitleGenerator *)v13 initWithMomentNodes:temporarySet2 personNode:anyNode4 titleGenerationContext:contextCopy];
  }

  else
  {
    loggingConnection = [(PGMemoryGenerator *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "person node is unexpectedly nil when our collection wasn't empty", buf, 2u);
    }

    v21 = [PGFoodieMemoryTitleGenerator alloc];
    temporarySet2 = [nodesCopy temporarySet];
    v15 = [(PGTitleGenerator *)v21 initWithMomentNodes:temporarySet2 type:0 titleGenerationContext:contextCopy];
  }

  v22 = v15;

LABEL_21:

  return v22;
}

- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph
{
  contextCopy = context;
  memoryCopy = memory;
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];
  memoryMomentNodes = [memoryCopy memoryMomentNodes];

  v14 = [(PGFoodieMemoryGenerator *)self _foodieTitleGeneratorWithMomentNodes:memoryMomentNodes featureNodes:memoryFeatureNodes titleGenerationContext:contextCopy];

  v15 = [(PGGraphNodeCollection *)PGGraphYearNodeCollection subsetInCollection:memoryFeatureNodes];
  if ([v15 count] == 1)
  {
    [v14 setFeaturedYearNodes:v15];
  }

  return v14;
}

- (id)curationOptionsWithRequiredAssetUUIDs:(id)ds eligibleAssetUUIDs:(id)iDs triggeredMemory:(id)memory
{
  v7.receiver = self;
  v7.super_class = PGFoodieMemoryGenerator;
  v5 = [(PGMemoryGenerator *)&v7 curationOptionsWithRequiredAssetUUIDs:ds eligibleAssetUUIDs:iDs triggeredMemory:memory];
  [v5 setMinimumNumberOfItems:15];
  [v5 setFailIfMinimumDurationNotReached:1];

  return v5;
}

- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block
{
  blockCopy = block;
  graphCopy = graph;
  v7 = [PGGraphSceneFeatureNodeCollection sceneFeatureNodesForSceneName:@"Food" inGraph:graphCopy];
  momentNodes = [v7 momentNodes];
  v9 = [PGFoodieMemoryGenerator incompatibleMomentNodesInGraph:graphCopy];

  v10 = [momentNodes collectionBySubtracting:v9];

  if ([v10 count])
  {
    v12 = 0;
    featureNodeCollection = [v7 featureNodeCollection];
    blockCopy[2](blockCopy, v10, featureNodeCollection, &v12);
  }
}

- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type
{
  v12 = *MEMORY[0x277D85DE8];
  if (type == 1)
  {
    return 6001;
  }

  typeCopy = type;
  if (type == 3)
  {
    return 6002;
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

- (PGFoodieMemoryGenerator)initWithMemoryGenerationContext:(id)context
{
  v12.receiver = self;
  v12.super_class = PGFoodieMemoryGenerator;
  v3 = [(PGMemoryGenerator *)&v12 initWithMemoryGenerationContext:context];
  v4 = v3;
  if (v3)
  {
    v3->_requireSceneProcessingMeetsThresholdOverTime = 1;
    v3->_requireFaceProcessingMeetsThresholdOverTime = 0;
    v5 = objc_alloc_init(PGMemoryMomentRequirements);
    momentRequirements = v4->_momentRequirements;
    v4->_momentRequirements = v5;

    [(PGMemoryMomentRequirements *)v4->_momentRequirements setFilterMomentsWithNotEnoughScenesProcessed:1];
    [(PGMemoryMomentRequirements *)v4->_momentRequirements setMinimumNumberOfRelevantAssets:2];
    v7 = +[PGOverTheYearsMemoryConfiguration strictDefaultOverTheYearsMemoryConfiguration];
    overTheYearsConfiguration = v4->_overTheYearsConfiguration;
    v4->_overTheYearsConfiguration = v7;

    [(PGOverTimeMemoryConfiguration *)v4->_overTheYearsConfiguration setMinimumNumberOfRelevantAssets:15];
    v9 = +[PGFeaturedTimePeriodMemoryConfiguration strictDefaultFeaturedYearMemoryConfiguration];
    featuredYearConfiguration = v4->_featuredYearConfiguration;
    v4->_featuredYearConfiguration = v9;

    [(PGOverTimeMemoryConfiguration *)v4->_featuredYearConfiguration setMinimumNumberOfRelevantAssets:15];
  }

  return v4;
}

+ (id)incompatibleMomentNodesInGraph:(id)graph
{
  v11[1] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v4 = [PGGraphPOINodeCollection poiNodesForLabel:@"Hospital" inGraph:graphCopy];
  v11[0] = @"Wedding";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v6 = [PGGraphMeaningNodeCollection meaningNodesWithMeaningLabels:v5 inGraph:graphCopy];

  momentNodes = [v4 momentNodes];
  momentNodes2 = [v6 momentNodes];
  v9 = [momentNodes collectionByFormingUnionWith:momentNodes2];

  return v9;
}

@end