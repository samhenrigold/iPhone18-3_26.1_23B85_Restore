@interface PGMemoryTriggerRecentBreakoutOfRoutine
- (id)neighborScoreComputerWithGraph:(id)graph;
- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter;
@end

@implementation PGMemoryTriggerRecentBreakoutOfRoutine

- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter
{
  v34 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  graphCopy = graph;
  reporterCopy = reporter;
  if ([reporterCopy isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v31 = 45;
      v32 = 2080;
      v33 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerRecentBreakoutOfRoutine.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v11 = MEMORY[0x277CBEBF8];
  }

  else
  {
    localDate = [contextCopy localDate];
    timeZone = [contextCopy timeZone];
    v24 = localDate;
    v13 = [PGMemoryTrigger dateNodesInGraph:graphCopy startDayOffset:-8 endDayOffset:-1 fromLocalDate:localDate inTimeZone:?];
    momentNodes = [v13 momentNodes];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __95__PGMemoryTriggerRecentBreakoutOfRoutine_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke;
    v28[3] = &unk_2788811C0;
    v28[4] = self;
    v15 = graphCopy;
    v29 = v15;
    v16 = [momentNodes filteredCollectionUsingBlock:v28];

    memoryNodes = [v16 memoryNodes];
    v18 = [PGGraphMemoryNodeCollection memoryNodesOfCategory:1 inGraph:v15];
    v19 = [memoryNodes collectionByIntersecting:v18];
    v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __95__PGMemoryTriggerRecentBreakoutOfRoutine_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke_2;
    v25[3] = &unk_278886FC0;
    v25[4] = self;
    v26 = contextCopy;
    v21 = v20;
    v27 = v21;
    [v19 enumerateIdentifiersAsCollectionsWithBlock:v25];
    if ([reporterCopy isCancelledWithProgress:1.0])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v31 = 72;
        v32 = 2080;
        v33 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerRecentBreakoutOfRoutine.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v11 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v11 = v21;
    }
  }

  return v11;
}

BOOL __95__PGMemoryTriggerRecentBreakoutOfRoutine_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 neighborScoreComputerWithGraph:v3];
  v6 = [v4 anyNode];

  [v5 neighborScoreWithMomentNode:v6];
  v8 = v7;

  return v8 > 0.6;
}

void __95__PGMemoryTriggerRecentBreakoutOfRoutine_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 momentNodes];
  v15 = [v5 dateNodes];

  v6 = [v15 localDateInterval];
  v7 = [v6 endDate];

  v8 = [v7 dateByAddingTimeInterval:691200.0];
  v9 = [v7 dateByAddingTimeInterval:86400.0];
  v10 = objc_opt_class();
  v11 = [*(a1 + 40) timeZone];
  v12 = [v10 validityIntervalForLocalStartDate:v9 localEndDate:v8 timeZone:v11];

  v13 = *(a1 + 48);
  v14 = [objc_opt_class() memoryTriggerResultsForMemoryNodes:v4 withValidityInterval:v12];

  [v13 addObjectsFromArray:v14];
}

- (id)neighborScoreComputerWithGraph:(id)graph
{
  neighborScoreComputer = self->_neighborScoreComputer;
  if (!neighborScoreComputer)
  {
    v5 = objc_alloc_init(PGNeighborScoreComputer);
    v6 = self->_neighborScoreComputer;
    self->_neighborScoreComputer = v5;

    neighborScoreComputer = self->_neighborScoreComputer;
  }

  return neighborScoreComputer;
}

@end