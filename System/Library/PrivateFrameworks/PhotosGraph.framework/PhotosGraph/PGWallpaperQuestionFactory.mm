@interface PGWallpaperQuestionFactory
+ (BOOL)isHighRecallCityscapeAsset:(id)asset;
+ (BOOL)isHighRecallLandscapeAsset:(id)asset;
- (id)_generateQuestionsWithLimit:(unint64_t)limit progressReporter:(id)reporter;
- (id)_generateTruePositiveCityscapeQuestionWithLimit:(unint64_t)limit suggestionSession:(id)session alreadyGeneratedQuestions:(id)questions progressReporter:(id)reporter;
- (id)_generateTruePositiveLandscapeQuestionWithLimit:(unint64_t)limit suggestionSession:(id)session alreadyGeneratedQuestions:(id)questions progressReporter:(id)reporter;
- (id)_generateTruePositivePeopleQuestionWithLimit:(unint64_t)limit suggestionSession:(id)session alreadyGeneratedQuestions:(id)questions progressReporter:(id)reporter;
- (id)_generateTruePositivePetQuestionWithLimit:(unint64_t)limit suggestionSession:(id)session alreadyGeneratedQuestions:(id)questions progressReporter:(id)reporter;
- (id)_generateTruePositiveQuestionsWithLimit:(unint64_t)limit progressReporter:(id)reporter;
- (id)evenlySelectQuestionsByType:(id)type limit:(unint64_t)limit;
- (id)fetchAssetsWithPredicate:(id)predicate assetFilter:(id)filter;
- (id)fetchCityscapeAssets;
- (id)fetchLandscapeAssets;
- (id)fetchPeopleAssets;
- (id)fetchPetAssets;
- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block;
@end

@implementation PGWallpaperQuestionFactory

+ (BOOL)isHighRecallCityscapeAsset:(id)asset
{
  v17 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  [assetCopy clsSceneClassifications];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v15 = 0u;
  curationModel = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (curationModel)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != curationModel; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 extendedSceneIdentifier] == 2147481598)
        {
          curationModel = [assetCopy curationModel];
          cityNatureModel = [curationModel cityNatureModel];

          cityNode = [cityNatureModel cityNode];
          LOBYTE(curationModel) = [cityNode passesHighRecallWithSignal:v8];

          goto LABEL_11;
        }
      }

      curationModel = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (curationModel)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return curationModel;
}

+ (BOOL)isHighRecallLandscapeAsset:(id)asset
{
  v17 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  [assetCopy sceneClassifications];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v15 = 0u;
  curationModel = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (curationModel)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != curationModel; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 extendedSceneIdentifier] == 2147481597)
        {
          curationModel = [assetCopy curationModel];
          cityNatureModel = [curationModel cityNatureModel];

          natureNode = [cityNatureModel natureNode];
          LOBYTE(curationModel) = [natureNode passesHighRecallWithSignal:v8];

          goto LABEL_11;
        }
      }

      curationModel = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (curationModel)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return curationModel;
}

- (id)fetchCityscapeAssets
{
  v3 = [PGCityscapeWallpaperSuggester prefilteringInternalPredicateWithForbiddenAssetUUIDs:0];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__PGWallpaperQuestionFactory_fetchCityscapeAssets__block_invoke;
  v6[3] = &unk_278881390;
  v6[4] = self;
  v4 = [(PGWallpaperQuestionFactory *)self fetchAssetsWithPredicate:v3 assetFilter:v6];

  return v4;
}

uint64_t __50__PGWallpaperQuestionFactory_fetchCityscapeAssets__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_class() isHighRecallCityscapeAsset:v2];

  return v3;
}

- (id)fetchLandscapeAssets
{
  v3 = [PGLandscapeWallpaperSuggester prefilteringInternalPredicateWithForbiddenAssetUUIDs:0];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__PGWallpaperQuestionFactory_fetchLandscapeAssets__block_invoke;
  v6[3] = &unk_278881390;
  v6[4] = self;
  v4 = [(PGWallpaperQuestionFactory *)self fetchAssetsWithPredicate:v3 assetFilter:v6];

  return v4;
}

uint64_t __50__PGWallpaperQuestionFactory_fetchLandscapeAssets__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_class() isHighRecallLandscapeAsset:v2];

  return v3;
}

- (id)fetchPetAssets
{
  v41 = *MEMORY[0x277D85DE8];
  workingContext = [(PGSurveyQuestionFactory *)self workingContext];
  photoLibrary = [workingContext photoLibrary];

  v33 = objc_alloc_init(MEMORY[0x277D3C7A0]);
  v5 = [objc_alloc(MEMORY[0x277D3C790]) initWithPhotoLibrary:photoLibrary curationSession:v33];
  workingContext2 = [(PGSurveyQuestionFactory *)self workingContext];
  v32 = v5;
  v7 = [PGGraphPetIdentityProcessor fetchInterestingEligiblePetsForWallpaperWithWorkingContext:workingContext2 curationContext:v5];

  v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v35;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(v9);
        }

        uuid = [*(*(&v34 + 1) + 8 * i) uuid];
        [v8 addObject:uuid];
      }

      v11 = [v9 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v11);
  }

  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions setIncludedDetectionTypes:&unk_284485940];
  v16 = MEMORY[0x277CCA920];
  v17 = [PGPetWallpaperSuggesterFilteringContext alloc];
  v18 = -[PGPetWallpaperSuggesterFilteringContext initForPetsInOrientation:](v17, "initForPetsInOrientation:", [MEMORY[0x277D3C810] primaryOrientation]);
  v19 = [PGPetWallpaperSuggester prefilteringInternalPredicateWithContext:v18];
  v39[0] = v19;
  v20 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K IN %@", @"personForFace", @"personUUID", v8];
  v39[1] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
  v22 = [v16 andPredicateWithSubpredicates:v21];
  [librarySpecificFetchOptions setInternalPredicate:v22];

  v23 = [MEMORY[0x277CD9868] fetchFacesWithOptions:librarySpecificFetchOptions];
  librarySpecificFetchOptions2 = [photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions2 setCacheSizeForFetch:200];
  [librarySpecificFetchOptions2 setChunkSizeForFetch:200];
  [librarySpecificFetchOptions2 setFetchLimit:200];
  v25 = +[PGCurationManager assetPropertySetsForCuration];
  [librarySpecificFetchOptions2 setFetchPropertySets:v25];

  v26 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:0];
  v38 = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
  [librarySpecificFetchOptions2 setSortDescriptors:v27];

  v28 = MEMORY[0x277CD97A8];
  fetchedObjects = [v23 fetchedObjects];
  v30 = [v28 fetchAssetsForFaces:fetchedObjects options:librarySpecificFetchOptions2];

  return v30;
}

