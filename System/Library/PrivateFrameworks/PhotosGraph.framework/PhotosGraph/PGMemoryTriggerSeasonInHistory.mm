@interface PGMemoryTriggerSeasonInHistory
- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter;
@end

@implementation PGMemoryTriggerSeasonInHistory

- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter
{
  v40 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  graphCopy = graph;
  reporterCopy = reporter;
  if (![reporterCopy isCancelledWithProgress:0.0])
  {
    localDate = [contextCopy localDate];
    v12 = [MEMORY[0x277D27690] components:12 fromDate:localDate];
    month = [v12 month];
    year = [v12 year];
    v15 = [MEMORY[0x277D27690] seasonNameForLocalDate:localDate locale:0];
    if (!v15)
    {
      if ([reporterCopy isCancelledWithProgress:1.0] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v37 = 46;
        v38 = 2080;
        v39 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerSeasonInHistory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v10 = MEMORY[0x277CBEBF8];
      goto LABEL_27;
    }

    v32 = v12;
    if (month == 12)
    {
      v16 = year + 1;
    }

    else
    {
      v16 = year;
    }

    v35 = v15;
    v17 = [PGGraphSeasonNodeCollection seasonNodesForSeasonName:v15 inGraph:graphCopy];
    v18 = [PGGraphYearNodeCollection yearNodesForYear:v16 inGraph:graphCopy];
    v34 = v17;
    featureNodeCollection = [v17 featureNodeCollection];
    memoryNodes = [featureNodeCollection memoryNodes];

    v33 = v18;
    featureNodeCollection2 = [v18 featureNodeCollection];
    memoryNodes2 = [featureNodeCollection2 memoryNodes];
    v23 = [memoryNodes collectionBySubtracting:memoryNodes2];

    v24 = v23;
    if ([v23 count])
    {
      v31 = [MEMORY[0x277D27690] localStartDateForNextSeasonAfterLocalDate:localDate];
      v25 = [v31 dateByAddingTimeInterval:-0.01];
      v26 = [MEMORY[0x277D27690] localStartSeasonDateForLocalDate:localDate];
      v27 = objc_opt_class();
      timeZone = [contextCopy timeZone];
      v29 = [v27 validityIntervalForLocalStartDate:v26 localEndDate:v25 timeZone:timeZone];

      if ([reporterCopy isCancelledWithProgress:1.0])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v37 = 65;
          v38 = 2080;
          v39 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerSeasonInHistory.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v10 = MEMORY[0x277CBEBF8];
      }

      else
      {
        v10 = [objc_opt_class() memoryTriggerResultsForMemoryNodes:v24 withValidityInterval:v29];
      }
    }

    else
    {
      if ([reporterCopy isCancelledWithProgress:1.0])
      {
        v15 = v35;
        v12 = v32;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v37 = 57;
          v38 = 2080;
          v39 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerSeasonInHistory.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v10 = MEMORY[0x277CBEBF8];
        goto LABEL_26;
      }

      v10 = MEMORY[0x277CBEBF8];
    }

    v15 = v35;
    v12 = v32;
LABEL_26:

LABEL_27:
    goto LABEL_28;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v37 = 32;
    v38 = 2080;
    v39 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerSeasonInHistory.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v10 = MEMORY[0x277CBEBF8];
LABEL_28:

  return v10;
}

@end