@interface PGSyndicationProcessor
- (BOOL)processSavedSyndicatedAssetsWithError:(id *)error progressReporter:(id)reporter;
- (BOOL)processSyndicatedAssetCurationWithError:(id *)error progressReporter:(id)reporter;
- (BOOL)processSyndicatedAssetGuestInferenceWithError:(id *)error progressReporter:(id)reporter shareBackSuggester:(id)suggester;
- (BOOL)processSyndicatedAssetRevGeoCodingWithError:(id *)error progressReporter:(id)reporter;
- (PGSyndicationProcessor)initWithWorkingContext:(id)context;
- (PGSyndicationProcessor)initWithWorkingContext:(id)context syndicationLibrary:(id)library;
- (id)_bestAssetUUIDInAssetCluster:(id)cluster;
- (id)duplicateAssetUUIDsForSuggesterResult:(id)result assetsInferredAsGuestAsset:(id)asset syndicationLibrary:(id)library error:(id *)error progressBlock:(id)block;
- (id)guestAssetSenderIdentifiersByMomentUUIDForMomentUUIDs:(id)ds inPhotoLibrary:(id)library;
- (id)similarStacker;
- (id)syndicationPhotoLibraryWithError:(id *)error;
- (void)_persistCurationScores:(id)scores inPhotoLibrary:(id)library;
@end

@implementation PGSyndicationProcessor

