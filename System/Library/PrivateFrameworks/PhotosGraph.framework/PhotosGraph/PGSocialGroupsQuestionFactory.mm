@interface PGSocialGroupsQuestionFactory
+ (void)enumeratePeopleClustersWithGraph:(id)graph withLinkage:(unint64_t)linkage withBlock:(id)block;
+ (void)enumerateSocialGroupsWithGraph:(id)graph withLinkage:(unint64_t)linkage validGroupsBlock:(id)block invalidGroupsBlock:(id)groupsBlock averageWeight:(float *)weight;
- (id)_createSocialGroupWithPersonLocalIdentifiers:(id)identifiers;
- (id)_identifierForPersonNodesAsString:(id)string;
- (id)_socialGroupsForSurvey:(id)survey withLimit:(unint64_t)limit;
- (id)_socialGroupsForSurveyFromCurrentAlgorithm:(id)algorithm;
- (id)_socialGroupsForSurveyFromCustomAlgorithm:(id)algorithm;
- (id)_socialGroupsForSurveyFromNewAlgorithm:(id)algorithm withLinkage:(unint64_t)linkage;
- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block;
@end

@implementation PGSocialGroupsQuestionFactory

+ (void)enumeratePeopleClustersWithGraph:(id)graph withLinkage:(unint64_t)linkage withBlock:(id)block
{
  v147[2] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  blockCopy = block;
  [graphCopy _checkCanRead];
  meNode = [graphCopy meNode];
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  relevantMomentNodesForSocialGroupProcessing = [graphCopy relevantMomentNodesForSocialGroupProcessing];
  v139[0] = 0;
  v139[1] = v139;
  v139[2] = 0x2020000000;
  v139[3] = 0;
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v136[0] = MEMORY[0x277D85DD0];
  v136[1] = 3221225472;
  v136[2] = __88__PGSocialGroupsQuestionFactory_enumeratePeopleClustersWithGraph_withLinkage_withBlock___block_invoke;
  v136[3] = &unk_278888660;
  v11 = v10;
  v137 = v11;
  v138 = v139;
  [relevantMomentNodesForSocialGroupProcessing enumerateObjectsUsingBlock:v136];
  v133[0] = MEMORY[0x277D85DD0];
  v133[1] = 3221225472;
  v133[2] = __88__PGSocialGroupsQuestionFactory_enumeratePeopleClustersWithGraph_withLinkage_withBlock___block_invoke_3;
  v133[3] = &unk_278889EA0;
  v12 = v11;
  v134 = v12;
  v76 = meNode;
  v135 = v76;
  [graphCopy enumerateNodesInDomain:300 usingBlock:v133];
  v129 = 0;
  v130 = &v129;
  v131 = 0x2020000000;
  v132 = 0;
  v125[0] = MEMORY[0x277D85DD0];
  v125[1] = 3221225472;
  v125[2] = __88__PGSocialGroupsQuestionFactory_enumeratePeopleClustersWithGraph_withLinkage_withBlock___block_invoke_4;
  v125[3] = &unk_278888770;
  v126 = v12;
  v128 = &v129;
  v84 = v9;
  v127 = v84;
  v77 = v126;
  [v126 enumerateKeysAndObjectsUsingBlock:v125];
  v82 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"personNodes" ascending:1 comparator:&__block_literal_global_398];
  v81 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"superGroupMomentNodes" ascending:0 comparator:&__block_literal_global_402];
  v147[0] = v82;
  v147[1] = v81;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v147 count:2];
  [v84 sortUsingDescriptors:v13];

  v14 = objc_alloc(MEMORY[0x277D3AC88]);
  v123[0] = MEMORY[0x277D85DD0];
  v123[1] = 3221225472;
  v123[2] = __88__PGSocialGroupsQuestionFactory_enumeratePeopleClustersWithGraph_withLinkage_withBlock___block_invoke_6;
  v123[3] = &unk_2788887D8;
  v85 = graphCopy;
  v124 = v85;
  v15 = [v14 initWithDistanceBlock:v123];
  [v15 setK:1];
  [v15 setLinkage:linkage];
  if ([v15 linkage] == 5)
  {
    [v15 setClusterKeyElementBlock:&__block_literal_global_407];
  }

  if ([v15 linkage] == 4)
  {
    [v15 setClusterConsolidationBlock:&__block_literal_global_410];
  }

  [v15 setThreshold:0.0];
  v75 = v15;
  v16 = [v15 performWithDataset:v84 progressBlock:0];
  v17 = [v16 sortedArrayUsingComparator:&__block_literal_global_413];

  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  obj = v17;
  v18 = [obj countByEnumeratingWithState:&v119 objects:v146 count:16];
  if (v18)
  {
    v19 = *v120;
    v72 = *v120;
    do
    {
      v78 = 0;
      v73 = v18;
      do
      {
        if (*v120 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v119 + 1) + 8 * v78);
        context = objc_autoreleasePoolPush();
        objects = [v20 objects];
        v90 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v117 = 0u;
        v118 = 0u;
        v115 = 0u;
        v116 = 0u;
        v91 = objects;
        v22 = [objects valueForKey:@"momentNodes"];
        v23 = [v22 countByEnumeratingWithState:&v115 objects:v145 count:16];
        if (v23)
        {
          v24 = *v116;
          do
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v116 != v24)
              {
                objc_enumerationMutation(v22);
              }

              [v90 addObjectsFromArray:*(*(&v115 + 1) + 8 * i)];
            }

            v23 = [v22 countByEnumeratingWithState:&v115 objects:v145 count:16];
          }

          while (v23);
        }

        v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v113 = 0u;
        v114 = 0u;
        v111 = 0u;
        v112 = 0u;
        v27 = [v91 valueForKey:@"superGroupMomentNodes"];
        v28 = [v27 countByEnumeratingWithState:&v111 objects:v144 count:16];
        if (v28)
        {
          v29 = *v112;
          do
          {
            for (j = 0; j != v28; ++j)
            {
              if (*v112 != v29)
              {
                objc_enumerationMutation(v27);
              }

              v31 = *(*(&v111 + 1) + 8 * j);
              v107 = 0u;
              v108 = 0u;
              v109 = 0u;
              v110 = 0u;
              v32 = v31;
              v33 = [v32 countByEnumeratingWithState:&v107 objects:v143 count:16];
              if (v33)
              {
                v34 = *v108;
                do
                {
                  for (k = 0; k != v33; ++k)
                  {
                    if (*v108 != v34)
                    {
                      objc_enumerationMutation(v32);
                    }

                    if (([v26 containsObject:*(*(&v107 + 1) + 8 * k)] & 1) == 0)
                    {
                      [v26 addObjectsFromArray:v32];
                    }
                  }

                  v33 = [v32 countByEnumeratingWithState:&v107 objects:v143 count:16];
                }

                while (v33);
              }
            }

            v28 = [v27 countByEnumeratingWithState:&v111 objects:v144 count:16];
          }

          while (v28);
        }

        v93 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v86 = v91;
        v36 = [v86 countByEnumeratingWithState:&v103 objects:v142 count:16];
        if (v36)
        {
          v87 = *v104;
          do
          {
            v37 = 0;
            v88 = v36;
            do
            {
              if (*v104 != v87)
              {
                objc_enumerationMutation(v86);
              }

              v89 = v37;
              v38 = *(*(&v103 + 1) + 8 * v37);
              v99 = 0u;
              v100 = 0u;
              v101 = 0u;
              v102 = 0u;
              v39 = [v38 objectForKeyedSubscript:@"personNodes"];
              v40 = [v39 countByEnumeratingWithState:&v99 objects:v141 count:16];
              if (v40)
              {
                v41 = *v100;
                v92 = v39;
                do
                {
                  for (m = 0; m != v40; ++m)
                  {
                    if (*v100 != v41)
                    {
                      objc_enumerationMutation(v92);
                    }

                    v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(*(&v99 + 1) + 8 * m), "identifier")}];
                    v44 = [v93 objectForKeyedSubscript:v43];
                    unsignedIntegerValue = [v44 unsignedIntegerValue];

                    v46 = MEMORY[0x277CCABB0];
                    v47 = [v38 objectForKeyedSubscript:@"momentNodes"];
                    v48 = [v46 numberWithUnsignedInteger:{objc_msgSend(v47, "count") + unsignedIntegerValue}];
                    [v93 setObject:v48 forKeyedSubscript:v43];
                  }

                  v39 = v92;
                  v40 = [v92 countByEnumeratingWithState:&v99 objects:v141 count:16];
                }

                while (v40);
              }

              v37 = v89 + 1;
            }

            while (v89 + 1 != v88);
            v36 = [v86 countByEnumeratingWithState:&v103 objects:v142 count:16];
          }

          while (v36);
        }

        v49 = [v93 keysSortedByValueUsingComparator:&__block_literal_global_418];
        v50 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v51 = objc_alloc_init(MEMORY[0x277CBEB18]);
        firstObject = [v49 firstObject];
        v53 = [v93 objectForKeyedSubscript:firstObject];
        [v53 floatValue];
        v55 = v54;

        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v56 = v49;
        v57 = [v56 countByEnumeratingWithState:&v95 objects:v140 count:16];
        if (v57)
        {
          v58 = *v96;
LABEL_49:
          v59 = 0;
          while (1)
          {
            if (*v96 != v58)
            {
              objc_enumerationMutation(v56);
            }

            v60 = *(*(&v95 + 1) + 8 * v59);
            v61 = 0.0;
            if (v55 <= 0.0 || ([v93 objectForKeyedSubscript:*(*(&v95 + 1) + 8 * v59)], v62 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v62, "doubleValue"), v64 = v63, v62, v61 = v64 / v55, v61 < 0.35))
            {
              if ([v93 count] != 1)
              {
                break;
              }
            }

            v65 = [v85 nodeForIdentifier:{objc_msgSend(v60, "unsignedIntegerValue")}];
            [v50 addObject:v65];

            v66 = [MEMORY[0x277CCABB0] numberWithDouble:v61];
            [v51 addObject:v66];

            if (v57 == ++v59)
            {
              v57 = [v56 countByEnumeratingWithState:&v95 objects:v140 count:16];
              if (v57)
              {
                goto LABEL_49;
              }

              break;
            }
          }
        }

        if ([v50 count] == 1)
        {
          v67 = [v50 objectAtIndexedSubscript:0];
          v68 = [v67 numberOfMomentNodes] > 1;

          if (v68)
          {
            goto LABEL_61;
          }
        }

        else if ([v26 count] >= 2)
        {
LABEL_61:
          v70 = [v26 count];
          v71 = v70 / v130[3];
          v94 = 0;
          blockCopy[2](blockCopy, v50, v51, v90, v26, &v94, v71);
          v69 = v94;
          goto LABEL_62;
        }

        v69 = 3;
