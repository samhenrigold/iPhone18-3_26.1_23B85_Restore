@interface PGMemoryPlanner
+ (BOOL)_isFallbackMemory:(id)memory;
+ (BOOL)canElectEndOfYearTriggeredMemory:(id)memory withAlreadyElectedMemories:(id)memories;
+ (BOOL)canElectTriggeredMemory:(id)memory withAlreadyElectedMemories:(id)memories;
+ (double)_momentCommonalityScoreComparingMomentNodes:(id)nodes toMomentNodes:(id)momentNodes;
+ (id)groupFutureMemoriesPerTrigger:(id)trigger;
- (BOOL)tooSoonToElectMemory:(id)memory;
- (PGMemoryPlanner)initWithPastSource:(id)source futureSource:(id)futureSource configuration:(id)configuration graph:(id)graph loggingConnection:(id)connection progressReporter:(id)reporter;
- (double)_commonalityScoreComparingMemory:(id)memory toMemory:(id)toMemory momentWeight:(double)weight featureWeight:(double)featureWeight memoryCategoryWeight:(double)categoryWeight;
- (double)avoidScoreForMemory:(id)memory;
- (double)categorySimilarityScoreBetweenMemory:(id)memory andMemory:(id)andMemory;
- (double)collisionScoreForMemory:(id)memory;
- (double)featureCommonalityScoreComparingFeatureNodes:(id)nodes toFeatureNodes:(id)featureNodes;
- (double)timeDecayScoreForTriggeredMemory:(id)memory numberOfDaysToLook:(unint64_t)look;
- (id)_overallDateIntervalForTriggeredMemories:(id)memories;
- (id)creationDateOfLastMemory;
- (id)filterMemories:(id)memories forTriggerCollisionsWithTriggerHandler:(id)handler graph:(id)graph progressReporter:(id)reporter;
- (id)maximumTimeDecayScoreByPastMemoryIdentifier;
- (id)similarCategorySets;
- (id)similarFeatureSets;
- (id)timeDecayScoreByPastMemoryCreationDate;
- (unint64_t)numberOfDaysSinceMemoryUpgrade;
- (void)_computeIfNeededTimeDecayScoreForPastMemories;
@end

@implementation PGMemoryPlanner

- (id)similarFeatureSets
{
  v12[1] = *MEMORY[0x277D85DE8];
  similarFeatureSets = self->_similarFeatureSets;
  if (!similarFeatureSets)
  {
    v4 = MEMORY[0x277CBEB98];
    v11[0] = @"PlayTime";
    v11[1] = @"PersonToys";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
    v6 = [v4 setWithArray:v5];
    v12[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v8 = [v4 setWithArray:v7];
    v9 = self->_similarFeatureSets;
    self->_similarFeatureSets = v8;

    similarFeatureSets = self->_similarFeatureSets;
  }

  return similarFeatureSets;
}

- (id)similarCategorySets
{
  v14[5] = *MEMORY[0x277D85DE8];
  similarCategorySets = self->_similarCategorySets;
  if (!similarCategorySets)
  {
    v4 = MEMORY[0x277CBEB98];
    v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_284485838];
    v6 = [MEMORY[0x277CBEB98] setWithArray:{&unk_284485850, v5}];
    v14[1] = v6;
    v7 = [MEMORY[0x277CBEB98] setWithArray:&unk_284485868];
    v14[2] = v7;
    v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_284485880];
    v14[3] = v8;
    v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_284485898];
    v14[4] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:5];
    v11 = [v4 setWithArray:v10];
    v12 = self->_similarCategorySets;
    self->_similarCategorySets = v11;

    similarCategorySets = self->_similarCategorySets;
  }

  return similarCategorySets;
}

