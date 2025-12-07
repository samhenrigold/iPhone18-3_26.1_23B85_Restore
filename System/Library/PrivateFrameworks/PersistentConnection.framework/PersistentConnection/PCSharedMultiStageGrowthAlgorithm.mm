@interface PCSharedMultiStageGrowthAlgorithm
+ (void)_loadDefaultValue:(double *)value forKey:(__CFString *)key;
+ (void)_loadDefaults;
- (BOOL)isServerOriginatedKeepAlive;
- (BOOL)minimumIntervalFallbackEnabled;
- (BOOL)usingServerStatsAggressively;
- (NSDictionary)cacheInfo;
- (NSString)description;
- (PCSharedMultiStageGrowthAlgorithm)initWithCacheInfo:(id)info loggingIdentifier:(id)identifier algorithmName:(id)name;
- (_PCMSGA)underlyingAlgorithm;
- (_PCTimeRange)signalAvoidanceRange;
- (double)currentKeepAliveInterval;
- (double)lastSuccessfulKeepAliveInterval;
- (double)maximumKeepAliveInterval;
- (double)minimumIntervalFallbackStateTimeout;
- (double)minimumKeepAliveInterval;
- (double)serverStatsExpectedKeepAliveInterval;
- (double)serverStatsMaxKeepAliveInterval;
- (double)serverStatsMinKeepAliveInterval;
- (id)_stringForAction:(int)action;
- (id)_stringForMode:(int)mode;
- (id)_stringForStage:(int)stage;
- (int)growthStage;
- (int)growthState;
- (int)previousAction;
- (unint64_t)countOfGrowthActions;
- (void)setIsServerOriginatedKeepAlive:(BOOL)alive;
- (void)setLastSuccessfulKeepAliveInterval:(double)interval;
- (void)setMaximumKeepAliveInterval:(double)interval;
- (void)setMinimumIntervalFallbackEnabled:(BOOL)enabled;
- (void)setMinimumIntervalFallbackStateTimeout:(double)timeout;
- (void)setMinimumKeepAliveInterval:(double)interval;
- (void)setServerStatsExpectedKeepAliveInterval:(double)interval;
- (void)setServerStatsMaxKeepAliveInterval:(double)interval;
- (void)setServerStatsMinKeepAliveInterval:(double)interval;
- (void)setSignalAvoidanceRange:(_PCTimeRange)range;
- (void)setUnderlyingAlgorithm:(_PCMSGA *)algorithm;
- (void)setUsingServerStatsAggressively:(BOOL)aggressively;
@end

@implementation PCSharedMultiStageGrowthAlgorithm

- (double)currentKeepAliveInterval
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = PCMSGA_currentKeepAliveInterval(&self->_underlyingAlgorithm, a2);
  logObject = self->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "currentKeepAliveInterval";
    v8 = 2048;
    selfCopy = self;
    v10 = 2048;
    v11 = v3;
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%s(%p) returns  %g", &v6, 0x20u);
  }

  return v3;
}

- (int)growthStage
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = PCMSGA_growthStage(&self->_underlyingAlgorithm, a2);
  logObject = self->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "growthStage";
    v8 = 2048;
    selfCopy = self;
    v10 = 1024;
    v11 = v3;
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%s(%p) returns  %d", &v6, 0x1Cu);
  }

  return v3;
}

- (int)previousAction
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = PCMSGA_previousAction(&self->_underlyingAlgorithm, a2);
  logObject = self->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "previousAction";
    v8 = 2048;
    selfCopy = self;
    v10 = 1024;
    v11 = v3;
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%s(%p) returns  %d", &v6, 0x1Cu);
  }

  return v3;
}

- (unint64_t)countOfGrowthActions
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = PCMSGA_countOfGrowthActions(&self->_underlyingAlgorithm, a2);
  logObject = self->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "countOfGrowthActions";
    v8 = 2048;
    selfCopy = self;
    v10 = 2048;
    v11 = v3;
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%s(%p) returns %llu", &v6, 0x20u);
  }

  return v3;
}

