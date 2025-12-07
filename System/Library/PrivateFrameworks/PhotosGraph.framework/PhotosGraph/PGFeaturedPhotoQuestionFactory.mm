@interface PGFeaturedPhotoQuestionFactory
- (PGFeaturedPhotoQuestionFactory)initWithWorkingContext:(id)context questionVersion:(signed __int16)version;
- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block;
- (id)randomAssetsUUIDsWithLimit:(unint64_t)limit;
@end

@implementation PGFeaturedPhotoQuestionFactory

- (id)randomAssetsUUIDsWithLimit:(unint64_t)limit
{
  v19[1] = *MEMORY[0x277D85DE8];
  workingContext = [(PGSurveyQuestionFactory *)self workingContext];
  photoLibrary = [workingContext photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"kind != %d AND (kindSubtype & %d) == 0 AND curationScore > %f", 1, 1, *MEMORY[0x277D3C778]];
  [librarySpecificFetchOptions setInternalPredicate:v7];

  v19[0] = *MEMORY[0x277CD9AA8];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  [librarySpecificFetchOptions setFetchPropertySets:v8];

  [librarySpecificFetchOptions setChunkSizeForFetch:8];
  [librarySpecificFetchOptions setCacheSizeForFetch:8];
  v9 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:librarySpecificFetchOptions];
  fetchedObjects = [v9 fetchedObjects];

  v11 = [fetchedObjects count];
  v12 = [MEMORY[0x277CBEB58] set];
  v13 = [v12 count];
  if (v11 >= limit)
  {
    limitCopy = limit;
  }

  else
  {
    limitCopy = v11;
  }

  while (v13 < limitCopy)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = [fetchedObjects objectAtIndexedSubscript:arc4random_uniform(v11)];
    uuid = [v16 uuid];
    [v12 addObject:uuid];

    objc_autoreleasePoolPop(v15);
    v13 = [v12 count];
  }

  return v12;
}

- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block
{
  v81 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v72 = 0;
  v73 = &v72;
  v74 = 0x2020000000;
  v75 = 0;
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 0;
  v57 = _Block_copy(blockCopy);
  if (v57)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v69[3] >= 0.01)
    {
      v69[3] = Current;
      v67 = 0;
      v57[2](v57, &v67, 0.0);
      v7 = *(v73 + 24) | v67;
      *(v73 + 24) = v7;
      if (v7)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
LABEL_31:
          allObjects = MEMORY[0x277CBEBF8];
          goto LABEL_61;
        }

        *buf = 67109378;
        v78 = 59;
        v79 = 2080;
        v80 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Featured/PGFeaturedPhotoQuestionFactory.m";
        v8 = MEMORY[0x277D86220];
