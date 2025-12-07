@interface PGRelationshipSocialGroupAnalyzer
- (PGRelationshipSocialGroupAnalyzer)initWithRelationshipProcessor:(id)processor;
- (void)runAnalysisWithProgressBlock:(id)block;
@end

@implementation PGRelationshipSocialGroupAnalyzer

- (void)runAnalysisWithProgressBlock:(id)block
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = _Block_copy(block);
  v5 = 0.0;
  if (!v4 || (v6 = CFAbsoluteTimeGetCurrent(), v6 < 0.01))
  {
LABEL_7:
    WeakRetained = objc_loadWeakRetained(&self->_processor);
    graph = [WeakRetained graph];
    personNodes = [WeakRetained personNodes];
    v10 = [PGPeopleInferencesConveniences topPersonNodeIdentifierForTwoPersonSocialGroupsFromPersonNodes:graph personNodes:personNodes];

    if ([v10 length])
    {
      if (v4)
      {
        Current = CFAbsoluteTimeGetCurrent();
        if (Current - v5 >= 0.01)
        {
          v15 = 0;
          v4[2](v4, &v15, 0.5);
          if (v15)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
LABEL_28:

              goto LABEL_29;
            }

            *buf = 67109378;
            v17 = 45;
            v18 = 2080;
            v19 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipSocialGroupAnalyzer.m";
            v12 = MEMORY[0x277D86220];
LABEL_18:
            _os_log_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            goto LABEL_28;
          }

          v5 = Current;
        }
      }

      v13 = [WeakRetained relationshipAnalyzerPropertiesForPersonLocalIdentifier:v10];
      v14 = v13;
      if (v13)
      {
        [v13 registerTopTwoPersonSocialGroup];
      }

      if (v4)
      {
        if (CFAbsoluteTimeGetCurrent() - v5 >= 0.01)
        {
          v15 = 0;
          v4[2](v4, &v15, 1.0);
          if (v15)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v17 = 53;
              v18 = 2080;
              v19 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipSocialGroupAnalyzer.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }
          }
        }
      }

      goto LABEL_28;
    }

    if (!v4)
    {
      goto LABEL_28;
    }

    if (CFAbsoluteTimeGetCurrent() - v5 < 0.01)
    {
      goto LABEL_28;
    }

    v15 = 0;
    v4[2](v4, &v15, 1.0);
    if (!v15 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_28;
    }

    *buf = 67109378;
    v17 = 42;
    v18 = 2080;
    v19 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipSocialGroupAnalyzer.m";
    v12 = MEMORY[0x277D86220];
    goto LABEL_18;
  }

  v15 = 0;
  v4[2](v4, &v15, 0.0);
  if (v15 != 1)
  {
    v5 = v6;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v17 = 34;
    v18 = 2080;
    v19 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipSocialGroupAnalyzer.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_29:
}

- (PGRelationshipSocialGroupAnalyzer)initWithRelationshipProcessor:(id)processor
{
  processorCopy = processor;
  v8.receiver = self;
  v8.super_class = PGRelationshipSocialGroupAnalyzer;
  v5 = [(PGRelationshipSocialGroupAnalyzer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_processor, processorCopy);
  }

  return v6;
}

@end