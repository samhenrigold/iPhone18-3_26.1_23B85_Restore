@interface PGMeaningfulEventProcessor
+ (id)_legacyMeaningResultForResult:(id)result requiredCriteriaByIdentifier:(id)identifier;
+ (id)_postProcessBirthdaysWithResults:(id)results forMoment:(id)moment;
+ (id)_postProcessResults:(id)results forMoment:(id)moment;
+ (id)processRequiredCriteria:(id)criteria forMoment:(id)moment meaningfulEventProcessorCache:(id)cache serviceManager:(id)manager;
@end

@implementation PGMeaningfulEventProcessor

+ (id)_postProcessBirthdaysWithResults:(id)results forMoment:(id)moment
{
  v129 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  momentCopy = moment;
  v93 = [MEMORY[0x277CBEB58] set];
  v92 = [MEMORY[0x277CBEB58] set];
  v90 = [MEMORY[0x277CBEB58] set];
  v94 = [momentCopy hasEdgeWithLabel:@"CELEBRATING" domain:401];
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  obj = resultsCopy;
  v6 = [obj countByEnumeratingWithState:&v120 objects:v128 count:16];
  if (v6)
  {
    v7 = *v121;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v121 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v120 + 1) + 8 * i);
        requiredCriteria = [v9 requiredCriteria];
        identifier = [requiredCriteria identifier];
        v12 = [identifier isEqualToString:@"Birthday"];
        if ((v12 & 1) == 0)
        {
          v13 = [identifier isEqualToString:@"WeakBirthday"];
          v14 = v90;
          if (!v13)
          {
            goto LABEL_13;
          }
        }

        if (!v94 || ([requiredCriteria additionalInfo], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "objectForKeyedSubscript:", @"birthday.isOnDate"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "BOOLValue"), v16, v15, v17))
        {
          if (v12)
          {
            v14 = v93;
          }

          else
          {
            v14 = v92;
          }

LABEL_13:
          [v14 addObject:v9];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v120 objects:v128 count:16];
    }

    while (v6);
  }

  v18 = [v93 count];
  v19 = [v92 count] + v18;
  if (v94)
  {
    v20 = [v90 count];
    if (v20 + v19 == [obj count])
    {
      v21 = obj;
LABEL_22:
      v22 = v21;
      goto LABEL_46;
    }
  }

  if (v19 == 1)
  {
    v22 = [v90 mutableCopy];
    [v22 unionSet:v93];
    [v22 unionSet:v92];
    goto LABEL_46;
  }

  if (!v19)
  {
    v21 = v90;
    goto LABEL_22;
  }

  v80 = v90;
  v23 = v93;
  if (!v18)
  {
    v23 = v92;
  }

  v24 = v23;
  graph = [momentCopy graph];
  meNode = [graph meNode];
  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v87 = v24;
  v26 = [v87 countByEnumeratingWithState:&v116 objects:v127 count:16];
  if (v26)
  {
    nodes = 0;
    v95 = 0;
    v28 = *v117;
    v29 = 1;
    do
    {
      v30 = 0;
      v31 = nodes;
      do
      {
        if (*v117 != v28)
        {
          objc_enumerationMutation(v87);
        }

        v32 = *(*(&v116 + 1) + 8 * v30);
        requiredCriteria2 = [v32 requiredCriteria];
        peopleTrait = [requiredCriteria2 peopleTrait];
        nodes = [peopleTrait nodes];

        if (v31)
        {
          v29 &= [v31 isEqual:nodes];
        }

        if (meNode)
        {
          if ([nodes containsNode:meNode])
          {
            if (!v95 || ([v32 score], v36 = v35, objc_msgSend(v95, "score"), v36 > v37))
            {
              v38 = v32;

              v95 = v38;
            }
          }
        }

        ++v30;
        v31 = nodes;
      }

      while (v26 != v30);
      v26 = [v87 countByEnumeratingWithState:&v116 objects:v127 count:16];
    }

    while (v26);

    if ((v29 & 1) == 0)
    {
      requiredCriteria3 = [v95 requiredCriteria];
      additionalInfo = [requiredCriteria3 additionalInfo];
      v41 = [additionalInfo objectForKeyedSubscript:@"birthday.isOnDate"];
      bOOLValue = [v41 BOOLValue];

      if (((v95 != 0) & bOOLValue) == 1)
      {
        [v80 addObject:?];
      }

      else
      {
        v86 = [MEMORY[0x277CBEB58] set];
        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        v88 = v87;
        v44 = [v88 countByEnumeratingWithState:&v112 objects:v126 count:16];
        if (v44)
        {
          v45 = *v113;
          do
          {
            for (j = 0; j != v44; ++j)
            {
              if (*v113 != v45)
              {
                objc_enumerationMutation(v88);
              }

              v47 = *(*(&v112 + 1) + 8 * j);
              requiredCriteria4 = [v47 requiredCriteria];
              additionalInfo2 = [requiredCriteria4 additionalInfo];
              v50 = [additionalInfo2 objectForKeyedSubscript:@"birthday.isOnDate"];
              bOOLValue2 = [v50 BOOLValue];

              if (bOOLValue2)
              {
                [v86 addObject:v47];
              }
            }

            v44 = [v88 countByEnumeratingWithState:&v112 objects:v126 count:16];
          }

          while (v44);
        }

        if ([v86 count])
        {
          v52 = v86;

          v53 = v52;
        }

        else
        {
          v53 = v88;
        }

        v87 = v53;
        if ([v53 count] >= 2)
        {
          v54 = [(MAElementCollection *)[PGGraphPersonNodeCollection alloc] initWithGraph:graph];
          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          v89 = v87;
          v55 = [v89 countByEnumeratingWithState:&v108 objects:v125 count:16];
          if (v55)
          {
            v56 = *v109;
            do
            {
              for (k = 0; k != v55; ++k)
              {
                if (*v109 != v56)
                {
                  objc_enumerationMutation(v89);
                }

                requiredCriteria5 = [*(*(&v108 + 1) + 8 * k) requiredCriteria];
                peopleTrait2 = [requiredCriteria5 peopleTrait];
                nodes2 = [peopleTrait2 nodes];

                localIdentifiers = [nodes2 localIdentifiers];
                anyObject = [localIdentifiers anyObject];

                if ([anyObject length])
                {
                  v63 = [(MAElementCollection *)v54 collectionByFormingUnionWith:nodes2];

                  v54 = v63;
                }
              }

              v55 = [v89 countByEnumeratingWithState:&v108 objects:v125 count:16];
            }

            while (v55);
          }

          v64 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v89, "count")}];
          v104 = 0;
          v105 = &v104;
          v106 = 0x2020000000;
          v107 = 0;
          v100[0] = MEMORY[0x277D85DD0];
          v100[1] = 3221225472;
          v100[2] = __73__PGMeaningfulEventProcessor__postProcessBirthdaysWithResults_forMoment___block_invoke;
          v100[3] = &unk_27887EE30;
          v65 = v54;
          v101 = v65;
          v84 = v64;
          v102 = v84;
          v103 = &v104;
          [momentCopy enumeratePersonEdgesAndNodesUsingBlock:v100];
          v66 = [MEMORY[0x277CBEB58] set];
          v67 = v105[3];
          v96 = 0u;
          v97 = 0u;
          v98 = 0u;
          v99 = 0u;
          v83 = v89;
          v68 = [v83 countByEnumeratingWithState:&v96 objects:v124 count:16];
          v79 = v65;
          v87 = v66;
          if (v68)
          {
            v69 = v67 * 0.7;
            v85 = *v97;
            do
            {
              for (m = 0; m != v68; ++m)
              {
                if (*v97 != v85)
                {
                  objc_enumerationMutation(v83);
                }

                v71 = *(*(&v96 + 1) + 8 * m);
                requiredCriteria6 = [v71 requiredCriteria];
                peopleTrait3 = [requiredCriteria6 peopleTrait];
                nodes3 = [peopleTrait3 nodes];

                localIdentifiers2 = [nodes3 localIdentifiers];
                anyObject2 = [localIdentifiers2 anyObject];

                if ([anyObject2 length])
                {
                  v77 = [v84 objectForKeyedSubscript:anyObject2];
                  unsignedIntegerValue = [v77 unsignedIntegerValue];

                  if (v69 <= unsignedIntegerValue)
                  {
                    [v87 addObject:v71];
                  }
                }
              }

              v68 = [v83 countByEnumeratingWithState:&v96 objects:v124 count:16];
            }

            while (v68);
          }

          _Block_object_dispose(&v104, 8);
        }

        [v80 unionSet:{v87, v79}];
      }

      goto LABEL_45;
    }
  }

  else
  {

    v95 = 0;
    nodes = 0;
  }

  [v80 unionSet:v87];
