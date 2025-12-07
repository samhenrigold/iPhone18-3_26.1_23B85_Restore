@interface CSProcess
- (BOOL)checkKnownViolationStartTime:(double)time endTime:(double)endTime;
- (CSProcess)initWithIdentifier:(id)identifier;
- (CSProcess)initWithIdentifier:(id)identifier andPID:(int)d;
- (double)computeEnergyDiff:(id)diff;
- (id)getPidsForCoalitionID:(unint64_t)d;
- (int)lastPid;
- (unint64_t)lastCoalitionID;
- (void)addMitigationEvent:(unsigned __int8)event startTime:(double)time;
- (void)addNewTrackedPID:(int)d;
- (void)addPenaltyBoxCoalitionID:(unint64_t)d;
- (void)addViolationEvent:(unsigned __int8)event startTime:(double)time endTime:(double)endTime;
- (void)dealloc;
- (void)incrementCPUViolationCounter:(BOOL)counter;
- (void)monitorForExitWithPID:(int)d;
- (void)performCleanupOnExitOnPID:(int)d;
- (void)removeTrackedPID:(int)d;
- (void)snapshotCPUEnergy;
@end

@implementation CSProcess

- (void)snapshotCPUEnergy
{
  v4 = [CPUEnergySnapshot snapshotCPUEnergy:[(CSProcess *)self lastCoalitionID]];
  energySnapshotNew = [(CSProcess *)self energySnapshotNew];
  [(CSProcess *)self setEnergySnapshot:energySnapshotNew];

  [(CSProcess *)self setEnergySnapshotNew:v4];
}

- (CSProcess)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v26.receiver = self;
  v26.super_class = CSProcess;
  v6 = [(CSProcess *)&v26 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
    processName = v7->_processName;
    v7->_processName = 0;

    v7->_policyBitMask = 0;
    *&v7->_rootDaemon = 0;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    exitMonitors = v7->_exitMonitors;
    v7->_exitMonitors = dictionary;

    *&v7->_cpuFatalCnt = 0;
    *&v7->_cpuNonFatalCnt = 0;
    *&v7->_issueType = -1;
    v7->_mitigationReason = -1;
    v7->_inPenaltyBox = 0;
    cpuThreshold = v7->_cpuThreshold;
    v7->_cpuThreshold = 0;

    cpuTimeWindow = v7->_cpuTimeWindow;
    v7->_cpuTimeWindow = 0;

    violationPath = v7->_violationPath;
    v7->_violationPath = 0;

    *&v7->_violationEndTime.tv_sec = 0u;
    *&v7->_violationObservationWindow = 0u;
    violationDetectorString = v7->_violationDetectorString;
    v7->_violationLimitWindow = 0;
    v7->_violationDetectorString = 0;

    *&v7->_penaltyBoxDurationMins = xmmword_243DF73E0;
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    penaltyBoxCoalitionIDs = v7->_penaltyBoxCoalitionIDs;
    v7->_penaltyBoxCoalitionIDs = dictionary2;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    previousPIDs = v7->_previousPIDs;
    v7->_previousPIDs = dictionary3;

    array = [MEMORY[0x277CBEB18] array];
    previousPIDkeys = v7->_previousPIDkeys;
    v7->_previousPIDkeys = array;

    dictionary4 = [MEMORY[0x277CBEB38] dictionary];
    trackedPIDs = v7->_trackedPIDs;
    v7->_trackedPIDs = dictionary4;

    array2 = [MEMORY[0x277CBEB18] array];
    trackedPIDkeys = v7->_trackedPIDkeys;
    v7->_trackedPIDkeys = array2;
  }

  return v7;
}

- (CSProcess)initWithIdentifier:(id)identifier andPID:(int)d
{
  v4 = *&d;
  v5 = [(CSProcess *)self initWithIdentifier:identifier];
  [(CSProcess *)v5 addNewTrackedPID:v4];
  return v5;
}

