@interface DiagnosticStatisticsManager
- (DiagnosticStatisticsManager)initWithWorkspace:(id)workspace queue:(id)queue;
- (double)_calculateAverageCasesPerDayFromDailyAggregatedStatistics;
- (id)_createDiagnosticCaseUsageForDomain:(id)domain type:(id)type subType:(id)subType process:(id)process;
- (id)_retrieveDiagnosticCaseUsageForDomain:(id)domain type:(id)type subType:(id)subType process:(id)process onOrAfter:(id)after create:(BOOL)create;
- (int64_t)_removeDiagnosticCaseUsageMatchingDomain:(id)domain type:(id)type subType:(id)subType process:(id)process;
- (void)_checkFileWritingLimits:(id)limits;
- (void)_updateCaseStatisticsWith:(id)with;
- (void)_updateDailyCaseStatisticsWith:(id)with;
- (void)_updateDiagnosticCaseUsageForDomain:(id)domain type:(id)type subType:(id)subType process:(id)process lastSeen:(id)seen dampeningType:(BOOL)dampeningType;
- (void)cleanupDiagnosticCaseUsage;
- (void)getDiagnosticCaseUsageStatistics:(id)statistics;
- (void)resetDiagnosticCaseUsage;
- (void)updateCaseStatisticsWith:(id)with;
@end

@implementation DiagnosticStatisticsManager

- (DiagnosticStatisticsManager)initWithWorkspace:(id)workspace queue:(id)queue
{
  workspaceCopy = workspace;
  queueCopy = queue;
  v14.receiver = self;
  v14.super_class = DiagnosticStatisticsManager;
  v9 = [(DiagnosticStatisticsManager *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    objc_storeStrong(&v10->_workspace, workspace);
    v11 = [[DiagnosticCaseUsageAnalytics alloc] initWithWorkspace:workspaceCopy withCache:0];
    caseUsageSpace = v10->_caseUsageSpace;
    v10->_caseUsageSpace = v11;
  }

  return v10;
}

- (void)_checkFileWritingLimits:(id)limits
{
  v36 = *MEMORY[0x277D85DE8];
  limitsCopy = limits;
  dampeningType = [limitsCopy dampeningType];
  if (dampeningType)
  {
    *buf = 0;
    v29 = buf;
    v30 = 0x2020000000;
    v31 = 0;
    [limitsCopy caseOpenedTime];
    if (v6 > 100000000.0)
    {
      [limitsCopy caseOpenedTime];
      v9 = v11;
    }

    else
    {
      date = [MEMORY[0x277CBEAA8] date];
      [date timeIntervalSince1970];
      v9 = v8;
    }

    v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:(86400 * (v9 / 0x15180))];
    v13 = [(DiagnosticStatisticsManager *)self _retrieveDiagnosticCaseUsageForDomain:@"DAILY_AGGREGATE" type:@"DAILY_AGGREGATE" subType:@"DAILY_AGGREGATE" process:@"DAILY_AGGREGATE" onOrAfter:v12 create:0];
    v14 = casemanagementLogHandle(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = [v13 count];
      *v32 = 134218242;
      v33 = v15;
      v34 = 2112;
      v35 = v12;
      _os_log_impl(&dword_241804000, v14, OS_LOG_TYPE_DEBUG, "Found %ld case usages since %@", v32, 0x16u);
    }

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __55__DiagnosticStatisticsManager__checkFileWritingLimits___block_invoke;
    v27[3] = &unk_278CF0700;
    v27[4] = buf;
    [v13 enumerateObjectsUsingBlock:v27];
    v16 = +[ABCAdministrator sharedInstance];
    configurationManager = [v16 configurationManager];
    dampenedIPSLimit = [configurationManager dampenedIPSLimit];

    v20 = *(v29 + 3);
    if (v20 > dampenedIPSLimit)
    {
      v21 = casemanagementLogHandle(v19);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v26 = *(v29 + 3);
        *v32 = 134218240;
        v33 = v26;
        v34 = 2048;
        v35 = dampenedIPSLimit;
        v23 = "Surpassed limit for dampened cases. Will not write out ips file. (%ld > %ld)";
        v24 = v21;
        v25 = OS_LOG_TYPE_INFO;
        goto LABEL_15;
      }
    }

    else
    {
      v21 = casemanagementLogHandle(v19);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v22 = *(v29 + 3);
        *v32 = 134218240;
        v33 = v22;
        v34 = 2048;
        v35 = dampenedIPSLimit;
        v23 = "Still under limit for dampened cases. Allowing write out of ips file. (%ld <= %ld)";
        v24 = v21;
        v25 = OS_LOG_TYPE_DEBUG;
LABEL_15:
        _os_log_impl(&dword_241804000, v24, v25, v23, v32, 0x16u);
      }
    }

    [limitsCopy allowIPSFileOutput:v20 <= dampenedIPSLimit];
    _Block_object_dispose(buf, 8);
    goto LABEL_17;
  }

  v10 = casemanagementLogHandle(dampeningType);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEBUG, "Case accepted. Allowing write out of ips file by default.", buf, 2u);
  }