- (BOOL)processSyndicatedAssetRevGeoCodingWithError:(id *)error progressReporter:(id)reporter
{
  v43 = *MEMORY[0x277D85DE8];
  reporterCopy = reporter;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v7 = [reporterCopy isCancelledWithProgress:0.0];
  *(v31 + 24) = v7;
  if (!v7)
  {
    v9 = [(PGSyndicationProcessor *)self syndicationPhotoLibraryWithError:error];
    if (v9)
    {
      *buf = 0;
      *&v39 = buf;
      *(&v39 + 1) = 0x3032000000;
      v40 = __Block_byref_object_copy__16426;
      v41 = __Block_byref_object_dispose__16427;
      v42 = objc_alloc_init(MEMORY[0x277CBEA60]);
      workingContext = self->_workingContext;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __87__PGSyndicationProcessor_processSyndicatedAssetRevGeoCodingWithError_progressReporter___block_invoke;
      v29[3] = &unk_27888A5C0;
      v29[4] = buf;
      [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v29];
      loggingConnection = [(PGManagerWorkingContext *)self->_workingContext loggingConnection];
      v12 = [PGRevGeocodeProcessor alloc];
      v13 = *(v39 + 40);
      locationCache = [(PGManagerWorkingContext *)self->_workingContext locationCache];
      v15 = [(PGRevGeocodeProcessor *)v12 initWithPhotoLibrary:v9 homeLocations:v13 loggingConnection:loggingConnection locationCache:locationCache];

      v16 = [PGRevGeocodeProcessor momentsRequiringRevGeocodingWithUUIDs:0 inPhotoLibrary:v9 defaultToAllAssets:1 loggingConnection:loggingConnection];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __87__PGSyndicationProcessor_processSyndicatedAssetRevGeoCodingWithError_progressReporter___block_invoke_2;
      v26[3] = &unk_278889448;
      v28 = &v30;
      v17 = reporterCopy;
      v27 = v17;
      v18 = [(PGRevGeocodeProcessor *)v15 revGeocodeMoments:v16 progressBlock:v26];
      if (*(v31 + 24) == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *v34 = 67109378;
          v35 = 764;
          v36 = 2080;
          v37 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Syndication/PGSyndicationProcessor.m";
          v19 = MEMORY[0x277D86220];
LABEL_22:
          _os_log_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v34, 0x12u);
        }
      }

      else
      {
        v8 = v18;
        throughputReportBlock = [v17 throughputReportBlock];
        v21 = throughputReportBlock == 0;

        if (!v21)
        {
          throughputReportBlock2 = [v17 throughputReportBlock];
          (throughputReportBlock2)[2](throughputReportBlock2, [v16 count], @"revGeo");
        }

        if (v31[3])
        {
          *(v31 + 24) = 1;
        }

        else
        {
          v24 = [v17 isCancelledWithProgress:1.0];
          *(v31 + 24) = v24;
          if ((v24 & 1) == 0)
          {
LABEL_24:

            _Block_object_dispose(buf, 8);
            goto LABEL_25;
          }
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *v34 = 67109378;
          v35 = 770;
          v36 = 2080;
          v37 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Syndication/PGSyndicationProcessor.m";
          v19 = MEMORY[0x277D86220];
          goto LABEL_22;
        }
      }

      v8 = 0;
      goto LABEL_24;
    }

    if (v31[3])
    {
      *(v31 + 24) = 1;
    }

    else
    {
      v23 = [reporterCopy isCancelledWithProgress:1.0];
      *(v31 + 24) = v23;
      if ((v23 & 1) == 0)
      {
LABEL_18:
        v8 = 0;
LABEL_25:

        goto LABEL_26;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *&buf[4] = 748;
      LOWORD(v39) = 2080;
      *(&v39 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Syndication/PGSyndicationProcessor.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    goto LABEL_18;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *&buf[4] = 744;
    LOWORD(v39) = 2080;
    *(&v39 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Syndication/PGSyndicationProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v8 = 0;
LABEL_26:
  _Block_object_dispose(&v30, 8);

  return v8;
}

void __87__PGSyndicationProcessor_processSyndicatedAssetRevGeoCodingWithError_progressReporter___block_invoke(uint64_t a1, void *a2)
{
  v9 = [a2 graph];
  v3 = [v9 meNodeCollection];
  v4 = [v3 homeNodes];
  v5 = [v4 addressNodes];
  v6 = [v5 locations];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

uint64_t __87__PGSyndicationProcessor_processSyndicatedAssetRevGeoCodingWithError_progressReporter___block_invoke_2(uint64_t a1, _BYTE *a2)
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

- (id)similarStacker
{
  similarStacker = self->_similarStacker;
  if (!similarStacker)
  {
    v4 = [objc_alloc(MEMORY[0x277D277B8]) initWithSimilarityModelClass:objc_opt_class()];
    v5 = self->_similarStacker;
    self->_similarStacker = v4;

    similarStacker = self->_similarStacker;
  }

  return similarStacker;
}

- (id)_bestAssetUUIDInAssetCluster:(id)cluster
{
  v26 = *MEMORY[0x277D85DE8];
  clusterCopy = cluster;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [clusterCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v22;
    v8 = -1.79769313e308;
    v9 = -1.79769313e308;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(clusterCopy);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        [v11 curationScore];
        if (v12 >= v9)
        {
          v13 = v12;
          [v11 overallAestheticScore];
          v15 = v14;
          if (v8 <= v14)
          {
            uuid = [v11 uuid];
            v17 = uuid;
            if (!v6 || (v13 == v9 ? (v18 = v8 == v15) : (v18 = 0), !v18 || [uuid compare:v6] == -1))
            {
              v19 = v17;

              v6 = v19;
              v9 = v13;
              v8 = v15;
            }
          }
        }
      }

      v5 = [clusterCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)duplicateAssetUUIDsForSuggesterResult:(id)result assetsInferredAsGuestAsset:(id)asset syndicationLibrary:(id)library error:(id *)error progressBlock:(id)block
{
  v158 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  assetCopy = asset;
  libraryCopy = library;
  blockCopy = block;
  selfCopy = self;
  oslog = [(PGManagerWorkingContext *)self->_workingContext loggingConnection];
  v121 = [MEMORY[0x277CBEB58] set];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  v14 = [MEMORY[0x277CBEB58] set];
  v141 = 0u;
  v142 = 0u;
  v143 = 0u;
  v144 = 0u;
  v113 = resultCopy;
  suggesterInputs = [resultCopy suggesterInputs];
  v16 = [suggesterInputs countByEnumeratingWithState:&v141 objects:v157 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v142;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v142 != v18)
        {
          objc_enumerationMutation(suggesterInputs);
        }

        v20 = *(*(&v141 + 1) + 8 * i);
        asset = [v20 asset];
        if (asset)
        {
          [v14 addObject:asset];
          creationDate = [v20 creationDate];
          v23 = [distantFuture earlierDate:creationDate];

          v24 = [distantPast laterDate:creationDate];

          distantPast = v24;
          distantFuture = v23;
        }
      }

      v17 = [suggesterInputs countByEnumeratingWithState:&v141 objects:v157 count:16];
    }

    while (v17);
  }

  if ([v14 count])
  {
    v25 = [distantFuture dateByAddingTimeInterval:-1.0];

    v26 = [distantPast dateByAddingTimeInterval:1.0];

    v27 = [MEMORY[0x277CCAC30] predicateWithFormat:@"creationDate >= %@ && creationDate <= %@", v25, v26];
    v107 = v26;
    v108 = v25;
    v109 = [MEMORY[0x277CCAC30] predicateWithFormat:@"dateCreated >= %@ && dateCreated <= %@", v25, v26];
    photoLibrary = [(PGManagerWorkingContext *)selfCopy->_workingContext photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    [librarySpecificFetchOptions setIncludeGuestAssets:0];
    v31 = *MEMORY[0x277CD9B10];
    v155[0] = *MEMORY[0x277CD9B18];
    v30 = v155[0];
    v155[1] = v31;
    v156 = *MEMORY[0x277CD9AD0];
    v32 = v156;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v155 count:3];
    [librarySpecificFetchOptions setFetchPropertySets:v33];

    [librarySpecificFetchOptions setPredicate:v27];
    v105 = librarySpecificFetchOptions;
    v34 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:librarySpecificFetchOptions];
    v106 = v27;
    v35 = [assetCopy filteredSetUsingPredicate:v27];
    v36 = [MEMORY[0x277D3B248] predicateForIncludeMask:objc_msgSend(MEMORY[0x277D3B248] useIndex:{"maskForGuestAsset"), 1}];
    v37 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %lu OR %K == %lu", @"mediaAnalysisAttributes.syndicationProcessingVersion", *MEMORY[0x277CD9B40], @"mediaAnalysisAttributes.syndicationProcessingVersion", *MEMORY[0x277CD9B48]];
    librarySpecificFetchOptions2 = [libraryCopy librarySpecificFetchOptions];
    [librarySpecificFetchOptions2 setIncludeGuestAssets:1];
    v154[0] = v30;
    v154[1] = v31;
    v154[2] = v32;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v154 count:3];
    [librarySpecificFetchOptions2 setFetchPropertySets:v39];

    v40 = MEMORY[0x277CCA920];
    v153[0] = v109;
    v101 = v37;
    v102 = v36;
    v153[1] = v36;
    v153[2] = v37;
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v153 count:3];
    v42 = [v40 andPredicateWithSubpredicates:v41];
    [librarySpecificFetchOptions2 setInternalPredicate:v42];

    v100 = librarySpecificFetchOptions2;
    v43 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:librarySpecificFetchOptions2];
    v44 = MEMORY[0x277CBEB18];
    allObjects = [v14 allObjects];
    v46 = [v44 arrayWithArray:allObjects];

    v104 = v34;
    fetchedObjects = [v34 fetchedObjects];
    [v46 addObjectsFromArray:fetchedObjects];

    v103 = v35;
    allObjects2 = [v35 allObjects];
    [v46 addObjectsFromArray:allObjects2];

    v99 = v43;
    fetchedObjects2 = [v43 fetchedObjects];
    [v46 addObjectsFromArray:fetchedObjects2];

    [(CLSCurationSession *)selfCopy->_curationSession prepareAssets:v46];
    v50 = [objc_alloc(MEMORY[0x277D3AC30]) initWithDistanceBlock:&__block_literal_global_368];
    [v50 setMaximumDistance:1.0];
    [v50 setMinimumNumberOfObjects:2];
    v97 = v50;
    v98 = v46;
    v51 = [v50 performWithDataset:v46 progressBlock:blockCopy];
    v96 = v51;
    if ([v51 count])
    {
      similarStacker = [(PGSyndicationProcessor *)selfCopy similarStacker];
      v137 = 0u;
      v138 = 0u;
      v139 = 0u;
      v140 = 0u;
      obj = v51;
      v115 = [obj countByEnumeratingWithState:&v137 objects:v152 count:16];
      if (v115)
      {
        v114 = *v138;
        while (2)
        {
          v52 = 0;
          do
          {
            if (*v138 != v114)
            {
              objc_enumerationMutation(obj);
            }

            v118 = v52;
            v53 = *(*(&v137 + 1) + 8 * v52);
            context = objc_autoreleasePoolPush();
            v133 = 0u;
            v134 = 0u;
            v135 = 0u;
            v136 = 0u;
            objects = [v53 objects];
            v55 = [objects countByEnumeratingWithState:&v133 objects:v151 count:16];
            if (v55)
            {
              v56 = v55;
              v57 = *v134;
LABEL_19:
              v58 = 0;
              while (1)
              {
                if (*v134 != v57)
                {
                  objc_enumerationMutation(objects);
                }

                v59 = *(*(&v133 + 1) + 8 * v58);
                sceneAnalysisProperties = [v59 sceneAnalysisProperties];
                sceneAnalysisVersion = [sceneAnalysisProperties sceneAnalysisVersion];

                currentSceneVersion = [MEMORY[0x277D3ACE8] currentSceneVersion];
                intValue = [currentSceneVersion intValue];

                if (intValue > sceneAnalysisVersion)
                {
                  break;
                }

                if (v56 == ++v58)
                {
                  v56 = [objects countByEnumeratingWithState:&v133 objects:v151 count:16];
                  if (v56)
                  {
                    goto LABEL_19;
                  }

                  goto LABEL_25;
                }
              }

              v64 = MEMORY[0x277CCA9B8];
              v65 = MEMORY[0x277CCACA8];
              uuid = [v59 uuid];
              v113 = [v65 stringWithFormat:@"Asset %@ has no scenes processed: could not dedupe guest asset for %@.", uuid, v113];
              v68 = [v64 errorWithDescription:v113];

              if (!v68)
              {
                goto LABEL_27;
              }

              objc_autoreleasePoolPop(context);

              v92 = v107;
              if (error)
              {
                v93 = v68;
                *error = v68;
              }

              v91 = 0;
              v89 = v121;
              distantFuture = v108;
              goto LABEL_64;
            }

LABEL_25:

LABEL_27:
            objects2 = [v53 objects];
            v70 = [similarStacker stackSimilarItems:objects2 withSimilarity:2 timestampSupport:0 progressBlock:blockCopy];

            v131 = 0u;
            v132 = 0u;
            v129 = 0u;
            v130 = 0u;
            v123 = v70;
            v71 = [v123 countByEnumeratingWithState:&v129 objects:v150 count:16];
            if (v71)
            {
              v72 = v71;
              v73 = *v130;
              do
              {
                v74 = 0;
                v122 = v72;
                do
                {
                  if (*v130 != v73)
                  {
                    objc_enumerationMutation(v123);
                  }

                  v75 = *(*(&v129 + 1) + 8 * v74);
                  v76 = [v75 count];
                  if (v76 >= 2)
                  {
                    v77 = v76;
                    array = [MEMORY[0x277CBEB18] array];
                    v125 = 0u;
                    v126 = 0u;
                    v127 = 0u;
                    v128 = 0u;
                    v79 = v75;
                    v80 = [v79 countByEnumeratingWithState:&v125 objects:v149 count:16];
                    if (v80)
                    {
                      v81 = v80;
                      v82 = *v126;
                      do
                      {
                        for (j = 0; j != v81; ++j)
                        {
                          if (*v126 != v82)
                          {
                            objc_enumerationMutation(v79);
                          }

                          v84 = *(*(&v125 + 1) + 8 * j);
                          if ([v14 containsObject:v84])
                          {
                            uuid2 = [v84 uuid];
                            [array addObject:uuid2];
                          }
                        }

                        v81 = [v79 countByEnumeratingWithState:&v125 objects:v149 count:16];
                      }

                      while (v81);
                    }

                    v86 = [array count];
                    if (v86 == v77)
                    {
                      v87 = [(PGSyndicationProcessor *)selfCopy _bestAssetUUIDInAssetCluster:v79];
                      [array removeObject:v87];
                      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138412546;
                        v146 = array;
                        v147 = 2112;
                        v148 = v87;
                        _os_log_debug_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_DEBUG, "PGSyndicationProcessor: Cluster only contains input items %@, selected best item: %@", buf, 0x16u);
                      }
                    }

                    v72 = v122;
                    if (v86)
                    {
                      [v121 addObjectsFromArray:array];
                      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138412290;
                        v146 = array;
                        _os_log_debug_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_DEBUG, "PGSyndicationProcessor: Found cluster of duplicates %@", buf, 0xCu);
                      }
                    }
                  }

                  ++v74;
                }

                while (v74 != v72);
                v72 = [v123 countByEnumeratingWithState:&v129 objects:v150 count:16];
              }

              while (v72);
            }

            objc_autoreleasePoolPop(context);
            v52 = v118 + 1;
          }

          while (v118 + 1 != v115);
          v115 = [obj countByEnumeratingWithState:&v137 objects:v152 count:16];
          if (v115)
          {
            continue;
          }

          break;
        }
      }
    }

    v88 = oslog;
    v89 = v121;
    if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
    {
      v90 = [v121 count];
      *buf = 134218242;
      v146 = v90;
      v147 = 2112;
      v148 = v113;
      _os_log_impl(&dword_22F0FC000, v88, OS_LOG_TYPE_DEFAULT, "PGSyndicationProcessor: Found %lu duplicate(s) for : %@", buf, 0x16u);
    }

    v91 = v121;
    v92 = v107;
    distantFuture = v108;