- (void)dealloc
{
  v19 = *MEMORY[0x277D85DE8];
  [(NSMutableDictionary *)self->_trackedPIDs removeAllObjects];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_exitMonitors;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v15;
    do
    {
      v9 = 0;
      v10 = v6;
      v11 = v7;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v6 = *(*(&v14 + 1) + 8 * v9);

        v7 = [(NSMutableDictionary *)self->_exitMonitors objectForKey:v6];

        if (v7)
        {
          dispatch_source_cancel(v7);
        }

        ++v9;
        v10 = v6;
        v11 = v7;
      }

      while (v5 != v9);
      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v12 = objc_autoreleasePoolPush();
  [(NSMutableDictionary *)self->_exitMonitors removeAllObjects];
  objc_autoreleasePoolPop(v12);
  v13.receiver = self;
  v13.super_class = CSProcess;
  [(CSProcess *)&v13 dealloc];
}

- (void)performCleanupOnExitOnPID:(int)d
{
  v3 = *&d;
  v5 = [MEMORY[0x277CCABB0] numberWithInt:?];
  [(CSProcess *)self incrementExitCounter];
  [(CSProcess *)self setCpuNonFatalCnt:0];
  [(CSProcess *)self removeTrackedPID:v3];
  if (![(NSMutableDictionary *)self->_trackedPIDs count])
  {
    [(CSProcess *)self setInPenaltyBox:0];
    [(CSProcess *)self setNeedClearRestrictions:1];
    [(CSProcess *)self setEnergySnapshot:0];
    [(CSProcess *)self setEnergySnapshotNew:0];
  }
}

- (void)incrementCPUViolationCounter:(BOOL)counter
{
  if (counter)
  {
    ++self->_cpuFatalCnt;
  }

  else
  {
    ++self->_cpuNonFatalCnt;
  }
}

- (void)monitorForExitWithPID:(int)d
{
  v5 = [MEMORY[0x277CCABB0] numberWithInt:?];
  v6 = [(NSMutableDictionary *)self->_exitMonitors objectForKey:v5];
  if (v6)
  {
    v7 = v6;
    v8 = processLogger(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CSProcess monitorForExitWithPID:];
    }
  }

  else
  {
    v9 = getMainQueue(0);
    v10 = dispatch_source_create(MEMORY[0x277D85D20], d, 0x80000000uLL, v9);

    if (v10)
    {
      dispatch_set_context(v10, d);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __35__CSProcess_monitorForExitWithPID___block_invoke;
      handler[3] = &unk_278DF5230;
      v12 = v10;
      v21 = v12;
      dispatch_source_set_event_handler(v12, handler);
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __35__CSProcess_monitorForExitWithPID___block_invoke_2;
      v18 = &unk_278DF5230;
      v7 = v12;
      v19 = v7;
      dispatch_source_set_cancel_handler(v7, &v15);
      [(NSMutableDictionary *)self->_exitMonitors setObject:v7 forKey:v5, v15, v16, v17, v18];
      dispatch_resume(v7);
      v14 = processLogger(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [CSProcess monitorForExitWithPID:];
      }
    }

    else
    {
      v7 = processLogger(v11);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [CSProcess monitorForExitWithPID:];
      }
    }
  }
}

void __35__CSProcess_monitorForExitWithPID___block_invoke_2(uint64_t a1)
{
  context = dispatch_get_context(*(a1 + 32));
  v2 = [CSProcessManager sharedInstanceWithEnrolledProcesses:0 andProcessPolicies:0 andBand95:0 andBand80:0];
  [v2 recordTerminationForPID:context];
}

- (double)computeEnergyDiff:(id)diff
{
  diffCopy = diff;
  v5 = [CPUEnergySnapshot snapshotCPUEnergy:[(CSProcess *)self lastCoalitionID]];
  [v5 computeEnergyDiff:diffCopy];
  v7 = v6;

  return v7;
}

