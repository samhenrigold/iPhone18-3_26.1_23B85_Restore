@interface CSMitigationManager
+ (CSMitigationManager)sharedInstance;
- (BOOL)checkKnownViolationByProcess:(id)process withStartTime:(double)time withEndTime:(double)endTime;
- (BOOL)checkPenaltyBoxProcessesLifecycle:(id)lifecycle withMitigationReason:(unsigned __int8)reason;
- (BOOL)policyMitigationsEnabled;
- (id)_init;
- (id)getProcessPathForPID:(int)d;
- (int)killProcess:(id)process pid:(unint64_t)pid coalitionID:(unint64_t)d issueType:(unsigned __int8)type withMitigationDecisionType:(unsigned __int8 *)decisionType withMitigationDecisionReason:(unsigned __int8 *)reason withError:(id *)error;
- (int)putIntoPenaltyBoxForCSProcess:(id)process coalitionID:(unint64_t)d withMitigationDecisionType:(unsigned __int8 *)type withMitigationDecisionReason:(unsigned __int8 *)reason withError:(id *)error;
- (int)removeProcessFromPenaltyBox:(id)box forReason:(unsigned __int8)reason;
- (int64_t)penaltyBoxDurationMinsForProcess:(id)process;
- (unsigned)decideMitigation:(id)mitigation withCoalitionName:(id)name withReason:(unsigned __int8 *)reason;
- (void)_init;
- (void)checkForTrials;
- (void)checkOverridesForProcess:(id)process penaltyBoxDuration:(int64_t *)duration cpuThreshold:(int64_t *)threshold timeWindow:(int64_t *)window;
- (void)checkPenaltyBoxProcessesExpiration;
- (void)clearTargetProcessState;
- (void)dayChangedNotificationReceived:(id)received;
- (void)forceCPUViolationForProcess:(id)process withHandler:(id)handler;
- (void)forceMitigation:(id)mitigation forProcess:(id)process withPercentage:(id)percentage withSeconds:(id)seconds withPenaltyBoxDuration:(id)duration withHandler:(id)handler;
- (void)generateIPSFileForProcess:(id)process;
- (void)getMitigationTypeString:(char *)string withStringSize:(unint64_t)size withMitigationType:(int64_t)type withPenaltyBoxEndTime:(unint64_t)time;
- (void)handleCPUDetectionViolation:(id)violation coalitionID:(unint64_t)d pid:(unint64_t)pid endTime:(mach_timespec)time observedValue:(int64_t)value observationWindow:(int64_t)window limitValue:(int64_t)limitValue limitWindow:(int64_t)self0 fatal:(BOOL)self1;
- (void)handleDetectionViolation:(unsigned __int8)violation forCSProcess:(id)process coalitionID:(unint64_t)d coalitionName:(id)name pid:(unint64_t)pid startTime:(double)time endTime:(double)endTime forcedMitigation:(unsigned __int8)self0 withMitigationDecisionType:(unsigned __int8 *)self1 withMitigationDecisionReason:(unsigned __int8 *)self2 withError:(id *)self3;
- (void)handleDetectorViolation:(id)violation;
- (void)handleProcessStart:(id)start withMitigationReason:(unsigned __int8)reason;
- (void)logCPUViolationToPowerLog:(id)log pid:(unint64_t)pid coalitionName:(id)name endTime:(mach_timespec)time observedValue:(int64_t)value observationWindow:(int64_t)window limitValue:(int64_t)limitValue limitWindow:(int64_t)self0 fatal:(BOOL)self1 mitigationType:(int64_t)self2 mitigationReason:(int64_t)self3 withError:(id)self4;
- (void)logCPUViolationToPowerLogWithPayload:(id)payload;
- (void)logMitigationAsSignpost:(id)signpost withPid:(unint64_t)pid withIssueType:(unsigned __int8)type withMitigationType:(unsigned __int8)mitigationType withReason:(unsigned __int8)reason withPenaltyBoxEndTime:(unint64_t)time;
- (void)logMitigationToPowerLogForProcess:(id)process withPid:(int)pid withCoalitionID:(unint64_t)d withIssueType:(unsigned __int8)type withMitigationType:(unsigned __int8)mitigationType withReason:(unsigned __int8)reason;
- (void)logPenaltyBoxListAsSignposts;
- (void)midnightRoutine;
- (void)policyMitigationsEnabled;
- (void)registerForDayChangedNotification;
- (void)removeAllProcessesFromPenaltyBox;
@end

@implementation CSMitigationManager

+ (CSMitigationManager)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[CSMitigationManager sharedInstance];
  }

  v3 = sharedInstance__sharedInstance_1;

  return v3;
}

- (void)logPenaltyBoxListAsSignposts
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t __37__CSMitigationManager_sharedInstance__block_invoke()
{
  sharedInstance__sharedInstance_1 = [[CSMitigationManager alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (void)checkForTrials
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (id)_init
{
  v30.receiver = self;
  v30.super_class = CSMitigationManager;
  v2 = [(CSMitigationManager *)&v30 init];
  if (v2)
  {
    v3 = [CSLogger logForCategory:@"CSMitigationManager"];
    v4 = *(v2 + 5);
    *(v2 + 5) = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.computesafeguards.mitigationmanager", v5);
    v7 = *(v2 + 4);
    *(v2 + 4) = v6;

    v8 = [CSProcessManager sharedInstanceWithEnrolledProcesses:0 andProcessPolicies:0 andBand95:0 andBand80:0];
    v9 = *(v2 + 6);
    *(v2 + 6) = v8;

    if (!*(v2 + 6) && os_log_type_enabled(*(v2 + 5), OS_LOG_TYPE_FAULT))
    {
      [CSMitigationManager _init];
    }

    *(v2 + 4) = -1;
    [v2 checkForTrials];
    if (_os_feature_enabled_impl())
    {
      v10 = *(v2 + 5);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_243DC3000, v10, OS_LOG_TYPE_DEFAULT, "_initWithDataProvider: mitigations enabled by feature flag", buf, 2u);
      }

      gEnableMitigations = 1;
    }

    if (_os_feature_enabled_impl())
    {
      v11 = *(v2 + 5);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_243DC3000, v11, OS_LOG_TYPE_DEFAULT, "_initWithDataProvider: penaltyBox enabled by feature flag", buf, 2u);
      }

      gEnablePenaltyBox = 1;
    }

    if (_os_feature_enabled_impl())
    {
      v12 = *(v2 + 5);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_243DC3000, v12, OS_LOG_TYPE_DEFAULT, "_initWithDataProvider: mitigations while plugged-in enabled by feature flag", buf, 2u);
      }

      gMitigationsWhilePluggedIn = 1;
    }

    if (_os_feature_enabled_impl())
    {
      v13 = *(v2 + 5);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_243DC3000, v13, OS_LOG_TYPE_DEFAULT, "_initWithDataProvider: XPC Services mitigations disabled by feature flag", buf, 2u);
      }

      gMitigateXPCServices = 0;
    }

    *(v2 + 3) = 1;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v15 = *(v2 + 3);
    *(v2 + 3) = dictionary;

    v16 = *(v2 + 8);
    *(v2 + 8) = 0;

    *(v2 + 9) = 0;
    v18 = getMainQueue(v17);
    v19 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v18);
    v20 = *(v2 + 8);
    *(v2 + 8) = v19;

    v21 = *(v2 + 3);
    if (v21 == 2)
    {
      v22 = *(v2 + 8);
      v23 = dispatch_walltime(0, 60000000000);
      dispatch_source_set_timer(v22, v23, 0xDF8475800uLL, 0x6FC23AC00uLL);
    }

    else if (v21 == 1)
    {
      [v2 registerForDayChangedNotification];
    }

    else if (os_log_type_enabled(*(v2 + 5), OS_LOG_TYPE_ERROR))
    {
      [CSMitigationManager _init];
    }

    objc_initWeak(buf, v2);
    v24 = *(v2 + 8);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __28__CSMitigationManager__init__block_invoke;
    handler[3] = &unk_278DF5180;
    objc_copyWeak(&v28, buf);
    dispatch_source_set_event_handler(v24, handler);
    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);
    v25 = v2;
  }

  return v2;
}

void __28__CSMitigationManager__init__block_invoke(uint64_t a1)
{
  v2 = getMainQueue(a1);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__CSMitigationManager__init__block_invoke_2;
  block[3] = &unk_278DF5180;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_async(v2, block);

  objc_destroyWeak(&v4);
}

void __28__CSMitigationManager__init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained penaltyBoxPolicy];

  if (v3 == 2)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    [v4 checkPenaltyBoxProcessesExpiration];
  }
}

- (void)handleCPUDetectionViolation:(id)violation coalitionID:(unint64_t)d pid:(unint64_t)pid endTime:(mach_timespec)time observedValue:(int64_t)value observationWindow:(int64_t)window limitValue:(int64_t)limitValue limitWindow:(int64_t)self0 fatal:(BOOL)self1
{
  violationCopy = violation;
  v18 = violationCopy;
  if (violationCopy)
  {
    trackedPIDs = [violationCopy trackedPIDs];
    v20 = [trackedPIDs count];

    if (!v20)
    {
      [(CSProcessManager *)self->_processManager pollPIDs];
    }

    v26 = -1;
    v25 = -1;
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
    {
      [CSMitigationManager handleCPUDetectionViolation:coalitionID:pid:endTime:observedValue:observationWindow:limitValue:limitWindow:fatal:];
    }

    v24 = 0;
    [(CSMitigationManager *)self handleDetectionViolation:0 forCSProcess:v18 coalitionID:d coalitionName:0 pid:pid startTime:255 endTime:time.tv_sec + time.tv_nsec * 0.000000001 - (window / 0x3B9ACA00uLL) forcedMitigation:time.tv_sec + time.tv_nsec * 0.000000001 withMitigationDecisionType:&v26 withMitigationDecisionReason:&v25 withError:&v24];
    v21 = v24;
    LOBYTE(v23) = fatal;
    [(CSMitigationManager *)self logCPUViolationToPowerLog:v18 pid:pid coalitionName:0 endTime:time observedValue:value observationWindow:window limitValue:limitValue limitWindow:limitWindow fatal:v23 mitigationType:v26 mitigationReason:v25 withError:v21];
    if (value == 3000000000 && window == 4000000000 && limitValue == 3000000000 && limitWindow == 4000000000)
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
      {
        [CSMitigationManager handleCPUDetectionViolation:coalitionID:pid:endTime:observedValue:observationWindow:limitValue:limitWindow:fatal:];
      }
    }

    else
    {
      [v18 setResetNonFatalCPUMonitor:1];
      processManager = [(CSMitigationManager *)self processManager];
      [processManager modifyPollingInterval:0];
    }
  }

  else if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
  {
    [CSMitigationManager handleCPUDetectionViolation:coalitionID:pid:endTime:observedValue:observationWindow:limitValue:limitWindow:fatal:];
  }
}

- (id)getProcessPathForPID:(int)d
{
  v11 = *MEMORY[0x277D85DE8];
  bzero(buffer, 0x1000uLL);
  *__error() = 0;
  v5 = proc_pidpath(d, buffer, 0x1000u);
  if (v5 < 1)
  {
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      [CSMitigationManager getProcessPathForPID:?];
    }

    stringByStandardizingPath = 0;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:buffer length:v5 encoding:4];
    stringByStandardizingPath = [v6 stringByStandardizingPath];
  }

  return stringByStandardizingPath;
}

