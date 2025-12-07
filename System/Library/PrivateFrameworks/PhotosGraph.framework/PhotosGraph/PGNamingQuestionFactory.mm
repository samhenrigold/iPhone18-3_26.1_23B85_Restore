@interface PGNamingQuestionFactory
- (BOOL)_persistQuestions:(id)questions questionsToRemove:(id)remove;
- (BOOL)_shouldAddNewNamingQuestionForPersonUUID:(id)d;
- (PHFetchResult)persons;
- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block;
@end

@implementation PGNamingQuestionFactory

- (BOOL)_persistQuestions:(id)questions questionsToRemove:(id)remove
{
  v26 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  removeCopy = remove;
  if ([questionsCopy count] || objc_msgSend(removeCopy, "count"))
  {
    workingContext = [(PGSurveyQuestionFactory *)self workingContext];
    photoLibrary = [workingContext photoLibrary];

    date = [MEMORY[0x277CBEAA8] date];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __63__PGNamingQuestionFactory__persistQuestions_questionsToRemove___block_invoke;
    v19[3] = &unk_278889470;
    v20 = removeCopy;
    v21 = questionsCopy;
    v11 = date;
    v22 = v11;
    selfCopy = self;
    v18 = 0;
    v12 = [photoLibrary performChangesAndWait:v19 error:&v18];
    v13 = v18;
    v14 = +[PGLogging sharedLogging];
    loggingConnection = [v14 loggingConnection];

    if (v12)
    {
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[Questions] Succeeded persisting naming questions", buf, 2u);
      }
    }

    else if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      v17 = [v13 description];
      *buf = 138412290;
      v25 = v17;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[Questions] Error performing library changes for naming questions: %@", buf, 0xCu);
    }
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

void __63__PGNamingQuestionFactory__persistQuestions_questionsToRemove___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CD9978] deleteQuestions:*(a1 + 32)];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) persistWithCreationDate:*(a1 + 48) questionVersion:{objc_msgSend(*(a1 + 56), "questionVersion", v7)}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (BOOL)_shouldAddNewNamingQuestionForPersonUUID:(id)d
{
  v15 = *MEMORY[0x277D85DE8];
  [(PGSurveyQuestionFactory *)self existingQuestionsForEntityIdentifier:d];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v10 + 1) + 8 * i) state] == 2)
        {
          v8 = 0;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_11:

  return v8;
}

- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block
{
  blockCopy = block;
  v7 = [MEMORY[0x277CBEB58] set];
  workingContext = [(PGSurveyQuestionFactory *)self workingContext];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __68__PGNamingQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke;
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

void __68__PGNamingQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v78 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _Block_copy(*(a1 + 48));
  if (!v4)
  {
    v6 = 0.0;
    if (!*(a1 + 56))
    {
      goto LABEL_51;
    }

    goto LABEL_10;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v6 = 0.0;
  if (Current >= 0.01)
  {
    v7 = Current;
    v71 = 0;
    v4[2](v4, &v71, 0.0);
    if (v71 == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v75 = 60;
        v76 = 2080;
        v77 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Deprecated/Naming/PGNamingQuestionFactory.m";
        v8 = MEMORY[0x277D86220];
LABEL_42:
        _os_log_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        goto LABEL_51;
      }

      goto LABEL_51;
    }

    v6 = v7;
  }

  if (*(a1 + 56))
  {
LABEL_10:
    v54 = v4;
    v51 = v3;
    v9 = [v3 graph];
    v10 = [*(a1 + 32) persons];
    v11 = [MEMORY[0x277CBEB38] dictionary];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v67 objects:v73 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v68;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v68 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v67 + 1) + 8 * i);
          v18 = [v17 localIdentifier];
          [v11 setObject:v17 forKeyedSubscript:v18];
        }

        v14 = [v12 countByEnumeratingWithState:&v67 objects:v73 count:16];
      }

      while (v14);
    }

    v53 = [MEMORY[0x277CBEB58] set];
    v52 = [MEMORY[0x277CBEB58] set];
    v19 = MEMORY[0x277CBEB98];
    v20 = [v11 allKeys];
    v50 = v9;
    v21 = [v9 personNodesForPersonLocalIdentifiers:v20];
    v22 = [v19 setWithArray:v21];

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    obj = v22;
    v57 = [obj countByEnumeratingWithState:&v63 objects:v72 count:16];
    if (v57)
    {
      v56 = *v64;
      v4 = v54;
      while (2)
      {
        for (j = 0; j != v57; ++j)
        {
          if (*v64 != v56)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v63 + 1) + 8 * j);
          v25 = [*(a1 + 40) count];
          if (v4)
          {
            v26 = v25;
            v27 = *(a1 + 56);
            v28 = CFAbsoluteTimeGetCurrent();
            if (v28 - v6 >= 0.01)
            {
              v71 = 0;
              v4[2](v4, &v71, v26 / v27);
              if (v71)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  *buf = 67109378;
                  v75 = 87;
                  v76 = 2080;
                  v77 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Deprecated/Naming/PGNamingQuestionFactory.m";
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                }

                v49 = v50;
                v3 = v51;
                goto LABEL_50;
              }

              v6 = v28;
            }
          }

          v29 = [v24 localIdentifier];
          v30 = [v11 objectForKeyedSubscript:v29];
          v31 = v30;
          if (v30)
          {
            v32 = *(a1 + 32);
            v33 = [v30 uuid];
            LODWORD(v32) = [v32 _shouldAddNewNamingQuestionForPersonUUID:v33];

            if (v32)
            {
              v34 = [v24 contactIdentifier];
              if ([v34 length])
              {
                v35 = [PGNamingQuestion alloc];
                v36 = [*(a1 + 32) workingContext];
                v37 = [v36 serviceManager];
                v38 = [(PGNamingQuestion *)v35 initWithConfirmedPerson:v31 contactIdentifier:v34 localFactoryScore:v37 serviceManager:1.0];

                [v52 addObject:v38];
                v39 = *(a1 + 32);
                v40 = [v31 uuid];
                v41 = [v39 existingQuestionsForEntityIdentifier:v40];
                [v53 addObjectsFromArray:v41];
              }

              else
              {
                v58[0] = MEMORY[0x277D85DD0];
                v58[1] = 3221225472;
                v58[2] = __68__PGNamingQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_192;
                v58[3] = &unk_27887F300;
                v42 = v31;
                v43 = *(a1 + 32);
                v44 = *(a1 + 40);
                v59 = v42;
                v60 = v43;
                v45 = v44;
                v46 = *(a1 + 56);
                v61 = v45;
                v62 = v46;
                [v24 enumerateContactSuggestionsSortedByConfidenceMatchingQuery:1 usingBlock:v58];
                v47 = [*(a1 + 40) count];
                v48 = *(a1 + 56);

                if (v47 >= v48)
                {

                  goto LABEL_44;
                }
              }

              v4 = v54;
            }
          }
        }

        v57 = [obj countByEnumeratingWithState:&v63 objects:v72 count:16];
        if (v57)
        {
          continue;
        }

        break;
      }
    }

    else
    {
LABEL_44:
      v4 = v54;
    }

    [*(a1 + 32) _persistQuestions:v52 questionsToRemove:v53];
    v49 = v50;
    v3 = v51;
    if (v4)
    {
      if (CFAbsoluteTimeGetCurrent() - v6 >= 0.01)
      {
        v71 = 0;
        v4[2](v4, &v71, 1.0);
        if (v71)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v75 = 133;
            v76 = 2080;
            v77 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Deprecated/Naming/PGNamingQuestionFactory.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }
    }

LABEL_50:

    goto LABEL_51;
  }

  if (CFAbsoluteTimeGetCurrent() - v6 >= 0.01)
  {
    v71 = 0;
    v4[2](v4, &v71, 1.0);
    if (v71)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v75 = 64;
        v76 = 2080;
        v77 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Deprecated/Naming/PGNamingQuestionFactory.m";
        v8 = MEMORY[0x277D86220];
        goto LABEL_42;
      }
    }
  }

LABEL_51:
}

void __68__PGNamingQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_192(uint64_t a1, void *a2, void *a3, uint64_t a4, _BYTE *a5)
{
  v16 = a3;
  v8 = [a2 contactIdentifier];
  if ([v8 length])
  {
    v9 = [PGNamingQuestion alloc];
    v10 = *(a1 + 32);
    [v16 confidence];
    v12 = v11;
    v13 = [*(a1 + 40) workingContext];
    v14 = [v13 serviceManager];
    v15 = [(PGNamingQuestion *)v9 initWithPerson:v10 contactIdentifier:v8 localFactoryScore:v14 serviceManager:v12];

    if ([*(a1 + 40) shouldAddQuestion:v15 toAlreadyGeneratedQuestions:*(a1 + 48)])
    {
      [*(a1 + 48) addObject:v15];
      if ([*(a1 + 48) count] >= *(a1 + 56))
      {
        *a5 = 1;
      }
    }
  }
}

- (PHFetchResult)persons
{
  persons = self->_persons;
  if (!persons)
  {
    workingContext = [(PGSurveyQuestionFactory *)self workingContext];
    photoLibrary = [workingContext photoLibrary];
    v6 = [PGPeopleQuestionFactoryUtils personsWithPeopleHomeContextForPhotoLibrary:photoLibrary];
    v7 = self->_persons;
    self->_persons = v6;

    persons = self->_persons;
  }

  return persons;
}

@end