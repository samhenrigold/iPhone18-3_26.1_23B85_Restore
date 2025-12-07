@interface PGMeaningQuestionFactory
- (NSSet)meaningLabelsForWhichToGenerateQuestions;
- (id)_dateNodesFromStartDate:(id)date toEndDate:(id)endDate inGraph:(id)graph;
- (id)_expandedDateNodesFromDateNode:(id)node;
- (id)_expandedDateNodesFromDateNodes:(id)nodes;
- (id)_inferMeaningLabelsForMomentNode:(id)node meaningLabels:(id)labels graph:(id)graph sceneTaxonomy:(id)taxonomy cache:(id)cache;
- (id)_looseCriteriasForCriteria:(id)criteria graph:(id)graph;
- (id)_meaningLabelsByParentMeaningLabels;
- (id)_questionsToAddFromMomentNodes:(id)nodes useRepresentativeAssets:(BOOL)assets localFactoryScore:(double)score alreadyGeneratedQuestions:(id)questions limit:(unint64_t)limit graph:(id)graph sceneTaxonomy:(id)taxonomy progressBlock:(id)self0;
- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block;
- (void)_updateMeaningQuestionsIfNeededWithProgressBlock:(id)block;
@end

@implementation PGMeaningQuestionFactory

- (id)_dateNodesFromStartDate:(id)date toEndDate:(id)endDate inGraph:(id)graph
{
  v7 = MEMORY[0x277CCA970];
  graphCopy = graph;
  endDateCopy = endDate;
  dateCopy = date;
  v11 = [[v7 alloc] initWithStartDate:dateCopy endDate:endDateCopy];

  v12 = [graphCopy dateNodesForLocalDateInterval:v11];

  return v12;
}

- (id)_expandedDateNodesFromDateNode:(id)node
{
  nodeCopy = node;
  localDate = [nodeCopy localDate];
  if ([MEMORY[0x277D276A8] isWeekendDate:localDate])
  {
    v18 = 0;
    v19 = 0.0;
    [MEMORY[0x277D276A8] rangeOfWeekendLocalStartDate:&v18 interval:&v19 containingDate:localDate];
    v6 = v19;
    v7 = v18;
    v8 = [v7 dateByAddingTimeInterval:v6];
    v9 = [MEMORY[0x277D27690] dateByAddingDays:-2 toDate:v7];

    v10 = [MEMORY[0x277D27690] dateByAddingDays:3 toDate:v8];
  }

  else
  {
    v19 = 0.0;
    v17 = 0;
    [MEMORY[0x277D276A8] nextWeekendLocalStartDate:&v17 interval:&v19 options:4 afterDate:localDate];
    v9 = v17;
    v15 = 0;
    v16 = 0.0;
    [MEMORY[0x277D276A8] nextWeekendLocalStartDate:&v15 interval:&v16 options:0 afterDate:localDate];
    v10 = [v15 dateByAddingTimeInterval:v16];
  }

  graph = [nodeCopy graph];

  v12 = [(PGMeaningQuestionFactory *)self _dateNodesFromStartDate:v9 toEndDate:v10 inGraph:graph];

  v13 = [v12 set];

  return v13;
}

