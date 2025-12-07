@interface PCMultiStageGrowthAlgorithm
+ (void)_loadDefaultValue:(double *)value forKey:(__CFString *)key;
+ (void)_loadDefaults;
- (BOOL)useIntervalIfImprovement:(double)improvement;
- (NSDictionary)cacheInfo;
- (NSString)description;
- (PCMultiStageGrowthAlgorithm)initWithCacheInfo:(id)info loggingIdentifier:(id)identifier algorithmName:(id)name;
- (_PCTimeRange)signalAvoidanceRange;
- (double)_steadyStateTimeout;
- (double)maximumKeepAliveInterval;
- (double)minimumKeepAliveInterval;
- (id)_stringForAction:(int)action;
- (id)_stringForMode:(int)mode;
- (id)_stringForStage:(int)stage;
- (void)_adjustGrowthAlgorithmMode;
- (void)_fallbackToLastSuccessfulKeepAliveInterval;
- (void)_processBackoffAction:(int)action;
- (void)_processInitialGrowthAction:(int)action;
- (void)_processInitialShrinkAction:(int)action;
- (void)_processMinimumIntervalFallbackStateAction:(int)action;
- (void)_processRefinedGrowthAction:(int)action;
- (void)_processRefinedShrinkAction:(int)action;
- (void)_processSteadyStateAction:(int)action;
- (void)_resetAlgorithmToInterval:(double)interval stage:(int)stage;
- (void)_setCurrentKeepAliveInterval:(double)interval varianceMode:(unsigned int)mode allowRoundUp:(BOOL)up;
- (void)processNextAction:(int)action;
- (void)setLastSuccessfulKeepAliveInterval:(double)interval;
- (void)setMaximumKeepAliveInterval:(double)interval;
- (void)setMinimumIntervalFallbackEnabled:(BOOL)enabled;
- (void)setMinimumKeepAliveInterval:(double)interval;
@end

@implementation PCMultiStageGrowthAlgorithm

- (PCMultiStageGrowthAlgorithm)initWithCacheInfo:(id)info loggingIdentifier:(id)identifier algorithmName:(id)name
{
  v33 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  identifierCopy = identifier;
  nameCopy = name;
  +[PCMultiStageGrowthAlgorithm _loadDefaults];
  v26.receiver = self;
  v26.super_class = PCMultiStageGrowthAlgorithm;
  v11 = [(PCMultiStageGrowthAlgorithm *)&v26 init];
  if (v11)
  {
    identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"multiStateGrowth.%@", identifierCopy];
    v13 = +[PCLog logWithCategory:](PCLog, "logWithCategory:", [identifierCopy UTF8String]);
    v14 = *(v11 + 15);
    *(v11 + 15) = v13;

    v15 = [nameCopy copy];
    v16 = *(v11 + 13);
    *(v11 + 13) = v15;

    v17 = PCDefaultMaximumKeepAliveInterval;
    *(v11 + 2) = PCDefaultMinimumKeepAliveInterval;
    *(v11 + 3) = v17;
    *(v11 + 45) = 0;
    *(v11 + 18) = 0;
    *(v11 + 19) = 0;
    *(v11 + 20) = 0;
    *(v11 + 21) = 0x40F5180000000000;
    if (infoCopy)
    {
      v18 = [infoCopy objectForKey:@"keepAliveInterval"];
      [v18 doubleValue];
      v20 = v19;

      v21 = [infoCopy objectForKey:@"inInitialGrowth"];
      bOOLValue = [v21 BOOLValue];

      v23 = *(v11 + 15);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = @"NO";
        *buf = 134218498;
        v28 = v20;
        v29 = 2114;
        if (bOOLValue)
        {
          v24 = @"YES";
        }

        v30 = v24;
        v31 = 2114;
        v32 = infoCopy;
        _os_log_impl(&dword_25E3EF000, v23, OS_LOG_TYPE_DEFAULT, "Using cached keep alive interval of %g seconds inInitialGrowth? %{public}@ from [%{public}@]", buf, 0x20u);
      }

      if (bOOLValue)
      {
        [v11 _resetAlgorithmToInterval:0 stage:v20];
LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
      v20 = 0.0;
    }

    [v11 _resetAlgorithmToInterval:v20];
    goto LABEL_11;
  }

LABEL_12:

  return v11;
}

- (double)maximumKeepAliveInterval
{
  result = self->_serverStatsMaxKeepAliveInterval;
  if (result <= 0.0)
  {
    return self->_maximumKeepAliveInterval;
  }

  return result;
}

- (double)minimumKeepAliveInterval
{
  result = self->_serverStatsMinKeepAliveInterval;
  if (result <= 0.0)
  {
    return self->_minimumKeepAliveInterval;
  }

  return result;
}