- (void)handleDetectorViolation:(id)violation
{
  v94 = *MEMORY[0x277D85DE8];
  violationCopy = violation;
  v89 = -1;
  v88 = -1;
  v5 = getMainQueue(violationCopy);
  dispatch_assert_queue_V2(v5);

  lastPUUID = [violationCopy lastPUUID];
  if (!lastPUUID)
  {
    goto LABEL_30;
  }

  v7 = lastPUUID;
  lastPUUID2 = [violationCopy lastPUUID];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_29;
  }

  lastPUUID3 = [violationCopy lastPUUID];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_29:
    goto LABEL_30;
  }

  lastPUUID4 = [violationCopy lastPUUID];
  v11 = [lastPUUID4 length];

  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x277CCAD78]);
    lastPUUID5 = [violationCopy lastPUUID];
    v14 = [v12 initWithUUIDString:lastPUUID5];

    v15 = [(CSProcessManager *)self->_processManager getProcessForUUID:v14];
    v16 = v15 == 0;
    v17 = v15;
    if (v15 || ([(CSProcessManager *)self->_processManager pollPIDs], [(CSProcessManager *)self->_processManager getProcessForUUID:v14], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v18 = [v17 getPidsForCoalitionID:{objc_msgSend(violationCopy, "coalitionID")}];
      v19 = v18;
      if (v15 && !v18)
      {
        [(CSProcessManager *)self->_processManager pollPIDs];
        v16 = 1;
      }

      v20 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(violationCopy, "lastPID")}];
      trackedPIDs = [v17 trackedPIDs];
      v22 = [trackedPIDs objectForKey:v20];

      if (!v16 && !v22)
      {
        [(CSProcessManager *)self->_processManager pollPIDs];
        v16 = 1;
      }

      trackedPIDs2 = [v17 trackedPIDs];
      v24 = [trackedPIDs2 objectForKey:v20];

      if (!v24)
      {
        lastPid = [v17 lastPid];
        v26 = -[CSMitigationManager getProcessPathForPID:](self, "getProcessPathForPID:", [v17 lastPid]);
        if (v26)
        {
          v27 = 1;
        }

        else
        {
          v27 = v16;
        }

        if ((v27 & 1) == 0)
        {
          [(CSProcessManager *)self->_processManager pollPIDs];
          lastPid = [v17 lastPid];
        }

        logger = self->_logger;
        if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
        {
          loga = logger;
          v29 = v19;
          lastPID = [violationCopy lastPID];
          [violationCopy processName];
          v31 = v82 = v20;
          *buf = 67109634;
          *v91 = lastPID;
          v19 = v29;
          *&v91[4] = 1024;
          *&v91[6] = lastPid;
          *v92 = 2112;
          *&v92[2] = v31;
          _os_log_impl(&dword_243DC3000, loga, OS_LOG_TYPE_DEFAULT, "handleDetectorViolation: Updating issue.lastPID from %d to %d for process:%@", buf, 0x18u);

          v20 = v82;
        }

        [violationCopy setLastPID:lastPid];
      }

      trackedPIDs3 = [v17 trackedPIDs];
      v33 = [trackedPIDs3 count];

      if (v33)
      {
        v33 = -[CSMitigationManager getProcessPathForPID:](self, "getProcessPathForPID:", [violationCopy lastPID]);
      }

      endTime = [violationCopy endTime];
      [endTime timeIntervalSince1970];
      v36 = v35;

      startTime = [violationCopy startTime];
      [startTime timeIntervalSince1970];
      v39 = v38;

      if (v36 >= v39)
      {
        log = v33;
        v83 = v20;
        v45 = (v36 - v39);
        value = [violationCopy value];
        [value doubleValue];
        v48 = v47 * v45;

        rule = [violationCopy rule];
        if (rule)
        {
          rule2 = [violationCopy rule];
          [rule2 mainThresholdValue];
          v52 = v51;
        }

        else
        {
          rule2 = [violationCopy value];
          [rule2 doubleValue];
          v52 = v53;
        }

        v81 = v19;
        v54 = v48 * 1000000000.0;
        rule3 = [violationCopy rule];
        if (rule3)
        {
          rule4 = [violationCopy rule];
          [rule4 windowSize];
          v58 = v57;
        }

        else
        {
          v58 = v45;
        }

        v84 = 1000000000 * v45;
        v59 = v52 * v58 * 1000000000.0;

        rule5 = [violationCopy rule];
        if (rule5)
        {
          rule6 = [violationCopy rule];
          [rule6 windowSize];
          v63 = v62;
        }

        else
        {
          v63 = v45;
        }

        [v17 setViolationPath:log];
        v64 = v36 | (((v36 - v36) * 1000000000.0) << 32);
        [v17 setViolationEndTime:v64];
        [v17 setViolationObservedValue:v54];
        [v17 setViolationObservationWindow:v84];
        [v17 setViolationLimitValue:v59];
        [v17 setViolationLimitWindow:(v63 * 1000000000.0)];
        [v17 setViolationPid:{objc_msgSend(violationCopy, "lastPID")}];
        [v17 setEstimatedEnergyDiff:0];
        detectorString = [violationCopy detectorString];
        [v17 setViolationDetectorString:detectorString];

        issueType = [violationCopy issueType];
        coalitionID = [violationCopy coalitionID];
        launchdName = [violationCopy launchdName];
        lastPID2 = [violationCopy lastPID];
        if ([violationCopy forceMitigationSuggestion])
        {
          mitigationSuggestion = [violationCopy mitigationSuggestion];
        }

        else
        {
          mitigationSuggestion = 255;
        }

        v87 = 0;
        [(CSMitigationManager *)self handleDetectionViolation:issueType forCSProcess:v17 coalitionID:coalitionID coalitionName:launchdName pid:lastPID2 startTime:mitigationSuggestion endTime:v39 forcedMitigation:v36 withMitigationDecisionType:&v89 withMitigationDecisionReason:&v88 withError:&v87];
        v71 = v87;

        [violationCopy setMitigationDecisionType:v89];
        [violationCopy setMitigationDecisionReason:v88];
        if (v71)
        {
          [violationCopy setErrorString:v71];
        }

        lastPID3 = [violationCopy lastPID];
        launchdName2 = [violationCopy launchdName];
        LOBYTE(v80) = 0;
        [(CSMitigationManager *)self logCPUViolationToPowerLog:v17 pid:lastPID3 coalitionName:launchdName2 endTime:v64 observedValue:v54 observationWindow:v84 limitValue:v59 limitWindow:(v63 * 1000000000.0) fatal:v80 mitigationType:v89 mitigationReason:v88 withError:v71];

        v19 = v81;
        v20 = v83;
        v33 = log;
      }

      else
      {
        v40 = self->_logger;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v78 = v40;
          processName = [violationCopy processName];
          *buf = 134218498;
          *v91 = v36;
          *&v91[8] = 2048;
          *v92 = v39;
          *&v92[8] = 2112;
          v93 = processName;
          _os_log_error_impl(&dword_243DC3000, v78, OS_LOG_TYPE_ERROR, "handleDetectorViolation: Invalid time stamps (endTime:%f < startTime:%f) for process:%@", buf, 0x20u);
        }

        v41 = MEMORY[0x277CCACA8];
        processName2 = [violationCopy processName];
        v43 = [v41 stringWithFormat:@"handleDetectorViolation: Invalid time stamps (endTime:%f < startTime:%f) for process:%@", *&v36, *&v39, processName2];
        [violationCopy setErrorString:v43];

        [violationCopy setMitigationDecisionType:5];
        [violationCopy setMitigationDecisionReason:13];
      }
    }

    else
    {
      v74 = self->_logger;
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        [CSMitigationManager handleDetectorViolation:v74];
      }

      v75 = MEMORY[0x277CCACA8];
      processName3 = [violationCopy processName];
      v77 = [v75 stringWithFormat:@"handleDetectorViolation: Could not find CSProcess for process:%@", processName3];
      [violationCopy setErrorString:v77];

      [violationCopy setMitigationDecisionType:5];
      [violationCopy setMitigationDecisionReason:10];
    }

    goto LABEL_33;
  }

LABEL_30:
  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
  {
    [CSMitigationManager handleDetectorViolation:];
  }

  v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"handleDetectorViolation: issue.lastPUUID is Null or empty string?"];
  [violationCopy setErrorString:v44];

  [violationCopy setMitigationDecisionType:5];
  [violationCopy setMitigationDecisionReason:8];
LABEL_33:
}

- (void)handleDetectionViolation:(unsigned __int8)violation forCSProcess:(id)process coalitionID:(unint64_t)d coalitionName:(id)name pid:(unint64_t)pid startTime:(double)time endTime:(double)endTime forcedMitigation:(unsigned __int8)self0 withMitigationDecisionType:(unsigned __int8 *)self1 withMitigationDecisionReason:(unsigned __int8 *)self2 withError:(id *)self3
{
  mitigationCopy = mitigation;
  violationCopy = violation;
  v88 = *MEMORY[0x277D85DE8];
  processCopy = process;
  nameCopy = name;
  if (processCopy)
  {
    if ([(CSMitigationManager *)self checkKnownViolationByProcess:processCopy withStartTime:time withEndTime:endTime])
    {
      logger = self->_logger;
      if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
      {
        [CSMitigationManager handleDetectionViolation:? forCSProcess:? coalitionID:? coalitionName:? pid:? startTime:? endTime:? forcedMitigation:? withMitigationDecisionType:? withMitigationDecisionReason:? withError:?];
      }

      v21 = MEMORY[0x277CCACA8];
      processName = [processCopy processName];
      *error = [v21 stringWithFormat:@"handleDetectionViolation: known violation for process:%@", processName];

      *type = 0;
      *reason = 11;
      [processCopy setMitigationType:*type];
      [processCopy setMitigationReason:*reason];
      goto LABEL_79;
    }

    v23 = [CSRestrictionManager sharedInstanceWithDataProvider:0];
    identifier = [processCopy identifier];
    v25 = [v23 determineScenarioForProcess:identifier];

    v26 = [CSRestrictionManager sharedInstanceWithDataProvider:0];
    currentActiveScenarios = [v26 currentActiveScenarios];

    if (currentActiveScenarios)
    {
      if ([(__CFString *)v25 isEqualToString:@"ScheduledIntensive"])
      {
        v28 = self->_logger;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          [CSMitigationManager handleDetectionViolation:v28 forCSProcess:? coalitionID:? coalitionName:? pid:? startTime:? endTime:? forcedMitigation:? withMitigationDecisionType:? withMitigationDecisionReason:? withError:?];
        }

        v29 = MEMORY[0x277CCACA8];
        processName2 = [processCopy processName];
        *error = [v29 stringWithFormat:@"handleDetectionViolation: no mitigation for scheduled intensive activity for process:%@.", processName2];

        typeCopy2 = type;
        *type = 0;
        v32 = 18;
LABEL_14:
        *reason = v32;
        [processCopy setMitigationType:*typeCopy2];
        [processCopy setMitigationReason:*reason];
LABEL_78:

        goto LABEL_79;
      }

      if (!gMitigationsWhilePluggedIn && [currentActiveScenarios containsObject:@"Charging"])
      {
        v34 = self->_logger;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          [CSMitigationManager handleDetectionViolation:v34 forCSProcess:? coalitionID:? coalitionName:? pid:? startTime:? endTime:? forcedMitigation:? withMitigationDecisionType:? withMitigationDecisionReason:? withError:?];
        }

        v35 = MEMORY[0x277CCACA8];
        processName3 = [processCopy processName];
        *error = [v35 stringWithFormat:@"handleDetectionViolation: no mitigation while charging for process:%@", processName3];

        typeCopy2 = type;
        *type = 0;
        v32 = 6;
        goto LABEL_14;
      }
    }

    else
    {
      v33 = self->_logger;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        [CSMitigationManager handleDetectionViolation:v33 forCSProcess:? coalitionID:? coalitionName:? pid:? startTime:? endTime:? forcedMitigation:? withMitigationDecisionType:? withMitigationDecisionReason:? withError:?];
      }

      v25 = @"Unknown";
    }

    [processCopy setIssueType:violationCopy];
    if (mitigationCopy == 4 || mitigationCopy == 255)
    {
      mitigationCopy = [(CSMitigationManager *)self decideMitigation:processCopy withCoalitionName:nameCopy withReason:reason];
      *type = mitigationCopy;
    }

    else
    {
      *type = mitigationCopy;
      *reason = 5;
    }

    trackedPIDs = [processCopy trackedPIDs];
    v38 = [trackedPIDs count];

    if (v38)
    {
      v39 = [processCopy getPidsForCoalitionID:d];
      v40 = v39 != 0;
    }

    else
    {
      v39 = 0;
      v40 = 1;
    }

    if (mitigationCopy == 2)
    {
      if (v38 && v40)
      {
        if (![(CSMitigationManager *)self putIntoPenaltyBoxForCSProcess:processCopy coalitionID:d withMitigationDecisionType:type withMitigationDecisionReason:reason withError:error])
        {
          [processCopy incrementCPUViolationCounter:0];
          [(CSMitigationManager *)self generateIPSFileForProcess:processCopy];
        }

        goto LABEL_74;
      }

      [processCopy incrementCPUViolationCounter:0];
      [processCopy setPenaltyBoxPending:1];
      *type = 6;
      [processCopy addPenaltyBoxCoalitionID:d];
      v58 = self->_logger;
      v59 = os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT);
      if (v40)
      {
        if (v59)
        {
          v55 = v58;
          processName4 = [processCopy processName];
          *buf = 138412290;
          *v81 = processName4;
          v57 = "handleDetectionViolation: Pending backgroundQoS for process:%@ because process not running";
          goto LABEL_57;
        }

LABEL_58:
        v60 = 12;
LABEL_65:
        *reason = v60;
LABEL_74:
        [processCopy setMitigationType:*type];
        [processCopy setMitigationReason:*reason];
        mitigationType = [processCopy mitigationType];
        if (mitigationType <= 7 && ((1 << mitigationType) & 0xE6) != 0)
        {
          [processCopy addViolationEvent:violationCopy startTime:time endTime:endTime];
        }

        v68 = [MEMORY[0x277CBEAA8] now];
        [v68 timeIntervalSince1970];
        [processCopy addMitigationEvent:mitigationCopy startTime:?];

        goto LABEL_78;
      }

      if (v59)
      {
        v61 = v58;
        processName5 = [processCopy processName];
        *buf = 138412546;
        *v81 = processName5;
        *&v81[8] = 2048;
        *v82 = d;
        v63 = "handleDetectionViolation: Pending backgroundQoS for process:%@ because no pids match coalitionID %lld";
        goto LABEL_63;
      }
    }

    else
    {
      if (mitigationCopy != 1)
      {
        goto LABEL_74;
      }

      if (v38 && v40)
      {
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v72 = v39;
        v41 = v39;
        v42 = [v41 countByEnumeratingWithState:&v76 objects:v87 count:16];
        if (v42)
        {
          v43 = v42;
          v69 = currentActiveScenarios;
          v70 = v25;
          v71 = nameCopy;
          v44 = processCopy;
          v45 = 0;
          v46 = 0;
          v47 = 0;
          v48 = 0;
          v49 = *v77;
          do
          {
            v73 = v47;
            v50 = 0;
            v51 = v45;
            do
            {
              if (*v77 != v49)
              {
                objc_enumerationMutation(v41);
              }

              v45 = *(*(&v76 + 1) + 8 * v50);

              v52 = -[CSMitigationManager killProcess:pid:coalitionID:issueType:withMitigationDecisionType:withMitigationDecisionReason:withError:](self, "killProcess:pid:coalitionID:issueType:withMitigationDecisionType:withMitigationDecisionReason:withError:", v44, [v45 intValue], d, violationCopy, type, reason, error);
              if (v52)
              {
                if (!v48)
                {
                  v48 = v52;
                }
              }

              else
              {
                [(CSMitigationManager *)self generateIPSFileForProcess:v44];
                ++v46;
              }

              ++v50;
              v51 = v45;
            }

            while (v43 != v50);
            v47 = v73 + v43;
            v43 = [v41 countByEnumeratingWithState:&v76 objects:v87 count:16];
          }

          while (v43);

          processCopy = v44;
          v25 = v70;
          nameCopy = v71;
          currentActiveScenarios = v69;
        }

        else
        {
          v46 = 0;
          v47 = 0;
          v48 = 0;
        }

        v64 = self->_logger;
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          v65 = v64;
          processName6 = [processCopy processName];
          *buf = 67110146;
          *v81 = v46;
          *&v81[4] = 1024;
          *&v81[6] = v47;
          *v82 = 2048;
          *&v82[2] = d;
          v83 = 1024;
          v84 = v48;
          v85 = 2112;
          v86 = processName6;
          _os_log_impl(&dword_243DC3000, v65, OS_LOG_TYPE_DEFAULT, "handleDetectionViolation: Killed %d out of %d pids that matched coalitionID %llu with final retVal %d for process:%@", buf, 0x28u);
        }

        if (v46 < 1)
        {
          *type = 5;
          *reason = 14;
          mitigationCopy = 1;
          v39 = v72;
        }

        else
        {
          v39 = v72;
          if (v46 != v47)
          {
            *type = 5;
            *reason = 23;
          }

          [processCopy incrementCPUViolationCounter:1];
          mitigationCopy = 1;
        }

        goto LABEL_74;
      }

      [processCopy incrementCPUViolationCounter:1];
      *type = 7;
      v53 = self->_logger;
      v54 = os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT);
      if (v40)
      {
        if (v54)
        {
          v55 = v53;
          processName4 = [processCopy processName];
          *buf = 138412290;
          *v81 = processName4;
          v57 = "handleDetectionViolation: Skip kill for process:%@ because process not running";
LABEL_57:
          _os_log_impl(&dword_243DC3000, v55, OS_LOG_TYPE_DEFAULT, v57, buf, 0xCu);

          goto LABEL_58;
        }

        goto LABEL_58;
      }

      if (v54)
      {
        v61 = v53;
        processName5 = [processCopy processName];
        *buf = 138412546;
        *v81 = processName5;
        *&v81[8] = 2048;
        *v82 = d;
        v63 = "handleDetectionViolation: Skip kill for process:%@ because no pids match coalitionID %lld";
LABEL_63:
        _os_log_impl(&dword_243DC3000, v61, OS_LOG_TYPE_DEFAULT, v63, buf, 0x16u);
      }
    }

    v60 = 24;
    goto LABEL_65;
  }

  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
  {
    [CSMitigationManager handleDetectionViolation:forCSProcess:coalitionID:coalitionName:pid:startTime:endTime:forcedMitigation:withMitigationDecisionType:withMitigationDecisionReason:withError:];
  }

  *error = [MEMORY[0x277CCACA8] stringWithFormat:@"handleDetectionViolation: process is NULL?"];
  *type = 5;
  *reason = 10;
