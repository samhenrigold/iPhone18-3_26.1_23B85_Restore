@interface TIKeyboardInputManagerLogger
+ (BOOL)createTypologyDirectoryAtURL:(id)l;
+ (id)_writeToFileWithTypologyLog:(id)log directoryURL:(id)l requireDeviceUnlocked:(BOOL)unlocked;
+ (id)accessibilityConfigInfo;
+ (void)_backgroundPruneLogsWithPreferences:(id)preferences;
+ (void)_backgroundWriteLog:(id)log preferences:(id)preferences completion:(id)completion;
+ (void)_writeHumanReadableTraceForTypologyLog:(id)log directoryURL:(id)l;
+ (void)pruneTypologyLogsAtDirectoryURL:(id)l toMaxNumBytes:(int64_t)bytes expirationInterval:(double)interval satisfyingPredicate:(id)predicate;
+ (void)submitAggregrateDictionaryReport:(id)report inputModeIdentifier:(id)identifier;
- (BOOL)allowTypologyLogForKeyboardState:(id)state;
- (BOOL)isInternalDeviceWithForcedTypologyLoggingForTesting;
- (BOOL)shouldWriteToSyslogForKeyboardState:(id)state;
- (TIKeyboardInputManagerLogger)initWithTypologyPreferences:(id)preferences;
- (id)writeToFile;
- (void)_tryWriteToSyslogWithTrace:(id)trace;
- (void)backgroundWriteLogs;
- (void)dealloc;
- (void)didReachMaximumEntries:(id)entries;
- (void)disableTypologyLogIfNecessaryForKeyboardState:(id)state;
- (void)logAutocorrections:(id)autocorrections trace:(id)trace forKeyboardState:(id)state requestToken:(id)token;
- (void)logCandidateResultSet:(id)set trace:(id)trace forKeyboardState:(id)state requestToken:(id)token;
- (void)logHitKeyCode:(int64_t)code forTouchEvent:(id)event keyboardState:(id)state;
- (void)logKeyboardConfig:(id)config forAdjustedPhraseBoundaryInForwardDirection:(BOOL)direction granularity:(int)granularity keyboardState:(id)state;
- (void)logKeyboardConfig:(id)config forSyncToKeyboardState:(id)state;
- (void)logKeyboardConfig:(id)config textToCommit:(id)commit forAcceptedCandidate:(id)candidate keyboardState:(id)state;
- (void)logKeyboardLayout:(id)layout name:(id)name;
- (void)logKeyboardOutput:(id)output keyboardConfiguration:(id)configuration trace:(id)trace forKeyboardInput:(id)input keyboardState:(id)state;
- (void)logReceivedCandidateRejected:(id)rejected;
- (void)logReceivedLastAcceptedCandidateCorrected;
- (void)logReceivedSetOriginalInput:(id)input;
- (void)logReceivedSkipHitTestForTouchEvent:(id)event forKeyboardState:(id)state;
- (void)logReceivedTextAccepted:(id)accepted;
- (void)logRefinements:(id)refinements forCandidate:(id)candidate keyboardState:(id)state;
- (void)logReplacements:(id)replacements forString:(id)string keyLayout:(id)layout;
- (void)setConfig:(id)config;
- (void)tryStartingTypologyLogForSyncToKeyboardState:(id)state;
@end

@implementation TIKeyboardInputManagerLogger

- (void)dealloc
{
  typologyStatistic = [(TIKeyboardInputManagerLogger *)self typologyStatistic];
  [typologyStatistic finalizeComputation];

  typologyStatistic2 = [(TIKeyboardInputManagerLogger *)self typologyStatistic];
  aggregateReport = [typologyStatistic2 aggregateReport];

  inputModeIdentifier = [(TIKeyboardInputManagerLogger *)self inputModeIdentifier];
  [TIKeyboardInputManagerLogger submitAggregrateDictionaryReport:aggregateReport inputModeIdentifier:inputModeIdentifier];

  [(TIKeyboardInputManagerLogger *)self backgroundWriteLogs];
  v7.receiver = self;
  v7.super_class = TIKeyboardInputManagerLogger;
  [(TIKeyboardInputManagerLogger *)&v7 dealloc];
}

- (void)backgroundWriteLogs
{
  typologyLog = [(TIKeyboardInputManagerLogger *)self typologyLog];
  typologyPreferences = [(TIKeyboardInputManagerLogger *)self typologyPreferences];
  if (typologyLog && TI_DEVICE_UNLOCKED() && [typologyPreferences typologyLoggingEnabled])
  {
    [objc_opt_class() _backgroundWriteLog:typologyLog preferences:typologyPreferences completion:&__block_literal_global_83];
  }
}