- (void)setMaximumKeepAliveInterval:(double)interval
{
  self->_maximumKeepAliveInterval = interval;
  [(PCMultiStageGrowthAlgorithm *)self minimumKeepAliveInterval];
  if (v5 > interval)
  {
    [(PCMultiStageGrowthAlgorithm *)self setMinimumKeepAliveInterval:interval];
  }

  [(PCMultiStageGrowthAlgorithm *)self currentKeepAliveInterval];

  [(PCMultiStageGrowthAlgorithm *)self _setCurrentKeepAliveInterval:0 varianceMode:?];
}

- (void)setMinimumKeepAliveInterval:(double)interval
{
  self->_minimumKeepAliveInterval = interval;
  [(PCMultiStageGrowthAlgorithm *)self maximumKeepAliveInterval];
  if (v5 < interval)
  {
    [(PCMultiStageGrowthAlgorithm *)self setMaximumKeepAliveInterval:interval];
  }

  [(PCMultiStageGrowthAlgorithm *)self currentKeepAliveInterval];

  [(PCMultiStageGrowthAlgorithm *)self _setCurrentKeepAliveInterval:0 varianceMode:?];
}

- (void)_setCurrentKeepAliveInterval:(double)interval varianceMode:(unsigned int)mode allowRoundUp:(BOOL)up
{
  upCopy = up;
  v45 = *MEMORY[0x277D85DE8];
  if (interval <= 0.0)
  {
    intervalCopy = *&PCDefaultInitialKeepAliveInterval;
  }

  else
  {
    intervalCopy = interval;
  }

  [(PCMultiStageGrowthAlgorithm *)self minimumKeepAliveInterval];
  if (intervalCopy < v9)
  {
    [(PCMultiStageGrowthAlgorithm *)self minimumKeepAliveInterval];
LABEL_8:
    intervalCopy = v10;
    mode = 0;
    goto LABEL_9;
  }

  [(PCMultiStageGrowthAlgorithm *)self maximumKeepAliveInterval];
  if (intervalCopy > v11)
  {
    [(PCMultiStageGrowthAlgorithm *)self maximumKeepAliveInterval];
    goto LABEL_8;
  }

LABEL_9:
  duration = self->_signalAvoidanceRange.duration;
  if (duration == 0.0 || ((v13 = self->_signalAvoidanceRange.start, v14 = v13 + duration, v13 != 0.0) ? (v15 = v13 < intervalCopy) : (v15 = 0), v15 ? (v16 = v14 <= intervalCopy) : (v16 = 1), v16))
  {
    start = intervalCopy;
  }

  else
  {
    growthStage = self->_growthStage;
    v23 = 0.5;
    if (growthStage <= 6)
    {
      v23 = dbl_25E416230[growthStage];
    }

    if (upCopy)
    {
      currentKeepAliveInterval = self->_currentKeepAliveInterval;
      v25 = (intervalCopy - v13) / duration;
      if (intervalCopy <= currentKeepAliveInterval)
      {
        if (v25 <= v23)
        {
          start = self->_signalAvoidanceRange.start;
        }

        else
        {
          if (v14 >= currentKeepAliveInterval)
          {
            v27 = self->_currentKeepAliveInterval;
          }

          else
          {
            v27 = v14;
          }

          if (v14 == currentKeepAliveInterval)
          {
            start = self->_signalAvoidanceRange.start;
          }

          else
          {
            start = v27;
          }
        }
      }

      else
      {
        start = v14;
        if (v25 <= v23)
        {
          v26 = v13 == currentKeepAliveInterval;
          if (v13 < currentKeepAliveInterval)
          {
            v13 = self->_currentKeepAliveInterval;
          }

          if (v26)
          {
            start = v14;
          }

          else
          {
            start = v13;
          }
        }
      }

      [(PCMultiStageGrowthAlgorithm *)self maximumKeepAliveInterval];
      if (start <= v28)
      {
        [(PCMultiStageGrowthAlgorithm *)self minimumKeepAliveInterval];
        if (start < v29)
        {
          start = v14;
        }
      }

      else
      {
        start = self->_signalAvoidanceRange.start;
      }
    }

    else
    {
      start = self->_signalAvoidanceRange.start;
    }

    logObject = self->_logObject;
    if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
    {
      v31 = self->_signalAvoidanceRange.start;
      v32 = self->_signalAvoidanceRange.duration;
      v33 = 138413570;
      selfCopy = self;
      v35 = 2048;
      v36 = intervalCopy;
      v37 = 2048;
      v38 = start;
      v39 = 2048;
      v40 = v31;
      v41 = 2048;
      v42 = v32;
      v43 = 2048;
      v44 = v23;
      _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%@: triggered signaling avoidance {interval: %g, adjustedInterval: %g, _signalAvoidanceRange.start: %g, _signalAvoidanceRange.duration: %g, roundUpRatio: %g}", &v33, 0x3Eu);
    }
  }

  if (mode == 2)
  {
    v19 = arc4random();
    start = start - -(*&PCIncrementRandomVariance - (v19 / 4294967300.0 + v19 / 4294967300.0) * *&PCIncrementRandomVariance);
  }

  else if (mode == 1)
  {
    v18 = arc4random();
    start = start - (*&PCIncrementRandomVariance - (v18 / 4294967300.0 + v18 / 4294967300.0) * *&PCIncrementRandomVariance);
  }

  if (self->_currentKeepAliveInterval != start)
  {
    v20 = self->_logObject;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      algorithmName = self->_algorithmName;
      v33 = 138543618;
      selfCopy = algorithmName;
      v35 = 2048;
      v36 = start;
      _os_log_impl(&dword_25E3EF000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: setting current interval to %g seconds", &v33, 0x16u);
    }

    self->_lastKeepAliveInterval = self->_currentKeepAliveInterval;
    self->_currentKeepAliveInterval = start;
  }
}