LABEL_79:
}

- (BOOL)checkKnownViolationByProcess:(id)process withStartTime:(double)time withEndTime:(double)endTime
{
  processCopy = process;
  v9 = processCopy;
  if (processCopy)
  {
    v10 = [processCopy checkKnownViolationStartTime:time endTime:endTime];
  }

  else
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      [CSMitigationManager checkKnownViolationByProcess:withStartTime:withEndTime:];
    }

    v10 = 0;
  }

  return v10;
}

- (void)handleProcessStart:(id)start withMitigationReason:(unsigned __int8)reason
{
  reasonCopy = reason;
  v39 = *MEMORY[0x277D85DE8];
  startCopy = start;
  v7 = [(CSProcessManager *)self->_processManager processForIdentifier:startCopy];
  v8 = v7;
  if (v7)
  {
    v9 = ([v7 inPenaltyBox] & 1) == 0 && -[CSMitigationManager checkPenaltyBoxProcessesLifecycle:withMitigationReason:](self, "checkPenaltyBoxProcessesLifecycle:withMitigationReason:", v8, reasonCopy);
    [v8 setPenaltyBoxDurationMins:{-[CSMitigationManager penaltyBoxDurationMinsForProcess:](self, "penaltyBoxDurationMinsForProcess:", v8)}];
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
    {
      [(CSMitigationManager *)logger handleProcessStart:v8 withMitigationReason:startCopy];
      if (!v9)
      {
        goto LABEL_23;
      }
    }

    else if (!v9)
    {
      goto LABEL_23;
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    penaltyBoxCoalitionIDs = [v8 penaltyBoxCoalitionIDs];
    v12 = [penaltyBoxCoalitionIDs copy];

    obj = v12;
    v13 = [v12 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v13)
    {
      v14 = v13;
      v27 = startCopy;
      v15 = 0;
      v16 = 0;
      v17 = *v35;
      do
      {
        v18 = 0;
        v19 = v15;
        v20 = v16;
        do
        {
          if (*v35 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v34 + 1) + 8 * v18);

          longLongValue = [v16 longLongValue];
          v15 = [v8 getPidsForCoalitionID:longLongValue];

          if (v15)
          {
            mitigationReason = [v8 mitigationReason];
            getPollPIDsCount = [(CSProcessManager *)self->_processManager getPollPIDsCount];
            if (getPollPIDsCount == 1)
            {
              v24 = 20;
            }

            else
            {
              v24 = mitigationReason;
            }

            v25 = getMainQueue(getPollPIDsCount);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __63__CSMitigationManager_handleProcessStart_withMitigationReason___block_invoke;
            block[3] = &unk_278DF54E8;
            v26 = v8;
            v33 = v24;
            v30 = v26;
            selfCopy = self;
            v32 = longLongValue;
            dispatch_async(v25, block);
          }

          ++v18;
          v19 = v15;
          v20 = v16;
        }

        while (v14 != v18);
        v14 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v14);

      startCopy = v27;
    }
  }

  else if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
  {
    [CSMitigationManager handleProcessStart:withMitigationReason:];
  }

LABEL_23:
}

uint64_t __63__CSMitigationManager_handleProcessStart_withMitigationReason___block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) mitigationType];
  v7 = *(a1 + 56);
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = 0;
  return [v2 putIntoPenaltyBoxForCSProcess:v3 coalitionID:v4 withMitigationDecisionType:&v8 withMitigationDecisionReason:&v7 withError:&v6];
}

- (BOOL)policyMitigationsEnabled
{
  if (isInternalBuild(self, a2))
  {
    trialsMitigationsEnabled = self->_trialsMitigationsEnabled;
    if (trialsMitigationsEnabled != -1)
    {
      if (trialsMitigationsEnabled == 1)
      {
        if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
        {
          [CSMitigationManager policyMitigationsEnabled];
        }

        v5 = 1;
        goto LABEL_15;
      }

      if (trialsMitigationsEnabled)
      {
        if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
        {
          [CSMitigationManager policyMitigationsEnabled];
        }
      }

      else if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
      {
        [CSMitigationManager policyMitigationsEnabled];
      }
    }

    v5 = 0;
LABEL_15:
    if (gEnableMitigations)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      LOBYTE(v4) = v5;
    }

    return v4;
  }

  v4 = os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    [CSMitigationManager policyMitigationsEnabled];
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (unsigned)decideMitigation:(id)mitigation withCoalitionName:(id)name withReason:(unsigned __int8 *)reason
{
  *&v66[5] = *MEMORY[0x277D85DE8];
  mitigationCopy = mitigation;
  nameCopy = name;
  if (mitigationCopy)
  {
    [mitigationCopy setMitigationType:255];
    [mitigationCopy setMitigationReason:255];
    if ([mitigationCopy xpcService])
    {
      if (![mitigationCopy issueType])
      {
        logger = self->_logger;
        if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
        {
          [CSMitigationManager decideMitigation:? withCoalitionName:? withReason:?];
        }

        v10 = 22;
        goto LABEL_63;
      }

      if (nameCopy && [nameCopy length] && -[CSProcessManager isXPCServiceExempt:withIssueType:](self->_processManager, "isXPCServiceExempt:withIssueType:", nameCopy, objc_msgSend(mitigationCopy, "issueType")))
      {
        if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
        {
          [CSMitigationManager decideMitigation:withCoalitionName:withReason:];
        }

        v10 = 26;
        goto LABEL_63;
      }
    }

    if ([mitigationCopy policyBitMask])
    {
      issueType = [mitigationCopy issueType];
      if (issueType == 1)
      {
        if (([mitigationCopy policyBitMask] & 2) != 0)
        {
          goto LABEL_48;
        }
      }

      else
      {
        if (issueType)
        {
          v33 = self->_logger;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            [CSMitigationManager decideMitigation:v33 withCoalitionName:mitigationCopy withReason:?];
          }

          goto LABEL_48;
        }

        if ([mitigationCopy policyBitMask])
        {
LABEL_48:
          rootDaemon = [mitigationCopy rootDaemon];
          v35 = self->_logger;
          v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG);
          if (rootDaemon)
          {
            if (v36)
            {
              [CSMitigationManager decideMitigation:v35 withCoalitionName:? withReason:?];
            }

            v10 = 17;
          }

          else
          {
            if (v36)
            {
              [CSMitigationManager decideMitigation:v35 withCoalitionName:? withReason:?];
            }

            v10 = 1;
          }

          goto LABEL_63;
        }
      }

      if (([mitigationCopy policyBitMask] & 4) != 0)
      {
        [mitigationCopy setCpuFatalCnt:gMaxNumberOfKills];
      }
    }

    v14 = [CSRestrictionManager sharedInstanceWithDataProvider:0];
    identifier = [mitigationCopy identifier];
    v16 = [v14 determineScenarioForProcess:identifier];

    if (!v16)
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
      {
        [CSMitigationManager decideMitigation:withCoalitionName:withReason:];
      }

      v16 = @"Unknown";
    }

    log = reason;
    v17 = self->_logger;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [CSMitigationManager decideMitigation:v17 withCoalitionName:? withReason:?];
    }

    cpuFatalCnt = [mitigationCopy cpuFatalCnt];
    v19 = gMaxNumberOfKills;
    if (gMaxNumberOfKills > cpuFatalCnt)
    {
      goto LABEL_37;
    }

    v20 = self->_logger;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [CSMitigationManager decideMitigation:v20 withCoalitionName:mitigationCopy withReason:?];
    }

    if (gEnablePenaltyBox)
    {
      v21 = self->_logger;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [CSMitigationManager decideMitigation:v21 withCoalitionName:mitigationCopy withReason:?];
      }

      v22 = 1;
    }

    else
    {
LABEL_37:
      v22 = 0;
    }

    v23 = self->_logger;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v52 = v23;
      v24 = v22;
      cpuFatalCnt2 = [mitigationCopy cpuFatalCnt];
      v54 = cpuFatalCnt;
      v26 = gMaxNumberOfKills;
      cpuNonFatalCnt = [mitigationCopy cpuNonFatalCnt];
      v53 = v19;
      v28 = v16;
      v29 = gMaxNumberOfNonfatal;
      v51 = gEnablePenaltyBox;
      policyBitMask = [mitigationCopy policyBitMask];
      [mitigationCopy processName];
      v31 = v55 = nameCopy;
      *buf = 67110658;
      *v60 = cpuFatalCnt2;
      v22 = v24;
      *&v60[4] = 2048;
      *&v60[6] = v26;
      *&v60[14] = 1024;
      *&v60[16] = cpuNonFatalCnt;
      *v61 = 2048;
      *&v61[2] = v29;
      v16 = v28;
      v19 = v53;
      cpuFatalCnt = v54;
      *v62 = 2048;
      *&v62[2] = v51;
      v63 = 1024;
      v64 = policyBitMask;
      v65 = 2112;
      *v66 = v31;
      _os_log_impl(&dword_243DC3000, v52, OS_LOG_TYPE_DEFAULT, "decideMitigation: Fatal counts %u maxKills %ld nonFatalCount %d maxNonFatal %ld enablePenaltyBox %ld policyBitMask 0x%x for process:%@", buf, 0x3Cu);

      nameCopy = v55;
    }

    if (v19 <= cpuFatalCnt)
    {
      reason = log;
      if (v22)
      {
        [mitigationCopy setMitigationType:2];
        if (([mitigationCopy policyBitMask] & 4) != 0)
        {
          v32 = 27;
        }

        else
        {
          v32 = 4;
        }
      }

      else
      {
        cpuNonFatalCnt2 = [mitigationCopy cpuNonFatalCnt];
        v38 = gMaxNumberOfNonfatal;
        [mitigationCopy setMitigationType:0];
        if (v38 <= cpuNonFatalCnt2)
        {
          v32 = 4;
        }

        else
        {
          v32 = 2;
        }
      }
    }

    else
    {
      [mitigationCopy setMitigationType:1];
      v32 = 2;
      reason = log;
    }

    [mitigationCopy setMitigationReason:v32];

    [mitigationCopy setPenaltyBoxDurationMins:{-[CSMitigationManager penaltyBoxDurationMinsForProcess:](self, "penaltyBoxDurationMinsForProcess:", mitigationCopy)}];
    if (![mitigationCopy mitigationType] || -[CSMitigationManager policyMitigationsEnabled](self, "policyMitigationsEnabled"))
    {
      goto LABEL_64;
    }

    v39 = self->_logger;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      [CSMitigationManager decideMitigation:v39 withCoalitionName:? withReason:?];
    }

    v10 = 0;
LABEL_63:
    [mitigationCopy setMitigationType:0];
    [mitigationCopy setMitigationReason:v10];