LABEL_45:
  v22 = v80;

LABEL_46:

  return v22;
}

void __73__PGMeaningfulEventProcessor__postProcessBirthdaysWithResults_forMoment___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if ([*(a1 + 32) containsNode:v5])
  {
    v6 = [v5 localIdentifier];
    if ([v6 length])
    {
      v7 = [v10 numberOfAssets];
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
      [*(a1 + 40) setObject:v8 forKeyedSubscript:v6];

      v9 = *(*(a1 + 48) + 8);
      if (v7 > *(v9 + 24))
      {
        *(v9 + 24) = v7;
      }
    }
  }
}

+ (id)_legacyMeaningResultForResult:(id)result requiredCriteriaByIdentifier:(id)identifier
{
  resultCopy = result;
  identifierCopy = identifier;
  requiredCriteria = [resultCopy requiredCriteria];
  identifier = [requiredCriteria identifier];

  if ([identifier isEqualToString:@"AmusementPark"] & 1) != 0 || (objc_msgSend(identifier, "isEqualToString:", @"Festival"))
  {
    v9 = kPGGraphNodeMeaningEntertainment;
  }

  else if ([identifier isEqualToString:@"Concert"] & 1) != 0 || (objc_msgSend(identifier, "isEqualToString:", @"Dance") & 1) != 0 || (objc_msgSend(identifier, "isEqualToString:", @"Theater"))
  {
    v9 = kPGGraphNodeMeaningPerformance;
  }

  else
  {
    if (![identifier isEqualToString:@"Wedding"])
    {
      goto LABEL_12;
    }

    v9 = kPGGraphNodeMeaningGathering;
  }

  v10 = [identifierCopy objectForKeyedSubscript:*v9];
  firstObject = [v10 firstObject];

  if (firstObject)
  {
    v12 = [PGMeaningfulEventMatchingResult alloc];
    isMatching = [resultCopy isMatching];
    [resultCopy score];
    v15 = -[PGMeaningfulEventMatchingResult initWithIsMatching:score:isReliable:requiredCriteria:](v12, "initWithIsMatching:score:isReliable:requiredCriteria:", isMatching, [resultCopy isReliable], firstObject, v14);

    goto LABEL_13;
  }

LABEL_12:
  v15 = 0;
LABEL_13:

  return v15;
}

