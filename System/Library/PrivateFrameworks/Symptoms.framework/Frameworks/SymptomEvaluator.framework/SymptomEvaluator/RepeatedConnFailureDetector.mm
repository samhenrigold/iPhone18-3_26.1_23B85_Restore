@interface RepeatedConnFailureDetector
- (RepeatedConnFailureDetector)init;
- (void)_excessiveConnFailuresDetectedOn:(id)on owner:(id)owner;
- (void)_flush;
- (void)dealloc;
- (void)noteSuspectFlow:(id)flow withOwner:(id)owner;
@end

@implementation RepeatedConnFailureDetector

- (void)_flush
{
  v56 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  [(NSDate *)date timeIntervalSinceReferenceDate];
  v4 = v3;
  array = [MEMORY[0x277CBEB18] array];
  v5 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEBUG))
  {
    flowRecords = self->_flowRecords;
    *buf = 138412290;
    v52 = flowRecords;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "RCF: Attempting to flush, flow records are %@", buf, 0xCu);
  }

  v7 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEBUG))
  {
    reportDampeners = self->_reportDampeners;
    *buf = 138412290;
    v52 = reportDampeners;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "RCF: Before flush, dampeners are %@", buf, 0xCu);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v9 = self->_flowRecords;
  v10 = [(NSMutableDictionary *)v9 countByEnumeratingWithState:&v46 objects:v55 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v47;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v47 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v46 + 1) + 8 * i);
        v15 = [(NSMutableDictionary *)self->_flowRecords objectForKeyedSubscript:v14];
        [v15 lastConnectionFailTime];
        if (v4 - v16 > 80.0)
        {
          v17 = flowLogHandle;
          if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v52 = v14;
            v53 = 2112;
            v54 = v15;
            _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEBUG, "RCF: aged out failure tracker %@ -> %@", buf, 0x16u);
          }

          [array addObject:v14];
        }
      }

      v11 = [(NSMutableDictionary *)v9 countByEnumeratingWithState:&v46 objects:v55 count:16];
    }

    while (v11);
  }

  [(NSMutableDictionary *)self->_flowRecords removeObjectsForKeys:array];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v18 = self->_reportDampeners;
  v19 = [(NSMutableDictionary *)v18 countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v43;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v43 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v42 + 1) + 8 * j);
        v24 = [(NSMutableDictionary *)self->_reportDampeners objectForKeyedSubscript:v23];
        suppressReportingUntil = [v24 suppressReportingUntil];
        [suppressReportingUntil timeIntervalSinceNow];
        v27 = v26;

        if (v27 < 0.0)
        {
          v28 = objc_alloc(MEMORY[0x277CBEAA8]);
          suppressReportingUntil2 = [v24 suppressReportingUntil];
          v30 = [v28 initWithTimeInterval:suppressReportingUntil2 sinceDate:3600.0];

          if (![v24 numSuppressedReports] || (objc_msgSend(v30, "timeIntervalSinceNow"), v31 < 0.0))
          {
            if ([v24 numSuppressedReports])
            {
              v32 = flowLogHandle;
              if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_ERROR))
              {
                v33 = v32;
                numSuppressedReports = [v24 numSuppressedReports];
                *buf = 138412546;
                v52 = v23;
                v53 = 2048;
                v54 = numSuppressedReports;
                _os_log_impl(&dword_23255B000, v33, OS_LOG_TYPE_ERROR, "RCF: Process %@ had %lld connection failures unreported when flushing dampener cache", buf, 0x16u);
              }
            }

            [array addObject:v23];
          }
        }
      }

      v20 = [(NSMutableDictionary *)v18 countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v20);
  }

  [(NSMutableDictionary *)self->_reportDampeners removeObjectsForKeys:array];
  v35 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v36 = self->_flowRecords;
    *buf = 138412290;
    v52 = v36;
    _os_log_impl(&dword_23255B000, v35, OS_LOG_TYPE_DEBUG, "RCF: After flush, flow records are %@", buf, 0xCu);
  }

  v37 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v38 = self->_reportDampeners;
    *buf = 138412290;
    v52 = v38;
    _os_log_impl(&dword_23255B000, v37, OS_LOG_TYPE_DEBUG, "RCF: After flush, dampeners are %@", buf, 0xCu);
  }

  lastFlush = self->_lastFlush;
  self->_lastFlush = date;
}

- (void)_excessiveConnFailuresDetectedOn:(id)on owner:(id)owner
{
  v20 = *MEMORY[0x277D85DE8];
  onCopy = on;
  ownerCopy = owner;
  processName = [onCopy processName];
  v9 = [(NSMutableDictionary *)self->_reportDampeners objectForKeyedSubscript:processName];
  if (!v9)
  {
    v9 = objc_alloc_init(ReportDampener);
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    [(ReportDampener *)v9 setSuppressReportingUntil:distantPast];

    [(NSMutableDictionary *)self->_reportDampeners setObject:v9 forKeyedSubscript:processName];
  }

  [onCopy _logFailure];
  suppressReportingUntil = [(ReportDampener *)v9 suppressReportingUntil];
  [suppressReportingUntil timeIntervalSinceNow];
  v13 = v12;

  if (v13 >= 0.0)
  {
    v17 = flowLogHandle;
    if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = processName;
      _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "RCF: Repeated conn failure report suppressed for %@", &v18, 0xCu);
    }

    v16 = [(ReportDampener *)v9 numSuppressedReports]+ 1;
    v15 = v9;
  }

  else
  {
    [onCopy _reportFailure:-[ReportDampener numSuppressedReports](v9 owner:{"numSuppressedReports"), ownerCopy}];
    v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:3600.0];
    [(ReportDampener *)v9 setSuppressReportingUntil:v14];

    v15 = v9;
    v16 = 0;
  }

  [(ReportDampener *)v15 setNumSuppressedReports:v16];
}