- (double)categorySimilarityScoreBetweenMemory:(id)memory andMemory:(id)andMemory
{
  v42 = *MEMORY[0x277D85DE8];
  memoryCopy = memory;
  andMemoryCopy = andMemory;
  memoryCategory = [memoryCopy memoryCategory];
  memoryCategory2 = [andMemoryCopy memoryCategory];
  v10 = [MEMORY[0x277CBEB98] setWithArray:&unk_284485820];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:memoryCategory];
  if ([v10 containsObject:v11])
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:memoryCategory2];
    v13 = v10;
    v14 = [v10 containsObject:v12];

    if (v14)
    {
      memoryFeatureNodes = [memoryCopy memoryFeatureNodes];
      v16 = [(PGGraphNodeCollection *)PGGraphMeaningNodeCollection subsetInCollection:memoryFeatureNodes];

      parentMeaningNodes = [v16 parentMeaningNodes];
      v18 = [v16 collectionByFormingUnionWith:parentMeaningNodes];

      memoryFeatureNodes2 = [andMemoryCopy memoryFeatureNodes];
      v20 = [(PGGraphNodeCollection *)PGGraphMeaningNodeCollection subsetInCollection:memoryFeatureNodes2];

      parentMeaningNodes2 = [v20 parentMeaningNodes];
      v22 = [v20 collectionByFormingUnionWith:parentMeaningNodes2];

      if ([v18 intersectsCollection:v22])
      {
        v23 = 1.0;
      }

      else
      {
        v23 = 0.0;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v13 = v10;
  }

  v23 = 1.0;
  if (memoryCategory != memoryCategory2)
  {
    [(PGMemoryPlanner *)self similarCategorySets];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v24 = v40 = 0u;
    v25 = [v24 countByEnumeratingWithState:&v37 objects:v41 count:16];
    v23 = 0.0;
    if (v25)
    {
      v26 = v25;
      v34 = v13;
      v35 = andMemoryCopy;
      v36 = memoryCopy;
      v27 = *v38;
      do
      {
        v28 = 0;
        do
        {
          if (*v38 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v37 + 1) + 8 * v28);
          v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:memoryCategory];
          if ([v29 containsObject:v30])
          {
            v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:memoryCategory2];
            v32 = [v29 containsObject:v31];

            if (v32)
            {
              v23 = 1.0;
              goto LABEL_20;
            }
          }

          else
          {
          }

          ++v28;
        }

        while (v26 != v28);
        v26 = [v24 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v26);
LABEL_20:
      andMemoryCopy = v35;
      memoryCopy = v36;
      v13 = v34;
    }
  }

LABEL_22:

  return v23;
}

- (double)_commonalityScoreComparingMemory:(id)memory toMemory:(id)toMemory momentWeight:(double)weight featureWeight:(double)featureWeight memoryCategoryWeight:(double)categoryWeight
{
  memoryCopy = memory;
  toMemoryCopy = toMemory;
  v14 = 0.0;
  v15 = 0.0;
  if (weight > 0.0)
  {
    v16 = objc_opt_class();
    memoryMomentNodes = [memoryCopy memoryMomentNodes];
    memoryMomentNodes2 = [toMemoryCopy memoryMomentNodes];
    [v16 _momentCommonalityScoreComparingMomentNodes:memoryMomentNodes toMomentNodes:memoryMomentNodes2];
    v15 = v19;
  }

  if (featureWeight > 0.0)
  {
    memoryFeatureNodes = [memoryCopy memoryFeatureNodes];
    memoryFeatureNodes2 = [toMemoryCopy memoryFeatureNodes];
    [(PGMemoryPlanner *)self featureCommonalityScoreComparingFeatureNodes:memoryFeatureNodes toFeatureNodes:memoryFeatureNodes2];
    v14 = v22;
  }

  v23 = 0.0;
  v24 = 0.0;
  if (categoryWeight > 0.0)
  {
    [(PGMemoryPlanner *)self categorySimilarityScoreBetweenMemory:memoryCopy andMemory:toMemoryCopy, 0.0];
  }

  v25 = weight + featureWeight + categoryWeight;
  if (v25 > 0.0)
  {
    v23 = (v14 * featureWeight + v15 * weight + v24 * categoryWeight) / v25;
  }

  return v23;
}

- (double)featureCommonalityScoreComparingFeatureNodes:(id)nodes toFeatureNodes:(id)featureNodes
{
  v32 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  featureNodesCopy = featureNodes;
  labels = [nodesCopy labels];
  labels2 = [featureNodesCopy labels];
  [(PGMemoryPlanner *)self similarFeatureSets];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = v30 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v28;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        if ([v15 intersectsSet:labels] && (objc_msgSend(v15, "intersectsSet:", labels2) & 1) != 0)
        {
          v24 = 1.0;
          v16 = v10;
          goto LABEL_18;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v16 = [nodesCopy collectionByIntersecting:featureNodesCopy];
  v17 = [v16 count];
  if (v17)
  {
    v18 = v17;
    v19 = [(MANodeCollection *)PGGraphFeatureNodeCollection nodesRelatedToNodes:nodesCopy withRelation:self->_secondaryFeatureOfFeature];
    v20 = [v19 count];
    v21 = [nodesCopy count];
    if (!v20 || v21 == v20)
    {
      v24 = v18 / v21;
    }

    else
    {
      v26 = v21 - v20;
      v22 = [(MANodeCollection *)PGGraphFeatureNodeCollection nodesRelatedToNodes:v16 withRelation:self->_secondaryFeatureOfFeature];
      v23 = [v22 count];
      v24 = ((v18 - v23) / v26 + v23 / v20 * 0.5) / 1.5;
    }
  }

  else
  {
    v24 = 0.0;
  }

LABEL_18:

  return v24;
}

- (double)avoidScoreForMemory:(id)memory
{
  v23 = *MEMORY[0x277D85DE8];
  memoryCopy = memory;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_memoriesToAvoid;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    v8 = 0.0;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        uniqueMemoryIdentifier = [memoryCopy uniqueMemoryIdentifier];
        uniqueMemoryIdentifier2 = [v10 uniqueMemoryIdentifier];
        v14 = [uniqueMemoryIdentifier isEqualToString:uniqueMemoryIdentifier2];

        if (v14)
        {
          objc_autoreleasePoolPop(v11);
          v8 = 1.0;
          goto LABEL_12;
        }

        [(PGMemoryPlanner *)self _commonalityScoreComparingMemory:memoryCopy toMemory:v10 momentWeight:1.0 featureWeight:0.0 memoryCategoryWeight:0.0];
        v8 = fmax(v8, v15);
        objc_autoreleasePoolPop(v11);
      }

      v6 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0.0;
  }