LABEL_64:

    distantPast = v92;
  }

  else
  {
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v146 = v113;
      _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_DEFAULT, "PGSyndicationProcessor: No duplicates to find since there are no assets for: %@", buf, 0xCu);
    }

    v89 = v121;
    v91 = v121;
  }

  return v91;
}

void __130__PGSyndicationProcessor_duplicateAssetUUIDsForSuggesterResult_assetsInferredAsGuestAsset_syndicationLibrary_error_progressBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 creationDate];
  v6 = [v4 creationDate];

  [v5 timeIntervalSinceDate:v6];
}

- (id)guestAssetSenderIdentifiersByMomentUUIDForMomentUUIDs:(id)ds inPhotoLibrary:(id)library
{
  v53[2] = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  libraryCopy = library;
  oslog = [(PGManagerWorkingContext *)self->_workingContext loggingConnection];
  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
  dsCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"moment.uuid", dsCopy];
  v10 = [MEMORY[0x277D3B248] predicateForIncludeMask:objc_msgSend(MEMORY[0x277D3B248] useIndex:{"maskForGuestAsset"), 1}];
  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %lu OR %K == %lu", @"mediaAnalysisAttributes.syndicationProcessingVersion", *MEMORY[0x277CD9B40], @"mediaAnalysisAttributes.syndicationProcessingVersion", *MEMORY[0x277CD9B48]];
  [librarySpecificFetchOptions setIncludeGuestAssets:1];
  v12 = *MEMORY[0x277CD9AD0];
  v53[0] = *MEMORY[0x277CD9A80];
  v53[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
  [librarySpecificFetchOptions setFetchPropertySets:v13];

  v14 = MEMORY[0x277CCA920];
  v52[0] = dsCopy;
  v52[1] = v10;
  v52[2] = v11;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:3];
  v16 = [v14 andPredicateWithSubpredicates:v15];
  [librarySpecificFetchOptions setInternalPredicate:v16];

  v17 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:librarySpecificFetchOptions];
  if ([v17 count])
  {
    v35 = v11;
    v36 = v10;
    v37 = dsCopy;
    v38 = librarySpecificFetchOptions;
    v39 = libraryCopy;
    v40 = dsCopy;
    v44 = [MEMORY[0x277CD97A8] senderIdentifierByAssetUUIDForAssets:v17];
    v43 = [MEMORY[0x277CD98F8] fetchMomentUUIDByAssetUUIDForAssets:v17 options:0];
    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v34 = v17;
    obj = v17;
    v19 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v46;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v46 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v45 + 1) + 8 * i);
          v24 = objc_autoreleasePoolPush();
          mediaAnalysisProperties = [v23 mediaAnalysisProperties];
          v26 = [mediaAnalysisProperties syndicationProcessingValue] & 0x6EF0;

          if (v26)
          {
            uuid = [v23 uuid];
            v28 = [v43 objectForKeyedSubscript:uuid];
            v29 = [v44 objectForKeyedSubscript:uuid];
            if (!v29)
            {
              v29 = &stru_2843F5C58;
              if (os_log_type_enabled(oslog, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412290;
                v50 = uuid;
                _os_log_fault_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_FAULT, "No sender identifier for %@, see: rdar://74551611 ([Hubble] Some syndicated assets have the same syndication identifier but different uuids)", buf, 0xCu);
              }
            }

            v30 = [v18 objectForKeyedSubscript:v28];
            v31 = v30;
            if (v30)
            {
              [v30 addObject:v29];
            }

            else
            {
              v32 = [MEMORY[0x277CBEB58] setWithObject:v29];
              [v18 setObject:v32 forKeyedSubscript:v28];
            }
          }

          objc_autoreleasePoolPop(v24);
        }

        v20 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v20);
    }

    libraryCopy = v39;
    dsCopy = v40;
    dsCopy = v37;
    librarySpecificFetchOptions = v38;
    v11 = v35;
    v10 = v36;
    v17 = v34;
  }

  else
  {
    v18 = MEMORY[0x277CBEC10];
  }

  return v18;
}

