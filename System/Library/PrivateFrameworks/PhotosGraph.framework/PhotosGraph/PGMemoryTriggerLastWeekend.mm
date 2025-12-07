@interface PGMemoryTriggerLastWeekend
- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter;
@end

@implementation PGMemoryTriggerLastWeekend

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
      v33 = 34;
      v34 = 2080;
      v35 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerLastWeekend.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v10 = MEMORY[0x277CBEBF8];
  }

  else
  {
    localDate = [contextCopy localDate];
    if ([MEMORY[0x277D276A8] isWeekendDate:localDate])
    {
      v12 = [localDate dateByAddingTimeInterval:-86400.0];

      localDate = v12;
    }

    v30 = 0;
    v31 = 0.0;
    [MEMORY[0x277D276A8] nextWeekendLocalStartDate:&v30 interval:&v31 options:4 afterDate:localDate];
    v13 = v31;
    v14 = v30;
    v15 = [v14 dateByAddingTimeInterval:v13];
    v26 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v14 endDate:v15];
    v25 = [PGGraphMomentNodeCollection momentNodesForLocalDateInterval:"momentNodesForLocalDateInterval:inGraph:" inGraph:?];
    memoryNodes = [v25 memoryNodes];
    v27 = graphCopy;
    v17 = [PGGraphMemoryNodeCollection memoryNodesOfCategory:1 inGraph:graphCopy];
    v18 = [memoryNodes collectionByIntersecting:v17];
    v28 = 0;
    v29 = 0;
    [MEMORY[0x277D276A8] nextWeekendLocalStartDate:&v28 interval:&v29 options:0 afterDate:v15];
    v19 = v28;
    v20 = objc_opt_class();
    v24 = contextCopy;
    timeZone = [contextCopy timeZone];
    v22 = [v20 validityIntervalForLocalStartDate:v15 localEndDate:v19 timeZone:timeZone];

    if ([reporterCopy isCancelledWithProgress:1.0])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v33 = 62;
        v34 = 2080;
        v35 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerLastWeekend.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v10 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v10 = [objc_opt_class() memoryTriggerResultsForMemoryNodes:v18 withValidityInterval:v22];
    }

    contextCopy = v24;

    graphCopy = v27;
  }

  return v10;
}

@end