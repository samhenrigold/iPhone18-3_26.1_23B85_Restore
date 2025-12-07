@interface PGPersonActivityMeaningQuestionFactory
- (NSSet)personActivityMeaningLabelsForWhichToGenerateQuestions;
- (id)_questionsToAddFromMomentNodes:(id)nodes localFactoryScore:(double)score alreadyGeneratedQuestions:(id)questions limit:(unint64_t)limit graph:(id)graph progressBlock:(id)block;
- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block;
@end

@implementation PGPersonActivityMeaningQuestionFactory

- (NSSet)personActivityMeaningLabelsForWhichToGenerateQuestions
{
  v9[6] = *MEMORY[0x277D85DE8];
  personActivityMeaningLabelsForWhichToGenerateQuestions = self->_personActivityMeaningLabelsForWhichToGenerateQuestions;
  if (!personActivityMeaningLabelsForWhichToGenerateQuestions)
  {
    v4 = MEMORY[0x277CBEB98];
    v9[0] = @"PersonBeachWater";
    v9[1] = @"PersonToys";
    v9[2] = @"PersonPlayground";
    v9[3] = @"PersonActionSwimming";
    v9[4] = @"PersonActionPlayingOnASwing";
    v9[5] = @"PersonActionPlayingOnASlide";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:6];
    v6 = [v4 setWithArray:v5];
    v7 = self->_personActivityMeaningLabelsForWhichToGenerateQuestions;
    self->_personActivityMeaningLabelsForWhichToGenerateQuestions = v6;

    personActivityMeaningLabelsForWhichToGenerateQuestions = self->_personActivityMeaningLabelsForWhichToGenerateQuestions;
  }

  return personActivityMeaningLabelsForWhichToGenerateQuestions;
}