LABEL_12:

  return v8;
}

- (double)collisionScoreForMemory:(id)memory
{
  v63 = *MEMORY[0x277D85DE8];
  memoryCopy = memory;
  [(PGMemoryPlanner *)self _computeIfNeededTimeDecayScoreForPastMemories];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v4 = self->_pastMemories;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v56 objects:v62 count:16];
  if (!v5)
  {

    v8 = 0.0;
    v20 = memoryCopy;
LABEL_12:
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = self->_futureMemoriesGroupedByTrigger;
    v43 = [(NSArray *)obj countByEnumeratingWithState:&v52 objects:v61 count:16];
    if (v43)
    {
      v42 = *v53;
LABEL_14:
      v21 = 0;
      while (1)
      {
        if (*v53 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v44 = v21;
        v22 = *(*(&v52 + 1) + 8 * v21);
        context = objc_autoreleasePoolPush();
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v47 = v22;
        v23 = [v47 countByEnumeratingWithState:&v48 objects:v60 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v49;
          v26 = 1.0;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v49 != v25)
              {
                objc_enumerationMutation(v47);
              }

              v28 = *(*(&v48 + 1) + 8 * i);
              uniqueMemoryIdentifier = [v20 uniqueMemoryIdentifier];
              uniqueMemoryIdentifier2 = [v28 uniqueMemoryIdentifier];
              if ([uniqueMemoryIdentifier isEqualToString:uniqueMemoryIdentifier2])
              {
                triggerTypes = [v20 triggerTypes];
                triggerTypes2 = [v28 triggerTypes];
                v33 = [triggerTypes containsIndexes:triggerTypes2];

                v20 = memoryCopy;
                if (v33)
                {
                  v26 = 0.0;
                  goto LABEL_32;
                }
              }

              else
              {
              }

              [(PGMemoryPlanner *)self commonalityScoreComparingMemory:v20 toMemory:v28];
              v35 = v34;
              [(PGMemoryPlanner *)self timeDecayScoreForTriggeredMemory:v28 numberOfDaysToLook:[(PGMemoryElectorConfiguration *)self->_configuration numberOfDaysToLookInFuture]];
              v37 = v36;
              [PGMemoryTriggerHandler triggerScoreForTriggeredMemory:v28];
              v39 = fmin(v35 * v37 * v38, 1.0);
              if (v39 < v26)
              {
                v26 = v39;
              }
            }

            v24 = [v47 countByEnumeratingWithState:&v48 objects:v60 count:16];
          }

          while (v24);
        }

        else
        {
          v26 = 1.0;
        }

LABEL_32:

        v8 = fmax(v8, v26);
        objc_autoreleasePoolPop(context);
        if (v26 == 1.0)
        {
          break;
        }

        v21 = v44 + 1;
        if (v44 + 1 == v43)
        {
          v43 = [(NSArray *)obj countByEnumeratingWithState:&v52 objects:v61 count:16];
          if (v43)
          {
            goto LABEL_14;
          }

          break;
        }
      }
    }

    goto LABEL_36;
  }

  v6 = v5;
  v7 = *v57;
  v8 = 0.0;
LABEL_3:
  v9 = 0;
  while (1)
  {
    if (*v57 != v7)
    {
      objc_enumerationMutation(v4);
    }

    v10 = *(*(&v56 + 1) + 8 * v9);
    v11 = objc_autoreleasePoolPush();
    [(PGMemoryPlanner *)self commonalityScoreComparingMemory:memoryCopy toMemory:v10];
    v13 = v12;
    timeDecayScoreByPastMemoryCreationDate = [(PGMemoryPlanner *)self timeDecayScoreByPastMemoryCreationDate];
    creationDate = [v10 creationDate];
    v16 = [timeDecayScoreByPastMemoryCreationDate objectForKeyedSubscript:creationDate];
    [v16 doubleValue];
    v18 = v17;

    v19 = v13 * v18;
    v8 = fmax(v8, v19);
    objc_autoreleasePoolPop(v11);
    if (v19 >= 1.0)
    {
      break;
    }

    if (v6 == ++v9)
    {
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v56 objects:v62 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      break;
    }
  }

  v20 = memoryCopy;
  if (v8 < 1.0)
  {
    goto LABEL_12;
  }

