@interface PGCameraLibrarySwitchQuestionFactory
+ (BOOL)isSharedLibraryQuestionsEnabledForPhotoLibrary:(id)library;
+ (id)_libraryScopeFromPhotoLibrary:(id)library;
- (id)_assetsFetchResultFromMoment:(id)moment;
- (id)_momentsForQuestions;
- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block;
@end

@implementation PGCameraLibrarySwitchQuestionFactory

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
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[PGCameraLibrarySwitchQuestionFactory] more than 1 scope configured, using first one: %@", &v14, 0xCu);
    }
  }

  else
  {
    v12 = +[PGLogging sharedLogging];
    loggingConnection = [v12 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGCameraLibrarySwitchQuestionFactory] no active scope", &v14, 2u);
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
  v17[2] = *MEMORY[0x277D85DE8];
  momentCopy = moment;
  workingContext = [(PGSurveyQuestionFactory *)self workingContext];
  photoLibrary = [workingContext photoLibrary];

  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
  v17[0] = v8;
  v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v17[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  [librarySpecificFetchOptions setSortDescriptors:v10];

  v11 = *MEMORY[0x277CD9AB8];
  v16[0] = *MEMORY[0x277CD9A78];
  v16[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  [librarySpecificFetchOptions setFetchPropertySets:v12];

  v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %d || %K== %d", @"additionalAttributes.importedBy", 1, @"additionalAttributes.importedBy", 2];
  [librarySpecificFetchOptions setInternalPredicate:v13];

  [librarySpecificFetchOptions setWantsIncrementalChangeDetails:0];
  v14 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:momentCopy options:librarySpecificFetchOptions];

  return v14;
}

- (id)_momentsForQuestions
{
  v31[1] = *MEMORY[0x277D85DE8];
  workingContext = [(PGSurveyQuestionFactory *)self workingContext];
  photoLibrary = [workingContext photoLibrary];

  v4 = [objc_opt_class() _libraryScopeFromPhotoLibrary:photoLibrary];
  if (v4)
  {
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    [librarySpecificFetchOptions setFetchLimit:1];
    v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
    v31[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
    [librarySpecificFetchOptions setSortDescriptors:v7];

    v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K & %i) != 0", @"libraryScopeShareState", 8];
    [librarySpecificFetchOptions setInternalPredicate:v8];

    v9 = [MEMORY[0x277CD97A8] fetchAssetsInLibraryScope:v4 options:librarySpecificFetchOptions];
    if ([v9 count])
    {
      firstObject = [v9 firstObject];
      creationDate = [firstObject creationDate];

      v12 = +[PGLogging sharedLogging];
      loggingConnection = [v12 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
      {
        localIdentifier = [v4 localIdentifier];
        *buf = 138412546;
        v28 = localIdentifier;
        v29 = 2112;
        v30 = creationDate;
        _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGCameraLibrarySwitchQuestionFactory] getting moments from active scope: %@, first smart share date: %@", buf, 0x16u);
      }

      librarySpecificFetchOptions2 = [photoLibrary librarySpecificFetchOptions];
      v26 = *MEMORY[0x277CD9AA8];
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
      [librarySpecificFetchOptions2 setFetchPropertySets:v16];

      [librarySpecificFetchOptions2 setFetchLimit:100];
      v17 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:0];
      v25[0] = v17;
      v18 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
      v25[1] = v18;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
      [librarySpecificFetchOptions2 setSortDescriptors:v19];

      v20 = [MEMORY[0x277CCAC30] predicateWithFormat:@"endDate >= %@", creationDate];
      [librarySpecificFetchOptions2 setPredicate:v20];

      [librarySpecificFetchOptions2 setWantsIncrementalChangeDetails:0];
      v21 = [MEMORY[0x277CD98F8] fetchMomentsWithOptions:librarySpecificFetchOptions2];
    }

    else
    {
      v22 = +[PGLogging sharedLogging];
      creationDate = [v22 loggingConnection];

      if (os_log_type_enabled(creationDate, OS_LOG_TYPE_INFO))
      {
        localIdentifier2 = [v4 localIdentifier];
        *buf = 138412290;
        v28 = localIdentifier2;
        _os_log_impl(&dword_22F0FC000, creationDate, OS_LOG_TYPE_INFO, "[PGCameraLibrarySwitchQuestionFactory] no smart sharing assets in library scope: %@", buf, 0xCu);
      }

      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block
{
  v111 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v6 = _Block_copy(blockCopy);
  v7 = 0.0;
  if (!v6 || (v8 = CFAbsoluteTimeGetCurrent(), v8 < 0.01))
  {
LABEL_8:
    workingContext = [(PGSurveyQuestionFactory *)self workingContext];
    photoLibrary = [workingContext photoLibrary];

    if ([objc_opt_class() isSharedLibraryQuestionsEnabledForPhotoLibrary:photoLibrary])
    {
      if (limit)
      {
        v12 = [objc_opt_class() _libraryScopeFromPhotoLibrary:photoLibrary];
        v13 = v12;
        if (!v12)
        {
          allObjects = MEMORY[0x277CBEBF8];
LABEL_100:

          goto LABEL_101;
        }

        uuid = [v12 uuid];
        v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
        _momentsForQuestions = [(PGCameraLibrarySwitchQuestionFactory *)self _momentsForQuestions];
        v16 = [_momentsForQuestions count];
        if (v16)
        {
          v17 = v16;
          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
          v18 = _momentsForQuestions;
          v76 = [v18 countByEnumeratingWithState:&v100 objects:v110 count:16];
          if (v76)
          {
            v19 = 1.0 / v17;
            v20 = *v101;
            v21 = 0.0;
            v74 = v6;
            v75 = blockCopy;
            v72 = v13;
            v73 = photoLibrary;
            v82 = v14;
            v70 = v18;
            v71 = _momentsForQuestions;
            selfCopy = self;
            v69 = *v101;
LABEL_14:
            v22 = 0;
LABEL_15:
            if (*v101 != v20)
            {
              v23 = v22;
              objc_enumerationMutation(v18);
              v22 = v23;
            }

            v77 = v22;
            v24 = *(*(&v100 + 1) + 8 * v22);
            if (!v6)
            {
              goto LABEL_21;
            }

            Current = CFAbsoluteTimeGetCurrent();
            if (Current - v7 < 0.01)
            {
              goto LABEL_21;
            }

            v104 = 0;
            v6[2](v6, &v104, v21);
            if (!v104)
            {
              v7 = Current;
LABEL_21:
              context = objc_autoreleasePoolPush();
              v26 = [(PGCameraLibrarySwitchQuestionFactory *)self _assetsFetchResultFromMoment:v24];
              distantPast = [MEMORY[0x277CBEAA8] distantPast];
              v96 = 0u;
              v97 = 0u;
              v98 = 0u;
              v99 = 0u;
              v27 = v26;
              v28 = [(__CFString *)v27 countByEnumeratingWithState:&v96 objects:v109 count:16];
              if (!v28)
              {
                v64 = v27;
                goto LABEL_68;
              }

              v95 = 0;
              v89 = 0;
              v91 = 0;
              v29 = 0;
              v30 = 0;
              v31 = 0;
              v32 = 0;
              v33 = 0;
              v34 = *v97;
              v35 = v28;
              v79 = *v97;
              v80 = v27;
LABEL_23:
              v36 = 0;
              v81 = v35;
              while (1)
              {
                if (*v97 != v34)
                {
                  objc_enumerationMutation(v27);
                }

                v37 = *(*(&v96 + 1) + 8 * v36);
                if (([v37 isCloudPhotoLibraryAsset] & 1) == 0)
                {
                  break;
                }

LABEL_64:
                if (v35 == ++v36)
                {
                  v35 = [(__CFString *)v27 countByEnumeratingWithState:&v96 objects:v109 count:16];
                  if (v35)
                  {
                    goto LABEL_23;
                  }

                  v6 = v74;
                  blockCopy = v75;
                  v13 = v72;
                  photoLibrary = v73;
                  v14 = v82;
                  v18 = v70;
                  _momentsForQuestions = v71;
                  self = selfCopy;
                  v64 = v91;
LABEL_68:

                  objc_autoreleasePoolPop(context);
                  v21 = v19 + v21;
                  v22 = v77 + 1;
                  v20 = v69;
                  if (v77 + 1 == v76)
                  {
                    v65 = [v18 countByEnumeratingWithState:&v100 objects:v110 count:16];
                    v20 = v69;
                    v76 = v65;
                    if (!v65)
                    {
                      goto LABEL_91;
                    }

                    goto LABEL_14;
                  }

                  goto LABEL_15;
                }
              }

              libraryScopeProperties = [v37 libraryScopeProperties];
              suggestedByClientType = [libraryScopeProperties suggestedByClientType];
              v87 = suggestedByClientType == 3;
              assetRejectedByCamera = [libraryScopeProperties assetRejectedByCamera];
              v86 = suggestedByClientType == 2;
              if (suggestedByClientType == -1)
              {
                assetManuallyRejectedByUser = [libraryScopeProperties assetManuallyRejectedByUser];
              }

              else
              {
                assetManuallyRejectedByUser = 0;
                v40 = 0;
                v41 = @"auto on";
                if (suggestedByClientType == 3)
                {
LABEL_41:
                  v88 = v40;
                  v93 = v41;
                  creationDate = [v37 creationDate];
                  [creationDate timeIntervalSinceDate:distantPast];
                  if (v44 >= 180.0 || (v33 & ((suggestedByClientType & 0xFFFE) == 2)) != 0 || (v32 & (assetManuallyRejectedByUser | assetRejectedByCamera) & 1) != 0 || ((v31 | v30) & ((suggestedByClientType == 3) | assetRejectedByCamera) & 1) != 0 || ((v29 ^ v88) & 1) != 0)
                  {
                    v45 = v91;
                    v46 = @"none";
                    if (v91)
                    {
                      v46 = v91;
                    }

                    v47 = v46;
                    v48 = [PGCameraLibrarySwitchQuestion alloc];
                    uuid2 = [v37 uuid];
                    v50 = [(PGCameraLibrarySwitchQuestion *)v48 initWithAssetUUID:uuid2 libraryScopeUUID:uuid previousSwitchState:v47 currentSwitchState:v93];

                    v14 = v82;
                    if ([(PGSurveyQuestionFactory *)selfCopy shouldAddQuestion:v50 toAlreadyGeneratedQuestions:v82])
                    {
                      v51 = +[PGLogging sharedLogging];
                      loggingConnection = [v51 loggingConnection];

                      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
                      {
                        uuid3 = [v37 uuid];
                        *buf = 138412802;
                        *v106 = uuid3;
                        *&v106[8] = 2112;
                        *&v106[10] = v47;
                        v107 = 2112;
                        v108 = v93;
                        _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGCameraLibrarySwitchQuestionFactory] question for asset %@, camera library switch state: %@ -> %@", buf, 0x20u);
                      }

                      [v82 addObject:v50];
                      if ([v82 count] >= limit)
                      {
                        goto LABEL_90;
                      }
                    }

                    if (v95)
                    {
                      v54 = @"none";
                      if (v89)
                      {
                        v54 = v89;
                      }

                      v55 = v54;
                      v56 = [[PGCameraLibrarySwitchQuestion alloc] initWithAssetUUID:v95 libraryScopeUUID:uuid previousSwitchState:v55 currentSwitchState:v47];
                      if ([(PGSurveyQuestionFactory *)selfCopy shouldAddQuestion:v56 toAlreadyGeneratedQuestions:v82])
                      {
                        v57 = +[PGLogging sharedLogging];
                        loggingConnection2 = [v57 loggingConnection];

                        if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
                        {
                          *buf = 138412802;
                          *v106 = v95;
                          *&v106[8] = 2112;
                          *&v106[10] = v55;
                          v107 = 2112;
                          v108 = v47;
                          _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "[PGCameraLibrarySwitchQuestionFactory] question for previous asset %@, camera library switch state: %@ -> %@", buf, 0x20u);
                        }

                        v14 = v82;
                        [v82 addObject:v56];
                        if ([v82 count] >= limit)
                        {

                          v45 = v91;
LABEL_90:

                          objc_autoreleasePoolPop(context);
                          v6 = v74;
                          blockCopy = v75;
                          v13 = v72;
                          photoLibrary = v73;
                          v18 = v70;
                          _momentsForQuestions = v71;
                          goto LABEL_91;
                        }
                      }
                    }
                  }

                  v59 = creationDate;

                  v60 = @"none";
                  if (v91)
                  {
                    v60 = v91;
                  }

                  v61 = v60;

                  v62 = v93;
                  uuid4 = [v37 uuid];

                  v95 = uuid4;
                  v89 = v61;
                  v91 = v62;
                  distantPast = v59;
                  v32 = v87;
                  v29 = v88;
                  v30 = assetManuallyRejectedByUser;
                  v31 = v86;
                  v33 = assetRejectedByCamera;
                  v27 = v80;
                  v35 = v81;
                  v34 = v79;
                  goto LABEL_64;
                }
              }

              if (suggestedByClientType == 2)
              {
                v42 = 1;
              }

              else
              {
                v42 = assetRejectedByCamera;
              }

              v41 = @"user on";
              if (assetRejectedByCamera)
              {
                v41 = @"auto off";
              }

              if (v42)
              {
                v40 = 0;
              }

              else
              {
                v41 = @"default off";
                if (assetManuallyRejectedByUser)
                {
                  v41 = @"user off";
                }

                v40 = assetManuallyRejectedByUser ^ 1;
              }

              goto LABEL_41;
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v106 = 78;
              *&v106[4] = 2080;
              *&v106[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/SharedLibrary/PGCameraLibrarySwitchQuestionFactory.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            goto LABEL_97;
          }

LABEL_91:

          if (!v6 || CFAbsoluteTimeGetCurrent() - v7 < 0.01 || (v104 = 0, v6[2](v6, &v104, 1.0), !v104))
          {
            allObjects = [v14 allObjects];
            goto LABEL_99;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
LABEL_97:
            allObjects = MEMORY[0x277CBEBF8];
LABEL_99:

            goto LABEL_100;
          }

          *buf = 67109378;
          *v106 = 179;
          *&v106[4] = 2080;
          *&v106[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/SharedLibrary/PGCameraLibrarySwitchQuestionFactory.m";
          v67 = MEMORY[0x277D86220];
        }

        else
        {
          if (!v6)
          {
            goto LABEL_97;
          }

          if (CFAbsoluteTimeGetCurrent() - v7 < 0.01)
          {
            goto LABEL_97;
          }

          v104 = 0;
          v6[2](v6, &v104, 1.0);
          if (!v104 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            goto LABEL_97;
          }

          *buf = 67109378;
          *v106 = 69;
          *&v106[4] = 2080;
          *&v106[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/SharedLibrary/PGCameraLibrarySwitchQuestionFactory.m";
          v67 = MEMORY[0x277D86220];
        }

        _os_log_impl(&dword_22F0FC000, v67, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        goto LABEL_97;
      }

      if (!v6 || CFAbsoluteTimeGetCurrent() - v7 < 0.01 || (v104 = 0, v6[2](v6, &v104, 1.0), !v104) || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_82:
        allObjects = MEMORY[0x277CBEBF8];
LABEL_101:

        goto LABEL_102;
      }

      *buf = 67109378;
      *v106 = 54;
      *&v106[4] = 2080;
      *&v106[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/SharedLibrary/PGCameraLibrarySwitchQuestionFactory.m";
      v66 = MEMORY[0x277D86220];
    }

    else
    {
      if (!v6)
      {
        goto LABEL_82;
      }

      if (CFAbsoluteTimeGetCurrent() - v7 < 0.01)
      {
        goto LABEL_82;
      }

      v104 = 0;
      v6[2](v6, &v104, 1.0);
      if (!v104 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_82;
      }

      *buf = 67109378;
      *v106 = 49;
      *&v106[4] = 2080;
      *&v106[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/SharedLibrary/PGCameraLibrarySwitchQuestionFactory.m";
      v66 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_22F0FC000, v66, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    goto LABEL_82;
  }

  v104 = 0;
  v6[2](v6, &v104, 0.0);
  if (v104 != 1)
  {
    v7 = v8;
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v106 = 45;
    *&v106[4] = 2080;
    *&v106[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/SharedLibrary/PGCameraLibrarySwitchQuestionFactory.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  allObjects = MEMORY[0x277CBEBF8];
LABEL_102:

  return allObjects;
}

@end