- (double)minimumKeepAliveInterval
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = PCMSGA_minimumKeepAliveInterval(&self->_underlyingAlgorithm, a2);
  logObject = self->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "minimumKeepAliveInterval";
    v8 = 2048;
    selfCopy = self;
    v10 = 2048;
    v11 = v3;
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%s(%p) returns  %g", &v6, 0x20u);
  }

  return v3;
}

- (void)setMinimumKeepAliveInterval:(double)interval
{
  v12 = *MEMORY[0x277D85DE8];
  logObject = self->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "setMinimumKeepAliveInterval";
    v8 = 2048;
    selfCopy = self;
    v10 = 2048;
    intervalCopy = interval;
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%s(%p, %g)", &v6, 0x20u);
  }

  PCMSGA_setMinimumKeepAliveInterval(&self->_underlyingAlgorithm, interval);
}

- (double)maximumKeepAliveInterval
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = PCMSGA_maximumKeepAliveInterval(&self->_underlyingAlgorithm, a2);
  logObject = self->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "maximumKeepAliveInterval";
    v8 = 2048;
    selfCopy = self;
    v10 = 2048;
    v11 = v3;
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%s(%p) returns  %g", &v6, 0x20u);
  }

  return v3;
}

- (void)setMaximumKeepAliveInterval:(double)interval
{
  v12 = *MEMORY[0x277D85DE8];
  logObject = self->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "setMaximumKeepAliveInterval";
    v8 = 2048;
    selfCopy = self;
    v10 = 2048;
    intervalCopy = interval;
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%s(%p, %g)", &v6, 0x20u);
  }

  PCMSGA_setMaximumKeepAliveInterval(&self->_underlyingAlgorithm, interval);
}

- (double)serverStatsExpectedKeepAliveInterval
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = PCMSGA_serverStatsExpectedKeepAliveInterval(&self->_underlyingAlgorithm);
  logObject = self->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "serverStatsExpectedKeepAliveInterval";
    v8 = 2048;
    selfCopy = self;
    v10 = 2048;
    v11 = v3;
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%s(%p) returns  %g", &v6, 0x20u);
  }

  return v3;
}

- (void)setServerStatsExpectedKeepAliveInterval:(double)interval
{
  v12 = *MEMORY[0x277D85DE8];
  logObject = self->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "setServerStatsExpectedKeepAliveInterval";
    v8 = 2048;
    selfCopy = self;
    v10 = 2048;
    intervalCopy = interval;
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%s(%p, %g)", &v6, 0x20u);
  }

  PCMSGA_setServerStatsExpectedKeepAliveInterval(&self->_underlyingAlgorithm, interval);
}

- (double)serverStatsMinKeepAliveInterval
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = PCMSGA_serverStatsMinKeepAliveInterval(&self->_underlyingAlgorithm, a2);
  logObject = self->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "serverStatsMinKeepAliveInterval";
    v8 = 2048;
    selfCopy = self;
    v10 = 2048;
    v11 = v3;
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%s(%p) returns  %g", &v6, 0x20u);
  }

  return v3;
}

- (void)setServerStatsMinKeepAliveInterval:(double)interval
{
  v12 = *MEMORY[0x277D85DE8];
  logObject = self->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "setServerStatsMinKeepAliveInterval";
    v8 = 2048;
    selfCopy = self;
    v10 = 2048;
    intervalCopy = interval;
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%s(%p, %g)", &v6, 0x20u);
  }

  PCMSGA_setServerStatsMinKeepAliveInterval(&self->_underlyingAlgorithm, interval);
}

- (double)serverStatsMaxKeepAliveInterval
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = PCMSGA_serverStatsMaxKeepAliveInterval(&self->_underlyingAlgorithm, a2);
  logObject = self->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "serverStatsMaxKeepAliveInterval";
    v8 = 2048;
    selfCopy = self;
    v10 = 2048;
    v11 = v3;
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%s(%p) returns  %g", &v6, 0x20u);
  }

  return v3;
}

- (void)setServerStatsMaxKeepAliveInterval:(double)interval
{
  v12 = *MEMORY[0x277D85DE8];
  logObject = self->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "setServerStatsMaxKeepAliveInterval";
    v8 = 2048;
    selfCopy = self;
    v10 = 2048;
    intervalCopy = interval;
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%s(%p, %g)", &v6, 0x20u);
  }

  PCMSGA_setServerStatsMaxKeepAliveInterval(&self->_underlyingAlgorithm, interval);
}

