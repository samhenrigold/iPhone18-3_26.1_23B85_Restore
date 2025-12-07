@interface PGMemoryTriggerBeginningOfSeason
- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter;
@end

@implementation PGMemoryTriggerBeginningOfSeason

- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter
{
  v48 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  graphCopy = graph;
  reporterCopy = reporter;
  if ([reporterCopy isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v45 = 32;
      v46 = 2080;
      v47 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerBeginningOfSeason.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v10 = MEMORY[0x277CBEBF8];
  }

  else
  {
    localDate = [contextCopy localDate];
    if ([MEMORY[0x277D27690] isFirstTenDaysOfSeasonForLocalDate:localDate])
    {
      v12 = [MEMORY[0x277D27690] localStartSeasonDateForLocalDate:localDate];
      v13 = MEMORY[0x277D27690];
      timeZone = [contextCopy timeZone];
      v43 = v12;
      v15 = [v13 universalDateFromLocalDate:v12 inTimeZone:timeZone];

      v16 = [v15 dateByAddingTimeInterval:-0.01];
      v17 = MEMORY[0x277D27690];
      timeZone2 = [contextCopy timeZone];
      v42 = v16;
      v19 = [v17 localDateFromUniversalDate:v16 inTimeZone:timeZone2];

      v20 = +[PGGraphYearNodeCollection yearNodesForYear:inGraph:](PGGraphYearNodeCollection, "yearNodesForYear:inGraph:", [MEMORY[0x277D27690] yearFromDate:localDate], graphCopy);
      v21 = [MEMORY[0x277D27690] seasonNameForLocalDate:v19 locale:0];
      if (v21)
      {
        v38 = v19;
        v39 = v15;
        v37 = v21;
        v36 = [PGGraphSeasonNodeCollection seasonNodesForSeasonName:v21 inGraph:graphCopy];
        [v36 featureNodeCollection];
        v22 = v41 = v20;
        memoryNodes = [v22 memoryNodes];

        v20 = v41;
        featureNodeCollection = [v41 featureNodeCollection];
        memoryNodes2 = [featureNodeCollection memoryNodes];

        v35 = memoryNodes2;
        v26 = [memoryNodes collectionByIntersecting:memoryNodes2];

        v40 = v26;
        if ([v26 count])
        {
          v27 = [MEMORY[0x277D27690] localDateIntervalOfFirstTenDaysOfSeasonForLocalDate:localDate];
          v28 = objc_opt_class();
          startDate = [v27 startDate];
          endDate = [v27 endDate];
          timeZone3 = [contextCopy timeZone];
          v32 = [v28 validityIntervalForLocalStartDate:startDate localEndDate:endDate timeZone:timeZone3];

          if ([reporterCopy isCancelledWithProgress:1.0])
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v45 = 68;
              v46 = 2080;
              v47 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerBeginningOfSeason.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            v10 = MEMORY[0x277CBEBF8];
          }

          else
          {
            v10 = [objc_opt_class() memoryTriggerResultsForMemoryNodes:v40 withValidityInterval:v32];
          }

          v33 = v43;
          v19 = v38;
          v20 = v41;

          v15 = v39;
          v21 = v37;
        }

        else
        {
          v19 = v38;
          if ([reporterCopy isCancelledWithProgress:1.0])
          {
            v15 = v39;
            v21 = v37;
            v33 = v43;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v45 = 61;
              v46 = 2080;
              v47 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerBeginningOfSeason.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            v10 = MEMORY[0x277CBEBF8];
          }

          else
          {
            v10 = MEMORY[0x277CBEBF8];
            v15 = v39;
            v21 = v37;
            v33 = v43;
          }
        }
      }

      else if ([reporterCopy isCancelledWithProgress:1.0])
      {
        v33 = v43;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v45 = 51;
          v46 = 2080;
          v47 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerBeginningOfSeason.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v10 = MEMORY[0x277CBEBF8];
      }

      else
      {
        v10 = MEMORY[0x277CBEBF8];
        v33 = v43;
      }
    }

    else
    {
      if ([reporterCopy isCancelledWithProgress:1.0] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v45 = 36;
        v46 = 2080;
        v47 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerBeginningOfSeason.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v10 = MEMORY[0x277CBEBF8];
    }
  }

  return v10;
}

@end