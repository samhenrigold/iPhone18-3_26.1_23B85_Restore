@interface PGRelationshipQuestionFactory
+ (id)displayStringForRelationshipLabel:(id)label;
+ (id)initialQuestionRelationshipLabelByRelationship;
+ (id)localFactoryScoreByRelationshipLabels;
+ (id)relationshipLabelsRequiringInitialQuestion;
+ (id)relationshipTypesByRelationshipLabel;
+ (unint64_t)relationshipTagForRelatationshipType:(unint64_t)type;
- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block;
- (id)initialQuestionForRelationshipLabel:(id)label;
- (void)updateInitialQuestion:(id)question;
- (void)updateOutdatedAnsweredYesChildRelationshipQuestionsIfNeeded;
@end

@implementation PGRelationshipQuestionFactory

+ (id)displayStringForRelationshipLabel:(id)label
{
  labelCopy = label;
  if ([labelCopy isEqualToString:@"CHILD"])
  {
    v4 = @"👶";
  }

  else if ([labelCopy isEqualToString:@"SIBLING"])
  {
    v4 = @"👧 👦";
  }

  else
  {
    v4 = &stru_2843F5C58;
  }

  return v4;
}

+ (id)relationshipLabelsRequiringInitialQuestion
{
  v6[6] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6[0] = @"CHILD";
  v6[1] = @"DAUGHTER";
  v6[2] = @"SON";
  v6[3] = @"SIBLING";
  v6[4] = @"SISTER";
  v6[5] = @"BROTHER";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:6];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (unint64_t)relationshipTagForRelatationshipType:(unint64_t)type
{
  if (type > 0x11)
  {
    return 10;
  }

  else
  {
    return qword_22F78CD80[type];
  }
}

+ (id)localFactoryScoreByRelationshipLabels
{
  v44[13] = *MEMORY[0x277D85DE8];
  v41[0] = &unk_2844847B8;
  v41[1] = &unk_2844847D0;
  v42[0] = &unk_2844871D8;
  v42[1] = &unk_2844871E8;
  v43[0] = @"PARTNER";
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];
  v44[0] = v16;
  v43[1] = @"FAMILY";
  v39[0] = &unk_2844847B8;
  v39[1] = &unk_2844847D0;
  v40[0] = &unk_2844871F8;
  v40[1] = &unk_284487208;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
  v44[1] = v15;
  v43[2] = @"CHILD";
  v37[0] = &unk_2844847B8;
  v37[1] = &unk_2844847D0;
  v38[0] = &unk_2844871E8;
  v38[1] = &unk_284487218;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
  v44[2] = v14;
  v43[3] = @"SON";
  v35[0] = &unk_2844847B8;
  v35[1] = &unk_2844847D0;
  v36[0] = &unk_284487218;
  v36[1] = &unk_284487228;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
  v44[3] = v13;
  v43[4] = @"DAUGHTER";
  v33[0] = &unk_2844847B8;
  v33[1] = &unk_2844847D0;
  v34[0] = &unk_284487218;
  v34[1] = &unk_284487228;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
  v44[4] = v12;
  v43[5] = @"FRIEND";
  v31[0] = &unk_2844847B8;
  v31[1] = &unk_2844847D0;
  v32[0] = &unk_284487238;
  v32[1] = &unk_284487248;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
  v44[5] = v11;
  v43[6] = @"PARENT";
  v29[0] = &unk_2844847B8;
  v29[1] = &unk_2844847D0;
  v30[0] = &unk_284487258;
  v30[1] = &unk_284487248;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
  v44[6] = v2;
  v43[7] = @"FATHER";
  v27[0] = &unk_2844847B8;
  v27[1] = &unk_2844847D0;
  v28[0] = &unk_284487268;
  v28[1] = &unk_284487268;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
  v44[7] = v3;
  v43[8] = @"MOTHER";
  v25[0] = &unk_2844847B8;
  v25[1] = &unk_2844847D0;
  v26[0] = &unk_284487268;
  v26[1] = &unk_284487268;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
  v44[8] = v4;
  v43[9] = @"SIBLING";
  v23[0] = &unk_2844847B8;
  v23[1] = &unk_2844847D0;
  v24[0] = &unk_284487278;
  v24[1] = &unk_284487288;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v44[9] = v5;
  v43[10] = @"BROTHER";
  v21[0] = &unk_2844847B8;
  v21[1] = &unk_2844847D0;
  v22[0] = &unk_284487298;
  v22[1] = &unk_2844872A8;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v44[10] = v6;
  v43[11] = @"SISTER";
  v19[0] = &unk_2844847B8;
  v19[1] = &unk_2844847D0;
  v20[0] = &unk_284487298;
  v20[1] = &unk_2844872A8;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v44[11] = v7;
  v43[12] = @"COWORKER";
  v17[0] = &unk_2844847B8;
  v17[1] = &unk_2844847D0;
  v18[0] = &unk_2844872B8;
  v18[1] = &unk_2844872C8;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v44[12] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:13];

  return v9;
}