- (id)fetchPeopleAssets
{
  v25[2] = *MEMORY[0x277D85DE8];
  workingContext = [(PGSurveyQuestionFactory *)self workingContext];
  photoLibrary = [workingContext photoLibrary];

  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  v6 = MEMORY[0x277CCA920];
  v7 = [PGSinglePersonWallpaperAssetSuggesterFilteringContext alloc];
  v8 = -[PGSinglePersonWallpaperAssetSuggesterFilteringContext initForPeopleInOrientation:](v7, "initForPeopleInOrientation:", [MEMORY[0x277D3C810] primaryOrientation]);
  v9 = [PGSinglePersonWallpaperAssetSuggester prefilteringInternalPredicateWithContext:v8];
  v25[0] = v9;
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K > %d OR %K.%K >= %f", @"personForFace", @"verifiedType", 0, @"personForFace", @"mergeCandidateConfidence", *MEMORY[0x277CD9C50]];
  v25[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v12 = [v6 andPredicateWithSubpredicates:v11];
  [librarySpecificFetchOptions setInternalPredicate:v12];

  v13 = [MEMORY[0x277CD9868] fetchFacesWithOptions:librarySpecificFetchOptions];
  workingContext2 = [(PGSurveyQuestionFactory *)self workingContext];
  photoLibrary2 = [workingContext2 photoLibrary];
  librarySpecificFetchOptions2 = [photoLibrary2 librarySpecificFetchOptions];

  [librarySpecificFetchOptions2 setCacheSizeForFetch:200];
  [librarySpecificFetchOptions2 setChunkSizeForFetch:200];
  [librarySpecificFetchOptions2 setFetchLimit:200];
  v17 = +[PGCurationManager assetPropertySetsForCuration];
  [librarySpecificFetchOptions2 setFetchPropertySets:v17];

  v18 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:0];
  v24 = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
  [librarySpecificFetchOptions2 setSortDescriptors:v19];

  v20 = MEMORY[0x277CD97A8];
  fetchedObjects = [v13 fetchedObjects];
  v22 = [v20 fetchAssetsForFaces:fetchedObjects options:librarySpecificFetchOptions2];

  return v22;
}

- (id)fetchAssetsWithPredicate:(id)predicate assetFilter:(id)filter
{
  v47[1] = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  filterCopy = filter;
  workingContext = [(PGSurveyQuestionFactory *)self workingContext];
  photoLibrary = [workingContext photoLibrary];

  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions setCacheSizeForFetch:200];
  [librarySpecificFetchOptions setChunkSizeForFetch:200];
  v36 = predicateCopy;
  [librarySpecificFetchOptions setInternalPredicate:predicateCopy];
  v11 = +[PGCurationManager assetPropertySetsForCuration];
  [librarySpecificFetchOptions setFetchPropertySets:v11];

  v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:0];
  v47[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:1];
  [librarySpecificFetchOptions setSortDescriptors:v13];

  v34 = librarySpecificFetchOptions;
  v14 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:librarySpecificFetchOptions];
  v35 = photoLibrary;
  v33 = objc_alloc_init(MEMORY[0x277D3C7A0]);
  v38 = [objc_alloc(MEMORY[0x277D3C790]) initWithPhotoLibrary:photoLibrary curationSession:v33];
  v39 = v14;
  v37 = [v14 count] / 0xC8uLL;
  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = 0;
  do
  {
    context = objc_autoreleasePoolPush();
    v40 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:?];
    v17 = [v39 objectsAtIndexes:?];
    [MEMORY[0x277CD97A8] prefetchOnAssets:v17 options:31 curationContext:v38];
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v18 = v17;
    v19 = [v18 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v43;
LABEL_4:
      v22 = 0;
      while (1)
      {
        if (*v43 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v42 + 1) + 8 * v22);
        v24 = objc_autoreleasePoolPush();
        if (filterCopy[2](filterCopy, v23))
        {
          [v15 addObject:v23];
        }

        v25 = [v15 count];
        objc_autoreleasePoolPop(v24);
        if (v25 > 0xC7)
        {
          break;
        }

        if (v20 == ++v22)
        {
          v20 = [v18 countByEnumeratingWithState:&v42 objects:v46 count:16];
          if (v20)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v26 = [v15 count];
    objc_autoreleasePoolPop(context);
    if (v26 > 0xC7)
    {
      break;
    }
  }

  while (v16++ != v37);
  v28 = objc_alloc(MEMORY[0x277CD98D0]);
  v29 = *MEMORY[0x277CD9BE0];
  fetchPropertySets = [v39 fetchPropertySets];
  v31 = [v28 initWithObjects:v15 photoLibrary:v35 fetchType:v29 fetchPropertySets:fetchPropertySets identifier:0 registerIfNeeded:0];

  return v31;
}

