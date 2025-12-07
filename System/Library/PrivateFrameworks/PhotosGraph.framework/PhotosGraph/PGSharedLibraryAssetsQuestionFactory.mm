@interface PGSharedLibraryAssetsQuestionFactory
+ (BOOL)isSharedLibraryQuestionsEnabledForPhotoLibrary:(id)library;
+ (id)_libraryScopeFromPhotoLibrary:(id)library;
- (id)_assetsFetchResultFromMoment:(id)moment;
- (id)_eligibleMomentsFetchResult;
- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block;
@end

@implementation PGSharedLibraryAssetsQuestionFactory

+ (id)_libraryScopeFromPhotoLibrary:(id)library
{
  v16[2] = *MEMORY[0x277D85DE8];
  librarySpecificFetchOptions = [library librarySpecificFetchOptions];
  v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
  v16[0] = v4;
  v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v16[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  [librarySpecificFetchOptions setSortDescriptors:v6];

  v7 = [MEMORY[0x277CD98A8] fetchActiveLibraryScopeWithOptions:librarySpecificFetchOptions];
  if ([v7 count])
  {
    firstObject = [v7 firstObject];
    if ([v7 count] < 2)
    {
      goto LABEL_9;
    }

    v9 = +[PGLogging sharedLogging];
    loggingConnection = [v9 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
    {
      localIdentifier = [firstObject localIdentifier];
      v14 = 138412290;
      v15 = localIdentifier;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[PGSharedLibraryAssetsQuestionFactory] more than 1 scope configured, using first one: %@", &v14, 0xCu);
    }
  }

  else
  {
    v12 = +[PGLogging sharedLogging];
    loggingConnection = [v12 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGSharedLibraryAssetsQuestionFactory] no active scope", &v14, 2u);
    }

    firstObject = 0;
  }

LABEL_9:

  return firstObject;
}

+ (BOOL)isSharedLibraryQuestionsEnabledForPhotoLibrary:(id)library
{
  v3 = [self _libraryScopeFromPhotoLibrary:library];
  v4 = v3 != 0;

  return v4;
}

- (id)_assetsFetchResultFromMoment:(id)moment
{
  v19[2] = *MEMORY[0x277D85DE8];
  momentCopy = moment;
  workingContext = [(PGSurveyQuestionFactory *)self workingContext];
  photoLibrary = [workingContext photoLibrary];

  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  v8 = MEMORY[0x277CCA920];
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != %d", @"kindSubtype", 10];
  v19[0] = v9;
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != %d", @"kindSubtype", 103];
  v19[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v12 = [v8 andPredicateWithSubpredicates:v11];

  [librarySpecificFetchOptions setInternalPredicate:v12];
  v13 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
  v18[0] = v13;
  v14 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v18[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  [librarySpecificFetchOptions setSortDescriptors:v15];

  [librarySpecificFetchOptions setWantsIncrementalChangeDetails:0];
  v16 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:momentCopy options:librarySpecificFetchOptions];

  return v16;
}

- (id)_eligibleMomentsFetchResult
{
  v38 = *MEMORY[0x277D85DE8];
  workingContext = [(PGSurveyQuestionFactory *)self workingContext];
  photoLibrary = [workingContext photoLibrary];

  v4 = [objc_opt_class() _libraryScopeFromPhotoLibrary:photoLibrary];
  if (v4)
  {
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    v6 = [MEMORY[0x277CD98C0] fetchLibraryScopeRulesForLibraryScope:v4 options:librarySpecificFetchOptions];
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v27 objects:v37 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v28;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dateRangeCondition = [*(*(&v27 + 1) + 8 * i) dateRangeCondition];
          v14 = dateRangeCondition;
          if (dateRangeCondition && [dateRangeCondition criteria] == 2)
          {
            endDate = [v14 endDate];

            distantPast = endDate;
            goto LABEL_14;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v27 objects:v37 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    v17 = +[PGLogging sharedLogging];
    loggingConnection = [v17 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      localIdentifier = [v4 localIdentifier];
      *buf = 138412546;
      v34 = localIdentifier;
      v35 = 2112;
      v36 = distantPast;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGSharedLibraryAssetsQuestionFactory] using scope: %@, with %@ start date", buf, 0x16u);
    }

    librarySpecificFetchOptions2 = [photoLibrary librarySpecificFetchOptions];
    v32 = *MEMORY[0x277CD9AA8];
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
    [librarySpecificFetchOptions2 setFetchPropertySets:v21];

    v22 = [MEMORY[0x277CCAC30] predicateWithFormat:@"startDate >= %@", distantPast];
    [librarySpecificFetchOptions2 setInternalPredicate:v22];

    v23 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:0];
    v31[0] = v23;
    v24 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
    v31[1] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
    [librarySpecificFetchOptions2 setSortDescriptors:v25];

    [librarySpecificFetchOptions2 setWantsIncrementalChangeDetails:0];
    v15 = [MEMORY[0x277CD98F8] fetchMomentsWithOptions:librarySpecificFetchOptions2];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block
{
  v67 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v5 = _Block_copy(blockCopy);
  v6 = 0.0;
  if (!v5 || (v7 = CFAbsoluteTimeGetCurrent(), v7 < 0.01))
  {
LABEL_8:
    workingContext = [(PGSurveyQuestionFactory *)self workingContext];
    photoLibrary = [workingContext photoLibrary];

    if ([objc_opt_class() isSharedLibraryQuestionsEnabledForPhotoLibrary:photoLibrary])
    {
      if (limit)
      {
        v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
        _eligibleMomentsFetchResult = [(PGSharedLibraryAssetsQuestionFactory *)self _eligibleMomentsFetchResult];
        v13 = [_eligibleMomentsFetchResult count];
        if (v13)
        {
          v14 = v13;
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v15 = _eligibleMomentsFetchResult;
          v42 = [v15 countByEnumeratingWithState:&v56 objects:v62 count:16];
          if (v42)
          {
            v16 = 1.0 / v14;
            v17 = *v57;
            v40 = v5 + 16;
            v18 = 0.0;
            v19 = 0x277CBE000uLL;
            v47 = v5;
            v48 = blockCopy;
            v45 = _eligibleMomentsFetchResult;
            v46 = photoLibrary;
            v44 = v15;
            v41 = *v57;
            while (2)
            {
              v20 = 0;
              do
              {
                if (*v57 != v17)
                {
                  objc_enumerationMutation(v15);
                }

                v21 = *(*(&v56 + 1) + 8 * v20);
                if (v5)
                {
                  Current = CFAbsoluteTimeGetCurrent();
                  if (Current - v6 >= 0.01)
                  {
                    v60 = 0;
                    (*(v5 + 2))(v5, &v60, v18);
                    if (v60)
                    {
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                      {
                        *buf = 67109378;
                        v64 = 72;
                        v65 = 2080;
                        v66 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/SharedLibrary/PGSharedLibraryAssetsQuestionFactory.m";
                        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                      }

                      goto LABEL_61;
                    }

                    v6 = Current;
                  }
                }

                v43 = v20;
                context = objc_autoreleasePoolPush();
                v23 = [(PGSharedLibraryAssetsQuestionFactory *)self _assetsFetchResultFromMoment:v21];
                lastObject = [v23 lastObject];
                uuid = [lastObject uuid];

                distantPast = [*(v19 + 2728) distantPast];
                v52 = 0u;
                v53 = 0u;
                v54 = 0u;
                v55 = 0u;
                v27 = v23;
                v28 = [v27 countByEnumeratingWithState:&v52 objects:v61 count:16];
                if (v28)
                {
                  v29 = v28;
                  v30 = *v53;
                  while (2)
                  {
                    for (i = 0; i != v29; ++i)
                    {
                      if (*v53 != v30)
                      {
                        objc_enumerationMutation(v27);
                      }

                      v32 = *(*(&v52 + 1) + 8 * i);
                      creationDate = [v32 creationDate];
                      uuid2 = [v32 uuid];
                      if (([uuid isEqualToString:uuid2] & 1) != 0 || (-[PGSharedLibraryAssetsQuestion timeIntervalSinceDate:](creationDate, "timeIntervalSinceDate:", distantPast), v35 >= 600.0))
                      {
                        v36 = [[PGSharedLibraryAssetsQuestion alloc] initWithAssetUUID:uuid2];
                        if ([(PGSurveyQuestionFactory *)self shouldAddQuestion:v36 toAlreadyGeneratedQuestions:v11])
                        {
                          [v11 addObject:v36];
                          if ([v11 count] >= limit)
                          {

                            objc_autoreleasePoolPop(context);
                            v5 = v47;
                            blockCopy = v48;
                            _eligibleMomentsFetchResult = v45;
                            photoLibrary = v46;
                            v15 = v44;
                            goto LABEL_49;
                          }
                        }

                        distantPast = creationDate;
                      }

                      else
                      {
                        v36 = uuid2;
                        uuid2 = creationDate;
                      }
                    }

                    v29 = [v27 countByEnumeratingWithState:&v52 objects:v61 count:16];
                    if (v29)
                    {
                      continue;
                    }

                    break;
                  }
                }

                objc_autoreleasePoolPop(context);
                v18 = v16 + v18;
                v20 = v43 + 1;
                v5 = v47;
                blockCopy = v48;
                _eligibleMomentsFetchResult = v45;
                photoLibrary = v46;
                v15 = v44;
                v17 = v41;
                v19 = 0x277CBE000;
              }

              while (v43 + 1 != v42);
              v42 = [v44 countByEnumeratingWithState:&v56 objects:v62 count:16];
              if (v42)
              {
                continue;
              }

              break;
            }
          }

LABEL_49:

          if (!v5 || CFAbsoluteTimeGetCurrent() - v6 < 0.01 || (v60 = 0, (*(v5 + 2))(v5, &v60, 1.0), !v60))
          {
            allObjects = [v11 allObjects];
LABEL_62:

            goto LABEL_63;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
LABEL_61:
            allObjects = MEMORY[0x277CBEBF8];
            goto LABEL_62;
          }

          *buf = 67109378;
          v64 = 103;
          v65 = 2080;
          v66 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/SharedLibrary/PGSharedLibraryAssetsQuestionFactory.m";
          v38 = MEMORY[0x277D86220];
        }

        else
        {
          if (!v5)
          {
            goto LABEL_61;
          }

          if (CFAbsoluteTimeGetCurrent() - v6 < 0.01)
          {
            goto LABEL_61;
          }

          v60 = 0;
          (*(v5 + 2))(v5, &v60, 1.0);
          if (!v60 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            goto LABEL_61;
          }

          *buf = 67109378;
          v64 = 64;
          v65 = 2080;
          v66 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/SharedLibrary/PGSharedLibraryAssetsQuestionFactory.m";
          v38 = MEMORY[0x277D86220];
        }

        _os_log_impl(&dword_22F0FC000, v38, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        goto LABEL_61;
      }

      if (!v5 || CFAbsoluteTimeGetCurrent() - v6 < 0.01 || (v60 = 0, (*(v5 + 2))(v5, &v60, 1.0), !v60) || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_47:
        allObjects = MEMORY[0x277CBEBF8];
LABEL_63:

        goto LABEL_64;
      }

      *buf = 67109378;
      v64 = 54;
      v65 = 2080;
      v66 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/SharedLibrary/PGSharedLibraryAssetsQuestionFactory.m";
      v37 = MEMORY[0x277D86220];
    }

    else
    {
      if (!v5)
      {
        goto LABEL_47;
      }

      if (CFAbsoluteTimeGetCurrent() - v6 < 0.01)
      {
        goto LABEL_47;
      }

      v60 = 0;
      (*(v5 + 2))(v5, &v60, 1.0);
      if (!v60 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_47;
      }

      *buf = 67109378;
      v64 = 49;
      v65 = 2080;
      v66 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/SharedLibrary/PGSharedLibraryAssetsQuestionFactory.m";
      v37 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_22F0FC000, v37, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    goto LABEL_47;
  }

  v60 = 0;
  (*(v5 + 2))(v5, &v60, 0.0);
  if (v60 != 1)
  {
    v6 = v7;
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v64 = 45;
    v65 = 2080;
    v66 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/SharedLibrary/PGSharedLibraryAssetsQuestionFactory.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  allObjects = MEMORY[0x277CBEBF8];
LABEL_64:

  return allObjects;
}

@end