- (BOOL)processSyndicatedAssetGuestInferenceWithError:(id *)error progressReporter:(id)reporter shareBackSuggester:(id)suggester
{
  v122[7] = *MEMORY[0x277D85DE8];
  reporterCopy = reporter;
  suggesterCopy = suggester;
  v113 = 0;
  v114 = &v113;
  v115 = 0x2020000000;
  v116 = 0;
  v80 = reporterCopy;
  v9 = [v80 isCancelledWithProgress:0.0];
  *(v114 + 24) = v9;
  if (!v9)
  {
    oslog = [(PGManagerWorkingContext *)self->_workingContext loggingConnection];
    v11 = [(PGSyndicationProcessor *)self syndicationPhotoLibraryWithError:error];
    v75 = v11;
    if (v11)
    {
      errorCopy = error;
      selfCopy = self;
      librarySpecificFetchOptions = [v11 librarySpecificFetchOptions];
      v12 = *MEMORY[0x277CD9A70];
      v122[0] = *MEMORY[0x277CD9A78];
      v122[1] = v12;
      v13 = *MEMORY[0x277CD9A80];
      v122[2] = *MEMORY[0x277CD9AD0];
      v122[3] = v13;
      v14 = *MEMORY[0x277CD9B10];
      v122[4] = *MEMORY[0x277CD9B18];
      v122[5] = v14;
      v122[6] = *MEMORY[0x277CD9AC0];
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v122 count:7];
      [librarySpecificFetchOptions setFetchPropertySets:v15];

      internalPredicateToFilterSyndicatedAssetsEligibleForGuestInferenceProcessing = [MEMORY[0x277D3C7C0] internalPredicateToFilterSyndicatedAssetsEligibleForGuestInferenceProcessing];
      [librarySpecificFetchOptions setInternalPredicate:internalPredicateToFilterSyndicatedAssetsEligibleForGuestInferenceProcessing];

      [librarySpecificFetchOptions setIncludeGuestAssets:1];
      v74 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:librarySpecificFetchOptions];
      v17 = [v74 count];
      v18 = os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT);
      if (!v17)
      {
        if (v18)
        {
          *buf = 0;
          _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_DEFAULT, "PGSyndicationProcessor: No asset eligible for guest processing", buf, 2u);
        }

        if (v114[3])
        {
          *(v114 + 24) = 1;
        }

        else
        {
          v66 = [v80 isCancelledWithProgress:1.0];
          *(v114 + 24) = v66;
          if ((v66 & 1) == 0)
          {
            v10 = 1;
LABEL_71:

            goto LABEL_72;
          }
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *&buf[4] = 315;
          *&buf[8] = 2080;
          *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Syndication/PGSyndicationProcessor.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v10 = 0;
        goto LABEL_71;
      }

      if (v18)
      {
        *buf = 134217984;
        *&buf[4] = v17;
        _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_DEFAULT, "PGSyndicationProcessor: %tu asset(s) eligible for guest processing", buf, 0xCu);
      }

      v19 = oslog;
      v20 = os_signpost_id_generate(v19);
      v21 = v19;
      v22 = v21;
      spid = v20;
      v71 = v20 - 1;
      log = v21;
      if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v23 = os_signpost_enabled(v21);
        v22 = log;
        if (v23)
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, log, OS_SIGNPOST_INTERVAL_BEGIN, v20, "PGSyndicationProcessorAssetGuestInference", "", buf, 2u);
          v22 = log;
        }
      }

      info = 0;
      mach_timebase_info(&info);
      v69 = mach_absolute_time();
      v84 = [MEMORY[0x277CD97A8] senderIdentifierByAssetUUIDForAssets:v74];
      v85 = [MEMORY[0x277CD98F8] fetchMomentUUIDByAssetUUIDForAssets:v74 options:0];
      v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v110 = 0u;
      v111 = 0u;
      v108 = 0u;
      v109 = 0u;
      obj = v74;
      v25 = [obj countByEnumeratingWithState:&v108 objects:v121 count:16];
      if (v25)
      {
        v26 = *v109;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v109 != v26)
            {
              objc_enumerationMutation(obj);
            }

            v28 = *(*(&v108 + 1) + 8 * i);
            uuid = [v28 uuid];
            v30 = [v85 objectForKeyedSubscript:uuid];
            v31 = [v84 objectForKeyedSubscript:uuid];
            if (!v31)
            {
              v31 = &stru_2843F5C58;
              if (os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412290;
                *&buf[4] = uuid;
                _os_log_fault_impl(&dword_22F0FC000, log, OS_LOG_TYPE_FAULT, "No sender identifier for %@, see: rdar://74551611 ([Hubble] Some syndicated assets have the same syndication identifier but different uuids)", buf, 0xCu);
              }
            }

            v32 = [v24 objectForKeyedSubscript:v30];
            if (!v32)
            {
              v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
              [v24 setObject:v32 forKeyedSubscript:v30];
            }

            v33 = [v32 objectForKeyedSubscript:v31];
            v34 = v33;
            if (v33)
            {
              [v33 addObject:v28];
            }

            else
            {
              v35 = [MEMORY[0x277CBEB18] arrayWithObject:v28];
              [v32 setObject:v35 forKeyedSubscript:v31];
            }
          }

          v25 = [obj countByEnumeratingWithState:&v108 objects:v121 count:16];
        }

        while (v25);
      }

      v36 = [MEMORY[0x277CBEB58] set];
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      allValues = [v85 allValues];
      v39 = [(PGSyndicationProcessor *)selfCopy guestAssetSenderIdentifiersByMomentUUIDForMomentUUIDs:allValues inPhotoLibrary:v75];

      serviceManager = [(PGManagerWorkingContext *)selfCopy->_workingContext serviceManager];
      workingContext = selfCopy->_workingContext;
      v96[0] = MEMORY[0x277D85DD0];
      v96[1] = 3221225472;
      v96[2] = __108__PGSyndicationProcessor_processSyndicatedAssetGuestInferenceWithError_progressReporter_shareBackSuggester___block_invoke;
      v96[3] = &unk_278880AC8;
      v97 = suggesterCopy;
      v42 = log;
      v98 = v42;
      v43 = v75;
      v99 = v43;
      v100 = selfCopy;
      loga = serviceManager;
      v101 = loga;
      v44 = v24;
      v102 = v44;
      v45 = dictionary;
      v103 = v45;
      v46 = v39;
      v104 = v46;
      v47 = v36;
      v105 = v47;
      v107 = &v113;
      v48 = v80;
      v106 = v48;
      [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v96];
      v79 = v46;
      if (*(v114 + 24) == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *&buf[4] = 446;
          *&buf[8] = 2080;
          *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Syndication/PGSyndicationProcessor.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v10 = 0;
        goto LABEL_70;
      }

      v49 = v42;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = [v47 count];
        *buf = 134217984;
        *&buf[4] = v50;
        _os_log_impl(&dword_22F0FC000, v49, OS_LOG_TYPE_DEFAULT, "PGSyndicationProcessor: Promoting %tu asset(s) as guest", buf, 0xCu);
      }

      v51 = [obj count];
      v52 = v51;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v120 = 0;
      if (v51)
      {
        v87[0] = MEMORY[0x277D85DD0];
        v87[1] = 3221225472;
        v87[2] = __108__PGSyndicationProcessor_processSyndicatedAssetGuestInferenceWithError_progressReporter_shareBackSuggester___block_invoke_341;
        v87[3] = &unk_278880AF0;
        v94 = v51;
        v88 = obj;
        v53 = v45;
        v89 = v45;
        v90 = v47;
        v95 = 1.0 / v52;
        v92 = buf;
        v93 = &v113;
        v91 = v48;
        v86 = 0;
        v54 = [v43 performChangesAndWait:v87 error:&v86];
        v55 = v86;
        if ((v54 & 1) == 0)
        {
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            *v117 = 138412290;
            *v118 = v55;
            _os_log_error_impl(&dword_22F0FC000, v49, OS_LOG_TYPE_ERROR, "PGSyndicationProcessor: Error saving guest asset inference to database: %@", v117, 0xCu);
          }

          if (errorCopy)
          {
            v56 = v55;
            *errorCopy = v55;
          }
        }

        v45 = v53;
      }

      throughputReportBlock = [v48 throughputReportBlock];
      v58 = throughputReportBlock == 0;

      if (!v58)
      {
        throughputReportBlock2 = [v48 throughputReportBlock];
        (throughputReportBlock2)[2](throughputReportBlock2, v52, @"guestInference");
      }

      v60 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v63 = v49;
      v64 = v63;
      if (v71 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v63))
      {
        *v117 = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v64, OS_SIGNPOST_INTERVAL_END, spid, "PGSyndicationProcessorAssetGuestInference", "", v117, 2u);
      }

      if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
      {
        *v117 = 136315394;
        *v118 = "PGSyndicationProcessorAssetGuestInference";
        *&v118[8] = 2048;
        *&v118[10] = ((((v60 - v69) * numer) / denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v64, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v117, 0x16u);
      }

      if (*(v114 + 24) == 1)
      {
        *(v114 + 24) = 1;
      }

      else
      {
        v67 = [v48 isCancelledWithProgress:1.0];
        *(v114 + 24) = v67;
        if (!v67)
        {
          v10 = 1;
LABEL_69:
          _Block_object_dispose(buf, 8);
LABEL_70:

          goto LABEL_71;
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v117 = 67109378;
        *v118 = 509;
        *&v118[4] = 2080;
        *&v118[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Syndication/PGSyndicationProcessor.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v117, 0x12u);
      }

      v10 = 0;
      goto LABEL_69;
    }

    if (v114[3])
    {
      *(v114 + 24) = 1;
    }

    else
    {
      v65 = [v80 isCancelledWithProgress:1.0];
      *(v114 + 24) = v65;
      if ((v65 & 1) == 0)
      {
LABEL_58:
        v10 = 0;
LABEL_72:

        goto LABEL_73;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *&buf[4] = 302;
      *&buf[8] = 2080;
      *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Syndication/PGSyndicationProcessor.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    goto LABEL_58;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *&buf[4] = 296;
    *&buf[8] = 2080;
    *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Syndication/PGSyndicationProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v10 = 0;
LABEL_73:
  _Block_object_dispose(&v113, 8);

  return v10;
}

void __108__PGSyndicationProcessor_processSyndicatedAssetGuestInferenceWithError_progressReporter_shareBackSuggester___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 graph];
  v5 = *(a1 + 32);
  if (!v5)
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = [*(*(a1 + 56) + 8) photoLibrary];
    v5 = [PGShareBackSuggester shareBackSuggesterForSyndicationWithLoggingConnection:v6 syndicationPhotoLibrary:v7 systemPhotoLibrary:v8 graph:v4 serviceManager:*(a1 + 64)];
  }

  v9 = 1.0 / [*(a1 + 72) count];
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v30[3] = 0;
  v10 = *(a1 + 72);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __108__PGSyndicationProcessor_processSyndicatedAssetGuestInferenceWithError_progressReporter_shareBackSuggester___block_invoke_2;
  v17[3] = &unk_278880AA0;
  v18 = *(a1 + 40);
  v19 = *(a1 + 80);
  v20 = *(a1 + 88);
  v11 = v4;
  v21 = v11;
  v12 = v5;
  v22 = v12;
  v13 = v3;
  v14 = *(a1 + 56);
  v23 = v13;
  v24 = v14;
  v25 = *(a1 + 96);
  v26 = *(a1 + 48);
  v16 = *(a1 + 104);
  v15 = v16;
  v27 = v16;
  v28 = v30;
  v29 = v9;
  [v10 enumerateKeysAndObjectsUsingBlock:v17];

  _Block_object_dispose(v30, 8);
}