LABEL_64:
    v40 = self->_logger;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      loga = v40;
      v56 = PEIssueTypeString([mitigationCopy issueType]);
      v41 = PEMitigationTypeString([mitigationCopy mitigationType]);
      v42 = PEReasonString([mitigationCopy mitigationReason]);
      cpuFatalCnt3 = [mitigationCopy cpuFatalCnt];
      cpuNonFatalCnt3 = [mitigationCopy cpuNonFatalCnt];
      v45 = nameCopy;
      exitsCnt = [mitigationCopy exitsCnt];
      reasonCopy = reason;
      penaltyBoxCnt = [mitigationCopy penaltyBoxCnt];
      processName = [mitigationCopy processName];
      *buf = 136316930;
      *v60 = v56;
      *&v60[8] = 2080;
      *&v60[10] = v41;
      *&v60[18] = 2080;
      *v61 = v42;
      *&v61[8] = 1024;
      *v62 = cpuFatalCnt3;
      *&v62[4] = 1024;
      *&v62[6] = cpuNonFatalCnt3;
      v63 = 1024;
      v64 = exitsCnt;
      nameCopy = v45;
      v65 = 1024;
      v66[0] = penaltyBoxCnt;
      reason = reasonCopy;
      LOWORD(v66[1]) = 2112;
      *(&v66[1] + 2) = processName;
      _os_log_impl(&dword_243DC3000, loga, OS_LOG_TYPE_DEFAULT, "decideMitigation: IssueType:%s MitigationType:%s MitigationReason:%s cpuFatalCnt:%u cpu_non_fatal_cnt:%u exitsCnt:%u penaltyBoxCnt:%u for process %@", buf, 0x42u);
    }

    *reason = [mitigationCopy mitigationReason];
    mitigationType = [mitigationCopy mitigationType];
    goto LABEL_67;
  }

  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
  {
    [CSMitigationManager decideMitigation:withCoalitionName:withReason:];
  }

  *reason = 10;
  mitigationType = -1;
LABEL_67:

  return mitigationType;
}

- (void)checkOverridesForProcess:(id)process penaltyBoxDuration:(int64_t *)duration cpuThreshold:(int64_t *)threshold timeWindow:(int64_t *)window
{
  processCopy = process;
  v11 = processCopy;
  if (gTargetProcess && [processCopy isEqualToString:?])
  {
    if (gTargetPenaltyBoxDurationMins)
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
      {
        [CSMitigationManager checkOverridesForProcess:penaltyBoxDuration:cpuThreshold:timeWindow:];
      }

      *duration = gTargetPenaltyBoxDurationMins;
    }

    if (gTargetCPUPercentage)
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
      {
        [CSMitigationManager checkOverridesForProcess:penaltyBoxDuration:cpuThreshold:timeWindow:];
      }

      *threshold = gTargetCPUPercentage;
    }

    if (gTargetCPUTimeWindow)
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
      {
        [CSMitigationManager checkOverridesForProcess:penaltyBoxDuration:cpuThreshold:timeWindow:];
      }

      v12 = &gTargetCPUTimeWindow;
LABEL_27:
      *window = *v12;
    }
  }

  else
  {
    if (gGlobalOverridePenaltyBoxDurationMins)
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
      {
        [CSMitigationManager checkOverridesForProcess:penaltyBoxDuration:cpuThreshold:timeWindow:];
      }

      *duration = gGlobalOverridePenaltyBoxDurationMins;
    }

    if (gGlobalOverrideCPUPercentage)
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
      {
        [CSMitigationManager checkOverridesForProcess:penaltyBoxDuration:cpuThreshold:timeWindow:];
      }

      *threshold = gGlobalOverrideCPUPercentage;
    }

    if (gGlobalOverrideCPUTimeWindow)
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
      {
        [CSMitigationManager checkOverridesForProcess:penaltyBoxDuration:cpuThreshold:timeWindow:];
      }

      v12 = &gGlobalOverrideCPUTimeWindow;
      goto LABEL_27;
    }
  }
}

- (int)killProcess:(id)process pid:(unint64_t)pid coalitionID:(unint64_t)d issueType:(unsigned __int8)type withMitigationDecisionType:(unsigned __int8 *)decisionType withMitigationDecisionReason:(unsigned __int8 *)reason withError:(id *)error
{
  typeCopy = type;
  v45 = *MEMORY[0x277D85DE8];
  processCopy = process;
  v43 = 0u;
  memset(v44, 0, sizeof(v44));
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  *__str = 0u;
  v31[0] = typeCopy;
  v31[1] = 0;
  v31[2] = *reason;
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v17 = logger;
    processName = [processCopy processName];
    *buf = 138412546;
    v33 = processName;
    v34 = 2048;
    pidCopy = pid;
    _os_log_impl(&dword_243DC3000, v17, OS_LOG_TYPE_DEFAULT, "killProcess: Killing process:%@ (%llu)", buf, 0x16u);
  }

  v19 = PEIssueTypeString(typeCopy);
  v20 = PEMitigationTypeString(*decisionType);
  v21 = PEReasonString(*reason);
  snprintf(__str, 0x96uLL, "Power Exceptions Kill - issueType:%s, mitigationType:%s mitigationReason:%s", v19, v20, v21);
  *__error() = 0;
  if (MEMORY[0x245D52F00](pid, 46, 0, v31, 24, __str, 129))
  {
    v22 = self->_logger;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [CSMitigationManager killProcess:v22 pid:processCopy coalitionID:pid issueType:? withMitigationDecisionType:? withMitigationDecisionReason:? withError:?];
    }

    v23 = MEMORY[0x277CCACA8];
    v24 = *__error();
    v25 = __error();
    v26 = strerror(*v25);
    processName2 = [processCopy processName];
    *error = [v23 stringWithFormat:@"killProcess: terminate_with_payload failed %d (%s) for process:%@ (%llu)", v24, v26, processName2, pid];

    v28 = *__error();
  }

  else
  {
    processName3 = [processCopy processName];
    [(CSMitigationManager *)self logMitigationAsSignpost:processName3 withPid:pid withIssueType:typeCopy withMitigationType:*decisionType withReason:*reason withPenaltyBoxEndTime:0];

    [(CSMitigationManager *)self logMitigationToPowerLogForProcess:processCopy withPid:pid withCoalitionID:d withIssueType:typeCopy withMitigationType:*decisionType withReason:*reason];
    v28 = 0;
  }

  return v28;
}

- (int)putIntoPenaltyBoxForCSProcess:(id)process coalitionID:(unint64_t)d withMitigationDecisionType:(unsigned __int8 *)type withMitigationDecisionReason:(unsigned __int8 *)reason withError:(id *)error
{
  v73 = *MEMORY[0x277D85DE8];
  processCopy = process;
  v9 = processCopy;
  if (!processCopy)
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      [CSMitigationManager putIntoPenaltyBoxForCSProcess:coalitionID:withMitigationDecisionType:withMitigationDecisionReason:withError:];
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"putIntoPenaltyBoxForProcess: process is NULL?"];
    v10 = 0;
    v12 = 0;
    *error = v15 = 0;
    *type = 5;
    v17 = 10;
    goto LABEL_31;
  }

  if ([processCopy inPenaltyBox])
  {
    v10 = [MEMORY[0x277CCABB0] numberWithLongLong:d];
    penaltyBoxCoalitionIDs = [v9 penaltyBoxCoalitionIDs];
    v12 = [penaltyBoxCoalitionIDs objectForKey:v10];

    if (v12)
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
      {
        [CSMitigationManager putIntoPenaltyBoxForCSProcess:coalitionID:withMitigationDecisionType:withMitigationDecisionReason:withError:];
      }

      v13 = MEMORY[0x277CCACA8];
      processName = [v9 processName];
      *error = [v13 stringWithFormat:@"putIntoPenaltyBoxForProcess: Process:%@ and coalitionID %lld already in penalty box", processName, d];

      v15 = 0;
      *type = 5;
      *reason = 15;
      v16 = 37;
      goto LABEL_50;
    }
  }

  else
  {
    v10 = 0;
  }

  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v19 = logger;
    processName2 = [v9 processName];
    v21 = PEReasonString(*reason);
    *buf = 138412802;
    *v71 = processName2;
    *&v71[8] = 2048;
    *&v71[10] = d;
    *&v71[18] = 2080;
    *&v71[20] = v21;
    _os_log_impl(&dword_243DC3000, v19, OS_LOG_TYPE_DEFAULT, "putIntoPenaltyBoxForProcess: Put process:%@ and coalitionID %lld into penalty box. Reason: %s", buf, 0x20u);
  }

  [v9 addPenaltyBoxCoalitionID:d];
  v22 = [v9 getPidsForCoalitionID:d];
  if (!v22)
  {
    v43 = self->_logger;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      [CSMitigationManager putIntoPenaltyBoxForCSProcess:v43 coalitionID:? withMitigationDecisionType:? withMitigationDecisionReason:? withError:?];
    }

    v44 = MEMORY[0x277CCACA8];
    processName3 = [v9 processName];
    *error = [v44 stringWithFormat:@"putIntoPenaltyBoxForProcess: no pids matching coalitionID for process:%@", processName3];

    v12 = 0;
    v15 = 0;
    *type = 5;
    v17 = 24;
LABEL_31:
    *reason = v17;
    v16 = 2;
    goto LABEL_50;
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = v22;
  v23 = [obj countByEnumeratingWithState:&v66 objects:v72 count:16];
  if (v23)
  {
    v24 = v23;
    selfCopy = self;
    v56 = v10;
    v25 = 0;
    v26 = 0;
    v64 = 0;
    v65 = *v67;
    v27 = obj;
    do
    {
      v57 = v26;
      for (i = 0; i != v24; ++i)
      {
        v29 = v25;
        if (*v67 != v65)
        {
          objc_enumerationMutation(v27);
        }

        v25 = *(*(&v66 + 1) + 8 * i);

        intValue = [v25 intValue];
        *__error() = 0;
        if (setpriority(9, intValue, 1))
        {
          v31 = +[CSLogger defaultCategory];
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v38 = *__error();
            v39 = __error();
            v40 = strerror(*v39);
            processName4 = [v9 processName];
            *buf = 67109890;
            *v71 = v38;
            *&v71[4] = 2080;
            *&v71[6] = v40;
            *&v71[14] = 2112;
            *&v71[16] = processName4;
            *&v71[24] = 1024;
            *&v71[26] = intValue;
            _os_log_error_impl(&dword_243DC3000, v31, OS_LOG_TYPE_ERROR, "putIntoPenaltyBoxForProcess: setpriority(PRIO_DARWIN_RUNAWAY_MITIGATION) failed %d (%s) for process:%@ (%d)", buf, 0x22u);
          }

          v32 = MEMORY[0x277CCACA8];
          v33 = *__error();
          v34 = __error();
          v35 = strerror(*v34);
          processName5 = [v9 processName];
          *error = [v32 stringWithFormat:@"putIntoPenaltyBoxForProcess: setpriority(PRIO_DARWIN_RUNAWAY_MITIGATION) failed %d (%s) for process:%@ (%d)", v33, v35, processName5, intValue];

          if (!HIDWORD(v64))
          {
            HIDWORD(v64) = *__error();
          }
        }

        else
        {
          processName6 = [v9 processName];
          -[CSMitigationManager logMitigationAsSignpost:withPid:withIssueType:withMitigationType:withReason:withPenaltyBoxEndTime:](selfCopy, "logMitigationAsSignpost:withPid:withIssueType:withMitigationType:withReason:withPenaltyBoxEndTime:", processName6, intValue, [v9 issueType], *type, *reason, 0);

          v27 = obj;
          -[CSMitigationManager logMitigationToPowerLogForProcess:withPid:withCoalitionID:withIssueType:withMitigationType:withReason:](selfCopy, "logMitigationToPowerLogForProcess:withPid:withCoalitionID:withIssueType:withMitigationType:withReason:", v9, intValue, d, [v9 issueType], *type, *reason);
          LODWORD(v64) = v64 + 1;
        }
      }

      v26 = v57 + v24;
      v24 = [v27 countByEnumeratingWithState:&v66 objects:v72 count:16];
    }

    while (v24);

    v10 = v56;
    self = selfCopy;
    v42 = v64;
  }

  else
  {
    v42 = 0;
    v26 = 0;
    HIDWORD(v64) = 0;
  }

  v46 = self->_logger;
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    v47 = v46;
    processName7 = [v9 processName];
    *buf = 67110146;
    *v71 = v42;
    *&v71[4] = 1024;
    *&v71[6] = v26;
    *&v71[10] = 2048;
    *&v71[12] = d;
    *&v71[20] = 1024;
    *&v71[22] = HIDWORD(v64);
    *&v71[26] = 2112;
    *&v71[28] = processName7;
    _os_log_impl(&dword_243DC3000, v47, OS_LOG_TYPE_DEFAULT, "putIntoPenaltyBoxForProcess: PenaltyBox for %d out of %d pids that matched coalitionID %llu with final ret %d for process:%@", buf, 0x28u);
  }

  if (v42 < 1)
  {
    v12 = 0;
    *type = 5;
    *reason = 16;
    if (HIDWORD(v64))
    {
      v16 = HIDWORD(v64);
    }

    else
    {
      v16 = 2;
    }
  }

  else
  {
    if (v42 != v26)
    {
      *type = 5;
      *reason = 23;
    }

    [v9 setInPenaltyBox:1];
    [v9 setPenaltyBoxCnt:{(objc_msgSend(v9, "penaltyBoxCnt") + 1)}];
    [v9 setPenaltyBoxPending:0];
    CurrentTime = getCurrentTime();
    penaltyBoxDurationMins = [v9 penaltyBoxDurationMins];
    if (![v9 penaltyBoxEndTime])
    {
      [v9 setPenaltyBoxEndTime:CurrentTime + 60 * penaltyBoxDurationMins];
    }

    penaltyBoxProcesses = self->_penaltyBoxProcesses;
    uuid = [v9 uuid];
    [(NSMutableDictionary *)penaltyBoxProcesses setObject:v9 forKey:uuid];

    if (self->_penaltyBoxPolicy == 2 && !self->_penaltyBoxTimerRunning)
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
      {
        [CSMitigationManager putIntoPenaltyBoxForCSProcess:coalitionID:withMitigationDecisionType:withMitigationDecisionReason:withError:];
      }

      penaltyBoxTimer = self->_penaltyBoxTimer;
      v54 = dispatch_walltime(0, 60000000000);
      dispatch_source_set_timer(penaltyBoxTimer, v54, 0xDF8475800uLL, 0x6FC23AC00uLL);
      self->_penaltyBoxTimerRunning = 1;
      dispatch_resume(self->_penaltyBoxTimer);
    }

    v12 = 0;
    v16 = 0;
  }

  v15 = obj;