- (id)_expandedDateNodesFromDateNodes:(id)nodes
{
  v18 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  v5 = [nodesCopy mutableCopy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = nodesCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(PGMeaningQuestionFactory *)self _expandedDateNodesFromDateNode:*(*(&v13 + 1) + 8 * i), v13];
        [v5 unionSet:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_looseCriteriasForCriteria:(id)criteria graph:(id)graph
{
  criteriaCopy = criteria;
  graphCopy = graph;
  v8 = [MEMORY[0x277CBEB58] set];
  identifier = [criteriaCopy identifier];
  scenesTrait = [criteriaCopy scenesTrait];
  if ([scenesTrait isMatchingRequired])
  {
    v11 = [PGMeaningfulEventSceneCollectionTrait alloc];
    nodes = [scenesTrait nodes];
    v13 = [(PGMeaningfulEventSceneCollectionTrait *)v11 initWithNodes:nodes];

    [(PGMeaningfulEventSceneCollectionTrait *)v13 setMinimumNumberOfHighConfidenceAssets:1];
    [(PGMeaningfulEventSceneCollectionTrait *)v13 setMinimumNumberOfNegativeHighConfidenceAssets:0];
    [(PGMeaningfulEventSceneCollectionTrait *)v13 setMinimumRatioOfHighConfidenceAssets:0.0];
    [(PGMeaningfulEventTrait *)v13 setMinimumScore:0.00001];
    v14 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:identifier minimumScore:graphCopy graph:0.00001];
    [(PGMeaningfulEventCriteria *)v14 setScenesTrait:v13];
    [(PGMeaningfulEventRequiredCriteria *)v14 setMustBeInteresting:0];
    [v8 addObject:v14];
  }

  roisTrait = [criteriaCopy roisTrait];
  isMatchingRequired = [roisTrait isMatchingRequired];

  if (isMatchingRequired)
  {
    v17 = [PGMeaningfulEventCollectionTrait alloc];
    roisTrait2 = [criteriaCopy roisTrait];
    nodes2 = [roisTrait2 nodes];
    v20 = [(PGMeaningfulEventCollectionTrait *)v17 initWithNodes:nodes2];

    [(PGMeaningfulEventTrait *)v20 setMinimumScore:0.00001];
    v21 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:identifier minimumScore:graphCopy graph:0.00001];
    [(PGMeaningfulEventCriteria *)v21 setRoisTrait:v20];
    [(PGMeaningfulEventRequiredCriteria *)v21 setMustBeInteresting:0];
    [v8 addObject:v21];
  }

  poisTrait = [criteriaCopy poisTrait];
  isMatchingRequired2 = [poisTrait isMatchingRequired];

  if (isMatchingRequired2)
  {
    v24 = [PGMeaningfulEventCollectionTrait alloc];
    poisTrait2 = [criteriaCopy poisTrait];
    nodes3 = [poisTrait2 nodes];
    v27 = [(PGMeaningfulEventCollectionTrait *)v24 initWithNodes:nodes3];

    [(PGMeaningfulEventTrait *)v27 setMinimumScore:0.00001];
    v28 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:identifier minimumScore:graphCopy graph:0.00001];
    [(PGMeaningfulEventCriteria *)v28 setPoisTrait:v27];
    [(PGMeaningfulEventRequiredCriteria *)v28 setMustBeInteresting:0];
    [v8 addObject:v28];
  }

  datesTrait = [criteriaCopy datesTrait];
  if ([datesTrait isMatchingRequired])
  {
    peopleTrait = [criteriaCopy peopleTrait];
    isMatchingRequired3 = [peopleTrait isMatchingRequired];

    if (!isMatchingRequired3)
    {
      goto LABEL_11;
    }

    datesTrait2 = [criteriaCopy datesTrait];
    nodes4 = [datesTrait2 nodes];
    v34 = [nodes4 set];
    datesTrait = [(PGMeaningQuestionFactory *)self _expandedDateNodesFromDateNodes:v34];

    v35 = [PGMeaningfulEventCollectionTrait alloc];
    v36 = [(MAElementCollection *)[PGGraphDateNodeCollection alloc] initWithSet:datesTrait graph:graphCopy];
    v37 = [(PGMeaningfulEventCollectionTrait *)v35 initWithNodes:v36];

    [(PGMeaningfulEventTrait *)v37 setMinimumScore:0.00001];
    v38 = [PGMeaningfulEventCollectionTrait alloc];
    peopleTrait2 = [criteriaCopy peopleTrait];
    nodes5 = [peopleTrait2 nodes];
    v41 = [(PGMeaningfulEventCollectionTrait *)v38 initWithNodes:nodes5];

    [(PGMeaningfulEventTrait *)v41 setMinimumScore:0.00001];
    v42 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:identifier minimumScore:graphCopy graph:0.00001];
    [(PGMeaningfulEventCriteria *)v42 setDatesTrait:v37];
    [(PGMeaningfulEventCriteria *)v42 setPeopleTrait:v41];
    [(PGMeaningfulEventRequiredCriteria *)v42 setMustBeInteresting:0];
    [v8 addObject:v42];
  }

LABEL_11:
  socialGroupsTrait = [criteriaCopy socialGroupsTrait];
  isMatchingRequired4 = [socialGroupsTrait isMatchingRequired];

  if (isMatchingRequired4)
  {
    v45 = [PGMeaningfulEventCollectionTrait alloc];
    socialGroupsTrait2 = [criteriaCopy socialGroupsTrait];
    nodes6 = [socialGroupsTrait2 nodes];
    v48 = [(PGMeaningfulEventCollectionTrait *)v45 initWithNodes:nodes6];

    [(PGMeaningfulEventTrait *)v48 setMinimumScore:0.00001];
    v49 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:identifier minimumScore:graphCopy graph:0.00001];
    [(PGMeaningfulEventCriteria *)v49 setSocialGroupsTrait:v48];
    [(PGMeaningfulEventRequiredCriteria *)v49 setMustBeInteresting:0];
    [v8 addObject:v49];
  }

  locationMobilityTrait = [criteriaCopy locationMobilityTrait];
  isMatchingRequired5 = [locationMobilityTrait isMatchingRequired];

  if (isMatchingRequired5)
  {
    v52 = [PGMeaningfulEventLocationMobilityTrait alloc];
    locationMobilityTrait2 = [criteriaCopy locationMobilityTrait];
    v54 = -[PGMeaningfulEventLocationMobilityTrait initWithMobility:](v52, "initWithMobility:", [locationMobilityTrait2 value]);

    [(PGMeaningfulEventTrait *)v54 setMinimumScore:0.00001];
    v55 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:identifier minimumScore:graphCopy graph:0.00001];
    [(PGMeaningfulEventCriteria *)v55 setLocationMobilityTrait:v54];
    [(PGMeaningfulEventRequiredCriteria *)v55 setMustBeInteresting:0];
    [v8 addObject:v55];
  }

  publicEventCategoriesTrait = [criteriaCopy publicEventCategoriesTrait];
  isMatchingRequired6 = [publicEventCategoriesTrait isMatchingRequired];

  if (isMatchingRequired6)
  {
    v58 = [PGMeaningfulEventCollectionTrait alloc];
    publicEventCategoriesTrait2 = [criteriaCopy publicEventCategoriesTrait];
    nodes7 = [publicEventCategoriesTrait2 nodes];
    v61 = [(PGMeaningfulEventCollectionTrait *)v58 initWithNodes:nodes7];

    [(PGMeaningfulEventTrait *)v61 setMinimumScore:0.00001];
    v62 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:identifier minimumScore:graphCopy graph:0.00001];
    [(PGMeaningfulEventCriteria *)v62 setPublicEventCategoriesTrait:v61];
    [(PGMeaningfulEventRequiredCriteria *)v62 setMustBeInteresting:0];
    [v8 addObject:v62];
  }

  return v8;
}