- (double)lastSuccessfulKeepAliveInterval
{
  v12 = *MEMORY[0x277D85DE8];
  SuccessfulKeepAliveInterval = PCMSGA_lastSuccessfulKeepAliveInterval(&self->_underlyingAlgorithm, a2);
  logObject = self->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "lastSuccessfulKeepAliveInterval";
    v8 = 2048;
    selfCopy = self;
    v10 = 2048;
    v11 = SuccessfulKeepAliveInterval;
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%s(%p) returns  %g", &v6, 0x20u);
  }

  return SuccessfulKeepAliveInterval;
}

- (void)setLastSuccessfulKeepAliveInterval:(double)interval
{
  v12 = *MEMORY[0x277D85DE8];
  logObject = self->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "setLastSuccessfulKeepAliveInterval";
    v8 = 2048;
    selfCopy = self;
    v10 = 2048;
    intervalCopy = interval;
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%s(%p, %g)", &v6, 0x20u);
  }

  PCMSGA_setLastSuccessfulKeepAliveInterval(&self->_underlyingAlgorithm, interval);
}

- (BOOL)minimumIntervalFallbackEnabled
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = PCMSGA_minimumIntervalFallbackEnabled(&self->_underlyingAlgorithm, a2);
  logObject = self->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "minimumIntervalFallbackEnabled";
    v8 = 2048;
    selfCopy = self;
    v10 = 1024;
    v11 = v3;
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%s(%p) returns  %d", &v6, 0x1Cu);
  }

  return v3;
}

- (void)setMinimumIntervalFallbackEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v12 = *MEMORY[0x277D85DE8];
  logObject = self->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "setMinimumIntervalFallbackEnabled";
    v8 = 2048;
    selfCopy = self;
    v10 = 1024;
    v11 = enabledCopy;
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%s(%p, %d)", &v6, 0x1Cu);
  }

  PCMSGA_setMinimumIntervalFallbackEnabled(&self->_underlyingAlgorithm, enabledCopy);
}

- (BOOL)usingServerStatsAggressively
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = PCMSGA_usingServerStatsAggressively(&self->_underlyingAlgorithm, a2);
  logObject = self->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "usingServerStatsAggressively";
    v8 = 2048;
    selfCopy = self;
    v10 = 1024;
    v11 = v3;
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%s(%p) returns  %d", &v6, 0x1Cu);
  }

  return v3;
}

- (void)setUsingServerStatsAggressively:(BOOL)aggressively
{
  aggressivelyCopy = aggressively;
  v12 = *MEMORY[0x277D85DE8];
  logObject = self->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "setUsingServerStatsAggressively";
    v8 = 2048;
    selfCopy = self;
    v10 = 1024;
    v11 = aggressivelyCopy;
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%s(%p, %d)", &v6, 0x1Cu);
  }

  PCMSGA_setUsingServerStatsAggressively(&self->_underlyingAlgorithm, aggressivelyCopy);
}

- (double)minimumIntervalFallbackStateTimeout
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = PCMSGA_minimumIntervalFallbackStateTimeout(&self->_underlyingAlgorithm, a2);
  logObject = self->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "minimumIntervalFallbackStateTimeout";
    v8 = 2048;
    selfCopy = self;
    v10 = 2048;
    v11 = v3;
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%s(%p) returns  %g", &v6, 0x20u);
  }

  return v3;
}

- (void)setMinimumIntervalFallbackStateTimeout:(double)timeout
{
  v12 = *MEMORY[0x277D85DE8];
  logObject = self->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "setMinimumIntervalFallbackStateTimeout";
    v8 = 2048;
    selfCopy = self;
    v10 = 2048;
    timeoutCopy = timeout;
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%s(%p, %g)", &v6, 0x20u);
  }

  PCMSGA_setMinimumIntervalFallbackStateTimeout(&self->_underlyingAlgorithm, timeout);
}

