@interface PGMemoryMusicEnergyQuestionFactory
- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block;
@end

@implementation PGMemoryMusicEnergyQuestionFactory

- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block
{
  v46 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v7 = _Block_copy(blockCopy);
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  if (v7)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v35[3] >= 0.01)
    {
      v35[3] = Current;
      v33 = 0;
      v7[2](v7, &v33, 0.0);
      v9 = *(v39 + 24) | v33;
      *(v39 + 24) = v9;
      if (v9)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
LABEL_19:
          allObjects = MEMORY[0x277CBEBF8];
          goto LABEL_22;
        }

        *buf = 67109378;
        v43 = 43;
        v44 = 2080;
        v45 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Music/MusicEnergy/PGMemoryMusicEnergyQuestionFactory.m";
        v10 = MEMORY[0x277D86220];
LABEL_11:
        _os_log_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        goto LABEL_19;
      }
    }

    if (!limit)
    {
      v11 = CFAbsoluteTimeGetCurrent();
      if (v11 - v35[3] < 0.01)
      {
        goto LABEL_19;
      }

      v35[3] = v11;
      v33 = 0;
      v7[2](v7, &v33, 1.0);
      v12 = *(v39 + 24) | v33;
      *(v39 + 24) = v12;
      if ((v12 & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_19;
      }

      *buf = 67109378;
      v43 = 47;
      v44 = 2080;
      v45 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Music/MusicEnergy/PGMemoryMusicEnergyQuestionFactory.m";
      v10 = MEMORY[0x277D86220];
      goto LABEL_11;
    }
  }

  else if (!limit)
  {
    goto LABEL_19;
  }

  v13 = [MEMORY[0x277CBEB58] set];
  workingContext = [(PGSurveyQuestionFactory *)self workingContext];
  photoLibrary = [workingContext photoLibrary];
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __79__PGMemoryMusicEnergyQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke;
  v25 = &unk_278880550;
  selfCopy = self;
  v16 = v13;
  v27 = v16;
  limitCopy = limit;
  v17 = v7;
  v28 = v17;
  v29 = &v34;
  v32 = 0x3F847AE147AE147BLL;
  v30 = &v38;
  [PGMemoryMusicQuestionUtils enumerateMemoryMusicSuggestionsInPhotoLibrary:photoLibrary block:&v22];

  if (v7 && (v18 = CFAbsoluteTimeGetCurrent(), v18 - v35[3] >= 0.01) && (v35[3] = v18, v33 = 0, v17[2](v17, &v33, 1.0), v19 = *(v39 + 24) | v33, *(v39 + 24) = v19, (v19 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v43 = 71;
      v44 = 2080;
      v45 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Music/MusicEnergy/PGMemoryMusicEnergyQuestionFactory.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    allObjects = MEMORY[0x277CBEBF8];
  }

  else
  {
    allObjects = [v16 allObjects];
  }

LABEL_22:
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);

  return allObjects;
}

void __79__PGMemoryMusicEnergyQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = objc_autoreleasePoolPush();
  v10 = [[PGMemoryMusicEnergyQuestion alloc] initWithMemory:v7 song:v8 localFactoryScore:1.0];
  if ([*(a1 + 32) shouldAddQuestion:v10 toAlreadyGeneratedQuestions:*(a1 + 40)])
  {
    [*(a1 + 40) addObject:v10];
    if ([*(a1 + 40) count] >= *(a1 + 72))
    {
      *a4 = 1;
    }
  }

  v11 = [*(a1 + 40) count];
  if (*(a1 + 48))
  {
    v12 = v11;
    v13 = *(a1 + 72);
    Current = CFAbsoluteTimeGetCurrent();
    v15 = *(*(a1 + 56) + 8);
    if (Current - *(v15 + 24) >= *(a1 + 80))
    {
      *(v15 + 24) = Current;
      (*(*(a1 + 48) + 16))(v12 / v13);
      *(*(*(a1 + 64) + 8) + 24) = *(*(*(a1 + 64) + 8) + 24);
      if (*(*(*(a1 + 64) + 8) + 24) == 1)
      {
        *a4 = 1;
      }
    }
  }

  objc_autoreleasePoolPop(v9);
}

@end