LABEL_11:
        _os_log_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        goto LABEL_31;
      }
    }

    if (!limit)
    {
      v9 = CFAbsoluteTimeGetCurrent();
      if (v9 - v69[3] < 0.01)
      {
        goto LABEL_31;
      }

      v69[3] = v9;
      v67 = 0;
      v57[2](v57, &v67, 1.0);
      v10 = *(v73 + 24) | v67;
      *(v73 + 24) = v10;
      if ((v10 & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_31;
      }

      *buf = 67109378;
      v78 = 63;
      v79 = 2080;
      v80 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Featured/PGFeaturedPhotoQuestionFactory.m";
      v8 = MEMORY[0x277D86220];
      goto LABEL_11;
    }
  }

  else if (!limit)
  {
    goto LABEL_31;
  }

  limitCopy = limit;
  v11 = [MEMORY[0x277CBEB58] set];
  v12 = objc_alloc_init(PGSuggestionOptions);
  [(PGSuggestionOptions *)v12 setDefaultStartAndEndDatesIfNeeded];
  v52 = v12;
  v54 = [MEMORY[0x277CCAB58] indexSetWithIndex:301];
  [v54 addIndex:303];
  [v54 addIndex:304];
  [v54 addIndex:305];
  [v54 addIndex:401];
  [v54 addIndex:501];
  [v54 addIndex:502];
  v13 = limitCopy;
  v55 = vcvtad_u64_f64(limitCopy * 0.75);
  [(PGSuggestionOptions *)v12 setMaximumNumberOfSuggestions:?];
  v14 = [PGSuggestionSession suggestionTypesWithProfile:5];
  [(PGSuggestionOptions *)v52 setSuggestionTypeWhitelist:v14];

  [(PGSuggestionOptions *)v52 setSuggestionSubtypeWhitelist:v54];
  suggestionSession = self->_suggestionSession;
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __75__PGFeaturedPhotoQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke;
  v62[3] = &unk_27888A188;
  v53 = v57;
  v63 = v53;
  v64 = &v68;
  v65 = &v72;
  v66 = 0x3F847AE147AE147BLL;
  v50 = [(PGSuggestionSession *)suggestionSession suggestionsWithOptions:v52 progress:v62];
  v16 = [MEMORY[0x277CBEB18] arrayWithArray:?];
  v49 = limitCopy - v55;
  while ([v11 count] < v55 && objc_msgSend(v16, "count"))
  {
    v17 = objc_autoreleasePoolPush();
    v18 = arc4random_uniform([v16 count]);
    v19 = [v16 objectAtIndexedSubscript:v18];
    [v16 removeObjectAtIndex:v18];
    keyAssets = [v19 keyAssets];
    if (!keyAssets || ([v19 keyAssets], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "count") == 0, v21, keyAssets, v22))
    {
      v32 = 2;
    }

    else
    {
      v23 = [PGFeaturedPhotoQuestion alloc];
      keyAssets2 = [v19 keyAssets];
      firstObject = [keyAssets2 firstObject];
      uuid = [firstObject uuid];
      v27 = -[PGFeaturedPhotoQuestion initWithAssetUUID:suggestionType:suggestionSubtype:](v23, "initWithAssetUUID:suggestionType:suggestionSubtype:", uuid, [v19 type], objc_msgSend(v19, "subtype"));

      if ([(PGSurveyQuestionFactory *)self shouldAddQuestion:v27 toAlreadyGeneratedQuestions:v11])
      {
        [v11 addObject:v27];
        v28 = [v11 count];
        if (v57 && (v29 = v28, v30 = CFAbsoluteTimeGetCurrent(), v30 - v69[3] >= 0.01) && (v69[3] = v30, v67 = 0, v53[2](v53, &v67, v29 / v13), v31 = *(v73 + 24) | v67, *(v73 + 24) = v31, (v31 & 1) != 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v78 = 107;
            v79 = 2080;
            v80 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Featured/PGFeaturedPhotoQuestionFactory.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v32 = 1;
        }

        else
        {
          v32 = 0;
        }
      }

      else
      {
        v32 = 2;
      }
    }

    objc_autoreleasePoolPop(v17);
    if ((v32 | 2) != 2)
    {
      allObjects = MEMORY[0x277CBEBF8];
      goto LABEL_60;
    }
  }

  [(PGFeaturedPhotoQuestionFactory *)self randomAssetsUUIDsWithLimit:v49];
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v34 = v59 = 0u;
  v35 = [v34 countByEnumeratingWithState:&v58 objects:v76 count:16];
  if (v35)
  {
    v36 = *v59;
LABEL_34:
    v37 = 0;
    while (1)
    {
      if (*v59 != v36)
      {
        objc_enumerationMutation(v34);
      }

      v38 = *(*(&v58 + 1) + 8 * v37);
      v39 = objc_autoreleasePoolPush();
      v40 = [[PGFeaturedPhotoQuestion alloc] initWithAssetUUID:v38 suggestionType:0 suggestionSubtype:0];
      if ([(PGSurveyQuestionFactory *)self shouldAddQuestion:v40 toAlreadyGeneratedQuestions:v11])
      {
        [v11 addObject:v40];
        v41 = [v11 count];
        if (v57 && (v42 = v41, v43 = CFAbsoluteTimeGetCurrent(), v43 - v69[3] >= 0.01) && (v69[3] = v43, v67 = 0, v53[2](v53, &v67, v42 / v13), v44 = *(v73 + 24) | v67, *(v73 + 24) = v44, (v44 & 1) != 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v78 = 121;
            v79 = 2080;
            v80 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Featured/PGFeaturedPhotoQuestionFactory.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v45 = 1;
        }

        else
        {
          v45 = 4 * ([v11 count] >= limitCopy);
        }
      }

      else
      {
        v45 = 5;
      }

      objc_autoreleasePoolPop(v39);
      if (v45 != 5)
      {
        if (v45)
        {
          break;
        }
      }

      if (v35 == ++v37)
      {
        v35 = [v34 countByEnumeratingWithState:&v58 objects:v76 count:16];
        if (v35)
        {
          goto LABEL_34;
        }

        goto LABEL_50;
      }
    }

    if (v45 != 4)
    {
      goto LABEL_57;
    }
  }

  else
  {
LABEL_50:
  }

  if (v57 && (v46 = CFAbsoluteTimeGetCurrent(), v46 - v69[3] >= 0.01) && (v69[3] = v46, v67 = 0, v53[2](v53, &v67, 1.0), v47 = *(v73 + 24) | v67, *(v73 + 24) = v47, (v47 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v78 = 129;
      v79 = 2080;
      v80 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Featured/PGFeaturedPhotoQuestionFactory.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

LABEL_57:
    allObjects = MEMORY[0x277CBEBF8];
  }

  else
  {
    allObjects = [v11 allObjects];
  }

LABEL_60:
LABEL_61:
  _Block_object_dispose(&v68, 8);
  _Block_object_dispose(&v72, 8);

  return allObjects;
}

void __75__PGFeaturedPhotoQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (PGFeaturedPhotoQuestionFactory)initWithWorkingContext:(id)context questionVersion:(signed __int16)version
{
  versionCopy = version;
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = PGFeaturedPhotoQuestionFactory;
  v7 = [(PGSurveyQuestionFactory *)&v11 initWithWorkingContext:contextCopy questionVersion:versionCopy];
  if (v7)
  {
    v8 = [[PGSuggestionSession alloc] initWithProfile:5 workingContext:contextCopy];
    suggestionSession = v7->_suggestionSession;
    v7->_suggestionSession = v8;
  }

  return v7;
}

@end