LABEL_17:
}

void __55__DiagnosticStatisticsManager__checkFileWritingLimits___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 casesSeen];
  v5 = [v3 casesAccepted];
  v6 = v5;
  v7 = v4 - v5;
  v8 = casemanagementLogHandle(v5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = v6;
    v10 = [v3 lastSeen];
    v11 = 134218754;
    v12 = v4;
    v13 = 2048;
    v14 = v9;
    v15 = 2048;
    v16 = v7;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEBUG, "  Total cases: %ld, cases accepted: %ld, cases dampened: %ld (last seen: %@)", &v11, 0x2Au);
  }

  *(*(*(a1 + 32) + 8) + 24) += v7;
}

- (void)updateCaseStatisticsWith:(id)with
{
  withCopy = with;
  [(DiagnosticStatisticsManager *)self _updateCaseStatisticsWith:withCopy];
  [(DiagnosticStatisticsManager *)self _updateDailyCaseStatisticsWith:withCopy];
}

- (void)getDiagnosticCaseUsageStatistics:(id)statistics
{
  statisticsCopy = statistics;
  queue = [(DiagnosticStatisticsManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__DiagnosticStatisticsManager_getDiagnosticCaseUsageStatistics___block_invoke;
  v7[3] = &unk_278CEFEB0;
  v7[4] = self;
  v8 = statisticsCopy;
  v6 = statisticsCopy;
  dispatch_async(queue, v7);
}

void __64__DiagnosticStatisticsManager_getDiagnosticCaseUsageStatistics___block_invoke(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 24))
  {
    v25 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"lastSeen" ascending:0];
    v26 = a1;
    v2 = [*(*(a1 + 32) + 24) fetchEntitiesFreeForm:0 sortDesc:?];
    v3 = [MEMORY[0x277CBEB18] array];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = v2;
    v30 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v30)
    {
      v28 = *v48;
      v4 = @"N/A";
      v5 = 0x277CCA000uLL;
      v29 = v3;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v48 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v47 + 1) + 8 * i);
          v42 = MEMORY[0x277CBEAC0];
          v8 = [v7 domain];
          if (v8)
          {
            v36 = [v7 domain];
            v40 = v36;
          }

          else
          {
            v40 = @"N/A";
          }

          v9 = [v7 type];
          if (v9)
          {
            v35 = [v7 type];
            v39 = v35;
          }

          else
          {
            v39 = @"N/A";
          }

          v10 = [v7 subtype];
          if (v10)
          {
            v34 = [v7 subtype];
            v38 = v34;
          }

          else
          {
            v38 = @"N/A";
          }

          v11 = [v7 process];
          if (v11)
          {
            v33 = [v7 process];
            v37 = v33;
          }

          else
          {
            v37 = @"N/A";
          }

          v45 = v8;
          v46 = [*(v5 + 2992) numberWithInteger:{objc_msgSend(v7, "casesSeen")}];
          v12 = [v7 lastSeen];
          v43 = v10;
          if (v12)
          {
            v13 = [v7 lastSeen];
            v32 = v13;
          }

          else
          {
            v13 = @"N/A";
          }

          v14 = [*(v5 + 2992) numberWithInteger:{objc_msgSend(v7, "casesAccepted")}];
          v15 = [v7 lastAccepted];
          v44 = v9;
          v41 = v11;
          if (v15)
          {
            v4 = [v7 lastAccepted];
            v31 = v4;
          }

          v16 = *(v5 + 2992);
          [v7 interarrival_mean];
          v17 = [v16 numberWithDouble:?];
          v18 = v5;
          v19 = v17;
          v20 = v18;
          v21 = *(v18 + 2992);
          [v7 interarrival_var];
          v22 = [v21 numberWithDouble:?];
          v23 = [v42 dictionaryWithObjectsAndKeys:{v40, @"domain", v39, @"type", v38, @"subtype", v37, @"detected", v46, @"casesSeen", v13, @"lastSeen", v14, @"casesAccepted", v4, @"lastAccepted", v19, @"interArrivalMean", v22, @"interArrivalVariance", 0}];

          if (v15)
          {
          }

          v4 = @"N/A";
          if (v12)
          {
          }

          v3 = v29;
          v5 = v20;
          if (v41)
          {
          }

          if (v43)
          {
          }

          if (v44)
          {
          }

          if (v45)
          {
          }

          [v29 addObject:v23];
        }

        v30 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
      }

      while (v30);
    }

    v24 = *(v26 + 40);
    if (v24)
    {
      (*(v24 + 16))(v24, v3);
    }
  }
}