LABEL_62:

        objc_autoreleasePoolPop(context);
        v19 = v72;
        if (v69 != 3 && v69)
        {
          goto LABEL_66;
        }

        ++v78;
      }

      while (v78 != v73);
      v18 = [obj countByEnumeratingWithState:&v119 objects:v146 count:16];
    }

    while (v18);
  }

LABEL_66:

  _Block_object_dispose(&v129, 8);
  _Block_object_dispose(v139, 8);
}

void __88__PGSocialGroupsQuestionFactory_enumeratePeopleClustersWithGraph_withLinkage_withBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v6 = a2;
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __88__PGSocialGroupsQuestionFactory_enumeratePeopleClustersWithGraph_withLinkage_withBlock___block_invoke_2;
  v12[3] = &unk_278889240;
  v8 = v7;
  v13 = v8;
  [v6 enumeratePersonNodesUsingBlock:v12];
  if ([v8 count])
  {
    v9 = [*(a1 + 32) objectForKeyedSubscript:v8];

    if (v9)
    {
      v10 = [*(a1 + 32) objectForKeyedSubscript:v8];
      [v10 addObject:v6];
    }

    else
    {
      v11 = [MEMORY[0x277CBEB18] arrayWithObject:v6];
      [*(a1 + 32) setObject:v11 forKeyedSubscript:v8];

      ++*(*(*(a1 + 40) + 8) + 24);
    }

    *a4 = *(*(*(a1 + 40) + 8) + 24) > 0x3E8uLL;
  }
}

void __88__PGSocialGroupsQuestionFactory_enumeratePeopleClustersWithGraph_withLinkage_withBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [v4 addObject:v9];
  v5 = [*(a1 + 32) objectForKey:v4];
  if (v5)
  {
  }

  else
  {
    v6 = [v9 localIdentifier];
    v7 = [*(a1 + 40) localIdentifier];
    v8 = [v6 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      [*(a1 + 32) setObject:v3 forKeyedSubscript:v4];
    }
  }
}

