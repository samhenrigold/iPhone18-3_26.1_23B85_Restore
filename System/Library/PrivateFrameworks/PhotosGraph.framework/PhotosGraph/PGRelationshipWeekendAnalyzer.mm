@interface PGRelationshipWeekendAnalyzer
- (PGRelationshipWeekendAnalyzer)initWithRelationshipProcessor:(id)processor;
- (void)runAnalysisWithProgressBlock:(id)block;
@end

@implementation PGRelationshipWeekendAnalyzer

- (void)runAnalysisWithProgressBlock:(id)block
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = _Block_copy(block);
  v5 = 0.0;
  if (!v4 || (v6 = CFAbsoluteTimeGetCurrent(), v6 < 0.01))
  {
LABEL_7:
    WeakRetained = objc_loadWeakRetained(&self->_processor);
    graph = [WeakRetained graph];
    v9 = [graph anyNodeForLabel:@"Weekend" domain:400 properties:0];

    if (!v9)
    {
      if (v4)
      {
        if (CFAbsoluteTimeGetCurrent() - v5 >= 0.01)
        {
          v36 = 0;
          v4[2](v4, &v36, 1.0);
          if (v36)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v39 = 41;
              v40 = 2080;
              v41 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipWeekendAnalyzer.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }
          }
        }
      }

      goto LABEL_42;
    }

    edgesCount = [v9 edgesCount];
    collection = [v9 collection];
    momentNodes = [collection momentNodes];

    personNodes = [WeakRetained personNodes];
    v14 = [PGPeopleInferencesConveniences countedPersonNodesFromMomentNodes:momentNodes amongPersonNodes:personNodes];

    v15 = [v14 count];
    if (v15)
    {
      v16 = v15;
      v30 = momentNodes;
      v31 = v9;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v29 = v14;
      v17 = v14;
      v18 = [v17 countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = 1.0 / v16;
        v21 = *v33;
        v22 = 0.0;
        while (2)
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v33 != v21)
            {
              objc_enumerationMutation(v17);
            }

            v24 = *(*(&v32 + 1) + 8 * i);
            localIdentifier = [v24 localIdentifier];
            v26 = [WeakRetained relationshipAnalyzerPropertiesForPersonLocalIdentifier:localIdentifier];
            if (v26)
            {
              [v26 registerNumberOfWeekendMoments:objc_msgSend(v17 amongWeekends:{"countForObject:", v24), edgesCount}];
            }

            if (v4)
            {
              Current = CFAbsoluteTimeGetCurrent();
              if (Current - v5 >= 0.01)
              {
                v36 = 0;
                v4[2](v4, &v36, v22);
                if (v36)
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                  {
                    *buf = 67109378;
                    v39 = 68;
                    v40 = 2080;
                    v41 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipWeekendAnalyzer.m";
                    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                  }

                  momentNodes = v30;
                  v9 = v31;
                  v14 = v29;
                  goto LABEL_41;
                }

                v5 = Current;
              }
            }

            v22 = v20 + v22;
          }

          v19 = [v17 countByEnumeratingWithState:&v32 objects:v37 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }
      }

      momentNodes = v30;
      v9 = v31;
      v14 = v29;
      if (!v4)
      {
        goto LABEL_41;
      }

      if (CFAbsoluteTimeGetCurrent() - v5 < 0.01)
      {
        goto LABEL_41;
      }

      v36 = 0;
      v4[2](v4, &v36, 1.0);
      if (!v36 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_41;
      }

      *buf = 67109378;
      v39 = 72;
      v40 = 2080;
      v41 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipWeekendAnalyzer.m";
      v28 = MEMORY[0x277D86220];
    }

    else
    {
      if (!v4)
      {
        goto LABEL_41;
      }

      if (CFAbsoluteTimeGetCurrent() - v5 < 0.01)
      {
        goto LABEL_41;
      }

      v36 = 0;
      v4[2](v4, &v36, 1.0);
      if (!v36 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_41;
      }

      *buf = 67109378;
      v39 = 53;
      v40 = 2080;
      v41 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipWeekendAnalyzer.m";
      v28 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_22F0FC000, v28, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
LABEL_41:

LABEL_42:
    goto LABEL_43;
  }

  v36 = 0;
  v4[2](v4, &v36, 0.0);
  if (v36 != 1)
  {
    v5 = v6;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v39 = 35;
    v40 = 2080;
    v41 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipWeekendAnalyzer.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_43:
}

- (PGRelationshipWeekendAnalyzer)initWithRelationshipProcessor:(id)processor
{
  processorCopy = processor;
  v8.receiver = self;
  v8.super_class = PGRelationshipWeekendAnalyzer;
  v5 = [(PGRelationshipWeekendAnalyzer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_processor, processorCopy);
  }

  return v6;
}

@end