LABEL_50:

  return v16;
}

- (BOOL)checkPenaltyBoxProcessesLifecycle:(id)lifecycle withMitigationReason:(unsigned __int8)reason
{
  reasonCopy = reason;
  v23 = *MEMORY[0x277D85DE8];
  lifecycleCopy = lifecycle;
  v7 = lifecycleCopy;
  if (!lifecycleCopy)
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      [CSMitigationManager checkPenaltyBoxProcessesLifecycle:withMitigationReason:];
    }

    goto LABEL_15;
  }

  if (([lifecycleCopy inPenaltyBox] & 1) == 0)
  {
    penaltyBoxEndTime = [v7 penaltyBoxEndTime];
    if (penaltyBoxEndTime)
    {
      v9 = penaltyBoxEndTime;
      CurrentTime = getCurrentTime();
      v11 = v9 - CurrentTime;
      if (v9 < CurrentTime)
      {
        [v7 setPenaltyBoxEndTime:0];
        goto LABEL_10;
      }

      logger = self->_logger;
      if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
      {
        v16 = logger;
        processName = [v7 processName];
        v19 = 138412546;
        v20 = processName;
        v21 = 2048;
        v22 = v11;
        _os_log_impl(&dword_243DC3000, v16, OS_LOG_TYPE_DEFAULT, "checkPenaltyBoxProcessesLifecycle: Put process:%@ back into penalty box for remaining %llu seconds", &v19, 0x16u);
      }

      [v7 setMitigationType:2];
      v12 = v7;
      v13 = reasonCopy;
    }

    else
    {
      if (![v7 penaltyBoxPending])
      {
        goto LABEL_10;
      }

      [v7 setMitigationType:2];
      v12 = v7;
      v13 = 19;
    }

    [v12 setMitigationReason:v13];
LABEL_15:
    v14 = 1;
    goto LABEL_16;
  }

LABEL_10:
  v14 = 0;
LABEL_16:

  return v14;
}

- (void)checkPenaltyBoxProcessesExpiration
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (int)removeProcessFromPenaltyBox:(id)box forReason:(unsigned __int8)reason
{
  reasonCopy = reason;
  v51 = *MEMORY[0x277D85DE8];
  boxCopy = box;
  v6 = [(CSProcessManager *)self->_processManager getProcessForUUID:boxCopy];
  if (v6)
  {
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      v8 = logger;
      processName = [v6 processName];
      *buf = 138412546;
      *v47 = processName;
      *&v47[8] = 2080;
      *&v47[10] = PEReasonString(reasonCopy);
      _os_log_impl(&dword_243DC3000, v8, OS_LOG_TYPE_DEFAULT, "removeProcessFromPenaltyBox: Remove process:%@ from penalty box. Reason: %s", buf, 0x16u);
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = [v6 trackedPIDs];
    v10 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v10)
    {
      v11 = v10;
      v36 = boxCopy;
      v12 = 0;
      v13 = *v43;
      v14 = reasonCopy;
      while (1)
      {
        for (i = 0; i != v11; ++i)
        {
          v16 = v12;
          if (*v43 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v42 + 1) + 8 * i);

          intValue = [v12 intValue];
          *__error() = 0;
          v18 = getpriority(9, intValue);
          if (*__error() || v18 != 1)
          {
            v28 = self->_logger;
            if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              continue;
            }

            loga = v28;
            v38 = *__error();
            v29 = __error();
            v30 = strerror(*v29);
            processName2 = [v6 processName];
            *buf = 67110146;
            *v47 = v38;
            *&v47[4] = 2080;
            *&v47[6] = v30;
            *&v47[14] = 1024;
            *&v47[16] = v18;
            *&v47[20] = 2112;
            *&v47[22] = processName2;
            v48 = 1024;
            v49 = intValue;
            v24 = loga;
            v25 = loga;
            v26 = "removeProcessFromPenaltyBox: getpriority(PRIO_DARWIN_RUNAWAY_MITIGATION) failed %d (%s) priority %d for process:%@ (%d)";
            v27 = 40;
            goto LABEL_16;
          }

          *__error() = 0;
          if (setpriority(9, intValue, 0))
          {
            v19 = self->_logger;
            if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              continue;
            }

            log = v19;
            v20 = *__error();
            v21 = __error();
            v22 = strerror(*v21);
            processName2 = [v6 processName];
            *buf = 67109890;
            *v47 = v20;
            *&v47[4] = 2080;
            *&v47[6] = v22;
            *&v47[14] = 2112;
            *&v47[16] = processName2;
            *&v47[24] = 1024;
            *&v47[26] = intValue;
            v24 = log;
            v25 = log;
            v26 = "removeProcessFromPenaltyBox: setpriority(PRIO_DARWIN_RUNAWAY_MITIGATION) failed %d (%s) for process:%@ (%d)";
            v27 = 34;
LABEL_16:
            _os_log_error_impl(&dword_243DC3000, v25, OS_LOG_TYPE_ERROR, v26, buf, v27);

            v14 = reasonCopy;
            continue;
          }

          processName3 = [v6 processName];
          -[CSMitigationManager logMitigationAsSignpost:withPid:withIssueType:withMitigationType:withReason:withPenaltyBoxEndTime:](self, "logMitigationAsSignpost:withPid:withIssueType:withMitigationType:withReason:withPenaltyBoxEndTime:", processName3, intValue, [v6 issueType], 3, v14, 0);

          trackedPIDs = [v6 trackedPIDs];
          v33 = [trackedPIDs objectForKeyedSubscript:v12];

          -[CSMitigationManager logMitigationToPowerLogForProcess:withPid:withCoalitionID:withIssueType:withMitigationType:withReason:](self, "logMitigationToPowerLogForProcess:withPid:withCoalitionID:withIssueType:withMitigationType:withReason:", v6, intValue, [v33 longLongValue], objc_msgSend(v6, "issueType"), 3, v14);
        }

        v11 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
        if (!v11)
        {

          boxCopy = v36;
          break;
        }
      }
    }

    [v6 setInPenaltyBox:0];
    [(NSMutableDictionary *)self->_penaltyBoxProcesses removeObjectForKey:boxCopy];
    [v6 setCpuNonFatalCnt:0];
    [v6 setMitigationType:3];
    if (reasonCopy != 255)
    {
      [v6 setMitigationReason:?];
    }

    v34 = 0;
  }

  else
  {
    v34 = 2;
  }

  return v34;
}

- (void)removeAllProcessesFromPenaltyBox
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (int64_t)penaltyBoxDurationMinsForProcess:(id)process
{
  processCopy = process;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  penaltyBoxPolicy = self->_penaltyBoxPolicy;
  if (penaltyBoxPolicy == 1)
  {
    v6 = 1440;
  }

  else
  {
    if (penaltyBoxPolicy != 2 && os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      [CSMitigationManager _init];
    }

    v6 = 60;
  }

  processName = [processCopy processName];
  [(CSMitigationManager *)self checkOverridesForProcess:processName penaltyBoxDuration:&v12 cpuThreshold:&v11 timeWindow:&v10];

  if (v12)
  {
    v8 = v12;
  }

  else
  {
    v8 = v6;
  }

  return v8;
}

- (void)midnightRoutine
{
  v19 = *MEMORY[0x277D85DE8];
  logger = [(CSMitigationManager *)self logger];
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243DC3000, logger, OS_LOG_TYPE_DEFAULT, "midnightRoutine", buf, 2u);
  }

  v4 = getMainQueue([(CSMitigationManager *)self checkForTrials]);
  dispatch_assert_queue_V2(v4);

  [(CSMitigationManager *)self checkPenaltyBoxProcessesExpiration];
  [(CSProcessManager *)self->_processManager clearAllCounters];
  getMonitoredList = [(CSProcessManager *)self->_processManager getMonitoredList];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allKeys = [getMonitoredList allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        v12 = [CSRestrictionManager sharedInstanceWithDataProvider:0];
        [v12 determineAndApplyRestrictionsForProcess:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [allKeys countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)registerForDayChangedNotification
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_dayChangedNotificationReceived_ name:*MEMORY[0x277CBE580] object:0];
}

- (void)dayChangedNotificationReceived:(id)received
{
  v4 = os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    [CSMitigationManager dayChangedNotificationReceived:];
  }

  v5 = getMainQueue(v4);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__CSMitigationManager_dayChangedNotificationReceived___block_invoke;
  block[3] = &unk_278DF5230;
  block[4] = self;
  dispatch_sync(v5, block);
}

- (void)getMitigationTypeString:(char *)string withStringSize:(unint64_t)size withMitigationType:(int64_t)type withPenaltyBoxEndTime:(unint64_t)time
{
  v10 = PEMitigationTypeString(type);
  snprintf(string, size, "%s", v10);
  if (type == 2)
  {
    penaltyBoxPolicy = self->_penaltyBoxPolicy;
    if (penaltyBoxPolicy == 2)
    {
      getCurrentTime();
      PEMitigationTypeString(2);
      snprintf(string, size, "%s (for %lld seconds)");
    }

    else if (penaltyBoxPolicy == 1)
    {
      PEMitigationTypeString(2);
      snprintf(string, size, "%s (until midnight)");
    }
  }
}

- (void)generateIPSFileForProcess:(id)process
{
  v28 = *MEMORY[0x277D85DE8];
  processCopy = process;
  issueType = [processCopy issueType];
  mitigationType = [processCopy mitigationType];
  mitigationReason = [processCopy mitigationReason];
  memset(v27, 0, 150);
  violationPath = [processCopy violationPath];
  if (violationPath && (v9 = violationPath, [processCopy violationPath], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "length"), v10, v9, v11))
  {
    if (mitigationType == 1 || mitigationType == 2)
    {
      -[CSMitigationManager getMitigationTypeString:withStringSize:withMitigationType:withPenaltyBoxEndTime:](self, "getMitigationTypeString:withStringSize:withMitigationType:withPenaltyBoxEndTime:", v27, 150, mitigationType, [processCopy penaltyBoxEndTime]);
      violationEndTime = [processCopy violationEndTime];
      v22 = violationEndTime;
      v21 = violationEndTime >> 32;
      [processCopy violationObservationWindow];
      violationPath2 = [processCopy violationPath];
      [violationPath2 UTF8String];
      PEIssueTypeString(issueType);
      PEReasonString(mitigationReason);
      PEMitigationTypeString(mitigationType);
      violationDetectorString = [processCopy violationDetectorString];
      if (violationDetectorString)
      {
        mitigationType = [processCopy violationDetectorString];
        [mitigationType UTF8String];
      }

      [processCopy violationObservationWindow];
      v19 = v22;
      v20 = v21;
      SPReportPowerException();
      if (violationDetectorString)
      {
      }

      logger = self->_logger;
      if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
      {
        v17 = logger;
        processName = [processCopy processName];
        *buf = 138412546;
        v24 = processName;
        v25 = 1024;
        violationPid = [processCopy violationPid];
        _os_log_impl(&dword_243DC3000, v17, OS_LOG_TYPE_DEFAULT, "generateIPSFileForProcess: Generating ips file for process:%@ (%d)", buf, 0x12u);
      }

      [processCopy setViolationPath:{0, v19, v20}];
      [processCopy setViolationEndTime:0];
      [processCopy setViolationObservedValue:0];
      [processCopy setViolationObservationWindow:0];
      [processCopy setViolationLimitValue:0];
      [processCopy setViolationLimitWindow:0];
      [processCopy setViolationPid:0];
      [processCopy setViolationDetectorString:0];
    }

    else if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      [CSMitigationManager generateIPSFileForProcess:];
    }
  }

  else
  {
    v12 = self->_logger;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(CSMitigationManager *)v12 generateIPSFileForProcess:processCopy];
    }
  }
}