- (void)logKeyboardLayout:(id)layout name:(id)name
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D6F4F0];
  nameCopy = name;
  layoutCopy = layout;
  v9 = objc_alloc_init(v6);
  [v9 setName:nameCopy];

  [v9 setKeyboardLayout:layoutCopy];
  typologyLog = [(TIKeyboardInputManagerLogger *)self typologyLog];
  [typologyLog logRecord:v9];

  if ([(TIKeyboardInputManagerLogger *)self shouldWriteToSyslogForKeyboardState:0])
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v11 = TIOSLogFacility();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = MEMORY[0x277CCACA8];
        shortDescription = [v9 shortDescription];
        v14 = [v12 stringWithFormat:@"%s %@", "-[TIKeyboardInputManagerLogger logKeyboardLayout:name:]", shortDescription];
        *buf = 138412290;
        v16 = v14;
        _os_log_debug_impl(&dword_22CA55000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

- (void)logReceivedLastAcceptedCandidateCorrected
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D6F4F8]);
  typologyLog = [(TIKeyboardInputManagerLogger *)self typologyLog];
  [typologyLog logRecord:v3];

  typologyStatistic = [(TIKeyboardInputManagerLogger *)self typologyStatistic];
  [typologyStatistic visitRecordLastAcceptedCandidateCorrected:v3];

  if ([(TIKeyboardInputManagerLogger *)self shouldWriteToSyslogForKeyboardState:0])
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v6 = TIOSLogFacility();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = MEMORY[0x277CCACA8];
        shortDescription = [v3 shortDescription];
        v9 = [v7 stringWithFormat:@"%s %@", "-[TIKeyboardInputManagerLogger logReceivedLastAcceptedCandidateCorrected]", shortDescription];
        *buf = 138412290;
        v11 = v9;
        _os_log_debug_impl(&dword_22CA55000, v6, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

- (void)logReceivedCandidateRejected:(id)rejected
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D6F4C8];
  rejectedCopy = rejected;
  v6 = objc_alloc_init(v4);
  [v6 setCandidate:rejectedCopy];

  typologyLog = [(TIKeyboardInputManagerLogger *)self typologyLog];
  [typologyLog logRecord:v6];

  typologyStatistic = [(TIKeyboardInputManagerLogger *)self typologyStatistic];
  [typologyStatistic visitRecordCandidateRejected:v6];

  if ([(TIKeyboardInputManagerLogger *)self shouldWriteToSyslogForKeyboardState:0])
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v9 = TIOSLogFacility();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = MEMORY[0x277CCACA8];
        shortDescription = [v6 shortDescription];
        v12 = [v10 stringWithFormat:@"%s %@", "-[TIKeyboardInputManagerLogger logReceivedCandidateRejected:]", shortDescription];
        *buf = 138412290;
        v14 = v12;
        _os_log_debug_impl(&dword_22CA55000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

- (void)logReceivedTextAccepted:(id)accepted
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D6F530];
  acceptedCopy = accepted;
  v6 = objc_alloc_init(v4);
  [v6 setCandidate:acceptedCopy];

  typologyLog = [(TIKeyboardInputManagerLogger *)self typologyLog];
  [typologyLog logRecord:v6];

  typologyStatistic = [(TIKeyboardInputManagerLogger *)self typologyStatistic];
  [typologyStatistic visitRecordTextAccepted:v6];

  if ([(TIKeyboardInputManagerLogger *)self shouldWriteToSyslogForKeyboardState:0])
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v9 = TIOSLogFacility();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = MEMORY[0x277CCACA8];
        shortDescription = [v6 shortDescription];
        v12 = [v10 stringWithFormat:@"%s %@", "-[TIKeyboardInputManagerLogger logReceivedTextAccepted:]", shortDescription];
        *buf = 138412290;
        v14 = v12;
        _os_log_debug_impl(&dword_22CA55000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

- (void)logReceivedSetOriginalInput:(id)input
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D6F518];
  inputCopy = input;
  v6 = objc_alloc_init(v4);
  [v6 setOriginalInput:inputCopy];

  typologyLog = [(TIKeyboardInputManagerLogger *)self typologyLog];
  [typologyLog logRecord:v6];

  typologyStatistic = [(TIKeyboardInputManagerLogger *)self typologyStatistic];
  [typologyStatistic visitRecordSetOriginalInput:v6];

  if ([(TIKeyboardInputManagerLogger *)self shouldWriteToSyslogForKeyboardState:0])
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v9 = TIOSLogFacility();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = MEMORY[0x277CCACA8];
        shortDescription = [v6 shortDescription];
        v12 = [v10 stringWithFormat:@"%s %@", "-[TIKeyboardInputManagerLogger logReceivedSetOriginalInput:]", shortDescription];
        *buf = 138412290;
        v14 = v12;
        _os_log_debug_impl(&dword_22CA55000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

- (void)logKeyboardConfig:(id)config forAdjustedPhraseBoundaryInForwardDirection:(BOOL)direction granularity:(int)granularity keyboardState:(id)state
{
  v6 = *&granularity;
  directionCopy = direction;
  v21 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  configCopy = config;
  [(TIKeyboardInputManagerLogger *)self disableTypologyLogIfNecessaryForKeyboardState:stateCopy];
  v12 = objc_alloc_init(MEMORY[0x277D6F500]);
  [v12 setKeyboardConfig:configCopy];

  [v12 setForwardAdjustment:directionCopy];
  [v12 setGranularity:v6];
  [v12 setKeyboardState:stateCopy];
  typologyLog = [(TIKeyboardInputManagerLogger *)self typologyLog];
  [typologyLog logRecord:v12];

  typologyStatistic = [(TIKeyboardInputManagerLogger *)self typologyStatistic];
  [typologyStatistic visitRecordPhraseBoundaryAdjustment:v12];

  LODWORD(self) = [(TIKeyboardInputManagerLogger *)self shouldWriteToSyslogForKeyboardState:stateCopy];
  if (self)
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v15 = TIOSLogFacility();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = MEMORY[0x277CCACA8];
        shortDescription = [v12 shortDescription];
        v18 = [v16 stringWithFormat:@"%s %@", "-[TIKeyboardInputManagerLogger logKeyboardConfig:forAdjustedPhraseBoundaryInForwardDirection:granularity:keyboardState:]", shortDescription];
        *buf = 138412290;
        v20 = v18;
        _os_log_debug_impl(&dword_22CA55000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

- (void)logReceivedSkipHitTestForTouchEvent:(id)event forKeyboardState:(id)state
{
  v22 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  stateCopy = state;
  [(TIKeyboardInputManagerLogger *)self disableTypologyLogIfNecessaryForKeyboardState:stateCopy];
  typologyLog = [(TIKeyboardInputManagerLogger *)self typologyLog];
  v9 = [typologyLog loggedRecordOfClass:objc_opt_class()];

  if ((v9 & 1) == 0)
  {
    keyLayout = [stateCopy keyLayout];
    [(TIKeyboardInputManagerLogger *)self logKeyboardLayout:keyLayout name:&stru_283FDFAF8];
  }

  if (![eventCopy stage])
  {
    v11 = objc_alloc_init(MEMORY[0x277D6F4D8]);
    [v11 setKeyboardState:stateCopy];
    typologyLog2 = [(TIKeyboardInputManagerLogger *)self typologyLog];
    [typologyLog2 logRecord:v11];
  }

  v13 = objc_alloc_init(MEMORY[0x277D6F520]);
  [v13 setTouchEvent:eventCopy];
  [v13 setKeyboardState:stateCopy];
  typologyLog3 = [(TIKeyboardInputManagerLogger *)self typologyLog];
  [typologyLog3 logRecord:v13];

  typologyStatistic = [(TIKeyboardInputManagerLogger *)self typologyStatistic];
  [typologyStatistic visitRecordSkipHitTest:v13];

  if ([(TIKeyboardInputManagerLogger *)self shouldWriteToSyslogForKeyboardState:stateCopy])
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v16 = TIOSLogFacility();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = MEMORY[0x277CCACA8];
        shortDescription = [v13 shortDescription];
        v19 = [v17 stringWithFormat:@"%s %@", "-[TIKeyboardInputManagerLogger logReceivedSkipHitTestForTouchEvent:forKeyboardState:]", shortDescription];
        *buf = 138412290;
        v21 = v19;
        _os_log_debug_impl(&dword_22CA55000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

- (void)logHitKeyCode:(int64_t)code forTouchEvent:(id)event keyboardState:(id)state
{
  v24 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  stateCopy = state;
  [(TIKeyboardInputManagerLogger *)self disableTypologyLogIfNecessaryForKeyboardState:stateCopy];
  typologyLog = [(TIKeyboardInputManagerLogger *)self typologyLog];
  v11 = [typologyLog loggedRecordOfClass:objc_opt_class()];

  if ((v11 & 1) == 0)
  {
    keyLayout = [stateCopy keyLayout];
    [(TIKeyboardInputManagerLogger *)self logKeyboardLayout:keyLayout name:&stru_283FDFAF8];
  }

  if (![eventCopy stage])
  {
    v13 = objc_alloc_init(MEMORY[0x277D6F4D8]);
    [v13 setKeyboardState:stateCopy];
    typologyLog2 = [(TIKeyboardInputManagerLogger *)self typologyLog];
    [typologyLog2 logRecord:v13];
  }

  v15 = objc_alloc_init(MEMORY[0x277D6F4E0]);
  [v15 setKeyCode:code];
  [v15 setTouchEvent:eventCopy];
  [v15 setKeyboardState:stateCopy];
  typologyLog3 = [(TIKeyboardInputManagerLogger *)self typologyLog];
  [typologyLog3 logRecord:v15];

  typologyStatistic = [(TIKeyboardInputManagerLogger *)self typologyStatistic];
  [typologyStatistic visitRecordHitTest:v15];

  if ([(TIKeyboardInputManagerLogger *)self shouldWriteToSyslogForKeyboardState:stateCopy])
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v18 = TIOSLogFacility();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v19 = MEMORY[0x277CCACA8];
        shortDescription = [v15 shortDescription];
        v21 = [v19 stringWithFormat:@"%s %@", "-[TIKeyboardInputManagerLogger logHitKeyCode:forTouchEvent:keyboardState:]", shortDescription];
        *buf = 138412290;
        v23 = v21;
        _os_log_debug_impl(&dword_22CA55000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

- (void)logRefinements:(id)refinements forCandidate:(id)candidate keyboardState:(id)state
{
  v20 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  candidateCopy = candidate;
  refinementsCopy = refinements;
  [(TIKeyboardInputManagerLogger *)self disableTypologyLogIfNecessaryForKeyboardState:stateCopy];
  v11 = objc_alloc_init(MEMORY[0x277D6F508]);
  [v11 setCandidate:candidateCopy];

  [v11 setRefinements:refinementsCopy];
  [v11 setKeyboardState:stateCopy];
  typologyLog = [(TIKeyboardInputManagerLogger *)self typologyLog];
  [typologyLog logRecord:v11];

  typologyStatistic = [(TIKeyboardInputManagerLogger *)self typologyStatistic];
  [typologyStatistic visitRecordRefinements:v11];

  LODWORD(self) = [(TIKeyboardInputManagerLogger *)self shouldWriteToSyslogForKeyboardState:stateCopy];
  if (self)
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v14 = TIOSLogFacility();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = MEMORY[0x277CCACA8];
        shortDescription = [v11 shortDescription];
        v17 = [v15 stringWithFormat:@"%s %@", "-[TIKeyboardInputManagerLogger logRefinements:forCandidate:keyboardState:]", shortDescription];
        *buf = 138412290;
        v19 = v17;
        _os_log_debug_impl(&dword_22CA55000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

- (void)logReplacements:(id)replacements forString:(id)string keyLayout:(id)layout
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277D6F510];
  layoutCopy = layout;
  stringCopy = string;
  replacementsCopy = replacements;
  v12 = objc_alloc_init(v8);
  [v12 setCandidates:replacementsCopy];

  [v12 setString:stringCopy];
  [v12 setKeyLayout:layoutCopy];

  typologyLog = [(TIKeyboardInputManagerLogger *)self typologyLog];
  [typologyLog logRecord:v12];

  typologyStatistic = [(TIKeyboardInputManagerLogger *)self typologyStatistic];
  [typologyStatistic visitRecordReplacements:v12];

  if ([(TIKeyboardInputManagerLogger *)self shouldWriteToSyslogForKeyboardState:0])
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v15 = TIOSLogFacility();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = MEMORY[0x277CCACA8];
        shortDescription = [v12 shortDescription];
        v18 = [v16 stringWithFormat:@"%s %@", "-[TIKeyboardInputManagerLogger logReplacements:forString:keyLayout:]", shortDescription];
        *buf = 138412290;
        v20 = v18;
        _os_log_debug_impl(&dword_22CA55000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

- (void)logKeyboardConfig:(id)config textToCommit:(id)commit forAcceptedCandidate:(id)candidate keyboardState:(id)state
{
  v25 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  candidateCopy = candidate;
  commitCopy = commit;
  configCopy = config;
  [(TIKeyboardInputManagerLogger *)self disableTypologyLogIfNecessaryForKeyboardState:stateCopy];
  if (candidateCopy)
  {
    v14 = objc_alloc_init(MEMORY[0x277D6F4D8]);
    [v14 setKeyboardState:stateCopy];
    typologyLog = [(TIKeyboardInputManagerLogger *)self typologyLog];
    [typologyLog logRecord:v14];
  }

  v16 = objc_alloc_init(MEMORY[0x277D6F4B8]);
  [v16 setKeyboardConfig:configCopy];

  [v16 setTextToCommit:commitCopy];
  [v16 setCandidate:candidateCopy];

  [v16 setKeyboardState:stateCopy];
  typologyLog2 = [(TIKeyboardInputManagerLogger *)self typologyLog];
  [typologyLog2 logRecord:v16];

  typologyStatistic = [(TIKeyboardInputManagerLogger *)self typologyStatistic];
  [typologyStatistic visitRecordAcceptedCandidate:v16];

  if ([(TIKeyboardInputManagerLogger *)self shouldWriteToSyslogForKeyboardState:stateCopy])
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v19 = TIOSLogFacility();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v20 = MEMORY[0x277CCACA8];
        shortDescription = [v16 shortDescription];
        v22 = [v20 stringWithFormat:@"%s %@", "-[TIKeyboardInputManagerLogger logKeyboardConfig:textToCommit:forAcceptedCandidate:keyboardState:]", shortDescription];
        *buf = 138412290;
        v24 = v22;
        _os_log_debug_impl(&dword_22CA55000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

- (void)logCandidateResultSet:(id)set trace:(id)trace forKeyboardState:(id)state requestToken:(id)token
{
  v23 = *MEMORY[0x277D85DE8];
  traceCopy = trace;
  tokenCopy = token;
  stateCopy = state;
  setCopy = set;
  [(TIKeyboardInputManagerLogger *)self disableTypologyLogIfNecessaryForKeyboardState:stateCopy];
  v14 = objc_alloc_init(MEMORY[0x277D6F4D0]);
  [v14 setResultSet:setCopy];

  [v14 setKeyboardState:stateCopy];
  [v14 setRequestToken:tokenCopy];

  typologyLog = [(TIKeyboardInputManagerLogger *)self typologyLog];
  [typologyLog logRecord:v14 trace:traceCopy];

  typologyStatistic = [(TIKeyboardInputManagerLogger *)self typologyStatistic];
  [typologyStatistic visitRecordCandidateResultSet:v14];

  LODWORD(typologyStatistic) = [(TIKeyboardInputManagerLogger *)self shouldWriteToSyslogForKeyboardState:stateCopy];
  if (typologyStatistic)
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v17 = TIOSLogFacility();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v18 = MEMORY[0x277CCACA8];
        shortDescription = [v14 shortDescription];
        v20 = [v18 stringWithFormat:@"%s %@", "-[TIKeyboardInputManagerLogger logCandidateResultSet:trace:forKeyboardState:requestToken:]", shortDescription];
        *buf = 138412290;
        v22 = v20;
        _os_log_debug_impl(&dword_22CA55000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    if ([traceCopy length])
    {
      [(TIKeyboardInputManagerLogger *)self _tryWriteToSyslogWithTrace:traceCopy];
    }
  }
}

- (void)logAutocorrections:(id)autocorrections trace:(id)trace forKeyboardState:(id)state requestToken:(id)token
{
  v23 = *MEMORY[0x277D85DE8];
  traceCopy = trace;
  tokenCopy = token;
  stateCopy = state;
  autocorrectionsCopy = autocorrections;
  [(TIKeyboardInputManagerLogger *)self disableTypologyLogIfNecessaryForKeyboardState:stateCopy];
  v14 = objc_alloc_init(MEMORY[0x277D6F4C0]);
  [v14 setAutocorrections:autocorrectionsCopy];

  [v14 setListUIDisplayed:{objc_msgSend(stateCopy, "autocorrectionListUIDisplayed")}];
  [v14 setKeyboardState:stateCopy];
  [v14 setRequestToken:tokenCopy];

  typologyLog = [(TIKeyboardInputManagerLogger *)self typologyLog];
  [typologyLog logRecord:v14 trace:traceCopy];

  typologyStatistic = [(TIKeyboardInputManagerLogger *)self typologyStatistic];
  [typologyStatistic visitRecordAutocorrections:v14];

  LODWORD(typologyStatistic) = [(TIKeyboardInputManagerLogger *)self shouldWriteToSyslogForKeyboardState:stateCopy];
  if (typologyStatistic)
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v17 = TIOSLogFacility();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v18 = MEMORY[0x277CCACA8];
        shortDescription = [v14 shortDescription];
        v20 = [v18 stringWithFormat:@"%s %@", "-[TIKeyboardInputManagerLogger logAutocorrections:trace:forKeyboardState:requestToken:]", shortDescription];
        *buf = 138412290;
        v22 = v20;
        _os_log_debug_impl(&dword_22CA55000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    if ([traceCopy length])
    {
      [(TIKeyboardInputManagerLogger *)self _tryWriteToSyslogWithTrace:traceCopy];
    }
  }
}

- (void)logKeyboardOutput:(id)output keyboardConfiguration:(id)configuration trace:(id)trace forKeyboardInput:(id)input keyboardState:(id)state
{
  v29 = *MEMORY[0x277D85DE8];
  traceCopy = trace;
  inputCopy = input;
  stateCopy = state;
  configurationCopy = configuration;
  outputCopy = output;
  [(TIKeyboardInputManagerLogger *)self disableTypologyLogIfNecessaryForKeyboardState:stateCopy];
  touchEvent = [inputCopy touchEvent];

  if (!touchEvent)
  {
    v18 = objc_alloc_init(MEMORY[0x277D6F4D8]);
    [v18 setKeyboardState:stateCopy];
    typologyLog = [(TIKeyboardInputManagerLogger *)self typologyLog];
    [typologyLog logRecord:v18];
  }

  v20 = objc_alloc_init(MEMORY[0x277D6F4E8]);
  [v20 setOutput:outputCopy];

  [v20 setKeyboardConfig:configurationCopy];
  [v20 setKeyboardState:stateCopy];
  [v20 setInput:inputCopy];
  typologyLog2 = [(TIKeyboardInputManagerLogger *)self typologyLog];
  [typologyLog2 logRecord:v20 trace:traceCopy];

  typologyStatistic = [(TIKeyboardInputManagerLogger *)self typologyStatistic];
  [typologyStatistic visitRecordKeyboardInput:v20];

  if ([(TIKeyboardInputManagerLogger *)self shouldWriteToSyslogForKeyboardState:stateCopy])
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v23 = TIOSLogFacility();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v24 = MEMORY[0x277CCACA8];
        shortDescription = [v20 shortDescription];
        v26 = [v24 stringWithFormat:@"%s %@", "-[TIKeyboardInputManagerLogger logKeyboardOutput:keyboardConfiguration:trace:forKeyboardInput:keyboardState:]", shortDescription];
        *buf = 138412290;
        v28 = v26;
        _os_log_debug_impl(&dword_22CA55000, v23, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    if ([traceCopy length])
    {
      [(TIKeyboardInputManagerLogger *)self _tryWriteToSyslogWithTrace:traceCopy];
    }
  }
}

- (void)logKeyboardConfig:(id)config forSyncToKeyboardState:(id)state
{
  v21 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  configCopy = config;
  [(TIKeyboardInputManagerLogger *)self disableTypologyLogIfNecessaryForKeyboardState:stateCopy];
  [(TIKeyboardInputManagerLogger *)self tryStartingTypologyLogForSyncToKeyboardState:stateCopy];
  v8 = objc_alloc_init(MEMORY[0x277D6F4D8]);
  [v8 setKeyboardState:stateCopy];
  typologyLog = [(TIKeyboardInputManagerLogger *)self typologyLog];
  [typologyLog logRecord:v8];

  v10 = objc_alloc_init(MEMORY[0x277D6F528]);
  [v10 setKeyboardConfig:configCopy];

  [v10 setKeyboardState:stateCopy];
  inputModeIdentifier = [(TIKeyboardInputManagerLogger *)self inputModeIdentifier];

  if (!inputModeIdentifier)
  {
    inputMode = [stateCopy inputMode];
    [(TIKeyboardInputManagerLogger *)self setInputModeIdentifier:inputMode];
  }

  typologyLog2 = [(TIKeyboardInputManagerLogger *)self typologyLog];
  [typologyLog2 logRecord:v10];

  typologyStatistic = [(TIKeyboardInputManagerLogger *)self typologyStatistic];
  [typologyStatistic visitRecordSync:v10];

  if ([(TIKeyboardInputManagerLogger *)self shouldWriteToSyslogForKeyboardState:stateCopy])
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v15 = TIOSLogFacility();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = MEMORY[0x277CCACA8];
        shortDescription = [v10 shortDescription];
        v18 = [v16 stringWithFormat:@"%s %@", "-[TIKeyboardInputManagerLogger logKeyboardConfig:forSyncToKeyboardState:]", shortDescription];
        *buf = 138412290;
        v20 = v18;
        _os_log_debug_impl(&dword_22CA55000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

- (void)_tryWriteToSyslogWithTrace:(id)trace
{
  traceCopy = trace;
  if (TICanLogMessageAtLevel_onceToken != -1)
  {
    v5 = traceCopy;
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    traceCopy = v5;
  }

  if (TICanLogMessageAtLevel_logLevel >= 3)
  {
    v4 = traceCopy;
    [traceCopy enumerateLinesUsingBlock:&__block_literal_global_101];
    traceCopy = v4;
  }
}

void __59__TIKeyboardInputManagerLogger__tryWriteToSyslogWithTrace___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (TICanLogMessageAtLevel_onceToken != -1)
  {
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
  }

  if (TICanLogMessageAtLevel_logLevel >= 3)
  {
    v3 = TIOSLogFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = MEMORY[0x277CCACA8];
      v5 = [(__CFString *)v2 length];
      v6 = @" ";
      if (v5)
      {
        v6 = v2;
      }

      v7 = [v4 stringWithFormat:@"%s %@\n", "-[TIKeyboardInputManagerLogger _tryWriteToSyslogWithTrace:]_block_invoke", v6];
      *buf = 138412290;
      v9 = v7;
      _os_log_debug_impl(&dword_22CA55000, v3, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }
}

- (void)setConfig:(id)config
{
  configCopy = config;
  typologyLog = [(TIKeyboardInputManagerLogger *)self typologyLog];
  [typologyLog setConfig:configCopy];
}

- (id)writeToFile
{
  typologyLog = [(TIKeyboardInputManagerLogger *)self typologyLog];
  typologyPreferences = [(TIKeyboardInputManagerLogger *)self typologyPreferences];
  v5 = typologyPreferences;
  if (typologyLog && [typologyPreferences typologyLoggingEnabled] && ((TI_DEVICE_UNLOCKED() & 1) != 0 || -[TIKeyboardInputManagerLogger isInternalDeviceWithForcedTypologyLoggingForTesting](self, "isInternalDeviceWithForcedTypologyLoggingForTesting")))
  {
    typologyDirectoryURL = [v5 typologyDirectoryURL];
    v7 = [TIKeyboardInputManagerLogger _writeToFileWithTypologyLog:typologyLog directoryURL:typologyDirectoryURL requireDeviceUnlocked:[(TIKeyboardInputManagerLogger *)self isInternalDeviceWithForcedTypologyLoggingForTesting]^ 1];
    typologyLog2 = [(TIKeyboardInputManagerLogger *)self typologyLog];
    [typologyLog2 setDelegate:0];

    [(TIKeyboardInputManagerLogger *)self setTypologyLog:0];
    [(TIKeyboardInputManagerLogger *)self setSbsOverrideLoggingCapture:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isInternalDeviceWithForcedTypologyLoggingForTesting
{
  typologyPreferences = [(TIKeyboardInputManagerLogger *)self typologyPreferences];
  isInternalDeviceWithForcedTypologyLoggingForTesting = [typologyPreferences isInternalDeviceWithForcedTypologyLoggingForTesting];

  return isInternalDeviceWithForcedTypologyLoggingForTesting;
}

- (void)didReachMaximumEntries:(id)entries
{
  entriesCopy = entries;
  typologyPreferences = [(TIKeyboardInputManagerLogger *)self typologyPreferences];
  typologyLog = [(TIKeyboardInputManagerLogger *)self typologyLog];
  if (typologyLog)
  {
    typologyLog3 = typologyLog;
    typologyLog2 = [(TIKeyboardInputManagerLogger *)self typologyLog];
    if (typologyLog2 == entriesCopy)
    {
      persistenceStrategy = [typologyPreferences persistenceStrategy];

      if (persistenceStrategy != 1)
      {
        goto LABEL_6;
      }

      typologyLog3 = [(TIKeyboardInputManagerLogger *)self typologyLog];
      [typologyLog3 setDelegate:0];
      v19 = objc_alloc(MEMORY[0x277D6F4B0]);
      uuid = [typologyLog3 uuid];
      partIndex = [typologyLog3 partIndex];
      date = [typologyLog3 date];
      systemVersion = [typologyLog3 systemVersion];
      buildVersion = [typologyLog3 buildVersion];
      clientIdentifier = [typologyLog3 clientIdentifier];
      config = [typologyLog3 config];
      v16 = partIndex + 1;
      v17 = uuid;
      typologyLog2 = [v19 initWithUUID:uuid partIndex:v16 date:date systemVersion:systemVersion buildVersion:buildVersion clientIdentifier:clientIdentifier config:config];

      [(TIKeyboardInputManagerLogger *)self setTypologyLog:typologyLog2];
      typologyLog4 = [(TIKeyboardInputManagerLogger *)self typologyLog];
      [typologyLog4 setDelegate:self];

      [objc_opt_class() _backgroundWriteLog:typologyLog3 preferences:typologyPreferences completion:&__block_literal_global_16865];
    }
  }

LABEL_6:
}

- (void)disableTypologyLogIfNecessaryForKeyboardState:(id)state
{
  stateCopy = state;
  typologyLog = [(TIKeyboardInputManagerLogger *)self typologyLog];

  if (typologyLog && ![(TIKeyboardInputManagerLogger *)self allowTypologyLogForKeyboardState:stateCopy])
  {
    typologyLog2 = [(TIKeyboardInputManagerLogger *)self typologyLog];
    [typologyLog2 setDelegate:0];

    [(TIKeyboardInputManagerLogger *)self setTypologyLog:0];
    [(TIKeyboardInputManagerLogger *)self setSbsOverrideLoggingCapture:0];
  }
}

- (void)tryStartingTypologyLogForSyncToKeyboardState:(id)state
{
  stateCopy = state;
  typologyLog = [(TIKeyboardInputManagerLogger *)self typologyLog];

  if (!typologyLog && [(TIKeyboardInputManagerLogger *)self allowTypologyLogForKeyboardState:stateCopy])
  {
    typologyPreferences = [(TIKeyboardInputManagerLogger *)self typologyPreferences];
    typologyLoggingEnabledByProfile = [typologyPreferences typologyLoggingEnabledByProfile];

    if (typologyLoggingEnabledByProfile)
    {
      v7 = objc_alloc_init(TIStatusBarStyleOverrideLoggingCapture);
      [(TIKeyboardInputManagerLogger *)self setSbsOverrideLoggingCapture:v7];
    }

    v8 = objc_alloc_init(MEMORY[0x277D6F4B0]);
    [(TIKeyboardInputManagerLogger *)self setTypologyLog:v8];

    typologyLog2 = [(TIKeyboardInputManagerLogger *)self typologyLog];
    [typologyLog2 setDelegate:self];
  }
}

- (BOOL)allowTypologyLogForKeyboardState:(id)state
{
  stateCopy = state;
  v5 = stateCopy;
  if (!stateCopy)
  {
    goto LABEL_9;
  }

  if ([stateCopy secureTextEntry])
  {
    goto LABEL_3;
  }

  clientIdentifier = [v5 clientIdentifier];
  if (objc_msgSend_isEqualToString_(clientIdentifier))
  {
    wordLearningEnabled = [v5 wordLearningEnabled];

    if ((wordLearningEnabled & 1) == 0)
    {
LABEL_3:
      [(TIKeyboardInputManagerLogger *)self setHadSecureText:1];
      goto LABEL_9;
    }
  }

  else
  {
  }

  if (![(TIKeyboardInputManagerLogger *)self hadSecureText])
  {
    typologyPreferences = [(TIKeyboardInputManagerLogger *)self typologyPreferences];
    typologyLoggingEnabled = [typologyPreferences typologyLoggingEnabled];

    goto LABEL_10;
  }

LABEL_9:
  typologyLoggingEnabled = 0;
LABEL_10:

  return typologyLoggingEnabled;
}

- (BOOL)shouldWriteToSyslogForKeyboardState:(id)state
{
  stateCopy = state;
  if (TICanLogMessageAtLevel_onceToken != -1)
  {
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
  }

  if (TICanLogMessageAtLevel_logLevel < 2)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [stateCopy secureTextEntry] ^ 1;
  }

  return v4;
}

- (TIKeyboardInputManagerLogger)initWithTypologyPreferences:(id)preferences
{
  v15[1] = *MEMORY[0x277D85DE8];
  preferencesCopy = preferences;
  v14.receiver = self;
  v14.super_class = TIKeyboardInputManagerLogger;
  v6 = [(TIKeyboardInputManagerLogger *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_typologyPreferences, preferences);
    statistic = [MEMORY[0x277D6F540] statistic];
    v15[0] = statistic;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];

    v10 = [MEMORY[0x277D6F538] statisticCompositeWithStatistics:v9];
    typologyStatistic = v7->_typologyStatistic;
    v7->_typologyStatistic = v10;
  }

  typologyStatistic = [(TIKeyboardInputManagerLogger *)v7 typologyStatistic];
  [typologyStatistic prepareForComputation];

  return v7;
}

+ (void)pruneTypologyLogsAtDirectoryURL:(id)l toMaxNumBytes:(int64_t)bytes expirationInterval:(double)interval satisfyingPredicate:(id)predicate
{
  v44[2] = *MEMORY[0x277D85DE8];
  lCopy = l;
  predicateCopy = predicate;
  v11 = *MEMORY[0x277CBE7B0];
  v12 = *MEMORY[0x277CBE838];
  v44[0] = *MEMORY[0x277CBE7B0];
  v44[1] = v12;
  v33 = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v31 = v13;
  v32 = lCopy;
  v15 = [defaultManager contentsOfDirectoryAtURL:lCopy includingPropertiesForKeys:v13 options:4 error:0];

  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __117__TIKeyboardInputManagerLogger_pruneTypologyLogsAtDirectoryURL_toMaxNumBytes_expirationInterval_satisfyingPredicate___block_invoke;
  v41[3] = &unk_2787325A8;
  v30 = predicateCopy;
  v42 = v30;
  v29 = [v15 indexesOfObjectsPassingTest:v41];
  v16 = [v15 objectsAtIndexes:?];

  v17 = [v16 sortedArrayUsingComparator:&__block_literal_global_97_16891];

  v34 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-interval];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = 0;
    v22 = *v38;
    do
    {
      v23 = 0;
      do
      {
        if (*v38 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v37 + 1) + 8 * v23);
        v36 = 0;
        [v24 getResourceValue:&v36 forKey:v11 error:0];
        v25 = v36;
        v26 = v25;
        if (v21 > bytes || ([v25 earlierDate:v34], v27 = objc_claimAutoreleasedReturnValue(), v27, v27 == v26))
        {
          defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
          [defaultManager2 removeItemAtURL:v24 error:0];
        }

        else
        {
          v35 = 0;
          [v24 getResourceValue:&v35 forKey:v33 error:0];
          v21 += [v35 integerValue];
        }

        ++v23;
      }

      while (v20 != v23);
      v20 = [v18 countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v20);
  }
}

uint64_t __117__TIKeyboardInputManagerLogger_pruneTypologyLogsAtDirectoryURL_toMaxNumBytes_expirationInterval_satisfyingPredicate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = 0;
  v4 = *MEMORY[0x277CBE7B0];
  v5 = a3;
  [a2 getResourceValue:&v10 forKey:v4 error:0];
  v9 = 0;
  v6 = v10;
  [v5 getResourceValue:&v9 forKey:v4 error:0];

  v7 = [v9 compare:v6];
  return v7;
}

+ (void)submitAggregrateDictionaryReport:(id)report inputModeIdentifier:(id)identifier
{
  reportCopy = report;
  identifierCopy = identifier;
  if (TI_DEVICE_UNLOCKED_SINCE_BOOT() && [identifierCopy length])
  {
    v7 = reportCopy;
    v8 = identifierCopy;
    TIDispatchAsync();
  }
}

void __85__TIKeyboardInputManagerLogger_submitAggregrateDictionaryReport_inputModeIdentifier___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __85__TIKeyboardInputManagerLogger_submitAggregrateDictionaryReport_inputModeIdentifier___block_invoke_2;
  v2[3] = &unk_278732580;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 enumerateKeysAndObjectsUsingBlock:v2];
}

void __85__TIKeyboardInputManagerLogger_submitAggregrateDictionaryReport_inputModeIdentifier___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v4 = a3;
  if ([v6 length])
  {
    v5 = TIStatisticGetKeyForInputMode();
    if (v5)
    {
      if ([v6 containsString:@".distr"])
      {
        [v4 doubleValue];
        TIStatisticDistributionPushValue();
      }

      else
      {
        [v4 longLongValue];
        TIStatisticScalarAddValue();
      }
    }
  }
}

+ (void)_backgroundPruneLogsWithPreferences:(id)preferences
{
  preferencesCopy = preferences;
  typologyDirectoryURL = [preferencesCopy typologyDirectoryURL];
  [preferencesCopy maxBytesPersistedTypologyRecords];
  [preferencesCopy maxBytesPersistedTypologyTraceLogs];
  [preferencesCopy maxLifetimeInterval];

  v5 = _TIQueueLow();
  v7 = typologyDirectoryURL;
  v6 = typologyDirectoryURL;
  TIDispatchAsync();
}

double *__68__TIKeyboardInputManagerLogger__backgroundPruneLogsWithPreferences___block_invoke(double *result)
{
  v1 = result;
  v2 = *(result + 5);
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    result = [TIKeyboardInputManagerLogger pruneTypologyLogsAtDirectoryURL:*(result + 4) toMaxNumBytes:v2 expirationInterval:&__block_literal_global_87_16900 satisfyingPredicate:result[6]];
  }

  if (*(v1 + 7) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = *(v1 + 4);
    v4 = v1[6];

    return [TIKeyboardInputManagerLogger pruneTypologyLogsAtDirectoryURL:"pruneTypologyLogsAtDirectoryURL:toMaxNumBytes:expirationInterval:satisfyingPredicate:" toMaxNumBytes:v3 expirationInterval:v4 satisfyingPredicate:?];
  }

  return result;
}

uint64_t __68__TIKeyboardInputManagerLogger__backgroundPruneLogsWithPreferences___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D6F4B0];
  v3 = [a2 lastPathComponent];
  v4 = [v2 isTraceLogFilename:v3];

  return v4;
}

uint64_t __68__TIKeyboardInputManagerLogger__backgroundPruneLogsWithPreferences___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D6F4B0];
  v3 = [a2 lastPathComponent];
  v4 = [v2 isTypologyLogFilename:v3];

  return v4;
}

+ (void)_backgroundWriteLog:(id)log preferences:(id)preferences completion:(id)completion
{
  logCopy = log;
  preferencesCopy = preferences;
  completionCopy = completion;
  v10 = _TIQueueLow();
  v14 = preferencesCopy;
  v15 = logCopy;
  v16 = completionCopy;
  v11 = completionCopy;
  v12 = logCopy;
  v13 = preferencesCopy;
  TIDispatchAsync();
}

void __75__TIKeyboardInputManagerLogger__backgroundWriteLog_preferences_completion___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) typologyDirectoryURL];
  v2 = [TIKeyboardInputManagerLogger _writeToFileWithTypologyLog:*(a1 + 40) directoryURL:v3 requireDeviceUnlocked:1];
  (*(*(a1 + 48) + 16))();
}