- (id)_inferMeaningLabelsForMomentNode:(id)node meaningLabels:(id)labels graph:(id)graph sceneTaxonomy:(id)taxonomy cache:(id)cache
{
  v36 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  labelsCopy = labels;
  graphCopy = graph;
  taxonomyCopy = taxonomy;
  cacheCopy = cache;
  workingContext = [(PGSurveyQuestionFactory *)self workingContext];
  serviceManager = [workingContext serviceManager];

  v27 = [MEMORY[0x277CBEB58] set];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = labelsCopy;
  v17 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v31;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v30 + 1) + 8 * i);
        v34 = v21;
        v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
        v23 = [PGMeaningfulEventLooseRequiredCriteriaFactory requiredCriteriaForIdentifiers:v22 graph:graphCopy sceneTaxonomy:taxonomyCopy];

        v24 = [PGMeaningfulEventProcessor processRequiredCriteria:v23 forMoment:nodeCopy meaningfulEventProcessorCache:cacheCopy serviceManager:serviceManager];
        if ([v24 count])
        {
          [v27 addObject:v21];
        }
      }

      v18 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v18);
  }

  return v27;
}

- (NSSet)meaningLabelsForWhichToGenerateQuestions
{
  v9[24] = *MEMORY[0x277D85DE8];
  meaningLabelsForWhichToGenerateQuestions = self->_meaningLabelsForWhichToGenerateQuestions;
  if (!meaningLabelsForWhichToGenerateQuestions)
  {
    v4 = MEMORY[0x277CBEB98];
    v9[0] = @"Wedding";
    v9[1] = @"Birthday";
    v9[2] = @"Anniversary";
    v9[3] = @"Celebration";
    v9[4] = @"Concert";
    v9[5] = @"Festival";
    v9[6] = @"Theater";
    v9[7] = @"Dance";
    v9[8] = @"Museum";
    v9[9] = @"AmusementPark";
    v9[10] = @"Performance";
    v9[11] = @"Hiking";
    v9[12] = @"Climbing";
    v9[13] = @"Beaching";
    v9[14] = @"SportEvent";
    v9[15] = @"WinterSport";
    v9[16] = @"Diving";
    v9[17] = @"Lunch";
    v9[18] = @"Dinner";
    v9[19] = @"Breakfast";
    v9[20] = @"Restaurant";
    v9[21] = @"NightOut";
    v9[22] = @"Entertainment";
    v9[23] = @"HolidayEvent";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:24];
    v6 = [v4 setWithArray:v5];
    v7 = self->_meaningLabelsForWhichToGenerateQuestions;
    self->_meaningLabelsForWhichToGenerateQuestions = v6;

    meaningLabelsForWhichToGenerateQuestions = self->_meaningLabelsForWhichToGenerateQuestions;
  }

  return meaningLabelsForWhichToGenerateQuestions;
}