- (void)noteSuspectFlow:(id)flow withOwner:(id)owner
{
  v71 = *MEMORY[0x277D85DE8];
  v6 = COERCE_DOUBLE(flow);
  ownerCopy = owner;
  v8 = objc_autoreleasePoolPush();
  remoteAddress = [*&v6 remoteAddress];
  interfaceIndex = [*&v6 interfaceIndex];
  [*&v6 processName];
  v11 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  [(NSDate *)self->_lastFlush timeIntervalSinceNow];
  v13 = v12;
  if (v12 < -300.0)
  {
    v14 = flowLogHandle;
    if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v61 = -v13;
      _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_INFO, "RCF: Time since last flush %.3f, time to flush again", buf, 0xCu);
    }

    [(RepeatedConnFailureDetector *)self _flush];
  }

  if (![(NSSet *)self->_whitelistedDaemons containsObject:*&v11])
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@.%d", *&v11, remoteAddress, interfaceIndex];
    v17 = [(NSMutableDictionary *)self->_flowRecords objectForKeyedSubscript:v16];
    if (v17)
    {
      v18 = v17;
      [*&v6 flowStartTimeIntervalSinceReferenceDate];
      v20 = v19;
      [*&v6 flowDuration];
      v22 = v20 + v21;
      [(ConnectionFailureTracker *)v18 lastConnectionFailTime];
      v24 = v20 - v23;
      v25 = flowLogHandle;
      if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v26 = v25;
        v27 = timeStringMillisecondsFromReferenceInterval(v22);
        *buf = 138413059;
        v61 = v11;
        v62 = 2112;
        v63 = *&v27;
        v64 = 2113;
        *v65 = v16;
        *&v65[8] = 2112;
        v66 = v18;
        _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_DEBUG, "RCF: For %@ connection failing at %@ found existing tracker %{private}@ -> %@", buf, 0x2Au);
      }

      if (v24 > 2.0)
      {
        v28 = flowLogHandle;
        if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v61 = v11;
          v62 = 2048;
          v63 = v24;
          _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_INFO, "RCF: Existing failure tracker for %@, gap %.3f > allowed, clear old failure records", buf, 0x16u);
        }

        [(ConnectionFailureTracker *)v18 noteInitialSnapshot:*&v6];
        goto LABEL_41;
      }

      failedFlows = [(ConnectionFailureTracker *)v18 failedFlows];
      v32 = failedFlows;
      if (v24 >= 0.0)
      {
        v44 = [failedFlows count];

        if (v44 >= 0xA)
        {
          failedFlows2 = [(ConnectionFailureTracker *)v18 failedFlows];
          [failedFlows2 removeObjectAtIndex:0];
        }

        v46 = objc_alloc_init(ConnectionFailureInstance);
        [*&v6 flowStartTimeIntervalSinceReferenceDate];
        [(ConnectionFailureInstance *)v46 setFlowStart:?];
        [*&v6 flowDuration];
        [(ConnectionFailureInstance *)v46 setFlowDuration:?];
        failedFlows3 = [(ConnectionFailureTracker *)v18 failedFlows];
        [failedFlows3 addObject:v46];

        [(ConnectionFailureTracker *)v18 setLastConnectionFailTime:v22];
        [(ConnectionFailureTracker *)v18 setNumConsecutiveFailures:[(ConnectionFailureTracker *)v18 numConsecutiveFailures]+ 1];
        v48 = flowLogHandle;
        if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_INFO))
        {
          v49 = v48;
          numConsecutiveFailures = [(ConnectionFailureTracker *)v18 numConsecutiveFailures];
          loga = [(ConnectionFailureTracker *)v18 failedFlows];
          v50 = [loga count];
          *buf = 138413058;
          v61 = v11;
          v62 = 2112;
          v63 = *&ownerCopy;
          v64 = 1024;
          *v65 = numConsecutiveFailures;
          *&v65[4] = 1024;
          *&v65[6] = v50;
          _os_log_impl(&dword_23255B000, v49, OS_LOG_TYPE_INFO, "RCF: Existing failure tracker for %@ owner %@, count now %d, saved %d", buf, 0x22u);
        }

        if ([(ConnectionFailureTracker *)v18 numConsecutiveFailures]>= 20)
        {
          [(ConnectionFailureTracker *)v18 lastConnectionFailTime];
          v52 = v51;
          [(ConnectionFailureTracker *)v18 firstConnectionFailTime];
          if (v52 - v53 > 1200.0)
          {
            v54 = flowLogHandle;
            if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_INFO))
            {
              *buf = 138477827;
              v61 = v6;
              _os_log_impl(&dword_23255B000, v54, OS_LOG_TYPE_INFO, "RCF: Excessive failure detection triggered by snapshot %{private}@", buf, 0xCu);
            }

            [(RepeatedConnFailureDetector *)self _excessiveConnFailuresDetectedOn:v18 owner:ownerCopy];
            [(NSMutableDictionary *)self->_flowRecords removeObjectForKey:v16];
          }
        }

        goto LABEL_41;
      }

      lastObject = [failedFlows lastObject];

      v34 = flowLogHandle;
      if (!os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      log = v34;
      [lastObject flowStart];
      v56 = timeStringMillisecondsFromReferenceInterval(v35);
      [lastObject flowDuration];
      v37 = v36;
      [*&v6 flowStartTimeIntervalSinceReferenceDate];
      v39 = timeStringMillisecondsFromReferenceInterval(v38);
      [*&v6 flowDuration];
      *buf = 138413571;
      v61 = v11;
      v62 = 2112;
      v63 = *&v56;
      v64 = 2048;
      *v65 = v37;
      *&v65[8] = 2112;
      v66 = v39;
      v67 = 2048;
      v68 = v40;
      v69 = 2113;
      v70 = remoteAddress;
      v41 = log;
      _os_log_impl(&dword_23255B000, log, OS_LOG_TYPE_DEFAULT, "RCF: Apparently overlapping connection attempts from %@, %@ %.3f and %@ %.3f to %{private}@, ignore", buf, 0x3Eu);
    }

    else
    {
      if ([(NSMutableDictionary *)self->_flowRecords count]>= 0x14)
      {
        v29 = flowLogHandle;
        if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v29, OS_LOG_TYPE_INFO, "RCF: Tracking at maximum, attempt flush", buf, 2u);
        }

        [(RepeatedConnFailureDetector *)self _flush];
      }

      if ([(NSMutableDictionary *)self->_flowRecords count]>= 0x14)
      {
        v30 = flowLogHandle;
        if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v61 = v11;
          _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_INFO, "RCF: Tracking at maximum, skip creation of new failure tracker for %@", buf, 0xCu);
        }

        *&v18 = 0.0;
        goto LABEL_43;
      }

      *&v18 = COERCE_DOUBLE(objc_alloc_init(ConnectionFailureTracker));
      if (![(ConnectionFailureTracker *)v18 noteInitialSnapshot:*&v6])
      {
LABEL_43:

        goto LABEL_44;
      }

      [(NSMutableDictionary *)self->_flowRecords setObject:v18 forKeyedSubscript:v16];
      v42 = flowLogHandle;
      if (!os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEBUG))
      {
LABEL_41:
        v55 = flowLogHandle;
        if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v61 = *&v18;
          _os_log_impl(&dword_23255B000, v55, OS_LOG_TYPE_DEBUG, "RCF: failure tracker now %@", buf, 0xCu);
        }

        goto LABEL_43;
      }

      lastObject = v42;
      [(ConnectionFailureTracker *)v18 lastConnectionFailTime];
      v41 = timeStringMillisecondsFromReferenceInterval(v43);
      *buf = 138413059;
      v61 = v11;
      v62 = 2112;
      v63 = *&v41;
      v64 = 2113;
      *v65 = v16;
      *&v65[8] = 2112;
      v66 = v18;
      _os_log_impl(&dword_23255B000, lastObject, OS_LOG_TYPE_DEBUG, "RCF: For %@ connection failing at %@, create new tracker %{private}@ -> %@", buf, 0x2Au);
    }

