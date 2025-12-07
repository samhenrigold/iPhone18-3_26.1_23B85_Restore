@interface PGRelationshipMomentFrequencyAnalyzer
- (PGRelationshipMomentFrequencyAnalyzer)initWithRelationshipProcessor:(id)processor;
- (void)runAnalysisWithProgressBlock:(id)block;
@end

@implementation PGRelationshipMomentFrequencyAnalyzer

- (void)runAnalysisWithProgressBlock:(id)block
{
  v77 = *MEMORY[0x277D85DE8];
  v4 = _Block_copy(block);
  v5 = 0.0;
  if (!v4 || (v6 = CFAbsoluteTimeGetCurrent(), v6 < 0.01))
  {
LABEL_7:
    WeakRetained = objc_loadWeakRetained(&self->_processor);
    array = [MEMORY[0x277CBEB18] array];
    momentNodes = [WeakRetained momentNodes];
    personNodes = [WeakRetained personNodes];
    v11 = [PGPeopleInferencesConveniences countedPersonNodesFromMomentNodes:momentNodes amongPersonNodes:personNodes];

    if (![v11 count])
    {
      if (v4)
      {
        if (CFAbsoluteTimeGetCurrent() - v5 >= 0.01)
        {
          v67 = 0;
          v4[2](v4, &v67, 1.0);
          if (v67)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v74 = 47;
              v75 = 2080;
              v76 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipMomentFrequencyAnalyzer.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }
          }
        }
      }

      goto LABEL_67;
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v53 = v11;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v63 objects:v72 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v64;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v64 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "countForObject:", *(*(&v63 + 1) + 8 * i))}];
          [array addObject:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v63 objects:v72 count:16];
      }

      while (v14);
    }

    if (v4)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v5 >= 0.01)
      {
        v67 = 0;
        v4[2](v4, &v67, 0.25);
        if (v67)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v74 = 56;
            v75 = 2080;
            v76 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipMomentFrequencyAnalyzer.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v11 = v53;
          goto LABEL_67;
        }

        v5 = Current;
      }
    }

    v19 = [MEMORY[0x277CCA9C0] expressionForConstantValue:array];
    v20 = MEMORY[0x277CCA9C0];
    v71 = v19;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v71 count:1];
    v22 = [v20 expressionForFunction:@"average:" arguments:v21];
    [v22 expressionValueWithObject:0 context:0];
    v23 = v54 = v4;
    [v23 doubleValue];
    v25 = v24;

    v26 = MEMORY[0x277CCA9C0];
    v70 = v19;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v70 count:1];
    v28 = [v26 expressionForFunction:@"stddev:" arguments:v27];
    v29 = [v28 expressionValueWithObject:0 context:0];
    [v29 doubleValue];
    v31 = v30;

    v4 = v54;
    if (v54)
    {
      v32 = CFAbsoluteTimeGetCurrent();
      if (v32 - v5 >= 0.01)
      {
        v67 = 0;
        v54[2](v54, &v67, 0.5);
        if (v67)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v74 = 62;
            v75 = 2080;
            v76 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipMomentFrequencyAnalyzer.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v11 = v53;
          goto LABEL_66;
        }

        v5 = v32;
      }
    }

    v52 = v19;
    v33 = [MEMORY[0x277CBEB58] set];
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v34 = v12;
    v35 = [v34 countByEnumeratingWithState:&v59 objects:v69 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v60;
      do
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v60 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = *(*(&v59 + 1) + 8 * j);
          localIdentifier = [v39 localIdentifier];
          v41 = [v34 countForObject:v39];
          [MEMORY[0x277D27688] cumulativeNormalDistributionForX:v41 mu:v25 sigma:v31];
          if (v42 >= 0.6)
          {
            [v33 addObject:localIdentifier];
          }
        }

        v36 = [v34 countByEnumeratingWithState:&v59 objects:v69 count:16];
      }

      while (v36);
    }

    v4 = v54;
    if (v54)
    {
      v43 = CFAbsoluteTimeGetCurrent();
      v19 = v52;
      if (v43 - v5 >= 0.01)
      {
        v67 = 0;
        v54[2](v54, &v67, 0.75);
        if (v67)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v74 = 77;
            v75 = 2080;
            v76 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipMomentFrequencyAnalyzer.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v11 = v53;
LABEL_65:

LABEL_66:
LABEL_67:

          goto LABEL_68;
        }

        v5 = v43;
      }
    }

    else
    {
      v19 = v52;
    }

    v44 = [v33 count];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v45 = v33;
    v46 = [v45 countByEnumeratingWithState:&v55 objects:v68 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v56;
      do
      {
        for (k = 0; k != v47; ++k)
        {
          if (*v56 != v48)
          {
            objc_enumerationMutation(v45);
          }

          v50 = [WeakRetained relationshipAnalyzerPropertiesForPersonLocalIdentifier:*(*(&v55 + 1) + 8 * k)];
          v51 = v50;
          if (v50)
          {
            [v50 registerTopPersonAmongTopPeople:v44];
          }
        }

        v47 = [v45 countByEnumeratingWithState:&v55 objects:v68 count:16];
      }

      while (v47);
    }

    v11 = v53;
    v4 = v54;
    if (v54)
    {
      if (CFAbsoluteTimeGetCurrent() - v5 >= 0.01)
      {
        v67 = 0;
        v54[2](v54, &v67, 1.0);
        if (v67)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v74 = 89;
            v75 = 2080;
            v76 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipMomentFrequencyAnalyzer.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }
    }

    goto LABEL_65;
  }

  v67 = 0;
  v4[2](v4, &v67, 0.0);
  if (v67 != 1)
  {
    v5 = v6;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v74 = 38;
    v75 = 2080;
    v76 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipMomentFrequencyAnalyzer.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_68:
}

- (PGRelationshipMomentFrequencyAnalyzer)initWithRelationshipProcessor:(id)processor
{
  processorCopy = processor;
  v8.receiver = self;
  v8.super_class = PGRelationshipMomentFrequencyAnalyzer;
  v5 = [(PGRelationshipMomentFrequencyAnalyzer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_processor, processorCopy);
  }

  return v6;
}

@end