- (void)setLastSuccessfulKeepAliveInterval:(double)interval
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_lastSuccessfulKeepAliveInterval != interval)
  {
    logObject = self->_logObject;
    if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
    {
      algorithmName = self->_algorithmName;
      v7 = 138543618;
      v8 = algorithmName;
      v9 = 2048;
      intervalCopy = interval;
      _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%{public}@: setting lastSuccessfulKeepAliveInterval to %g seconds", &v7, 0x16u);
    }

    self->_lastSuccessfulKeepAliveInterval = interval;
  }
}

- (void)_fallbackToLastSuccessfulKeepAliveInterval
{
  lastSuccessfulKeepAliveInterval = self->_lastSuccessfulKeepAliveInterval;
  if (lastSuccessfulKeepAliveInterval > 2.22044605e-16 && lastSuccessfulKeepAliveInterval < self->_currentKeepAliveInterval)
  {
    [(PCMultiStageGrowthAlgorithm *)self _setCurrentKeepAliveInterval:0 varianceMode:?];
  }
}

- (void)setMinimumIntervalFallbackEnabled:(BOOL)enabled
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_minimumIntervalFallbackEnabled != enabled)
  {
    enabledCopy = enabled;
    self->_minimumIntervalFallbackEnabled = enabled;
    logObject = self->_logObject;
    if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (enabledCopy)
      {
        v6 = @"YES";
      }

      v8 = 138412546;
      selfCopy = self;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%@ minimumIntervalFallbackEnabled changed to %@", &v8, 0x16u);
    }

    if (!self->_minimumIntervalFallbackEnabled)
    {
      leaveMinimumIntervalFallbackStateDate = self->_leaveMinimumIntervalFallbackStateDate;
      if (leaveMinimumIntervalFallbackStateDate)
      {
        self->_leaveMinimumIntervalFallbackStateDate = 0;
      }
    }
  }
}

- (BOOL)useIntervalIfImprovement:(double)improvement
{
  v20 = *MEMORY[0x277D85DE8];
  logObject = self->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    lastKeepAliveInterval = self->_lastKeepAliveInterval;
    currentKeepAliveInterval = self->_currentKeepAliveInterval;
    v12 = 138544130;
    selfCopy = self;
    v14 = 2048;
    improvementCopy = improvement;
    v16 = 2048;
    v17 = lastKeepAliveInterval;
    v18 = 2048;
    v19 = currentKeepAliveInterval;
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%{public}@: useIntervalIfImprovement %f   lastKeepAliveInterval: %f  currentKeepAliveInterval: %f", &v12, 0x2Au);
  }

  v8 = self->_lastKeepAliveInterval;
  if (v8 >= self->_currentKeepAliveInterval || v8 <= 2.22044605e-16)
  {
    v10 = self->_currentKeepAliveInterval;
  }

  else
  {
    v10 = self->_lastKeepAliveInterval;
  }

  if (v10 < improvement)
  {
    [(PCMultiStageGrowthAlgorithm *)self _setCurrentKeepAliveInterval:0 varianceMode:0 allowRoundUp:improvement];
  }

  return v10 < improvement;
}

- (NSDictionary)cacheInfo
{
  v3 = objc_alloc(MEMORY[0x277CBEAC0]);
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_currentKeepAliveInterval];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_growthStage == 0];
  date = [MEMORY[0x277CBEAA8] date];
  v7 = [v3 initWithObjectsAndKeys:{v4, @"keepAliveInterval", v5, @"inInitialGrowth", date, @"cacheDate", 0}];

  return v7;
}