LABEL_30:
    goto LABEL_41;
  }

  v15 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v61 = v11;
    _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_INFO, "RCF: Ignoring suspect flow from whitelisted daemon %@", buf, 0xCu);
  }

LABEL_44:

  objc_autoreleasePoolPop(v8);
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "RCF: Deallocating handler %@", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = RepeatedConnFailureDetector;
  [(RepeatedConnFailureDetector *)&v4 dealloc];
}

- (RepeatedConnFailureDetector)init
{
  v16 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = RepeatedConnFailureDetector;
  v2 = [(RepeatedConnFailureDetector *)&v13 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    flowRecords = v2->_flowRecords;
    v2->_flowRecords = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    reportDampeners = v2->_reportDampeners;
    v2->_reportDampeners = dictionary2;

    date = [MEMORY[0x277CBEAA8] date];
    lastFlush = v2->_lastFlush;
    v2->_lastFlush = date;

    v9 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"nsurlsessiond", @"mediaserverd", @"mediaplaybackd", @"audiomxd", @"airplayd", @"avconferenced", @"com.apple.WebKit", @"assistantd", @"symptomsd", 0}];
    whitelistedDaemons = v2->_whitelistedDaemons;
    v2->_whitelistedDaemons = v9;

    v11 = flowLogHandle;
    if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v2;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "RCF created handler %@", buf, 0xCu);
    }
  }

  return v2;
}

@end