+ (id)relationshipTypesByRelationshipLabel
{
  v5[13] = *MEMORY[0x277D85DE8];
  v4[0] = @"FAMILY";
  v4[1] = @"PARENT";
  v5[0] = &unk_284486720;
  v5[1] = &unk_284486738;
  v4[2] = @"FATHER";
  v4[3] = @"MOTHER";
  v5[2] = &unk_284486750;
  v5[3] = &unk_284486768;
  v4[4] = @"CHILD";
  v4[5] = @"SON";
  v5[4] = &unk_284486780;
  v5[5] = &unk_284486798;
  v4[6] = @"DAUGHTER";
  v4[7] = @"FRIEND";
  v5[6] = &unk_2844867B0;
  v5[7] = &unk_2844867C8;
  v4[8] = @"COWORKER";
  v4[9] = @"PARTNER";
  v5[8] = &unk_2844867E0;
  v5[9] = &unk_2844867F8;
  v4[10] = @"SIBLING";
  v4[11] = @"SISTER";
  v5[10] = &unk_284486810;
  v5[11] = &unk_284486828;
  v4[12] = @"BROTHER";
  v5[12] = &unk_284486840;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:13];

  return v2;
}

+ (id)initialQuestionRelationshipLabelByRelationship
{
  v5[6] = *MEMORY[0x277D85DE8];
  v4[0] = @"SIBLING";
  v4[1] = @"SISTER";
  v5[0] = @"SIBLING";
  v5[1] = @"SIBLING";
  v4[2] = @"BROTHER";
  v4[3] = @"SON";
  v5[2] = @"SIBLING";
  v5[3] = @"CHILD";
  v4[4] = @"DAUGHTER";
  v4[5] = @"CHILD";
  v5[4] = @"CHILD";
  v5[5] = @"CHILD";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:6];

  return v2;
}

- (void)updateOutdatedAnsweredYesChildRelationshipQuestionsIfNeeded
{
  v46[3] = *MEMORY[0x277D85DE8];
  workingContext = [(PGSurveyQuestionFactory *)self workingContext];
  photoLibrary = [workingContext photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %d", @"type", 5];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %d", @"entityType", 1];
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %d", @"state", 2];
  v8 = MEMORY[0x277CCA920];
  v29 = v7;
  v30 = v6;
  v46[0] = v7;
  v46[1] = v6;
  v31 = v5;
  v46[2] = v5;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:3];
  v10 = [v8 andPredicateWithSubpredicates:v9];
  [librarySpecificFetchOptions setPredicate:v10];

  v32 = librarySpecificFetchOptions;
  v11 = [MEMORY[0x277CD9970] fetchQuestionsWithOptions:librarySpecificFetchOptions validQuestionsOnly:0];
  v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v11;
  v12 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v40;
    v15 = *MEMORY[0x277D3C9B0];
    v34 = *MEMORY[0x277D3C8B8];
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v40 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v39 + 1) + 8 * i);
        v18 = objc_autoreleasePoolPush();
        additionalInfo = [v17 additionalInfo];
        v20 = [additionalInfo objectForKeyedSubscript:v15];
        if ([v20 isEqualToString:@"CHILD"])
        {
          v21 = [additionalInfo objectForKeyedSubscript:v34];

          if (!v21)
          {
            [v33 addObject:v17];
          }
        }

        objc_autoreleasePoolPop(v18);
      }

      v13 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v13);
  }

  if ([v33 count])
  {
    workingContext2 = [(PGSurveyQuestionFactory *)self workingContext];
    photoLibrary2 = [workingContext2 photoLibrary];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __92__PGRelationshipQuestionFactory_updateOutdatedAnsweredYesChildRelationshipQuestionsIfNeeded__block_invoke;
    v37[3] = &unk_27888A660;
    v38 = v33;
    v36 = 0;
    v24 = [photoLibrary2 performChangesAndWait:v37 error:&v36];
    v25 = v36;

    if ((v24 & 1) == 0)
    {
      v26 = +[PGLogging sharedLogging];
      loggingConnection = [v26 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v44 = v25;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[Questions] Failed to perform library changes for relationship inital question with error: %@", buf, 0xCu);
      }
    }
  }
}

