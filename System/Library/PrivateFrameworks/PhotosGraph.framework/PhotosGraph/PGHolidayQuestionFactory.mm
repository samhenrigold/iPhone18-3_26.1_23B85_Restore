@interface PGHolidayQuestionFactory
- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block;
@end

@implementation PGHolidayQuestionFactory

- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block
{
  blockCopy = block;
  v7 = [MEMORY[0x277CBEB58] set];
  workingContext = [(PGSurveyQuestionFactory *)self workingContext];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __69__PGHolidayQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke;
  v16 = &unk_27888A2F8;
  v19 = blockCopy;
  limitCopy = limit;
  selfCopy = self;
  v18 = v7;
  v9 = v7;
  v10 = blockCopy;
  [workingContext performSynchronousConcurrentGraphReadUsingBlock:&v13];

  allObjects = [v9 allObjects];

  return allObjects;
}

void __69__PGHolidayQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _Block_copy(*(a1 + 48));
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  if (!v4)
  {
    if (!*(a1 + 56))
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (Current - v31[3] >= 0.01)
  {
    v31[3] = Current;
    v29 = 0;
    v4[2](v4, &v29, 0.0);
    v6 = *(v35 + 24) | v29;
    *(v35 + 24) = v6;
    if (v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v39 = 42;
        v40 = 2080;
        v41 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Holiday/PGHolidayQuestionFactory.m";
        v7 = MEMORY[0x277D86220];
LABEL_11:
        _os_log_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        goto LABEL_19;
      }

      goto LABEL_19;
    }
  }

  if (*(a1 + 56))
  {
LABEL_13:
    v10 = [v3 graph];
    v11 = objc_alloc(MEMORY[0x277D3C790]);
    v12 = [*(a1 + 32) workingContext];
    v13 = [v12 photoLibrary];
    v14 = [v11 initWithPhotoLibrary:v13];

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __69__PGHolidayQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_189;
    v21[3] = &unk_278882F18;
    v21[4] = *(a1 + 32);
    v15 = v14;
    v22 = v15;
    v16 = *(a1 + 40);
    v17 = *(a1 + 56);
    v23 = v16;
    v27 = v17;
    v18 = v4;
    v24 = v18;
    v25 = &v30;
    v28 = 0x3F847AE147AE147BLL;
    v26 = &v34;
    [v10 enumerateCelebratedHolidayNodesUsingBlock:v21];
    if (v4)
    {
      v19 = CFAbsoluteTimeGetCurrent();
      if (v19 - v31[3] >= 0.01)
      {
        v31[3] = v19;
        v29 = 0;
        v18[2](v18, &v29, 1.0);
        v20 = *(v35 + 24) | v29;
        *(v35 + 24) = v20;
        if ((v20 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v39 = 89;
          v40 = 2080;
          v41 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Holiday/PGHolidayQuestionFactory.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }
      }
    }

    goto LABEL_19;
  }

  v8 = CFAbsoluteTimeGetCurrent();
  if (v8 - v31[3] >= 0.01)
  {
    v31[3] = v8;
    v29 = 0;
    v4[2](v4, &v29, 0.0);
    v9 = *(v35 + 24) | v29;
    *(v35 + 24) = v9;
    if ((v9 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v39 = 46;
      v40 = 2080;
      v41 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Holiday/PGHolidayQuestionFactory.m";
      v7 = MEMORY[0x277D86220];
      goto LABEL_11;
    }
  }

LABEL_19:
  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);
}

void __69__PGHolidayQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_189(uint64_t a1, void *a2, _BYTE *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 name];
  if (v6)
  {
    v7 = [v5 localizedName];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __69__PGHolidayQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_191;
    v14[3] = &unk_278882EF0;
    v8 = *(a1 + 40);
    v14[4] = *(a1 + 32);
    v15 = v8;
    v16 = v6;
    v9 = v7;
    v17 = v9;
    v10 = *(a1 + 48);
    v11 = *(a1 + 80);
    v18 = v10;
    v21 = v11;
    v22 = a3;
    v19 = *(a1 + 56);
    v23 = *(a1 + 88);
    v20 = *(a1 + 64);
    [v5 enumerateCelebratingMomentNodesUsingBlock:v14];
    if (*(*(*(a1 + 72) + 8) + 24) == 1)
    {
      *a3 = 1;
    }
  }

  else
  {
    v12 = +[PGLogging sharedLogging];
    v9 = [v12 loggingConnection];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = [v5 UUID];
      *buf = 138412290;
      v25 = v13;
      _os_log_error_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_ERROR, "Holiday node with uuid %@ has nil name, not generating question for it", buf, 0xCu);
    }
  }
}

void __69__PGHolidayQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_191(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) representativeAssetsFromMomentNode:a2 curationContext:*(a1 + 40)];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v22 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [PGHolidayQuestion alloc];
        v12 = [v10 uuid];
        v13 = [(PGHolidayQuestion *)v11 initWithAssetUUID:v12 holidayName:*(a1 + 48) localizedHolidayName:*(a1 + 56) localFactoryScore:1.0];

        if ([*(a1 + 32) shouldAddQuestion:v13 toAlreadyGeneratedQuestions:*(a1 + 64)])
        {
          [*(a1 + 64) addObject:v13];
          if ([*(a1 + 64) count] >= *(a1 + 96))
          {
            *a3 = 1;
            **(a1 + 104) = 1;
LABEL_16:

            goto LABEL_17;
          }
        }

        v14 = [*(a1 + 64) count];
        if (*(a1 + 72))
        {
          v15 = v14;
          v16 = *(a1 + 96);
          Current = CFAbsoluteTimeGetCurrent();
          v18 = *(*(a1 + 80) + 8);
          if (Current - *(v18 + 24) >= *(a1 + 112))
          {
            *(v18 + 24) = Current;
            (*(*(a1 + 72) + 16))(v15 / v16);
            *(*(*(a1 + 88) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24);
            if (*(*(*(a1 + 88) + 8) + 24) == 1)
            {
              *a3 = 1;
              goto LABEL_16;
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:
}

@end