- (void)addNewTrackedPID:(int)d
{
  v3 = *&d;
  v5 = [MEMORY[0x277CCABB0] numberWithLongLong:getCoalitionID(*&d)];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  [(NSMutableDictionary *)self->_trackedPIDs setObject:v5 forKey:v6];
  [(NSMutableArray *)self->_trackedPIDkeys addObject:v6];
  if ([(NSMutableArray *)self->_trackedPIDkeys count]>= 0x15)
  {
    v7 = [(NSMutableArray *)self->_trackedPIDkeys objectAtIndex:0];
    [(NSMutableArray *)self->_trackedPIDkeys removeObjectAtIndex:0];
    [(NSMutableDictionary *)self->_trackedPIDs removeObjectForKey:v7];
    v8 = [(NSMutableDictionary *)self->_exitMonitors objectForKey:v7];
    v9 = v8;
    if (v8)
    {
      dispatch_source_cancel(v8);
    }

    v10 = objc_autoreleasePoolPush();
    [(NSMutableDictionary *)self->_exitMonitors removeObjectForKey:v7];
    objc_autoreleasePoolPop(v10);
    v12 = processLogger(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [(CSProcess *)v7 addNewTrackedPID:?];
    }
  }

  [(CSProcess *)self monitorForExitWithPID:v3];
}

- (void)removeTrackedPID:(int)d
{
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*&d];
  v5 = [(NSMutableDictionary *)self->_trackedPIDs objectForKey:v4];
  [(NSMutableDictionary *)self->_trackedPIDs removeObjectForKey:v4];
  [(NSMutableDictionary *)self->_previousPIDs setObject:v5 forKey:v4];
  [(NSMutableArray *)self->_previousPIDkeys addObject:v4];
  if ([(NSMutableArray *)self->_previousPIDkeys count]>= 0x15)
  {
    v6 = [(NSMutableArray *)self->_previousPIDkeys objectAtIndex:0];
    [(NSMutableArray *)self->_previousPIDkeys removeObjectAtIndex:0];
    v7 = processLogger([(NSMutableDictionary *)self->_previousPIDs removeObjectForKey:v6]);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(CSProcess *)v6 removeTrackedPID:?];
    }
  }

  v8 = objc_autoreleasePoolPush();
  [(NSMutableDictionary *)self->_exitMonitors removeObjectForKey:v4];
  objc_autoreleasePoolPop(v8);
}

- (int)lastPid
{
  allKeys = [(NSMutableDictionary *)self->_trackedPIDs allKeys];
  v4 = [allKeys count];

  if (v4)
  {
    v5 = 88;
  }

  else
  {
    allKeys2 = [(NSMutableDictionary *)self->_previousPIDs allKeys];
    v7 = [allKeys2 count];

    if (!v7)
    {
      return 0;
    }

    v5 = 72;
  }

  lastObject = [*(&self->super.isa + v5) lastObject];
  if (lastObject)
  {
    v9 = lastObject;
    intValue = [lastObject intValue];

    return intValue;
  }

  return 0;
}

- (id)getPidsForCoalitionID:(unint64_t)d
{
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:d];
  v5 = [(NSMutableDictionary *)self->_trackedPIDs allKeysForObject:v4];
  v6 = v5;
  if (v5 && [v5 count])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)lastCoalitionID
{
  p_trackedPIDs = &self->_trackedPIDs;
  allKeys = [(NSMutableDictionary *)self->_trackedPIDs allKeys];
  v5 = [allKeys count];

  if (v5)
  {
    v6 = 88;
  }

  else
  {
    p_trackedPIDs = &self->_previousPIDs;
    allKeys2 = [(NSMutableDictionary *)self->_previousPIDs allKeys];
    v8 = [allKeys2 count];

    if (!v8)
    {
      lastObject = 0;
      goto LABEL_8;
    }

    v6 = 72;
  }

  lastObject = [*(&self->super.isa + v6) lastObject];
  v10 = [(NSMutableDictionary *)*p_trackedPIDs objectForKey:lastObject];
  if (!v10)
  {
LABEL_8:
    longLongValue = 0;
    goto LABEL_9;
  }

  v11 = v10;
  longLongValue = [v10 longLongValue];

LABEL_9:
  return longLongValue;
}