- (void)logMitigationToPowerLogForProcess:(id)process withPid:(int)pid withCoalitionID:(unint64_t)d withIssueType:(unsigned __int8)type withMitigationType:(unsigned __int8)mitigationType withReason:(unsigned __int8)reason
{
  reasonCopy = reason;
  mitigationTypeCopy = mitigationType;
  typeCopy = type;
  v11 = *&pid;
  v40[18] = *MEMORY[0x277D85DE8];
  processCopy = process;
  v14 = [CSRestrictionManager sharedInstanceWithDataProvider:0];
  identifier = [processCopy identifier];
  v16 = [v14 determineScenarioForProcess:identifier];

  if (!v16)
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
    {
      [CSMitigationManager logMitigationToPowerLogForProcess:withPid:withCoalitionID:withIssueType:withMitigationType:withReason:];
    }

    v16 = @"Unknown";
  }

  v31 = v16;
  clock_serv = 0;
  cur_time = 0;
  v17 = MEMORY[0x245D52A80]();
  host_get_clock_service(v17, 1, &clock_serv);
  clock_get_time(clock_serv, &cur_time);
  v39[0] = @"timestamp";
  selfCopy = self;
  v18 = MEMORY[0x277CCABB0];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v33 = [v18 numberWithDouble:?];
  v40[0] = v33;
  v39[1] = @"ProcessName";
  processName = [processCopy processName];
  v40[1] = processName;
  v39[2] = @"PID";
  v30 = [MEMORY[0x277CCABB0] numberWithInt:v11];
  v40[2] = v30;
  v40[3] = v16;
  v39[3] = @"ScenarioIdentifier";
  v39[4] = @"timestampEnd";
  LODWORD(v19) = cur_time.tv_sec;
  v29 = [MEMORY[0x277CCABB0] numberWithDouble:v19 + cur_time.tv_nsec * 0.000000001];
  v40[4] = v29;
  v40[5] = &unk_28570AC80;
  v39[5] = @"ThresholdCPUUsage";
  v39[6] = @"TimeWindowSize";
  v40[6] = &unk_28570AC80;
  v40[7] = &unk_28570AC80;
  v39[7] = @"ObservedCPUUsage";
  v39[8] = @"ObservedCPUUsageDuration";
  v40[8] = &unk_28570AC80;
  v39[9] = @"IssueType";
  v20 = [MEMORY[0x277CCABB0] numberWithLongLong:typeCopy];
  v40[9] = v20;
  v39[10] = @"MitigationType";
  v21 = [MEMORY[0x277CCABB0] numberWithLongLong:mitigationTypeCopy];
  v40[10] = v21;
  v39[11] = @"MitigationReason";
  v22 = [MEMORY[0x277CCABB0] numberWithLongLong:reasonCopy];
  v40[11] = v22;
  v40[12] = &unk_28570AC98;
  v39[12] = @"FromPowerExceptions";
  v39[13] = @"FatalCount";
  v23 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(processCopy, "cpuFatalCnt")}];
  v40[13] = v23;
  v39[14] = @"NonFatalCount";
  v24 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(processCopy, "cpuNonFatalCnt")}];
  v40[14] = v24;
  v40[15] = &unk_28570AC80;
  v39[15] = @"EstimatedEnergy";
  v39[16] = @"PUUID";
  uuid = [processCopy uuid];
  uUIDString = [uuid UUIDString];
  v40[16] = uUIDString;
  v39[17] = @"CoalitionID";
  v27 = [MEMORY[0x277CCABB0] numberWithLongLong:d];
  v40[17] = v27;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:18];

  [(CSMitigationManager *)selfCopy logCPUViolationToPowerLogWithPayload:v28];
}

- (void)logCPUViolationToPowerLog:(id)log pid:(unint64_t)pid coalitionName:(id)name endTime:(mach_timespec)time observedValue:(int64_t)value observationWindow:(int64_t)window limitValue:(int64_t)limitValue limitWindow:(int64_t)self0 fatal:(BOOL)self1 mitigationType:(int64_t)self2 mitigationReason:(int64_t)self3 withError:(id)self4
{
  v106 = *MEMORY[0x277D85DE8];
  logCopy = log;
  nameCopy = name;
  errorCopy = error;
  v23 = errorCopy;
  if (logCopy)
  {
    v71 = nameCopy;
    v72 = errorCopy;
    v24 = [CSRestrictionManager sharedInstanceWithDataProvider:0];
    identifier = [logCopy identifier];
    v26 = [v24 determineScenarioForProcess:identifier];

    v73 = v26;
    if (!v26)
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
      {
        [CSMitigationManager logCPUViolationToPowerLog:pid:coalitionName:endTime:observedValue:observationWindow:limitValue:limitWindow:fatal:mitigationType:mitigationReason:withError:];
      }

      v73 = @"Unknown";
    }

    selfCopy = self;
    issueType = [logCopy issueType];
    v28 = +[CSLogger signpostCategory];
    v29 = v28;
    spid = pid;
    if (pid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      v64 = issueType;
      processName = [logCopy processName];
      if (processName)
      {
        processName2 = [logCopy processName];
        uTF8String = [processName2 UTF8String];
      }

      else
      {
        uTF8String = 0;
      }

      uTF8String4 = v72;
      v62 = processName;
      if (nameCopy)
      {
        uTF8String2 = [nameCopy UTF8String];
      }

      else
      {
        uTF8String2 = 0;
      }

      uTF8String3 = [(__CFString *)v73 UTF8String];
      v52 = PEIssueTypeString(v64);
      v32 = PEMitigationTypeString(type);
      v33 = PEReasonString(reason);
      if (v72)
      {
        uTF8String4 = [v72 UTF8String];
      }

      *buf = 136449794;
      v77 = uTF8String;
      v78 = 2082;
      v79 = uTF8String2;
      v80 = 2082;
      v81 = uTF8String3;
      v82 = 2050;
      *&v83 = time.tv_sec + time.tv_nsec * 0.000000001;
      v84 = 2050;
      v85 = limitValue / 0x3B9ACA00uLL;
      v86 = 2050;
      v87 = limitWindow / 0x3B9ACA00uLL;
      v88 = 2050;
      v89 = value / 1000000000.0;
      v90 = 2050;
      v91 = window / 1000000000.0;
      v92 = 2082;
      v93 = v52;
      v94 = 2082;
      v95 = v32;
      v96 = 2082;
      v97 = v33;
      v98 = 2082;
      v99 = uTF8String4;
      v100 = 1026;
      v101 = 1;
      v102 = 1026;
      cpuFatalCnt = [logCopy cpuFatalCnt];
      v104 = 1026;
      cpuNonFatalCnt = [logCopy cpuNonFatalCnt];
      pid = spid;
      _os_signpost_emit_with_name_impl(&dword_243DC3000, v29, OS_SIGNPOST_EVENT, spid, "CPU Violation", "Process name: %{public, name=processName}s\nSignpost ID is PID\nCoalition name: %{public, name=coalitionName}s\nScenario Identifier: %{public, name=scenarioIdentifier}s\nTime Stamp End: %{public, name=timeStampEnd}f\nCPU Threshold: %{public, name=cpuThreshold}lld\nTime Window Size: %{public, name=timeWindowSize}lld\nObserved CPU Usage: %{public, name=observedCPUUsage}f\nObserved CPU Usage Duration: %{public, name=observedCPUUsageDuration}f\nIssue Type: %{public, name=issueType}s\nMitigation Type: %{public, name=mitigationType}s\nMitigation Reason: %{public, name=mitigationReason}s\nError String: %{public, name=errorString}s\nFrom Power Exceptions: %{public, name=fromPowerExceptions}d\nFatal Count: %{public, name=fatalCount}d\nNon Fatal Count: %{public, name=nonFatalCount}d\n", buf, 0x8Cu);
      if (v62)
      {
      }

      issueType = v64;
    }

    v57 = MEMORY[0x277CBEB38];
    v74[0] = @"timestamp";
    v34 = MEMORY[0x277CCABB0];
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    v63 = [v34 numberWithDouble:?];
    v75[0] = v63;
    v74[1] = @"PID";
    v61 = [MEMORY[0x277CCABB0] numberWithInt:pid];
    v75[1] = v61;
    v75[2] = v73;
    v74[2] = @"ScenarioIdentifier";
    v74[3] = @"timestampEnd";
    v59 = [MEMORY[0x277CCABB0] numberWithDouble:time.tv_sec + time.tv_nsec * 0.000000001];
    v75[3] = v59;
    v74[4] = @"ThresholdCPUUsage";
    0x3B9ACA00uLL = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:limitValue / 0x3B9ACA00uLL];
    v75[4] = 0x3B9ACA00uLL;
    v74[5] = @"TimeWindowSize";
    0x3B9ACA00uLL2 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:limitWindow / 0x3B9ACA00uLL];
    v75[5] = 0x3B9ACA00uLL2;
    v74[6] = @"ObservedCPUUsage";
    v67 = [MEMORY[0x277CCABB0] numberWithDouble:value / 1000000000.0];
    v75[6] = v67;
    v74[7] = @"ObservedCPUUsageDuration";
    v69 = [MEMORY[0x277CCABB0] numberWithDouble:window / 1000000000.0];
    v75[7] = v69;
    v74[8] = @"IssueType";
    v53 = [MEMORY[0x277CCABB0] numberWithLongLong:issueType];
    v75[8] = v53;
    v74[9] = @"MitigationType";
    v68 = [MEMORY[0x277CCABB0] numberWithLongLong:type];
    v75[9] = v68;
    v74[10] = @"MitigationReason";
    v35 = [MEMORY[0x277CCABB0] numberWithLongLong:reason];
    v75[10] = v35;
    v75[11] = &unk_28570AC98;
    v74[11] = @"FromPowerExceptions";
    v74[12] = @"FatalCount";
    v36 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(logCopy, "cpuFatalCnt")}];
    v75[12] = v36;
    v74[13] = @"NonFatalCount";
    v37 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(logCopy, "cpuNonFatalCnt")}];
    v75[13] = v37;
    v74[14] = @"EstimatedEnergy";
    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(logCopy, "estimatedEnergyDiff")}];
    v75[14] = v38;
    v74[15] = @"PUUID";
    uuid = [logCopy uuid];
    uUIDString = [uuid UUIDString];
    v75[15] = uUIDString;
    v74[16] = @"CoalitionID";
    v41 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(logCopy, "lastCoalitionID")}];
    v75[16] = v41;
    v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v74 count:17];
    v43 = [v57 dictionaryWithDictionary:v42];

    processName3 = [logCopy processName];

    if (processName3)
    {
      processName4 = [logCopy processName];
      [v43 setObject:processName4 forKeyedSubscript:@"ProcessName"];
    }

    nameCopy = v71;
    v23 = v72;
    if (v71)
    {
      [v43 setObject:v71 forKeyedSubscript:@"CoalitionName"];
    }

    if (v72)
    {
      [v43 setObject:v72 forKeyedSubscript:@"ErrorString"];
    }

    logger = selfCopy->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
    {
      if (fatal)
      {
        v47 = "fatal";
      }

      else
      {
        v47 = "non fatal";
      }

      v48 = logger;
      processName5 = [logCopy processName];
      uuid2 = [logCopy uuid];
      *buf = 136316162;
      v77 = v47;
      v78 = 2080;
      v79 = "Yes";
      v80 = 2112;
      v81 = processName5;
      v82 = 2048;
      v83 = spid;
      v84 = 2112;
      v85 = uuid2;
      _os_log_debug_impl(&dword_243DC3000, v48, OS_LOG_TYPE_DEBUG, "logCPUViolationToPowerLog: Sending %s violation fromPowerExceptions (%s) for process %@ (%llu) (%@) to Power Log", buf, 0x34u);

      v23 = v72;
    }

    [(CSMitigationManager *)selfCopy logCPUViolationToPowerLogWithPayload:v43];
  }

  else if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
  {
    [CSMitigationManager logCPUViolationToPowerLog:pid:coalitionName:endTime:observedValue:observationWindow:limitValue:limitWindow:fatal:mitigationType:mitigationReason:withError:];
  }
}

- (void)logCPUViolationToPowerLogWithPayload:(id)payload
{
  payloadCopy = payload;
  if (logCPUViolationToPowerLogWithPayload__onceToken != -1)
  {
    [CSMitigationManager logCPUViolationToPowerLogWithPayload:];
  }

  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
  {
    [CSMitigationManager logCPUViolationToPowerLogWithPayload:];
  }

  PPSSendTelemetry();
}

uint64_t __60__CSMitigationManager_logCPUViolationToPowerLogWithPayload___block_invoke()
{
  result = PPSCreateTelemetryIdentifier();
  logCPUViolationToPowerLogWithPayload__streamID = result;
  return result;
}

- (void)logMitigationAsSignpost:(id)signpost withPid:(unint64_t)pid withIssueType:(unsigned __int8)type withMitigationType:(unsigned __int8)mitigationType withReason:(unsigned __int8)reason withPenaltyBoxEndTime:(unint64_t)time
{
  mitigationTypeCopy = mitigationType;
  v34 = *MEMORY[0x277D85DE8];
  signpostCopy = signpost;
  memset(v33, 0, sizeof(v33));
  CoalitionID = getCoalitionID(pid);
  switch(mitigationTypeCopy)
  {
    case 3:
      v21 = +[CSLogger signpostCategory];
      v17 = v21;
      if (pid - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v21))
      {
        goto LABEL_14;
      }

      v23 = 136447234;
      uTF8String = [signpostCopy UTF8String];
      v25 = 2050;
      v26 = CoalitionID;
      v27 = 2082;
      v28 = PEIssueTypeString(type);
      v29 = 2082;
      v30 = PEMitigationTypeString(3);
      v31 = 2082;
      v32 = PEReasonString(reason);
      v18 = v17;
      v19 = OS_SIGNPOST_INTERVAL_END;
      goto LABEL_13;
    case 2:
      [(CSMitigationManager *)self getMitigationTypeString:v33 withStringSize:150 withMitigationType:2 withPenaltyBoxEndTime:time];
      v20 = +[CSLogger signpostCategory];
      v17 = v20;
      if (pid - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v20))
      {
        goto LABEL_14;
      }

      v23 = 136447234;
      uTF8String = [signpostCopy UTF8String];
      v25 = 2050;
      v26 = CoalitionID;
      v27 = 2082;
      v28 = PEIssueTypeString(type);
      v29 = 2082;
      v30 = v33;
      v31 = 2082;
      v32 = PEReasonString(reason);
      v18 = v17;
      v19 = OS_SIGNPOST_INTERVAL_BEGIN;
      goto LABEL_13;
    case 1:
      v16 = +[CSLogger signpostCategory];
      v17 = v16;
      if (pid - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v16))
      {
        goto LABEL_14;
      }

      v23 = 136447234;
      uTF8String = [signpostCopy UTF8String];
      v25 = 2050;
      v26 = CoalitionID;
      v27 = 2082;
      v28 = PEIssueTypeString(type);
      v29 = 2082;
      v30 = PEMitigationTypeString(1);
      v31 = 2082;
      v32 = PEReasonString(reason);
      v18 = v17;
      v19 = OS_SIGNPOST_EVENT;