- (void)_updateCaseStatisticsWith:(id)with
{
  withCopy = with;
  v5 = MEMORY[0x277CBEAA8];
  [withCopy caseOpenedTime];
  v6 = [v5 dateWithTimeIntervalSince1970:?];
  if (v6)
  {
    caseDomain = [withCopy caseDomain];
    caseType = [withCopy caseType];
    caseSubType = [withCopy caseSubType];
    caseDetectedProcess = [withCopy caseDetectedProcess];
    -[DiagnosticStatisticsManager _updateDiagnosticCaseUsageForDomain:type:subType:process:lastSeen:dampeningType:](self, "_updateDiagnosticCaseUsageForDomain:type:subType:process:lastSeen:dampeningType:", caseDomain, caseType, caseSubType, caseDetectedProcess, v6, [withCopy dampeningType] != 0);
  }

  else
  {
    v11 = casemanagementLogHandle(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_ERROR, "DiagnosticCase has no timeStamp!", v12, 2u);
    }
  }
}

- (void)_updateDiagnosticCaseUsageForDomain:(id)domain type:(id)type subType:(id)subType process:(id)process lastSeen:(id)seen dampeningType:(BOOL)dampeningType
{
  v43 = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  typeCopy = type;
  subTypeCopy = subType;
  processCopy = process;
  seenCopy = seen;
  v19 = [(DiagnosticStatisticsManager *)self _retrieveDiagnosticCaseUsageForDomain:domainCopy type:typeCopy subType:subTypeCopy process:processCopy];
  v20 = [v19 count];
  if (v20 == 1)
  {
    firstObject = [v19 firstObject];
    if (firstObject)
    {
      v22 = firstObject;
      dampeningTypeCopy = dampeningType;
      v23 = casemanagementLogHandle(firstObject);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v34 = v22;
        _os_log_impl(&dword_241804000, v23, OS_LOG_TYPE_INFO, "Updating DiagCaseUsage: %@", buf, 0xCu);
      }

      lastSeen = [v22 lastSeen];
      casesSeen = [v22 casesSeen];
      [v22 setCasesSeen:(casesSeen + 1)];
      [v22 setLastSeen:seenCopy];
      [v22 interarrival_mean];
      if (casesSeen >= 1)
      {
        v26 = v25;
        [seenCopy timeIntervalSinceDate:lastSeen];
        v28 = v27;
        [MathUtility computeNewMeanFromValue:"computeNewMeanFromValue:currentMean:currentCount:" currentMean:(casesSeen - 1) currentCount:?];
        [v22 setInterarrival_mean:?];
        if (casesSeen != 1)
        {
          [v22 interarrival_var];
          [MathUtility computeNewVarianceFromValue:(casesSeen - 1) currentMean:v28 currentCount:v26 currentVariance:v29];
          [v22 setInterarrival_var:?];
        }
      }

      if (!dampeningTypeCopy)
      {
        [v22 setCasesAccepted:[v22 casesAccepted]+ 1];
        [v22 setLastAccepted:seenCopy];
      }

      [(ObjectAnalytics *)self->_caseUsageSpace save];

      goto LABEL_16;
    }
  }

  else
  {
    v30 = casemanagementLogHandle(v20);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 134219010;
      v34 = [v19 count];
      v35 = 2112;
      v36 = domainCopy;
      v37 = 2112;
      v38 = typeCopy;
      v39 = 2112;
      v40 = subTypeCopy;
      v41 = 2112;
      v42 = processCopy;
      _os_log_impl(&dword_241804000, v30, OS_LOG_TYPE_INFO, "Found %ld DiagCaseUsage objects that matched with (%@, %@, %@, %@)", buf, 0x34u);
    }
  }

  v22 = casemanagementLogHandle(firstObject);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v22, OS_LOG_TYPE_ERROR, "DiagnosticCaseUsage is nil.", buf, 2u);
  }

