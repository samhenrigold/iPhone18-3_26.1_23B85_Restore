@interface PGMemoryGenerationHelper
+ (BOOL)dates:(id)dates passSpreadicityWithMinimumCardinal:(unint64_t)cardinal minimumTimeInterval:(double)interval;
+ (BOOL)prepareAssets:(id)assets forMemoriesWithTopTierAestheticScore:(double)score curationContext:(id)context;
+ (id)assetFetchResultForMomentNodes:(id)nodes inLocationOrAreaNode:(id)node requireInteresting:(BOOL)interesting curationManager:(id)manager progressReporter:(id)reporter;
+ (id)assetLocalIdentifiersFromAssets:(id)assets;
+ (id)assetUUIDsFromAssets:(id)assets;
+ (id)feederForMemoriesWithAssetCollection:(id)collection memoryCurationSession:(id)session graph:(id)graph allowGuestAsset:(BOOL)asset;
+ (id)feederForMemoriesWithAssetFetchResult:(id)result memoryCurationSession:(id)session graph:(id)graph;
+ (id)feederForMemoriesWithAssetLocalIdentifiers:(id)identifiers memoryCurationSession:(id)session graph:(id)graph allowGuestAsset:(BOOL)asset;
+ (id)feederForMemoriesWithFeeder:(id)feeder topTierAestheticScore:(double)score didFeederChange:(BOOL *)change curationContext:(id)context;
+ (id)keyAssetFetchResultForHighlightGroupUUIDs:(id)ds curationManager:(id)manager allowGuestAsset:(BOOL)asset;
+ (id)scoringContextForMemoriesWithAssets:(id)assets withTopTierAestheticScore:(double)score;
@end

@implementation PGMemoryGenerationHelper