- (void)_adjustGrowthAlgorithmMode
{
  v16 = *MEMORY[0x277D85DE8];
  lastKeepAliveAlgorithmMode = self->_lastKeepAliveAlgorithmMode;
  if (lastKeepAliveAlgorithmMode == 2)
  {
    if (self->_serverStatsExpectedKeepAliveInterval >= 2.22044605e-16)
    {
      if (self->_usingServerStatsAggressively)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }

    goto LABEL_13;
  }

  if (lastKeepAliveAlgorithmMode == 1)
  {
    if (self->_usingServerStatsAggressively)
    {
      goto LABEL_8;
    }

    if (self->_serverStatsExpectedKeepAliveInterval >= 2.22044605e-16)
    {
      goto LABEL_15;
    }

LABEL_13:
    v4 = 0;
    goto LABEL_14;
  }

  if (lastKeepAliveAlgorithmMode)
  {
    goto LABEL_15;
  }

  if (!self->_usingServerStatsAggressively)
  {
    if (self->_serverStatsExpectedKeepAliveInterval <= 2.22044605e-16)
    {
      goto LABEL_15;
    }

    [(PCMultiStageGrowthAlgorithm *)self _resetAlgorithmToInterval:2 stage:?];
LABEL_11:
    v4 = 1;
    goto LABEL_14;
  }

LABEL_8:
  [(PCMultiStageGrowthAlgorithm *)self _resetAlgorithmToInterval:5 stage:self->_serverStatsMaxKeepAliveInterval];
  v4 = 2;
LABEL_14:
  self->_currentKeepAliveAlgorithmMode = v4;
LABEL_15:
  logObject = self->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = self->_lastKeepAliveAlgorithmMode;
    v7 = logObject;
    v8 = [(PCMultiStageGrowthAlgorithm *)self _stringForMode:v6];
    v9 = [(PCMultiStageGrowthAlgorithm *)self _stringForMode:self->_currentKeepAliveAlgorithmMode];
    v10 = 138543874;
    selfCopy = self;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_25E3EF000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: adjustGrowthAlgorithmMode. {lastMode: %@, currentMode: %@}", &v10, 0x20u);
  }
}

- (void)_resetAlgorithmToInterval:(double)interval stage:(int)stage
{
  v4 = *&stage;
  v18 = *MEMORY[0x277D85DE8];
  logObject = self->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = logObject;
    v9 = [(PCMultiStageGrowthAlgorithm *)self _stringForStage:v4];
    v12 = 138543874;
    selfCopy = self;
    v14 = 2048;
    intervalCopy = interval;
    v16 = 2114;
    v17 = v9;
    _os_log_impl(&dword_25E3EF000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: resetAlgorithmToInterval: %g state: %{public}@", &v12, 0x20u);
  }

  self->_growthStage = v4;
  self->_highWatermark = 0.0;
  self->_initialGrowthStageHighWatermark = 0.0;
  leaveSteadyStateDate = self->_leaveSteadyStateDate;
  self->_initialGrowthStageLastAttempt = 0.0;
  self->_leaveSteadyStateDate = 0;

  leaveMinimumIntervalFallbackStateDate = self->_leaveMinimumIntervalFallbackStateDate;
  self->_leaveMinimumIntervalFallbackStateDate = 0;

  [(PCMultiStageGrowthAlgorithm *)self _setCurrentKeepAliveInterval:0 varianceMode:interval];
}

- (void)processNextAction:(int)action
{
  v3 = *&action;
  v20 = *MEMORY[0x277D85DE8];
  logObject = self->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    algorithmName = self->_algorithmName;
    v7 = logObject;
    v8 = [(PCMultiStageGrowthAlgorithm *)self _stringForAction:v3];
    v9 = [(PCMultiStageGrowthAlgorithm *)self _stringForStage:self->_growthStage];
    v14 = 138543874;
    v15 = algorithmName;
    v16 = 2114;
    v17 = v8;
    v18 = 2114;
    v19 = v9;
    _os_log_impl(&dword_25E3EF000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: received action %{public}@ while in stage %{public}@", &v14, 0x20u);
  }

  if (v3)
  {
    [(PCMultiStageGrowthAlgorithm *)self _adjustGrowthAlgorithmMode];
    if (v3 == 3)
    {
      [(PCMultiStageGrowthAlgorithm *)self minimumKeepAliveInterval];
      [(PCMultiStageGrowthAlgorithm *)self _resetAlgorithmToInterval:?];
      return;
    }
  }

  else
  {
    ++self->_countOfGrowthActions;
    [(PCMultiStageGrowthAlgorithm *)self _adjustGrowthAlgorithmMode];
  }

  if (self->_growthStage == 4)
  {
    goto LABEL_8;
  }

  [(PCMultiStageGrowthAlgorithm *)self maximumKeepAliveInterval];
  v11 = v10;
  [(PCMultiStageGrowthAlgorithm *)self minimumKeepAliveInterval];
  if (v11 - v12 > *&PCRefinedGrowthIncrement)
  {
    growthStage = self->_growthStage;
    if (growthStage <= 2)
    {
      if (growthStage)
      {
        if (growthStage == 1)
        {
          [(PCMultiStageGrowthAlgorithm *)self _processRefinedGrowthAction:v3];
        }

        else if (growthStage == 2)
        {
          [(PCMultiStageGrowthAlgorithm *)self _processSteadyStateAction:v3];
        }
      }

      else
      {
        [(PCMultiStageGrowthAlgorithm *)self _processInitialGrowthAction:v3];
      }

      goto LABEL_9;
    }

    if (growthStage > 4)
    {
      if (growthStage == 5)
      {
        [(PCMultiStageGrowthAlgorithm *)self _processInitialShrinkAction:v3];
      }

      else if (growthStage == 6)
      {
        [(PCMultiStageGrowthAlgorithm *)self _processRefinedShrinkAction:v3];
      }

      goto LABEL_9;
    }

    if (growthStage == 3)
    {
      [(PCMultiStageGrowthAlgorithm *)self _processBackoffAction:v3];
      goto LABEL_9;
    }

LABEL_8:
    [(PCMultiStageGrowthAlgorithm *)self _processMinimumIntervalFallbackStateAction:v3];
LABEL_9:
    self->_lastKeepAliveAlgorithmMode = self->_currentKeepAliveAlgorithmMode;
    [(PCMultiStageGrowthAlgorithm *)self setPreviousAction:v3];
    return;
  }

  self->_growthStage = 2;
}