LABEL_16:
}

- (void)_updateDailyCaseStatisticsWith:(id)with
{
  v42 = *MEMORY[0x277D85DE8];
  withCopy = with;
  caseOpenedTime = [withCopy caseOpenedTime];
  v7 = v6;
  if (v6 >= 100000000.0)
  {
    dampeningType = [withCopy dampeningType];
    v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:(86400 * (v7 / 0x15180))];
    v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v7];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy_;
    v40 = __Block_byref_object_dispose_;
    v41 = 0;
    v13 = [(DiagnosticStatisticsManager *)self _retrieveDiagnosticCaseUsageForDomain:@"DAILY_AGGREGATE" type:@"DAILY_AGGREGATE" subType:@"DAILY_AGGREGATE" process:@"DAILY_AGGREGATE" onOrAfter:v11 create:0];
    v14 = casemanagementLogHandle(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *v33 = 134218242;
      v34 = [v13 count];
      v35 = 2112;
      v36 = v11;
      _os_log_impl(&dword_241804000, v14, OS_LOG_TYPE_DEBUG, "Found %ld case usages on or later than %@", v33, 0x16u);
    }

    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __62__DiagnosticStatisticsManager__updateDailyCaseStatisticsWith___block_invoke;
    v30 = &unk_278CF0728;
    v8 = v11;
    v31 = v8;
    p_buf = &buf;
    [v13 enumerateObjectsUsingBlock:&v27];
    v15 = *(*(&buf + 1) + 40);
    if (v15)
    {
      goto LABEL_10;
    }

    v16 = casemanagementLogHandle(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v33 = 138412290;
      v34 = v8;
      _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_DEFAULT, "Creating a new aggregated DiagnosticCaseUsage for cases on GMT date %@.", v33, 0xCu);
    }

    v17 = [(DiagnosticStatisticsManager *)self _createDiagnosticCaseUsageForDomain:@"DAILY_AGGREGATE" type:@"DAILY_AGGREGATE" subType:@"DAILY_AGGREGATE" process:@"DAILY_AGGREGATE", v27, v28, v29, v30];
    v18 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v17;

    v15 = *(*(&buf + 1) + 40);
    if (v15)
    {
LABEL_10:
      lastSeen = [v15 lastSeen];
      casesSeen = [*(*(&buf + 1) + 40) casesSeen];
      [*(*(&buf + 1) + 40) setCasesSeen:(casesSeen + 1)];
      [*(*(&buf + 1) + 40) setLastSeen:v12];
      [*(*(&buf + 1) + 40) interarrival_mean];
      if (casesSeen >= 1)
      {
        v22 = v21;
        [v12 timeIntervalSinceDate:lastSeen];
        v24 = v23;
        [MathUtility computeNewMeanFromValue:"computeNewMeanFromValue:currentMean:currentCount:" currentMean:(casesSeen - 1) currentCount:?];
        [*(*(&buf + 1) + 40) setInterarrival_mean:?];
        if (casesSeen != 1)
        {
          [*(*(&buf + 1) + 40) interarrival_var];
          [MathUtility computeNewVarianceFromValue:(casesSeen - 1) currentMean:v24 currentCount:v22 currentVariance:v25];
          [*(*(&buf + 1) + 40) setInterarrival_var:?];
        }
      }

      if (!dampeningType)
      {
        casesAccepted = [*(*(&buf + 1) + 40) casesAccepted];
        [*(*(&buf + 1) + 40) setCasesAccepted:(casesAccepted + 1)];
        [*(*(&buf + 1) + 40) setLastAccepted:v12];
      }

      [(ObjectAnalytics *)self->_caseUsageSpace save];
    }

    else
    {
      lastSeen = casemanagementLogHandle(0);
      if (os_log_type_enabled(lastSeen, OS_LOG_TYPE_DEFAULT))
      {
        *v33 = 138412290;
        v34 = v8;
        _os_log_impl(&dword_241804000, lastSeen, OS_LOG_TYPE_DEFAULT, "Aggregated DiagnosticCaseUsage for case on GMT date %@ is nil.", v33, 0xCu);
      }
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v8 = casemanagementLogHandle(caseOpenedTime);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [withCopy caseOpenedTime];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v9;
      _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_ERROR, "DiagnosticCase has an invalid timeStamp! (%.0lf)", &buf, 0xCu);
    }
  }
}

