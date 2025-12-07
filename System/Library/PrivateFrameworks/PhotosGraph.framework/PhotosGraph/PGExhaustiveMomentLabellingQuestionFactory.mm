@interface PGExhaustiveMomentLabellingQuestionFactory
- (id)_inferMeaningLabelsForMomentNode:(id)node graph:(id)graph cache:(id)cache meaningLabels:(id)labels sceneTaxonomy:(id)taxonomy;
- (id)_meaningLabelsForWhichToGenerateQuestions;
- (id)_questionsToAddWithMomentNodes:(id)nodes graph:(id)graph localFactoryScore:(double)score limit:(unint64_t)limit sceneTaxonomy:(id)taxonomy alreadyGeneratedQuestions:(id)questions progressBlock:(id)block;
- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block;
@end

@implementation PGExhaustiveMomentLabellingQuestionFactory

- (id)_meaningLabelsForWhichToGenerateQuestions
{
  v4[24] = *MEMORY[0x277D85DE8];
  v4[0] = @"Wedding";
  v4[1] = @"Birthday";
  v4[2] = @"Anniversary";
  v4[3] = @"Celebration";
  v4[4] = @"Concert";
  v4[5] = @"Festival";
  v4[6] = @"Theater";
  v4[7] = @"Dance";
  v4[8] = @"Museum";
  v4[9] = @"AmusementPark";
  v4[10] = @"Performance";
  v4[11] = @"Hiking";
  v4[12] = @"Climbing";
  v4[13] = @"Beaching";
  v4[14] = @"SportEvent";
  v4[15] = @"WinterSport";
  v4[16] = @"Diving";
  v4[17] = @"Lunch";
  v4[18] = @"Dinner";
  v4[19] = @"Breakfast";
  v4[20] = @"Restaurant";
  v4[21] = @"NightOut";
  v4[22] = @"Entertainment";
  v4[23] = @"HolidayEvent";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:24];

  return v2;
}

- (id)_inferMeaningLabelsForMomentNode:(id)node graph:(id)graph cache:(id)cache meaningLabels:(id)labels sceneTaxonomy:(id)taxonomy
{
  v60 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  graphCopy = graph;
  cacheCopy = cache;
  labelsCopy = labels;
  taxonomyCopy = taxonomy;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  workingContext = [(PGSurveyQuestionFactory *)self workingContext];
  serviceManager = [workingContext serviceManager];

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v15 = labelsCopy;
  v16 = [v15 countByEnumeratingWithState:&v53 objects:v59 count:16];
  obj = v15;
  if (v16)
  {
    v17 = v16;
    v18 = *v54;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v54 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v53 + 1) + 8 * i);
        v58 = v20;
        v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
        v22 = [PGMeaningfulEventLooseRequiredCriteriaFactory requiredCriteriaForIdentifiers:v21 graph:graphCopy sceneTaxonomy:taxonomyCopy];

        v23 = [PGMeaningfulEventProcessor processRequiredCriteria:v22 forMoment:nodeCopy meaningfulEventProcessorCache:cacheCopy serviceManager:serviceManager];
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v24 = [v23 countByEnumeratingWithState:&v49 objects:v57 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v50;
          v27 = -2147483650.0;
          do
          {
            for (j = 0; j != v25; ++j)
            {
              if (*v50 != v26)
              {
                objc_enumerationMutation(v23);
              }

              [*(*(&v49 + 1) + 8 * j) score];
              if (v27 < v29)
              {
                v27 = v29;
              }
            }

            v25 = [v23 countByEnumeratingWithState:&v49 objects:v57 count:16];
          }

          while (v25);
          if (v27 != -2147483650.0)
          {
            v30 = [MEMORY[0x277CCABB0] numberWithDouble:v27];
            [dictionary setObject:v30 forKeyedSubscript:v20];
          }
        }
      }

      v15 = obj;
      v17 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
    }

    while (v17);
  }

  v31 = objc_alloc_init(MEMORY[0x277CBEB40]);
  if ([dictionary count])
  {
    v32 = [dictionary keysSortedByValueUsingSelector:sel_compare_];
    reverseObjectEnumerator = [v32 reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __119__PGExhaustiveMomentLabellingQuestionFactory__inferMeaningLabelsForMomentNode_graph_cache_meaningLabels_sceneTaxonomy___block_invoke;
    v47[3] = &unk_278882530;
    v48 = v31;
    [allObjects enumerateObjectsUsingBlock:v47];
  }

  if ([v31 count] <= 4)
  {
    do
    {
      v35 = [obj objectAtIndex:{arc4random_uniform(objc_msgSend(obj, "count"))}];
      [v31 addObject:v35];
    }

    while ([v31 count] < 5);
  }

  v36 = [obj sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __119__PGExhaustiveMomentLabellingQuestionFactory__inferMeaningLabelsForMomentNode_graph_cache_meaningLabels_sceneTaxonomy___block_invoke_2;
  v45[3] = &unk_278882530;
  v37 = v31;
  v46 = v37;
  [v36 enumerateObjectsUsingBlock:v45];

  [v37 addObject:PGExhaustiveMomentLabellingNoneOfTheseAnswerString];

  return v37;
}

void *__119__PGExhaustiveMomentLabellingQuestionFactory__inferMeaningLabelsForMomentNode_graph_cache_meaningLabels_sceneTaxonomy___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  [*(a1 + 32) addObject:a2];
  result = [*(a1 + 32) count];
  if (result == 5)
  {
    *a4 = 1;
  }

  return result;
}