+ (BOOL)dates:(id)dates passSpreadicityWithMinimumCardinal:(unint64_t)cardinal minimumTimeInterval:(double)interval
{
  v93 = *MEMORY[0x277D85DE8];
  datesCopy = dates;
  if ([datesCopy count] >= cardinal)
  {
    v9 = [objc_alloc(MEMORY[0x277D3AC98]) initWithNumericValueKeypaths:&unk_284485BB0];
    [v9 setK:cardinal];
    allObjects = [datesCopy allObjects];
    v11 = [v9 performWithDataset:allObjects progressBlock:&__block_literal_global_36129];

    if ([v11 count] >= cardinal)
    {
      cardinalCopy = cardinal;
      v55 = v9;
      v56 = datesCopy;
      v57 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v11, "count")}];
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v54 = v11;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v74 objects:v92 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v75;
        v16 = 1.79769313e308;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v75 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v18 = *(*(&v74 + 1) + 8 * i);
            v70 = 0u;
            v71 = 0u;
            v72 = 0u;
            v73 = 0u;
            objects = [v18 objects];
            v20 = [objects countByEnumeratingWithState:&v70 objects:v91 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = 0;
              v23 = *v71;
              do
              {
                for (j = 0; j != v21; ++j)
                {
                  if (*v71 != v23)
                  {
                    objc_enumerationMutation(objects);
                  }

                  v25 = *(*(&v70 + 1) + 8 * j);
                  if (v22)
                  {
                    v26 = [v22 earlierDate:v25];

                    v22 = v26;
                  }

                  else
                  {
                    v22 = v25;
                  }
                }

                v21 = [objects countByEnumeratingWithState:&v70 objects:v91 count:16];
              }

              while (v21);
            }

            else
            {
              v22 = 0;
            }

            v68 = 0u;
            v69 = 0u;
            v66 = 0u;
            v67 = 0u;
            v27 = v57;
            v28 = [v27 countByEnumeratingWithState:&v66 objects:v90 count:16];
            if (v28)
            {
              v29 = v28;
              v30 = *v67;
              do
              {
                for (k = 0; k != v29; ++k)
                {
                  if (*v67 != v30)
                  {
                    objc_enumerationMutation(v27);
                  }

                  [v22 timeIntervalSinceDate:*(*(&v66 + 1) + 8 * k)];
                  v33 = fabs(v32);
                  if (v16 >= v33)
                  {
                    v16 = v33;
                  }
                }

                v29 = [v27 countByEnumeratingWithState:&v66 objects:v90 count:16];
              }

              while (v29);
            }

            if (v22)
            {
              [v27 addObject:v22];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v74 objects:v92 count:16];
        }

        while (v14);
      }

      else
      {
        v16 = 1.79769313e308;
      }

      v34 = objc_alloc_init(MEMORY[0x277CCA968]);
      [v34 setTimeStyle:0];
      [v34 setDateStyle:1];
      v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v36 = [v57 sortedArrayUsingSelector:sel_compare_];
      v37 = [v36 countByEnumeratingWithState:&v62 objects:v89 count:16];
      datesCopy = v56;
      if (v37)
      {
        v38 = v37;
        v39 = *v63;
        do
        {
          for (m = 0; m != v38; ++m)
          {
            if (*v63 != v39)
            {
              objc_enumerationMutation(v36);
            }

            v41 = [v34 stringFromDate:*(*(&v62 + 1) + 8 * m)];
            [v35 addObject:v41];
          }

          v38 = [v36 countByEnumeratingWithState:&v62 objects:v89 count:16];
        }

        while (v38);
      }

      v42 = [v35 componentsJoinedByString:{@", "}];
      v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      allObjects2 = [v56 allObjects];
      v45 = [allObjects2 sortedArrayUsingSelector:sel_compare_];

      v46 = [v45 countByEnumeratingWithState:&v58 objects:v88 count:16];
      if (v46)
      {
        v47 = v46;
        v48 = *v59;
        do
        {
          for (n = 0; n != v47; ++n)
          {
            if (*v59 != v48)
            {
              objc_enumerationMutation(v45);
            }

            v50 = [v34 stringFromDate:*(*(&v58 + 1) + 8 * n)];
            [v43 addObject:v50];
          }

          v47 = [v45 countByEnumeratingWithState:&v58 objects:v88 count:16];
        }

        while (v47);
      }

      v51 = [v43 componentsJoinedByString:{@", "}];
      v8 = v16 >= interval;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        *buf = 67110146;
        v79 = v16 >= interval;
        v80 = 1024;
        v81 = cardinalCopy;
        v82 = 1024;
        v83 = (interval / 86400.0);
        v84 = 2112;
        v85 = v42;
        v86 = 2112;
        v87 = v51;
        _os_log_debug_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "passesSpreadicity %d for cardinal %d, interval %d days, with consolidated dates %@\n\toriginal dates %@", buf, 0x28u);
      }

      v11 = v54;
      v9 = v55;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)assetFetchResultForMomentNodes:(id)nodes inLocationOrAreaNode:(id)node requireInteresting:(BOOL)interesting curationManager:(id)manager progressReporter:(id)reporter
{
  interestingCopy = interesting;
  v47 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  nodeCopy = node;
  managerCopy = manager;
  reporterCopy = reporter;
  if ([reporterCopy isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v46 = 130;
      *&v46[4] = 2080;
      *&v46[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/Memory Generators/PGMemoryGenerationHelper.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v15 = 0;
    goto LABEL_23;
  }

  label = [nodeCopy label];
  v17 = [label isEqualToString:@"City"];
  v18 = [label isEqualToString:@"Area"];
  v19 = [label isEqualToString:@"State"];
  defaultAssetFetchOptionsForMemories = [managerCopy defaultAssetFetchOptionsForMemories];
  v44 = nodesCopy;
  v21 = nodesCopy;
  v22 = v21;
  v43 = managerCopy;
  if (interestingCopy)
  {
    interestingSubset = [v21 interestingSubset];

    v22 = interestingSubset;
  }

  v24 = MEMORY[0x277CCAC30];
  uuids = [v22 uuids];
  v26 = [v24 predicateWithFormat:@"%K IN %@", @"moment.uuid", uuids];
  [defaultAssetFetchOptionsForMemories setInternalPredicate:v26];

  v27 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:defaultAssetFetchOptionsForMemories];
  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v41 = v27;
  v42 = label;
  if (v17)
  {
    fetchedObjects = [v27 fetchedObjects];
    collection = [nodeCopy collection];
    v31 = [PGCurationManager filterAssets:fetchedObjects inMomentNodes:v22 forCityNodes:collection withMaximumDistance:5000.0];
  }

  else if (v18)
  {
    fetchedObjects = [v27 fetchedObjects];
    collection = [nodeCopy collection];
    v31 = [PGCurationManager filterAssets:fetchedObjects inMomentNodes:v22 forAreaNodes:collection withMaximumDistance:20000.0];
  }

  else
  {
    if (!v19)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *v46 = "+[PGMemoryGenerationHelper assetFetchResultForMomentNodes:inLocationOrAreaNode:requireInteresting:curationManager:progressReporter:]";
        *&v46[8] = 2112;
        *&v46[10] = label;
        _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s called for location node %@, see rdar://75269533", buf, 0x16u);
      }

      fetchedObjects2 = [v27 fetchedObjects];
      goto LABEL_14;
    }

    fetchedObjects = [v27 fetchedObjects];
    collection = [nodeCopy collection];
    v31 = [PGCurationManager filterAssets:fetchedObjects inMomentNodes:v22 forStateNodes:collection withMaximumDistance:5000.0];
  }

  fetchedObjects2 = v31;