- (BOOL)isServerOriginatedKeepAlive
{
  v12 = *MEMORY[0x277D85DE8];
  isServerOriginatedKeepAlive = PCMSGA_isServerOriginatedKeepAlive(&self->_underlyingAlgorithm, a2);
  logObject = self->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "isServerOriginatedKeepAlive";
    v8 = 2048;
    selfCopy = self;
    v10 = 1024;
    v11 = isServerOriginatedKeepAlive;
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%s(%p) returns  %d", &v6, 0x1Cu);
  }

  return isServerOriginatedKeepAlive;
}

- (void)setIsServerOriginatedKeepAlive:(BOOL)alive
{
  aliveCopy = alive;
  v12 = *MEMORY[0x277D85DE8];
  logObject = self->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "setIsServerOriginatedKeepAlive";
    v8 = 2048;
    selfCopy = self;
    v10 = 1024;
    v11 = aliveCopy;
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%s(%p, %d)", &v6, 0x1Cu);
  }

  PCMSGA_setIsServerOriginatedKeepAlive(&self->_underlyingAlgorithm, aliveCopy);
}

- (_PCTimeRange)signalAvoidanceRange
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = PCMSGA_signalAvoidanceRange(&self->_underlyingAlgorithm, a2);
  v5 = v4;
  logObject = self->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315906;
    v10 = "signalAvoidanceRange";
    v11 = 2048;
    selfCopy = self;
    v13 = 2048;
    v14 = v3;
    v15 = 2048;
    v16 = v5;
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%s(%p) returns {%g,%g}", &v9, 0x2Au);
  }

  v7 = v3;
  v8 = v5;
  result.duration = v8;
  result.start = v7;
  return result;
}

- (void)setSignalAvoidanceRange:(_PCTimeRange)range
{
  duration = range.duration;
  start = range.start;
  v15 = *MEMORY[0x277D85DE8];
  logObject = self->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315906;
    v8 = "setSignalAvoidanceRange";
    v9 = 2048;
    selfCopy = self;
    v11 = 2048;
    v12 = start;
    v13 = 2048;
    v14 = duration;
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%s(%p, {%g,%g})", &v7, 0x2Au);
  }

  PCMSGA_setSignalAvoidanceRange(&self->_underlyingAlgorithm, start, duration);
}

- (int)growthState
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = PCMSGA_growthStage(&self->_underlyingAlgorithm, a2);
  logObject = self->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "growthState";
    v8 = 2048;
    selfCopy = self;
    v10 = 1024;
    v11 = v3;
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%s(%p) returns %d", &v6, 0x1Cu);
  }

  return v3;
}

- (NSDictionary)cacheInfo
{
  v3 = objc_alloc(MEMORY[0x277CBEAC0]);
  v4 = MEMORY[0x277CCABB0];
  [(PCSharedMultiStageGrowthAlgorithm *)self currentKeepAliveInterval];
  v5 = [v4 numberWithDouble:?];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[PCSharedMultiStageGrowthAlgorithm growthStage](self, "growthStage") == 0}];
  date = [MEMORY[0x277CBEAA8] date];
  v8 = [v3 initWithObjectsAndKeys:{v5, @"keepAliveInterval", v6, @"inInitialGrowth", date, @"cacheDate", 0}];

  return v8;
}

- (PCSharedMultiStageGrowthAlgorithm)initWithCacheInfo:(id)info loggingIdentifier:(id)identifier algorithmName:(id)name
{
  v28 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  identifierCopy = identifier;
  nameCopy = name;
  v21.receiver = self;
  v21.super_class = PCSharedMultiStageGrowthAlgorithm;
  v11 = [(PCSharedMultiStageGrowthAlgorithm *)&v21 init];
  if (v11)
  {
    identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"multiStateGrowth.%@", identifierCopy];
    v11->_logObject = +[PCLog logWithCategory:](PCLog, "logWithCategory:", [identifierCopy UTF8String]);
    v13 = [infoCopy objectForKey:@"keepAliveInterval"];
    [v13 doubleValue];
    v15 = v14;

    v16 = [infoCopy objectForKey:@"inInitialGrowth"];
    bOOLValue = [v16 BOOLValue];

    logObject = v11->_logObject;
    if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
    {
      v19 = @"NO";
      *buf = 134218498;
      v23 = v15;
      v24 = 2114;
      if (bOOLValue)
      {
        v19 = @"YES";
      }

      v25 = v19;
      v26 = 2114;
      v27 = infoCopy;
      _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "Using cached keep alive interval of %g seconds inInitialGrowth? %{public}@ from [%{public}@]", buf, 0x20u);
    }

    (PCMSGA_initWith)(&v11->_underlyingAlgorithm, [nameCopy UTF8String], v11->_logObject, bOOLValue, v15);
  }

  return v11;
}

