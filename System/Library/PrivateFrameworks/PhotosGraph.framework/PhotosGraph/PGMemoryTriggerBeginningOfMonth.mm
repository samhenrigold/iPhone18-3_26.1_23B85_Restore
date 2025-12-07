@interface PGMemoryTriggerBeginningOfMonth
- (PGMemoryTriggerBeginningOfMonth)initWithLoggingConnection:(id)connection momentNodesWithBlockedFeatureCache:(id)cache;
- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter;
@end

@implementation PGMemoryTriggerBeginningOfMonth

- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter
{
  v60 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  graphCopy = graph;
  reporterCopy = reporter;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v11 = [reporterCopy isCancelledWithProgress:0.0];
  *(v53 + 24) = v11;
  if (!v11)
  {
    localDate = [contextCopy localDate];
    v48 = [MEMORY[0x277D27690] components:16 fromDate:localDate];
    v47 = localDate;
    if ([v48 day] <= 7)
    {
      selfCopy = self;
      v14 = [MEMORY[0x277D27690] startOfMonthForDate:localDate];
      v15 = MEMORY[0x277D27690];
      timeZone = [contextCopy timeZone];
      v44 = [v15 universalDateFromLocalDate:v14 inTimeZone:timeZone];
      v41 = v14;

      v17 = [MEMORY[0x277D27690] dateByAddingDays:-1 toDate:v44];
      v18 = MEMORY[0x277D27690];
      timeZone2 = [contextCopy timeZone];
      v43 = [v18 localDateFromUniversalDate:v17 inTimeZone:timeZone2];
      v40 = v17;

      v46 = [MEMORY[0x277D27690] components:12 fromDate:v43];
      v20 = graphCopy;
      v21 = MEMORY[0x277D22C80];
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __88__PGMemoryTriggerBeginningOfMonth_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke;
      v49[3] = &unk_278889448;
      v51 = &v52;
      v39 = reporterCopy;
      v50 = v39;
      v42 = [v21 progressReporterWithProgressBlock:v49];
      month = [v46 month];
      year = [v46 year];
      momentNodesWithBlockedFeatureCache = selfCopy->_momentNodesWithBlockedFeatureCache;
      photoLibrary = [contextCopy photoLibrary];
      loggingConnection = [(PGMemoryTrigger *)selfCopy loggingConnection];
      v27 = [PGLastMonthAtHomeMemoryGenerator lastMonthAtHomeMemoriesForMonth:month year:year inGraph:v20 momentNodesWithBlockedFeatureCache:momentNodesWithBlockedFeatureCache photoLibrary:photoLibrary loggingConnection:loggingConnection progressReporter:v42];

      graphCopy = v20;
      if (*(v53 + 24) == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v57 = 59;
          v58 = 2080;
          v59 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerBeginningOfMonth.m";
          v28 = MEMORY[0x277D86220];
LABEL_27:
          _os_log_impl(&dword_22F0FC000, v28, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          goto LABEL_28;
        }

        goto LABEL_28;
      }

      if (![v27 count])
      {
        if (v53[3])
        {
          *(v53 + 24) = 1;
          graphCopy = v20;
        }

        else
        {
          v37 = [v39 isCancelledWithProgress:1.0];
          *(v53 + 24) = v37;
          graphCopy = v20;
          if ((v37 & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v57 = 61;
          v58 = 2080;
          v59 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerBeginningOfMonth.m";
          v28 = MEMORY[0x277D86220];
          goto LABEL_27;
        }

LABEL_28:
        v12 = MEMORY[0x277CBEBF8];
LABEL_31:

        goto LABEL_32;
      }

      v30 = [MEMORY[0x277D27690] startOfMonthForDate:v47];
      graphCopy = v20;
      v31 = [MEMORY[0x277D27690] dateComponentsWithLocalDate:v30];
      [v31 setDay:7];
      v32 = [MEMORY[0x277D27690] dateFromComponents:v31 inTimeZone:0];
      v33 = objc_opt_class();
      timeZone3 = [contextCopy timeZone];
      v35 = [v33 validityIntervalForLocalStartDate:v30 localEndDate:v32 timeZone:timeZone3];

      if (v53[3])
      {
        *(v53 + 24) = 1;
      }

      else
      {
        v36 = [v39 isCancelledWithProgress:1.0];
        *(v53 + 24) = v36;
        if ((v36 & 1) == 0)
        {
          v12 = [objc_opt_class() memoryTriggerResultsForMemoryNodesArray:v27 withValidityInterval:v35];
LABEL_30:

          goto LABEL_31;
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v57 = 70;
        v58 = 2080;
        v59 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerBeginningOfMonth.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v12 = MEMORY[0x277CBEBF8];
      goto LABEL_30;
    }

    if (v53[3])
    {
      *(v53 + 24) = 1;
    }

    else
    {
      v29 = [reporterCopy isCancelledWithProgress:1.0];
      *(v53 + 24) = v29;
      if ((v29 & 1) == 0)
      {
LABEL_14:
        v12 = MEMORY[0x277CBEBF8];
LABEL_32:

        goto LABEL_33;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v57 = 73;
      v58 = 2080;
      v59 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerBeginningOfMonth.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    goto LABEL_14;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v57 = 42;
    v58 = 2080;
    v59 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerBeginningOfMonth.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v12 = MEMORY[0x277CBEBF8];
LABEL_33:
  _Block_object_dispose(&v52, 8);

  return v12;
}

uint64_t __88__PGMemoryTriggerBeginningOfMonth_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke(uint64_t a1, _BYTE *a2)
{
  v4 = *(*(a1 + 40) + 8);
  if (*(v4 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:0.5];
    v4 = *(*(a1 + 40) + 8);
  }

  *(v4 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

- (PGMemoryTriggerBeginningOfMonth)initWithLoggingConnection:(id)connection momentNodesWithBlockedFeatureCache:(id)cache
{
  cacheCopy = cache;
  v11.receiver = self;
  v11.super_class = PGMemoryTriggerBeginningOfMonth;
  v8 = [(PGMemoryTrigger *)&v11 initWithLoggingConnection:connection];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_momentNodesWithBlockedFeatureCache, cache);
  }

  return v9;
}

@end