+ (void)_writeHumanReadableTraceForTypologyLog:(id)log directoryURL:(id)l
{
  v37[1] = *MEMORY[0x277D85DE8];
  logCopy = log;
  lCopy = l;
  if (TI_DEVICE_UNLOCKED() && [objc_opt_class() createTypologyDirectoryAtURL:lCopy])
  {
    v7 = MEMORY[0x277CCAB68];
    date = [logCopy date];
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v10 = [date descriptionWithLocale:currentLocale];
    v11 = [v7 stringWithFormat:@"Date: %@\n", v10];

    systemVersion = [logCopy systemVersion];
    buildVersion = [logCopy buildVersion];
    [v11 appendFormat:@"iOS version: %@ (%@)\n", systemVersion, buildVersion];

    filename = [logCopy filename];
    v15 = [filename stringByReplacingOccurrencesOfString:@"typology" withString:@"typologyTrace" options:8 range:{0, objc_msgSend(filename, "length")}];

    v16 = [v15 stringByReplacingOccurrencesOfString:@".plist" withString:@".log" options:12 range:{0, objc_msgSend(v15, "length")}];

    v17 = [lCopy URLByAppendingPathComponent:v16];
    v36 = *MEMORY[0x277CCA1B0];
    v37[0] = *MEMORY[0x277CCA190];
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [v17 path];
    v21 = [v11 dataUsingEncoding:4];
    v22 = [defaultManager createFileAtPath:path contents:v21 attributes:v18];

    if (v22)
    {
      v33 = 0;
      v23 = [MEMORY[0x277CCA9F8] fileHandleForWritingToURL:v17 error:&v33];
      v24 = v33;
      v25 = v24;
      if (v23 && !v24)
      {
        [v23 seekToEndOfFile];
        [v11 setString:&stru_283FDFAF8];
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __84__TIKeyboardInputManagerLogger__writeHumanReadableTraceForTypologyLog_directoryURL___block_invoke;
        v30[3] = &unk_278732510;
        v26 = v11;
        v31 = v26;
        v32 = v23;
        v27 = v23;
        [logCopy enumerateTraceRecordsWithBlock:v30];
        v28 = [v26 dataUsingEncoding:4];
        [v27 writeData:v28];

        [v26 setString:&stru_283FDFAF8];
        [v27 closeFile];

LABEL_12:
        goto LABEL_13;
      }
    }

    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    v27 = TIOSLogFacility();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s failed to write trace", "+[TIKeyboardInputManagerLogger _writeHumanReadableTraceForTypologyLog:directoryURL:]"];
      *buf = 138412290;
      v35 = v29;
      _os_log_debug_impl(&dword_22CA55000, v27, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    goto LABEL_12;
  }

LABEL_13:
}

void __84__TIKeyboardInputManagerLogger__writeHumanReadableTraceForTypologyLog_directoryURL___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = [v8 logText];
  [v4 appendString:v5];

  [*(a1 + 32) appendString:@"\n"];
  if ([*(a1 + 32) length] >= 0x7D1)
  {
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) dataUsingEncoding:4];
    [v6 writeData:v7];

    [*(a1 + 32) setString:&stru_283FDFAF8];
  }

  objc_autoreleasePoolPop(v3);
}

