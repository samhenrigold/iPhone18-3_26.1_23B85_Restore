@interface PGExternalAssetRelevanceQuestionFactory
- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block;
@end

@implementation PGExternalAssetRelevanceQuestionFactory

- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block
{
  blockCopy = block;
  v7 = [MEMORY[0x277CBEB58] set];
  workingContext = [(PGSurveyQuestionFactory *)self workingContext];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __84__PGExternalAssetRelevanceQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke;
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

void __84__PGExternalAssetRelevanceQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v79 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _Block_copy(*(a1 + 48));
  if (!v4)
  {
    v6 = 0.0;
    if (!*(a1 + 56))
    {
      goto LABEL_48;
    }

    goto LABEL_10;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v6 = 0.0;
  if (Current >= 0.01)
  {
    v7 = Current;
    v69 = 0;
    v4[2](v4, &v69, 0.0);
    if (v69 == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v76 = 37;
        v77 = 2080;
        v78 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/ExternalAssetRelevance/PGExternalAssetRelevanceQuestionFactory.m";
        v8 = MEMORY[0x277D86220];
LABEL_37:
        _os_log_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        goto LABEL_48;
      }

      goto LABEL_48;
    }

    v6 = v7;
  }

  if (*(a1 + 56))
  {
LABEL_10:
    v53 = v3;
    v59 = a1;
    v9 = [*(a1 + 32) workingContext];
    v10 = [v9 photoLibrary];

    v58 = v10;
    v11 = [v10 librarySpecificFetchOptions];
    v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"type == %d", 29];
    [v11 setPredicate:v12];

    v52 = v11;
    v13 = [MEMORY[0x277CD9970] fetchQuestionsWithOptions:v11 validQuestionsOnly:1];
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v15 = v13;
    v16 = [v15 countByEnumeratingWithState:&v65 objects:v74 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v66;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v66 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v65 + 1) + 8 * i) entityIdentifier];
          [v14 addObject:v20];
        }

        v17 = [v15 countByEnumeratingWithState:&v65 objects:v74 count:16];
      }

      while (v17);
    }

    v51 = v15;

    v21 = [v58 librarySpecificFetchOptions];
    v22 = +[PGCurationManager assetPropertySetsForCuration];
    [v21 setFetchPropertySets:v22];

    v23 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (uuid IN %@)", v14];
    v24 = MEMORY[0x277CCA920];
    v25 = [MEMORY[0x277D3C7D0] internalPredicateToIncludeProcessedExternalAssets];
    v73[0] = v25;
    v73[1] = v23;
    v49 = v23;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:2];
    v27 = [v24 andPredicateWithSubpredicates:v26];
    [v21 setInternalPredicate:v27];

    [v21 setFetchLimit:1000];
    v50 = v21;
    [MEMORY[0x277CD97A8] fetchAssetsWithOptions:v21];
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    obj = v64 = 0u;
    v57 = [obj countByEnumeratingWithState:&v61 objects:v72 count:16];
    if (v57)
    {
      v56 = *v62;
      v28 = v59;
      v55 = v4;
      while (2)
      {
        for (j = 0; j != v57; ++j)
        {
          if (*v62 != v56)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v61 + 1) + 8 * j);
          v31 = objc_autoreleasePoolPush();
          v32 = [*(v28 + 40) count];
          if (v4)
          {
            v33 = v32;
            v34 = *(v28 + 56);
            v35 = CFAbsoluteTimeGetCurrent();
            if (v35 - v6 >= 0.01)
            {
              v69 = 0;
              v4[2](v4, &v69, v33 / v34 * 0.9);
              if (v69)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  *buf = 67109378;
                  v76 = 68;
                  v77 = 2080;
                  v78 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/ExternalAssetRelevance/PGExternalAssetRelevanceQuestionFactory.m";
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                }

                objc_autoreleasePoolPop(v31);

                v3 = v53;
                v48 = v51;
                goto LABEL_47;
              }

              v6 = v35;
            }
          }

          context = v31;
          v36 = [v30 mediaAnalysisProperties];
          v37 = [v36 syndicationProcessingValue];

          v38 = [v58 librarySpecificFetchOptions];
          v71 = v30;
          v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v71 count:1];
          v40 = [PGShareBackSuggesterInput universalDateIntervalForSuggesterInputs:v39 withTimeIntervalPadding:7200.0];

          v70 = v30;
          v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v70 count:1];
          v42 = [PGShareBackSuggester momentUUIDsForExtendedUniversalDateInterval:v40 suggesterInputs:v41 momentFetchOptions:v38];

          if ([v42 count])
          {
            v43 = (v37 & 0x3CF1) != 0;
            v44 = [MEMORY[0x277CD98F8] localIdentifiersWithUUIDs:v42];
            v45 = [PGExternalAssetRelevanceQuestion alloc];
            v46 = [v30 uuid];
            v47 = [(PGExternalAssetRelevanceQuestion *)v45 initWithAssetUUID:v46 momentLocalIdentifiers:v44 assetInferredAsRelevant:v43];

            if ([*(v59 + 32) shouldAddQuestion:v47 toAlreadyGeneratedQuestions:*(v59 + 40)])
            {
              [*(v59 + 40) addObject:v47];
              if ([*(v59 + 40) count] >= *(v59 + 56))
              {

                objc_autoreleasePoolPop(context);
                v4 = v55;
                goto LABEL_42;
              }
            }

            v4 = v55;
          }

          objc_autoreleasePoolPop(context);
          v28 = v59;
        }

        v57 = [obj countByEnumeratingWithState:&v61 objects:v72 count:16];
        if (v57)
        {
          continue;
        }

        break;
      }
    }

LABEL_42:

    v3 = v53;
    v48 = v51;
    if (v4)
    {
      if (CFAbsoluteTimeGetCurrent() - v6 >= 0.01)
      {
        v69 = 0;
        v4[2](v4, &v69, 1.0);
        if (v69 == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v76 = 95;
          v77 = 2080;
          v78 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/ExternalAssetRelevance/PGExternalAssetRelevanceQuestionFactory.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }
      }
    }

LABEL_47:

    goto LABEL_48;
  }

  if (CFAbsoluteTimeGetCurrent() - v6 >= 0.01)
  {
    v69 = 0;
    v4[2](v4, &v69, 1.0);
    if (v69)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v76 = 40;
        v77 = 2080;
        v78 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/ExternalAssetRelevance/PGExternalAssetRelevanceQuestionFactory.m";
        v8 = MEMORY[0x277D86220];
        goto LABEL_37;
      }
    }
  }

LABEL_48:
}

@end