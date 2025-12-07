@interface PGMemoryTriggerUpcomingBirthday
- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter;
- (id)upcomingBirthdayDateFromLocalDate:(id)date originalBirthdayDate:(id)birthdayDate;
@end

@implementation PGMemoryTriggerUpcomingBirthday

- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter
{
  v38 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  graphCopy = graph;
  reporterCopy = reporter;
  if ([reporterCopy isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v35 = 48;
      v36 = 2080;
      v37 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerUpcomingBirthday.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v11 = MEMORY[0x277CBEBF8];
  }

  else
  {
    localDate = [contextCopy localDate];
    timeZone = [contextCopy timeZone];
    v14 = [PGMemoryTrigger monthDayNodesInGraph:graphCopy startDayOffset:1 endDayOffset:3 fromLocalDate:localDate inTimeZone:timeZone];
    birthdayPersonNodes = [v14 birthdayPersonNodes];
    v16 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:graphCopy];
    v17 = [birthdayPersonNodes collectionBySubtracting:v16];

    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __88__PGMemoryTriggerUpcomingBirthday_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke;
    v27 = &unk_278884CE8;
    v28 = v16;
    v29 = graphCopy;
    selfCopy = self;
    v31 = localDate;
    v32 = timeZone;
    v19 = v18;
    v33 = v19;
    v20 = v16;
    v21 = localDate;
    v22 = timeZone;
    [v17 enumerateNodesUsingBlock:&v24];
    if ([reporterCopy isCancelledWithProgress:{1.0, v24, v25, v26, v27}])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v35 = 79;
        v36 = 2080;
        v37 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerUpcomingBirthday.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v11 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v11 = v19;
    }
  }

  return v11;
}

void __88__PGMemoryTriggerUpcomingBirthday_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 collection];
  v5 = [v4 momentNodes];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __88__PGMemoryTriggerUpcomingBirthday_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke_2;
  v19[3] = &unk_278888AE0;
  v20 = *(a1 + 32);
  v6 = [v5 filteredCollectionUsingBlock:v19];

  v7 = [v6 memoryNodes];
  v8 = [PGGraphMemoryNodeCollection memoryNodesOfCategory:1 inGraph:*(a1 + 40)];
  v9 = [v7 collectionByIntersecting:v8];
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = [v3 birthdayDate];

  v13 = [v10 upcomingBirthdayDateFromLocalDate:v11 originalBirthdayDate:v12];

  v14 = [v13 dateByAddingTimeInterval:-86400.0];
  v15 = [v13 dateByAddingTimeInterval:-259200.0];
  v16 = [objc_opt_class() validityIntervalForLocalStartDate:v15 localEndDate:v14 timeZone:*(a1 + 64)];
  v17 = *(a1 + 72);
  v18 = [objc_opt_class() memoryTriggerResultsForMemoryNodes:v9 withValidityInterval:v16];
  [v17 addObjectsFromArray:v18];
}

BOOL __88__PGMemoryTriggerUpcomingBirthday_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 personNodes];
  v4 = [v3 collectionBySubtracting:*(a1 + 32)];

  v5 = [v4 count] == 1;
  return v5;
}

- (id)upcomingBirthdayDateFromLocalDate:(id)date originalBirthdayDate:(id)birthdayDate
{
  birthdayDateCopy = birthdayDate;
  v6 = MEMORY[0x277D27690];
  dateCopy = date;
  v8 = [v6 yearFromDate:dateCopy];
  v9 = [MEMORY[0x277D27690] dateBySettingYear:v8 ofDate:birthdayDateCopy];
  v10 = [MEMORY[0x277D27690] numberOfDaysBetweenDate:dateCopy andDate:v9];

  if (v10 >= 4)
  {
    v11 = [MEMORY[0x277D27690] dateBySettingYear:v8 + 1 ofDate:birthdayDateCopy];

    v9 = v11;
  }

  return v9;
}

@end