+ (id)accessibilityConfigInfo
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.Accessibility"];
  v3 = [v2 objectForKey:@"AccessibilityEnabled"];
  bOOLValue = [v3 BOOLValue];

  if (bOOLValue)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v6 = [v2 BOOLForKey:@"FullKeyboardAccessEnabled"];
    v7 = [MEMORY[0x277CCABB0] numberWithBool:v6];
    [v5 setObject:v7 forKey:@"FullKeyboardAccessEnabled"];

    v8 = [v2 BOOLForKey:@"VoiceOverTouchUIEnabled"];
    v9 = [MEMORY[0x277CCABB0] numberWithBool:v8];
    [v5 setObject:v9 forKey:@"VoiceOverTouchUIEnabled"];

    v10 = [v2 BOOLForKey:@"VoiceOverTouchEnabled"];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:v10];
    [v5 setObject:v11 forKey:@"VoiceOverTouchEnabled"];

    v12 = [v2 BOOLForKey:@"VOTIsRunningKey"];
    v13 = [MEMORY[0x277CCABB0] numberWithBool:v12];
    [v5 setObject:v13 forKey:@"VOTIsRunningKey"];

    v14 = [v2 integerForKey:@"VoiceOverTouchTypingMode"];
    v15 = @"Standard Typing";
    if (v14 == 2)
    {
      v15 = @"Direct Touch Typing";
    }

    if (v14 == 1)
    {
      v16 = @"Touch Typing";
    }

    else
    {
      v16 = v15;
    }

    [v5 setObject:v16 forKey:@"VoiceOverTouchTypingMode"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_writeToFileWithTypologyLog:(id)log directoryURL:(id)l requireDeviceUnlocked:(BOOL)unlocked
{
  unlockedCopy = unlocked;
  v26[2] = *MEMORY[0x277D85DE8];
  logCopy = log;
  lCopy = l;
  if (logCopy && (!unlockedCopy || TI_DEVICE_UNLOCKED()) && [objc_opt_class() createTypologyDirectoryAtURL:lCopy])
  {
    recommendedTypologyLogFilename = [logCopy recommendedTypologyLogFilename];
    v11 = [lCopy URLByAppendingPathComponent:recommendedTypologyLogFilename];

    recommendedTraceLogFilename = [logCopy recommendedTraceLogFilename];
    v13 = [lCopy URLByAppendingPathComponent:recommendedTraceLogFilename];

    accessibilityConfigInfo = [self accessibilityConfigInfo];
    v23 = 0;
    v15 = [logCopy writeToTypologyLogFile:v11 andTraceLogFile:v13 withAccessibilityInfo:accessibilityConfigInfo error:&v23];
    v16 = v23;

    if (v15)
    {
      v26[0] = v11;
      v26[1] = v13;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
    }

    else
    {
      if (TICanLogMessageAtLevel_onceToken != -1)
      {
        dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
      }

      v18 = TIOSLogFacility();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v20 = MEMORY[0x277CCACA8];
        filename = [logCopy filename];
        v22 = [v20 stringWithFormat:@"%s Error serializing and writing property list %@: %@", "+[TIKeyboardInputManagerLogger _writeToFileWithTypologyLog:directoryURL:requireDeviceUnlocked:]", filename, v16];
        *buf = 138412290;
        v25 = v22;
        _os_log_debug_impl(&dword_22CA55000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (BOOL)createTypologyDirectoryAtURL:(id)l
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAA00];
  lCopy = l;
  defaultManager = [v3 defaultManager];
  v11 = 0;
  v6 = [defaultManager createDirectoryAtURL:lCopy withIntermediateDirectories:1 attributes:0 error:&v11];

  v7 = v11;
  if ((v6 & 1) == 0)
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    v8 = TIOSLogFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s failed to create typology directory: %@", "+[TIKeyboardInputManagerLogger createTypologyDirectoryAtURL:]", v7];
      *buf = 138412290;
      v13 = v10;
      _os_log_debug_impl(&dword_22CA55000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  return v6;
}

@end