void __88__PGSocialGroupsQuestionFactory_enumeratePeopleClustersWithGraph_withLinkage_withBlock___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v155 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v82 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v81 = a1;
  v7 = *(a1 + 32);
  v139[0] = MEMORY[0x277D85DD0];
  v139[1] = 3221225472;
  v139[2] = __88__PGSocialGroupsQuestionFactory_enumeratePeopleClustersWithGraph_withLinkage_withBlock___block_invoke_5;
  v139[3] = &unk_278888688;
  v8 = v5;
  v140 = v8;
  obj = v6;
  v141 = obj;
  [v7 enumerateKeysAndObjectsUsingBlock:v139];
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v10 = v8;
  v86 = v10;
  v96 = [v10 countByEnumeratingWithState:&v135 objects:v154 count:16];
  if (v96)
  {
    v94 = *v136;
    do
    {
      for (i = 0; i != v96; ++i)
      {
        if (*v136 != v94)
        {
          objc_enumerationMutation(v10);
        }

        v12 = [*(*(&v135 + 1) + 8 * i) collection];
        v13 = [v12 relationshipEdges];
        v14 = [v13 labels];

        v133 = 0u;
        v134 = 0u;
        v131 = 0u;
        v132 = 0u;
        v15 = v14;
        v16 = [v15 countByEnumeratingWithState:&v131 objects:v153 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v132;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v132 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v131 + 1) + 8 * j);
              v21 = [v9 objectForKey:v20];

              if (v21)
              {
                v22 = MEMORY[0x277CCABB0];
                v23 = [v9 objectForKeyedSubscript:v20];
                [v23 doubleValue];
                v25 = [v22 numberWithDouble:v24 + 1.0];
                [v9 setObject:v25 forKeyedSubscript:v20];
              }

              else
              {
                [v9 setObject:&unk_2844846E0 forKeyedSubscript:v20];
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v131 objects:v153 count:16];
          }

          while (v17);
        }

        v10 = v86;
      }

      v96 = [v86 countByEnumeratingWithState:&v135 objects:v154 count:16];
    }

    while (v96);
  }

  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v26 = [v9 allKeys];
  v27 = [v26 countByEnumeratingWithState:&v127 objects:v152 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v128;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v128 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v127 + 1) + 8 * k);
        v32 = MEMORY[0x277CCABB0];
        v33 = [v9 objectForKeyedSubscript:v31];
        [v33 doubleValue];
        v35 = [v32 numberWithDouble:{v34 / objc_msgSend(v10, "count")}];
        [v9 setObject:v35 forKeyedSubscript:v31];
      }

      v28 = [v26 countByEnumeratingWithState:&v127 objects:v152 count:16];
    }

    while (v28);
  }

  v36 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v95 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v93 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v151[0] = @"Hiking";
  v151[1] = @"Climbing";
  v151[2] = @"Beaching";
  v151[3] = @"Diving";
  v151[4] = @"WinterSport";
  v151[5] = @"Entertainment";
  v151[6] = @"Performance";
  v151[7] = @"Concert";
  v151[8] = @"Festival";
  v151[9] = @"Dance";
  v151[10] = @"SportEvent";
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v151 count:11];
  v150[0] = @"Beach";
  v150[1] = @"Urban";
  v150[2] = @"Mountain";
  v150[3] = @"Nature";
  v85 = [MEMORY[0x277CBEA60] arrayWithObjects:v150 count:4];
  v149[0] = @"Restaurant";
  v149[1] = @"AmusementPark";
  v149[2] = @"Park";
  v149[3] = @"Culture";
  v149[4] = @"Nightlife";
  v149[5] = @"Travel";
  v149[6] = @"Entertainment";
  v84 = [MEMORY[0x277CBEA60] arrayWithObjects:v149 count:7];
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v38 = obj;
  v97 = v38;
  v87 = [v38 countByEnumeratingWithState:&v123 objects:v148 count:16];
  if (v87)
  {
    v83 = *v124;
    do
    {
      v39 = 0;
      do
      {
        if (*v124 != v83)
        {
          objc_enumerationMutation(v38);
        }

        v88 = *(*(&v123 + 1) + 8 * v39);
        obja = v39;
        v40 = [v88 meaningLabelsIncludingParents];
        v119 = 0u;
        v120 = 0u;
        v121 = 0u;
        v122 = 0u;
        v41 = [v40 countByEnumeratingWithState:&v119 objects:v147 count:16];
        if (v41)
        {
          v42 = v41;
          v43 = *v120;
          do
          {
            for (m = 0; m != v42; ++m)
            {
              if (*v120 != v43)
              {
                objc_enumerationMutation(v40);
              }

              v45 = *(*(&v119 + 1) + 8 * m);
              if ([v37 containsObject:v45])
              {
                v46 = [v36 objectForKey:v45];

                if (v46)
                {
                  v47 = MEMORY[0x277CCABB0];
                  v48 = [v36 objectForKeyedSubscript:v45];
                  [v48 doubleValue];
                  v50 = [v47 numberWithDouble:v49 + 1.0];
                  [v36 setObject:v50 forKeyedSubscript:v45];
                }

                else
                {
                  [v36 setObject:&unk_2844846E0 forKeyedSubscript:v45];
                }
              }
            }

            v42 = [v40 countByEnumeratingWithState:&v119 objects:v147 count:16];
          }

          while (v42);
        }

        v116[0] = MEMORY[0x277D85DD0];
        v116[1] = 3221225472;
        v116[2] = __88__PGSocialGroupsQuestionFactory_enumeratePeopleClustersWithGraph_withLinkage_withBlock___block_invoke_389;
        v116[3] = &unk_2788886F8;
        v117 = &unk_2844866D8;
        v118 = v36;
        [v88 enumerateSceneEdgesAndNodesUsingBlock:v116];
        v113[0] = MEMORY[0x277D85DD0];
        v113[1] = 3221225472;
        v113[2] = __88__PGSocialGroupsQuestionFactory_enumeratePeopleClustersWithGraph_withLinkage_withBlock___block_invoke_2_391;
        v113[3] = &unk_278888720;
        v114 = v85;
        v115 = v95;
        [v88 enumerateROINodesUsingBlock:v113];
        v110[0] = MEMORY[0x277D85DD0];
        v110[1] = 3221225472;
        v110[2] = __88__PGSocialGroupsQuestionFactory_enumeratePeopleClustersWithGraph_withLinkage_withBlock___block_invoke_3_393;
        v110[3] = &unk_278888748;
        v111 = v84;
        v112 = v93;
        [v88 enumeratePOINodesUsingBlock:v110];

        v39 = obja + 1;
        v38 = v97;
      }

      while (obja + 1 != v87);
      v87 = [v97 countByEnumeratingWithState:&v123 objects:v148 count:16];
    }

    while (v87);
  }

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v51 = [v36 allKeys];
  v52 = [v51 countByEnumeratingWithState:&v106 objects:v146 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v107;
    do
    {
      for (n = 0; n != v53; ++n)
      {
        if (*v107 != v54)
        {
          objc_enumerationMutation(v51);
        }

        v56 = *(*(&v106 + 1) + 8 * n);
        v57 = MEMORY[0x277CCABB0];
        v58 = [v36 objectForKeyedSubscript:v56];
        [v58 doubleValue];
        v60 = [v57 numberWithDouble:{v59 / objc_msgSend(v97, "count")}];
        [v36 setObject:v60 forKeyedSubscript:v56];
      }

      v53 = [v51 countByEnumeratingWithState:&v106 objects:v146 count:16];
    }

    while (v53);
  }

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  objb = [v95 allKeys];
  v61 = [objb countByEnumeratingWithState:&v102 objects:v145 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v103;
    do
    {
      for (ii = 0; ii != v62; ++ii)
      {
        if (*v103 != v63)
        {
          objc_enumerationMutation(objb);
        }

        v65 = *(*(&v102 + 1) + 8 * ii);
        v66 = MEMORY[0x277CCABB0];
        v67 = [v95 objectForKeyedSubscript:v65];
        [v67 doubleValue];
        v69 = [v66 numberWithDouble:{v68 / objc_msgSend(v97, "count")}];
        [v95 setObject:v69 forKeyedSubscript:v65];
      }

      v62 = [objb countByEnumeratingWithState:&v102 objects:v145 count:16];
    }

    while (v62);
  }

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  objc = [v93 allKeys];
  v70 = [objc countByEnumeratingWithState:&v98 objects:v144 count:16];
  if (v70)
  {
    v71 = v70;
    v72 = *v99;
    do
    {
      for (jj = 0; jj != v71; ++jj)
      {
        if (*v99 != v72)
        {
          objc_enumerationMutation(objc);
        }

        v74 = *(*(&v98 + 1) + 8 * jj);
        v75 = MEMORY[0x277CCABB0];
        v76 = [v93 objectForKeyedSubscript:v74];
        [v76 doubleValue];
        v78 = [v75 numberWithDouble:{v77 / objc_msgSend(v97, "count")}];
        [v93 setObject:v78 forKeyedSubscript:v74];
      }

      v71 = [objc countByEnumeratingWithState:&v98 objects:v144 count:16];
    }

    while (v71);
  }

  if ([v97 count] >= 2 && objc_msgSend(v86, "count"))
  {
    *(*(*(v81 + 48) + 8) + 24) += [v82 count];
    v79 = *(v81 + 40);
    v142[0] = @"momentNodes";
    v142[1] = @"superGroupMomentNodes";
    v143[0] = v82;
    v143[1] = v97;
    v142[2] = @"personNodes";
    v142[3] = @"relationshipsDistribution";
    v143[2] = v86;
    v143[3] = v9;
    v142[4] = @"activitiesDistribution";
    v142[5] = @"roisDistribution";
    v143[4] = v36;
    v143[5] = v95;
    v142[6] = @"poisDistribution";
    v143[6] = v93;
    v80 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v143 forKeys:v142 count:7];
    [v79 addObject:v80];
  }
}

double __88__PGSocialGroupsQuestionFactory_enumeratePeopleClustersWithGraph_withLinkage_withBlock___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"personNodes"];
  v8 = [v5 objectForKeyedSubscript:@"personNodes"];
  if (([v7 isSubsetOfSet:v8] & 1) != 0 || (v9 = 3.0, objc_msgSend(v8, "isSubsetOfSet:", v7)))
  {
    [*(a1 + 32) peopleDistance:v5 withSecondBaseGroup:v6 threshold:0.28 factor:0.33];
    v11 = v10 + 0.0;
    [*(a1 + 32) momentsCountDistance:v5 withSecondBaseGroup:v6 withSubsetBias:@"momentNodes" withDistanceThreshold:0.0 withIntersectionBias:0.66 withKey:0.2];
    v9 = v11 + v12;
  }

  return v9;
}

uint64_t __88__PGSocialGroupsQuestionFactory_enumeratePeopleClustersWithGraph_withLinkage_withBlock___block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objects];
  v6 = [v5 valueForKeyPath:@"@sum.momentNodes.@count"];

  v7 = [v4 objects];

  v8 = [v7 valueForKeyPath:@"@sum.momentNodes.@count"];

  v9 = [v8 compare:v6];
  return v9;
}