+ (id)_postProcessResults:(id)results forMoment:(id)moment
{
  resultsCopy = results;
  momentCopy = moment;
  if ([resultsCopy count] > 1)
  {
    v8 = [self _postProcessBirthdaysWithResults:resultsCopy forMoment:momentCopy];
  }

  else
  {
    v8 = resultsCopy;
  }

  v9 = v8;

  return v9;
}

+ (id)processRequiredCriteria:(id)criteria forMoment:(id)moment meaningfulEventProcessorCache:(id)cache serviceManager:(id)manager
{
  criteriaCopy = criteria;
  managerCopy = manager;
  cacheCopy = cache;
  momentCopy = moment;
  v14 = [[PGMeaningfulEventMatchingCriteria alloc] initWithMoment:momentCopy cache:cacheCopy serviceManager:managerCopy];

  v15 = [MEMORY[0x277CBEB58] set];
  v16 = [MEMORY[0x277CBEB58] set];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __109__PGMeaningfulEventProcessor_processRequiredCriteria_forMoment_meaningfulEventProcessorCache_serviceManager___block_invoke;
  v23[3] = &unk_27887F460;
  v24 = v16;
  v25 = v14;
  v27 = criteriaCopy;
  selfCopy = self;
  v26 = v15;
  v17 = criteriaCopy;
  v18 = v15;
  v19 = v14;
  v20 = v16;
  [v17 enumerateKeysAndObjectsUsingBlock:v23];
  v21 = [self _postProcessResults:v18 forMoment:momentCopy];

  return v21;
}

void __109__PGMeaningfulEventProcessor_processRequiredCriteria_forMoment_meaningfulEventProcessorCache_serviceManager___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (([*(a1 + 32) containsObject:v5] & 1) == 0)
  {
    v25 = v6;
    v26 = v5;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v32;
      v27 = *v32;
      while (2)
      {
        v11 = 0;
        v28 = v9;
        do
        {
          if (*v32 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v31 + 1) + 8 * v11);
          v13 = objc_autoreleasePoolPush();
          v14 = [*(a1 + 40) matchingResultWithCriteria:v12];
          if ([v14 isMatching])
          {
            v15 = [v12 identifier];
            v16 = [v14 isReliable];
            [*(a1 + 48) addObject:v14];
            v17 = [*(a1 + 64) _legacyMeaningResultForResult:v14 requiredCriteriaByIdentifier:*(a1 + 56)];
            if (v17)
            {
              v29 = v16;
              v30 = v15;
              [*(a1 + 48) addObject:v17];
              v18 = [v17 requiredCriteria];
              v19 = [v18 identifier];

              if ([v17 isReliable])
              {
                [*(a1 + 32) addObject:v19];
              }

              v20 = [PGLogging sharedLogging:v25];
              v21 = [v20 loggingConnection];

              if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
              {
                v22 = [v14 requiredCriteria];
                [v22 identifier];
                v24 = v23 = v7;
                *buf = 138543618;
                v36 = v19;
                v37 = 2114;
                v38 = v24;
                _os_log_impl(&dword_22F0FC000, v21, OS_LOG_TYPE_INFO, "[MeaningInference] Adding legacy meaning %{public}@ for meaning %{public}@", buf, 0x16u);

                v7 = v23;
                v10 = v27;
              }

              v9 = v28;
              v15 = v30;
              v16 = v29;
            }

            if (v16)
            {
              [*(a1 + 32) addObject:v15];

              objc_autoreleasePoolPop(v13);
              goto LABEL_20;
            }
          }

          objc_autoreleasePoolPop(v13);
          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_20:

    v6 = v25;
    v5 = v26;
  }
}

@end