@interface PGRelationshipHomeAnalyzer
- (PGRelationshipHomeAnalyzer)initWithRelationshipProcessor:(id)processor;
- (void)runAnalysisWithProgressBlock:(id)block;
@end

@implementation PGRelationshipHomeAnalyzer

- (void)runAnalysisWithProgressBlock:(id)block
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = _Block_copy(block);
  v5 = 0.0;
  if (!v4 || (Current = CFAbsoluteTimeGetCurrent(), Current < 0.01))
  {
    v7 = 0;
LABEL_4:
    WeakRetained = objc_loadWeakRetained(&self->_processor);
    momentNodes = [WeakRetained momentNodes];
    v10 = [PGPeopleInferencesConveniences momentNodesAtHomeInMomentNodes:momentNodes];

    v11 = [v10 count];
    if (v11)
    {
      v12 = v11;
      v24 = v7;
      v25 = v4;
      personNodes = [WeakRetained personNodes];
      v14 = [PGPeopleInferencesConveniences countedPersonNodesFromMomentNodes:v10 amongPersonNodes:personNodes];

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v27;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v27 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v26 + 1) + 8 * i);
            v21 = [v15 countForObject:v20];
            localIdentifier = [v20 localIdentifier];
            v23 = [WeakRetained relationshipAnalyzerPropertiesForPersonLocalIdentifier:localIdentifier];

            if (v23)
            {
              [v23 registerNumberOfMomentsAtHome:v21 amongMomentsAtHome:v12];
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v26 objects:v31 count:16];
        }

        while (v17);
      }

      v4 = v25;
      if (v25)
      {
        if (CFAbsoluteTimeGetCurrent() - v5 >= 0.01)
        {
          v30 = 0;
          v25[2](v25, &v30, 1.0);
          if (v24 | v30)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v33 = 56;
              v34 = 2080;
              v35 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipHomeAnalyzer.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }
          }
        }
      }
    }

    goto LABEL_21;
  }

  v30 = 0;
  v4[2](v4, &v30, 0.0);
  v7 = v30;
  if (v30 != 1)
  {
    v5 = Current;
    goto LABEL_4;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v33 = 34;
    v34 = 2080;
    v35 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipHomeAnalyzer.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_21:
}

- (PGRelationshipHomeAnalyzer)initWithRelationshipProcessor:(id)processor
{
  processorCopy = processor;
  v8.receiver = self;
  v8.super_class = PGRelationshipHomeAnalyzer;
  v5 = [(PGRelationshipHomeAnalyzer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_processor, processorCopy);
  }

  return v6;
}

@end