void __108__PGSyndicationProcessor_processSyndicatedAssetGuestInferenceWithError_progressReporter_shareBackSuggester___block_invoke_341(uint64_t a1)
{
  if (*(a1 + 80))
  {
    v2 = 0;
    v3 = *MEMORY[0x277CD9B48];
    while (1)
    {
      v4 = objc_autoreleasePoolPush();
      v5 = [*(a1 + 32) objectAtIndexedSubscript:v2];
      v6 = [MEMORY[0x277CD97B0] changeRequestForAsset:v5];
      v7 = *(a1 + 40);
      v8 = [v5 uuid];
      v9 = [v7 objectForKeyedSubscript:v8];

      if (v9)
      {
        [v6 setSyndicationProcessingValue:{objc_msgSend(v9, "unsignedShortValue")}];
        v10 = PHAssetSyndicationProcessingCurrentVersionForAsset();
        v11 = [*(a1 + 48) containsObject:v5];
        v12 = [v5 isGuestAsset];
        if (v11)
        {
          v10 = v3;
          if ((v12 & 1) == 0)
          {
            [v6 promoteToGuestAsset];
            v10 = v3;
          }
        }

        else if (v12)
        {
          [v6 resetGuestAssetPromotion];
        }

        [v6 setSyndicationProcessingVersion:v10];
        *(*(*(a1 + 64) + 8) + 24) = *(a1 + 88) + *(*(*(a1 + 64) + 8) + 24);
        v13 = *(*(a1 + 72) + 8);
        if (*(v13 + 24))
        {
          v14 = 1;
        }

        else
        {
          v14 = [*(a1 + 56) isCancelledWithProgress:*(*(*(a1 + 64) + 8) + 24) * 0.25 + 0.75];
          v13 = *(*(a1 + 72) + 8);
        }

        *(v13 + 24) = v14;
        if (*(*(*(a1 + 72) + 8) + 24) == 1)
        {
          break;
        }
      }

      objc_autoreleasePoolPop(v4);
      if (++v2 >= *(a1 + 80))
      {
        return;
      }
    }

    objc_autoreleasePoolPop(v4);
  }
}

void __108__PGSyndicationProcessor_processSyndicatedAssetGuestInferenceWithError_progressReporter_shareBackSuggester___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __108__PGSyndicationProcessor_processSyndicatedAssetGuestInferenceWithError_progressReporter_shareBackSuggester___block_invoke_3;
  v17[3] = &unk_278880A78;
  v18 = *(a1 + 32);
  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  v8 = v7;
  v21 = v8;
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  *&v11 = *(a1 + 72);
  *(&v11 + 1) = *(a1 + 80);
  *&v12 = v9;
  *(&v12 + 1) = v10;
  v22 = v12;
  v23 = v11;
  v24 = *(a1 + 88);
  v25 = *(a1 + 96);
  v16 = *(a1 + 104);
  v13 = v16;
  v26 = v16;
  v27 = *(a1 + 120);
  [a3 enumerateKeysAndObjectsUsingBlock:v17];
  *(*(*(a1 + 120) + 8) + 24) = *(a1 + 128) + *(*(*(a1 + 120) + 8) + 24);
  v14 = *(*(a1 + 112) + 8);
  if (*(v14 + 24))
  {
    v15 = 1;
  }

  else
  {
    v15 = [*(a1 + 104) isCancelledWithProgress:*(*(*(a1 + 120) + 8) + 24) * 0.5 + 0.25];
    v14 = *(*(a1 + 112) + 8);
  }

  *(v14 + 24) = v15;
  if (*(*(*(a1 + 112) + 8) + 24) == 1)
  {
    *a4 = 1;
  }
}

void __108__PGSyndicationProcessor_processSyndicatedAssetGuestInferenceWithError_progressReporter_shareBackSuggester___block_invoke_3(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v97 = *MEMORY[0x277D85DE8];
  v66 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CBEB18] array];
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v87 objects:v96 count:16];
  v10 = v7;
  if (v9)
  {
    v11 = v9;
    v12 = *v88;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v88 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v87 + 1) + 8 * i);
        if ([v14 creationDateSource] == 3)
        {
          v15 = *(a1 + 32);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_ERROR, "PGSyndicationProcessor: Skipping syndicated asset due to invalid creationDateSource", buf, 2u);
          }

          v16 = *(a1 + 40);
          v17 = [v14 uuid];
          [v16 setObject:&unk_284482D30 forKeyedSubscript:v17];

          v7 = v10;
          [v10 addObject:v14];
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v87 objects:v96 count:16];
    }

    while (v11);
  }

  if ([v7 count])
  {
    v18 = [v8 arrayByExcludingObjectsInArray:v7];

    v8 = v18;
  }

  v67 = v8;
  v19 = [*(a1 + 48) objectForKeyedSubscript:*(a1 + 56)];
  v20 = v66;
  if ([v19 containsObject:v66])
  {
    v21 = [PGGraphMomentNodeCollection momentNodeForUUID:*(a1 + 56) inGraph:*(a1 + 64)];
    v22 = [PGShareBackSuggesterResult alloc];
    v23 = [v21 temporarySet];
    v24 = 128;
    v25 = [(PGShareBackSuggesterResult *)v22 initWithInputs:v67 processingValue:128 momentNodes:v23];

    v70 = v25;
    if (v25)
    {
      v26 = 0;
LABEL_29:
      v37 = *(a1 + 88);
      v38 = *(a1 + 96);
      v39 = *(a1 + 104);
      v81 = 0;
      v79[0] = MEMORY[0x277D85DD0];
      v79[1] = 3221225472;
      v79[2] = __108__PGSyndicationProcessor_processSyndicatedAssetGuestInferenceWithError_progressReporter_shareBackSuggester___block_invoke_334;
      v79[3] = &unk_278889448;
      obja = *(a1 + 112);
      v40 = obja;
      v80 = obja;
      v41 = [v37 duplicateAssetUUIDsForSuggesterResult:v70 assetsInferredAsGuestAsset:v38 syndicationLibrary:v39 error:&v81 progressBlock:v79];
      obj = v81;
      if (v41)
      {
        v61 = v26;
        v64 = v19;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v42 = v67;
        v43 = [v42 countByEnumeratingWithState:&v75 objects:v92 count:16];
        if (v43)
        {
          v44 = v43;
          v45 = *v76;
          do
          {
            for (j = 0; j != v44; ++j)
            {
              if (*v76 != v45)
              {
                objc_enumerationMutation(v42);
              }

              v47 = *(*(&v75 + 1) + 8 * j);
              v48 = [v47 uuid];
              if ([v41 containsObject:v48])
              {
                [*(a1 + 40) setObject:&unk_284482D48 forKeyedSubscript:v48];
              }

              else
              {
                [*(a1 + 96) addObject:v47];
                v49 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v70, "processingValue")}];
                [*(a1 + 40) setObject:v49 forKeyedSubscript:v48];
              }
            }

            v44 = [v42 countByEnumeratingWithState:&v75 objects:v92 count:16];
          }

          while (v44);
        }

        v19 = v64;
        v20 = v66;
        v26 = v61;
      }

      else
      {
        v58 = *(a1 + 32);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v94 = obj;
          _os_log_impl(&dword_22F0FC000, v58, OS_LOG_TYPE_DEFAULT, "Issue while running deduping, skipping processing for this batch: %@", buf, 0xCu);
        }
      }

      goto LABEL_54;
    }
  }

  else
  {
    v24 = 0;
  }

  v27 = *(a1 + 72);
  v28 = [*(a1 + 80) graph];
  v86 = 0;
  v29 = [v27 suggesterResultsForInputs:v67 inGraph:v28 error:&v86];
  v26 = v86;

  if (v29)
  {
    v63 = v19;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v30 = v29;
    v31 = [v30 countByEnumeratingWithState:&v82 objects:v95 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v83;
LABEL_21:
      v34 = 0;
      while (1)
      {
        if (*v83 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v82 + 1) + 8 * v34);
        v24 = [v35 processingValue];
        if ((v24 & 0x7EF0) != 0)
        {
          break;
        }

        if (v32 == ++v34)
        {
          v32 = [v30 countByEnumeratingWithState:&v82 objects:v95 count:16];
          if (v32)
          {
            goto LABEL_21;
          }

          goto LABEL_27;
        }
      }

      v36 = v35;

      v19 = v63;
      v70 = v36;
      if (!v36)
      {
        goto LABEL_41;
      }

      goto LABEL_29;
    }

