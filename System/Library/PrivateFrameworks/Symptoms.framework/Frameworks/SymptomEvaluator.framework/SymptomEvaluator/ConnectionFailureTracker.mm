@interface ConnectionFailureTracker
- (BOOL)noteInitialSnapshot:(id)snapshot;
- (id)description;
- (void)_logFailure;
- (void)_reportFailure:(unint64_t)failure owner:(id)owner;
@end

@implementation ConnectionFailureTracker

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  processName = [(ConnectionFailureTracker *)self processName];
  ifIndex = [(ConnectionFailureTracker *)self ifIndex];
  [(ConnectionFailureTracker *)self lastConnectionFailTime];
  v7 = timeStringMillisecondsFromReferenceInterval(v6);
  numConsecutiveFailures = [(ConnectionFailureTracker *)self numConsecutiveFailures];
  failedFlows = [(ConnectionFailureTracker *)self failedFlows];
  v10 = [v3 stringWithFormat:@"ConnectionFailureTracker for %@ on ifIndex %d last fail at %@, cumulative %d  failures %@", processName, ifIndex, v7, numConsecutiveFailures, failedFlows];

  return v10;
}

- (void)_logFailure
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_ERROR))
  {
    v4 = v3;
    if ([(ConnectionFailureTracker *)self isIPv6])
    {
      v5 = "6";
    }

    else
    {
      v5 = "4";
    }

    processName = [(ConnectionFailureTracker *)self processName];
    ifIndex = [(ConnectionFailureTracker *)self ifIndex];
    numConsecutiveFailures = [(ConnectionFailureTracker *)self numConsecutiveFailures];
    [(ConnectionFailureTracker *)self firstConnectionFailTime];
    v10 = timeStringMillisecondsFromReferenceInterval(v9);
    failedFlows = [(ConnectionFailureTracker *)self failedFlows];
    *buf = 136316418;
    v34 = v5;
    v35 = 2112;
    v36 = processName;
    v37 = 1024;
    *v38 = ifIndex;
    *&v38[4] = 1024;
    *&v38[6] = numConsecutiveFailures;
    v39 = 2112;
    v40 = v10;
    v41 = 1024;
    v42 = [failedFlows count];
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_ERROR, "RCF: Repeated TCPv%s connection failures seen from %@ on interface index %d, total %d starting at %@, last %d are:", buf, 0x32u);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  failedFlows2 = [(ConnectionFailureTracker *)self failedFlows];
  v13 = [failedFlows2 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v29;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(failedFlows2);
        }

        v17 = flowLogHandle;
        if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_ERROR))
        {
          v18 = *(*(&v28 + 1) + 8 * i);
          v19 = v17;
          [v18 flowStart];
          v21 = timeStringMillisecondsFromReferenceInterval(v20);
          [v18 flowDuration];
          v23 = v22;
          [v18 flowStart];
          v25 = v24;
          [v18 flowDuration];
          v27 = timeStringMillisecondsFromReferenceInterval(v25 + v26);
          *buf = 138412802;
          v34 = v21;
          v35 = 2048;
          v36 = v23;
          v37 = 2112;
          *v38 = v27;
          _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_ERROR, "RCF:   Connection failure:  flow start %@  duration %.3f  end %@", buf, 0x20u);
        }
      }

      v14 = [failedFlows2 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v14);
  }
}