void __119__PGExhaustiveMomentLabellingQuestionFactory__inferMeaningLabelsForMomentNode_graph_cache_meaningLabels_sceneTaxonomy___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (id)_questionsToAddWithMomentNodes:(id)nodes graph:(id)graph localFactoryScore:(double)score limit:(unint64_t)limit sceneTaxonomy:(id)taxonomy alreadyGeneratedQuestions:(id)questions progressBlock:(id)block
{
  v62 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  graphCopy = graph;
  taxonomyCopy = taxonomy;
  questionsCopy = questions;
  blockCopy = block;
  v19 = _Block_copy(blockCopy);
  v35 = [MEMORY[0x277CBEB98] set];
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v20 = [MEMORY[0x277CBEB58] set];
  v21 = [questionsCopy count];
  v22 = [[PGMeaningfulEventProcessorCache alloc] initWithMomentNodes:nodesCopy];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __161__PGExhaustiveMomentLabellingQuestionFactory__questionsToAddWithMomentNodes_graph_localFactoryScore_limit_sceneTaxonomy_alreadyGeneratedQuestions_progressBlock___block_invoke;
  v38[3] = &unk_278882508;
  v38[4] = self;
  v23 = graphCopy;
  v39 = v23;
  v24 = v22;
  v40 = v24;
  v25 = taxonomyCopy;
  v41 = v25;
  scoreCopy = score;
  v26 = questionsCopy;
  v42 = v26;
  v27 = v20;
  v43 = v27;
  limitCopy = limit;
  v28 = v19;
  v44 = v28;
  v45 = &v51;
  v49 = 0x3F847AE147AE147BLL;
  v46 = &v55;
  v50 = v21;
  [nodesCopy enumerateNodesUsingBlock:v38];
  if (v28 && (Current = CFAbsoluteTimeGetCurrent(), Current - v52[3] >= 0.01) && (v52[3] = Current, v37 = 0, (*(v28 + 2))(v28, &v37, 1.0), v30 = *(v56 + 24) | v37, *(v56 + 24) = v30, (v30 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      buf[0] = 67109378;
      buf[1] = 128;
      v60 = 2080;
      v61 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Meaning/PGExhaustiveMomentLabellingQuestionFactory.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v31 = v35;
  }

  else
  {
    v31 = v27;
  }

  v32 = v31;

  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v55, 8);

  return v32;
}

void __161__PGExhaustiveMomentLabellingQuestionFactory__questionsToAddWithMomentNodes_graph_localFactoryScore_limit_sceneTaxonomy_alreadyGeneratedQuestions_progressBlock___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = a2;
  v9 = [v5 _meaningLabelsForWhichToGenerateQuestions];
  v10 = [v5 _inferMeaningLabelsForMomentNode:v8 graph:v6 cache:v7 meaningLabels:v9 sceneTaxonomy:*(a1 + 56)];

  v11 = [PGExhaustiveMomentLabellingQuestion alloc];
  v12 = [v8 uuid];

  v13 = [(PGExhaustiveMomentLabellingQuestion *)v11 initWithMomentUUID:v12 localFactoryScore:v10 meaningLabels:*(a1 + 104)];
  if ([*(a1 + 32) shouldAddQuestion:v13 toAlreadyGeneratedQuestions:*(a1 + 64)])
  {
    [*(a1 + 72) addObject:v13];
  }

  v14 = [*(a1 + 72) count];
  if (*(a1 + 80) && (v15 = v14, v16 = *(a1 + 112), Current = CFAbsoluteTimeGetCurrent(), v18 = *(*(a1 + 88) + 8), Current - *(v18 + 24) >= *(a1 + 120)) && (*(v18 + 24) = Current, (*(*(a1 + 80) + 16))(v15 / v16), *(*(*(a1 + 96) + 8) + 24) = *(*(*(a1 + 96) + 8) + 24), v19 = *(*(*(a1 + 96) + 8) + 24), v19 == 1) || (v20 = *(a1 + 128), ([*(a1 + 72) count] + v20) >= *(a1 + 112)) && *(a1 + 80) && (v21 = CFAbsoluteTimeGetCurrent(), v22 = *(*(a1 + 88) + 8), v21 - *(v22 + 24) >= *(a1 + 120)) && (*(v22 + 24) = v21, (*(*(a1 + 80) + 16))(1.0), *(*(*(a1 + 96) + 8) + 24) = *(*(*(a1 + 96) + 8) + 24), v19 = *(*(*(a1 + 96) + 8) + 24), v19 == 1))
  {
    *a3 = v19;
  }
}

- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block
{
  blockCopy = block;
  v7 = [MEMORY[0x277CBEB58] set];
  workingContext = [(PGSurveyQuestionFactory *)self workingContext];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __87__PGExhaustiveMomentLabellingQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke;
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

void __87__PGExhaustiveMomentLabellingQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v59 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _Block_copy(*(a1 + 48));
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  if (!v4)
  {
    v8 = (a1 + 56);
    if (!*(a1 + 56))
    {
      goto LABEL_29;
    }

    goto LABEL_13;
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (Current - v45[3] >= 0.01)
  {
    v45[3] = Current;
    LOBYTE(v52) = 0;
    v4[2](v4, &v52, 0.0);
    v6 = *(v49 + 24) | v52;
    *(v49 + 24) = v6;
    if (v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        buf = 0x3504000202;
        LOWORD(v57) = 2080;
        *(&v57 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Meaning/PGExhaustiveMomentLabellingQuestionFactory.m";
        v7 = MEMORY[0x277D86220];
LABEL_11:
        _os_log_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
        goto LABEL_29;
      }

      goto LABEL_29;
    }
  }

  v8 = (a1 + 56);
  if (*(a1 + 56))
  {
LABEL_13:
    v11 = [v3 graph];
    v12 = [MEMORY[0x277CBEAA8] date];
    v13 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v13 setDay:-30];
    v14 = [MEMORY[0x277CBEA80] currentCalendar];
    v15 = [v14 dateByAddingComponents:v13 toDate:v12 options:0];
    v34 = v13;

    v36 = v4;
    v16 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v15 endDate:v12];
    v17 = v15;
    v18 = v12;
    v35 = [PGGraphMomentNodeCollection momentNodesForLocalDateInterval:v16 inGraph:v11];
    v33 = v16;
    v19 = v3;
    v20 = [objc_alloc(MEMORY[0x277D3C7B8]) initForSceneNetOnly:1];
    buf = 0;
    *&v57 = &buf;
    *(&v57 + 1) = 0x2020000000;
    v58 = 0;
    v21 = *(a1 + 56);
    v23 = *(a1 + 32);
    v22 = *(a1 + 40);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __87__PGExhaustiveMomentLabellingQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_260;
    v38[3] = &unk_278885500;
    p_buf = &buf;
    v32 = v36;
    v39 = v32;
    v41 = &v44;
    v42 = &v48;
    v43 = 0x3F847AE147AE147BLL;
    v24 = [v23 _questionsToAddWithMomentNodes:v35 graph:v11 localFactoryScore:v21 limit:v20 sceneTaxonomy:v22 alreadyGeneratedQuestions:v38 progressBlock:1.0];
    v3 = v19;
    v25 = v18;
    v26 = v17;
    if (*(v49 + 24) == 1)
    {
      v4 = v36;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_28:

        _Block_object_dispose(&buf, 8);
        goto LABEL_29;
      }

      v52 = 67109378;
      v53 = 79;
      v54 = 2080;
      v55 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Meaning/PGExhaustiveMomentLabellingQuestionFactory.m";
      v27 = MEMORY[0x277D86220];
    }

    else
    {
      [*(a1 + 40) unionSet:v24];
      if ([*(a1 + 40) count] >= *v8)
      {
        v4 = v36;
        if (!v36)
        {
          goto LABEL_28;
        }

        v30 = CFAbsoluteTimeGetCurrent();
        if (v30 - v45[3] < 0.01)
        {
          goto LABEL_28;
        }

        v45[3] = v30;
        v37 = 0;
        v32[2](v32, &v37, 1.0);
        v31 = *(v49 + 24) | v37;
        *(v49 + 24) = v31;
        if ((v31 & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          goto LABEL_28;
        }

        v52 = 67109378;
        v53 = 83;
        v54 = 2080;
        v55 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Meaning/PGExhaustiveMomentLabellingQuestionFactory.m";
        v27 = MEMORY[0x277D86220];
      }

      else
      {
        v4 = v36;
        if (!v36)
        {
          goto LABEL_28;
        }

        v28 = CFAbsoluteTimeGetCurrent();
        if (v28 - v45[3] < 0.01)
        {
          goto LABEL_28;
        }

        v45[3] = v28;
        v37 = 0;
        v32[2](v32, &v37, 1.0);
        v29 = *(v49 + 24) | v37;
        *(v49 + 24) = v29;
        if ((v29 & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          goto LABEL_28;
        }

        v52 = 67109378;
        v53 = 87;
        v54 = 2080;
        v55 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Meaning/PGExhaustiveMomentLabellingQuestionFactory.m";
        v27 = MEMORY[0x277D86220];
      }
    }

    _os_log_impl(&dword_22F0FC000, v27, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v52, 0x12u);
    goto LABEL_28;
  }

  v9 = CFAbsoluteTimeGetCurrent();
  if (v9 - v45[3] >= 0.01)
  {
    v45[3] = v9;
    LOBYTE(v52) = 0;
    v4[2](v4, &v52, 1.0);
    v10 = *(v49 + 24) | v52;
    *(v49 + 24) = v10;
    if ((v10 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      buf = 0x3804000202;
      LOWORD(v57) = 2080;
      *(&v57 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Meaning/PGExhaustiveMomentLabellingQuestionFactory.m";
      v7 = MEMORY[0x277D86220];
      goto LABEL_11;
    }
  }

LABEL_29:
  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v48, 8);
}

void __87__PGExhaustiveMomentLabellingQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_260(uint64_t a1, _BYTE *a2, double a3)
{
  *(*(*(a1 + 40) + 8) + 24) = a3 * 0.2 + 0.6;
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v6 = *(*(a1 + 48) + 8);
    if (Current - *(v6 + 24) >= *(a1 + 64))
    {
      *(v6 + 24) = Current;
      (*(*(a1 + 32) + 16))(*(*(*(a1 + 40) + 8) + 24));
      *(*(*(a1 + 56) + 8) + 24) = *(*(*(a1 + 56) + 8) + 24);
      if (*(*(*(a1 + 56) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

@end