+ (void)_loadDefaults
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__PCSharedMultiStageGrowthAlgorithm__loadDefaults__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_loadDefaults_pred_0 != -1)
  {
    dispatch_once(&_loadDefaults_pred_0, block);
  }
}

uint64_t __50__PCSharedMultiStageGrowthAlgorithm__loadDefaults__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadDefaultValue:&PCMSGA_globals forKey:@"PCDefaultMinimumKeepAliveInterval"];
  [*(a1 + 32) _loadDefaultValue:&PCMSGA_globals + 8 forKey:@"PCDefaultMaximumKeepAliveInterval"];
  [*(a1 + 32) _loadDefaultValue:&qword_27FCE4680 forKey:@"PCDefaultInitialKeepAliveInterval"];
  [*(a1 + 32) _loadDefaultValue:&qword_27FCE4690 forKey:@"PCInitialGrowthIncrement"];
  [*(a1 + 32) _loadDefaultValue:&qword_27FCE4698 forKey:@"PCRefinedGrowthIncrement"];
  [*(a1 + 32) _loadDefaultValue:&qword_27FCE46B0 forKey:@"PCIncrementRandomVariance"];
  [*(a1 + 32) _loadDefaultValue:&qword_27FCE46B8 forKey:@"PCBackoffMultiple"];
  v2 = *(a1 + 32);

  return [v2 _loadDefaultValue:&qword_27FCE46C0 forKey:@"PCHighWatermarkThreshold"];
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
  leaveSteadyStateDate = self->_underlyingAlgorithm.leaveSteadyStateDate;
  if (leaveSteadyStateDate)
  {
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:*leaveSteadyStateDate];
  }

  else
  {
    v4 = 0;
  }

  v5 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = PCSharedMultiStageGrowthAlgorithm;
  v6 = [(PCSharedMultiStageGrowthAlgorithm *)&v12 description];
  [(PCSharedMultiStageGrowthAlgorithm *)self currentKeepAliveInterval];
  v8 = v7;
  v9 = [(PCSharedMultiStageGrowthAlgorithm *)self _stringForStage:[(PCSharedMultiStageGrowthAlgorithm *)self growthStage]];
  v10 = [v5 stringWithFormat:@"%@{keep alive interval = %g, state = %@, next recalibration date = %@}", v6, v8, v9, v4];

  return v10;
}

- (id)_stringForAction:(int)action
{
  if (action > 3)
  {
    return 0;
  }

  else
  {
    return off_279A1A1A0[action];
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
    return off_279A1A1C0[stage];
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
    return off_279A1A1F8[mode];
  }
}

- (_PCMSGA)underlyingAlgorithm
{
  memcpy(retstr, &self->_underlyingAlgorithm, 0x130uLL);
  result = self->_underlyingAlgorithm.logObject;
  v6 = *&self->_underlyingAlgorithm.lastKeepAliveAlgorithmMode;
  retstr->logObject = result;
  *&retstr->lastKeepAliveAlgorithmMode = v6;
  return result;
}

- (void)setUnderlyingAlgorithm:(_PCMSGA *)algorithm
{
  memcpy(&self->_underlyingAlgorithm, algorithm, 0x130uLL);
  logObject = algorithm->logObject;
  algorithm->logObject = 0;
  v6 = self->_underlyingAlgorithm.logObject;
  self->_underlyingAlgorithm.logObject = logObject;

  *&self->_underlyingAlgorithm.lastKeepAliveAlgorithmMode = *&algorithm->lastKeepAliveAlgorithmMode;
}

@end