- (void)_reportFailure:(unint64_t)failure owner:(id)owner
{
  v23 = *MEMORY[0x277D85DE8];
  ownerCopy = owner;
  v7 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_ERROR))
  {
    v8 = v7;
    if ([(ConnectionFailureTracker *)self isIPv6])
    {
      v9 = "6";
    }

    else
    {
      v9 = "4";
    }

    processName = [(ConnectionFailureTracker *)self processName];
    v15 = 136315906;
    v16 = v9;
    v17 = 2112;
    v18 = processName;
    v19 = 1024;
    ifIndex = [(ConnectionFailureTracker *)self ifIndex];
    v21 = 2048;
    failureCopy = failure;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "RCF: Report repeated TCPv%s connection failures from %@ on interface index %d, suppressed reports %lld", &v15, 0x26u);
  }

  [(ConnectionFailureTracker *)self lastConnectionFailTime];
  [(ConnectionFailureTracker *)self firstConnectionFailTime];
  internal_symptom_new(405520);
  processName2 = [(ConnectionFailureTracker *)self processName];
  uTF8String = [processName2 UTF8String];

  strlen(uTF8String);
  internal_symptom_set_additional_qualifier();
  if (ownerCopy)
  {
    processName3 = [(ConnectionFailureTracker *)self processName];
    v14 = [ownerCopy isEqualToString:processName3];

    if ((v14 & 1) == 0)
    {
      strlen([ownerCopy UTF8String]);
      internal_symptom_set_additional_qualifier();
    }
  }

  internal_symptom_set_qualifier();
  internal_symptom_set_qualifier();
  internal_symptom_set_qualifier();
  [(ConnectionFailureTracker *)self ifIndex];
  internal_symptom_set_qualifier();
  [(ConnectionFailureTracker *)self ifType];
  internal_symptom_set_qualifier();
  [(ConnectionFailureTracker *)self isIPv6];
  internal_symptom_set_qualifier();
  internal_symptom_send();
}

- (BOOL)noteInitialSnapshot:(id)snapshot
{
  v26 = *MEMORY[0x277D85DE8];
  snapshotCopy = snapshot;
  v5 = objc_alloc_init(ConnectionFailureInstance);
  [snapshotCopy flowStartTimeIntervalSinceReferenceDate];
  [(ConnectionFailureInstance *)v5 setFlowStart:?];
  [snapshotCopy flowDuration];
  [(ConnectionFailureInstance *)v5 setFlowDuration:?];
  failedFlows = [(ConnectionFailureTracker *)self failedFlows];

  if (!failedFlows)
  {
    array = [MEMORY[0x277CBEB18] array];
    [(ConnectionFailureTracker *)self setFailedFlows:array];

    processName = [snapshotCopy processName];
    [(ConnectionFailureTracker *)self setProcessName:processName];

    -[ConnectionFailureTracker setIfIndex:](self, "setIfIndex:", [snapshotCopy interfaceIndex]);
    remoteAddress = [snapshotCopy remoteAddress];
    bytes = [remoteAddress bytes];

    if (bytes)
    {
      v17 = *(bytes + 1);
      if (v17 == 2)
      {
        v18 = 0;
LABEL_14:
        [(ConnectionFailureTracker *)self setIsIPv6:v18];
        if ([snapshotCopy interfaceCellular])
        {
          selfCopy3 = self;
          v23 = 2;
LABEL_20:
          [(ConnectionFailureTracker *)selfCopy3 setIfType:v23];
          goto LABEL_3;
        }

        if ([snapshotCopy interfaceWiFi])
        {
          selfCopy3 = self;
          v23 = 1;
          goto LABEL_20;
        }

        if ([snapshotCopy interfaceWired])
        {
          selfCopy3 = self;
          v23 = 3;
          goto LABEL_20;
        }

        v19 = flowLogHandle;
        if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_ERROR))
        {
          v24 = 138477827;
          v25 = snapshotCopy;
          v20 = "RCF: Can't derive interface type  from %{private}@";
          goto LABEL_10;
        }

        goto LABEL_11;
      }

      if (v17 == 30)
      {
        v18 = 1;
        goto LABEL_14;
      }
    }

    v19 = flowLogHandle;
    if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_ERROR))
    {
      v24 = 138477827;
      v25 = snapshotCopy;
      v20 = "RCF: Unknown address family in %{private}@";
LABEL_10:
      _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_ERROR, v20, &v24, 0xCu);
    }

LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  failedFlows2 = [(ConnectionFailureTracker *)self failedFlows];
  [failedFlows2 removeAllObjects];

LABEL_3:
  failedFlows3 = [(ConnectionFailureTracker *)self failedFlows];
  [failedFlows3 addObject:v5];

  v9 = 1;
  [(ConnectionFailureTracker *)self setNumConsecutiveFailures:1];
  [(ConnectionFailureInstance *)v5 flowStart];
  v11 = v10;
  [(ConnectionFailureInstance *)v5 flowDuration];
  [(ConnectionFailureTracker *)self setFirstConnectionFailTime:v11 + v12];
  [(ConnectionFailureTracker *)self firstConnectionFailTime];
  [(ConnectionFailureTracker *)self setLastConnectionFailTime:?];
LABEL_12:

  return v9;
}

@end