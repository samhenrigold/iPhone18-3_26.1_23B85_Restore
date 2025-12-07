@interface CSCPUTimeRestriction
- (BOOL)isEqual:(id)equal;
- (CSCPUTimeRestriction)initWithThreshold:(id)threshold andTimeWindow:(id)window;
- (CSCPUTimeRestriction)initWithThreshold:(id)threshold andTimeWindow:(id)window andFatal:(BOOL)fatal;
- (id)getProperties;
- (int)applyToProcess:(id)process;
- (int)releaseForProcess:(id)process;
@end

@implementation CSCPUTimeRestriction

- (CSCPUTimeRestriction)initWithThreshold:(id)threshold andTimeWindow:(id)window
{
  thresholdCopy = threshold;
  windowCopy = window;
  cpuThreshold = self->_cpuThreshold;
  self->_cpuThreshold = thresholdCopy;
  v9 = thresholdCopy;

  timeWindow = self->_timeWindow;
  self->_timeWindow = windowCopy;

  self->_fatalMitigation = 1;
  return self;
}

- (CSCPUTimeRestriction)initWithThreshold:(id)threshold andTimeWindow:(id)window andFatal:(BOOL)fatal
{
  result = [(CSCPUTimeRestriction *)self initWithThreshold:threshold andTimeWindow:window];
  result->_fatalMitigation = fatal;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      cpuThreshold = self->_cpuThreshold;
      cpuThreshold = [(CSCPUTimeRestriction *)equalCopy cpuThreshold];
      if (cpuThreshold == cpuThreshold)
      {
        timeWindow = self->_timeWindow;
        timeWindow = [(CSCPUTimeRestriction *)equalCopy timeWindow];
        if (timeWindow == timeWindow)
        {
          fatalMitigation = self->_fatalMitigation;
          v7 = fatalMitigation == [(CSCPUTimeRestriction *)equalCopy fatalMitigation];
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (int)applyToProcess:(id)process
{
  v43 = *MEMORY[0x277D85DE8];
  processCopy = process;
  v4 = processCopy;
  if (processCopy)
  {
    trackedPIDs = [processCopy trackedPIDs];
    v6 = [trackedPIDs count];

    if (!v6)
    {
      v7 = +[CSLogger defaultCategory];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(CSCPUTimeRestriction *)v4 applyToProcess:v7];
      }
    }

    cpuThreshold = [v4 cpuThreshold];
    cpuTimeWindow = [v4 cpuTimeWindow];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = [v4 trackedPIDs];
    v10 = [obj countByEnumeratingWithState:&v33 objects:v42 count:16];
    if (v10)
    {
      v11 = v10;
      v32 = v4;
      v12 = 0;
      v13 = *v34;
      do
      {
        v14 = 0;
        v15 = v12;
        do
        {
          if (*v34 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v33 + 1) + 8 * v14);

          intValue = [v12 intValue];
          v17 = +[CSLogger defaultCategory];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            identifier = [v32 identifier];
            *buf = 138413058;
            *v38 = cpuThreshold;
            *&v38[8] = 2112;
            *&v38[10] = cpuTimeWindow;
            *&v38[18] = 2112;
            v39 = identifier;
            v40 = 1024;
            v41 = intValue;
            _os_log_impl(&dword_243DC3000, v17, OS_LOG_TYPE_DEFAULT, "applyToProcess: Configuring cpuMonitor with cpuThreshold: %@, timeWindow:%@ for process:%@ (%d)", buf, 0x26u);
          }

          [cpuThreshold floatValue];
          v20 = v19;
          [cpuTimeWindow floatValue];
          LODWORD(v22) = v21;
          LODWORD(v23) = v20;
          v24 = [CSCPUMonitorHelper setThreshold:intValue overTimeWindow:0 forPID:v23 withFatalEffect:v22];
          if (v24)
          {
            v25 = v24;
            v26 = +[CSLogger defaultCategory];
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              identifier2 = [v32 identifier];
              *buf = 67109634;
              *v38 = v25;
              *&v38[4] = 2112;
              *&v38[6] = identifier2;
              v28 = identifier2;
              *&v38[14] = 1024;
              *&v38[16] = intValue;
              _os_log_error_impl(&dword_243DC3000, v26, OS_LOG_TYPE_ERROR, "applyToProcess: Failed %d to apply thresholds on process:%@ (%d)", buf, 0x18u);
            }
          }

          ++v14;
          v15 = v12;
        }

        while (v11 != v14);
        v11 = [obj countByEnumeratingWithState:&v33 objects:v42 count:16];
      }

      while (v11);

      v4 = v32;
    }

    [v4 setCpuMonitored:1];
    v29 = 0;
  }

  else
  {
    cpuThreshold = +[CSLogger defaultCategory];
    if (os_log_type_enabled(cpuThreshold, OS_LOG_TYPE_ERROR))
    {
      [CSCPUTimeRestriction applyToProcess:cpuThreshold];
    }

    v29 = 2;
  }

  return v29;
}

- (int)releaseForProcess:(id)process
{
  v28 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  processCopy = process;
  trackedPIDs = [processCopy trackedPIDs];
  v4 = [trackedPIDs countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v18;
    do
    {
      v8 = 0;
      v9 = v6;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(trackedPIDs);
        }

        v6 = *(*(&v17 + 1) + 8 * v8);

        v10 = +[CSCPUMonitorHelper clearMonitorForPID:](CSCPUMonitorHelper, "clearMonitorForPID:", [v6 intValue]);
        if (v10)
        {
          v11 = v10;
          v12 = +[CSLogger defaultCategory];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            identifier = [processCopy identifier];
            intValue = [v6 intValue];
            *buf = 67109634;
            v22 = v11;
            v23 = 2112;
            v24 = identifier;
            v25 = 1024;
            v26 = intValue;
            _os_log_error_impl(&dword_243DC3000, v12, OS_LOG_TYPE_ERROR, "releaseForProcess: clearMonitorForPID failed %d on process:%@ (%d)", buf, 0x18u);
          }
        }

        ++v8;
        v9 = v6;
      }

      while (v5 != v8);
      v5 = [trackedPIDs countByEnumeratingWithState:&v17 objects:v27 count:16];
    }

    while (v5);
  }

  [processCopy setCpuMonitored:0];
  return 0;
}

- (id)getProperties
{
  v8[3] = *MEMORY[0x277D85DE8];
  v8[0] = self->_timeWindow;
  v7[0] = @"TimeWindow";
  v7[1] = @"Fatal";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:self->_fatalMitigation];
  v7[2] = @"Threshold";
  cpuThreshold = self->_cpuThreshold;
  v8[1] = v3;
  v8[2] = cpuThreshold;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

- (void)applyToProcess:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 identifier];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_243DC3000, a2, OS_LOG_TYPE_ERROR, "applyToProcess: Attempted applying thresholds on process:%@ with no current tracked pids", &v4, 0xCu);
}

@end