LABEL_36:

  return v8;
}

- (double)timeDecayScoreForTriggeredMemory:(id)memory numberOfDaysToLook:(unint64_t)look
{
  creationDate = [memory creationDate];
  [creationDate timeIntervalSinceDate:self->_currentUniversalMemoryDate];
  v8 = fabs(v7);

  return fmax(fmin((v8 / 86400.0 - look) / ([(PGMemoryElectorConfiguration *)self->_configuration minimumNumberOfDaysBeforeTimeDecay]- look), 1.0), 0.0);
}

- (unint64_t)numberOfDaysSinceMemoryUpgrade
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = self->_loggingConnection;
  v4 = os_signpost_id_generate(v3);
  v5 = v3;
  v6 = v5;
  v7 = v4 - 1;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "PGMemoryPlannerNumberOfDaysSinceMemoryUpgrade", "", buf, 2u);
  }

  spid = v4;

  info = 0;
  mach_timebase_info(&info);
  v26 = mach_absolute_time();
  v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = self->_pastMemories;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        [v14 photosGraphVersion];
        if (PLMemoriesAlgorithmsVersionFromPhotosGraphVersion() >= 0x301)
        {
          v15 = MEMORY[0x277D27690];
          creationDate = [v14 creationDate];
          v17 = [v15 startOfDayForDate:creationDate];

          [v8 addObject:v17];
        }
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v11);
  }

  v18 = [v8 count];
  v19 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v22 = v6;
  v23 = v22;
  if (v7 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v23, OS_SIGNPOST_INTERVAL_END, spid, "PGMemoryPlannerNumberOfDaysSinceMemoryUpgrade", "", buf, 2u);
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v33 = "PGMemoryPlannerNumberOfDaysSinceMemoryUpgrade";
    v34 = 2048;
    v35 = ((((v19 - v26) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v23, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  return v18;
}

- (id)creationDateOfLastMemory
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = self->_pastMemories;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v2);
        }

        creationDate = [*(*(&v12 + 1) + 8 * i) creationDate];
        v9 = creationDate;
        if (v5)
        {
          v10 = [v5 laterDate:creationDate];

          v5 = v10;
        }

        else
        {
          v5 = creationDate;
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_overallDateIntervalForTriggeredMemories:(id)memories
{
  v31 = *MEMORY[0x277D85DE8];
  memoriesCopy = memories;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__16783;
  v28 = __Block_byref_object_dispose__16784;
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = memoriesCopy;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v6)
  {
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v5);
        }

        validityIntervalByTriggerType = [*(*(&v20 + 1) + 8 * i) validityIntervalByTriggerType];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __60__PGMemoryPlanner__overallDateIntervalForTriggeredMemories___block_invoke;
        v19[3] = &unk_278880B18;
        v19[4] = &v24;
        [validityIntervalByTriggerType enumerateKeysAndObjectsUsingBlock:v19];
      }

      v6 = [v5 countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v6);
  }

  v10 = [PGMemoryDate alloc];
  localDate = [(PGMemoryElectorConfiguration *)self->_configuration localDate];
  v12 = [(PGMemoryDate *)v10 initWithLocalDate:localDate];

  timeZone = [(PGMemoryElectorConfiguration *)self->_configuration timeZone];
  v14 = [(PGMemoryDate *)v12 universalDateInTimeZone:timeZone];

  v15 = [v14 earlierDate:v25[5]];
  v16 = [v14 laterDate:v25[5]];
  v17 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v15 endDate:v16];

  _Block_object_dispose(&v24, 8);

  return v17;
}