void __62__DiagnosticStatisticsManager__updateDailyCaseStatisticsWith___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = MEMORY[0x277CBEAA8];
  v9 = [v7 lastSeen];
  [v9 timeIntervalSince1970];
  v11 = v10;
  v12 = [v7 lastSeen];
  [v12 timeIntervalSince1970];
  v14 = [v8 dateWithTimeIntervalSince1970:(v11 + 86400 * (v13 / 0x15180) - v13)];

  v15 = [*(a1 + 32) isEqualToDate:v14];
  if (v15)
  {
    v16 = casemanagementLogHandle(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 32);
      v18 = 138412290;
      v19 = v17;
      _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_INFO, "Found aggregated DiagnosticCaseUsage for cases on GMT date %@.", &v18, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)_retrieveDiagnosticCaseUsageForDomain:(id)domain type:(id)type subType:(id)subType process:(id)process onOrAfter:(id)after create:(BOOL)create
{
  createCopy = create;
  v45 = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  typeCopy = type;
  subTypeCopy = subType;
  processCopy = process;
  afterCopy = after;
  v19 = [domainCopy length];
  if (v19 && (v19 = [typeCopy length]) != 0)
  {
    v34 = createCopy;
    selfCopy = self;
    v20 = MEMORY[0x277CBEB18];
    typeCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@ AND %K == %@", @"domain", domainCopy, @"type", typeCopy];
    v22 = [v20 arrayWithObjects:{typeCopy, 0}];

    if ([subTypeCopy length])
    {
      subTypeCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"subtype", subTypeCopy];
      [v22 addObject:subTypeCopy];
    }

    if ([processCopy length])
    {
      processCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"process", processCopy];
      [v22 addObject:processCopy];
    }

    if (afterCopy)
    {
      afterCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K >= %@", @"lastSeen", afterCopy];
      [v22 addObject:afterCopy];
    }

    v35 = afterCopy;
    v26 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v22];
    v27 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"lastSeen" ascending:0];
    v28 = [(ObjectAnalytics *)selfCopy->_caseUsageSpace fetchEntitiesFreeForm:v26 sortDesc:v27];
    if ([v28 count] || !v34)
    {
      v32 = v28;
    }

    else
    {
      v29 = casemanagementLogHandle(0);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 138413058;
        v38 = domainCopy;
        v39 = 2112;
        v40 = typeCopy;
        v41 = 2112;
        v42 = subTypeCopy;
        v43 = 2112;
        v44 = processCopy;
        _os_log_impl(&dword_241804000, v29, OS_LOG_TYPE_INFO, "Creating a new DiagnosticCaseUsage with domain %@, type %@, subtype %@, process %@.", buf, 0x2Au);
      }

      v30 = MEMORY[0x277CBEA60];
      v31 = [(DiagnosticStatisticsManager *)selfCopy _createDiagnosticCaseUsageForDomain:domainCopy type:typeCopy subType:subTypeCopy process:processCopy];
      v32 = [v30 arrayWithObject:v31];
    }

    afterCopy = v35;
  }

  else
  {
    v22 = casemanagementLogHandle(v19);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v22, OS_LOG_TYPE_ERROR, "Domain and Type are required", buf, 2u);
    }

    v32 = 0;
  }

  return v32;
}

- (id)_createDiagnosticCaseUsageForDomain:(id)domain type:(id)type subType:(id)subType process:(id)process
{
  domainCopy = domain;
  typeCopy = type;
  subTypeCopy = subType;
  processCopy = process;
  createEntity = [(ObjectAnalytics *)self->_caseUsageSpace createEntity];
  v15 = createEntity;
  if (createEntity)
  {
    [createEntity setDomain:domainCopy];
    [v15 setType:typeCopy];
    [v15 setSubtype:subTypeCopy];
    [v15 setProcess:processCopy];
  }

  return v15;
}

