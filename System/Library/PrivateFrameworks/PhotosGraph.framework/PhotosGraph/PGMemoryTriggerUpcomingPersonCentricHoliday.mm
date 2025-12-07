@interface PGMemoryTriggerUpcomingPersonCentricHoliday
- (id)allSingleMomentMemoryNodesInGraph:(id)graph;
- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter;
- (id)singleMomentMemoryNodesWithRelevantPersonNodes:(id)nodes inGraph:(id)graph;
@end

@implementation PGMemoryTriggerUpcomingPersonCentricHoliday

- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter
{
  v52 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  graphCopy = graph;
  reporterCopy = reporter;
  if ([reporterCopy isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v49 = 62;
      v50 = 2080;
      v51 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerUpcomingPersonCentricHoliday.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v11 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v39 = reporterCopy;
    infoNode = [graphCopy infoNode];
    locale = [infoNode locale];

    if (!locale)
    {
      locale = [MEMORY[0x277CBEAF8] currentLocale];
    }

    v14 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:graphCopy];
    partnerPersonNodes = [v14 partnerPersonNodes];
    motherPersonNodes = [v14 motherPersonNodes];
    fatherPersonNodes = [v14 fatherPersonNodes];
    v40 = partnerPersonNodes;
    if ([partnerPersonNodes count] || objc_msgSend(motherPersonNodes, "count") || objc_msgSend(fatherPersonNodes, "count"))
    {
      v34 = v14;
      localDate = [contextCopy localDate];
      v38 = contextCopy;
      timeZone = [contextCopy timeZone];
      v35 = localDate;
      v20 = [MEMORY[0x277D27690] universalDateFromLocalDate:localDate inTimeZone:timeZone];
      v32 = [MEMORY[0x277D27690] dateByAddingDays:1 toDate:v20];
      v21 = [MEMORY[0x277D27690] localDateFromUniversalDate:? inTimeZone:?];
      v33 = v20;
      v31 = [MEMORY[0x277D27690] dateByAddingDays:7 toDate:v20];
      v22 = [MEMORY[0x277D27690] localDateFromUniversalDate:? inTimeZone:?];
      v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
      holidayService = [(PGHolidayMemoryTrigger *)self holidayService];
      v37 = locale;
      countryCode = [locale countryCode];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __100__PGMemoryTriggerUpcomingPersonCentricHoliday_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke;
      v41[3] = &unk_278883FD8;
      v41[4] = self;
      v42 = timeZone;
      v43 = v40;
      v44 = graphCopy;
      v26 = v23;
      v27 = v21;
      v28 = v26;
      v45 = v26;
      v36 = motherPersonNodes;
      v46 = motherPersonNodes;
      v47 = fatherPersonNodes;
      v29 = timeZone;
      [holidayService enumerateEventRulesBetweenLocalDate:v21 andLocalDate:v22 supportedCountryCode:countryCode usingBlock:v41];

      reporterCopy = v39;
      if ([v39 isCancelledWithProgress:1.0])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v49 = 116;
          v50 = 2080;
          v51 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerUpcomingPersonCentricHoliday.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v11 = MEMORY[0x277CBEBF8];
      }

      else
      {
        v11 = v28;
      }

      locale = v37;
      v14 = v34;

      contextCopy = v38;
      motherPersonNodes = v36;
    }

    else
    {
      v11 = MEMORY[0x277CBEBF8];
      reporterCopy = v39;
    }
  }

  return v11;
}

void __100__PGMemoryTriggerUpcomingPersonCentricHoliday_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke(void *a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a2 requiredTraits];
  v7 = [v6 peopleTrait];

  if ((v7 - 1) <= 0x3F && ((1 << (v7 - 1)) & 0x8000000080000001) != 0)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = v5;
    obj = v5;
    v9 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (!v9)
    {
      goto LABEL_23;
    }

    v10 = v9;
    v11 = *v29;
    while (1)
    {
      v12 = 0;
      do
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v28 + 1) + 8 * v12);
        v14 = [v13 dateByAddingTimeInterval:-86400.0];
        v15 = [v13 dateByAddingTimeInterval:-604800.0];
        v16 = [objc_opt_class() validityIntervalForLocalStartDate:v15 localEndDate:v14 timeZone:a1[5]];
        switch(v7)
        {
          case 64:
            v17 = a1[4];
            v18 = 48;
            v19 = a1 + 10;
            if (v17[6])
            {
              break;
            }

LABEL_16:
            v20 = [v17 singleMomentMemoryNodesWithRelevantPersonNodes:*v19 inGraph:a1[7]];
            v21 = a1[4];
            v22 = *(v21 + v18);
            *(v21 + v18) = v20;

            break;
          case 32:
            v17 = a1[4];
            v18 = 40;
            v19 = a1 + 9;
            if (!v17[5])
            {
              goto LABEL_16;
            }

            break;
          case 1:
            v17 = a1[4];
            v18 = 32;
            v19 = a1 + 6;
            if (!v17[4])
            {
              goto LABEL_16;
            }

            break;
          default:
            goto LABEL_18;
        }

        v23 = a1[8];
        v24 = [objc_opt_class() memoryTriggerResultsForMemoryNodes:*(a1[4] + v18) withValidityInterval:v16];
        [v23 addObjectsFromArray:v24];

LABEL_18:
        ++v12;
      }

      while (v10 != v12);
      v25 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      v10 = v25;
      if (!v25)
      {
LABEL_23:

        v5 = v26;
        break;
      }
    }
  }
}

- (id)singleMomentMemoryNodesWithRelevantPersonNodes:(id)nodes inGraph:(id)graph
{
  nodesCopy = nodes;
  v7 = [(PGMemoryTriggerUpcomingPersonCentricHoliday *)self allSingleMomentMemoryNodesInGraph:graph];
  featureNodeCollection = [nodesCopy featureNodeCollection];

  momentNodes = [featureNodeCollection momentNodes];
  memoryNodes = [momentNodes memoryNodes];

  v11 = [v7 collectionByIntersecting:memoryNodes];

  return v11;
}

- (id)allSingleMomentMemoryNodesInGraph:(id)graph
{
  allSingleMomentMemoryNodes = self->_allSingleMomentMemoryNodes;
  if (!allSingleMomentMemoryNodes)
  {
    v5 = [PGGraphMemoryNodeCollection memoryNodesOfCategory:1 inGraph:graph];
    v6 = self->_allSingleMomentMemoryNodes;
    self->_allSingleMomentMemoryNodes = v5;

    allSingleMomentMemoryNodes = self->_allSingleMomentMemoryNodes;
  }

  return allSingleMomentMemoryNodes;
}

@end