id __88__PGSocialGroupsQuestionFactory_enumeratePeopleClustersWithGraph_withLinkage_withBlock___block_invoke_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v39 = *MEMORY[0x277D85DE8];
  v28 = a5;
  v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if (a4)
  {
    v8 = a4;
    for (i = 0; i != v8; ++i)
    {
      v10 = [v28 objectAtIndexedSubscript:*(*(a2 + 8 * a3) + 8 * i)];
      v11 = [v10 objectForKeyedSubscript:@"momentNodes"];
      [v27 addObjectsFromArray:v11];

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v12 = [v10 objectForKeyedSubscript:@"superGroupMomentNodes"];
      v13 = [v12 countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v34;
        do
        {
          for (j = 0; j != v14; ++j)
          {
            if (*v34 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v33 + 1) + 8 * j);
            if (([v6 containsObject:v17] & 1) == 0)
            {
              [v6 addObject:v17];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v33 objects:v38 count:16];
        }

        while (v14);
      }

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v18 = [v10 objectForKeyedSubscript:@"personNodes"];
      v19 = [v18 countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v30;
        do
        {
          for (k = 0; k != v20; ++k)
          {
            if (*v30 != v21)
            {
              objc_enumerationMutation(v18);
            }

            [v7 addObject:*(*(&v29 + 1) + 8 * k)];
          }

          v20 = [v18 countByEnumeratingWithState:&v29 objects:v37 count:16];
        }

        while (v20);
      }
    }
  }

  [v24 setObject:v7 forKeyedSubscript:@"personNodes"];
  [v24 setObject:v27 forKeyedSubscript:@"momentNodes"];
  [v24 setObject:v6 forKeyedSubscript:@"superGroupMomentNodes"];

  return v24;
}

uint64_t __88__PGSocialGroupsQuestionFactory_enumeratePeopleClustersWithGraph_withLinkage_withBlock___block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a4)
  {
    v9 = 0;
    v10 = 0;
    for (i = 0; i != a4; ++i)
    {
      v12 = [a5 objectAtIndexedSubscript:*(*(a2 + 8 * a3) + 8 * i)];
      v13 = [v12 objectForKeyedSubscript:@"personNodes"];
      if ([v13 count] > v9)
      {
        v9 = [v13 count];
        v10 = i;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return *(*(a2 + 8 * a3) + 8 * v10);
}

uint64_t __88__PGSocialGroupsQuestionFactory_enumeratePeopleClustersWithGraph_withLinkage_withBlock___block_invoke_5_399(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 count];
  if (v6 >= [v5 count])
  {
    v8 = [v4 count];
    v7 = v8 > [v5 count];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

uint64_t __88__PGSocialGroupsQuestionFactory_enumeratePeopleClustersWithGraph_withLinkage_withBlock___block_invoke_4_395(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 count];
  if (v6 >= [v5 count])
  {
    v8 = [v4 count];
    v7 = v8 > [v5 count];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

void __88__PGSocialGroupsQuestionFactory_enumeratePeopleClustersWithGraph_withLinkage_withBlock___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ([*(a1 + 32) isSubsetOfSet:a2])
  {
    [*(a1 + 40) addObjectsFromArray:v5];
  }
}

void __88__PGSocialGroupsQuestionFactory_enumeratePeopleClustersWithGraph_withLinkage_withBlock___block_invoke_389(uint64_t a1, void *a2, void *a3)
{
  v13 = a3;
  v5 = [a2 isReliable];
  v6 = v13;
  if (v5)
  {
    v7 = [v13 sceneName];
    if ([*(a1 + 32) containsObject:v7])
    {
      v8 = [*(a1 + 40) objectForKey:v7];

      if (v8)
      {
        v9 = MEMORY[0x277CCABB0];
        v10 = [*(a1 + 40) objectForKeyedSubscript:v7];
        [v10 doubleValue];
        v12 = [v9 numberWithDouble:v11 + 1.0];
        [*(a1 + 40) setObject:v12 forKeyedSubscript:v7];
      }

      else
      {
        [*(a1 + 40) setObject:&unk_2844846E0 forKeyedSubscript:v7];
      }
    }

    v6 = v13;
  }
}

void __88__PGSocialGroupsQuestionFactory_enumeratePeopleClustersWithGraph_withLinkage_withBlock___block_invoke_2_391(uint64_t a1, void *a2)
{
  v8 = [a2 label];
  if ([*(a1 + 32) containsObject:?])
  {
    v3 = [*(a1 + 40) objectForKey:v8];

    if (v3)
    {
      v4 = MEMORY[0x277CCABB0];
      v5 = [*(a1 + 40) objectForKeyedSubscript:v8];
      [v5 doubleValue];
      v7 = [v4 numberWithDouble:v6 + 1.0];
      [*(a1 + 40) setObject:v7 forKeyedSubscript:v8];
    }

    else
    {
      [*(a1 + 40) setObject:&unk_2844846E0 forKeyedSubscript:v8];
    }
  }
}

void __88__PGSocialGroupsQuestionFactory_enumeratePeopleClustersWithGraph_withLinkage_withBlock___block_invoke_3_393(uint64_t a1, void *a2)
{
  v8 = [a2 label];
  if ([*(a1 + 32) containsObject:?])
  {
    v3 = [*(a1 + 40) objectForKey:v8];

    if (v3)
    {
      v4 = MEMORY[0x277CCABB0];
      v5 = [*(a1 + 40) objectForKeyedSubscript:v8];
      [v5 doubleValue];
      v7 = [v4 numberWithDouble:v6 + 1.0];
      [*(a1 + 40) setObject:v7 forKeyedSubscript:v8];
    }

    else
    {
      [*(a1 + 40) setObject:&unk_2844846E0 forKeyedSubscript:v8];
    }
  }
}

void __88__PGSocialGroupsQuestionFactory_enumeratePeopleClustersWithGraph_withLinkage_withBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isMeNode] & 1) == 0)
  {
    [*(a1 + 32) addObject:v3];
  }
}

