@interface PGMemoryTriggerRecentMeaningfulEvent
- (id)meaningNodesSupportedForTriggerInGraph:(id)graph;
- (id)relevantFeatureNodesInFeatureNodes:(id)nodes;
- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter;
@end

@implementation PGMemoryTriggerRecentMeaningfulEvent

- (id)meaningNodesSupportedForTriggerInGraph:(id)graph
{
  v9[1] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v4 = [(PGGraphNodeCollection *)PGGraphMeaningNodeCollection nodesInGraph:graphCopy];
  v9[0] = @"HolidayEvent";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6 = [PGGraphMeaningNodeCollection meaningNodesWithMeaningLabels:v5 inGraph:graphCopy];

  v7 = [v4 collectionBySubtracting:v6];

  return v7;
}

- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter
{
  v39 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  graphCopy = graph;
  reporterCopy = reporter;
  if ([reporterCopy isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v36 = 31;
      v37 = 2080;
      v38 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerRecentMeaningfulEvent.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v11 = MEMORY[0x277CBEBF8];
  }

  else
  {
    localDate = [contextCopy localDate];
    timeZone = [contextCopy timeZone];
    v14 = [PGMemoryTrigger dateNodesInGraph:graphCopy startDayOffset:-8 endDayOffset:-1 fromLocalDate:localDate inTimeZone:timeZone];

    v28 = v14;
    momentNodes = [v14 momentNodes];
    v26 = [(PGMemoryTriggerRecentMeaningfulEvent *)self meaningNodesSupportedForTriggerInGraph:graphCopy];
    [v26 momentNodes];
    v25 = v27 = momentNodes;
    v16 = [momentNodes collectionByIntersecting:?];
    memoryNodes = [v16 memoryNodes];
    v18 = [PGGraphMemoryNodeCollection memoryNodesOfCategory:16 inGraph:graphCopy];
    v19 = [memoryNodes collectionByIntersecting:v18];
    v20 = [PGGraphMemoryNodeCollection memoryNodesOfCategory:17 inGraph:graphCopy];
    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __93__PGMemoryTriggerRecentMeaningfulEvent_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke;
    v29[3] = &unk_278887CD0;
    v30 = v20;
    v31 = graphCopy;
    selfCopy = self;
    v33 = contextCopy;
    v22 = v21;
    v34 = v22;
    v23 = v20;
    [v19 enumerateIdentifiersAsCollectionsWithBlock:v29];
    if ([reporterCopy isCancelledWithProgress:1.0])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v36 = 90;
        v37 = 2080;
        v38 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerRecentMeaningfulEvent.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v11 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v11 = v22;
    }
  }

  return v11;
}

void __93__PGMemoryTriggerRecentMeaningfulEvent_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 featureNodes];
  v6 = [(PGGraphNodeCollection *)PGGraphMeaningNodeCollection subsetInCollection:v5];

  v7 = [v6 featureNodeCollection];
  v8 = [v7 memoryNodes];
  v9 = [v8 collectionByIntersecting:*(a1 + 32)];

  if ([v9 count])
  {
    v10 = [v6 meaningLabels];
    v11 = [v10 anyObject];
    v12 = [PGMeaningAggregationMemoryGenerator featureRelationWithMeaningLabel:v11];

    if (v12)
    {
      v13 = [v4 momentNodes];
      v14 = [(MANodeCollection *)PGGraphFeatureNodeCollection nodesRelatedToNodes:v13 withRelation:v12];
    }

    else
    {
      v14 = [(MAElementCollection *)[PGGraphFeatureNodeCollection alloc] initWithGraph:*(a1 + 40)];
    }

    v15 = [(MAElementCollection *)[PGGraphMemoryNodeCollection alloc] initWithGraph:*(a1 + 40)];
    if ([(MAElementCollection *)v14 count])
    {
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __93__PGMemoryTriggerRecentMeaningfulEvent_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke_2;
      v30[3] = &unk_278887C88;
      v31 = v14;
      v16 = [v9 filteredCollectionUsingBlock:v30];

      v15 = v16;
    }

    if ([(MAElementCollection *)v15 count])
    {
      v17 = v15;
    }

    else
    {
      v17 = [v9 filteredCollectionUsingBlock:&__block_literal_global_60367];
    }

    v18 = v17;

    v9 = v18;
  }

  v19 = [v4 momentNodes];
  v20 = [v19 dateNodes];
  v21 = [v20 localDateInterval];
  v22 = [v21 endDate];

  v23 = [v22 dateByAddingTimeInterval:691200.0];
  v24 = objc_opt_class();
  v25 = [*(a1 + 56) timeZone];
  v26 = [v24 validityIntervalForLocalStartDate:v22 localEndDate:v23 timeZone:v25];

  v27 = [v4 collectionByFormingUnionWith:v9];
  v28 = *(a1 + 64);
  v29 = [objc_opt_class() memoryTriggerResultsForMemoryNodes:v27 withValidityInterval:v26];
  [v28 addObjectsFromArray:v29];
}

uint64_t __93__PGMemoryTriggerRecentMeaningfulEvent_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 featureNodes];
  if ([v3 count] == 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 32) intersectsCollection:v3];
  }

  return v4;
}

BOOL __93__PGMemoryTriggerRecentMeaningfulEvent_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 featureNodes];
  v3 = [v2 count] == 2;

  return v3;
}

- (id)relevantFeatureNodesInFeatureNodes:(id)nodes
{
  v3 = [(PGGraphNodeCollection *)PGGraphMeaningNodeCollection subsetInCollection:nodes];
  featureNodeCollection = [v3 featureNodeCollection];

  return featureNodeCollection;
}

@end