- (void)addPenaltyBoxCoalitionID:(unint64_t)d
{
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:getCurrentTime()];
  v5 = [MEMORY[0x277CCABB0] numberWithLongLong:d];
  [(NSMutableDictionary *)self->_penaltyBoxCoalitionIDs setObject:v6 forKey:v5];
}

- (void)addViolationEvent:(unsigned __int8)event startTime:(double)time endTime:(double)endTime
{
  eventCopy = event;
  v16[3] = *MEMORY[0x277D85DE8];
  if (!self->_eventHistory)
  {
    array = [MEMORY[0x277CBEB18] array];
    eventHistory = self->_eventHistory;
    self->_eventHistory = array;
  }

  v15[0] = @"StartTime";
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:time];
  v16[0] = v11;
  v15[1] = @"EndTime";
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:endTime];
  v16[1] = v12;
  v15[2] = @"ViolationType";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:eventCopy];
  v16[2] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];

  [(NSMutableArray *)self->_eventHistory addObject:v14];
}

- (BOOL)checkKnownViolationStartTime:(double)time endTime:(double)endTime
{
  v30 = *MEMORY[0x277D85DE8];
  eventHistory = self->_eventHistory;
  if (!eventHistory)
  {
    return 0;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = eventHistory;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v13 = [v12 objectForKeyedSubscript:{@"ViolationType", v25}];

        if (v13)
        {
          v14 = [v12 objectForKeyedSubscript:@"StartTime"];
          [v14 doubleValue];
          v16 = v15;

          v17 = [v12 objectForKeyedSubscript:@"EndTime"];
          [v17 doubleValue];
          v19 = v18;

          v20 = v16 >= time ? v16 : time;
          v21 = v19 >= endTime ? endTime : v19;
          if (v20 < v21 && v19 + 1200.0 > endTime)
          {
            v23 = 1;
            goto LABEL_23;
          }
        }
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v23 = 0;
LABEL_23:

  return v23;
}

- (void)addMitigationEvent:(unsigned __int8)event startTime:(double)time
{
  eventCopy = event;
  v13[2] = *MEMORY[0x277D85DE8];
  if (!self->_eventHistory)
  {
    array = [MEMORY[0x277CBEB18] array];
    eventHistory = self->_eventHistory;
    self->_eventHistory = array;
  }

  v12[0] = @"StartTime";
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:time];
  v12[1] = @"MitigationType";
  v13[0] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:eventCopy];
  v13[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  [(NSMutableArray *)self->_eventHistory addObject:v11];
}

- (void)monitorForExitWithPID:.cold.2()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(&dword_243DC3000, v0, OS_LOG_TYPE_DEBUG, "monitorForExitWithPID: Started monitoring process %@ (%d) for exit.", v1, 0x12u);
}

- (void)addNewTrackedPID:(void *)a1 .cold.1(void *a1, void *a2)
{
  [a1 intValue];
  v3 = [a2 processName];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_1(&dword_243DC3000, v4, v5, "addNewTrackedPID: Too many pids (> %d) so remove tracked pid %d from process %@", v6, v7, v8, v9);
}

- (void)removeTrackedPID:(void *)a1 .cold.1(void *a1, void *a2)
{
  [a1 intValue];
  v3 = [a2 processName];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_1(&dword_243DC3000, v4, v5, "removeTrackedPID: Too many pids (> %d) so remove previous pid %d from process %@", v6, v7, v8, v9);
}

@end