- (void)_processInitialGrowthAction:(int)action
{
  v15 = *MEMORY[0x277D85DE8];
  switch(action)
  {
    case 2:
      if (self->_isServerOriginatedKeepAlive)
      {

        [(PCMultiStageGrowthAlgorithm *)self _fallbackToLastSuccessfulKeepAliveInterval];
      }

      break;
    case 1:
      currentKeepAliveInterval = self->_currentKeepAliveInterval;
      [(PCMultiStageGrowthAlgorithm *)self _fallbackToLastSuccessfulKeepAliveInterval];
      logObject = self->_logObject;
      if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
      {
        algorithmName = self->_algorithmName;
        v13 = 138543362;
        v14 = algorithmName;
        _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%{public}@: leaving the initial growth stage for refined growth", &v13, 0xCu);
      }

      self->_growthStage = 1;
      [(PCMultiStageGrowthAlgorithm *)self processNextAction:self->_currentKeepAliveInterval >= currentKeepAliveInterval];
      break;
    case 0:
      v4 = self->_currentKeepAliveInterval;
      [(PCMultiStageGrowthAlgorithm *)self maximumKeepAliveInterval];
      if (v4 >= v5)
      {
        self->_growthStage = 2;
      }

      v6 = self->_currentKeepAliveInterval;
      v7 = (v6 + *&PCInitialGrowthIncrement);
      if (v6 > self->_highWatermark)
      {
        self->_highWatermark = v6;
      }

      v8 = v7;
      if (self->_initialGrowthStageHighWatermark < v7)
      {
        self->_initialGrowthStageLastAttempt = v8;
      }

      if (self->_currentKeepAliveAlgorithmMode == 1)
      {
        [(PCMultiStageGrowthAlgorithm *)self serverStatsExpectedKeepAliveInterval];
        if (v9 < v8)
        {
          self->_growthStage = 1;
        }
      }

      [(PCMultiStageGrowthAlgorithm *)self _setCurrentKeepAliveInterval:1 varianceMode:v8];
      break;
  }
}

- (void)_processBackoffAction:(int)action
{
  switch(action)
  {
    case 2:
      if (self->_isServerOriginatedKeepAlive)
      {
        [(PCMultiStageGrowthAlgorithm *)self _fallbackToLastSuccessfulKeepAliveInterval];
      }

      break;
    case 1:
      [(PCMultiStageGrowthAlgorithm *)self _setCurrentKeepAliveInterval:0 varianceMode:self->_currentKeepAliveInterval * *&PCBackoffMultiple];
      break;
    case 0:
      self->_growthStage = 0;
      [(PCMultiStageGrowthAlgorithm *)self processNextAction:?];
      break;
  }
}