void __60__PGMemoryPlanner__overallDateIntervalForTriggeredMemories___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v8 = [a3 startDate];
  v5 = [v4 earlierDate:v8];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)filterMemories:(id)memories forTriggerCollisionsWithTriggerHandler:(id)handler graph:(id)graph progressReporter:(id)reporter
{
  v120 = *MEMORY[0x277D85DE8];
  memoriesCopy = memories;
  handlerCopy = handler;
  graphCopy = graph;
  reporterCopy = reporter;
  v74 = memoriesCopy;
  v72 = reporterCopy;
  if ([memoriesCopy count])
  {
    v83 = reporterCopy;
    v12 = self->_loggingConnection;
    v13 = os_signpost_id_generate(v12);
    v14 = v12;
    v15 = v14;
    v67 = v13 - 1;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "MemoryElectionFilterMemoriesTriggerCollision", "", buf, 2u);
    }

    spid = v13;
    v71 = v15;

    info = 0;
    mach_timebase_info(&info);
    v66 = mach_absolute_time();
    v68 = [(PGMemoryPlanner *)self _overallDateIntervalForTriggeredMemories:memoriesCopy];
    startDate = [v68 startDate];
    pastMemoryCollisionUniversalDateInterval = [(PGMemoryElectorConfiguration *)self->_configuration pastMemoryCollisionUniversalDateInterval];
    startDate2 = [pastMemoryCollisionUniversalDateInterval startDate];

    v69 = startDate2;
    v70 = startDate;
    if ([startDate compare:startDate2] == -1)
    {
      loggingConnection = self->_loggingConnection;
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *v113 = startDate;
        *&v113[8] = 2112;
        *&v113[10] = startDate2;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGMemoryPlanner] The overall valid date interval for all triggered memories (startDate: %@) extends past the past memories date interval (startDate: %@)", buf, 0x16u);
      }
    }

    v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    selfCopy = self;
    v21 = self->_pastMemories;
    v22 = [(NSArray *)v21 countByEnumeratingWithState:&v107 objects:v119 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v108;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v108 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v107 + 1) + 8 * i);
          triggerTypes = [v26 triggerTypes];
          v104[0] = MEMORY[0x277D85DD0];
          v104[1] = 3221225472;
          v104[2] = __96__PGMemoryPlanner_filterMemories_forTriggerCollisionsWithTriggerHandler_graph_progressReporter___block_invoke;
          v104[3] = &unk_278889B40;
          v105 = v20;
          v106 = v26;
          [triggerTypes enumerateIndexesUsingBlock:v104];
        }

        v23 = [(NSArray *)v21 countByEnumeratingWithState:&v107 objects:v119 count:16];
      }

      while (v23);
    }

    v28 = [v74 count];
    v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    obj = v74;
    v77 = v29;
    v79 = [obj countByEnumeratingWithState:&v100 objects:v118 count:16];
    if (v79)
    {
      v30 = 1.0 / v28;
      v78 = *v101;
      v31 = 0.0;
      v81 = v20;
      while (2)
      {
        for (j = 0; j != v79; ++j)
        {
          if (*v101 != v78)
          {
            objc_enumerationMutation(obj);
          }

          v33 = *(*(&v100 + 1) + 8 * j);
          v34 = objc_autoreleasePoolPush();
          v90 = v33;
          validityIntervalByTriggerType = [v33 validityIntervalByTriggerType];
          v96 = 0u;
          v97 = 0u;
          v98 = 0u;
          v99 = 0u;
          v36 = validityIntervalByTriggerType;
          v37 = [v36 countByEnumeratingWithState:&v96 objects:v117 count:16];
          if (v37)
          {
            v38 = v37;
            v39 = *v97;
            v84 = j;
            v85 = v34;
            v88 = v36;
            v80 = *v97;
            do
            {
              v40 = 0;
              v82 = v38;
              do
              {
                if (*v97 != v39)
                {
                  objc_enumerationMutation(v36);
                }

                v41 = *(*(&v96 + 1) + 8 * v40);
                v42 = [v20 objectForKeyedSubscript:{v41, spid}];
                if ([v42 count])
                {
                  v87 = v40;
                  unsignedIntegerValue = [v41 unsignedIntegerValue];
                  v44 = [v36 objectForKeyedSubscript:v41];
                  v92 = 0u;
                  v93 = 0u;
                  v94 = 0u;
                  v95 = 0u;
                  v86 = v42;
                  v91 = v42;
                  v45 = [v91 countByEnumeratingWithState:&v92 objects:v116 count:16];
                  if (v45)
                  {
                    v46 = v45;
                    v47 = *v93;
                    while (2)
                    {
                      for (k = 0; k != v46; ++k)
                      {
                        if (*v93 != v47)
                        {
                          objc_enumerationMutation(v91);
                        }

                        v49 = *(*(&v92 + 1) + 8 * k);
                        creationDate = [v49 creationDate];
                        v51 = [v44 containsDate:creationDate];

                        if (v51)
                        {
                          memoryFeatureNodes = [v90 memoryFeatureNodes];
                          v53 = [handlerCopy relevantFeatureNodesInFeatureNodes:memoryFeatureNodes forTriggerType:unsignedIntegerValue];

                          memoryFeatureNodes2 = [v49 memoryFeatureNodes];
                          v55 = [memoryFeatureNodes2 collectionByIntersecting:v53];
                          v56 = [v55 count];

                          if (v56 == [v53 count])
                          {
                            v57 = selfCopy->_loggingConnection;
                            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
                            {
                              *buf = 138412802;
                              *v113 = v90;
                              *&v113[8] = 2112;
                              *&v113[10] = v49;
                              v114 = 2112;
                              v115 = v44;
                              _os_log_debug_impl(&dword_22F0FC000, v57, OS_LOG_TYPE_DEBUG, "[PGMemoryPlanner] Triggered memory (%@) collides with past triggered memory (%@) in validity interval %@", buf, 0x20u);
                            }

                            v36 = v88;
                            v20 = v81;
                            v29 = v77;
                            j = v84;
                            v34 = v85;
                            goto LABEL_43;
                          }
                        }
                      }

                      v46 = [v91 countByEnumeratingWithState:&v92 objects:v116 count:16];
                      if (v46)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v39 = v80;
                  v20 = v81;
                  v40 = v87;
                  v36 = v88;
                  v38 = v82;
                  v42 = v86;
                }

                ++v40;
              }

              while (v40 != v38);
              v38 = [v36 countByEnumeratingWithState:&v96 objects:v117 count:16];
              v29 = v77;
              j = v84;
              v34 = v85;
            }

            while (v38);
          }

          [v29 addObject:v90];
LABEL_43:
          v31 = v30 + v31;
          if ([v83 isCancelledWithProgress:{v31, spid}])
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v113 = 226;
              *&v113[4] = 2080;
              *&v113[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGMemoryPlanner.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            objc_autoreleasePoolPop(v34);
            v63 = MEMORY[0x277CBEBF8];
            goto LABEL_55;
          }

          objc_autoreleasePoolPop(v34);
        }

        v79 = [obj countByEnumeratingWithState:&v100 objects:v118 count:16];
        if (v79)
        {
          continue;
        }

        break;
      }
    }

    v58 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v61 = v71;
    v62 = v61;
    if (v67 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v61))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v62, OS_SIGNPOST_INTERVAL_END, spid, "MemoryElectionFilterMemoriesTriggerCollision", "", buf, 2u);
    }

    if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *v113 = "MemoryElectionFilterMemoriesTriggerCollision";
      *&v113[8] = 2048;
      *&v113[10] = ((((v58 - v66) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v62, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    v29 = v77;
    v63 = v77;
LABEL_55:
  }

  else
  {
    v63 = MEMORY[0x277CBEBF8];
  }

  return v63;
}

void __96__PGMemoryPlanner_filterMemories_forTriggerCollisionsWithTriggerHandler_graph_progressReporter___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];
  if (!v3)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [*(a1 + 32) setObject:v3 forKeyedSubscript:v4];
  }

  [v3 addObject:*(a1 + 40)];
}