- (id)_generateQuestionsWithLimit:(unint64_t)limit progressReporter:(id)reporter
{
  v153 = *MEMORY[0x277D85DE8];
  reporterCopy = reporter;
  v7 = [MEMORY[0x277CBEB98] set];
  if (![reporterCopy isCancelledWithProgress:0.0])
  {
    v9 = +[PGLogging sharedLogging];
    loggingConnection = [v9 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v152 = limit;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[PGWallpaperQuestionFactory]: Generating regular wallpaper questions with limit: %lu", buf, 0xCu);
    }

    workingContext = [(PGSurveyQuestionFactory *)self workingContext];
    loggingConnection2 = [workingContext loggingConnection];

    v13 = loggingConnection2;
    v14 = os_signpost_id_generate(v13);
    v15 = v13;
    v16 = v15;
    v140 = v14 - 1;
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "OtherWallpaperQuestionGeneration", "", buf, 2u);
    }

    limitCopy = limit;
    spid = v14;

    info = 0;
    mach_timebase_info(&info);
    v139 = mach_absolute_time();
    v17 = [MEMORY[0x277CBEB58] set];
    v145 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v18 = v16;
    v19 = os_signpost_id_generate(v18);
    v20 = v18;
    v21 = v20;
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v19, "WallpaperQuestionFetchPeopleAsset", "", buf, 2u);
    }

    v149 = 0;
    mach_timebase_info(&v149);
    v22 = mach_absolute_time();
    selfCopy = self;
    fetchPeopleAssets = [(PGWallpaperQuestionFactory *)self fetchPeopleAssets];
    v24 = +[PGLogging sharedLogging];
    loggingConnection3 = [v24 loggingConnection];

    if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [fetchPeopleAssets count];
      *buf = 134217984;
      *v152 = v26;
      _os_log_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_DEFAULT, "[PGWallpaperQuestionFactory]: Fetched %lu People assets", buf, 0xCu);
    }

    v27 = fetchPeopleAssets;
    if ([fetchPeopleAssets count])
    {
      v28 = objc_alloc(MEMORY[0x277CBEB18]);
      fetchedObjects = [fetchPeopleAssets fetchedObjects];
      v30 = [v28 initWithArray:fetchedObjects];
      [v145 setObject:v30 forKeyedSubscript:&unk_284483090];
    }

    v143 = v27;
    v31 = mach_absolute_time();
    numer = v149.numer;
    denom = v149.denom;
    v34 = v21;
    v35 = v34;
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v35, OS_SIGNPOST_INTERVAL_END, v19, "WallpaperQuestionFetchPeopleAsset", "", buf, 2u);
    }

    v36 = v35;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *v152 = "WallpaperQuestionFetchPeopleAsset";
      *&v152[8] = 2048;
      *&v152[10] = ((((v31 - v22) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v36, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    if ([reporterCopy isCancelledWithProgress:0.1])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v152 = 381;
        *&v152[4] = 2080;
        *&v152[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v8 = v7;
      v37 = v145;
      goto LABEL_119;
    }

    v141 = v36;
    v38 = v36;
    v39 = os_signpost_id_generate(v38);
    v40 = v38;
    v41 = v40;
    if (v39 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v41, OS_SIGNPOST_INTERVAL_BEGIN, v39, "WallpaperQuestionFetchPetAsset", "", buf, 2u);
    }

    v148 = 0;
    mach_timebase_info(&v148);
    v42 = mach_absolute_time();
    fetchPetAssets = [(PGWallpaperQuestionFactory *)selfCopy fetchPetAssets];
    v44 = +[PGLogging sharedLogging];
    loggingConnection4 = [v44 loggingConnection];

    if (os_log_type_enabled(loggingConnection4, OS_LOG_TYPE_DEFAULT))
    {
      v46 = [fetchPetAssets count];
      *buf = 134217984;
      *v152 = v46;
      _os_log_impl(&dword_22F0FC000, loggingConnection4, OS_LOG_TYPE_DEFAULT, "[PGWallpaperQuestionFactory]: Fetched %lu Pet assets", buf, 0xCu);
    }

    if ([fetchPetAssets count])
    {
      v47 = objc_alloc(MEMORY[0x277CBEB18]);
      fetchedObjects2 = [fetchPetAssets fetchedObjects];
      v49 = [v47 initWithArray:fetchedObjects2];
      [v145 setObject:v49 forKeyedSubscript:&unk_2844830A8];
    }

    v50 = mach_absolute_time();
    v52 = v148.numer;
    v51 = v148.denom;
    v53 = v41;
    v54 = v53;
    if (v39 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v53))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v54, OS_SIGNPOST_INTERVAL_END, v39, "WallpaperQuestionFetchPetAsset", "", buf, 2u);
    }

    v55 = v54;
    if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *v152 = "WallpaperQuestionFetchPetAsset";
      *&v152[8] = 2048;
      *&v152[10] = ((((v50 - v42) * v52) / v51) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v55, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    v137 = fetchPetAssets;
    if ([reporterCopy isCancelledWithProgress:0.2])
    {
      v36 = v141;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v152 = 390;
        *&v152[4] = 2080;
        *&v152[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v8 = v7;
      v37 = v145;
      goto LABEL_118;
    }

    v131 = v55;
    v56 = v55;
    v57 = os_signpost_id_generate(v56);
    v58 = v56;
    v59 = v58;
    if (v57 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v58))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v59, OS_SIGNPOST_INTERVAL_BEGIN, v57, "WallpaperQuestionFetchLandscapeAsset", "", buf, 2u);
    }

    v147 = 0;
    mach_timebase_info(&v147);
    context = mach_absolute_time();
    fetchLandscapeAssets = [(PGWallpaperQuestionFactory *)selfCopy fetchLandscapeAssets];
    v61 = +[PGLogging sharedLogging];
    loggingConnection5 = [v61 loggingConnection];

    v63 = fetchLandscapeAssets;
    if (os_log_type_enabled(loggingConnection5, OS_LOG_TYPE_DEFAULT))
    {
      v64 = [fetchLandscapeAssets count];
      *buf = 134217984;
      *v152 = v64;
      _os_log_impl(&dword_22F0FC000, loggingConnection5, OS_LOG_TYPE_DEFAULT, "[PGWallpaperQuestionFactory]: Fetched %lu Landscape assets", buf, 0xCu);
    }

    if ([fetchLandscapeAssets count])
    {
      v65 = objc_alloc(MEMORY[0x277CBEB18]);
      fetchedObjects3 = [fetchLandscapeAssets fetchedObjects];
      v67 = [v65 initWithArray:fetchedObjects3];
      [v145 setObject:v67 forKeyedSubscript:&unk_2844830C0];

      v63 = fetchLandscapeAssets;
    }

    v68 = mach_absolute_time();
    v70 = v147.numer;
    v69 = v147.denom;
    v71 = v59;
    v72 = v71;
    if (v57 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v71))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v72, OS_SIGNPOST_INTERVAL_END, v57, "WallpaperQuestionFetchLandscapeAsset", "", buf, 2u);
    }

    v73 = v72;
    if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *v152 = "WallpaperQuestionFetchLandscapeAsset";
      *&v152[8] = 2048;
      *&v152[10] = ((((v68 - context) * v70) / v69) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v73, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    if ([reporterCopy isCancelledWithProgress:0.3])
    {
      v36 = v141;
      v55 = v131;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v152 = 399;
        *&v152[4] = 2080;
        *&v152[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v8 = v7;
      v37 = v145;
      goto LABEL_117;
    }

    v130 = v63;
    v128 = v73;
    v74 = v73;
    v75 = os_signpost_id_generate(v74);
    v76 = v74;
    v77 = v76;
    if (v75 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v76))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v77, OS_SIGNPOST_INTERVAL_BEGIN, v75, "WallpaperQuestionFetchCityscapeAsset", "", buf, 2u);
    }

    v146 = 0;
    mach_timebase_info(&v146);
    contexta = mach_absolute_time();
    fetchCityscapeAssets = [(PGWallpaperQuestionFactory *)selfCopy fetchCityscapeAssets];
    v79 = +[PGLogging sharedLogging];
    loggingConnection6 = [v79 loggingConnection];

    if (os_log_type_enabled(loggingConnection6, OS_LOG_TYPE_DEFAULT))
    {
      v81 = [fetchCityscapeAssets count];
      *buf = 134217984;
      *v152 = v81;
      _os_log_impl(&dword_22F0FC000, loggingConnection6, OS_LOG_TYPE_DEFAULT, "[PGWallpaperQuestionFactory]: Fetched %lu Cityscape assets", buf, 0xCu);
    }

    v127 = fetchCityscapeAssets;
    if ([fetchCityscapeAssets count])
    {
      v82 = objc_alloc(MEMORY[0x277CBEB18]);
      fetchedObjects4 = [fetchCityscapeAssets fetchedObjects];
      v84 = [v82 initWithArray:fetchedObjects4];
      [v145 setObject:v84 forKeyedSubscript:&unk_2844830D8];
    }

    v85 = mach_absolute_time();
    v87 = v146.numer;
    v86 = v146.denom;
    v88 = v77;
    v89 = v88;
    if (v75 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v88))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v89, OS_SIGNPOST_INTERVAL_END, v75, "WallpaperQuestionFetchCityscapeAsset", "", buf, 2u);
    }

    v90 = v89;
    v63 = v130;
    if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *v152 = "WallpaperQuestionFetchCityscapeAsset";
      *&v152[8] = 2048;
      *&v152[10] = ((((v85 - contexta) * v87) / v86) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v90, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    v129 = v90;

    v36 = v141;
    v55 = v131;
    if ([reporterCopy isCancelledWithProgress:0.4])
    {
      v73 = v128;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_74:
        v8 = v7;
        v37 = v145;
LABEL_116:

LABEL_117:
LABEL_118:

LABEL_119:
        goto LABEL_120;
      }

      *buf = 67109378;
      *v152 = 408;
      *&v152[4] = 2080;
      *&v152[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
      v91 = MEMORY[0x277D86220];
LABEL_73:
      _os_log_impl(&dword_22F0FC000, v91, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      goto LABEL_74;
    }

    if ([v145 count])
    {
      v132 = v17;
      v126 = v7;
      v92 = 0;
      v37 = v145;
      while (1)
      {
        contextb = objc_autoreleasePoolPush();
        allKeys = [v37 allKeys];
        v93 = [allKeys objectAtIndexedSubscript:v92];
        v94 = [v37 objectForKeyedSubscript:v93];
        v95 = arc4random_uniform([v94 count]);
        v96 = [v94 objectAtIndex:v95];
        v97 = [PGWallpaperQuestion alloc];
        uuid = [v96 uuid];
        v99 = -[PGWallpaperQuestion initWithAssetUUID:suggestionSubtype:](v97, "initWithAssetUUID:suggestionSubtype:", uuid, [v93 unsignedIntValue]);

        v17 = v132;
        if ([(PGSurveyQuestionFactory *)selfCopy shouldAddQuestion:v99 toAlreadyGeneratedQuestions:v132])
        {
          [v132 addObject:v99];
          v100 = +[PGLogging sharedLogging];
          loggingConnection7 = [v100 loggingConnection];

          if (os_log_type_enabled(loggingConnection7, OS_LOG_TYPE_DEFAULT))
          {
            [v93 integerValue];
            v102 = PHSuggestionStringWithSubtype();
            uuid2 = [v96 uuid];
            *buf = 138412546;
            *v152 = v102;
            *&v152[8] = 2112;
            *&v152[10] = uuid2;
            _os_log_impl(&dword_22F0FC000, loggingConnection7, OS_LOG_TYPE_DEFAULT, "[PGWallpaperQuestionFactory]: Generated %@ question with asset %@", buf, 0x16u);

            v27 = v143;
          }

          v17 = v132;
          v37 = v145;
        }

        [v94 removeObjectAtIndex:v95];
        if (![v94 count])
        {
          [v37 setObject:0 forKeyedSubscript:v93];
          v104 = +[PGLogging sharedLogging];
          loggingConnection8 = [v104 loggingConnection];

          if (os_log_type_enabled(loggingConnection8, OS_LOG_TYPE_DEFAULT))
          {
            [v93 integerValue];
            v106 = PHSuggestionStringWithSubtype();
            *buf = 138412290;
            *v152 = v106;
            _os_log_impl(&dword_22F0FC000, loggingConnection8, OS_LOG_TYPE_DEFAULT, "[PGWallpaperQuestionFactory]: Used all %@ assets", buf, 0xCu);
          }

          v27 = v143;
        }

        if ([v17 count] >= limitCopy || !objc_msgSend(v37, "count"))
        {
          break;
        }

        if ([reporterCopy isCancelledWithProgress:{objc_msgSend(v17, "count") / limitCopy * 0.6 + 0.4}])
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v152 = 445;
            *&v152[4] = 2080;
            *&v152[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v8 = v126;

          v7 = v126;
          objc_autoreleasePoolPop(contextb);
          v36 = v141;
          v63 = v130;
          v55 = v131;
          v73 = v128;
          goto LABEL_116;
        }

        v92 = (v92 + 1) % [v37 count];

        objc_autoreleasePoolPop(contextb);
      }

      objc_autoreleasePoolPop(contextb);
      v107 = +[PGLogging sharedLogging];
      loggingConnection9 = [v107 loggingConnection];

      if (os_log_type_enabled(loggingConnection9, OS_LOG_TYPE_DEFAULT))
      {
        v109 = [v17 count];
        *buf = 134217984;
        *v152 = v109;
        _os_log_impl(&dword_22F0FC000, loggingConnection9, OS_LOG_TYPE_DEFAULT, "[PGWallpaperQuestionFactory]: Generated %lu regular wallpaper questions.", buf, 0xCu);
      }

      v7 = v126;
      v36 = v141;
      v63 = v130;
      v73 = v128;
      if ([reporterCopy isCancelledWithProgress:1.0])
      {
        v110 = MEMORY[0x277D86220];
        v111 = MEMORY[0x277D86220];
        v55 = v131;
        if (os_log_type_enabled(v110, OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v152 = 452;
          *&v152[4] = 2080;
          *&v152[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v8 = v126;
        goto LABEL_116;
      }

      v114 = mach_absolute_time();
      v116 = info.numer;
      v115 = info.denom;
      v117 = v129;
      v118 = v117;
      if (v140 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v117))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v118, OS_SIGNPOST_INTERVAL_END, spid, "OtherWallpaperQuestionGeneration", "", buf, 2u);
      }

      v119 = v118;
      if (os_log_type_enabled(v119, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *v152 = "OtherWallpaperQuestionGeneration";
        *&v152[8] = 2048;
        *&v152[10] = ((((v114 - v139) * v116) / v115) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v119, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }

      v8 = v17;
    }

    else
    {
      v112 = +[PGLogging sharedLogging];
      loggingConnection10 = [v112 loggingConnection];

      if (os_log_type_enabled(loggingConnection10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22F0FC000, loggingConnection10, OS_LOG_TYPE_DEFAULT, "[PGWallpaperQuestionFactory]: Found 0 candidate assets for question generation", buf, 2u);
      }

      v73 = v128;
      if ([reporterCopy isCancelledWithProgress:1.0])
      {
        v55 = v131;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          goto LABEL_74;
        }

        *buf = 67109378;
        *v152 = 412;
        *&v152[4] = 2080;
        *&v152[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
        v91 = MEMORY[0x277D86220];
        goto LABEL_73;
      }

      v120 = mach_absolute_time();
      v122 = info.numer;
      v121 = info.denom;
      v123 = v129;
      v124 = v123;
      if (v140 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v123))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v124, OS_SIGNPOST_INTERVAL_END, spid, "OtherWallpaperQuestionGeneration", "", buf, 2u);
      }

      if (os_log_type_enabled(v124, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *v152 = "OtherWallpaperQuestionGeneration";
        *&v152[8] = 2048;
        *&v152[10] = ((((v120 - v139) * v122) / v121) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v124, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }

      v8 = [MEMORY[0x277CBEB98] set];
      v37 = v145;
    }

    v55 = v131;
    goto LABEL_116;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v152 = 364;
    *&v152[4] = 2080;
    *&v152[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v8 = v7;
LABEL_120:

  return v8;
}

- (id)_generateTruePositiveCityscapeQuestionWithLimit:(unint64_t)limit suggestionSession:(id)session alreadyGeneratedQuestions:(id)questions progressReporter:(id)reporter
{
  v49 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  questionsCopy = questions;
  reporterCopy = reporter;
  if ([reporterCopy isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v47 = 333;
      *&v47[4] = 2080;
      *&v47[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v12 = 0;
  }

  else
  {
    v37 = sessionCopy;
    v35 = [[PGCityscapeWallpaperSuggester alloc] initWithSession:sessionCopy];
    v36 = reporterCopy;
    v13 = [(PGCityscapeWallpaperSuggester *)v35 fetchUnsortedCandidatesWithProgressReporter:reporterCopy];
    v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v15 = v13;
    v38 = v15;
    v41 = [v15 countByEnumeratingWithState:&v42 objects:v48 count:16];
    if (v41)
    {
      v16 = *v43;
      while (2)
      {
        for (i = 0; i != v41; ++i)
        {
          if (*v43 != v16)
          {
            objc_enumerationMutation(v15);
          }

          v18 = *(*(&v42 + 1) + 8 * i);
          v19 = objc_autoreleasePoolPush();
          asset = [v18 asset];
          v21 = [PGWallpaperQuestion alloc];
          uuid = [asset uuid];
          v23 = [(PGWallpaperQuestion *)v21 initWithAssetUUID:uuid suggestionSubtype:655];

          if ([(PGSurveyQuestionFactory *)self shouldAddQuestion:v23 toAlreadyGeneratedQuestions:questionsCopy])
          {
            v40 = v19;
            v24 = v16;
            selfCopy = self;
            v26 = +[PGLogging sharedLogging];
            loggingConnection = [v26 loggingConnection];

            if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
            {
              v28 = PHSuggestionStringWithSubtype();
              [asset uuid];
              v29 = v14;
              v31 = v30 = questionsCopy;
              *buf = 138412546;
              *v47 = v28;
              *&v47[8] = 2112;
              *&v47[10] = v31;
              _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[PGWallpaperQuestionFactory]: Elected True Positive %@ question with asset %@", buf, 0x16u);

              questionsCopy = v30;
              v14 = v29;
              v15 = v38;
            }

            [v14 addObject:v23];
            self = selfCopy;
            v16 = v24;
            v19 = v40;
            if ([v14 count] == limit)
            {
              reporterCopy = v36;
              if ([v36 isCancelledWithProgress:1.0])
              {
                sessionCopy = v37;
                v32 = v35;
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  *buf = 67109378;
                  *v47 = 352;
                  *&v47[4] = 2080;
                  *&v47[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                }

                v12 = 0;
              }

              else
              {
                v12 = v14;
                sessionCopy = v37;
                v32 = v35;
              }

              objc_autoreleasePoolPop(v40);
              v33 = v38;

              goto LABEL_28;
            }
          }

          objc_autoreleasePoolPop(v19);
        }

        v41 = [v15 countByEnumeratingWithState:&v42 objects:v48 count:16];
        if (v41)
        {
          continue;
        }

        break;
      }
    }

    reporterCopy = v36;
    if ([v36 isCancelledWithProgress:1.0])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v47 = 356;
        *&v47[4] = 2080;
        *&v47[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v12 = 0;
    }

    else
    {
      v12 = v14;
    }

    sessionCopy = v37;
    v32 = v35;
    v33 = v38;
LABEL_28:
  }

  return v12;
}

- (id)_generateTruePositiveLandscapeQuestionWithLimit:(unint64_t)limit suggestionSession:(id)session alreadyGeneratedQuestions:(id)questions progressReporter:(id)reporter
{
  v49 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  questionsCopy = questions;
  reporterCopy = reporter;
  if ([reporterCopy isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v47 = 304;
      *&v47[4] = 2080;
      *&v47[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v12 = 0;
  }

  else
  {
    v37 = sessionCopy;
    v35 = [[PGLandscapeWallpaperSuggester alloc] initWithSession:sessionCopy];
    v36 = reporterCopy;
    v13 = [(PGLandscapeWallpaperSuggester *)v35 fetchUnsortedCandidatesWithProgressReporter:reporterCopy];
    v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v15 = v13;
    v38 = v15;
    v41 = [v15 countByEnumeratingWithState:&v42 objects:v48 count:16];
    if (v41)
    {
      v16 = *v43;
      while (2)
      {
        for (i = 0; i != v41; ++i)
        {
          if (*v43 != v16)
          {
            objc_enumerationMutation(v15);
          }

          v18 = *(*(&v42 + 1) + 8 * i);
          v19 = objc_autoreleasePoolPush();
          asset = [v18 asset];
          v21 = [PGWallpaperQuestion alloc];
          uuid = [asset uuid];
          v23 = [(PGWallpaperQuestion *)v21 initWithAssetUUID:uuid suggestionSubtype:654];

          if ([(PGSurveyQuestionFactory *)self shouldAddQuestion:v23 toAlreadyGeneratedQuestions:questionsCopy])
          {
            v40 = v19;
            v24 = v16;
            selfCopy = self;
            v26 = +[PGLogging sharedLogging];
            loggingConnection = [v26 loggingConnection];

            if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
            {
              v28 = PHSuggestionStringWithSubtype();
              [asset uuid];
              v29 = v14;
              v31 = v30 = questionsCopy;
              *buf = 138412546;
              *v47 = v28;
              *&v47[8] = 2112;
              *&v47[10] = v31;
              _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[PGWallpaperQuestionFactory]: Elected True Positive %@ question with asset %@", buf, 0x16u);

              questionsCopy = v30;
              v14 = v29;
              v15 = v38;
            }

            [v14 addObject:v23];
            self = selfCopy;
            v16 = v24;
            v19 = v40;
            if ([v14 count] == limit)
            {
              reporterCopy = v36;
              if ([v36 isCancelledWithProgress:1.0])
              {
                sessionCopy = v37;
                v32 = v35;
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  *buf = 67109378;
                  *v47 = 323;
                  *&v47[4] = 2080;
                  *&v47[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                }

                v12 = 0;
              }

              else
              {
                v12 = v14;
                sessionCopy = v37;
                v32 = v35;
              }

              objc_autoreleasePoolPop(v40);
              v33 = v38;

              goto LABEL_28;
            }
          }

          objc_autoreleasePoolPop(v19);
        }

        v41 = [v15 countByEnumeratingWithState:&v42 objects:v48 count:16];
        if (v41)
        {
          continue;
        }

        break;
      }
    }

    reporterCopy = v36;
    if ([v36 isCancelledWithProgress:1.0])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v47 = 327;
        *&v47[4] = 2080;
        *&v47[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v12 = 0;
    }

    else
    {
      v12 = v14;
    }

    sessionCopy = v37;
    v32 = v35;
    v33 = v38;
LABEL_28:
  }

  return v12;
}

- (id)_generateTruePositivePetQuestionWithLimit:(unint64_t)limit suggestionSession:(id)session alreadyGeneratedQuestions:(id)questions progressReporter:(id)reporter
{
  v75 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  questionsCopy = questions;
  reporterCopy = reporter;
  if (![reporterCopy isCancelledWithProgress:0.0])
  {
    v47 = sessionCopy;
    v13 = [[PGPetWallpaperSuggester alloc] initWithSession:sessionCopy];
    v59 = objc_alloc_init(MEMORY[0x277CBEB58]);
    randomNumberGeneratorForWallpaperDonation = [MEMORY[0x277D3C810] randomNumberGeneratorForWallpaperDonation];
    v54 = v13;
    fetchPets = [(PGPetWallpaperSuggester *)v13 fetchPets];
    v16 = objc_alloc(MEMORY[0x277CBEA60]);
    v46 = fetchPets;
    fetchedObjects = [fetchPets fetchedObjects];
    v18 = [v16 initWithArray:fetchedObjects];
    v53 = randomNumberGeneratorForWallpaperDonation;
    v19 = PFShuffledArrayWithRandomNumberGenerator();

    if ([reporterCopy isCancelledWithProgress:0.5])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v72 = 277;
        *&v72[4] = 2080;
        *&v72[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v6 = 0;
      v12 = v47;
      v20 = v59;
      goto LABEL_50;
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v45 = v19;
    v21 = v19;
    v52 = [v21 countByEnumeratingWithState:&v67 objects:v74 count:16];
    if (v52)
    {
      obj = v21;
      v55 = 0;
      v51 = *v68;
      v20 = v59;
      v49 = reporterCopy;
      while (2)
      {
        for (i = 0; i != v52; ++i)
        {
          if (*v68 != v51)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v67 + 1) + 8 * i);
          v24 = objc_autoreleasePoolPush();
          v25 = [(PGPetWallpaperSuggester *)v54 candidatesForPet:v23];
          v26 = PFShuffledArrayWithRandomNumberGenerator();
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          v66 = 0u;
          v61 = v26;
          v27 = [v61 countByEnumeratingWithState:&v63 objects:v73 count:16];
          if (v27)
          {
            v28 = v27;
            v56 = v25;
            v57 = v24;
            v58 = i;
            v50 = v6;
            v29 = *v64;
            while (2)
            {
              for (j = 0; j != v28; ++j)
              {
                if (*v64 != v29)
                {
                  objc_enumerationMutation(v61);
                }

                v31 = *(*(&v63 + 1) + 8 * j);
                v32 = objc_autoreleasePoolPush();
                asset = [v31 asset];
                v34 = [PGWallpaperQuestion alloc];
                uuid = [asset uuid];
                v36 = [(PGWallpaperQuestion *)v34 initWithAssetUUID:uuid suggestionSubtype:653];

                if ([(PGSurveyQuestionFactory *)self shouldAddQuestion:v36 toAlreadyGeneratedQuestions:questionsCopy])
                {
                  v37 = +[PGLogging sharedLogging];
                  loggingConnection = [v37 loggingConnection];

                  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
                  {
                    v39 = PHSuggestionStringWithSubtype();
                    [asset uuid];
                    v41 = v40 = questionsCopy;
                    *buf = 138412546;
                    *v72 = v39;
                    *&v72[8] = 2112;
                    *&v72[10] = v41;
                    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[PGWallpaperQuestionFactory]: Elected True Positive %@ question with asset %@", buf, 0x16u);

                    questionsCopy = v40;
                    v20 = v59;
                  }

                  [v20 addObject:v36];
                  if ([v20 count] == limit)
                  {
                    reporterCopy = v49;
                    if ((v55 & 1) != 0 || [v49 isCancelledWithProgress:1.0])
                    {
                      v43 = MEMORY[0x277D86220];
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                      {
                        *buf = 67109378;
                        *v72 = 293;
                        *&v72[4] = 2080;
                        *&v72[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
                        v55 = 1;
                        _os_log_impl(&dword_22F0FC000, v43, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                      }

                      else
                      {
                        v55 = 1;
                      }

                      v6 = 0;
                    }

                    else
                    {
                      v6 = v20;
                      v55 = 0;
                    }

                    objc_autoreleasePoolPop(v32);
                    v42 = 0;
                    goto LABEL_35;
                  }
                }

                objc_autoreleasePoolPop(v32);
              }

              v28 = [v61 countByEnumeratingWithState:&v63 objects:v73 count:16];
              if (v28)
              {
                continue;
              }

              break;
            }

            v42 = 1;
            reporterCopy = v49;
            v6 = v50;
LABEL_35:
            v24 = v57;
            i = v58;
            v25 = v56;
          }

          else
          {
            v42 = 1;
          }

          objc_autoreleasePoolPop(v24);
          if (!v42)
          {

            goto LABEL_48;
          }
        }

        v52 = [obj countByEnumeratingWithState:&v67 objects:v74 count:16];
        if (v52)
        {
          continue;
        }

        break;
      }

      if (v55)
      {
        goto LABEL_44;
      }
    }

    else
    {

      v20 = v59;
    }

    if (![reporterCopy isCancelledWithProgress:1.0])
    {
      v6 = v20;
LABEL_48:
      v12 = v47;
      goto LABEL_49;
    }

LABEL_44:
    v12 = v47;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v72 = 298;
      *&v72[4] = 2080;
      *&v72[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v6 = 0;
LABEL_49:
    v19 = v45;
LABEL_50:

    goto LABEL_51;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v72 = 267;
    *&v72[4] = 2080;
    *&v72[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v6 = 0;
  v12 = sessionCopy;
LABEL_51:

  return v6;
}

- (id)_generateTruePositivePeopleQuestionWithLimit:(unint64_t)limit suggestionSession:(id)session alreadyGeneratedQuestions:(id)questions progressReporter:(id)reporter
{
  v89 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  questionsCopy = questions;
  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = 0;
  reporterCopy = reporter;
  v8 = [reporterCopy isCancelledWithProgress:0.0];
  *(v79 + 24) = v8;
  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *&buf[4] = 212;
      LOWORD(v87) = 2080;
      *(&v87 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v58 = 0;
    goto LABEL_53;
  }

  v9 = [[PGPeopleWallpaperSuggester alloc] initWithSession:sessionCopy];
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __136__PGWallpaperQuestionFactory__generateTruePositivePeopleQuestionWithLimit_suggestionSession_alreadyGeneratedQuestions_progressReporter___block_invoke;
  v75[3] = &unk_278889448;
  v77 = &v78;
  v50 = reporterCopy;
  v76 = v50;
  v41 = v9;
  v42 = [(PGPeopleWallpaperSuggester *)v9 personLocalIdentifiersByOriginalPersonLocalIdentifierWithProgress:v75];
  if (v79[3])
  {
    *(v79 + 24) = 1;
LABEL_8:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *&buf[4] = 221;
      LOWORD(v87) = 2080;
      *(&v87 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v58 = 0;
    goto LABEL_52;
  }

  v10 = [v50 isCancelledWithProgress:0.5];
  *(v79 + 24) = v10;
  if (v10)
  {
    goto LABEL_8;
  }

  curationContext = [sessionCopy curationContext];
  *buf = 0;
  *&v87 = buf;
  *(&v87 + 1) = 0x2020000000;
  v88 = 0x3FE0000000000000;
  v11 = [v42 count];
  v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
  randomNumberGeneratorForWallpaperDonation = [MEMORY[0x277D3C810] randomNumberGeneratorForWallpaperDonation];
  allValues = [v42 allValues];
  v14 = PFShuffledArrayWithRandomNumberGenerator();

  workingContext = [(PGSurveyQuestionFactory *)self workingContext];
  loggingConnection = [workingContext loggingConnection];

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = v14;
  v16 = [obj countByEnumeratingWithState:&v71 objects:v85 count:16];
  if (!v16)
  {
    goto LABEL_43;
  }

  v17 = 0.5 / v11;
  v45 = *v72;
  v18 = v16;
  do
  {
    v55 = 0;
    v44 = v18;
    do
    {
      if (*v72 != v45)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v71 + 1) + 8 * v55);
      context = objc_autoreleasePoolPush();
      v56 = [[PGSinglePersonWallpaperAssetSuggester alloc] initWithPersonLocalIdentifiers:v19 curationContext:curationContext loggingConnection:loggingConnection];
      v20 = +[PGCurationManager assetPropertySetsForCuration];
      [(PGSinglePersonWallpaperAssetSuggester *)v56 setAssetFetchPropertySets:v20];

      v66[0] = MEMORY[0x277D85DD0];
      v66[1] = 3221225472;
      v66[2] = __136__PGWallpaperQuestionFactory__generateTruePositivePeopleQuestionWithLimit_suggestionSession_alreadyGeneratedQuestions_progressReporter___block_invoke_351;
      v66[3] = &unk_278881368;
      v68 = &v78;
      v57 = v50;
      v67 = v57;
      v69 = buf;
      v70 = v17;
      v53 = [(PGSinglePersonWallpaperAssetSuggester *)v56 unsortedCandidatesFromPersonLocalIdentifiers:v19 progressBlock:v66];
      v52 = PFShuffledArrayWithRandomNumberGenerator();
      v21 = [(PGSinglePersonWallpaperAssetSuggester *)v56 assetsFromCandidates:?];
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v22 = v21;
      v23 = [v22 countByEnumeratingWithState:&v62 objects:v84 count:16];
      if (v23)
      {
        v24 = *v63;
LABEL_18:
        v25 = 0;
        while (1)
        {
          if (*v63 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v62 + 1) + 8 * v25);
          v27 = objc_autoreleasePoolPush();
          v28 = [PGWallpaperQuestion alloc];
          uuid = [v26 uuid];
          v30 = [(PGWallpaperQuestion *)v28 initWithAssetUUID:uuid suggestionSubtype:652];

          if ([(PGSurveyQuestionFactory *)self shouldAddQuestion:v30 toAlreadyGeneratedQuestions:questionsCopy])
          {
            v31 = +[PGLogging sharedLogging];
            loggingConnection2 = [v31 loggingConnection];

            if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_DEFAULT))
            {
              v33 = PHSuggestionStringWithSubtype();
              uuid2 = [v26 uuid];
              *v82 = 138412546;
              *v83 = v33;
              *&v83[8] = 2112;
              *&v83[10] = uuid2;
              _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_DEFAULT, "[PGWallpaperQuestionFactory]: Elected True Positive %@ question with asset %@", v82, 0x16u);
            }

            [v12 addObject:v30];
            if ([v12 count] == limit)
            {
              if (v79[3])
              {
                *(v79 + 24) = 1;
LABEL_30:
                v35 = 1;
                v37 = MEMORY[0x277D86220];
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  *v82 = 67109378;
                  *v83 = 254;
                  *&v83[4] = 2080;
                  *&v83[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
                  _os_log_impl(&dword_22F0FC000, v37, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v82, 0x12u);
                }

                v58 = 0;
                goto LABEL_34;
              }

              v36 = [v57 isCancelledWithProgress:1.0];
              *(v79 + 24) = v36;
              if (v36)
              {
                goto LABEL_30;
              }

              v58 = v12;
              v35 = 1;
            }

            else
            {
              v35 = 0;
            }
          }

          else
          {
            v35 = 5;
          }

LABEL_34:

          objc_autoreleasePoolPop(v27);
          if (v35 != 5 && v35)
          {

            v38 = 0;
            goto LABEL_40;
          }

          if (v23 == ++v25)
          {
            v23 = [v22 countByEnumeratingWithState:&v62 objects:v84 count:16];
            if (v23)
            {
              goto LABEL_18;
            }

            break;
          }
        }
      }

      *(v87 + 24) = v17 + *(v87 + 24);
      v38 = 1;
LABEL_40:

      objc_autoreleasePoolPop(context);
      if (!v38)
      {

        goto LABEL_51;
      }

      ++v55;
    }

    while (v55 != v44);
    v18 = [obj countByEnumeratingWithState:&v71 objects:v85 count:16];
  }

  while (v18);
LABEL_43:

  if (v79[3])
  {
    *(v79 + 24) = 1;
    goto LABEL_47;
  }

  v39 = [v50 isCancelledWithProgress:1.0];
  *(v79 + 24) = v39;
  if (v39)
  {
LABEL_47:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *v82 = 67109378;
      *v83 = 261;
      *&v83[4] = 2080;
      *&v83[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v82, 0x12u);
    }

    v58 = 0;
  }

  else
  {
    v58 = v12;
  }

LABEL_51:

  _Block_object_dispose(buf, 8);
LABEL_52:

LABEL_53:
  _Block_object_dispose(&v78, 8);

  return v58;
}

uint64_t __136__PGWallpaperQuestionFactory__generateTruePositivePeopleQuestionWithLimit_suggestionSession_alreadyGeneratedQuestions_progressReporter___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  v5 = *(*(a1 + 40) + 8);
  if (*(v5 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:a3 * 0.5];
    v5 = *(*(a1 + 40) + 8);
  }

  *(v5 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

uint64_t __136__PGWallpaperQuestionFactory__generateTruePositivePeopleQuestionWithLimit_suggestionSession_alreadyGeneratedQuestions_progressReporter___block_invoke_351(uint64_t a1, _BYTE *a2, double a3)
{
  v5 = *(*(a1 + 40) + 8);
  if (*(v5 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:*(*(*(a1 + 48) + 8) + 24) + *(a1 + 56) * a3];
    v5 = *(*(a1 + 40) + 8);
  }

  *(v5 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

- (id)evenlySelectQuestionsByType:(id)type limit:(unint64_t)limit
{
  v34 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v22 = 0;
  v23 = 0;
  v19 = 0;
  v21 = 0;
  v7 = 0;
  while (1)
  {
    allKeys = [typeCopy allKeys];
    v9 = [allKeys sortedArrayUsingSelector:sel_compare_];

    v10 = [v9 objectAtIndexedSubscript:v7];
    v11 = [typeCopy objectForKeyedSubscript:v10];
    anyObject = [v11 anyObject];
    if (anyObject)
    {
      [v6 addObject:anyObject];
      [v11 removeObject:anyObject];
    }

    if ([v11 count])
    {
      ++v7;
    }

    else
    {
      [typeCopy removeObjectForKey:v10];
    }

    v13 = [typeCopy count];
    unsignedIntValue = [v10 unsignedIntValue];
    if (unsignedIntValue > 0x28D)
    {
      if (unsignedIntValue == 654)
      {
        ++v22;
      }

      else if (unsignedIntValue == 655)
      {
        ++v23;
      }
    }

    else if (unsignedIntValue == 652)
    {
      ++v20;
    }

    else if (unsignedIntValue == 653)
    {
      ++v21;
    }

    if ([v6 count] == limit)
    {
      break;
    }

    v7 %= v13;
    v15 = [typeCopy count];

    if (!v15)
    {
      goto LABEL_20;
    }
  }

LABEL_20:
  v16 = +[PGLogging sharedLogging];
  loggingConnection = [v16 loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219008;
    v25 = [v6 count];
    v26 = 2048;
    v27 = v19;
    v28 = 2048;
    v29 = v21;
    v30 = 2048;
    v31 = v22;
    v32 = 2048;
    v33 = v23;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[PGWallpaperQuestionFactory]: Selected %lu true positive questions. People:%lu, Pet:%lu, Landscape:%lu, Cityscape:%lu", buf, 0x34u);
  }

  return v6;
}

- (id)_generateTruePositiveQuestionsWithLimit:(unint64_t)limit progressReporter:(id)reporter
{
  v52 = *MEMORY[0x277D85DE8];
  reporterCopy = reporter;
  v47 = [MEMORY[0x277CBEB98] set];
  v7 = +[PGLogging sharedLogging];
  loggingConnection = [v7 loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *v51 = limit;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[PGWallpaperQuestionFactory]: Generating true positive wallpaper questions with limit: %lu", buf, 0xCu);
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v48 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = [PGSuggestionSession alloc];
  workingContext = [(PGSurveyQuestionFactory *)self workingContext];
  v12 = [(PGSuggestionSession *)v10 initWithProfile:2 workingContext:workingContext];

  workingContext2 = [(PGSurveyQuestionFactory *)self workingContext];
  loggingConnection2 = [workingContext2 loggingConnection];

  v15 = os_signpost_id_generate(loggingConnection2);
  v16 = loggingConnection2;
  v17 = v16;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "TruePositiveWallpaperQuestionGeneration", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v46 = mach_absolute_time();
  v18 = [reporterCopy childProgressReporterFromStart:0.01 toEnd:0.24];
  v19 = [(PGWallpaperQuestionFactory *)self _generateTruePositivePeopleQuestionWithLimit:limit suggestionSession:v12 alreadyGeneratedQuestions:v9 progressReporter:v18];
  if ([v19 count])
  {
    [v9 unionSet:v19];
    [v48 setObject:v19 forKeyedSubscript:&unk_284483090];
  }

  if ([reporterCopy isCancelledWithProgress:0.25])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v51 = 112;
      *&v51[4] = 2080;
      *&v51[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v20 = v47;
    v21 = v47;
  }

  else
  {
    v44 = v18;
    v45 = [reporterCopy childProgressReporterFromStart:0.25 toEnd:0.49];
    v22 = [(PGWallpaperQuestionFactory *)self _generateTruePositivePetQuestionWithLimit:limit suggestionSession:v12 alreadyGeneratedQuestions:v9 progressReporter:?];
    if ([v22 count])
    {
      [v9 unionSet:v22];
      [v48 setObject:v22 forKeyedSubscript:&unk_2844830A8];
    }

    if ([reporterCopy isCancelledWithProgress:0.5])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v51 = 121;
        *&v51[4] = 2080;
        *&v51[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v20 = v47;
      v21 = v47;
    }

    else
    {
      v42 = [reporterCopy childProgressReporterFromStart:0.5 toEnd:0.74];
      v43 = v12;
      v23 = [(PGWallpaperQuestionFactory *)self _generateTruePositiveLandscapeQuestionWithLimit:limit suggestionSession:v12 alreadyGeneratedQuestions:v9 progressReporter:?];
      if ([v23 count])
      {
        [v9 unionSet:v23];
        [v48 setObject:v23 forKeyedSubscript:&unk_2844830C0];
      }

      if ([reporterCopy isCancelledWithProgress:0.75])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v51 = 130;
          *&v51[4] = 2080;
          *&v51[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v20 = v47;
        v21 = v47;
      }

      else
      {
        v41 = v17;
        v40 = [reporterCopy childProgressReporterFromStart:0.75 toEnd:0.99];
        v24 = [(PGWallpaperQuestionFactory *)self _generateTruePositiveCityscapeQuestionWithLimit:limit suggestionSession:v43 alreadyGeneratedQuestions:v9 progressReporter:?];
        if ([v24 count])
        {
          [v9 unionSet:v24];
          [v48 setObject:v24 forKeyedSubscript:&unk_2844830D8];
        }

        v39 = v24;
        v25 = v9;
        if ([v25 count] > limit)
        {
          v26 = [(PGWallpaperQuestionFactory *)self evenlySelectQuestionsByType:v48 limit:limit];

          v25 = v26;
        }

        v27 = +[PGLogging sharedLogging];
        loggingConnection3 = [v27 loggingConnection];

        if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_DEFAULT))
        {
          v29 = [v25 count];
          *buf = 134217984;
          *v51 = v29;
          _os_log_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_DEFAULT, "[PGWallpaperQuestionFactory]: Generated %lu true positive wallpaper questions.", buf, 0xCu);
        }

        v30 = mach_absolute_time();
        numer = info.numer;
        denom = info.denom;
        v33 = v41;
        v34 = v33;
        if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v34, OS_SIGNPOST_INTERVAL_END, v15, "TruePositiveWallpaperQuestionGeneration", "", buf, 2u);
        }

        v20 = v47;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *v51 = "TruePositiveWallpaperQuestionGeneration";
          *&v51[8] = 2048;
          *&v51[10] = ((((v30 - v46) * numer) / denom) / 1000000.0);
          _os_log_impl(&dword_22F0FC000, v34, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
        }

        v35 = [reporterCopy isCancelledWithProgress:1.0];
        v36 = v25;
        if (v35)
        {
          v37 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
          v36 = v47;
          if (v37)
          {
            *buf = 67109378;
            *v51 = 148;
            *&v51[4] = 2080;
            *&v51[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            v36 = v47;
          }
        }

        v21 = v36;

        v17 = v41;
      }

      v12 = v43;
    }

    v18 = v44;
  }

  return v21;
}

- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:block];
  if ([v6 isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v35 = 58;
      *&v35[4] = 2080;
      *&v35[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    allObjects = MEMORY[0x277CBEBF8];
  }

  else
  {
    workingContext = [(PGSurveyQuestionFactory *)self workingContext];
    loggingConnection = [workingContext loggingConnection];

    if (limit)
    {
      v32 = loggingConnection;
      v10 = loggingConnection;
      v11 = os_signpost_id_generate(v10);
      v12 = v10;
      v13 = v12;
      if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "WallpaperQuestionGeneration", "", buf, 2u);
      }

      info = 0;
      mach_timebase_info(&info);
      v29 = mach_absolute_time();
      v14 = [MEMORY[0x277CBEB58] set];
      if (limit >= 4)
      {
        limitCopy = 4;
      }

      else
      {
        limitCopy = limit;
      }

      v31 = [v6 childProgressReporterFromStart:0.0 toEnd:0.4];
      v16 = [(PGWallpaperQuestionFactory *)self _generateTruePositiveQuestionsWithLimit:limitCopy progressReporter:?];
      [v14 unionSet:v16];
      v17 = limit - [v16 count];
      v30 = [v6 childProgressReporterFromStart:0.4 toEnd:1.0];
      v18 = [(PGWallpaperQuestionFactory *)self _generateQuestionsWithLimit:v17 progressReporter:?];
      [v14 unionSet:v18];
      v19 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v22 = v13;
      v23 = v22;
      if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v23, OS_SIGNPOST_INTERVAL_END, v11, "WallpaperQuestionGeneration", "", buf, 2u);
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *v35 = "WallpaperQuestionGeneration";
        *&v35[8] = 2048;
        *&v35[10] = ((((v19 - v29) * numer) / denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v23, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }

      if ([v6 isCancelledWithProgress:1.0])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v35 = 85;
          *&v35[4] = 2080;
          *&v35[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        allObjects = MEMORY[0x277CBEBF8];
      }

      else
      {
        v24 = +[PGLogging sharedLogging];
        loggingConnection2 = [v24 loggingConnection];

        if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_DEFAULT))
        {
          v26 = [v16 count];
          v27 = [v18 count];
          *buf = 134218496;
          *v35 = v26;
          *&v35[8] = 2048;
          *&v35[10] = v27;
          v36 = 2048;
          limitCopy2 = limit;
          _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_DEFAULT, "[PGWallpaperQuestionFactory]: Generated %lu true positive, %lu regular wallpaper questions, limit %lu", buf, 0x20u);
        }

        allObjects = [v14 allObjects];
      }

      loggingConnection = v32;
    }

    else
    {
      if ([v6 isCancelledWithProgress:1.0] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v35 = 63;
        *&v35[4] = 2080;
        *&v35[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Wallpaper/PGWallpaperQuestionFactory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      allObjects = MEMORY[0x277CBEBF8];
    }
  }

  return allObjects;
}

@end