- (void)_processSteadyStateAction:(int)action
{
  v3 = *&action;
  v29 = *MEMORY[0x277D85DE8];
  if (action != 2)
  {
    if (action == 1)
    {
      leaveSteadyStateDate = self->_leaveSteadyStateDate;
      self->_leaveSteadyStateDate = 0;

      if (self->_minimumIntervalFallbackEnabled && !self->_leaveMinimumIntervalFallbackStateDate)
      {
        [(PCMultiStageGrowthAlgorithm *)self maximumKeepAliveInterval];
        self->_previousMaximumKeepAliveInterval = v22;
        [(PCMultiStageGrowthAlgorithm *)self setMaximumKeepAliveInterval:self->_minimumKeepAliveInterval];
        v23 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:self->_minimumIntervalFallbackStateTimeout];
        leaveMinimumIntervalFallbackStateDate = self->_leaveMinimumIntervalFallbackStateDate;
        self->_leaveMinimumIntervalFallbackStateDate = v23;

        self->_growthStage = 4;
      }

      else
      {
        self->_growthStage = 3;

        [(PCMultiStageGrowthAlgorithm *)self processNextAction:1];
      }

      return;
    }

    if (action)
    {
      return;
    }
  }

  v5 = self->_leaveSteadyStateDate;
  if (v5)
  {
    [(NSDate *)v5 timeIntervalSinceNow];
    if (v6 < 0.0)
    {
      logObject = self->_logObject;
      if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
      {
        algorithmName = self->_algorithmName;
        v25 = 138543362;
        v26 = algorithmName;
        _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%{public}@: leaving the steady state and trying to grow again", &v25, 0xCu);
      }

      self->_growthStage = 1;
      v9 = self->_leaveSteadyStateDate;
      self->_leaveSteadyStateDate = 0;

      [(PCMultiStageGrowthAlgorithm *)self processNextAction:v3];
      return;
    }

    if (self->_leaveSteadyStateDate)
    {
      return;
    }
  }

  highWatermark = self->_highWatermark;
  if (highWatermark > 0.0 && self->_currentKeepAliveInterval >= highWatermark - *&PCHighWatermarkThreshold)
  {
    [(PCMultiStageGrowthAlgorithm *)self _steadyStateTimeout];
    v15 = v16;
  }

  else
  {
    v12 = self->_logObject;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = self->_algorithmName;
      v14 = self->_highWatermark;
      v25 = 138543618;
      v26 = v13;
      v27 = 2048;
      v28 = v14;
      _os_log_impl(&dword_25E3EF000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: using double the current interval for the steady state timer interval since we are significantly below the high watermark of %g seconds", &v25, 0x16u);
    }

    v15 = self->_currentKeepAliveInterval + self->_currentKeepAliveInterval;
    self->_highWatermark = 0.0;
  }

  v17 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:v15];
  v18 = self->_leaveSteadyStateDate;
  self->_leaveSteadyStateDate = v17;

  v19 = self->_logObject;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = self->_algorithmName;
    v21 = self->_leaveSteadyStateDate;
    v25 = 138543618;
    v26 = v20;
    v27 = 2114;
    v28 = *&v21;
    _os_log_impl(&dword_25E3EF000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: set the steady state expiration date to %{public}@", &v25, 0x16u);
  }
}

- (void)_processMinimumIntervalFallbackStateAction:(int)action
{
  v3 = *&action;
  v29 = *MEMORY[0x277D85DE8];
  leaveMinimumIntervalFallbackStateDate = self->_leaveMinimumIntervalFallbackStateDate;
  if (!leaveMinimumIntervalFallbackStateDate)
  {
    previousMaximumKeepAliveInterval = self->_previousMaximumKeepAliveInterval;
    [(PCMultiStageGrowthAlgorithm *)self maximumKeepAliveInterval];
    if (previousMaximumKeepAliveInterval <= v14)
    {
      goto LABEL_17;
    }

    [(PCMultiStageGrowthAlgorithm *)self setMaximumKeepAliveInterval:self->_previousMaximumKeepAliveInterval];
    logObject = self->_logObject;
    if (!os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v16 = self->_previousMaximumKeepAliveInterval;
    *v27 = 138412546;
    *&v27[4] = self;
    *&v27[12] = 2048;
    *&v27[14] = v16;
    v17 = "%@ _leaveMinimumIntervalFallbackStateDate is nil. Leave minimumIntervalFallbackState. Changing maximum keep alive interval back to %f";
    goto LABEL_9;
  }

  [(NSDate *)leaveMinimumIntervalFallbackStateDate timeIntervalSinceNow];
  v6 = self->_leaveMinimumIntervalFallbackStateDate;
  if (v7 > self->_minimumIntervalFallbackStateTimeout)
  {
    v8 = v6;
    v9 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:self->_minimumIntervalFallbackStateTimeout];
    v10 = self->_leaveMinimumIntervalFallbackStateDate;
    self->_leaveMinimumIntervalFallbackStateDate = v9;

    v11 = self->_logObject;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = self->_leaveMinimumIntervalFallbackStateDate;
      *v27 = 138412802;
      *&v27[4] = self;
      *&v27[12] = 2112;
      *&v27[14] = v8;
      *&v27[22] = 2112;
      v28 = v12;
      _os_log_impl(&dword_25E3EF000, v11, OS_LOG_TYPE_DEFAULT, "%@ Unexpected _leaveMinimumIntervalFallbackStateDate %@ in MinimumIntervalFallbackState, changing to %@", v27, 0x20u);
    }

    return;
  }

  [(NSDate *)v6 timeIntervalSinceNow];
  if (v18 >= 0.0)
  {
    return;
  }

  if (v3 == 2)
  {
LABEL_14:
    v19 = self->_leaveMinimumIntervalFallbackStateDate;
    self->_leaveMinimumIntervalFallbackStateDate = 0;

    v20 = self->_previousMaximumKeepAliveInterval;
    [(PCMultiStageGrowthAlgorithm *)self maximumKeepAliveInterval];
    if (v20 <= v21)
    {
      goto LABEL_17;
    }

    [(PCMultiStageGrowthAlgorithm *)self setMaximumKeepAliveInterval:self->_previousMaximumKeepAliveInterval];
    logObject = self->_logObject;
    if (!os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v22 = self->_previousMaximumKeepAliveInterval;
    *v27 = 138412546;
    *&v27[4] = self;
    *&v27[12] = 2048;
    *&v27[14] = v22;
    v17 = "%@ Leave minimumIntervalFallbackState. Changing maximum keep alive interval back to %f";
LABEL_9:
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, v17, v27, 0x16u);
LABEL_17:
    self->_growthStage = 1;
    [(PCMultiStageGrowthAlgorithm *)self processNextAction:v3, *v27, *&v27[8]];
    return;
  }

  if (v3 != 1)
  {
    if (v3)
    {
      return;
    }

    goto LABEL_14;
  }

  v23 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:self->_minimumIntervalFallbackStateTimeout];
  v24 = self->_leaveMinimumIntervalFallbackStateDate;
  self->_leaveMinimumIntervalFallbackStateDate = v23;

  v25 = self->_logObject;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = self->_leaveMinimumIntervalFallbackStateDate;
    *v27 = 138412546;
    *&v27[4] = self;
    *&v27[12] = 2112;
    *&v27[14] = v26;
    _os_log_impl(&dword_25E3EF000, v25, OS_LOG_TYPE_DEFAULT, "%@ receive shrink right after previous MinimumIntervalFallbackState ends, extend leaveMinimumIntervalFallbackStateDate to %@", v27, 0x16u);
  }
}

