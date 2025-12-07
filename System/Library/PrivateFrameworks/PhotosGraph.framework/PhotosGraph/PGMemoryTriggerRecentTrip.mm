@interface PGMemoryTriggerRecentTrip
- (id)relevantFeatureNodesInFeatureNodes:(id)nodes;
- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter;
@end

@implementation PGMemoryTriggerRecentTrip

- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter
{
  v35 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  graphCopy = graph;
  reporterCopy = reporter;
  if ([reporterCopy isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v32 = 38;
      v33 = 2080;
      v34 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerRecentTrip.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v11 = MEMORY[0x277CBEBF8];
  }

  else
  {
    localDate = [contextCopy localDate];
    timeZone = [contextCopy timeZone];
    v14 = [PGMemoryTrigger dateNodesInGraph:graphCopy startDayOffset:-8 endDayOffset:-1 fromLocalDate:localDate inTimeZone:timeZone];

    v27 = v14;
    momentNodes = [v14 momentNodes];
    highlightNodes = [momentNodes highlightNodes];

    v26 = highlightNodes;
    momentNodes2 = [highlightNodes momentNodes];
    memoryNodes = [momentNodes2 memoryNodes];

    v19 = [PGGraphMemoryNodeCollection memoryNodesOfCategory:19 inGraph:graphCopy];
    v20 = [PGGraphMemoryNodeCollection memoryNodesOfCategory:18 inGraph:graphCopy];
    v21 = [v19 collectionByFormingUnionWith:v20];
    v22 = [v21 collectionByIntersecting:memoryNodes];
    v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __82__PGMemoryTriggerRecentTrip_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke;
    v28[3] = &unk_278886FC0;
    v28[4] = self;
    v29 = contextCopy;
    v24 = v23;
    v30 = v24;
    [v22 enumerateIdentifiersAsCollectionsWithBlock:v28];
    if ([reporterCopy isCancelledWithProgress:1.0])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v32 = 63;
        v33 = 2080;
        v34 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerRecentTrip.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v11 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v11 = v24;
    }
  }

  return v11;
}

void __82__PGMemoryTriggerRecentTrip_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 featureNodes];
  v17 = [(PGGraphNodeCollection *)PGGraphHighlightGroupNodeCollection subsetInCollection:v5];

  v6 = [v17 highlightNodes];
  v7 = [v6 momentNodes];
  v8 = [v7 dateNodes];
  v9 = [v8 localDateInterval];
  v10 = [v9 endDate];

  v11 = [v10 dateByAddingTimeInterval:691200.0];
  v12 = objc_opt_class();
  v13 = [*(a1 + 40) timeZone];
  v14 = [v12 validityIntervalForLocalStartDate:v10 localEndDate:v11 timeZone:v13];

  v15 = *(a1 + 48);
  v16 = [objc_opt_class() memoryTriggerResultsForMemoryNodes:v4 withValidityInterval:v14];

  [v15 addObjectsFromArray:v16];
}

- (id)relevantFeatureNodesInFeatureNodes:(id)nodes
{
  v3 = [(PGGraphNodeCollection *)PGGraphHighlightGroupNodeCollection subsetInCollection:nodes];
  featureNodeCollection = [v3 featureNodeCollection];

  return featureNodeCollection;
}

@end