+ (void)enumerateSocialGroupsWithGraph:(id)graph withLinkage:(unint64_t)linkage validGroupsBlock:(id)block invalidGroupsBlock:(id)groupsBlock averageWeight:(float *)weight
{
  v251 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  blockCopy = block;
  groupsBlockCopy = groupsBlock;
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v241 = 0;
  v242 = &v241;
  v243 = 0x2020000000;
  v244 = 0;
  v237 = 0;
  v238 = &v237;
  v239 = 0x2020000000;
  v240 = 0;
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v233 = 0;
  v234 = &v233;
  v235 = 0x2020000000;
  v236 = 0;
  v14 = objc_opt_class();
  v225[0] = MEMORY[0x277D85DD0];
  v225[1] = 3221225472;
  v225[2] = __126__PGSocialGroupsQuestionFactory_enumerateSocialGroupsWithGraph_withLinkage_validGroupsBlock_invalidGroupsBlock_averageWeight___block_invoke;
  v225[3] = &unk_278888618;
  v230 = &v233;
  v231 = &v241;
  v232 = &v237;
  v176 = v12;
  v226 = v176;
  v175 = v13;
  v227 = v175;
  v179 = groupsBlockCopy;
  v229 = v179;
  v174 = v11;
  v228 = v174;
  [v14 enumeratePeopleClustersWithGraph:graphCopy withLinkage:linkage withBlock:v225];
  v15 = v234[3];
  if (!v15)
  {
    goto LABEL_72;
  }

  v242[6] = v242[6] / v15;
  v16 = [v176 sortedArrayUsingComparator:&__block_literal_global_63919];
  v17 = [objc_alloc(MEMORY[0x277D22C40]) initWithArray:v16];
  [v17 mean];
  v19 = v18;
  v172 = v17;
  [v17 standardDeviation];
  v21 = v20;
  v192 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v223 = 0u;
  v224 = 0u;
  v221 = 0u;
  v222 = 0u;
  obj = v16;
  v22 = [obj countByEnumeratingWithState:&v221 objects:v250 count:16];
  if (v22)
  {
    v23 = *v222;
    v24 = v19 - v21;
    v25 = v19 + v21;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v222 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v221 + 1) + 8 * i);
        [v27 floatValue];
        if (v28 >= v24)
        {
          [v27 floatValue];
          if (v29 <= v25)
          {
            [v192 addObject:v27];
          }
        }
      }

      v22 = [obj countByEnumeratingWithState:&v221 objects:v250 count:16];
    }

    while (v22);
  }

  v171 = [objc_alloc(MEMORY[0x277D22C40]) initWithArray:v192];
  [v171 mean];
  v187 = v30;
  v31 = [v175 sortedArrayUsingComparator:&__block_literal_global_336];
  v32 = [objc_alloc(MEMORY[0x277D22C40]) initWithArray:v31];
  [v32 mean];
  v34 = v33;
  v170 = v32;
  [v32 standardDeviation];
  v36 = v35;
  v191 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v219 = 0u;
  v220 = 0u;
  v217 = 0u;
  v218 = 0u;
  v181 = v31;
  v37 = [v181 countByEnumeratingWithState:&v217 objects:v249 count:16];
  if (v37)
  {
    v38 = *v218;
    v39 = v34 - v36;
    v40 = v34 + v36;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v218 != v38)
        {
          objc_enumerationMutation(v181);
        }

        v42 = *(*(&v217 + 1) + 8 * j);
        [v42 floatValue];
        if (v43 >= v39)
        {
          [v42 floatValue];
          if (v44 <= v40)
          {
            [v191 addObject:v42];
          }
        }
      }

      v37 = [v181 countByEnumeratingWithState:&v217 objects:v249 count:16];
    }

    while (v37);
  }

  v169 = [objc_alloc(MEMORY[0x277D22C40]) initWithArray:v191];
  [v169 mean];
  v185 = v45;
  v46 = v234[3];
  if (v46 > 0xC7)
  {
    v47 = -0.1;
  }

  else
  {
    v47 = ((v46 / 200.0) * 0.5) + -0.1;
  }

  v177 = v47;
  v190 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v215 = 0u;
  v216 = 0u;
  v213 = 0u;
  v214 = 0u;
  v180 = v174;
  v189 = [v180 countByEnumeratingWithState:&v213 objects:v248 count:16];
  if (v189)
  {
    v183 = *v214;
    do
    {
      for (k = 0; k != v189; ++k)
      {
        if (*v214 != v183)
        {
          objc_enumerationMutation(v180);
        }

        v48 = *(*(&v213 + 1) + 8 * k);
        v49 = [v48 objectForKeyedSubscript:@"personNodes"];
        v50 = [v48 objectForKeyedSubscript:@"peopleWeights"];
        v51 = [v48 objectForKeyedSubscript:@"momentNodes"];
        v52 = [v48 objectForKeyedSubscript:@"frequency"];
        [v52 floatValue];
        v54 = v53;

        v211 = [v48 objectForKeyedSubscript:@"superGroupMomentNodes"];
        *&v55 = [v51 count];
        LODWORD(v56) = v187;
        LODWORD(v57) = 1060320051;
        [graphCopy normalizeFeatureValue:v192 average:v55 featureValues:v56 factor:v57];
        v59 = v58;
        *&v60 = [v211 count];
        LODWORD(v61) = v185;
        LODWORD(v62) = 1060320051;
        [graphCopy normalizeFeatureValue:v191 average:v60 featureValues:v61 factor:v62];
        v64 = v63;
        [graphCopy averageTopMomentTimes:v211 numberOfMoments:3];
        v66 = v65;
        date = [MEMORY[0x277CBEAA8] date];
        [date timeIntervalSince1970];
        v69 = v68;

        date2 = [MEMORY[0x277CBEAA8] date];
        v206 = [date2 dateByAddingTimeInterval:-157680000.0];

        [v206 timeIntervalSince1970];
        v72 = v71;
        v73 = [v48 objectForKeyedSubscript:@"distribution"];
        v74 = [v73 objectForKeyedSubscript:@"relationshipsDistribution"];
        v193 = v73;
        v75 = [v74 objectForKey:@"FAMILY"];
        v196 = v74;
        LOBYTE(v73) = v75 == 0;

        if (v73)
        {
          v78 = 0.0;
        }

        else
        {
          v76 = [v74 objectForKeyedSubscript:@"FAMILY"];
          [v76 floatValue];
          v78 = v77;
        }

        v79 = (v66 - v72) / (v69 - v72);
        v80 = tanh((v78 * 3.0));
        v81 = -(v80 - (v78 * 2.0));
        if (v81 < 0.0)
        {
          v81 = 0.0;
        }

        if (v81 <= 1.0)
        {
          v82 = v81;
        }

        else
        {
          v82 = 1.0;
        }

        v83 = v49;
        v84 = v50;
        v85 = v51;
        v86 = 0;
        v87 = 0.0;
        while (v86 < [v83 count])
        {
          v88 = [v83 objectAtIndexedSubscript:v86];
          v89 = [v84 objectAtIndexedSubscript:v86];
          [v89 doubleValue];
          v91 = v90;

          numberOfMomentNodes = [v88 numberOfMomentNodes];
          if (numberOfMomentNodes)
          {
            v93 = [v85 count];
            v94 = -(v93 * v91 - numberOfMomentNodes);
            if (-(numberOfMomentNodes - v93 * v91) >= 0.0)
            {
              v94 = -(numberOfMomentNodes - v93 * v91);
            }

            v95 = v94 / numberOfMomentNodes;
          }

          else
          {
            v95 = 0.0;
          }

          v87 = v87 + v95;
          ++v86;
        }

        v96 = [v83 count];

        v97 = 1.0 - v87 / v96;
        v98 = v97;
        v99 = (((((v64 * 0.3) + (v59 * 0.7)) + (v79 * 0.0)) + (v82 * 0.0)) + 0.0) + (v98 * 0.0);
        v100 = v54 / v238[6];
        v246[0] = @"personNodes";
        v246[1] = @"peopleWeights";
        if (v99 >= 1.0)
        {
          v101 = ((1.0 - v100) * -0.01) + 1.0;
        }

        else
        {
          v101 = v99 + 0.0;
        }

        v247[0] = v83;
        v247[1] = v84;
        v246[2] = @"momentNodes";
        v246[3] = @"superGroupMomentNodes";
        v247[2] = v85;
        v247[3] = v211;
        v246[4] = @"socialGroupWeight";
        v204 = [MEMORY[0x277CCABB0] numberWithFloat:?];
        v247[4] = v204;
        v246[5] = @"groupCohesionScore";
        v202 = [MEMORY[0x277CCABB0] numberWithDouble:v97];
        v247[5] = v202;
        v246[6] = @"frequency";
        *&v102 = v54;
        v199 = [MEMORY[0x277CCABB0] numberWithFloat:v102];
        v247[6] = v199;
        v246[7] = @"avgFrequency";
        *&v103 = v242[6];
        v197 = [MEMORY[0x277CCABB0] numberWithFloat:v103];
        v247[7] = v197;
        v246[8] = @"exclusiveMomentCountFeature";
        *&v104 = v59;
        v105 = [MEMORY[0x277CCABB0] numberWithFloat:v104];
        v247[8] = v105;
        v246[9] = @"superGroupMomentCountFeature";
        *&v106 = v64;
        v107 = [MEMORY[0x277CCABB0] numberWithFloat:v106];
        v247[9] = v107;
        v246[10] = @"familyDistributionFeature";
        *&v108 = v82;
        v109 = [MEMORY[0x277CCABB0] numberWithFloat:v108];
        v247[10] = v109;
        v246[11] = @"semanticCohesionFeature";
        v110 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
        v247[11] = v110;
        v246[12] = @"recencyFeature";
        *&v111 = v79;
        v112 = [MEMORY[0x277CCABB0] numberWithFloat:v111];
        v247[12] = v112;
        v246[13] = @"ranking";
        *&v113 = v101;
        v114 = [MEMORY[0x277CCABB0] numberWithFloat:v113];
        v247[13] = v114;
        v115 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v247 forKeys:v246 count:14];
        [v190 addObject:v115];
      }

      v189 = [v180 countByEnumeratingWithState:&v213 objects:v248 count:16];
    }

    while (v189);
  }

  v116 = v234[3];
  if (v116 <= 0xC7)
  {
    v117 = (tanh(((v116 / 200.0) * 3.0)) * 15.0);
  }

  else
  {
    v117 = 15;
  }

  v188 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"ranking" ascending:0];
  v186 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"socialGroupWeight" ascending:0];
  v184 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"superGroupMomentCountFeature" ascending:0];
  v245[0] = v188;
  v245[1] = v186;
  v245[2] = v184;
  v118 = [MEMORY[0x277CBEA60] arrayWithObjects:v245 count:3];
  [v190 sortUsingDescriptors:v118];

  v119 = 0;
  if (v117 <= 5)
  {
    v120 = 5;
  }

  else
  {
    v120 = v117;
  }

  v194 = v120;
  v198 = 2 * v120;
  while (v119 < [v190 count])
  {
    v121 = [v190 objectAtIndexedSubscript:v119];
    v122 = v121;
    if (blockCopy)
    {
      v123 = [v121 objectForKeyedSubscript:@"ranking"];
      [v123 floatValue];
      if (v124 >= v177)
      {

        if (v119 < v194)
        {
          v208 = [v122 objectForKeyedSubscript:@"personNodes"];
          v207 = [v122 objectForKeyedSubscript:@"peopleWeights"];
          v205 = [v122 objectForKeyedSubscript:@"momentNodes"];
          v203 = [v122 objectForKeyedSubscript:@"superGroupMomentNodes"];
          v212 = [v122 objectForKeyedSubscript:@"socialGroupWeight"];
          [v212 floatValue];
          v200 = v125;
          v210 = [v122 objectForKeyedSubscript:@"groupCohesionScore"];
          [v210 floatValue];
          v127 = v126;
          v128 = [v122 objectForKeyedSubscript:@"frequency"];
          [v128 floatValue];
          v130 = v129;
          v131 = [v122 objectForKeyedSubscript:@"avgFrequency"];
          [v131 floatValue];
          v133 = v132;
          v134 = [v122 objectForKeyedSubscript:@"exclusiveMomentCountFeature"];
          [v134 floatValue];
          v136 = v135;
          v137 = [v122 objectForKeyedSubscript:@"superGroupMomentCountFeature"];
          [v137 floatValue];
          v139 = v138;
          v140 = [v122 objectForKeyedSubscript:@"familyDistributionFeature"];
          [v140 floatValue];
          v142 = v141;
          v143 = [v122 objectForKeyedSubscript:@"semanticCohesionFeature"];
          [v143 floatValue];
          v145 = v144;
          v146 = [v122 objectForKeyedSubscript:@"recencyFeature"];
          [v146 floatValue];
          v148 = v147;
          v149 = [v122 objectForKeyedSubscript:@"ranking"];
          [v149 floatValue];
          blockCopy[2](blockCopy, v208, v207, v205, v203, v200, v127, v130, v133, v136, v139, v142, v145, COERCE_DOUBLE(__PAIR64__(v150, v148)));
LABEL_67:

          goto LABEL_68;
        }
      }

      else
      {
      }
    }

    if (v179 && v119 < v198)
    {
      v208 = [v122 objectForKeyedSubscript:@"personNodes"];
      v207 = [v122 objectForKeyedSubscript:@"peopleWeights"];
      v205 = [v122 objectForKeyedSubscript:@"momentNodes"];
      v203 = [v122 objectForKeyedSubscript:@"superGroupMomentNodes"];
      v212 = [v122 objectForKeyedSubscript:@"socialGroupWeight"];
      [v212 floatValue];
      v201 = v151;
      v210 = [v122 objectForKeyedSubscript:@"groupCohesionScore"];
      [v210 floatValue];
      v153 = v152;
      v128 = [v122 objectForKeyedSubscript:@"frequency"];
      [v128 floatValue];
      v155 = v154;
      v131 = [v122 objectForKeyedSubscript:@"avgFrequency"];
      [v131 floatValue];
      v157 = v156;
      v134 = [v122 objectForKeyedSubscript:@"exclusiveMomentCountFeature"];
      [v134 floatValue];
      v159 = v158;
      v137 = [v122 objectForKeyedSubscript:@"superGroupMomentCountFeature"];
      [v137 floatValue];
      v161 = v160;
      v140 = [v122 objectForKeyedSubscript:@"familyDistributionFeature"];
      [v140 floatValue];
      v163 = v162;
      v143 = [v122 objectForKeyedSubscript:@"semanticCohesionFeature"];
      [v143 floatValue];
      v165 = v164;
      v146 = [v122 objectForKeyedSubscript:@"recencyFeature"];
      [v146 floatValue];
      v167 = v166;
      v149 = [v122 objectForKeyedSubscript:@"ranking"];
      [v149 floatValue];
      (*(v179 + 2))(v179, v208, v207, v205, v203, v201, v153, v155, v157, v159, v161, v163, v165, COERCE_DOUBLE(__PAIR64__(v168, v167)));
      goto LABEL_67;
    }

LABEL_68:

    ++v119;
  }

  if (weight)
  {
    *weight = v242[6] / v238[6];
  }