- (double)_calculateAverageCasesPerDayFromDailyAggregatedStatistics
{
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v5 = v4;
  [date timeIntervalSince1970];
  v7 = (v5 + 86400 * (v6 / 0x15180) - v6);
  v8 = [(DiagnosticStatisticsManager *)self _retrieveDiagnosticCaseUsageForDomain:@"DAILY_AGGREGATE" type:@"DAILY_AGGREGATE" subType:@"DAILY_AGGREGATE" process:@"DAILY_AGGREGATE" onOrAfter:0 create:0];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __88__DiagnosticStatisticsManager__calculateAverageCasesPerDayFromDailyAggregatedStatistics__block_invoke;
  v12[3] = &unk_278CF0750;
  *&v12[6] = v7;
  v12[4] = &v17;
  v12[5] = &v13;
  [v8 enumerateObjectsUsingBlock:v12];
  v9 = v14[3];
  if (v9 < 1)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v18[3] / v9;
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);

  return v10;
}

void __88__DiagnosticStatisticsManager__calculateAverageCasesPerDayFromDailyAggregatedStatistics__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 lastSeen];
  [v4 timeIntervalSince1970];
  v6 = v5;
  v7 = [v3 lastSeen];
  [v7 timeIntervalSince1970];
  v9 = (v6 + 86400 * (v8 / 0x15180) - v8);

  if (*(a1 + 48) != v9)
  {
    v11 = casemanagementLogHandle(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v9];
      v13 = 138412546;
      v14 = v12;
      v15 = 1024;
      v16 = [v3 casesSeen];
      _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_DEFAULT, "Daily aggregated case usage on %@ has %d cases", &v13, 0x12u);
    }

    *(*(*(a1 + 32) + 8) + 24) += [v3 casesSeen];
    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

- (int64_t)_removeDiagnosticCaseUsageMatchingDomain:(id)domain type:(id)type subType:(id)subType process:(id)process
{
  v26 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  subTypeCopy = subType;
  processCopy = process;
  v13 = MEMORY[0x277CBEB18];
  domain = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"domain", domain];
  v15 = [v13 arrayWithObject:domain];

  if ([typeCopy length])
  {
    typeCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"type", typeCopy];
    [v15 addObject:typeCopy];
  }

  if ([subTypeCopy length])
  {
    subTypeCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"subtype", subTypeCopy];
    [v15 addObject:subTypeCopy];
  }

  if ([processCopy length])
  {
    processCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"process", processCopy];
    [v15 addObject:processCopy];
  }

  v19 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v15];
  v20 = [(ObjectAnalytics *)self->_caseUsageSpace removeEntitiesMatching:v19];
  v21 = v20;
  if (v20)
  {
    v22 = casemanagementLogHandle(v20);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v25 = v21;
      _os_log_impl(&dword_241804000, v22, OS_LOG_TYPE_INFO, "Removed %ld DiagnosticCaseUsage.", buf, 0xCu);
    }
  }

  return v21;
}

- (void)resetDiagnosticCaseUsage
{
  queue = [(DiagnosticStatisticsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__DiagnosticStatisticsManager_resetDiagnosticCaseUsage__block_invoke;
  block[3] = &unk_278CEFE88;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __55__DiagnosticStatisticsManager_resetDiagnosticCaseUsage__block_invoke(uint64_t a1)
{
  v2 = casemanagementLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_241804000, v2, OS_LOG_TYPE_INFO, "Resetting DiagnosticCaseUsage", v4, 2u);
  }

  return [*(a1 + 32) _removeAllDiagnosticCaseUsageFor:0];
}

- (void)cleanupDiagnosticCaseUsage
{
  queue = [(DiagnosticStatisticsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__DiagnosticStatisticsManager_cleanupDiagnosticCaseUsage__block_invoke;
  block[3] = &unk_278CEFE88;
  block[4] = self;
  dispatch_async(queue, block);
}

void __57__DiagnosticStatisticsManager_cleanupDiagnosticCaseUsage__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = casemanagementLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v2, OS_LOG_TYPE_INFO, "Purging old DiagnosticCaseUsage objects.", buf, 2u);
  }

  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [v3 dateByAddingTimeInterval:-1209600.0];

  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K <= %@", @"lastSeen", v4];
  v6 = [*(*(a1 + 32) + 24) removeEntitiesMatching:v5];
  v7 = casemanagementLogHandle(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v9 = v6;
    v10 = 1024;
    v11 = 14;
    _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_INFO, "Purged %ld DiagnosticCaseUsage object(s) with lastSeen older than %d days.", buf, 0x12u);
  }
}

@end