LABEL_27:

    v19 = v63;
  }

LABEL_41:
  if (v26)
  {
    v70 = 0;
    goto LABEL_55;
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = v67;
  v50 = [obj countByEnumeratingWithState:&v71 objects:v91 count:16];
  if (v50)
  {
    v51 = v50;
    v65 = v19;
    v52 = *v72;
    do
    {
      for (k = 0; k != v51; ++k)
      {
        if (*v72 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v54 = *(*(&v71 + 1) + 8 * k);
        v55 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v24];
        v56 = *(a1 + 40);
        v57 = [v54 uuid];
        [v56 setObject:v55 forKeyedSubscript:v57];
      }

      v51 = [obj countByEnumeratingWithState:&v71 objects:v91 count:16];
    }

    while (v51);
    v70 = 0;
    v26 = 0;
    v19 = v65;
    v20 = v66;
  }

  else
  {
    v70 = 0;
    v26 = 0;
  }

LABEL_54:

LABEL_55:
  v59 = *(*(a1 + 120) + 8);
  if (*(v59 + 24))
  {
    v60 = 1;
  }

  else
  {
    v60 = [*(a1 + 112) isCancelledWithProgress:*(*(*(a1 + 128) + 8) + 24) * 0.5 + 0.25];
    v59 = *(*(a1 + 120) + 8);
  }

  *(v59 + 24) = v60;
  if (*(*(*(a1 + 120) + 8) + 24) == 1)
  {
    *a4 = 1;
  }
}

uint64_t __108__PGSyndicationProcessor_processSyndicatedAssetGuestInferenceWithError_progressReporter_shareBackSuggester___block_invoke_334(uint64_t a1, _BYTE *a2)
{
  v4 = *(*(a1 + 40) + 8);
  if (*(v4 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:0.25];
    v4 = *(*(a1 + 40) + 8);
  }

  *(v4 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

- (BOOL)processSavedSyndicatedAssetsWithError:(id *)error progressReporter:(id)reporter
{
  v97[1] = *MEMORY[0x277D85DE8];
  reporterCopy = reporter;
  v86 = 0;
  v87 = &v86;
  v88 = 0x2020000000;
  v89 = 0;
  v7 = [reporterCopy isCancelledWithProgress:0.0];
  *(v87 + 24) = v7;
  if (!v7)
  {
    loggingConnection = [(PGManagerWorkingContext *)self->_workingContext loggingConnection];
    v69 = [(PGSyndicationProcessor *)self syndicationPhotoLibraryWithError:error];
    if (v69)
    {
      v9 = loggingConnection;
      v10 = os_signpost_id_generate(v9);
      v11 = v9;
      v12 = v11;
      spid = v10;
      v64 = v10 - 1;
      if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PGSyndicationSavedSyndicatedAssets", "", buf, 2u);
      }

      oslog = v12;

      info = 0;
      mach_timebase_info(&info);
      v62 = mach_absolute_time();
      v68 = [MEMORY[0x277CCAC30] predicateWithFormat:@"additionalAttributes.syndicationIdentifier != nil"];
      photoLibrary = [(PGManagerWorkingContext *)self->_workingContext photoLibrary];
      librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

      [librarySpecificFetchOptions setInternalPredicate:v68];
      v14 = *MEMORY[0x277CD9A80];
      v97[0] = *MEMORY[0x277CD9A80];
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v97 count:1];
      [librarySpecificFetchOptions setFetchPropertySets:v15];

      [librarySpecificFetchOptions setIncludeGuestAssets:0];
      v16 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:librarySpecificFetchOptions];
      v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v84 = 0u;
      v82 = 0u;
      v83 = 0u;
      v81 = 0u;
      v18 = v16;
      v19 = [v18 countByEnumeratingWithState:&v81 objects:v96 count:16];
      if (v19)
      {
        v20 = *v82;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v82 != v20)
            {
              objc_enumerationMutation(v18);
            }

            curationProperties = [*(*(&v81 + 1) + 8 * i) curationProperties];
            syndicationIdentifier = [curationProperties syndicationIdentifier];

            if ([syndicationIdentifier length])
            {
              [v17 addObject:syndicationIdentifier];
            }
          }

          v19 = [v18 countByEnumeratingWithState:&v81 objects:v96 count:16];
        }

        while (v19);
      }

      if (![v17 count])
      {
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_DEFAULT, "PGSyndicationProcessor: No saved asset with syndication identifiers", buf, 2u);
        }

        if (v87[3])
        {
          *(v87 + 24) = 1;
        }

        else
        {
          v49 = [reporterCopy isCancelledWithProgress:1.0];
          *(v87 + 24) = v49;
          if ((v49 & 1) == 0)
          {
            v52 = mach_absolute_time();
            numer = info.numer;
            denom = info.denom;
            v55 = oslog;
            v56 = v55;
            if (v64 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v55))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_22F0FC000, v56, OS_SIGNPOST_INTERVAL_END, spid, "PGSyndicationSavedSyndicatedAssets", "", buf, 2u);
            }

            v8 = 1;
            if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              *&buf[4] = "PGSyndicationSavedSyndicatedAssets";
              *&buf[12] = 2048;
              *&buf[14] = ((((v52 - v62) * numer) / denom) / 1000000.0);
              _os_log_impl(&dword_22F0FC000, v56, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
            }

            goto LABEL_66;
          }
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *&buf[4] = 222;
          *&buf[8] = 2080;
          *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Syndication/PGSyndicationProcessor.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v8 = 0;