- (void)_processRefinedGrowthAction:(int)action
{
  v17 = *MEMORY[0x277D85DE8];
  switch(action)
  {
    case 2:
      if (self->_isServerOriginatedKeepAlive)
      {

        [(PCMultiStageGrowthAlgorithm *)self _fallbackToLastSuccessfulKeepAliveInterval];
      }

      break;
    case 1:
      [(PCMultiStageGrowthAlgorithm *)self _fallbackToLastSuccessfulKeepAliveInterval];
      self->_growthStage = 2;

      [(PCMultiStageGrowthAlgorithm *)self processNextAction:0];
      break;
    case 0:
      currentKeepAliveInterval = self->_currentKeepAliveInterval;
      if (self->_currentKeepAliveAlgorithmMode == 1 || ((v5 = self->_initialGrowthStageLastAttempt, currentKeepAliveInterval >= v5) ? (v6 = v5 <= 2.22044605e-16) : (v6 = 1), v6))
      {
        if (currentKeepAliveInterval > self->_highWatermark)
        {
          self->_highWatermark = currentKeepAliveInterval;
        }

        v7 = *&PCRefinedGrowthIncrement;
        v8 = (currentKeepAliveInterval + *&PCRefinedGrowthIncrement);

        [(PCMultiStageGrowthAlgorithm *)self _setCurrentKeepAliveInterval:1 varianceMode:v8, v7];
      }

      else
      {
        logObject = self->_logObject;
        if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
        {
          algorithmName = self->_algorithmName;
          initialGrowthStageLastAttempt = self->_initialGrowthStageLastAttempt;
          v13 = 138543618;
          v14 = algorithmName;
          v15 = 2048;
          v16 = initialGrowthStageLastAttempt;
          _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%{public}@: surpassed where the previous initial growth stopped at %g; reverting to initial growth.", &v13, 0x16u);
        }

        self->_growthStage = 0;
        [(PCMultiStageGrowthAlgorithm *)self processNextAction:0];
      }

      break;
  }
}

- (void)_processInitialShrinkAction:(int)action
{
  if (action == 1)
  {
    if (self->_serverStatsExpectedKeepAliveInterval >= (self->_currentKeepAliveInterval + -300.0))
    {
      self->_growthStage = 6;
    }

    [(PCMultiStageGrowthAlgorithm *)self _setCurrentKeepAliveInterval:2 varianceMode:?];
  }

  else if (!action)
  {
    self->_growthStage = 2;
    currentKeepAliveInterval = self->_currentKeepAliveInterval;
    if (currentKeepAliveInterval > self->_highWatermark)
    {
      self->_highWatermark = currentKeepAliveInterval;
    }

    [(PCMultiStageGrowthAlgorithm *)self processNextAction:0];
  }
}