LABEL_14:
  v33 = nodeCopy;
  [v28 addObjectsFromArray:fetchedObjects2];
  if ([v28 count])
  {
    v34 = objc_alloc(MEMORY[0x277CD98D0]);
    photoLibrary = [defaultAssetFetchOptionsForMemories photoLibrary];
    v36 = MEMORY[0x277CBEB98];
    fetchPropertySets = [defaultAssetFetchOptionsForMemories fetchPropertySets];
    v38 = [v36 setWithArray:fetchPropertySets];
    v39 = [v34 initWithObjects:v28 photoLibrary:photoLibrary fetchType:0 fetchPropertySets:v38 identifier:0 registerIfNeeded:0];
  }

  else
  {
    v39 = 0;
  }

  managerCopy = v43;
  if ([reporterCopy isCancelledWithProgress:1.0])
  {
    nodeCopy = v33;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v46 = 168;
      *&v46[4] = 2080;
      *&v46[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/Memory Generators/PGMemoryGenerationHelper.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v15 = 0;
  }

  else
  {
    v15 = v39;
    nodeCopy = v33;
  }

  nodesCopy = v44;
LABEL_23:

  return v15;
}

+ (id)keyAssetFetchResultForHighlightGroupUUIDs:(id)ds curationManager:(id)manager allowGuestAsset:(BOOL)asset
{
  assetCopy = asset;
  managerCopy = manager;
  dsCopy = ds;
  photoLibrary = [managerCopy photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  dsCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"uuid IN %@", dsCopy];

  [librarySpecificFetchOptions setInternalPredicate:dsCopy];
  v12 = [MEMORY[0x277CD9958] fetchHighlightsWithOptions:librarySpecificFetchOptions];
  defaultAssetFetchOptionsForMemories = [managerCopy defaultAssetFetchOptionsForMemories];

  [defaultAssetFetchOptionsForMemories setIncludeGuestAssets:assetCopy];
  v14 = [MEMORY[0x277CD97A8] fetchKeyAssetByHighlightUUIDForHighlights:v12 options:defaultAssetFetchOptionsForMemories];
  v15 = objc_alloc(MEMORY[0x277CD98D0]);
  allValues = [v14 allValues];
  v17 = *MEMORY[0x277CD9BE0];
  v18 = MEMORY[0x277CBEB98];
  fetchPropertySets = [defaultAssetFetchOptionsForMemories fetchPropertySets];
  v20 = [v18 setWithArray:fetchPropertySets];
  v21 = [v15 initWithObjects:allValues photoLibrary:photoLibrary fetchType:v17 fetchPropertySets:v20 identifier:0 registerIfNeeded:0];

  return v21;
}

+ (id)assetLocalIdentifiersFromAssets:(id)assets
{
  v17 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  v4 = [MEMORY[0x277CBEB58] set];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = assetsCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        localIdentifier = [*(*(&v12 + 1) + 8 * i) localIdentifier];
        [v4 addObject:localIdentifier];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)assetUUIDsFromAssets:(id)assets
{
  v17 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  v4 = [MEMORY[0x277CBEB58] set];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = assetsCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        uuid = [*(*(&v12 + 1) + 8 * i) uuid];
        [v4 addObject:uuid];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (BOOL)prepareAssets:(id)assets forMemoriesWithTopTierAestheticScore:(double)score curationContext:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  contextCopy = context;
  v10 = [self scoringContextForMemoriesWithAssets:assetsCopy withTopTierAestheticScore:score];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = assetsCopy;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v19;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v14 |= [*(*(&v18 + 1) + 8 * i) prepareWithAlternateJunkingHeuristics:1 withContext:v10 curationContext:contextCopy blockSocialMediaImportedAssets:{PGMemoryGenerationBlockSocialMediaImportedAssets, v18}];
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  return v14 & 1;
}

