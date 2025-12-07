@interface PGMemoryTriggerRecentHolidayCelebration
- (id)relevantFeatureNodesInFeatureNodes:(id)nodes;
- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter;
@end

@implementation PGMemoryTriggerRecentHolidayCelebration

- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter
{
  v45 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  graphCopy = graph;
  reporterCopy = reporter;
  if ([reporterCopy isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v42 = 42;
      v43 = 2080;
      v44 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerRecentHolidayCelebration.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v11 = MEMORY[0x277CBEBF8];
  }

  else
  {
    localDate = [contextCopy localDate];
    v13 = MEMORY[0x277D27690];
    timeZone = [contextCopy timeZone];
    v34 = localDate;
    v15 = [v13 universalDateFromLocalDate:localDate inTimeZone:timeZone];

    v16 = [MEMORY[0x277D27690] dateByAddingDays:-10 toDate:v15];
    v17 = [MEMORY[0x277D27690] dateByAddingDays:-3 toDate:v15];
    v18 = MEMORY[0x277D27690];
    timeZone2 = [contextCopy timeZone];
    v33 = v16;
    v20 = [v18 localDateFromUniversalDate:v16 inTimeZone:timeZone2];

    v21 = MEMORY[0x277D27690];
    timeZone3 = [contextCopy timeZone];
    v32 = v17;
    v23 = [v21 localDateFromUniversalDate:v17 inTimeZone:timeZone3];

    v24 = objc_alloc_init(MEMORY[0x277D22BD0]);
    holidayService = [(PGHolidayMemoryTrigger *)self holidayService];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __96__PGMemoryTriggerRecentHolidayCelebration_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke;
    v38[3] = &unk_278886F98;
    v26 = graphCopy;
    v39 = v26;
    v27 = v24;
    v40 = v27;
    [holidayService enumerateEventRulesForAllCountriesBetweenLocalDate:v20 andLocalDate:v23 usingBlock:v38];

    v28 = [(MAElementCollection *)[PGGraphMemoryNodeCollection alloc] initWithGraph:v26 elementIdentifiers:v27];
    v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __96__PGMemoryTriggerRecentHolidayCelebration_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke_2;
    v35[3] = &unk_278886FC0;
    v35[4] = self;
    v36 = contextCopy;
    v30 = v29;
    v37 = v30;
    [(MAElementCollection *)v28 enumerateIdentifiersAsCollectionsWithBlock:v35];
    if ([reporterCopy isCancelledWithProgress:1.0])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v42 = 88;
        v43 = 2080;
        v44 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerRecentHolidayCelebration.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v11 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v11 = v30;
    }
  }

  return v11;
}

void __96__PGMemoryTriggerRecentHolidayCelebration_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a2 name];
  v7 = [PGGraphHolidayNodeCollection holidayNodesWithName:v6 inGraph:*(a1 + 32)];

  v24 = v7;
  v8 = [v7 featureNodeCollection];
  v9 = [v8 memoryNodes];

  v22 = [PGGraphMemoryNodeCollection memoryNodesOfCategory:16 inGraph:*(a1 + 32)];
  v23 = v9;
  v10 = [v22 collectionByIntersecting:v9];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v5;
  v11 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      v14 = 0;
      do
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = +[PGGraphYearNodeCollection yearNodesForYear:inGraph:](PGGraphYearNodeCollection, "yearNodesForYear:inGraph:", [MEMORY[0x277D27690] yearFromDate:*(*(&v26 + 1) + 8 * v14)], *(a1 + 32));
        v16 = [v15 dateNodes];
        v17 = [v16 momentNodes];
        v18 = [v17 memoryNodes];

        v19 = [v10 elementIdentifiers];
        v20 = [v18 elementIdentifiers];
        v21 = [v19 identifierSetByIntersectingIdentifierSet:v20];

        [*(a1 + 40) unionWithIdentifierSet:v21];
        ++v14;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v12);
  }
}

void __96__PGMemoryTriggerRecentHolidayCelebration_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 momentNodes];
  v19 = [v5 dateNodes];

  v6 = [v4 featureNodes];
  v7 = [(PGGraphNodeCollection *)PGGraphHolidayNodeCollection subsetInCollection:v6];
  v8 = [v7 dateNodes];

  v9 = [v19 collectionByIntersecting:v8];
  v10 = [v9 anyNode];
  v11 = [v10 localDate];

  v12 = [v11 dateByAddingTimeInterval:864000.0];
  v13 = [v11 dateByAddingTimeInterval:259200.0];
  v14 = objc_opt_class();
  v15 = [*(a1 + 40) timeZone];
  v16 = [v14 validityIntervalForLocalStartDate:v13 localEndDate:v12 timeZone:v15];

  v17 = *(a1 + 48);
  v18 = [objc_opt_class() memoryTriggerResultsForMemoryNodes:v4 withValidityInterval:v16];

  [v17 addObjectsFromArray:v18];
}

- (id)relevantFeatureNodesInFeatureNodes:(id)nodes
{
  v3 = [(PGGraphNodeCollection *)PGGraphHolidayNodeCollection subsetInCollection:nodes];
  featureNodeCollection = [v3 featureNodeCollection];

  return featureNodeCollection;
}

@end