LABEL_66:

        goto LABEL_67;
      }

      v67 = [MEMORY[0x277CCAC30] predicateWithFormat:@"additionalAttributes.syndicationIdentifier IN %@", v17];
      v24 = [MEMORY[0x277D3B248] predicateForExcludeMask:objc_msgSend(MEMORY[0x277D3B248] useIndex:{"maskForGuestAsset"), 1}];
      filterPredicateToIncludeOnlyReceivedSyndicatedAssets = [MEMORY[0x277CD97A8] filterPredicateToIncludeOnlyReceivedSyndicatedAssets];
      v65 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K >= %d", @"thumbnailIndex", *MEMORY[0x277D3ADD8]];
      librarySpecificFetchOptions2 = [v69 librarySpecificFetchOptions];
      v95 = v14;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v95 count:1];
      [librarySpecificFetchOptions2 setFetchPropertySets:v26];

      v27 = MEMORY[0x277CCA920];
      v94[0] = v67;
      v94[1] = v24;
      v94[2] = filterPredicateToIncludeOnlyReceivedSyndicatedAssets;
      v94[3] = v65;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:4];
      v29 = [v27 andPredicateWithSubpredicates:v28];
      [librarySpecificFetchOptions2 setInternalPredicate:v29];

      [librarySpecificFetchOptions2 setIncludeGuestAssets:0];
      v30 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:librarySpecificFetchOptions2];
      v31 = [v30 count];
      v32 = os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT);
      if (!v31)
      {
        if (v32)
        {
          *buf = 0;
          _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_DEFAULT, "PGSyndicationProcessor: No saved syndicated asset eligible for guest promoting", buf, 2u);
        }

        if (v87[3])
        {
          *(v87 + 24) = 1;
        }

        else
        {
          v50 = [reporterCopy isCancelledWithProgress:1.0];
          *(v87 + 24) = v50;
          if ((v50 & 1) == 0)
          {
            v57 = mach_absolute_time();
            v58 = info.numer;
            v59 = info.denom;
            v60 = oslog;
            v61 = v60;
            if (v64 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v60))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_22F0FC000, v61, OS_SIGNPOST_INTERVAL_END, spid, "PGSyndicationSavedSyndicatedAssets", "", buf, 2u);
            }

            v8 = 1;
            if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              *&buf[4] = "PGSyndicationSavedSyndicatedAssets";
              *&buf[12] = 2048;
              *&buf[14] = ((((v57 - v62) * v58) / v59) / 1000000.0);
              _os_log_impl(&dword_22F0FC000, v61, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
            }

            goto LABEL_65;
          }
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *&buf[4] = 243;
          *&buf[8] = 2080;
          *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Syndication/PGSyndicationProcessor.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v8 = 0;
LABEL_65:

        goto LABEL_66;
      }

      if (v32)
      {
        *buf = 134217984;
        *&buf[4] = v31;
        _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_DEFAULT, "PGSyndicationProcessor: Promoting %tu saved syndicated asset(s) as guest", buf, 0xCu);
      }

      v33 = [v30 count];
      v34 = v33;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v93 = 0;
      if (!v33)
      {
LABEL_28:
        throughputReportBlock = [reporterCopy throughputReportBlock];
        v40 = throughputReportBlock == 0;

        if (!v40)
        {
          throughputReportBlock2 = [reporterCopy throughputReportBlock];
          (throughputReportBlock2)[2](throughputReportBlock2, v34, @"savedAssets");
        }

        v42 = mach_absolute_time();
        v43 = info.numer;
        v44 = info.denom;
        v45 = oslog;
        v46 = v45;
        if (v64 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
        {
          *v90 = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v46, OS_SIGNPOST_INTERVAL_END, spid, "PGSyndicationSavedSyndicatedAssets", "", v90, 2u);
        }

        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          *v90 = 136315394;
          *v91 = "PGSyndicationSavedSyndicatedAssets";
          *&v91[8] = 2048;
          *&v91[10] = ((((v42 - v62) * v43) / v44) / 1000000.0);
          _os_log_impl(&dword_22F0FC000, v46, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v90, 0x16u);
        }

        if (*(v87 + 24) == 1)
        {
          *(v87 + 24) = 1;
        }

        else
        {
          v48 = [reporterCopy isCancelledWithProgress:1.0];
          *(v87 + 24) = v48;
          if (!v48)
          {
            v8 = 1;
LABEL_64:
            _Block_object_dispose(buf, 8);
            goto LABEL_65;
          }
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *v90 = 67109378;
          *v91 = 286;
          *&v91[4] = 2080;
          *&v91[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Syndication/PGSyndicationProcessor.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v90, 0x12u);
        }

        v8 = 0;
        goto LABEL_64;
      }

      v35 = v24;
      v74[0] = MEMORY[0x277D85DD0];
      v74[1] = 3221225472;
      v74[2] = __81__PGSyndicationProcessor_processSavedSyndicatedAssetsWithError_progressReporter___block_invoke;
      v74[3] = &unk_278880A50;
      v79 = v33;
      v75 = v30;
      v80 = 1.0 / v34;
      v77 = buf;
      v78 = &v86;
      v76 = reporterCopy;
      v73 = 0;
      v36 = [v69 performChangesAndWait:v74 error:&v73];
      v37 = v73;
      if ((v36 & 1) == 0)
      {
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          *v90 = 138412290;
          *v91 = v37;
          _os_log_error_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_ERROR, "PGSyndicationProcessor: Error saving guest asset to database: %@", v90, 0xCu);
          if (!error)
          {
            goto LABEL_27;
          }

          goto LABEL_26;
        }

        if (error)
        {
LABEL_26:
          v38 = v37;
          *error = v37;
        }
      }

LABEL_27:

      v24 = v35;
      goto LABEL_28;
    }

    if (v87[3])
    {
      *(v87 + 24) = 1;
    }

    else
    {
      v47 = [reporterCopy isCancelledWithProgress:1.0];
      *(v87 + 24) = v47;
      if ((v47 & 1) == 0)
      {
LABEL_46:
        v8 = 0;
LABEL_67:

        goto LABEL_68;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *&buf[4] = 195;
      *&buf[8] = 2080;
      *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Syndication/PGSyndicationProcessor.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    goto LABEL_46;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *&buf[4] = 189;
    *&buf[8] = 2080;
    *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Syndication/PGSyndicationProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v8 = 0;
LABEL_68:
  _Block_object_dispose(&v86, 8);

  return v8;
}

void __81__PGSyndicationProcessor_processSavedSyndicatedAssetsWithError_progressReporter___block_invoke(uint64_t a1)
{
  if (*(a1 + 64))
  {
    v2 = 0;
    v3 = *MEMORY[0x277CD9B48];
    do
    {
      v4 = objc_autoreleasePoolPush();
      v5 = [*(a1 + 32) objectAtIndexedSubscript:v2];
      v6 = [MEMORY[0x277CD97B0] changeRequestForAsset:v5];
      [v6 setSyndicationProcessingValue:4096];
      [v6 setSyndicationProcessingVersion:v3];
      [v6 promoteToGuestAsset];
      *(*(*(a1 + 48) + 8) + 24) = *(a1 + 72) + *(*(*(a1 + 48) + 8) + 24);
      v7 = *(*(a1 + 56) + 8);
      if (*(v7 + 24))
      {
        v8 = 1;
      }

      else
      {
        v8 = [*(a1 + 40) isCancelledWithProgress:*(*(*(a1 + 48) + 8) + 24)];
        v7 = *(*(a1 + 56) + 8);
      }

      *(v7 + 24) = v8;
      v9 = *(*(*(a1 + 56) + 8) + 24);

      objc_autoreleasePoolPop(v4);
      if (v9 == 1)
      {
        break;
      }

      ++v2;
    }

    while (v2 < *(a1 + 64));
  }
}

- (void)_persistCurationScores:(id)scores inPhotoLibrary:(id)library
{
  v16 = *MEMORY[0x277D85DE8];
  scoresCopy = scores;
  libraryCopy = library;
  if ([scoresCopy count])
  {
    loggingConnection = [(PGManagerWorkingContext *)self->_workingContext loggingConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __64__PGSyndicationProcessor__persistCurationScores_inPhotoLibrary___block_invoke;
    v12[3] = &unk_27888A660;
    v13 = scoresCopy;
    v11 = 0;
    v9 = [libraryCopy performChangesAndWait:v12 error:&v11];
    v10 = v11;
    if ((v9 & 1) == 0 && os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v10;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "PGSyndicationProcessor: Error saving curation scores to database: %@", buf, 0xCu);
    }
  }
}

void __64__PGSyndicationProcessor__persistCurationScores_inPhotoLibrary___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CD97B0];
  v5 = a3;
  v6 = a2;
  v9 = [v4 changeRequestForAsset:v6];
  [v5 doubleValue];
  v8 = v7;

  [v9 setCurationScore:v8];
  LODWORD(v4) = [v6 isGuestAsset];

  if (v4 && v8 <= *MEMORY[0x277D3C778])
  {
    [v9 resetGuestAssetPromotion];
  }
}

