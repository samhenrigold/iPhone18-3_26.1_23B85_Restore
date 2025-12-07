@interface PGBusinessItemQuestionFactory
- (BOOL)_shouldAddNewBusinessItemQuestionForAssetUUID:(id)d;
- (double)_localBusinessItemFactoryScoreForMomentNode:(id)node;
- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block;
@end

@implementation PGBusinessItemQuestionFactory

- (BOOL)_shouldAddNewBusinessItemQuestionForAssetUUID:(id)d
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

- (double)_localBusinessItemFactoryScoreForMomentNode:(id)node
{
  v13 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  businessNodes = [nodeCopy businessNodes];
  v5 = [businessNodes count];

  if (v5)
  {
    v6 = 1.0 / v5;
    if (v6 == 0.0)
    {
      v7 = +[PGLogging sharedLogging];
      loggingConnection = [v7 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        localIdentifier = [nodeCopy localIdentifier];
        v11 = 138412290;
        v12 = localIdentifier;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Moment node %@ found to have no business nodes which is unexpected.", &v11, 0xCu);
      }
    }
  }

  else
  {
    v6 = 1.0;
  }

  return v6;
}

- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block
{
  blockCopy = block;
  v7 = [MEMORY[0x277CBEB58] set];
  workingContext = [(PGSurveyQuestionFactory *)self workingContext];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __74__PGBusinessItemQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke;
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

void __74__PGBusinessItemQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke(uint64_t a1, void *a2)
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
        v39 = 44;
        v40 = 2080;
        v41 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/BusinessItem/PGBusinessItemQuestionFactory.m";
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
    v21[2] = __74__PGBusinessItemQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_189;
    v21[3] = &unk_27887FC20;
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
    [v10 enumerateBusinessNodesUsingBlock:v21];
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
          v39 = 96;
          v40 = 2080;
          v41 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/BusinessItem/PGBusinessItemQuestionFactory.m";
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
    v4[2](v4, &v29, 1.0);
    v9 = *(v35 + 24) | v29;
    *(v35 + 24) = v9;
    if ((v9 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v39 = 48;
      v40 = 2080;
      v41 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/BusinessItem/PGBusinessItemQuestionFactory.m";
      v7 = MEMORY[0x277D86220];
      goto LABEL_11;
    }
  }

LABEL_19:
  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);
}

void __74__PGBusinessItemQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_189(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [v5 UUID];
  if ([v6 length])
  {
    v7 = [v5 name];
    v8 = [v7 length];

    if (v8)
    {
      v9 = [v5 collection];
      v10 = [v9 momentNodes];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __74__PGBusinessItemQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_191;
      v15[3] = &unk_27888A2A8;
      v15[4] = *(a1 + 32);
      v16 = v5;
      v17 = *(a1 + 40);
      v11 = *(a1 + 48);
      v12 = *(a1 + 80);
      v18 = v11;
      v21 = v12;
      v22 = a3;
      v19 = *(a1 + 56);
      v23 = *(a1 + 88);
      v20 = *(a1 + 64);
      [v10 enumerateNodesUsingBlock:v15];

      if (*(*(*(a1 + 72) + 8) + 24) == 1)
      {
        *a3 = 1;
      }

      goto LABEL_10;
    }
  }

  else
  {
  }

  v13 = +[PGLogging sharedLogging];
  v14 = [v13 loggingConnection];

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_ERROR, "Business node does not have a UUID or name, not generating question for it", buf, 2u);
  }

LABEL_10:
}

void __74__PGBusinessItemQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_191(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  [v5 _localBusinessItemFactoryScoreForMomentNode:v6];
  v8 = v7;
  [*(a1 + 40) coordinates];
  v10 = v9;
  v12 = v11;
  v13 = *(a1 + 32);
  [*(a1 + 40) radius];
  v15 = [v13 assetFromMomentNode:v6 closestToLocationCoordinate:*(a1 + 48) radius:v10 curationContext:{v12, v14}];

  if (v15)
  {
    v16 = *(a1 + 32);
    v17 = [v15 uuid];
    LODWORD(v16) = [v16 _shouldAddNewBusinessItemQuestionForAssetUUID:v17];

    if (!v16)
    {
      goto LABEL_11;
    }

    v18 = [PGBusinessItemQuestion alloc];
    v19 = [v15 uuid];
    v20 = [*(a1 + 40) UUID];
    v21 = [*(a1 + 40) name];
    v22 = [(PGBusinessItemQuestion *)v18 initWithAssetUUID:v19 businessUUID:v20 businessName:v21 localFactoryScore:v8];

    if ([*(a1 + 32) shouldAddQuestion:v22 toAlreadyGeneratedQuestions:*(a1 + 56)])
    {
      [*(a1 + 56) addObject:v22];
      if ([*(a1 + 56) count] >= *(a1 + 88))
      {
        *a3 = 1;
        **(a1 + 96) = 1;

        goto LABEL_11;
      }
    }
  }

  v23 = [*(a1 + 56) count];
  if (*(a1 + 64))
  {
    v24 = v23;
    v25 = *(a1 + 88);
    Current = CFAbsoluteTimeGetCurrent();
    v27 = *(*(a1 + 72) + 8);
    if (Current - *(v27 + 24) >= *(a1 + 104))
    {
      *(v27 + 24) = Current;
      (*(*(a1 + 64) + 16))(v24 / v25);
      *(*(*(a1 + 80) + 8) + 24) = *(*(*(a1 + 80) + 8) + 24);
      if (*(*(*(a1 + 80) + 8) + 24) == 1)
      {
        *a3 = 1;
      }
    }
  }

LABEL_11:
}

@end