LABEL_72:
  _Block_object_dispose(&v233, 8);

  _Block_object_dispose(&v237, 8);
  _Block_object_dispose(&v241, 8);
}

void __126__PGSocialGroupsQuestionFactory_enumerateSocialGroupsWithGraph_withLinkage_validGroupsBlock_invalidGroupsBlock_averageWeight___block_invoke(void *a1, void *a2, void *a3, void *a4, void *a5, float a6)
{
  v29[5] = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  ++*(*(a1[8] + 8) + 24);
  *(*(a1[9] + 8) + 24) = *(*(a1[9] + 8) + 24) + a6;
  v15 = *(a1[10] + 8);
  if (*(v15 + 24) == 0.0)
  {
    *(v15 + 24) = a6;
  }

  v16 = a1[4];
  v17 = MEMORY[0x277CCABB0];
  *&v18 = [v13 count];
  v19 = [v17 numberWithFloat:v18];
  [v16 addObject:v19];

  v20 = a1[5];
  v21 = MEMORY[0x277CCABB0];
  *&v22 = [v14 count];
  v23 = [v21 numberWithFloat:v22];
  [v20 addObject:v23];

  if ([v11 count] && a1[7])
  {
    v25 = a1[6];
    v28[0] = @"personNodes";
    v28[1] = @"peopleWeights";
    v29[0] = v11;
    v29[1] = v12;
    v28[2] = @"momentNodes";
    v28[3] = @"superGroupMomentNodes";
    v29[2] = v13;
    v29[3] = v14;
    v28[4] = @"frequency";
    *&v24 = a6;
    v26 = [MEMORY[0x277CCABB0] numberWithFloat:v24];
    v29[4] = v26;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:5];
    [v25 addObject:v27];
  }
}

- (id)_identifierForPersonNodesAsString:(id)string
{
  v3 = [PGGraphSocialGroupNode identifierForMemberNodes:string];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:v3];
  stringValue = [v4 stringValue];

  return stringValue;
}

- (id)_createSocialGroupWithPersonLocalIdentifiers:(id)identifiers
{
  v29 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v4 = +[PGGraphPersonNode personSortDescriptors];
  v5 = [identifiersCopy sortedArrayUsingDescriptors:v4];

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        localIdentifier = [v13 localIdentifier];
        [array addObject:localIdentifier];

        name = [v13 name];
        v16 = [name length];

        if (v16)
        {
          name2 = [v13 name];
          [array2 addObject:name2];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v10);
  }

  v18 = [(PGSocialGroupsQuestionFactory *)self _identifierForPersonNodesAsString:v8];
  v26[0] = @"socialGroupID";
  v26[1] = @"personLocalIdentifiers";
  v27[0] = v18;
  v27[1] = array;
  v26[2] = @"personNames";
  v27[2] = array2;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];

  return v19;
}

