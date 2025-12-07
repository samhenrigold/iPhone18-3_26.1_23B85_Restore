@interface PGRelationshipHolidayAnalyzer
- (PGRelationshipHolidayAnalyzer)initWithRelationshipProcessor:(id)processor;
- (id)_familyHolidayMomentsFromMomentNodes:(id)nodes inGraph:(id)graph;
- (void)runAnalysisWithProgressBlock:(id)block;
@end

@implementation PGRelationshipHolidayAnalyzer

- (id)_familyHolidayMomentsFromMomentNodes:(id)nodes inGraph:(id)graph
{
  nodesCopy = nodes;
  v6 = [PGGraphHolidayNodeCollection holidayNodesWithCategory:2 inGraph:graph];
  celebratingMomentNodes = [v6 celebratingMomentNodes];
  v8 = [celebratingMomentNodes collectionByIntersecting:nodesCopy];

  return v8;
}

- (void)runAnalysisWithProgressBlock:(id)block
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = _Block_copy(block);
  v5 = 0.0;
  if (!v4 || (v6 = CFAbsoluteTimeGetCurrent(), v6 < 0.01))
  {
LABEL_7:
    WeakRetained = objc_loadWeakRetained(&self->_processor);
    momentNodes = [WeakRetained momentNodes];
    graph = [WeakRetained graph];
    v10 = [(PGRelationshipHolidayAnalyzer *)self _familyHolidayMomentsFromMomentNodes:momentNodes inGraph:graph];

    v11 = [v10 count];
    if (v11)
    {
      v12 = v11;
      personNodes = [WeakRetained personNodes];
      v14 = [PGPeopleInferencesConveniences countedPersonNodesFromMomentNodes:v10 amongPersonNodes:personNodes];

      if (v4)
      {
        Current = CFAbsoluteTimeGetCurrent();
        if (Current - v5 >= 0.01)
        {
          v30 = 0;
          v4[2](v4, &v30, 0.5);
          if (v30)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v33 = 46;
              v34 = 2080;
              v35 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipHolidayAnalyzer.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

LABEL_30:
            goto LABEL_31;
          }

          v5 = Current;
        }
      }

      v25 = v10;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v16 = v14;
      v17 = [v16 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v27;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v27 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v26 + 1) + 8 * i);
            v22 = [v16 countForObject:v21];
            localIdentifier = [v21 localIdentifier];
            v24 = [WeakRetained relationshipAnalyzerPropertiesForPersonLocalIdentifier:localIdentifier];

            if (v24)
            {
              [v24 registerAttendance:v22 amongFamilyHolidays:v12];
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v26 objects:v31 count:16];
        }

        while (v18);
      }

      v10 = v25;
    }

    if (v4)
    {
      if (CFAbsoluteTimeGetCurrent() - v5 >= 0.01)
      {
        v30 = 0;
        v4[2](v4, &v30, 1.0);
        if (v30)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v33 = 58;
            v34 = 2080;
            v35 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipHolidayAnalyzer.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }
    }

    goto LABEL_30;
  }

  v30 = 0;
  v4[2](v4, &v30, 0.0);
  if (v30 != 1)
  {
    v5 = v6;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v33 = 34;
    v34 = 2080;
    v35 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipHolidayAnalyzer.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_31:
}

- (PGRelationshipHolidayAnalyzer)initWithRelationshipProcessor:(id)processor
{
  processorCopy = processor;
  v8.receiver = self;
  v8.super_class = PGRelationshipHolidayAnalyzer;
  v5 = [(PGRelationshipHolidayAnalyzer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_processor, processorCopy);
  }

  return v6;
}

@end