- (id)_questionsToAddFromMomentNodes:(id)nodes useRepresentativeAssets:(BOOL)assets localFactoryScore:(double)score alreadyGeneratedQuestions:(id)questions limit:(unint64_t)limit graph:(id)graph sceneTaxonomy:(id)taxonomy progressBlock:(id)self0
{
  v107 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  questionsCopy = questions;
  graphCopy = graph;
  taxonomyCopy = taxonomy;
  blockCopy = block;
  v16 = _Block_copy(blockCopy);
  v60 = [MEMORY[0x277CBEB98] set];
  v17 = 0.0;
  if (v16)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current >= 0.01)
    {
      v98 = 0;
      v16[2](v16, &v98, 0.0);
      if (v98 == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v104 = 225;
          v105 = 2080;
          v106 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Meaning/PGMeaningQuestionFactory.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v19 = v60;
        goto LABEL_82;
      }

      v17 = Current;
    }
  }

  v20 = [MEMORY[0x277CBEB58] set];
  v59 = nodesCopy;
  if ([nodesCopy count])
  {
    v82 = [questionsCopy count];
    v21 = objc_alloc(MEMORY[0x277D3C790]);
    workingContext = [(PGSurveyQuestionFactory *)self workingContext];
    photoLibrary = [workingContext photoLibrary];
    v66 = [v21 initWithPhotoLibrary:photoLibrary];

    v24 = [PGMeaningfulEventProcessorCache alloc];
    v25 = [(MAElementCollection *)[PGGraphMomentNodeCollection alloc] initWithArray:nodesCopy graph:graphCopy];
    v76 = [(PGMeaningfulEventProcessorCache *)v24 initWithMomentNodes:v25];

    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    obj = nodesCopy;
    v75 = [obj countByEnumeratingWithState:&v94 objects:v102 count:16];
    if (v75)
    {
      v81 = 0;
      v69 = *v95;
      v26 = &selRef_assetIsSafeForWidgetDisplay_;
      v61 = v60;
      v58 = blockCopy;
      while (2)
      {
        v27 = 0;
        v64 = v26[375];
        do
        {
          if (*v95 != v69)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v94 + 1) + 8 * v27);
          v29 = objc_autoreleasePoolPush();
          meaningLabelsForWhichToGenerateQuestions = [(PGMeaningQuestionFactory *)self meaningLabelsForWhichToGenerateQuestions];
          v31 = [(PGMeaningQuestionFactory *)self _inferMeaningLabelsForMomentNode:v28 meaningLabels:meaningLabelsForWhichToGenerateQuestions graph:graphCopy sceneTaxonomy:taxonomyCopy cache:v76];
          if ([v31 count])
          {
            v79 = v27;
            context = v29;
            if (assets)
            {
              v32 = [(PGSurveyQuestionFactory *)self representativeAssetsFromMomentNode:v28 curationContext:v66];
              allObjects = [v32 allObjects];
            }

            else
            {
              allObjects = [(PGSurveyQuestionFactory *)self assetsFromMomentNode:v28 curationContext:v66];
            }

            v34 = 1;
            v35 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
            v101 = v35;
            v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v101 count:1];
            v37 = [allObjects sortedArrayUsingDescriptors:v36];

            allObjects2 = [v31 allObjects];
            v39 = [allObjects2 sortedArrayUsingSelector:v64];

            v92 = 0u;
            v93 = 0u;
            v90 = 0u;
            v91 = 0u;
            v40 = v37;
            v67 = [v40 countByEnumeratingWithState:&v90 objects:v100 count:16];
            if (v67)
            {
              v41 = *v91;
              v73 = v31;
              v74 = meaningLabelsForWhichToGenerateQuestions;
              v71 = v39;
              v72 = allObjects;
              v70 = v40;
              v63 = *v91;
              do
              {
                v42 = 0;
                do
                {
                  if (*v91 != v41)
                  {
                    objc_enumerationMutation(v40);
                  }

                  v68 = v42;
                  v43 = *(*(&v90 + 1) + 8 * v42);
                  v86 = 0u;
                  v87 = 0u;
                  v88 = 0u;
                  v89 = 0u;
                  v44 = v39;
                  v45 = [v44 countByEnumeratingWithState:&v86 objects:v99 count:16];
                  if (!v45)
                  {
                    goto LABEL_41;
                  }

                  v46 = v45;
                  v47 = *v87;
                  while (2)
                  {
                    for (i = 0; i != v46; ++i)
                    {
                      if (*v87 != v47)
                      {
                        objc_enumerationMutation(v44);
                      }

                      v49 = *(*(&v86 + 1) + 8 * i);
                      uuid = [v43 uuid];
                      v51 = [[PGMeaningQuestion alloc] initWithMeaningLabel:v49 assetUUID:uuid localFactoryScore:score];
                      if ([(PGSurveyQuestionFactory *)self shouldAddQuestion:v51 toAlreadyGeneratedQuestions:questionsCopy])
                      {
                        [v20 addObject:v51];
                      }

                      v52 = [v20 count];
                      if (v16)
                      {
                        v53 = v52;
                        v54 = CFAbsoluteTimeGetCurrent();
                        if (v54 - v17 >= 0.01)
                        {
                          v98 = 0;
                          v16[2](v16, &v98, v53 / limit);
                          if (v98 | v81 & 1)
                          {
                            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                            {
                              *buf = 67109378;
                              v104 = 263;
                              v105 = 2080;
                              v106 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Meaning/PGMeaningQuestionFactory.m";
                              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                            }

                            v61 = v60;
                            v81 = 1;
                            goto LABEL_56;
                          }

                          v81 = 0;
                        }

                        else
                        {
                          v54 = v17;
                        }

                        if ([v20 count] + v82 >= limit)
                        {
                          v17 = CFAbsoluteTimeGetCurrent();
                          if (v17 - v54 < 0.01)
                          {
                            v17 = v54;
                            goto LABEL_54;
                          }

                          v98 = 0;
                          v16[2](v16, &v98, 1.0);
                          if (v98 | v81 & 1)
                          {
                            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                            {
                              *buf = 67109378;
                              v104 = 267;
                              v105 = 2080;
                              v106 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Meaning/PGMeaningQuestionFactory.m";
                              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                            }

                            v61 = v60;
                            v81 = 1;
                          }

                          else
                          {
                            v81 = 0;
LABEL_54:
                            v61 = v20;
                          }

                          v54 = v17;
LABEL_56:
                          v31 = v73;
                          meaningLabelsForWhichToGenerateQuestions = v74;
                          v39 = v71;
                          allObjects = v72;
                          v40 = v70;

                          v34 = 0;
                          v17 = v54;
                          goto LABEL_57;
                        }

                        v17 = v54;
                      }

                      else if ([v20 count] + v82 >= limit)
                      {
                        goto LABEL_54;
                      }
                    }

                    v46 = [v44 countByEnumeratingWithState:&v86 objects:v99 count:16];
                    if (v46)
                    {
                      continue;
                    }

                    break;
                  }

LABEL_41:

                  v42 = v68 + 1;
                  v31 = v73;
                  meaningLabelsForWhichToGenerateQuestions = v74;
                  v39 = v71;
                  allObjects = v72;
                  v40 = v70;
                  v41 = v63;
                }

                while (v68 + 1 != v67);
                v34 = 1;
                v67 = [v70 countByEnumeratingWithState:&v90 objects:v100 count:16];
              }

              while (v67);
            }

LABEL_57:

            if (!v34)
            {

              objc_autoreleasePoolPop(context);
              blockCopy = v58;
              goto LABEL_80;
            }

            v27 = v79;
            v29 = context;
          }

          objc_autoreleasePoolPop(v29);
          ++v27;
        }

        while (v27 != v75);
        blockCopy = v58;
        v75 = [obj countByEnumeratingWithState:&v94 objects:v102 count:16];
        v26 = &selRef_assetIsSafeForWidgetDisplay_;
        if (v75)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v81 = 0;
    }

    if (v16 && CFAbsoluteTimeGetCurrent() - v17 >= 0.01 && (v98 = 0, v16[2](v16, &v98, 1.0), v98 | v81 & 1))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v104 = 275;
        v105 = 2080;
        v106 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Meaning/PGMeaningQuestionFactory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v56 = v60;
    }

    else
    {
      v56 = v20;
    }

    v61 = v56;