- (id)_socialGroupsForSurveyFromCustomAlgorithm:(id)algorithm
{
  v63[1] = *MEMORY[0x277D85DE8];
  algorithmCopy = algorithm;
  [algorithmCopy _checkCanRead];
  array = [MEMORY[0x277CBEB18] array];
  relevantMomentNodesForSocialGroupProcessing = [algorithmCopy relevantMomentNodesForSocialGroupProcessing];
  v59[0] = 0;
  v59[1] = v59;
  v59[2] = 0x2020000000;
  v59[3] = 0;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __75__PGSocialGroupsQuestionFactory__socialGroupsForSurveyFromCustomAlgorithm___block_invoke;
  v56[3] = &unk_278888660;
  v5 = dictionary;
  v57 = v5;
  v58 = v59;
  [relevantMomentNodesForSocialGroupProcessing enumerateObjectsUsingBlock:v56];
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x2020000000;
  v55[3] = 0;
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __75__PGSocialGroupsQuestionFactory__socialGroupsForSurveyFromCustomAlgorithm___block_invoke_3;
  v52[3] = &unk_278888860;
  v54 = v55;
  v6 = array;
  v53 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:v52];
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  v41 = v5;
  v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"personNodes" ascending:0 comparator:&__block_literal_global_420];
  v63[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:1];
  [v6 sortUsingDescriptors:v9];
  v42 = v8;

  for (i = 0; i != 10; ++i)
  {
    if (i >= [v6 count])
    {
      break;
    }

    v11 = [v6 objectAtIndexedSubscript:i];
    if (([orderedSet containsObject:v11] & 1) == 0)
    {
      [orderedSet addObject:v11];
    }
  }

  v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"momentNodes" ascending:1 comparator:&__block_literal_global_422_63944];
  v62 = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v62 count:1];
  [v6 sortUsingDescriptors:v13];
  v40 = v12;

  v14 = 0;
  v15 = 1;
  while (v14 < [v6 count] && v15 < 7)
  {
    v16 = [v6 objectAtIndexedSubscript:v14];
    v17 = [v16 objectForKeyedSubscript:@"momentNodes"];
    v18 = [v17 count];
    if (v18 > v15)
    {
      if (([orderedSet containsObject:v16] & 1) == 0)
      {
        [orderedSet addObject:v16];
      }

      v15 = v18;
    }

    ++v14;
  }

  v19 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"momentNodes" ascending:0 comparator:&__block_literal_global_424];
  v61 = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
  [v6 sortUsingDescriptors:v20];
  v39 = v19;

  v21 = 0;
  v45 = 1;
  for (j = 0; j < [v6 count]; ++j)
  {
    v22 = [v6 objectAtIndexedSubscript:?];
    if (([orderedSet containsObject:v22] & 1) == 0)
    {
      [orderedSet addObject:v22];
      if (++v21 > 0x45)
      {

        break;
      }

      v23 = 0;
      for (k = v45; k < [v6 count] && v23 < 4; ++k)
      {
        v25 = [v6 objectAtIndexedSubscript:k];
        v26 = [v22 objectForKeyedSubscript:@"personNodes"];
        v27 = [v25 objectForKeyedSubscript:@"personNodes"];
        if ((([v26 isSubsetOfSet:v27] & 1) != 0 || objc_msgSend(v27, "isSubsetOfSet:", v26)) && (objc_msgSend(orderedSet, "containsObject:", v25) & 1) == 0)
        {
          [orderedSet addObject:v25];
          if (++v21 >= 0x46)
          {

            break;
          }

          ++v23;
        }
      }
    }

    ++v45;
  }

  orderedSet2 = [MEMORY[0x277CBEB40] orderedSet];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v29 = orderedSet;
  v30 = [v29 countByEnumeratingWithState:&v48 objects:v60 count:16];
  if (v30)
  {
    v31 = *v49;
    do
    {
      for (m = 0; m != v30; ++m)
      {
        if (*v49 != v31)
        {
          objc_enumerationMutation(v29);
        }

        v33 = [*(*(&v48 + 1) + 8 * m) objectForKeyedSubscript:@"personNodes"];
        if ([v33 count])
        {
          v34 = MEMORY[0x277CBEA60];
          allObjects = [v33 allObjects];
          v36 = [v34 arrayWithArray:allObjects];

          v37 = [(PGSocialGroupsQuestionFactory *)self _createSocialGroupWithPersonLocalIdentifiers:v36];
          [orderedSet2 addObject:v37];
        }
      }

      v30 = [v29 countByEnumeratingWithState:&v48 objects:v60 count:16];
    }

    while (v30);
  }

  _Block_object_dispose(v55, 8);
  _Block_object_dispose(v59, 8);

  return orderedSet2;
}

void __75__PGSocialGroupsQuestionFactory__socialGroupsForSurveyFromCustomAlgorithm___block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v6 = a2;
  v7 = [MEMORY[0x277CBEB58] set];
  v8 = [v6 collection];
  v9 = [v8 personNodes];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__PGSocialGroupsQuestionFactory__socialGroupsForSurveyFromCustomAlgorithm___block_invoke_2;
  v14[3] = &unk_278889240;
  v10 = v7;
  v15 = v10;
  [v9 enumerateNodesUsingBlock:v14];
  if ([v10 count])
  {
    v11 = [*(a1 + 32) objectForKeyedSubscript:v10];

    if (v11)
    {
      v12 = [*(a1 + 32) objectForKeyedSubscript:v10];
      [v12 addObject:v6];
    }

    else
    {
      v13 = [MEMORY[0x277CBEB18] arrayWithObject:v6];
      [*(a1 + 32) setObject:v13 forKeyedSubscript:v10];

      ++*(*(*(a1 + 40) + 8) + 24);
    }

    *a4 = *(*(*(a1 + 40) + 8) + 24) > 0x3E8uLL;
  }
}

void __75__PGSocialGroupsQuestionFactory__socialGroupsForSurveyFromCustomAlgorithm___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  *(*(*(a1 + 40) + 8) + 24) += [v6 count];
  if ([v5 count])
  {
    v7 = *(a1 + 32);
    v9[0] = @"momentNodes";
    v9[1] = @"personNodes";
    v10[0] = v6;
    v10[1] = v5;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
    [v7 addObject:v8];
  }
}

uint64_t __75__PGSocialGroupsQuestionFactory__socialGroupsForSurveyFromCustomAlgorithm___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 count];
  if (v6 >= [v5 count])
  {
    v8 = [v4 count];
    v7 = v8 > [v5 count];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

uint64_t __75__PGSocialGroupsQuestionFactory__socialGroupsForSurveyFromCustomAlgorithm___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 count];
  if (v6 >= [v5 count])
  {
    v8 = [v4 count];
    v7 = v8 > [v5 count];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

uint64_t __75__PGSocialGroupsQuestionFactory__socialGroupsForSurveyFromCustomAlgorithm___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 count];
  if (v6 >= [v5 count])
  {
    v8 = [v4 count];
    v7 = v8 > [v5 count];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

void __75__PGSocialGroupsQuestionFactory__socialGroupsForSurveyFromCustomAlgorithm___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (([v4 isMeNode] & 1) == 0)
  {
    v3 = [v4 localIdentifier];

    if (v3)
    {
      [*(a1 + 32) addObject:v4];
    }
  }
}

- (id)_socialGroupsForSurveyFromNewAlgorithm:(id)algorithm withLinkage:(unint64_t)linkage
{
  v6 = MEMORY[0x277CBEB38];
  algorithmCopy = algorithm;
  v8 = objc_alloc_init(v6);
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  orderedSet2 = [MEMORY[0x277CBEB40] orderedSet];
  v19 = 0;
  v11 = objc_opt_class();
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __84__PGSocialGroupsQuestionFactory__socialGroupsForSurveyFromNewAlgorithm_withLinkage___block_invoke;
  v17[3] = &unk_2788885F0;
  v17[4] = self;
  v18 = orderedSet;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __84__PGSocialGroupsQuestionFactory__socialGroupsForSurveyFromNewAlgorithm_withLinkage___block_invoke_2;
  v15[3] = &unk_2788885F0;
  v15[4] = self;
  v16 = orderedSet2;
  v12 = orderedSet2;
  v13 = orderedSet;
  [v11 enumerateSocialGroupsWithGraph:algorithmCopy withLinkage:linkage validGroupsBlock:v17 invalidGroupsBlock:v15 averageWeight:&v19];

  [v8 setValue:v13 forKey:@"validSocialGroupsPeopleLocalIdentifiers"];
  [v8 setValue:v12 forKey:@"remainingSocialGroupsPeopleLocalIdentifiers"];

  return v8;
}

void __84__PGSocialGroupsQuestionFactory__socialGroupsForSurveyFromNewAlgorithm_withLinkage___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _createSocialGroupWithPersonLocalIdentifiers:a2];
  [*(a1 + 40) addObject:v3];
}

void __84__PGSocialGroupsQuestionFactory__socialGroupsForSurveyFromNewAlgorithm_withLinkage___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _createSocialGroupWithPersonLocalIdentifiers:a2];
  [*(a1 + 40) addObject:v3];
}