- (void)_processRefinedShrinkAction:(int)action
{
  if (action == 1)
  {
    if (self->_serverStatsExpectedKeepAliveInterval >= (self->_currentKeepAliveInterval + -120.0))
    {
      self->_growthStage = 6;
    }

    [(PCMultiStageGrowthAlgorithm *)self _setCurrentKeepAliveInterval:2 varianceMode:?];
  }

  else if (!action)
  {
    self->_growthStage = 2;
    currentKeepAliveInterval = self->_currentKeepAliveInterval;
    if (currentKeepAliveInterval > self->_highWatermark)
    {
      self->_highWatermark = currentKeepAliveInterval;
    }

    [(PCMultiStageGrowthAlgorithm *)self processNextAction:0];
  }
}

- (double)_steadyStateTimeout
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_currentKeepAliveInterval * 24.0 >= 3600.0)
  {
    v3 = self->_currentKeepAliveInterval * 24.0;
  }

  else
  {
    v3 = 3600.0;
  }

  logObject = self->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    algorithmName = self->_algorithmName;
    currentKeepAliveInterval = self->_currentKeepAliveInterval;
    v8 = 138543874;
    v9 = algorithmName;
    v10 = 2048;
    v11 = v3;
    v12 = 2048;
    v13 = currentKeepAliveInterval;
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%{public}@: using a steady state timeout of %g for current interval %g", &v8, 0x20u);
  }

  return v3;
}

+ (void)_loadDefaults
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__PCMultiStageGrowthAlgorithm__loadDefaults__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_loadDefaults_pred != -1)
  {
    dispatch_once(&_loadDefaults_pred, block);
  }
}

uint64_t __44__PCMultiStageGrowthAlgorithm__loadDefaults__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadDefaultValue:&PCDefaultMinimumKeepAliveInterval forKey:@"PCDefaultMinimumKeepAliveInterval"];
  [*(a1 + 32) _loadDefaultValue:&PCDefaultMaximumKeepAliveInterval forKey:@"PCDefaultMaximumKeepAliveInterval"];
  [*(a1 + 32) _loadDefaultValue:&PCDefaultInitialKeepAliveInterval forKey:@"PCDefaultInitialKeepAliveInterval"];
  [*(a1 + 32) _loadDefaultValue:&PCInitialGrowthIncrement forKey:@"PCInitialGrowthIncrement"];
  [*(a1 + 32) _loadDefaultValue:&PCRefinedGrowthIncrement forKey:@"PCRefinedGrowthIncrement"];
  [*(a1 + 32) _loadDefaultValue:&PCIncrementRandomVariance forKey:@"PCIncrementRandomVariance"];
  [*(a1 + 32) _loadDefaultValue:&PCBackoffMultiple forKey:@"PCBackoffMultiple"];
  v2 = *(a1 + 32);

  return [v2 _loadDefaultValue:&PCHighWatermarkThreshold forKey:@"PCHighWatermarkThreshold"];
}

+ (void)_loadDefaultValue:(double *)value forKey:(__CFString *)key
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = CFPreferencesCopyAppValue(key, @"com.apple.persistentconnection");
  if (v6)
  {
    v7 = v6;
    [v6 doubleValue];
    v9 = v8;
    if (v8 > 2.22044605e-16)
    {
      v10 = +[PCLog timer];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138543618;
        keyCopy = key;
        v13 = 2048;
        v14 = v9;
        _os_log_impl(&dword_25E3EF000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: %0.2f", &v11, 0x16u);
      }

      *value = v9;
    }

    CFRelease(v7);
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = PCMultiStageGrowthAlgorithm;
  v4 = [(PCMultiStageGrowthAlgorithm *)&v9 description];
  currentKeepAliveInterval = self->_currentKeepAliveInterval;
  v6 = [(PCMultiStageGrowthAlgorithm *)self _stringForStage:self->_growthStage];
  v7 = [v3 stringWithFormat:@"%@{keep alive interval = %g, state = %@, next recalibration date = %@}", v4, *&currentKeepAliveInterval, v6, self->_leaveSteadyStateDate];

  return v7;
}

- (id)_stringForAction:(int)action
{
  if (action > 3)
  {
    return 0;
  }

  else
  {
    return off_279A19DD8[action];
  }
}

- (id)_stringForStage:(int)stage
{
  if (stage > 6)
  {
    return 0;
  }

  else
  {
    return off_279A19DF8[stage];
  }
}

- (id)_stringForMode:(int)mode
{
  if (mode > 2)
  {
    return 0;
  }

  else
  {
    return off_279A19E30[mode];
  }
}

- (_PCTimeRange)signalAvoidanceRange
{
  start = self->_signalAvoidanceRange.start;
  duration = self->_signalAvoidanceRange.duration;
  result.duration = duration;
  result.start = start;
  return result;
}

@end