LABEL_80:
  }

  else
  {
    if (v16 && CFAbsoluteTimeGetCurrent() - v17 >= 0.01 && (v98 = 0, v16[2](v16, &v98, 1.0), v98))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v104 = 232;
        v105 = 2080;
        v106 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Meaning/PGMeaningQuestionFactory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v55 = v60;
    }

    else
    {
      v55 = [MEMORY[0x277CBEB98] set];
    }

    v61 = v55;
  }

  nodesCopy = v59;
  v19 = v61;
LABEL_82:

  return v19;
}

- (id)_meaningLabelsByParentMeaningLabels
{
  v17[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v15 = @"Wedding";
  v16[0] = @"Celebration";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v4 = [v2 setWithArray:v3];
  v17[0] = v4;
  v16[1] = @"Entertainment";
  v5 = MEMORY[0x277CBEB98];
  v14[0] = @"AmusementPark";
  v14[1] = @"Festival";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v7 = [v5 setWithArray:v6];
  v17[1] = v7;
  v16[2] = @"Performance";
  v8 = MEMORY[0x277CBEB98];
  v13 = @"Concert";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  v10 = [v8 setWithArray:v9];
  v17[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];

  return v11;
}

- (void)_updateMeaningQuestionsIfNeededWithProgressBlock:(id)block
{
  v65 = *MEMORY[0x277D85DE8];
  aBlock = block;
  existingQuestionsByEntityIdentifier = [(PGSurveyQuestionFactory *)self existingQuestionsByEntityIdentifier];
  v5 = [existingQuestionsByEntityIdentifier count];

  if (v5)
  {
    v6 = _Block_copy(aBlock);
    v56 = 0;
    v57 = &v56;
    v58 = 0x2020000000;
    v59 = 0;
    v52 = 0;
    v53 = &v52;
    v54 = 0x2020000000;
    v55 = 0;
    if (v6 && (v7 = CFAbsoluteTimeGetCurrent(), v7 - v53[3] >= 0.01) && (v53[3] = v7, LOBYTE(v60) = 0, (*(v6 + 2))(v6, &v60, 0.0), v8 = *(v57 + 24) | v60, *(v57 + 24) = v8, (v8 & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        buf = 0x7504000202;
        LOWORD(v63) = 2080;
        *(&v63 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Meaning/PGMeaningQuestionFactory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
      }
    }

    else
    {
      buf = 0;
      *&v63 = &buf;
      *(&v63 + 1) = 0x2020000000;
      v64 = 0;
      _meaningLabelsByParentMeaningLabels = [(PGMeaningQuestionFactory *)self _meaningLabelsByParentMeaningLabels];
      v10 = MEMORY[0x277CBEB98];
      allKeys = [_meaningLabelsByParentMeaningLabels allKeys];
      v12 = [v10 setWithArray:allKeys];

      array = [MEMORY[0x277CBEB18] array];
      array2 = [MEMORY[0x277CBEB18] array];
      existingQuestionsByEntityIdentifier2 = [(PGSurveyQuestionFactory *)self existingQuestionsByEntityIdentifier];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __77__PGMeaningQuestionFactory__updateMeaningQuestionsIfNeededWithProgressBlock___block_invoke;
      v41[3] = &unk_278885550;
      p_buf = &buf;
      v50 = 1.0 / v5;
      v16 = v6;
      v46 = v16;
      v51 = 0x3F847AE147AE147BLL;
      v48 = &v52;
      v49 = &v56;
      v17 = v12;
      v42 = v17;
      v18 = _meaningLabelsByParentMeaningLabels;
      v43 = v18;
      v19 = array;
      v44 = v19;
      v20 = array2;
      v45 = v20;
      [existingQuestionsByEntityIdentifier2 enumerateKeysAndObjectsUsingBlock:v41];

      if (*(v57 + 24) == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v60 = 67109378;
          LODWORD(v61[0]) = 171;
          WORD2(v61[0]) = 2080;
          *(v61 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Meaning/PGMeaningQuestionFactory.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v60, 0x12u);
        }
      }

      else if ([v20 count] || objc_msgSend(v19, "count"))
      {
        workingContext = [(PGSurveyQuestionFactory *)self workingContext];
        photoLibrary = [workingContext photoLibrary];

        date = [MEMORY[0x277CBEAA8] date];
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __77__PGMeaningQuestionFactory__updateMeaningQuestionsIfNeededWithProgressBlock___block_invoke_264;
        v36[3] = &unk_278889470;
        v37 = v20;
        v23 = date;
        v38 = v23;
        selfCopy = self;
        v40 = v19;
        v35 = 0;
        v24 = [photoLibrary performChangesAndWait:v36 error:&v35];
        v31 = v35;
        if (v24)
        {
          v25 = +[PGLogging sharedLogging];
          loggingConnection = [v25 loggingConnection];

          if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
          {
            LOWORD(v60) = 0;
            _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[Questions] Succeeded persisting meaning questions", &v60, 2u);
          }
        }

        else
        {
          v27 = +[PGLogging sharedLogging];
          loggingConnection = [v27 loggingConnection];

          if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
          {
            v30 = [v31 description];
            v60 = 138412290;
            v61[0] = v30;
            _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[Questions] Error performing library changes for meaning questions: %@", &v60, 0xCu);
          }
        }

        if (v6)
        {
          Current = CFAbsoluteTimeGetCurrent();
          if (Current - v53[3] >= 0.01)
          {
            v53[3] = Current;
            v34 = 0;
            (*(v16 + 2))(v16, &v34, 1.0);
            v29 = *(v57 + 24) | v34;
            *(v57 + 24) = v29;
            if ((v29 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v60 = 67109378;
              LODWORD(v61[0]) = 204;
              WORD2(v61[0]) = 2080;
              *(v61 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Meaning/PGMeaningQuestionFactory.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v60, 0x12u);
            }
          }
        }
      }

      _Block_object_dispose(&buf, 8);
    }

    _Block_object_dispose(&v52, 8);
    _Block_object_dispose(&v56, 8);
  }
}

void __77__PGMeaningQuestionFactory__updateMeaningQuestionsIfNeededWithProgressBlock___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  *(*(*(a1 + 72) + 8) + 24) = *(a1 + 96) + *(*(*(a1 + 72) + 8) + 24);
  if (*(a1 + 64) && (Current = CFAbsoluteTimeGetCurrent(), v10 = *(*(a1 + 80) + 8), Current - *(v10 + 24) >= *(a1 + 104)) && (*(v10 + 24) = Current, v35 = 0, (*(*(a1 + 64) + 16))(*(*(*(a1 + 72) + 8) + 24)), *(*(*(a1 + 88) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24), *(*(*(a1 + 88) + 8) + 24) == 1))
  {
    *a4 = 1;
  }

  else
  {
    v23 = v7;
    v11 = [MEMORY[0x277CBEB58] set];
    v24 = [MEMORY[0x277CBEB38] dictionary];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v22 = v8;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v32;
      v16 = *MEMORY[0x277D3C948];
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v32 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v31 + 1) + 8 * i);
          v19 = [v18 additionalInfo];
          v20 = [v19 objectForKeyedSubscript:v16];

          if (v20)
          {
            if ([v18 state] == 2)
            {
              [v11 addObject:v20];
            }

            else if ([*(a1 + 32) containsObject:v20])
            {
              [v24 setObject:v18 forKeyedSubscript:v20];
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v14);
    }

    v7 = v23;
    if ([v11 count])
    {
      v21 = *(a1 + 40);
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __77__PGMeaningQuestionFactory__updateMeaningQuestionsIfNeededWithProgressBlock___block_invoke_2;
      v25[3] = &unk_278885528;
      v26 = v11;
      v27 = v24;
      v28 = *(a1 + 48);
      v29 = v23;
      v30 = *(a1 + 56);
      [v21 enumerateKeysAndObjectsUsingBlock:v25];
    }

    v8 = v22;
  }
}

void __77__PGMeaningQuestionFactory__updateMeaningQuestionsIfNeededWithProgressBlock___block_invoke_264(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v17 + 1) + 8 * v6++) persistWithCreationDate:*(a1 + 40) questionVersion:{objc_msgSend(*(a1 + 48), "questionVersion")}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v4);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(a1 + 56);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [MEMORY[0x277CD9978] changeRequestForQuestion:{*(*(&v13 + 1) + 8 * v11), v13}];
        [v12 setState:2];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v9);
  }
}