- (id)_questionsToAddFromMomentNodes:(id)nodes localFactoryScore:(double)score alreadyGeneratedQuestions:(id)questions limit:(unint64_t)limit graph:(id)graph progressBlock:(id)block
{
  v70 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  questionsCopy = questions;
  graphCopy = graph;
  v13 = _Block_copy(block);
  v41 = [MEMORY[0x277CBEB98] set];
  v14 = 0.0;
  if (v13)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current >= 0.01)
    {
      v63 = 0;
      v13[2](v13, &v63, 0.0);
      if (v63 == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v67 = 85;
          v68 = 2080;
          v69 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Person Activity Meaning/PGPersonActivityMeaningQuestionFactory.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v16 = v41;
        goto LABEL_70;
      }

      v14 = Current;
    }
  }

  v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if (![nodesCopy count])
  {
    if (!v13 || CFAbsoluteTimeGetCurrent() - v14 < 0.01 || (v63 = 0, v13[2](v13, &v63, 1.0), !v63))
    {
      v38 = [MEMORY[0x277CBEB98] set];
      goto LABEL_68;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_66;
    }

    *buf = 67109378;
    v67 = 91;
    v68 = 2080;
    v69 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Person Activity Meaning/PGPersonActivityMeaningQuestionFactory.m";
    v37 = MEMORY[0x277D86220];
    goto LABEL_65;
  }

  v18 = [questionsCopy count];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = [(PGPersonActivityMeaningQuestionFactory *)self personActivityMeaningLabelsForWhichToGenerateQuestions];
  v46 = [obj countByEnumeratingWithState:&v59 objects:v65 count:16];
  if (v46)
  {
    v51 = 0;
    v45 = *v60;
    *&v19 = 67109378;
    v40 = v19;
    v43 = nodesCopy;
    v44 = v41;
    while (2)
    {
      for (i = 0; i != v46; ++i)
      {
        if (*v60 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v59 + 1) + 8 * i);
        v22 = [PGGraphPersonActivityMeaningNodeCollection personActivityMeaningNodesForActivityLabel:v21 inGraph:graphCopy, v40];
        featureNodeCollection = [v22 featureNodeCollection];
        v24 = [PGGraphMomentFeaturesEdgeCollection momentFeaturesEdgesFromMomentNodes:nodesCopy toFeatureNodes:featureNodeCollection];

        v50 = v24;
        allRelevantAssetUUIDs = [v24 allRelevantAssetUUIDs];
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v26 = allRelevantAssetUUIDs;
        v27 = [v26 countByEnumeratingWithState:&v55 objects:v64 count:16];
        if (v27)
        {
          v28 = v27;
          v48 = v22;
          v49 = i;
          v29 = *v56;
LABEL_16:
          v30 = 0;
          while (1)
          {
            if (*v56 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = [[PGPersonActivityMeaningQuestion alloc] initWithMeaningLabel:v21 assetUUID:*(*(&v55 + 1) + 8 * v30) localFactoryScore:score];
            if ([(PGSurveyQuestionFactory *)self shouldAddQuestion:v31 toAlreadyGeneratedQuestions:questionsCopy])
            {
              [v17 addObject:v31];
            }

            v32 = [v17 count];
            if (v13)
            {
              v33 = v32;
              v34 = CFAbsoluteTimeGetCurrent();
              if (v34 - v14 >= 0.01)
              {
                v63 = 0;
                v13[2](v13, &v63, v33 / limit);
                if (v63 | v51 & 1)
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                  {
                    *buf = v40;
                    v67 = 110;
                    v68 = 2080;
                    v69 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Person Activity Meaning/PGPersonActivityMeaningQuestionFactory.m";
                    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                  }

                  v44 = v41;
                  v51 = 1;
                  goto LABEL_47;
                }

                v51 = 0;
              }

              else
              {
                v34 = v14;
              }

              if ([v17 count] + v18 >= limit)
              {
                v14 = CFAbsoluteTimeGetCurrent();
                if (v14 - v34 < 0.01)
                {
                  v14 = v34;
                  goto LABEL_45;
                }

                v63 = 0;
                v13[2](v13, &v63, 1.0);
                if (v63 | v51 & 1)
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                  {
                    *buf = v40;
                    v67 = 113;
                    v68 = 2080;
                    v69 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Person Activity Meaning/PGPersonActivityMeaningQuestionFactory.m";
                    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                  }

                  v44 = v41;
                  v51 = 1;
                }

                else
                {
                  v51 = 0;
LABEL_45:
                  v44 = v17;
                }

                v34 = v14;
LABEL_47:
                nodesCopy = v43;
                i = v49;
                v36 = v50;

                v35 = 0;
                v14 = v34;
                v22 = v48;
                goto LABEL_48;
              }

              v14 = v34;
            }

            else if ([v17 count] + v18 >= limit)
            {
              goto LABEL_45;
            }

            if (v28 == ++v30)
            {
              v28 = [v26 countByEnumeratingWithState:&v55 objects:v64 count:16];
              if (v28)
              {
                goto LABEL_16;
              }

              v35 = 1;
              nodesCopy = v43;
              v22 = v48;
              i = v49;
              goto LABEL_34;
            }
          }
        }

        v35 = 1;
LABEL_34:
        v36 = v50;
LABEL_48:

        if (!v35)
        {

          v16 = v44;
          goto LABEL_69;
        }
      }

      v46 = [obj countByEnumeratingWithState:&v59 objects:v65 count:16];
      if (v46)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v51 = 0;
  }

  if (v13)
  {
    if (CFAbsoluteTimeGetCurrent() - v14 >= 0.01)
    {
      v63 = 0;
      v13[2](v13, &v63, 1.0);
      if (v63 | v51 & 1)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
LABEL_66:
          v38 = v41;
          goto LABEL_68;
        }

        *buf = 67109378;
        v67 = 119;
        v68 = 2080;
        v69 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Person Activity Meaning/PGPersonActivityMeaningQuestionFactory.m";
        v37 = MEMORY[0x277D86220];
LABEL_65:
        _os_log_impl(&dword_22F0FC000, v37, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        goto LABEL_66;
      }
    }
  }

  v38 = v17;
LABEL_68:
  v16 = v38;
LABEL_69:

LABEL_70:

  return v16;
}

- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block
{
  blockCopy = block;
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  workingContext = [(PGSurveyQuestionFactory *)self workingContext];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __83__PGPersonActivityMeaningQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke;
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

void __83__PGPersonActivityMeaningQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _Block_copy(*(a1 + 48));
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v30 = v4;
  if (!v4)
  {
    v7 = (a1 + 56);
    if (!*(a1 + 56))
    {
      goto LABEL_33;
    }

    goto LABEL_13;
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (Current - v38[3] < 0.01)
  {
    if (v42[3])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v46 = 48;
        v47 = 2080;
        v48 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Person Activity Meaning/PGPersonActivityMeaningQuestionFactory.m";
        v6 = MEMORY[0x277D86220];
LABEL_11:
        _os_log_impl(&dword_22F0FC000, v6, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        goto LABEL_33;
      }

      goto LABEL_33;
    }

    goto LABEL_12;
  }

  v38[3] = Current;
  v36 = 0;
  (v30)[2](v30, &v36, 0.0);
  v8 = *(v42 + 24) | v36;
  *(v42 + 24) = v8;
  if ((v8 & 1) == 0)
  {
LABEL_12:
    v7 = (a1 + 56);
    if (!*(a1 + 56))
    {
      v24 = CFAbsoluteTimeGetCurrent();
      if (v24 - v38[3] >= 0.01)
      {
        v38[3] = v24;
        v36 = 0;
        (v30)[2](v30, &v36, 1.0);
        v25 = *(v42 + 24) | v36;
        *(v42 + 24) = v25;
        if ((v25 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v46 = 51;
          v47 = 2080;
          v48 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Person Activity Meaning/PGPersonActivityMeaningQuestionFactory.m";
          v6 = MEMORY[0x277D86220];
          goto LABEL_11;
        }
      }

      goto LABEL_33;
    }

LABEL_13:
    v9 = [v3 graph];
    v10 = +[PGMeaningfulEventRequiredCriteriaFactory availablePersonActivityMeaningLabels];
    v11 = [MEMORY[0x277CBEB98] setWithArray:v10];
    v12 = [PGGraphPersonActivityMeaningNodeCollection personActivityMeaningNodesForActivityLabels:v11 inGraph:v9];

    v29 = v10;
    v13 = v3;
    v14 = v12;
    v15 = [v12 momentNodes];
    v16 = *(a1 + 32);
    v17 = *(a1 + 40);
    v18 = *(a1 + 56);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __83__PGPersonActivityMeaningQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_254;
    v31[3] = &unk_27888A188;
    v28 = v30;
    v32 = v28;
    v33 = &v37;
    v34 = &v41;
    v35 = 0x3F847AE147AE147BLL;
    v19 = [v16 _questionsToAddFromMomentNodes:v15 localFactoryScore:v17 alreadyGeneratedQuestions:v18 limit:v9 graph:v31 progressBlock:1.0];
    if (*(v42 + 24) == 1)
    {
      v3 = v13;
      v20 = v29;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_32:

        goto LABEL_33;
      }

      *buf = 67109378;
      v46 = 65;
      v47 = 2080;
      v48 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Person Activity Meaning/PGPersonActivityMeaningQuestionFactory.m";
      v21 = MEMORY[0x277D86220];
    }

    else
    {
      [*(a1 + 40) unionSet:v19];
      v3 = v13;
      if ([*(a1 + 40) count] >= *v7)
      {
        v20 = v29;
        if (!v30)
        {
          goto LABEL_32;
        }

        v26 = CFAbsoluteTimeGetCurrent();
        if (v26 - v38[3] < 0.01)
        {
          goto LABEL_32;
        }

        v38[3] = v26;
        v36 = 0;
        (*(v28 + 2))(v28, &v36, 1.0);
        v27 = *(v42 + 24) | v36;
        *(v42 + 24) = v27;
        if ((v27 & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          goto LABEL_32;
        }

        *buf = 67109378;
        v46 = 68;
        v47 = 2080;
        v48 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Person Activity Meaning/PGPersonActivityMeaningQuestionFactory.m";
        v21 = MEMORY[0x277D86220];
      }

      else
      {
        v20 = v29;
        if (!v30)
        {
          goto LABEL_32;
        }

        v22 = CFAbsoluteTimeGetCurrent();
        if (v22 - v38[3] < 0.01)
        {
          goto LABEL_32;
        }

        v38[3] = v22;
        v36 = 0;
        (*(v28 + 2))(v28, &v36, 1.0);
        v23 = *(v42 + 24) | v36;
        *(v42 + 24) = v23;
        if ((v23 & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          goto LABEL_32;
        }

        *buf = 67109378;
        v46 = 72;
        v47 = 2080;
        v48 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Person Activity Meaning/PGPersonActivityMeaningQuestionFactory.m";
        v21 = MEMORY[0x277D86220];
      }
    }

    _os_log_impl(&dword_22F0FC000, v21, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    goto LABEL_32;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v46 = 47;
    v47 = 2080;
    v48 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Person Activity Meaning/PGPersonActivityMeaningQuestionFactory.m";
    v6 = MEMORY[0x277D86220];
    goto LABEL_11;
  }

LABEL_33:
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);
}

void __83__PGPersonActivityMeaningQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_254(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.5 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

@end