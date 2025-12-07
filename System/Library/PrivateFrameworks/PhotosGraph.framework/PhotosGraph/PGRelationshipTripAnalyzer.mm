@interface PGRelationshipTripAnalyzer
- (PGRelationshipTripAnalyzer)initWithRelationshipProcessor:(id)processor;
- (void)runAnalysisWithProgressBlock:(id)block;
@end

@implementation PGRelationshipTripAnalyzer

- (void)runAnalysisWithProgressBlock:(id)block
{
  v131 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v5 = _Block_copy(blockCopy);
  v6 = 0.0;
  if (!v5 || (v7 = CFAbsoluteTimeGetCurrent(), v7 < 0.01))
  {
LABEL_7:
    WeakRetained = objc_loadWeakRetained(&self->_processor);
    graph = [WeakRetained graph];
    trips = [graph trips];
    weekends = [graph weekends];
    v12 = 0x277CBE000uLL;
    v13 = MEMORY[0x277CBEB58];
    v14 = [trips arrayByAddingObjectsFromArray:weekends];
    v15 = [v13 setWithArray:v14];

    v73 = v15;
    if (![v15 count])
    {
LABEL_67:

      goto LABEL_68;
    }

    v68 = weekends;
    v71 = WeakRetained;
    v72 = v5;
    v70 = blockCopy;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v88 = [MEMORY[0x277CBEB58] set];
    meNode = [graph meNode];
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v69 = trips;
    obj = trips;
    v79 = [obj countByEnumeratingWithState:&v117 objects:v126 count:16];
    v81 = graph;
    if (v79)
    {
      v77 = *v118;
      do
      {
        v16 = 0;
        do
        {
          if (*v118 != v77)
          {
            objc_enumerationMutation(obj);
          }

          v89 = v16;
          v17 = *(*(&v117 + 1) + 8 * v16);
          context = objc_autoreleasePoolPush();
          v91 = [*(v12 + 2904) set];
          v18 = [*(v12 + 2904) set];
          v113 = 0u;
          v114 = 0u;
          v115 = 0u;
          v116 = 0u;
          v19 = v17;
          v20 = [v19 countByEnumeratingWithState:&v113 objects:v125 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = 0;
            v23 = *v114;
            do
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v114 != v23)
                {
                  objc_enumerationMutation(v19);
                }

                v25 = *(*(&v113 + 1) + 8 * i);
                v26 = objc_autoreleasePoolPush();
                personNodes = [v25 personNodes];
                v28 = [personNodes count];
                v29 = [personNodes containsObject:meNode];
                if (!((v28 != 1) | v29 & 1) || ((v28 == 2) & v29) != 0)
                {
                  allObjects = [personNodes allObjects];
                  [v91 addObjectsFromArray:allObjects];

                  [v18 addObject:v25];
                  v30 = 1;
                }

                else
                {
                  v30 = v28 > 1;
                }

                v22 += v30;

                objc_autoreleasePoolPop(v26);
              }

              v21 = [v19 countByEnumeratingWithState:&v113 objects:v125 count:16];
            }

            while (v21);
            v32 = v22;
          }

          else
          {
            v32 = 0.0;
          }

          v33 = [(MAElementCollection *)[PGGraphMomentNodeCollection alloc] initWithSet:v18 graph:v81];
          v82 = [(MAElementCollection *)[PGGraphPersonNodeCollection alloc] initWithSet:v91 graph:v81];
          v83 = v33;
          v34 = [PGPeopleInferencesConveniences countedPersonNodesFromMomentNodes:v33 amongPersonNodes:?];
          v109 = 0u;
          v110 = 0u;
          v111 = 0u;
          v112 = 0u;
          v35 = [v34 countByEnumeratingWithState:&v109 objects:v124 count:16];
          if (v35)
          {
            v36 = v35;
            v37 = *v110;
            do
            {
              for (j = 0; j != v36; ++j)
              {
                if (*v110 != v37)
                {
                  objc_enumerationMutation(v34);
                }

                v39 = *(*(&v109 + 1) + 8 * j);
                if (([v39 isMeNode] & 1) == 0 && objc_msgSend(v34, "countForObject:", v39) / v32 >= 0.75)
                {
                  localIdentifier = [v39 localIdentifier];
                  v41 = [dictionary objectForKeyedSubscript:localIdentifier];
                  v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v41, "unsignedIntegerValue") + 1}];

                  [dictionary setObject:v42 forKeyedSubscript:localIdentifier];
                  [v88 addObject:v19];
                }
              }

              v36 = [v34 countByEnumeratingWithState:&v109 objects:v124 count:16];
            }

            while (v36);
          }

          objc_autoreleasePoolPop(context);
          v16 = v89 + 1;
          v12 = 0x277CBE000;
        }

        while (v89 + 1 != v79);
        v79 = [obj countByEnumeratingWithState:&v117 objects:v126 count:16];
      }

      while (v79);
    }

    [v73 minusSet:v88];
    v43 = [v88 count];
    v5 = v72;
    if (v72)
    {
      Current = CFAbsoluteTimeGetCurrent();
      WeakRetained = v71;
      if (Current - v6 >= 0.01)
      {
        v121 = 0;
        v72[2](v72, &v121, 0.5);
        if (v121)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v128 = 105;
            v129 = 2080;
            v130 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipTripAnalyzer.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          trips = v69;
          blockCopy = v70;
          weekends = v68;
          graph = v81;
LABEL_66:

          goto LABEL_67;
        }

        v6 = Current;
      }
    }

    else
    {
      WeakRetained = v71;
    }

    v106[0] = MEMORY[0x277D85DD0];
    v106[1] = 3221225472;
    v106[2] = __59__PGRelationshipTripAnalyzer_runAnalysisWithProgressBlock___block_invoke;
    v106[3] = &unk_278881E88;
    v78 = WeakRetained;
    v107 = v78;
    v108 = v43;
    [dictionary enumerateKeysAndObjectsUsingBlock:v106];
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    v67 = [v73 count];
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v74 = v73;
    graph = v81;
    v80 = [v74 countByEnumeratingWithState:&v102 objects:v123 count:16];
    if (v80)
    {
      obja = *v103;
      do
      {
        v45 = 0;
        do
        {
          if (*v103 != obja)
          {
            objc_enumerationMutation(v74);
          }

          contexta = v45;
          v46 = *(*(&v102 + 1) + 8 * v45);
          v84 = objc_autoreleasePoolPush();
          v47 = [v46 count];
          v48 = [(MAElementCollection *)[PGGraphMomentNodeCollection alloc] initWithArray:v46 graph:graph];
          personNodes2 = [v78 personNodes];
          v50 = [PGPeopleInferencesConveniences countedPersonNodesFromMomentNodes:v48 amongPersonNodes:personNodes2];

          v100 = 0u;
          v101 = 0u;
          v98 = 0u;
          v99 = 0u;
          v51 = v50;
          v52 = [v51 countByEnumeratingWithState:&v98 objects:v122 count:16];
          if (v52)
          {
            v53 = v52;
            v54 = *v99;
            v55 = v47;
            do
            {
              for (k = 0; k != v53; ++k)
              {
                if (*v99 != v54)
                {
                  objc_enumerationMutation(v51);
                }

                v57 = *(*(&v98 + 1) + 8 * k);
                v58 = [v51 countForObject:v57];
                localIdentifier2 = [v57 localIdentifier];
                v60 = [dictionary3 objectForKeyedSubscript:localIdentifier2];
                v61 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v60, "unsignedIntegerValue") + 1}];
                [dictionary3 setObject:v61 forKeyedSubscript:localIdentifier2];

                v62 = [dictionary2 objectForKeyedSubscript:localIdentifier2];
                v63 = MEMORY[0x277CCABB0];
                [v62 doubleValue];
                v65 = [v63 numberWithDouble:v58 / v55 + v64];
                [dictionary2 setObject:v65 forKeyedSubscript:localIdentifier2];
              }

              v53 = [v51 countByEnumeratingWithState:&v98 objects:v122 count:16];
            }

            while (v53);
          }

          objc_autoreleasePoolPop(v84);
          v45 = contexta + 1;
          graph = v81;
        }

        while (contexta + 1 != v80);
        v80 = [v74 countByEnumeratingWithState:&v102 objects:v123 count:16];
      }

      while (v80);
    }

    v94[0] = MEMORY[0x277D85DD0];
    v94[1] = 3221225472;
    v94[2] = __59__PGRelationshipTripAnalyzer_runAnalysisWithProgressBlock___block_invoke_2;
    v94[3] = &unk_278881EB0;
    v95 = v78;
    v96 = dictionary3;
    v97 = v67;
    v66 = dictionary3;
    [dictionary2 enumerateKeysAndObjectsUsingBlock:v94];
    blockCopy = v70;
    WeakRetained = v71;
    v5 = v72;
    weekends = v68;
    trips = v69;
    if (v72)
    {
      if (CFAbsoluteTimeGetCurrent() - v6 >= 0.01)
      {
        v121 = 0;
        v72[2](v72, &v121, 1.0);
        if (v121)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v128 = 148;
            v129 = 2080;
            v130 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipTripAnalyzer.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }
    }

    goto LABEL_66;
  }

  v121 = 0;
  v5[2](v5, &v121, 0.0);
  if (v121 != 1)
  {
    v6 = v7;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v128 = 34;
    v129 = 2080;
    v130 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipTripAnalyzer.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_68:
}

void __59__PGRelationshipTripAnalyzer_runAnalysisWithProgressBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [*(a1 + 32) relationshipAnalyzerPropertiesForPersonLocalIdentifier:a2];
  if (v5)
  {
    [v5 registerOneOnOneTripAppearance:objc_msgSend(v6 amongOneOnOneTrips:{"unsignedIntegerValue"), *(a1 + 40)}];
  }
}

void __59__PGRelationshipTripAnalyzer_runAnalysisWithProgressBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) relationshipAnalyzerPropertiesForPersonLocalIdentifier:v9];
  if (v6)
  {
    v7 = [*(a1 + 40) objectForKeyedSubscript:v9];
    v8 = [v7 unsignedIntegerValue];
    [v5 doubleValue];
    [v6 registerNumberOfTrips:v8 withTripsScore:*(a1 + 48) amongTrips:?];
  }
}

- (PGRelationshipTripAnalyzer)initWithRelationshipProcessor:(id)processor
{
  processorCopy = processor;
  v8.receiver = self;
  v8.super_class = PGRelationshipTripAnalyzer;
  v5 = [(PGRelationshipTripAnalyzer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_processor, processorCopy);
  }

  return v6;
}

@end