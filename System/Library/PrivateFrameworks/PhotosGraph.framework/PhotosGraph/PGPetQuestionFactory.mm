@interface PGPetQuestionFactory
- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block;
- (id)initialPetQuestion;
- (void)updateInitialQuestion:(id)question;
@end

@implementation PGPetQuestionFactory

- (void)updateInitialQuestion:(id)question
{
  v16 = *MEMORY[0x277D85DE8];
  questionCopy = question;
  workingContext = [(PGSurveyQuestionFactory *)self workingContext];
  photoLibrary = [workingContext photoLibrary];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __46__PGPetQuestionFactory_updateInitialQuestion___block_invoke;
  v12[3] = &unk_27888A660;
  v7 = questionCopy;
  v13 = v7;
  v11 = 0;
  [photoLibrary performChangesAndWait:v12 error:&v11];
  v8 = v11;

  if (v8)
  {
    v9 = +[PGLogging sharedLogging];
    loggingConnection = [v9 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v8;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[Questions] Error performing library changes for pet inital question: %@", buf, 0xCu);
    }
  }
}

void __46__PGPetQuestionFactory_updateInitialQuestion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CD9978] changeRequestForQuestion:*(a1 + 32)];
  [v2 setState:0];
  v1 = [MEMORY[0x277CBEAA8] date];
  [v2 setCreationDate:v1];
}

- (id)initialPetQuestion
{
  workingContext = [(PGSurveyQuestionFactory *)self workingContext];
  photoLibrary = [workingContext photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setFetchLimit:1];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"type = %d AND entityType = %d AND entityIdentifier = %@", 13, 4, @"PET_INITIAL_QUESTION_FAKE_ASSET"];
  [librarySpecificFetchOptions setPredicate:v5];

  v6 = [MEMORY[0x277CD9970] fetchQuestionsWithOptions:librarySpecificFetchOptions validQuestionsOnly:0];
  firstObject = [v6 firstObject];

  return firstObject;
}

- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block
{
  v44 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v7 = _Block_copy(blockCopy);
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  if (v7)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v33[3] >= 0.01)
    {
      v33[3] = Current;
      v31 = 0;
      v7[2](v7, &v31, 0.0);
      v9 = *(v37 + 24) | v31;
      *(v37 + 24) = v9;
      if (v9)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
LABEL_19:
          allObjects = MEMORY[0x277CBEBF8];
          goto LABEL_22;
        }

        *buf = 67109378;
        v41 = 48;
        v42 = 2080;
        v43 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Pet/PGPetQuestionFactory.m";
        v10 = MEMORY[0x277D86220];
LABEL_11:
        _os_log_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        goto LABEL_19;
      }
    }

    if (!limit)
    {
      v11 = CFAbsoluteTimeGetCurrent();
      if (v11 - v33[3] < 0.01)
      {
        goto LABEL_19;
      }

      v33[3] = v11;
      v31 = 0;
      v7[2](v7, &v31, 1.0);
      v12 = *(v37 + 24) | v31;
      *(v37 + 24) = v12;
      if ((v12 & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_19;
      }

      *buf = 67109378;
      v41 = 52;
      v42 = 2080;
      v43 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Pet/PGPetQuestionFactory.m";
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
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __65__PGPetQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke;
  v23[3] = &unk_278880418;
  v23[4] = self;
  v16 = v13;
  v24 = v16;
  v17 = photoLibrary;
  v25 = v17;
  limitCopy = limit;
  v18 = v7;
  v26 = v18;
  v27 = &v32;
  v30 = 0x3F847AE147AE147BLL;
  v28 = &v36;
  [workingContext performSynchronousConcurrentGraphReadUsingBlock:v23];
  if (v7 && (v19 = CFAbsoluteTimeGetCurrent(), v19 - v33[3] >= 0.01) && (v33[3] = v19, v31 = 0, v18[2](v18, &v31, 1.0), v20 = *(v37 + 24) | v31, *(v37 + 24) = v20, (v20 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v41 = 114;
      v42 = 2080;
      v43 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Pet/PGPetQuestionFactory.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    allObjects = MEMORY[0x277CBEBF8];
  }

  else
  {
    allObjects = [v16 allObjects];
  }

LABEL_22:
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);

  return allObjects;
}

void __65__PGPetQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) initialPetQuestion];
  v5 = v4;
  if (v4)
  {
    if ([v4 state])
    {
      if ([v5 state] == 3 || objc_msgSend(v5, "state") == 1)
      {
        v6 = [v5 creationDate];
        [v6 timeIntervalSinceNow];
        v8 = v7;

        if (v8 < -15778800.0)
        {
          [*(a1 + 32) updateInitialQuestion:v5];
        }
      }

      else
      {
        v10 = [v3 graph];
        v11 = [(PGGraphNodeCollection *)PGGraphPetNodeCollection nodesInGraph:v10];

        v30 = v11;
        v12 = [v11 localIdentifiers];
        v13 = [v12 allObjects];

        v14 = [*(a1 + 48) librarySpecificFetchOptions];
        v15 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"faceCount" ascending:0];
        v31[0] = v15;
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
        [v14 setSortDescriptors:v16];

        [v14 setIncludedDetectionTypes:&unk_2844856A0];
        [v14 setPersonContext:1];
        v29 = v14;
        v17 = [MEMORY[0x277CD9938] fetchPersonsWithLocalIdentifiers:v13 options:v14];
        if ([v17 count])
        {
          v18 = 0;
          while (1)
          {
            v19 = objc_autoreleasePoolPush();
            v20 = [v17 objectAtIndexedSubscript:v18];
            v21 = [PGPetQuestion alloc];
            v22 = [v20 uuid];
            v23 = [(PGPetQuestion *)v21 initWithPetUUID:v22 displayString:0 localFactoryScore:1.0];

            if ([*(a1 + 32) shouldAddQuestion:v23 toAlreadyGeneratedQuestions:*(a1 + 40)])
            {
              [*(a1 + 40) addObject:v23];
              v24 = [*(a1 + 40) count];
              if (*(a1 + 56))
              {
                v25 = v24;
                v26 = *(a1 + 80);
                Current = CFAbsoluteTimeGetCurrent();
                v28 = *(*(a1 + 64) + 8);
                if (Current - *(v28 + 24) >= *(a1 + 88))
                {
                  *(v28 + 24) = Current;
                  (*(*(a1 + 56) + 16))(v25 / v26);
                  *(*(*(a1 + 72) + 8) + 24) = *(*(*(a1 + 72) + 8) + 24);
                  if (*(*(*(a1 + 72) + 8) + 24))
                  {
                    break;
                  }
                }
              }

              if ([*(a1 + 40) count] >= *(a1 + 80))
              {
                break;
              }
            }

            objc_autoreleasePoolPop(v19);
            if (++v18 >= [v17 count])
            {
              goto LABEL_18;
            }
          }

          objc_autoreleasePoolPop(v19);
        }

LABEL_18:
      }
    }
  }

  else
  {
    v9 = [[PGPetQuestion alloc] initWithPetUUID:@"PET_INITIAL_QUESTION_FAKE_ASSET" displayString:@"🐶 🐱" localFactoryScore:1.0];
    [*(a1 + 40) addObject:v9];
  }
}

@end