- (BOOL)tooSoonToElectMemory:(id)memory
{
  memoryCopy = memory;
  maximumTimeDecayScoreByPastMemoryIdentifier = [(PGMemoryPlanner *)self maximumTimeDecayScoreByPastMemoryIdentifier];
  uniqueMemoryIdentifier = [memoryCopy uniqueMemoryIdentifier];

  v7 = [maximumTimeDecayScoreByPastMemoryIdentifier objectForKeyedSubscript:uniqueMemoryIdentifier];
  [v7 doubleValue];
  v9 = v8;

  return v9 == 1.0;
}

- (void)_computeIfNeededTimeDecayScoreForPastMemories
{
  v29 = *MEMORY[0x277D85DE8];
  if (!self->_timeDecayScoreByPastMemoryCreationDate)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = self->_pastMemories;
    v5 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v25;
      do
      {
        v8 = 0;
        do
        {
          if (*v25 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v24 + 1) + 8 * v8);
          [(PGMemoryPlanner *)self timeDecayScoreForTriggeredMemory:v9 numberOfDaysToLook:[(PGMemoryElectorConfiguration *)self->_configuration numberOfDaysToLookInPast]];
          v11 = v10;
          v12 = [MEMORY[0x277CCABB0] numberWithDouble:?];
          creationDate = [v9 creationDate];
          [(NSMutableDictionary *)v3 setObject:v12 forKeyedSubscript:creationDate];

          uniqueMemoryIdentifier = [v9 uniqueMemoryIdentifier];
          v15 = [(NSMutableDictionary *)v4 objectForKeyedSubscript:uniqueMemoryIdentifier];
          [v15 doubleValue];
          v17 = v16;

          if (v17 >= v11)
          {
            v18 = v17;
          }

          else
          {
            v18 = v11;
          }

          v19 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
          [(NSMutableDictionary *)v4 setObject:v19 forKeyedSubscript:uniqueMemoryIdentifier];

          ++v8;
        }

        while (v6 != v8);
        v6 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v6);
    }

    timeDecayScoreByPastMemoryCreationDate = self->_timeDecayScoreByPastMemoryCreationDate;
    self->_timeDecayScoreByPastMemoryCreationDate = v3;
    v21 = v3;

    maximumTimeDecayScoreByPastMemoryIdentifier = self->_maximumTimeDecayScoreByPastMemoryIdentifier;
    self->_maximumTimeDecayScoreByPastMemoryIdentifier = v4;
  }
}