void __77__PGMeaningQuestionFactory__updateMeaningQuestionsIfNeededWithProgressBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (([*(a1 + 32) containsObject:v8] & 1) == 0 && objc_msgSend(*(a1 + 32), "intersectsSet:", v5))
  {
    v6 = [*(a1 + 40) objectForKeyedSubscript:v8];
    if (v6)
    {
      [*(a1 + 48) addObject:v6];
    }

    else
    {
      v7 = [[PGMeaningQuestion alloc] initWithConfirmedMeaningLabel:v8 assetUUID:*(a1 + 56)];
      [*(a1 + 64) addObject:v7];
    }
  }
}

- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block
{
  blockCopy = block;
  v7 = [MEMORY[0x277CBEB58] set];
  workingContext = [(PGSurveyQuestionFactory *)self workingContext];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __69__PGMeaningQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke;
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

void __69__PGMeaningQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v72 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _Block_copy(*(a1 + 48));
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  if (!v4 || (v5 = CFAbsoluteTimeGetCurrent(), v5 - v58[3] < 0.01) || (v58[3] = v5, v65[0] = 0, (*(v4 + 2))(v4, v65, 0.0), v6 = *(v62 + 24) | v65[0], *(v62 + 24) = v6, (v6 & 1) == 0))
  {
    *buf = 0;
    *&v70 = buf;
    *(&v70 + 1) = 0x2020000000;
    v71 = 0;
    if (([*(a1 + 32) ignoreExistingQuestions] & 1) == 0)
    {
      v7 = *(a1 + 32);
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __69__PGMeaningQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_251;
      v51[3] = &unk_278885500;
      v53 = buf;
      v52 = v4;
      v54 = &v57;
      v55 = &v61;
      v56 = 0x3F847AE147AE147BLL;
      [v7 _updateMeaningQuestionsIfNeededWithProgressBlock:v51];
    }

    if (*(v62 + 24) == 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_47:
        _Block_object_dispose(buf, 8);
        goto LABEL_48;
      }

      *v65 = 67109378;
      v66 = 63;
      v67 = 2080;
      v68 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Meaning/PGMeaningQuestionFactory.m";
      v8 = MEMORY[0x277D86220];
LABEL_11:
      _os_log_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v65, 0x12u);
      goto LABEL_47;
    }

    if (!*(a1 + 56))
    {
      if (!v4)
      {
        goto LABEL_47;
      }

      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v58[3] < 0.01)
      {
        goto LABEL_47;
      }

      v58[3] = Current;
      v50 = 0;
      (*(v4 + 2))(v4, &v50, 1.0);
      v20 = *(v62 + 24) | v50;
      *(v62 + 24) = v20;
      if ((v20 & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_47;
      }

      *v65 = 67109378;
      v66 = 67;
      v67 = 2080;
      v68 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Meaning/PGMeaningQuestionFactory.m";
      v8 = MEMORY[0x277D86220];
      goto LABEL_11;
    }

    v9 = [v3 graph];
    v36 = [objc_alloc(MEMORY[0x277D3C7B8]) initForSceneNetOnly:1];
    v10 = [v9 meaningfulMomentNodesSortedByDate];
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = *(a1 + 56);
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __69__PGMeaningQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_254;
    v44[3] = &unk_278885500;
    v46 = buf;
    v14 = v4;
    v45 = v14;
    v47 = &v57;
    v48 = &v61;
    v49 = 0x3F847AE147AE147BLL;
    v37 = v10;
    v15 = v13;
    v16 = v36;
    v17 = [v11 _questionsToAddFromMomentNodes:v10 useRepresentativeAssets:1 localFactoryScore:v12 alreadyGeneratedQuestions:v15 limit:v9 graph:v36 sceneTaxonomy:1.0 progressBlock:v44];
    if (*(v62 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v65 = 67109378;
        v66 = 80;
        v67 = 2080;
        v68 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Meaning/PGMeaningQuestionFactory.m";
        v18 = MEMORY[0x277D86220];
LABEL_16:
        _os_log_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v65, 0x12u);
        goto LABEL_32;
      }

      goto LABEL_32;
    }

    [*(a1 + 40) unionSet:v17];
    v21 = [*(a1 + 40) count];
    v22 = *(a1 + 56);
    if (v21 >= v22)
    {
      v28 = v10;
      if (!v4)
      {
        v16 = v36;
        goto LABEL_46;
      }

      v30 = CFAbsoluteTimeGetCurrent();
      v16 = v36;
      if (v30 - v58[3] >= 0.01)
      {
        v58[3] = v30;
        v50 = 0;
        (*(v14 + 2))(v14, &v50, 1.0);
        v31 = *(v62 + 24) | v50;
        *(v62 + 24) = v31;
        if ((v31 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *v65 = 67109378;
          v66 = 84;
          v67 = 2080;
          v68 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Meaning/PGMeaningQuestionFactory.m";
          v18 = MEMORY[0x277D86220];
          goto LABEL_16;
        }
      }

LABEL_32:
      v28 = v10;
LABEL_46:

      goto LABEL_47;
    }

    v24 = *(a1 + 32);
    v23 = *(a1 + 40);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __69__PGMeaningQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_255;
    v38[3] = &unk_278885500;
    v40 = buf;
    v25 = v14;
    v39 = v25;
    v41 = &v57;
    v42 = &v61;
    v43 = 0x3F847AE147AE147BLL;
    v26 = v22;
    v16 = v36;
    v27 = [v24 _questionsToAddFromMomentNodes:v37 useRepresentativeAssets:0 localFactoryScore:v23 alreadyGeneratedQuestions:v26 limit:v9 graph:v36 sceneTaxonomy:0.5 progressBlock:v38];

    v28 = v37;
    if (*(v62 + 24) == 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_45:

        v17 = v27;
        goto LABEL_46;
      }

      *v65 = 67109378;
      v66 = 92;
      v67 = 2080;
      v68 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Meaning/PGMeaningQuestionFactory.m";
      v29 = MEMORY[0x277D86220];
    }

    else
    {
      [*(a1 + 40) unionSet:v27];
      if ([*(a1 + 40) count] >= *(a1 + 56))
      {
        v28 = v37;
        if (!v4)
        {
          goto LABEL_45;
        }

        v34 = CFAbsoluteTimeGetCurrent();
        if (v34 - v58[3] < 0.01)
        {
          goto LABEL_45;
        }

        v58[3] = v34;
        v50 = 0;
        (*(v25 + 2))(v25, &v50, 1.0);
        v35 = *(v62 + 24) | v50;
        *(v62 + 24) = v35;
        if ((v35 & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          goto LABEL_45;
        }

        *v65 = 67109378;
        v66 = 96;
        v67 = 2080;
        v68 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Meaning/PGMeaningQuestionFactory.m";
        v29 = MEMORY[0x277D86220];
      }

      else
      {
        v28 = v37;
        if (!v4)
        {
          goto LABEL_45;
        }

        v32 = CFAbsoluteTimeGetCurrent();
        if (v32 - v58[3] < 0.01)
        {
          goto LABEL_45;
        }

        v58[3] = v32;
        v50 = 0;
        (*(v25 + 2))(v25, &v50, 1.0);
        v33 = *(v62 + 24) | v50;
        *(v62 + 24) = v33;
        if ((v33 & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          goto LABEL_45;
        }

        *v65 = 67109378;
        v66 = 100;
        v67 = 2080;
        v68 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Meaning/PGMeaningQuestionFactory.m";
        v29 = MEMORY[0x277D86220];
      }
    }

    _os_log_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v65, 0x12u);
    goto LABEL_45;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *&buf[4] = 53;
    LOWORD(v70) = 2080;
    *(&v70 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Meaning/PGMeaningQuestionFactory.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_48:
  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v61, 8);
}

void __69__PGMeaningQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_251(uint64_t a1, _BYTE *a2, double a3)
{
  *(*(*(a1 + 40) + 8) + 24) = a3 * 0.2;
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

void __69__PGMeaningQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_254(uint64_t a1, _BYTE *a2, double a3)
{
  *(*(*(a1 + 40) + 8) + 24) = a3 * 0.2 + 0.2;
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

void __69__PGMeaningQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_255(uint64_t a1, _BYTE *a2, double a3)
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