LABEL_13:
      _os_signpost_emit_with_name_impl(&dword_243DC3000, v18, v19, pid, "Mitigation Applied", "Process name: %{public, name=processName}s\nSignpost ID is PID\nCoalition ID: %{public, name=coalitionID}llu\nIssue Type: %{public, name=issueType}s\nMitigation Type: %{public, name=mitigationType}s\nMitigation Reason: %{public, name=mitigationReason}s\n", &v23, 0x34u);
LABEL_14:

      goto LABEL_17;
  }

  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
  {
    [CSMitigationManager logMitigationAsSignpost:signpostCopy withPid:logger withIssueType:? withMitigationType:? withReason:? withPenaltyBoxEndTime:?];
  }

LABEL_17:
}

- (void)forceCPUViolationForProcess:(id)process withHandler:(id)handler
{
  processCopy = process;
  handlerCopy = handler;
  clock_serv = 0;
  cur_time = 0;
  v8 = MEMORY[0x245D52A80]();
  host_get_clock_service(v8, 1, &clock_serv);
  time = clock_get_time(clock_serv, &cur_time);
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  v10 = getMainQueue(time);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__CSMitigationManager_forceCPUViolationForProcess_withHandler___block_invoke;
  v12[3] = &unk_278DF5510;
  v12[4] = self;
  v11 = processCopy;
  v13 = v11;
  v14 = &v16;
  v15 = cur_time;
  dispatch_sync(v10, v12);

  handlerCopy[2](handlerCopy, v17[5]);
  _Block_object_dispose(&v16, 8);
}

void __63__CSMitigationManager_forceCPUViolationForProcess_withHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) processManager];
  v3 = [v2 getProcessForProcessName:*(a1 + 40)];

  if (v3)
  {
    v4 = [v3 trackedPIDs];
    v5 = [v4 count];

    if (v5)
    {
      v6 = [v3 lastPid];
      if (os_log_type_enabled(*(*(a1 + 32) + 40), OS_LOG_TYPE_DEBUG))
      {
        __63__CSMitigationManager_forceCPUViolationForProcess_withHandler___block_invoke_cold_1();
        if (v6)
        {
          goto LABEL_6;
        }
      }

      else if (v6)
      {
LABEL_6:
        v10 = getProcessUUID(v6);
        if (v10)
        {
          LOBYTE(v12) = 0;
          [*(a1 + 32) handleCPUDetectionViolation:v3 coalitionID:getCoalitionID(v6) pid:v6 endTime:*(a1 + 56) observedValue:3000000000 observationWindow:4000000000 limitValue:3000000000 limitWindow:4000000000 fatal:v12];
        }

        else
        {
          v11 = *(*(a1 + 32) + 40);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            __63__CSMitigationManager_forceCPUViolationForProcess_withHandler___block_invoke_cold_2(v11);
          }
        }

        goto LABEL_13;
      }
    }
  }

  v7 = *(a1 + 40);
  v8 = *(*(a1 + 32) + 48);
  v9 = *(*(a1 + 48) + 8);
  obj = *(v9 + 40);
  v6 = [v8 discoverPidForProcessName:v7 withError:&obj];
  objc_storeStrong((v9 + 40), obj);
  if (v6)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(*(*(a1 + 32) + 40), OS_LOG_TYPE_ERROR))
  {
    __63__CSMitigationManager_forceCPUViolationForProcess_withHandler___block_invoke_cold_3();
  }

LABEL_13:
}

- (void)forceMitigation:(id)mitigation forProcess:(id)process withPercentage:(id)percentage withSeconds:(id)seconds withPenaltyBoxDuration:(id)duration withHandler:(id)handler
{
  v93 = *MEMORY[0x277D85DE8];
  mitigationCopy = mitigation;
  processCopy = process;
  percentageCopy = percentage;
  secondsCopy = seconds;
  durationCopy = duration;
  handlerCopy = handler;
  v77 = 0;
  v78 = &v77;
  v79 = 0x3032000000;
  v80 = __Block_byref_object_copy__1;
  v81 = __Block_byref_object_dispose__1;
  v82 = 0;
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v76 = 0;
  v71[0] = 0;
  v71[1] = v71;
  v71[2] = 0x3032000000;
  v71[3] = __Block_byref_object_copy__1;
  v71[4] = __Block_byref_object_dispose__1;
  v72 = 0;
  logger = [(CSMitigationManager *)self logger];
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
  {
    *v87 = 138413314;
    *&v87[4] = mitigationCopy;
    *&v87[12] = 2112;
    *&v87[14] = percentageCopy;
    *&v87[22] = 2112;
    v88 = secondsCopy;
    v89 = 2112;
    v90 = durationCopy;
    v91 = 2112;
    v92 = processCopy;
    _os_log_debug_impl(&dword_243DC3000, logger, OS_LOG_TYPE_DEBUG, "forceMitigation: Force mitigation %@, cpuThreshold %@, cpuTimeWindow %@ penaltyBoxDuration %@ for process: %@", v87, 0x34u);
  }

  v22 = getMainQueue(v21);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __112__CSMitigationManager_forceMitigation_forProcess_withPercentage_withSeconds_withPenaltyBoxDuration_withHandler___block_invoke;
  block[3] = &unk_278DF5538;
  v69 = v71;
  block[4] = self;
  v23 = processCopy;
  v68 = v23;
  v70 = &v77;
  dispatch_sync(v22, block);

  if (v78[5])
  {
    *v87 = 0;
    *&v87[8] = v87;
    *&v87[16] = 0x2020000000;
    LODWORD(v88) = -1;
    v25 = getMainQueue(v24);
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __112__CSMitigationManager_forceMitigation_forProcess_withPercentage_withSeconds_withPenaltyBoxDuration_withHandler___block_invoke_172;
    v66[3] = &unk_278DF5560;
    v66[4] = v87;
    v66[5] = &v77;
    dispatch_sync(v25, v66);

    if (*(*&v87[8] + 24) == -1)
    {
      logger2 = [(CSMitigationManager *)self logger];
      if (os_log_type_enabled(logger2, OS_LOG_TYPE_ERROR))
      {
        identifier = [v78[5] identifier];
        [CSMitigationManager forceMitigation:identifier forProcess:&v87[8] withPercentage:v85 withSeconds:logger2 withPenaltyBoxDuration:? withHandler:?];
      }

      v32 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CSRestrictionManagerErrorDomain" code:1 userInfo:0];
      handlerCopy[2](handlerCopy, v32);

      goto LABEL_22;
    }

    v26 = [mitigationCopy isEqualToString:@"Fatal"];
    if (v26)
    {
      v27 = 1;
LABEL_15:
      v33 = [v78[5] setMitigationType:v27];
      v34 = 0;
LABEL_16:
      v35 = getMainQueue(v33);
      v51 = MEMORY[0x277D85DD0];
      v52 = 3221225472;
      v53 = __112__CSMitigationManager_forceMitigation_forProcess_withPercentage_withSeconds_withPenaltyBoxDuration_withHandler___block_invoke_187;
      v54 = &unk_278DF5588;
      v60 = &v77;
      v62 = v34;
      v55 = durationCopy;
      selfCopy = self;
      v63 = v26;
      v57 = percentageCopy;
      v58 = secondsCopy;
      v36 = handlerCopy;
      v59 = v36;
      v61 = &v73;
      dispatch_sync(v35, &v51);

      if (*(v74 + 6))
      {
        v37 = [(CSMitigationManager *)self logger:v51];
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v49 = *(v74 + 6);
          v50 = strerror(v49);
          *v85 = 67109634;
          *&v85[4] = v49;
          *v86 = 2080;
          *&v86[2] = v50;
          *&v86[10] = 2112;
          *&v86[12] = v23;
          _os_log_error_impl(&dword_243DC3000, v37, OS_LOG_TYPE_ERROR, "forceMitigation: Error enabling CPU monitoring: %d (%s) for process:%@", v85, 0x1Cu);
        }

        v38 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CSRestrictionManagerErrorDomain" code:3 userInfo:0];
        v36[2](v36, v38);
      }

      else
      {
        v36[2](v36, 0);
      }

      goto LABEL_22;
    }

    if ([mitigationCopy isEqualToString:@"NonFatal"])
    {
      v27 = 0;
      goto LABEL_15;
    }

    if ([mitigationCopy hasPrefix:@"PenaltyBoxIn"])
    {
      v39 = [v78[5] setMitigationType:2];
      if (gEnablePenaltyBox)
      {
        *v85 = 0;
        *v86 = v85;
        *&v86[8] = 0x2020000000;
        v86[16] = 0;
        v40 = getMainQueue(v39);
        v65[0] = MEMORY[0x277D85DD0];
        v65[1] = 3221225472;
        v65[2] = __112__CSMitigationManager_forceMitigation_forProcess_withPercentage_withSeconds_withPenaltyBoxDuration_withHandler___block_invoke_185;
        v65[3] = &unk_278DF5560;
        v65[4] = v85;
        v65[5] = &v77;
        dispatch_sync(v40, v65);

        if ((*(*v86 + 24) & 1) == 0)
        {
          _Block_object_dispose(v85, 8);
          v34 = 1;
          goto LABEL_16;
        }

        logger3 = [(CSMitigationManager *)self logger];
        if (os_log_type_enabled(logger3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v84 = v23;
          _os_log_impl(&dword_243DC3000, logger3, OS_LOG_TYPE_DEFAULT, "forceMitigation: process: %@ already in penalty box", buf, 0xCu);
        }

        if ([durationCopy longValue] != -1)
        {
          [v78[5] setPenaltyBoxDurationMins:{objc_msgSend(durationCopy, "longValue")}];
        }

        handlerCopy[2](handlerCopy, 0);
        goto LABEL_50;
      }

      logger4 = [(CSMitigationManager *)self logger];
      if (os_log_type_enabled(logger4, OS_LOG_TYPE_ERROR))
      {
        [CSMitigationManager forceMitigation:forProcess:withPercentage:withSeconds:withPenaltyBoxDuration:withHandler:];
      }
    }

    else
    {
      if (![mitigationCopy hasPrefix:@"PenaltyBoxOut"])
      {
        logger5 = [(CSMitigationManager *)self logger];
        if (os_log_type_enabled(logger5, OS_LOG_TYPE_ERROR))
        {
          [CSMitigationManager forceMitigation:forProcess:withPercentage:withSeconds:withPenaltyBoxDuration:withHandler:];
        }

        v46 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CSRestrictionManagerErrorDomain" code:2 userInfo:0];
        handlerCopy[2](handlerCopy, v46);

        goto LABEL_22;
      }

      v42 = [v78[5] setMitigationType:3];
      if (gEnablePenaltyBox)
      {
        *v85 = 0;
        *v86 = v85;
        *&v86[8] = 0x2020000000;
        v86[16] = 0;
        v43 = getMainQueue(v42);
        v64[0] = MEMORY[0x277D85DD0];
        v64[1] = 3221225472;
        v64[2] = __112__CSMitigationManager_forceMitigation_forProcess_withPercentage_withSeconds_withPenaltyBoxDuration_withHandler___block_invoke_186;
        v64[3] = &unk_278DF5560;
        v64[4] = v85;
        v64[5] = &v77;
        dispatch_sync(v43, v64);

        if (*(*v86 + 24) == 1)
        {
          logger6 = [(CSMitigationManager *)self logger];
          if (os_log_type_enabled(logger6, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v84 = v23;
            _os_log_impl(&dword_243DC3000, logger6, OS_LOG_TYPE_DEFAULT, "forceMitigation: process: %@ already out of penalty box", buf, 0xCu);
          }
        }

        else
        {
          [v78[5] setPenaltyBoxDurationMins:1];
        }

        handlerCopy[2](handlerCopy, 0);
LABEL_50:
        _Block_object_dispose(v85, 8);
        goto LABEL_22;
      }

      logger4 = [(CSMitigationManager *)self logger];
      if (os_log_type_enabled(logger4, OS_LOG_TYPE_ERROR))
      {
        [CSMitigationManager forceMitigation:forProcess:withPercentage:withSeconds:withPenaltyBoxDuration:withHandler:];
      }
    }

    v48 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CSRestrictionManagerErrorDomain" code:4 userInfo:0];
    handlerCopy[2](handlerCopy, v48);

LABEL_22:
    _Block_object_dispose(v87, 8);
    goto LABEL_23;
  }

  logger7 = [(CSMitigationManager *)self logger];
  if (os_log_type_enabled(logger7, OS_LOG_TYPE_ERROR))
  {
    [CSMitigationManager forceMitigation:forProcess:withPercentage:withSeconds:withPenaltyBoxDuration:withHandler:];
  }

  v29 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CSRestrictionManagerErrorDomain" code:0 userInfo:0];
  handlerCopy[2](handlerCopy, v29);

LABEL_23:
  _Block_object_dispose(v71, 8);

  _Block_object_dispose(&v73, 8);
  _Block_object_dispose(&v77, 8);
}

void __112__CSMitigationManager_forceMitigation_forProcess_withPercentage_withSeconds_withPenaltyBoxDuration_withHandler___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 48) identiferForName:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(*(a1[6] + 8) + 40))
  {
    *(*(a1[7] + 8) + 40) = [*(a1[4] + 48) processForIdentifier:?];

    MEMORY[0x2821F96F8]();
  }
}

