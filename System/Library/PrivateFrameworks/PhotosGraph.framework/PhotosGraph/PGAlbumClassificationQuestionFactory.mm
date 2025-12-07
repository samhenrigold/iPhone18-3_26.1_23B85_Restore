@interface PGAlbumClassificationQuestionFactory
- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block;
@end

@implementation PGAlbumClassificationQuestionFactory

- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block
{
  v40 = *MEMORY[0x277D85DE8];
  v29 = _Block_copy(block);
  if (v29)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = 0.0;
    if (Current >= 0.01)
    {
      v8 = Current;
      v34 = 0;
      v29[2](v29, &v34, 0.0);
      if (v34 == 1)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
LABEL_36:
          allObjects = MEMORY[0x277CBEBF8];
          goto LABEL_42;
        }

        *buf = 67109378;
        v37 = 33;
        v38 = 2080;
        v39 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/AlbumClassification/PGAlbumClassificationQuestionFactory.m";
        v9 = MEMORY[0x277D86220];
LABEL_35:
        _os_log_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        goto LABEL_36;
      }

      v7 = v8;
    }

    if (!limit)
    {
      if (CFAbsoluteTimeGetCurrent() - v7 < 0.01)
      {
        goto LABEL_36;
      }

      v34 = 0;
      v29[2](v29, &v34, 1.0);
      if (!v34 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_36;
      }

      *buf = 67109378;
      v37 = 36;
      v38 = 2080;
      v39 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/AlbumClassification/PGAlbumClassificationQuestionFactory.m";
      v9 = MEMORY[0x277D86220];
      goto LABEL_35;
    }
  }

  else
  {
    v7 = 0.0;
    if (!limit)
    {
      goto LABEL_36;
    }
  }

  v10 = [MEMORY[0x277CBEB58] set];
  workingContext = [(PGSurveyQuestionFactory *)self workingContext];
  photoLibrary = [workingContext photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"estimatedAssetCount > 0"];
  [librarySpecificFetchOptions setPredicate:v14];

  [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:1 subtype:2 options:librarySpecificFetchOptions];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v33 = 0u;
  v15 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v31;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v31 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v30 + 1) + 8 * i);
        v20 = [PGAlbumClassificationQuestion alloc];
        uuid = [v19 uuid];
        v22 = [(PGAlbumClassificationQuestion *)v20 initWithAlbumUUID:uuid localFactoryScore:1.0];

        if ([(PGSurveyQuestionFactory *)self shouldAddQuestion:v22 toAlreadyGeneratedQuestions:v10])
        {
          [v10 addObject:v22];
          v23 = [v10 count];
          if (v29)
          {
            v24 = v23;
            v25 = CFAbsoluteTimeGetCurrent();
            if (v25 - v7 >= 0.01)
            {
              v34 = 0;
              v29[2](v29, &v34, (v24 / limit));
              if (v34)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  *buf = 67109378;
                  v37 = 50;
                  v38 = 2080;
                  v39 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/AlbumClassification/PGAlbumClassificationQuestionFactory.m";
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                }

                goto LABEL_40;
              }

              v7 = v25;
            }
          }

          if ([v10 count] >= limit)
          {

            goto LABEL_25;
          }
        }
      }

      v16 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

LABEL_25:

  if (v29 && CFAbsoluteTimeGetCurrent() - v7 >= 0.01 && (v34 = 0, v29[2](v29, &v34, 1.0), v34))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v37 = 57;
      v38 = 2080;
      v39 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/AlbumClassification/PGAlbumClassificationQuestionFactory.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

LABEL_40:
    allObjects = MEMORY[0x277CBEBF8];
  }

  else
  {
    allObjects = [v10 allObjects];
  }

LABEL_42:

  return allObjects;
}

@end