+ (id)scoringContextForMemoriesWithAssets:(id)assets withTopTierAestheticScore:(double)score
{
  v4 = [MEMORY[0x277D3C7A0] scoringContextWithAssets:assets aestheticScoreThresholdToBeAwesome:score];
  [v4 setShouldEmphasizePanorama:0];

  return v4;
}

+ (id)feederForMemoriesWithFeeder:(id)feeder topTierAestheticScore:(double)score didFeederChange:(BOOL *)change curationContext:(id)context
{
  feederCopy = feeder;
  contextCopy = context;
  allItems = [feederCopy allItems];
  v13 = [self prepareAssets:allItems forMemoriesWithTopTierAestheticScore:contextCopy curationContext:score];

  if (change)
  {
    *change = v13;
  }

  return feederCopy;
}

+ (id)feederForMemoriesWithAssetFetchResult:(id)result memoryCurationSession:(id)session graph:(id)graph
{
  resultCopy = result;
  sessionCopy = session;
  graphCopy = graph;
  if ([resultCopy count])
  {
    fetchPropertySets = [resultCopy fetchPropertySets];
    v12 = MEMORY[0x277CD97A8];
    curationContext = [sessionCopy curationContext];
    v14 = [v12 clsAllAssetsFromFetchResult:resultCopy prefetchOptions:31 curationContext:curationContext];

    infoNode = [graphCopy infoNode];
    [infoNode topTierAestheticScore];
    v17 = v16;
    curationContext2 = [sessionCopy curationContext];
    [self prepareAssets:v14 forMemoriesWithTopTierAestheticScore:curationContext2 curationContext:v17];

    v19 = objc_alloc(MEMORY[0x277CD98D0]);
    photoLibrary = [resultCopy photoLibrary];
    fetchType = [resultCopy fetchType];
    v22 = [v19 initWithObjects:v14 photoLibrary:photoLibrary fetchType:fetchType fetchPropertySets:fetchPropertySets identifier:0 registerIfNeeded:0];

    v23 = objc_alloc(MEMORY[0x277D27710]);
    curationContext3 = [sessionCopy curationContext];
    v25 = [v23 initWithAssetFetchResult:v22 curationContext:curationContext3];
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

+ (id)feederForMemoriesWithAssetLocalIdentifiers:(id)identifiers memoryCurationSession:(id)session graph:(id)graph allowGuestAsset:(BOOL)asset
{
  assetCopy = asset;
  graphCopy = graph;
  sessionCopy = session;
  identifiersCopy = identifiers;
  curationManager = [sessionCopy curationManager];
  defaultAssetFetchOptionsForMemories = [curationManager defaultAssetFetchOptionsForMemories];

  [defaultAssetFetchOptionsForMemories setIncludeGuestAssets:assetCopy];
  v15 = [MEMORY[0x277CD97A8] fetchAssetsWithLocalIdentifiers:identifiersCopy options:defaultAssetFetchOptionsForMemories];

  v16 = [self feederForMemoriesWithAssetFetchResult:v15 memoryCurationSession:sessionCopy graph:graphCopy];

  return v16;
}

+ (id)feederForMemoriesWithAssetCollection:(id)collection memoryCurationSession:(id)session graph:(id)graph allowGuestAsset:(BOOL)asset
{
  assetCopy = asset;
  graphCopy = graph;
  sessionCopy = session;
  collectionCopy = collection;
  curationManager = [sessionCopy curationManager];
  defaultAssetFetchOptionsForMemories = [curationManager defaultAssetFetchOptionsForMemories];

  [defaultAssetFetchOptionsForMemories setIncludeGuestAssets:assetCopy];
  v15 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:collectionCopy options:defaultAssetFetchOptionsForMemories];

  v16 = [self feederForMemoriesWithAssetFetchResult:v15 memoryCurationSession:sessionCopy graph:graphCopy];

  return v16;
}

@end