void *__112__CSMitigationManager_forceMitigation_forProcess_withPercentage_withSeconds_withPenaltyBoxDuration_withHandler___block_invoke_172(uint64_t a1)
{
  result = [*(*(*(a1 + 40) + 8) + 40) lastPid];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void *__112__CSMitigationManager_forceMitigation_forProcess_withPercentage_withSeconds_withPenaltyBoxDuration_withHandler___block_invoke_185(uint64_t a1)
{
  result = [*(*(*(a1 + 40) + 8) + 40) inPenaltyBox];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void *__112__CSMitigationManager_forceMitigation_forProcess_withPercentage_withSeconds_withPenaltyBoxDuration_withHandler___block_invoke_186(uint64_t a1)
{
  result = [*(*(*(a1 + 40) + 8) + 40) inPenaltyBox];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __112__CSMitigationManager_forceMitigation_forProcess_withPercentage_withSeconds_withPenaltyBoxDuration_withHandler___block_invoke_187(uint64_t a1)
{
  v17 = 1;
  v16 = 5;
  v2 = [CSRestrictionManager sharedInstanceWithDataProvider:0];
  [v2 clearRestrictionsForProcess:*(*(*(a1 + 72) + 8) + 40)];

  [*(*(*(a1 + 72) + 8) + 40) setIssueType:0];
  [*(*(*(a1 + 72) + 8) + 40) setMitigationReason:5];
  if (*(a1 + 88) == 1)
  {
    if ([*(a1 + 32) longValue] != -1)
    {
      [*(*(*(a1 + 72) + 8) + 40) setPenaltyBoxDurationMins:{objc_msgSend(*(a1 + 32), "longValue")}];
    }

    v17 = 2;
    v16 = 5;
    v3 = *(a1 + 40);
    v4 = *(*(*(a1 + 72) + 8) + 40);
    v15 = 0;
    [v3 putIntoPenaltyBoxForCSProcess:v4 coalitionID:objc_msgSend(v4 withMitigationDecisionType:"lastCoalitionID") withMitigationDecisionReason:&v17 withError:{&v16, &v15}];

    goto LABEL_5;
  }

  if (*(a1 + 89) == 1 && [*(a1 + 48) longValue] == -1 && objc_msgSend(*(a1 + 56), "longValue") == -1)
  {
    v17 = 1;
    v16 = 5;
    v9 = *(a1 + 40);
    v10 = *(*(*(a1 + 72) + 8) + 40);
    v11 = [v10 lastPid];
    v12 = [*(*(*(a1 + 72) + 8) + 40) lastCoalitionID];
    v14 = 0;
    [v9 killProcess:v10 pid:v11 coalitionID:v12 issueType:0 withMitigationDecisionType:&v17 withMitigationDecisionReason:&v16 withError:&v14];
    v13 = v14;
    (*(*(a1 + 64) + 16))();

LABEL_5:
    v5 = &unk_28570AC98;
    v6 = &unk_28570AC98;
    goto LABEL_16;
  }

  if ([*(a1 + 48) longValue] == -1)
  {
    v5 = &unk_28570AC98;
  }

  else
  {
    v5 = *(a1 + 48);
  }

  if ([*(a1 + 56) longValue] == -1)
  {
    v6 = &unk_28570AC98;
  }

  else
  {
    v6 = *(a1 + 56);
  }

  [*(*(*(a1 + 72) + 8) + 40) setCpuThreshold:v5];
  [*(*(*(a1 + 72) + 8) + 40) setCpuTimeWindow:v6];
  v7 = [CSRestrictionManager sharedInstanceWithDataProvider:0];
  v8 = [v7 defaultRestriction];
  *(*(*(a1 + 80) + 8) + 24) = [v8 applyToProcess:*(*(*(a1 + 72) + 8) + 40)];

LABEL_16:
}

- (void)clearTargetProcessState
{
  v3 = getMainQueue(self);
  dispatch_assert_queue_V2(v3);

  if (gTargetProcess)
  {
    v4 = [(CSProcessManager *)self->_processManager getProcessForProcessName:?];
    if (v4)
    {
      penaltyBoxProcesses = self->_penaltyBoxProcesses;
      v9 = v4;
      uuid = [v4 uuid];
      v7 = [(NSMutableDictionary *)penaltyBoxProcesses objectForKeyedSubscript:uuid];

      v4 = v9;
      if (v7)
      {
        uuid2 = [v9 uuid];
        [(CSMitigationManager *)self removeProcessFromPenaltyBox:uuid2 forReason:1];

        v4 = v9;
      }
    }
  }
}

- (void)_init
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)handleCPUDetectionViolation:coalitionID:pid:endTime:observedValue:observationWindow:limitValue:limitWindow:fatal:.cold.2()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  v3 = [OUTLINED_FUNCTION_10() processName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_12();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x16u);
}

- (void)handleCPUDetectionViolation:coalitionID:pid:endTime:observedValue:observationWindow:limitValue:limitWindow:fatal:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getProcessPathForPID:(void *)a1 .cold.1(void *a1)
{
  v1 = a1;
  __error();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

- (void)handleDetectorViolation:(void *)a1 .cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() processName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)handleDetectorViolation:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleDetectionViolation:(void *)a1 forCSProcess:coalitionID:coalitionName:pid:startTime:endTime:forcedMitigation:withMitigationDecisionType:withMitigationDecisionReason:withError:.cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() processName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)handleDetectionViolation:(void *)a1 forCSProcess:coalitionID:coalitionName:pid:startTime:endTime:forcedMitigation:withMitigationDecisionType:withMitigationDecisionReason:withError:.cold.2(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() processName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)handleDetectionViolation:(void *)a1 forCSProcess:coalitionID:coalitionName:pid:startTime:endTime:forcedMitigation:withMitigationDecisionType:withMitigationDecisionReason:withError:.cold.3(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() processName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)handleDetectionViolation:(void *)a1 forCSProcess:coalitionID:coalitionName:pid:startTime:endTime:forcedMitigation:withMitigationDecisionType:withMitigationDecisionReason:withError:.cold.4(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() processName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)handleDetectionViolation:forCSProcess:coalitionID:coalitionName:pid:startTime:endTime:forcedMitigation:withMitigationDecisionType:withMitigationDecisionReason:withError:.cold.5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)checkKnownViolationByProcess:withStartTime:withEndTime:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleProcessStart:(uint64_t)a3 withMitigationReason:.cold.1(void *a1, void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = 136316930;
  v7 = PEIssueTypeString([a2 issueType]);
  v8 = 2080;
  v9 = PEMitigationTypeString([a2 mitigationType]);
  v10 = 2080;
  v11 = PEReasonString([a2 mitigationReason]);
  v12 = 1024;
  v13 = [a2 cpuFatalCnt];
  v14 = 1024;
  v15 = [a2 cpuNonFatalCnt];
  v16 = 1024;
  v17 = [a2 exitsCnt];
  v18 = 1024;
  v19 = [a2 penaltyBoxCnt];
  v20 = 2112;
  v21 = a3;
  _os_log_debug_impl(&dword_243DC3000, v5, OS_LOG_TYPE_DEBUG, "handleProcessStart: IssueType:%s MitigationType:%s MitigationReason:%s cpuFatalCnt:%u cpu_non_fatal_cnt:%u exitsCnt:%u penaltyBoxCnt:%u for process %@", &v6, 0x42u);
}

- (void)handleProcessStart:withMitigationReason:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)policyMitigationsEnabled
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)decideMitigation:withCoalitionName:withReason:.cold.1()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  v3 = [OUTLINED_FUNCTION_10() processName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_12();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x16u);
}

- (void)decideMitigation:(void *)a1 withCoalitionName:(void *)a2 withReason:.cold.2(void *a1, void *a2)
{
  v4 = a1;
  [OUTLINED_FUNCTION_7() issueType];
  v10 = [a2 processName];
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);
}

- (void)decideMitigation:(void *)a1 withCoalitionName:withReason:.cold.3(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() processName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)decideMitigation:(void *)a1 withCoalitionName:withReason:.cold.4(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() processName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)decideMitigation:withCoalitionName:withReason:.cold.5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)decideMitigation:(void *)a1 withCoalitionName:withReason:.cold.6(void *a1)
{
  v2 = a1;
  v8 = [OUTLINED_FUNCTION_7() processName];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
}

- (void)decideMitigation:(void *)a1 withCoalitionName:(void *)a2 withReason:.cold.7(void *a1, void *a2)
{
  v4 = a1;
  [OUTLINED_FUNCTION_7() cpuFatalCnt];
  v5 = [a2 processName];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x1Cu);
}

- (void)decideMitigation:(void *)a1 withCoalitionName:(void *)a2 withReason:.cold.8(void *a1, void *a2)
{
  v4 = a1;
  [OUTLINED_FUNCTION_7() cpuNonFatalCnt];
  v5 = [a2 processName];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x1Cu);
}

- (void)decideMitigation:(void *)a1 withCoalitionName:withReason:.cold.9(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() processName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)decideMitigation:(void *)a1 withCoalitionName:withReason:.cold.10(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() processName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)decideMitigation:withCoalitionName:withReason:.cold.11()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)checkOverridesForProcess:penaltyBoxDuration:cpuThreshold:timeWindow:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)checkOverridesForProcess:penaltyBoxDuration:cpuThreshold:timeWindow:.cold.2()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)checkOverridesForProcess:penaltyBoxDuration:cpuThreshold:timeWindow:.cold.3()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)checkOverridesForProcess:penaltyBoxDuration:cpuThreshold:timeWindow:.cold.4()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)checkOverridesForProcess:penaltyBoxDuration:cpuThreshold:timeWindow:.cold.5()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)checkOverridesForProcess:penaltyBoxDuration:cpuThreshold:timeWindow:.cold.6()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)killProcess:(uint64_t)a3 pid:coalitionID:issueType:withMitigationDecisionType:withMitigationDecisionReason:withError:.cold.1(void *a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = *__error();
  v7 = __error();
  strerror(*v7);
  v8 = [a2 processName];
  v9[0] = 67109890;
  v9[1] = v6;
  OUTLINED_FUNCTION_8();
  v10 = 2048;
  v11 = a3;
  _os_log_error_impl(&dword_243DC3000, v5, OS_LOG_TYPE_ERROR, "killProcess: terminate_with_payload failed %d (%s) for process:%@ (%llu)", v9, 0x26u);
}

- (void)putIntoPenaltyBoxForCSProcess:coalitionID:withMitigationDecisionType:withMitigationDecisionReason:withError:.cold.1()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  v3 = [OUTLINED_FUNCTION_10() processName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0x16u);
}

- (void)putIntoPenaltyBoxForCSProcess:coalitionID:withMitigationDecisionType:withMitigationDecisionReason:withError:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)putIntoPenaltyBoxForCSProcess:(void *)a1 coalitionID:withMitigationDecisionType:withMitigationDecisionReason:withError:.cold.3(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() processName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)putIntoPenaltyBoxForCSProcess:coalitionID:withMitigationDecisionType:withMitigationDecisionReason:withError:.cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)checkPenaltyBoxProcessesLifecycle:withMitigationReason:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)dayChangedNotificationReceived:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)generateIPSFileForProcess:.cold.1()
{
  OUTLINED_FUNCTION_11();
  v3 = v2;
  v8 = [OUTLINED_FUNCTION_10() processName];
  [v0 violationPid];
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0x1Cu);
}

- (void)generateIPSFileForProcess:(void *)a1 .cold.2(void *a1, void *a2)
{
  v4 = a1;
  v10 = [OUTLINED_FUNCTION_7() processName];
  [a2 violationPid];
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);
}

- (void)logMitigationToPowerLogForProcess:withPid:withCoalitionID:withIssueType:withMitigationType:withReason:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logCPUViolationToPowerLog:pid:coalitionName:endTime:observedValue:observationWindow:limitValue:limitWindow:fatal:mitigationType:mitigationReason:withError:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logCPUViolationToPowerLog:pid:coalitionName:endTime:observedValue:observationWindow:limitValue:limitWindow:fatal:mitigationType:mitigationReason:withError:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logCPUViolationToPowerLogWithPayload:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)logMitigationAsSignpost:(void *)a1 withPid:(void *)a2 withIssueType:withMitigationType:withReason:withPenaltyBoxEndTime:.cold.1(void *a1, void *a2)
{
  v4 = a1;
  v5 = a2;
  [a1 UTF8String];
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x12u);
}

void __63__CSMitigationManager_forceCPUViolationForProcess_withHandler___block_invoke_cold_2(void *a1)
{
  v1 = a1;
  __error();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void __63__CSMitigationManager_forceCPUViolationForProcess_withHandler___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)forceMitigation:forProcess:withPercentage:withSeconds:withPenaltyBoxDuration:withHandler:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_243DC3000, v1, OS_LOG_TYPE_ERROR, "forceMitigation: Unknown mitigation: %@ for process:%@", v2, 0x16u);
}

- (void)forceMitigation:forProcess:withPercentage:withSeconds:withPenaltyBoxDuration:withHandler:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)forceMitigation:(uint8_t *)buf forProcess:(os_log_t)log withPercentage:withSeconds:withPenaltyBoxDuration:withHandler:.cold.4(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  v5 = *(*a2 + 24);
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = v5;
  _os_log_error_impl(&dword_243DC3000, log, OS_LOG_TYPE_ERROR, "forceMitigation: Attempted applying thresholds on invalid PID for process:%@ (%d)", buf, 0x12u);
}

- (void)forceMitigation:forProcess:withPercentage:withSeconds:withPenaltyBoxDuration:withHandler:.cold.5()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end