void __92__PGRelationshipQuestionFactory_updateOutdatedAnsweredYesChildRelationshipQuestionsIfNeeded__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [MEMORY[0x277CD9978] changeRequestForQuestion:{*(*(&v8 + 1) + 8 * v5), v8}];
        [v6 setState:0];
        v7 = [MEMORY[0x277CBEAA8] date];
        [v6 setCreationDate:v7];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }
}

- (void)updateInitialQuestion:(id)question
{
  v17 = *MEMORY[0x277D85DE8];
  questionCopy = question;
  workingContext = [(PGSurveyQuestionFactory *)self workingContext];
  photoLibrary = [workingContext photoLibrary];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__PGRelationshipQuestionFactory_updateInitialQuestion___block_invoke;
  v13[3] = &unk_27888A660;
  v7 = questionCopy;
  v14 = v7;
  v12 = 0;
  v8 = [photoLibrary performChangesAndWait:v13 error:&v12];
  v9 = v12;

  if ((v8 & 1) == 0)
  {
    v10 = +[PGLogging sharedLogging];
    loggingConnection = [v10 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v9;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[Questions] Failed to perform library changes for relationship inital question with error: %@", buf, 0xCu);
    }
  }
}

void __55__PGRelationshipQuestionFactory_updateInitialQuestion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CD9978] changeRequestForQuestion:*(a1 + 32)];
  [v2 setState:0];
  v1 = [MEMORY[0x277CBEAA8] date];
  [v2 setCreationDate:v1];
}

- (id)initialQuestionForRelationshipLabel:(id)label
{
  labelCopy = label;
  workingContext = [(PGSurveyQuestionFactory *)self workingContext];
  photoLibrary = [workingContext photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setFetchLimit:1];
  labelCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"type = %d AND entityType = %d AND entityIdentifier = %@", 5, 4, labelCopy];

  [librarySpecificFetchOptions setPredicate:labelCopy];
  v9 = [MEMORY[0x277CD9970] fetchQuestionsWithOptions:librarySpecificFetchOptions validQuestionsOnly:0];
  firstObject = [v9 firstObject];

  return firstObject;
}

- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block
{
  blockCopy = block;
  [(PGRelationshipQuestionFactory *)self updateOutdatedAnsweredYesChildRelationshipQuestionsIfNeeded];
  v7 = [MEMORY[0x277CBEB58] set];
  workingContext = [(PGSurveyQuestionFactory *)self workingContext];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __74__PGRelationshipQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke;
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

void __74__PGRelationshipQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v174 = *MEMORY[0x277D85DE8];
  v110 = a2;
  v137 = _Block_copy(*(a1 + 48));
  if (!v137)
  {
    v4 = 0.0;
    if (!*(a1 + 56))
    {
      goto LABEL_159;
    }

    goto LABEL_10;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v4 = 0.0;
  if (Current >= 0.01)
  {
    v5 = Current;
    v166 = 0;
    v137[2](v137, &v166, 0.0);
    if (v166 == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v173 = 63;
        *&v173[4] = 2080;
        *&v173[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Relationship/PGRelationshipQuestionFactory.m";
        v6 = MEMORY[0x277D86220];
LABEL_44:
        _os_log_impl(&dword_22F0FC000, v6, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        goto LABEL_159;
      }

      goto LABEL_159;
    }

    v4 = v5;
  }

  if (*(a1 + 56))
  {
LABEL_10:
    v7 = [v110 graph];
    v111 = [PGGraphPersonNodeCollection personNodesExcludingMeInGraph:v7];
    v112 = v7;
    v8 = [v7 meNode];
    v9 = MEMORY[0x277CD9938];
    v10 = [v8 localIdentifier];
    v11 = [v9 uuidFromLocalIdentifier:v10];

    v125 = v8;
    v109 = v11;
    if (v8 && v11)
    {
      v12 = [[PGRelationshipQuestion alloc] initWithRelationshipLabel:@"ME" confirmedPersonUUID:v11];
      if ([*(a1 + 32) shouldAddQuestion:v12 toAlreadyGeneratedQuestions:*(a1 + 40)])
      {
        v13 = v12;
        [*(a1 + 40) addObject:v12];
        if ([*(a1 + 40) count] >= *(a1 + 56))
        {
          if (v137)
          {
            v14 = v109;
            if (CFAbsoluteTimeGetCurrent() - v4 >= 0.01)
            {
              v166 = 0;
              v137[2](v137, &v166, 1.0);
              if (v166)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  *buf = 67109378;
                  *v173 = 117;
                  *&v173[4] = 2080;
                  *&v173[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Relationship/PGRelationshipQuestionFactory.m";
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                }
              }
            }
          }

          else
          {
            v14 = v109;
          }

LABEL_158:

          goto LABEL_159;
        }
      }

      else
      {
        v13 = v12;
      }
    }

    else
    {
      v15 = [v112 meNode];
      v16 = [v15 inferredPersonNode];

      v13 = v16;
      if (v16)
      {
        v17 = MEMORY[0x277CD9938];
        v18 = [(PGRelationshipQuestion *)v16 localIdentifier];
        v19 = [v17 uuidFromLocalIdentifier:v18];

        v20 = [[PGRelationshipQuestion alloc] initWithRelationshipLabel:@"ME" personUUID:v19 localFactoryScore:1.0];
        if ([*(a1 + 32) shouldAddQuestion:v20 toAlreadyGeneratedQuestions:*(a1 + 40)])
        {
          [*(a1 + 40) addObject:v20];
          if ([*(a1 + 40) count] >= *(a1 + 56))
          {
            v14 = v109;
            if (v137)
            {
              if (CFAbsoluteTimeGetCurrent() - v4 >= 0.01)
              {
                v166 = 0;
                v137[2](v137, &v166, 1.0);
                if (v166)
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                  {
                    *buf = 67109378;
                    *v173 = 87;
                    *&v173[4] = 2080;
                    *&v173[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Relationship/PGRelationshipQuestionFactory.m";
                    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                  }
                }
              }
            }

LABEL_157:

            goto LABEL_158;
          }
        }
      }

      v164 = 0u;
      v165 = 0u;
      v162 = 0u;
      v163 = 0u;
      v19 = [v111 localIdentifiers];
      v21 = [v19 countByEnumeratingWithState:&v162 objects:v171 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v163;
        while (2)
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v163 != v23)
            {
              objc_enumerationMutation(v19);
            }

            v25 = *(*(&v162 + 1) + 8 * i);
            v26 = [(PGRelationshipQuestion *)v13 localIdentifier];
            if (v26)
            {
              v27 = v26;
              v28 = [(PGRelationshipQuestion *)v13 localIdentifier];
              v29 = [v25 isEqualToString:v28];

              if (v29)
              {
                continue;
              }
            }

            v20 = [MEMORY[0x277CD9938] uuidFromLocalIdentifier:v25];
            v30 = [[PGRelationshipQuestion alloc] initWithRelationshipLabel:@"ME" personUUID:v20 localFactoryScore:0.99];
            if ([*(a1 + 32) shouldAddQuestion:v30 toAlreadyGeneratedQuestions:*(a1 + 40)])
            {
              [*(a1 + 40) addObject:v30];
              if ([*(a1 + 40) count] >= *(a1 + 56))
              {
                v14 = v109;
                if (v137)
                {
                  if (CFAbsoluteTimeGetCurrent() - v4 >= 0.01)
                  {
                    v166 = 0;
                    v137[2](v137, &v166, 1.0);
                    if (v166)
                    {
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                      {
                        *buf = 67109378;
                        *v173 = 101;
                        *&v173[4] = 2080;
                        *&v173[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Relationship/PGRelationshipQuestionFactory.m";
                        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                      }
                    }
                  }
                }

                goto LABEL_156;
              }
            }

            v31 = [*(a1 + 40) count];
            if (v137)
            {
              v32 = v31;
              v33 = *(a1 + 56);
              v34 = CFAbsoluteTimeGetCurrent();
              if (v34 - v4 >= 0.01)
              {
                v166 = 0;
                v137[2](v137, &v166, v32 / v33);
                if (v166)
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                  {
                    *buf = 67109378;
                    *v173 = 106;
                    *&v173[4] = 2080;
                    *&v173[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Relationship/PGRelationshipQuestionFactory.m";
                    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                  }

                  v14 = v109;
LABEL_156:

                  goto LABEL_157;
                }

                v4 = v34;
              }
            }
          }

          v22 = [v19 countByEnumeratingWithState:&v162 objects:v171 count:16];
          if (v22)
          {
            continue;
          }

          break;
        }
      }
    }

    v35 = [objc_opt_class() localFactoryScoreByRelationshipLabels];
    v114 = [objc_opt_class() relationshipTypesByRelationshipLabel];
    v36 = [v35 allKeys];
    v160[0] = MEMORY[0x277D85DD0];
    v160[1] = 3221225472;
    v160[2] = __74__PGRelationshipQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_191;
    v160[3] = &unk_278889330;
    v115 = v35;
    v161 = v115;
    v37 = [v36 sortedArrayUsingComparator:v160];

    v38 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection nodesInGraph:v112];
    v39 = [v38 relationshipTagNodes];

    v40 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v41 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v157[0] = MEMORY[0x277D85DD0];
    v157[1] = 3221225472;
    v157[2] = __74__PGRelationshipQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_195;
    v157[3] = &unk_278889380;
    v124 = v41;
    v158 = v124;
    v123 = v40;
    v159 = v123;
    v108 = v39;
    [v39 enumerateNodesUsingBlock:v157];
    v119 = [objc_opt_class() relationshipLabelsRequiringInitialQuestion];
    v113 = [objc_opt_class() initialQuestionRelationshipLabelByRelationship];
    v153 = 0u;
    v154 = 0u;
    v155 = 0u;
    v156 = 0u;
    obj = v37;
    v118 = [obj countByEnumeratingWithState:&v153 objects:v170 count:16];
    if (v118)
    {
      v135 = 0;
      v117 = *v154;
      while (1)
      {
        for (j = 0; j != v118; ++j)
        {
          if (*v154 != v117)
          {
            objc_enumerationMutation(obj);
          }

          v43 = *(*(&v153 + 1) + 8 * j);
          context = objc_autoreleasePoolPush();
          if ([v119 containsObject:v43])
          {
            v44 = v43;
            v45 = [v113 objectForKeyedSubscript:v43];
            v46 = [*(a1 + 32) initialQuestionForRelationshipLabel:v45];
            v47 = v46;
            if (!v46)
            {
              v51 = [objc_opt_class() displayStringForRelationshipLabel:v45];
              v52 = [[PGRelationshipQuestion alloc] initWithRelationshipLabel:v45 personUUID:v45 displayString:v51 localFactoryScore:1.0];
              [*(a1 + 40) addObject:v52];

LABEL_59:
              objc_autoreleasePoolPop(context);
              continue;
            }

            if (![v46 state])
            {
              goto LABEL_59;
            }

            if ([v47 state] == 3 || objc_msgSend(v47, "state") == 1)
            {
              v48 = [v47 creationDate];
              [v48 timeIntervalSinceNow];
              v50 = v49;

              if (v50 < -15778800.0)
              {
                [*(a1 + 32) updateInitialQuestion:v47];
              }

              goto LABEL_59;
            }

            v43 = v44;
          }

          v120 = j;
          v133 = [(PGRelationshipQuestion *)v115 objectForKeyedSubscript:v43];
          [v133 objectForKeyedSubscript:&unk_2844847D0];
          v54 = v53 = v43;
          [v54 doubleValue];
          v56 = v55;

          v136 = v53;
          v57 = [v114 objectForKeyedSubscript:v53];
          v128 = objc_alloc_init(MEMORY[0x277CBEB58]);
          v149 = 0u;
          v150 = 0u;
          v151 = 0u;
          v152 = 0u;
          v122 = v57;
          v127 = [v122 countByEnumeratingWithState:&v149 objects:v169 count:16];
          if (!v127)
          {
            goto LABEL_102;
          }

          v126 = *v150;
          while (2)
          {
            v58 = 0;
LABEL_64:
            if (*v150 != v126)
            {
              objc_enumerationMutation(v122);
            }

            v59 = [*(*(&v149 + 1) + 8 * v58) unsignedIntegerValue];
            v60 = objc_alloc_init(MEMORY[0x277CBEB58]);
            v61 = objc_alloc_init(MEMORY[0x277CBEB58]);
            v146[0] = MEMORY[0x277D85DD0];
            v146[1] = 3221225472;
            v146[2] = __74__PGRelationshipQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_200;
            v146[3] = &unk_2788893A8;
            v62 = v60;
            v147 = v62;
            v63 = v61;
            v148 = v63;
            [v125 enumeratePersonNodesWithRelationship:v59 matchingQuery:3 usingBlock:v146];
            v64 = +[PGGraphPersonRelationshipTagNode labelForRelationshipTag:](PGGraphPersonRelationshipTagNode, "labelForRelationshipTag:", [objc_opt_class() relationshipTagForRelatationshipType:v59]);
            v65 = [v123 objectForKeyedSubscript:v64];
            v66 = [v124 objectForKeyedSubscript:v64];
            v67 = objc_alloc_init(MEMORY[0x277CBEB58]);
            [v67 unionSet:v62];
            [v67 unionSet:v63];
            v134 = v65;
            [v67 unionSet:v65];
            v132 = v66;
            [v67 unionSet:v66];
            [v128 unionSet:v67];
            v144 = 0u;
            v145 = 0u;
            v142 = 0u;
            v143 = 0u;
            v68 = v67;
            v69 = [v68 countByEnumeratingWithState:&v142 objects:v168 count:16];
            if (!v69)
            {
              goto LABEL_84;
            }

            v70 = v69;
            v71 = *v143;
            v130 = v63;
            v131 = v58;
            v129 = v64;
LABEL_68:
            v72 = 0;
            while (1)
            {
              if (*v143 != v71)
              {
                objc_enumerationMutation(v68);
              }

              v73 = *(*(&v142 + 1) + 8 * v72);
              v74 = MEMORY[0x277CD9938];
              v75 = [v73 localIdentifier];
              v76 = [v74 uuidFromLocalIdentifier:v75];

              if (!v76)
              {
                v90 = +[PGLogging sharedLogging];
                p_super = [v90 loggingConnection];

                if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  *v173 = v73;
                  _os_log_error_impl(&dword_22F0FC000, p_super, OS_LOG_TYPE_ERROR, "Cannot get uuid for person %@", buf, 0xCu);
                }

                v76 = 0;
                v85 = v4;
                goto LABEL_98;
              }

              if (([v62 containsObject:v73] & 1) != 0 || objc_msgSend(v134, "containsObject:", v73))
              {
                v77 = [[PGRelationshipQuestion alloc] initWithRelationshipLabel:v136 confirmedPersonUUID:v76];
              }

              else
              {
                v78 = [v133 objectForKeyedSubscript:&unk_2844847B8];
                [v78 doubleValue];
                v80 = v79;

                v77 = [[PGRelationshipQuestion alloc] initWithRelationshipLabel:v136 personUUID:v76 localFactoryScore:v80];
              }

              p_super = &v77->super.super;
              if ([*(a1 + 32) shouldAddQuestion:v77 toAlreadyGeneratedQuestions:*(a1 + 40)])
              {
                [*(a1 + 40) addObject:p_super];
                if ([*(a1 + 40) count] >= *(a1 + 56))
                {
                  break;
                }
              }

              v82 = [*(a1 + 40) count];
              if (v137)
              {
                v83 = v82;
                v84 = *(a1 + 56);
                v85 = CFAbsoluteTimeGetCurrent();
                if (v85 - v4 >= 0.01)
                {
                  v166 = 0;
                  v137[2](v137, &v166, v83 / v84);
                  if (v166 | v135 & 1)
                  {
                    v91 = MEMORY[0x277D86220];
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                    {
                      *buf = 67109378;
                      *v173 = 224;
                      *&v173[4] = 2080;
                      *&v173[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Relationship/PGRelationshipQuestionFactory.m";
                      _os_log_impl(&dword_22F0FC000, v91, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                    }

                    v135 = 1;
LABEL_98:
                    v63 = v130;

                    v87 = 0;
                    v88 = 0;
                    v89 = 1;
                    v4 = v85;
                    v58 = v131;
                    v64 = v129;
                    goto LABEL_99;
                  }

                  v135 = 0;
                  v4 = v85;
                }
              }

              if (v70 == ++v72)
              {
                v70 = [v68 countByEnumeratingWithState:&v142 objects:v168 count:16];
                v63 = v130;
                v58 = v131;
                v64 = v129;
                if (v70)
                {
                  goto LABEL_68;
                }

LABEL_84:

                if ((v135 & 1) == 0)
                {
                  goto LABEL_92;
                }

LABEL_85:
                v135 = 1;
                v86 = MEMORY[0x277D86220];
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  *buf = 67109378;
                  *v173 = 227;
                  *&v173[4] = 2080;
                  *&v173[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Relationship/PGRelationshipQuestionFactory.m";
                  v135 = 1;
                  _os_log_impl(&dword_22F0FC000, v86, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                }

                v87 = 0;
                v88 = 0;
                v89 = 1;
                goto LABEL_99;
              }
            }

            v63 = v130;
            v58 = v131;
            v64 = v129;
            if (v135)
            {
              goto LABEL_85;
            }

LABEL_92:
            v135 = 0;
            if ([*(a1 + 40) count] >= *(a1 + 56))
            {
              v87 = 0;
              v89 = 6;
              v88 = 1;
            }

            else
            {
              v88 = 0;
              v89 = 0;
              v87 = 1;
            }

LABEL_99:

            if (v87)
            {
              if (++v58 == v127)
              {
                v127 = [v122 countByEnumeratingWithState:&v149 objects:v169 count:16];
                if (!v127)
                {
LABEL_102:

                  goto LABEL_104;
                }

                continue;
              }

              goto LABEL_64;
            }

            break;
          }

          if (!v88)
          {
            goto LABEL_131;
          }

LABEL_104:
          if ([*(a1 + 40) count] >= *(a1 + 56))
          {

            objc_autoreleasePoolPop(context);
            goto LABEL_140;
          }

          v92 = [(MAElementCollection *)[PGGraphPersonNodeCollection alloc] initWithSet:v128 graph:v112];
          v93 = [v111 collectionBySubtracting:v92];
          v138 = 0u;
          v139 = 0u;
          v140 = 0u;
          v141 = 0u;
          v94 = [v93 uuids];
          v95 = [v94 countByEnumeratingWithState:&v138 objects:v167 count:16];
          if (v95)
          {
            v96 = v95;
            v97 = *v139;
            while (2)
            {
              for (k = 0; k != v96; ++k)
              {
                if (*v139 != v97)
                {
                  objc_enumerationMutation(v94);
                }

                v99 = [[PGRelationshipQuestion alloc] initWithRelationshipLabel:v136 personUUID:*(*(&v138 + 1) + 8 * k) localFactoryScore:v56];
                if ([*(a1 + 32) shouldAddQuestion:v99 toAlreadyGeneratedQuestions:*(a1 + 40)])
                {
                  [*(a1 + 40) addObject:v99];
                  if ([*(a1 + 40) count] >= *(a1 + 56))
                  {

                    goto LABEL_120;
                  }
                }

                v100 = [*(a1 + 40) count];
                if (v137)
                {
                  v101 = v100;
                  v102 = *(a1 + 56);
                  v103 = CFAbsoluteTimeGetCurrent();
                  if (v103 - v4 >= 0.01)
                  {
                    v166 = 0;
                    v137[2](v137, &v166, v101 / v102);
                    if (v166 | v135 & 1)
                    {
                      v107 = MEMORY[0x277D86220];
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                      {
                        *buf = 67109378;
                        *v173 = 251;
                        *&v173[4] = 2080;
                        *&v173[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Relationship/PGRelationshipQuestionFactory.m";
                        _os_log_impl(&dword_22F0FC000, v107, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                      }

                      v105 = 1;
                      goto LABEL_129;
                    }

                    v135 = 0;
                    v4 = v103;
                  }
                }
              }

              v96 = [v94 countByEnumeratingWithState:&v138 objects:v167 count:16];
              if (v96)
              {
                continue;
              }

              break;
            }
          }

LABEL_120:

          v104 = [*(a1 + 40) count] >= *(a1 + 56);
          v105 = v104 & v135;
          v89 = 4 * v104;
          if (v104 || (v106 = MEMORY[0x277D86220], (v135 & 1) == 0))
          {
            v103 = v4;
          }

          else
          {
            v105 = 1;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v173 = 258;
              *&v173[4] = 2080;
              *&v173[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Relationship/PGRelationshipQuestionFactory.m";
              _os_log_impl(&dword_22F0FC000, v106, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            v103 = v4;
LABEL_129:
            v89 = 1;
          }

          v4 = v103;
          v135 = v105;
LABEL_131:

          objc_autoreleasePoolPop(context);
          if (v89 == 5)
          {
            j = v120;
          }

          else
          {
            j = v120;
            if (v89)
            {

              v14 = v109;
              v13 = v115;
              if (v89 != 4)
              {
                goto LABEL_152;
              }

              goto LABEL_141;
            }
          }
        }

        v118 = [obj countByEnumeratingWithState:&v153 objects:v170 count:16];
        if (!v118)
        {
          goto LABEL_140;
        }
      }
    }

    v135 = 0;
LABEL_140:

    v14 = v109;
    v13 = v115;
LABEL_141:
    if (v137)
    {
      if (CFAbsoluteTimeGetCurrent() - v4 >= 0.01)
      {
        v166 = 0;
        v137[2](v137, &v166, 1.0);
        if (v166 | v135 & 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v173 = 261;
            *&v173[4] = 2080;
            *&v173[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Relationship/PGRelationshipQuestionFactory.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }
    }

LABEL_152:

    goto LABEL_158;
  }

  if (CFAbsoluteTimeGetCurrent() - v4 >= 0.01)
  {
    v166 = 0;
    v137[2](v137, &v166, 1.0);
    if (v166)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v173 = 67;
        *&v173[4] = 2080;
        *&v173[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Relationship/PGRelationshipQuestionFactory.m";
        v6 = MEMORY[0x277D86220];
        goto LABEL_44;
      }
    }
  }

LABEL_159:
}

BOOL __74__PGRelationshipQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_191(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = [v7 objectForKeyedSubscript:&unk_2844847B8];
  [v8 doubleValue];
  v10 = v9;

  v11 = [*(a1 + 32) objectForKeyedSubscript:v6];

  v12 = [v11 objectForKeyedSubscript:&unk_2844847B8];
  [v12 doubleValue];
  v14 = v13;

  return v10 <= v14;
}

void __74__PGRelationshipQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_195(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __74__PGRelationshipQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_2;
  v5[3] = &unk_278889358;
  v6 = *(a1 + 32);
  v7 = v3;
  v8 = *(a1 + 40);
  v4 = v3;
  [v4 enumerateNeighborEdgesAndNodesThroughInEdgesUsingBlock:v5];
}

void __74__PGRelationshipQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_200(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = [a3 status];
  v6 = 40;
  if (!v5)
  {
    v6 = 32;
  }

  [*(a1 + v6) addObject:v7];
}

void __74__PGRelationshipQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_2(uint64_t a1, void *a2)
{
  [a2 confidence];
  v4 = v3;
  v11 = [*(a1 + 40) collection];
  v5 = [v11 personNodes];
  v6 = [v5 set];
  v7 = *(a1 + 40);
  v8 = 48;
  if (v4 < 1.0)
  {
    v8 = 32;
  }

  v9 = *(a1 + v8);
  v10 = [v7 label];
  [v9 setObject:v6 forKeyedSubscript:v10];
}

@end