- (id)maximumTimeDecayScoreByPastMemoryIdentifier
{
  [(PGMemoryPlanner *)self _computeIfNeededTimeDecayScoreForPastMemories];
  maximumTimeDecayScoreByPastMemoryIdentifier = self->_maximumTimeDecayScoreByPastMemoryIdentifier;

  return maximumTimeDecayScoreByPastMemoryIdentifier;
}

- (id)timeDecayScoreByPastMemoryCreationDate
{
  [(PGMemoryPlanner *)self _computeIfNeededTimeDecayScoreForPastMemories];
  timeDecayScoreByPastMemoryCreationDate = self->_timeDecayScoreByPastMemoryCreationDate;

  return timeDecayScoreByPastMemoryCreationDate;
}

- (PGMemoryPlanner)initWithPastSource:(id)source futureSource:(id)futureSource configuration:(id)configuration graph:(id)graph loggingConnection:(id)connection progressReporter:(id)reporter
{
  v59[2] = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  futureSourceCopy = futureSource;
  configurationCopy = configuration;
  graphCopy = graph;
  connectionCopy = connection;
  reporterCopy = reporter;
  v58.receiver = self;
  v58.super_class = PGMemoryPlanner;
  v20 = [(PGMemoryPlanner *)&v58 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_loggingConnection, connection);
    objc_storeStrong(&v21->_configuration, configuration);
    v22 = [objc_alloc(MEMORY[0x277D22C88]) initWithProgressReporter:reporterCopy];
    v23 = [v22 childProgressReporterToCheckpoint:0.3];
    v24 = [v22 childProgressReporterToCheckpoint:0.6];
    v52 = v22;
    v57 = [v22 childProgressReporterToCheckpoint:1.0];
    v51 = v23;
    v25 = [sourceCopy pastMemoriesForConfiguration:v21->_configuration withGraph:graphCopy progressReporter:v23];
    pastMemories = v21->_pastMemories;
    v21->_pastMemories = v25;

    if (([reporterCopy isCancelled] & 1) == 0)
    {
      [futureSourceCopy futureMemoriesForConfiguration:v21->_configuration withGraph:graphCopy progressReporter:v24];
      v28 = v27 = reporterCopy;
      v29 = [objc_opt_class() groupFutureMemoriesPerTrigger:v28];
      futureMemoriesGroupedByTrigger = v21->_futureMemoriesGroupedByTrigger;
      v21->_futureMemoriesGroupedByTrigger = v29;

      reporterCopy = v27;
    }

    v50 = v24;
    v54 = connectionCopy;
    v55 = configurationCopy;
    v56 = futureSourceCopy;
    v53 = reporterCopy;
    if (([reporterCopy isCancelled] & 1) == 0)
    {
      v31 = [sourceCopy memoriesToAvoidForConfiguration:v21->_configuration withGraph:graphCopy progressReporter:v57];
      memoriesToAvoid = v21->_memoriesToAvoid;
      v21->_memoriesToAvoid = v31;
    }

    v33 = [PGMemoryDate alloc];
    localDate = [(PGMemoryElectorConfiguration *)v21->_configuration localDate];
    v35 = [(PGMemoryDate *)v33 initWithLocalDate:localDate];

    timeZone = [(PGMemoryElectorConfiguration *)v21->_configuration timeZone];
    v37 = [(PGMemoryDate *)v35 universalDateInTimeZone:timeZone];
    currentUniversalMemoryDate = v21->_currentUniversalMemoryDate;
    v21->_currentUniversalMemoryDate = v37;

    v39 = MEMORY[0x277D22C90];
    v40 = +[(PGGraphCalendarUnitNodeCollection *)PGGraphYearNodeCollection];
    relation = [v40 relation];
    v59[0] = relation;
    v42 = +[PGGraphOverTheYearsNode filter];
    [v42 relation];
    v44 = v43 = sourceCopy;
    v59[1] = v44;
    [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
    v46 = v45 = graphCopy;
    v47 = [v39 union:v46];
    secondaryFeatureOfFeature = v21->_secondaryFeatureOfFeature;
    v21->_secondaryFeatureOfFeature = v47;

    graphCopy = v45;
    sourceCopy = v43;

    configurationCopy = v55;
    futureSourceCopy = v56;
    reporterCopy = v53;
    connectionCopy = v54;
  }

  return v21;
}

