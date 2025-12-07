@interface PLDiscretionaryInterval
- (BOOL)isClosed;
- (PLDiscretionaryInterval)initWithIdentifier:(id)identifier andInfo:(id)info andSnapshottingEnabled:(BOOL)enabled andMockData:(id)data;
- (double)checkOpenIntervalDuration:(id)duration;
- (id)description;
- (void)closeInterval;
@end

@implementation PLDiscretionaryInterval

- (PLDiscretionaryInterval)initWithIdentifier:(id)identifier andInfo:(id)info andSnapshottingEnabled:(BOOL)enabled andMockData:(id)data
{
  identifierCopy = identifier;
  infoCopy = info;
  dataCopy = data;
  v19.receiver = self;
  v19.super_class = PLDiscretionaryInterval;
  v13 = [(PLDiscretionaryInterval *)&v19 init];
  if (v13)
  {
    date = [MEMORY[0x1E695DF00] date];
    [(PLDiscretionaryInterval *)v13 setOriginalStartDate:date];

    originalStartDate = [(PLDiscretionaryInterval *)v13 originalStartDate];
    [(PLDiscretionaryInterval *)v13 setCurrentStartDate:originalStartDate];

    [(PLDiscretionaryInterval *)v13 setOpenCount:1.0];
    v16 = [(PLDiscretionaryInterval *)v13 setStartCount:1.0];
    if (enabled)
    {
      if ([identifierCopy isEqualToString:@"discretionaryNetworkTasks"])
      {
        v17 = [[PLNetworkUsageSnapshot alloc] initWithInfo:infoCopy];
        [(PLDiscretionaryInterval *)v13 setNetworkEnergySnapshot:v17];
      }

      else
      {
        v17 = [[PLCPUEnergySnapshot alloc] initWithIdentifier:identifierCopy andMockData:dataCopy];
        [(PLDiscretionaryInterval *)v13 setCpuEnergySnapshot:v17];
      }
    }

    else
    {
      v17 = PLLogDiscretionaryEnergyMonitor(v16);
      if (os_log_type_enabled(&v17->super, OS_LOG_TYPE_DEBUG))
      {
        [PLDiscretionaryInterval initWithIdentifier:andInfo:andSnapshottingEnabled:andMockData:];
      }
    }
  }

  return v13;
}

- (BOOL)isClosed
{
  endDate = [(PLDiscretionaryInterval *)self endDate];
  v3 = endDate != 0;

  return v3;
}

- (void)closeInterval
{
  [self openCount];
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (double)checkOpenIntervalDuration:(id)duration
{
  v22 = *MEMORY[0x1E69E9840];
  durationCopy = duration;
  isClosed = [(PLDiscretionaryInterval *)self isClosed];
  if (isClosed)
  {
    date = PLLogDiscretionaryEnergyMonitor(isClosed);
    v7 = 0.0;
    if (os_log_type_enabled(date, OS_LOG_TYPE_ERROR))
    {
      [PLDiscretionaryInterval checkOpenIntervalDuration:];
    }
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
    originalStartDate = [(PLDiscretionaryInterval *)self originalStartDate];
    [date timeIntervalSinceDate:originalStartDate];
    v7 = v9;

    v11 = PLLogDiscretionaryEnergyMonitor(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      originalStartDate2 = [(PLDiscretionaryInterval *)self originalStartDate];
      v16 = 134218498;
      v17 = v7;
      v18 = 2112;
      selfCopy = date;
      v20 = 2112;
      v21 = originalStartDate2;
      _os_log_debug_impl(&dword_1BACB7000, v11, OS_LOG_TYPE_DEBUG, "timeSinceIntervalStart=%f, now=%@, intervalStartDate=%@", &v16, 0x20u);
    }

    if (v7 > 600.0)
    {
      v13 = PLLogDiscretionaryEnergyMonitor(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v16 = 134218498;
        v17 = v7;
        v18 = 2112;
        selfCopy = self;
        v20 = 2112;
        v21 = durationCopy;
        _os_log_error_impl(&dword_1BACB7000, v13, OS_LOG_TYPE_ERROR, "Interval open for %f seconds, potential unclosed interval=%@ for identifier=%@", &v16, 0x20u);
      }
    }
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  originalStartDate = [(PLDiscretionaryInterval *)self originalStartDate];
  currentStartDate = [(PLDiscretionaryInterval *)self currentStartDate];
  endDate = [(PLDiscretionaryInterval *)self endDate];
  cpuEnergySnapshot = [(PLDiscretionaryInterval *)self cpuEnergySnapshot];
  networkEnergySnapshot = [(PLDiscretionaryInterval *)self networkEnergySnapshot];
  [(PLDiscretionaryInterval *)self openCount];
  v10 = v9;
  [(PLDiscretionaryInterval *)self startCount];
  v12 = [v3 stringWithFormat:@"originalStartDate=%@, currentStartDate=%@, endDate=%@, cpuEnergySnapshot=%@, networkEnergySnapshot=%@, openCount=%f, startCount=%f", originalStartDate, currentStartDate, endDate, cpuEnergySnapshot, networkEnergySnapshot, v10, v11];

  return v12;
}

- (void)initWithIdentifier:andInfo:andSnapshottingEnabled:andMockData:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)checkOpenIntervalDuration:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end