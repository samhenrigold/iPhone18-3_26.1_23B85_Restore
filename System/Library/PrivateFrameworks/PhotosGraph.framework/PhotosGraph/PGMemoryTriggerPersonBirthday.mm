@interface PGMemoryTriggerPersonBirthday
- (id)relevantFeatureNodesInFeatureNodes:(id)nodes;
- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter;
@end

@implementation PGMemoryTriggerPersonBirthday

- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter
{
  v36 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  graphCopy = graph;
  reporterCopy = reporter;
  if ([reporterCopy isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v33 = 33;
      v34 = 2080;
      v35 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerPersonBirthday.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v10 = MEMORY[0x277CBEBF8];
  }

  else
  {
    localDate = [contextCopy localDate];
    v12 = [PGGraphMonthDayNodeCollection monthDayNodesForLocalDate:localDate inGraph:graphCopy];

    birthdayPersonNodes = [v12 birthdayPersonNodes];
    v14 = MEMORY[0x277D22BF8];
    v15 = +[PGGraphFeatureNodeCollection memoryOfFeature];
    v16 = [v14 adjacencyWithSources:birthdayPersonNodes relation:v15 targetsClass:objc_opt_class()];

    if ([v16 sourcesCount])
    {
      v17 = [PGGraphMemoryNodeCollection memoryNodesOfCategory:3 inGraph:graphCopy];
      v18 = [v16 intersectingTargetsWith:v17];

      if ([v18 sourcesCount])
      {
        v28 = v17;
        v27 = [(PGGraphNodeCollection *)PGGraphOverTheYearsNodeCollection nodesInGraph:graphCopy];
        featureNodeCollection = [v27 featureNodeCollection];
        memoryNodes = [featureNodeCollection memoryNodes];

        v21 = objc_alloc_init(MEMORY[0x277D22BD0]);
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __86__PGMemoryTriggerPersonBirthday_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke;
        v29[3] = &unk_278884B88;
        v26 = memoryNodes;
        v30 = v26;
        v22 = v21;
        v31 = v22;
        [v18 enumerateTargetsBySourceWithBlock:v29];
        if ([v22 count])
        {
          v23 = [objc_opt_class() singleDayValidityIntervalWithContext:contextCopy];
          v24 = [(MAElementCollection *)[PGGraphMemoryNodeCollection alloc] initWithGraph:graphCopy elementIdentifiers:v22];
          if ([reporterCopy isCancelledWithProgress:1.0])
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v33 = 71;
              v34 = 2080;
              v35 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerPersonBirthday.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            v10 = MEMORY[0x277CBEBF8];
          }

          else
          {
            v10 = [objc_opt_class() memoryTriggerResultsForMemoryNodes:v24 withValidityInterval:v23];
          }
        }

        else
        {
          if ([reporterCopy isCancelledWithProgress:1.0] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v33 = 65;
            v34 = 2080;
            v35 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerPersonBirthday.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v10 = MEMORY[0x277CBEBF8];
        }

        v17 = v28;
      }

      else
      {
        if ([reporterCopy isCancelledWithProgress:1.0] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v33 = 46;
          v34 = 2080;
          v35 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerPersonBirthday.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v10 = MEMORY[0x277CBEBF8];
      }
    }

    else
    {
      if ([reporterCopy isCancelledWithProgress:1.0] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v33 = 39;
        v34 = 2080;
        v35 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerPersonBirthday.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v10 = MEMORY[0x277CBEBF8];
      v18 = v16;
    }
  }

  return v10;
}

void __86__PGMemoryTriggerPersonBirthday_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  v4 = [v10 collectionByIntersecting:*(a1 + 32)];
  v5 = [v4 count];
  v6 = *(a1 + 40);
  v7 = v5 == 0;
  v8 = v10;
  if (!v7)
  {
    v8 = v4;
  }

  v9 = [v8 elementIdentifiers];
  [v6 unionWithIdentifierSet:v9];
}

- (id)relevantFeatureNodesInFeatureNodes:(id)nodes
{
  v3 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:nodes];
  featureNodeCollection = [v3 featureNodeCollection];

  return featureNodeCollection;
}

@end