- (id)_socialGroupsForSurveyFromCurrentAlgorithm:(id)algorithm
{
  v4 = MEMORY[0x277CBEB38];
  algorithmCopy = algorithm;
  v6 = objc_alloc_init(v4);
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  orderedSet2 = [MEMORY[0x277CBEB40] orderedSet];
  v16 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __76__PGSocialGroupsQuestionFactory__socialGroupsForSurveyFromCurrentAlgorithm___block_invoke;
  v14[3] = &unk_2788885C8;
  v14[4] = self;
  v15 = orderedSet;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__PGSocialGroupsQuestionFactory__socialGroupsForSurveyFromCurrentAlgorithm___block_invoke_2;
  v12[3] = &unk_2788885C8;
  v12[4] = self;
  v13 = orderedSet2;
  v9 = orderedSet2;
  v10 = orderedSet;
  [algorithmCopy enumerateSocialGroupsIncludingMeNode:0 socialGroupsVersion:1 simulateMeNodeNotSet:0 validGroupsBlock:v14 invalidGroupsBlock:v12 averageWeight:&v16];

  [v6 setValue:v10 forKey:@"validSocialGroupsPeopleLocalIdentifiers"];
  [v6 setValue:v9 forKey:@"remainingSocialGroupsPeopleLocalIdentifiers"];

  return v6;
}

void __76__PGSocialGroupsQuestionFactory__socialGroupsForSurveyFromCurrentAlgorithm___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 count])
  {
    v3 = [*(a1 + 32) _createSocialGroupWithPersonLocalIdentifiers:v4];
    [*(a1 + 40) addObject:v3];
  }
}

void __76__PGSocialGroupsQuestionFactory__socialGroupsForSurveyFromCurrentAlgorithm___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 count])
  {
    v3 = [*(a1 + 32) _createSocialGroupWithPersonLocalIdentifiers:v4];
    [*(a1 + 40) addObject:v3];
  }
}

- (id)_socialGroupsForSurvey:(id)survey withLimit:(unint64_t)limit
{
  surveyCopy = survey;
  v7 = [(PGSocialGroupsQuestionFactory *)self _socialGroupsForSurveyFromCurrentAlgorithm:surveyCopy];
  v8 = [v7 objectForKeyedSubscript:@"validSocialGroupsPeopleLocalIdentifiers"];
  if ([v8 count] >= limit)
  {
    v20 = v8;
  }

  else
  {
    v9 = [(PGSocialGroupsQuestionFactory *)self _socialGroupsForSurveyFromNewAlgorithm:surveyCopy withLinkage:5];
    v10 = [v9 objectForKeyedSubscript:@"validSocialGroupsPeopleLocalIdentifiers"];
    [v8 unionOrderedSet:v10];

    if ([v8 count] >= limit)
    {
      v21 = v8;
    }

    else
    {
      v11 = [(PGSocialGroupsQuestionFactory *)self _socialGroupsForSurveyFromNewAlgorithm:surveyCopy withLinkage:0];
      v12 = [v11 objectForKeyedSubscript:@"validSocialGroupsPeopleLocalIdentifiers"];
      [v8 unionOrderedSet:v12];

      if ([v8 count] >= limit)
      {
        v22 = v8;
      }

      else
      {
        v13 = [(PGSocialGroupsQuestionFactory *)self _socialGroupsForSurveyFromNewAlgorithm:surveyCopy withLinkage:3];
        v14 = [v13 objectForKeyedSubscript:@"validSocialGroupsPeopleLocalIdentifiers"];
        [v8 unionOrderedSet:v14];

        if ([v8 count] >= limit)
        {
          v23 = v8;
        }

        else
        {
          v15 = [(PGSocialGroupsQuestionFactory *)self _socialGroupsForSurveyFromNewAlgorithm:surveyCopy withLinkage:2];
          v16 = [v15 objectForKeyedSubscript:@"validSocialGroupsPeopleLocalIdentifiers"];
          [v8 unionOrderedSet:v16];

          if ([v8 count] >= limit)
          {
            v24 = v8;
          }

          else
          {
            v17 = [(PGSocialGroupsQuestionFactory *)self _socialGroupsForSurveyFromCustomAlgorithm:surveyCopy];
            [v8 unionOrderedSet:v17];
            if ([v8 count] >= limit)
            {
              v25 = v8;
            }

            else
            {
              v18 = [v7 objectForKeyedSubscript:@"remainingSocialGroupsPeopleLocalIdentifiers"];
              [v8 unionOrderedSet:v18];
              v19 = v8;
            }
          }
        }
      }
    }
  }

  return v8;
}

- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block
{
  blockCopy = block;
  v7 = [MEMORY[0x277CBEB58] set];
  workingContext = [(PGSurveyQuestionFactory *)self workingContext];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __74__PGSocialGroupsQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke;
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

void __74__PGSocialGroupsQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v30 = _Block_copy(*(a1 + 48));
  if (v30)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v5 = 0.0;
    if (Current >= 0.01)
    {
      v6 = Current;
      v31 = 0;
      v30[2](v30, &v31, 0.0);
      if (v31 == 1)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          goto LABEL_40;
        }

        *buf = 67109378;
        v33 = 132;
        v34 = 2080;
        v35 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Social Groups/PGSocialGroupsQuestionFactory.m";
        v7 = MEMORY[0x277D86220];
        goto LABEL_27;
      }

      v5 = v6;
    }

    if (!*(a1 + 56))
    {
      if (CFAbsoluteTimeGetCurrent() - v5 < 0.01)
      {
        goto LABEL_40;
      }

      v31 = 0;
      v30[2](v30, &v31, 1.0);
      if (!v31 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_40;
      }

      *buf = 67109378;
      v33 = 135;
      v34 = 2080;
      v35 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Social Groups/PGSocialGroupsQuestionFactory.m";
      v7 = MEMORY[0x277D86220];
LABEL_27:
      _os_log_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      goto LABEL_40;
    }
  }

  else
  {
    v5 = 0.0;
    if (!*(a1 + 56))
    {
      goto LABEL_40;
    }
  }

  v8 = [v3 graph];
  v9 = [v8 meNode];
  v10 = [v9 localIdentifier];
  v29 = [*(a1 + 32) _socialGroupsForSurvey:v8 withLimit:*(a1 + 56)];
  v11 = [v29 count];
  if (!v11)
  {
    v25 = 0;
    goto LABEL_33;
  }

  v12 = v11;
  v26 = v9;
  v27 = v8;
  v13 = 0;
  v14 = 1.0 / (v11 + 1);
  v28 = v3;
  while (1)
  {
    v15 = [v29 objectAtIndexedSubscript:v13];
    v16 = [v15 objectForKeyedSubscript:@"personLocalIdentifiers"];
    if ([v10 length])
    {
      [v16 addObject:v10];
    }

    v17 = [PGSocialGroupsQuestion alloc];
    v18 = [v15 objectForKeyedSubscript:@"socialGroupID"];
    v19 = [v15 objectForKeyedSubscript:@"personNames"];
    v20 = [(PGSocialGroupsQuestion *)v17 initWithSocialGroupID:v18 personLocalIdentifiers:v16 personNames:v19 localFactoryScore:v14 * v12];

    if (![*(a1 + 32) shouldAddQuestion:v20 toAlreadyGeneratedQuestions:*(a1 + 40)])
    {
      goto LABEL_20;
    }

    [*(a1 + 40) addObject:v20];
    v21 = [*(a1 + 40) count];
    if (v30)
    {
      v22 = v21;
      v23 = *(a1 + 56);
      v24 = CFAbsoluteTimeGetCurrent();
      if (v24 - v5 >= 0.01)
      {
        break;
      }
    }

LABEL_19:
    if ([*(a1 + 40) count] >= *(a1 + 56))
    {
      v25 = 0;
      goto LABEL_32;
    }

LABEL_20:

    ++v13;
    if (!--v12)
    {
      v25 = 0;
      v8 = v27;
      v3 = v28;
      v9 = v26;
      goto LABEL_33;
    }
  }

  v31 = 0;
  v30[2](v30, &v31, v22 / v23);
  if (!v31)
  {
    v5 = v24;
    goto LABEL_19;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v33 = 166;
    v34 = 2080;
    v35 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Social Groups/PGSocialGroupsQuestionFactory.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v25 = 1;
  v5 = v24;
LABEL_32:
  v9 = v26;

  v8 = v27;
  v3 = v28;
LABEL_33:
  if (v30)
  {
    if ((v25 & 1) == 0 && CFAbsoluteTimeGetCurrent() - v5 >= 0.01)
    {
      v31 = 0;
      v30[2](v30, &v31, 1.0);
      if (v31)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v33 = 173;
          v34 = 2080;
          v35 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/Social Groups/PGSocialGroupsQuestionFactory.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }
      }
    }
  }

LABEL_40:
}

@end