- (BOOL)processSyndicatedAssetCurationWithError:(id *)error progressReporter:(id)reporter
{
  v61 = *MEMORY[0x277D85DE8];
  reporterCopy = reporter;
  if ([reporterCopy isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v60 = 87;
      *&v60[4] = 2080;
      *&v60[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Syndication/PGSyndicationProcessor.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v7 = 0;
  }

  else
  {
    loggingConnection = [(PGManagerWorkingContext *)self->_workingContext loggingConnection];
    v9 = [(PGSyndicationProcessor *)self syndicationPhotoLibraryWithError:error];
    v10 = v9;
    if (v9)
    {
      librarySpecificFetchOptions = [v9 librarySpecificFetchOptions];
      internalPredicateToFilterSyndicatedAssetsEligibleForCurationProcessing = [MEMORY[0x277D3C7C0] internalPredicateToFilterSyndicatedAssetsEligibleForCurationProcessing];
      [librarySpecificFetchOptions setInternalPredicate:internalPredicateToFilterSyndicatedAssetsEligibleForCurationProcessing];

      v13 = +[PGCurationManager assetPropertySetsForCuration];
      [librarySpecificFetchOptions setFetchPropertySets:v13];

      [librarySpecificFetchOptions setIncludeGuestAssets:1];
      v14 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:librarySpecificFetchOptions];
      v15 = [v14 count];
      v16 = os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT);
      if (v15)
      {
        if (v16)
        {
          *buf = 134217984;
          *v60 = v15;
          _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "PGSyndicationProcessor: %tu asset(s) eligible for curation processing", buf, 0xCu);
        }

        v51 = librarySpecificFetchOptions;
        v48 = loggingConnection;
        v17 = loggingConnection;
        v18 = os_signpost_id_generate(v17);
        v19 = v17;
        v20 = v19;
        v47 = v18 - 1;
        if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v18, "PGSyndicationProcessorAssetCuration", "", buf, 2u);
        }

        spid = v18;
        v49 = v20;

        info = 0;
        mach_timebase_info(&info);
        v46 = mach_absolute_time();
        v55 = [objc_alloc(MEMORY[0x277D3C790]) initWithPhotoLibrary:v10];
        v21 = 1.0 / v15;
        v50 = v14;
        fetchedObjects = [v14 fetchedObjects];
        v22 = 0;
        v23 = *MEMORY[0x277D3C778];
        v24 = 0.0;
        selfCopy = self;
        v54 = v10;
        v52 = v15;
        while (1)
        {
          context = objc_autoreleasePoolPush();
          v25 = v22 + 200;
          v26 = v22 + 200 <= v15 ? 200 : v15 - v22;
          v27 = [fetchedObjects subarrayWithRange:{v22, v26, spid}];
          dictionary = [MEMORY[0x277CBEB38] dictionary];
          [MEMORY[0x277CD97A8] prefetchOnAssets:v27 options:13 curationContext:v55];
          if ([v27 count])
          {
            break;
          }

LABEL_22:
          v10 = v54;
          [(PGSyndicationProcessor *)selfCopy _persistCurationScores:dictionary inPhotoLibrary:v54];

          objc_autoreleasePoolPop(context);
          v22 = v25;
          v15 = v52;
          if (v25 >= v52)
          {
            throughputReportBlock = [reporterCopy throughputReportBlock];

            if (throughputReportBlock)
            {
              throughputReportBlock2 = [reporterCopy throughputReportBlock];
              (throughputReportBlock2)[2](throughputReportBlock2, [fetchedObjects count], @"curationScore");
            }

            v38 = mach_absolute_time();
            numer = info.numer;
            denom = info.denom;
            v41 = v49;
            v42 = v49;
            v43 = v42;
            v14 = v50;
            if (v47 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_22F0FC000, v43, OS_SIGNPOST_INTERVAL_END, spid, "PGSyndicationProcessorAssetCuration", "", buf, 2u);
            }

            librarySpecificFetchOptions = v51;
            if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              *v60 = "PGSyndicationProcessorAssetCuration";
              *&v60[8] = 2048;
              *&v60[10] = ((((v38 - v46) * numer) / denom) / 1000000.0);
              _os_log_impl(&dword_22F0FC000, v43, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
            }

            if ([reporterCopy isCancelledWithProgress:1.0])
            {
              loggingConnection = v48;
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                *v60 = 158;
                *&v60[4] = 2080;
                *&v60[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Syndication/PGSyndicationProcessor.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              v7 = 0;
            }

            else
            {
              v7 = 1;
              loggingConnection = v48;
            }

            goto LABEL_41;
          }
        }

        v29 = 0;
        while (1)
        {
          v30 = objc_autoreleasePoolPush();
          v31 = [v27 objectAtIndexedSubscript:v29];
          curationModel = [v31 curationModel];
          v33 = [curationModel isUtilityForSyndicationWithAsset:v31];
          v34 = v23;
          if ((v33 & 1) == 0)
          {
            [v31 scoreInContext:{0, v23}];
          }

          v35 = [MEMORY[0x277CCABB0] numberWithDouble:v34];
          [dictionary setObject:v35 forKeyedSubscript:v31];

          v24 = v21 + v24;
          if ([reporterCopy isCancelledWithProgress:v24])
          {
            break;
          }

          objc_autoreleasePoolPop(v30);
          if (++v29 >= [v27 count])
          {
            goto LABEL_22;
          }
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v60 = 147;
          *&v60[4] = 2080;
          *&v60[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Syndication/PGSyndicationProcessor.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        objc_autoreleasePoolPop(v30);
        objc_autoreleasePoolPop(context);
        v7 = 0;
        loggingConnection = v48;
        v41 = v49;
        v10 = v54;
        v14 = v50;
        librarySpecificFetchOptions = v51;
LABEL_41:
      }

      else
      {
        if (v16)
        {
          *buf = 0;
          _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "PGSyndicationProcessor: No asset eligible for curation processing", buf, 2u);
        }

        if ([reporterCopy isCancelledWithProgress:1.0])
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v60 = 106;
            *&v60[4] = 2080;
            *&v60[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Syndication/PGSyndicationProcessor.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v7 = 0;
        }

        else
        {
          v7 = 1;
        }
      }
    }

    else
    {
      if ([reporterCopy isCancelledWithProgress:1.0] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v60 = 93;
        *&v60[4] = 2080;
        *&v60[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Syndication/PGSyndicationProcessor.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v7 = 0;
    }
  }

  return v7;
}

- (id)syndicationPhotoLibraryWithError:(id *)error
{
  v18 = *MEMORY[0x277D85DE8];
  syndicationLibrary = self->_syndicationLibrary;
  if (syndicationLibrary)
  {
    goto LABEL_12;
  }

  v15 = 0;
  v6 = [MEMORY[0x277CD9948] openPhotoLibraryWithWellKnownIdentifier:3 error:&v15];
  v7 = v15;
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v13 = self->_syndicationLibrary;
    self->_syndicationLibrary = v6;

    syndicationLibrary = self->_syndicationLibrary;
LABEL_12:
    v12 = syndicationLibrary;
    goto LABEL_13;
  }

  v9 = v7;
  loggingConnection = [(PGManagerWorkingContext *)self->_workingContext loggingConnection];
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v17 = v9;
    _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "PGSyndicationProcessor: Failed to open syndicated library: %@", buf, 0xCu);
  }

  if (error)
  {
    v11 = v9;
    *error = v9;
  }

  v12 = 0;
LABEL_13:

  return v12;
}

- (PGSyndicationProcessor)initWithWorkingContext:(id)context syndicationLibrary:(id)library
{
  libraryCopy = library;
  v8 = [(PGSyndicationProcessor *)self initWithWorkingContext:context];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_syndicationLibrary, library);
  }

  return v9;
}

- (PGSyndicationProcessor)initWithWorkingContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = PGSyndicationProcessor;
  v6 = [(PGSyndicationProcessor *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workingContext, context);
    v8 = objc_alloc_init(MEMORY[0x277D3C7A0]);
    curationSession = v7->_curationSession;
    v7->_curationSession = v8;
  }

  return v7;
}

@end