+ (double)_momentCommonalityScoreComparingMomentNodes:(id)nodes toMomentNodes:(id)momentNodes
{
  nodesCopy = nodes;
  v6 = [nodesCopy collectionByIntersecting:momentNodes];
  v7 = [v6 count];
  if (v7)
  {
    v8 = v7 / [nodesCopy count];
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

+ (id)groupFutureMemoriesPerTrigger:(id)trigger
{
  v31 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  v3 = [triggerCopy sortedArrayUsingComparator:&__block_literal_global_16812];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v3;
  v25 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  v7 = 0;
  if (v25)
  {
    v8 = *v27;
    v22 = *v27;
    do
    {
      v9 = 0;
      v10 = v7;
      do
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * v9);
        if (!v10)
        {
LABEL_9:
          [v6 addObject:v11];
          goto LABEL_12;
        }

        creationDate = [v10 creationDate];
        creationDate2 = [v11 creationDate];
        if ([currentCalendar isDate:creationDate inSameDayAsDate:creationDate2])
        {
          triggerTypes = [v10 triggerTypes];
          [v11 triggerTypes];
          v15 = v6;
          v16 = currentCalendar;
          v18 = v17 = v4;
          v24 = [triggerTypes containsIndexes:v18];

          v4 = v17;
          currentCalendar = v16;
          v6 = v15;
          v8 = v22;

          if (v24)
          {
            goto LABEL_9;
          }
        }

        else
        {
        }

        [v4 addObject:v6];
        v19 = [MEMORY[0x277CBEB18] arrayWithObject:v11];

        v6 = v19;
LABEL_12:
        v7 = v11;

        ++v9;
        v10 = v7;
      }

      while (v25 != v9);
      v25 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v25);
  }

  [v4 addObject:v6];

  return v4;
}

uint64_t __49__PGMemoryPlanner_groupFutureMemoriesPerTrigger___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v6 = [v4 creationDate];
  v7 = [v5 creationDate];
  v8 = [v6 compare:v7];

  v25 = v8;
  v9 = v23[3];
  if (!v9)
  {
    v10 = [v4 triggerTypes];
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __49__PGMemoryPlanner_groupFutureMemoriesPerTrigger___block_invoke_2;
    v19 = &unk_278886940;
    v11 = v5;
    v20 = v11;
    v21 = &v22;
    [v10 enumerateIndexesUsingBlock:&v16];

    if (!v23[3])
    {
      v12 = [v4 uniqueMemoryIdentifier];
      v13 = [v11 uniqueMemoryIdentifier];
      v14 = [v12 compare:v13];
      v23[3] = v14;
    }

    v9 = v23[3];
  }

  _Block_object_dispose(&v22, 8);

  return v9;
}

void __49__PGMemoryPlanner_groupFutureMemoriesPerTrigger___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 32) triggerTypes];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__PGMemoryPlanner_groupFutureMemoriesPerTrigger___block_invoke_3;
  v7[3] = &unk_278880B60;
  v7[4] = *(a1 + 40);
  v7[5] = a2;
  v7[6] = a3;
  [v6 enumerateIndexesUsingBlock:v7];
}

void __49__PGMemoryPlanner_groupFutureMemoriesPerTrigger___block_invoke_3(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 40)];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  *(*(*(a1 + 32) + 8) + 24) = [v6 compare:v7];

  if (*(*(*(a1 + 32) + 8) + 24))
  {
    **(a1 + 48) = 1;
    *a3 = 1;
  }
}

+ (BOOL)canElectEndOfYearTriggeredMemory:(id)memory withAlreadyElectedMemories:(id)memories
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  memoriesCopy = memories;
  v5 = [memoriesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(memoriesCopy);
        }

        triggerTypes = [*(*(&v13 + 1) + 8 * i) triggerTypes];
        v10 = [triggerTypes containsIndex:5];

        if (!v10)
        {
          v11 = 0;
          goto LABEL_11;
        }
      }

      v6 = [memoriesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_11:

  return v11;
}

+ (BOOL)canElectTriggeredMemory:(id)memory withAlreadyElectedMemories:(id)memories
{
  v26 = *MEMORY[0x277D85DE8];
  memoryCopy = memory;
  memoriesCopy = memories;
  if ([memoriesCopy count] && (objc_msgSend(self, "_isFallbackMemory:", memoryCopy) & 1) == 0)
  {
    triggerTypes = [memoryCopy triggerTypes];
    v11 = [triggerTypes containsIndex:5];

    if (v11)
    {
      v8 = [self canElectEndOfYearTriggeredMemory:memoryCopy withAlreadyElectedMemories:memoriesCopy];
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v12 = memoriesCopy;
      v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v22;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v22 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v21 + 1) + 8 * i);
            triggerTypes2 = [memoryCopy triggerTypes];
            triggerTypes3 = [v17 triggerTypes];
            v20 = [triggerTypes2 isEqualToIndexSet:triggerTypes3];

            if (v20)
            {
              v8 = 0;
              goto LABEL_17;
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      v8 = 1;
LABEL_17:
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (BOOL)_isFallbackMemory:(id)memory
{
  memoryCopy = memory;
  triggerTypes = [memoryCopy triggerTypes];
  if ([triggerTypes count])
  {
    triggerTypes2 = [memoryCopy triggerTypes];
    v6 = [triggerTypes2 containsIndex:0];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

@end