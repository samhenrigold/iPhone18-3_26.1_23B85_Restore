@interface CSIssueDetector
+ (CSIssueDetector)sharedInstance;
- (BOOL)compareWithValue1:(float)value1 andValue2:(float)value2 andComparator:(int)comparator;
- (id)_init;
- (id)evaluateRuleInFixedWindow:(id)window withStartDate:(id)date andEndDate:(id)endDate;
- (id)evaluateRuleWithSlidingWindow:(id)window withStartDate:(id)date andEndDate:(id)endDate;
- (id)getCPUIssueStartEndTime:(id)time valueThreshold:(float)threshold;
- (id)getCPUIssueWithMitigationSuggestionForCoalitionID:(int)d withLaunchdName:(id)name fromStartDate:(id)date toEndDate:(id)endDate byRule:(id)rule;
- (id)getValueOfMetric:(int)metric startDate:(id)date endDate:(id)endDate;
- (void)clearFatalMitigatedProcessList;
- (void)dayChangedNotificationReceived:(id)received;
- (void)detectIssuesFromStartTime:(id)time endDate:(id)date withRules:(id)rules;
- (void)detectWithLookbackDuration:(double)duration;
- (void)forceDetectorViolationForProcess:(id)process withHandler:(id)handler;
- (void)handleDetectedIssues:(id)issues;
- (void)logIssuesToPowerLogWithPayload:(id)payload;
- (void)processCPUIntervalsForCondition:(id)condition startDate:(id)date endDate:(id)endDate rule:(id)rule normalizer:(id)normalizer issueCandidates:(id)candidates;
- (void)registerForDayChangedNotification;
- (void)resetRuleParameters:(id)parameters withHandler:(id)handler;
- (void)setRuleParameters:(id)parameters withWindowSize:(id)size withStepSize:(id)stepSize withMaxLookback:(id)lookback withDaemonOnly:(id)only withHandler:(id)handler;
- (void)testDetectWithLookbackDuration;
- (void)testHandleDetectedIssues;
@end

@implementation CSIssueDetector

+ (CSIssueDetector)sharedInstance
{
  if (sharedInstance_onceToken_5 != -1)
  {
    +[CSIssueDetector sharedInstance];
  }

  v3 = sharedInstance__sharedInstance_4;

  return v3;
}

uint64_t __33__CSIssueDetector_sharedInstance__block_invoke()
{
  sharedInstance__sharedInstance_4 = [[CSIssueDetector alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v150[3] = *MEMORY[0x277D85DE8];
  v141.receiver = self;
  v141.super_class = CSIssueDetector;
  v2 = [(CSIssueDetector *)&v141 init];
  if (v2)
  {
    v3 = [CSLogger logForCategory:@"CSIssueDetector"];
    v4 = *(v2 + 4);
    *(v2 + 4) = v3;

    v5 = _os_feature_enabled_impl();
    v6 = *(v2 + 4);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
    if (v5)
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&dword_243DC3000, v6, OS_LOG_TYPE_INFO, "Starting Rule Based Detection", buf, 2u);
      }

      v8 = +[CSPowerlogDBReader sharedInstance];
      v9 = *(v2 + 1);
      *(v2 + 1) = v8;

      v10 = *(v2 + 5);
      *(v2 + 5) = &unk_28570B468;

      v138 = [&unk_28570B480 arrayByAddingObjectsFromArray:*(v2 + 5)];
      v139 = 0;
      v11 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"coreautomation\\.coreautomationd|^com\\.openssh\\.sshd\\." options:0 error:&v139];
      v12 = v139;
      v13 = *(v2 + 6);
      *(v2 + 6) = v11;

      if (v12 && os_log_type_enabled(*(v2 + 4), OS_LOG_TYPE_ERROR))
      {
        [CSIssueDetector _init];
      }

      [v2 registerForDayChangedNotification];
      array = [MEMORY[0x277CBEB18] array];
      v15 = *(v2 + 7);
      *(v2 + 7) = array;

      v16 = [CSDetectionRule alloc];
      v17 = [CSDetectionRuleCondition alloc];
      LODWORD(v18) = 1065336439;
      v19 = [(CSDetectionRuleCondition *)v17 initWithScalarMetric:6 andNormalizerMetric:5 andComparator:1 andValue:v18];
      v150[0] = v19;
      v20 = [CSDetectionRuleCondition alloc];
      LODWORD(v21) = 1137180672;
      v22 = [(CSDetectionRuleCondition *)v20 initWithScalarMetric:1 andNormalizerMetric:0 andComparator:2 andValue:v21];
      v150[1] = v22;
      v23 = [CSDetectionRuleCondition alloc];
      LODWORD(v24) = 1050253722;
      v25 = [(CSDetectionRuleCondition *)v23 initWithScalarMetric:3 andNormalizerMetric:1 andComparator:2 andValue:v24];
      v150[2] = v25;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v150 count:3];
      LODWORD(v126) = 1;
      LODWORD(v27) = 1172373504;
      LODWORD(v28) = 1050253722;
      v136 = [(CSDetectionRule *)v16 initWithWindowSize:v26 conditions:0 processesAllowList:*(v2 + 5) processesDenyList:0 processesAllowRegex:*(v2 + 6) processesDenyRegex:1 daemonOnly:v27 mainThresholdValue:v28 ruleID:v126];

      v29 = [CSDetectionRule alloc];
      v30 = [CSDetectionRuleCondition alloc];
      LODWORD(v31) = 1155596288;
      v32 = [(CSDetectionRuleCondition *)v30 initWithScalarMetric:6 andNormalizerMetric:0 andComparator:1 andValue:v31];
      v149[0] = v32;
      v33 = [CSDetectionRuleCondition alloc];
      LODWORD(v34) = 1150681088;
      v35 = [(CSDetectionRuleCondition *)v33 initWithScalarMetric:2 andNormalizerMetric:0 andComparator:2 andValue:v34];
      v149[1] = v35;
      v36 = [CSDetectionRuleCondition alloc];
      LODWORD(v37) = 1050253722;
      v38 = [(CSDetectionRuleCondition *)v36 initWithScalarMetric:4 andNormalizerMetric:2 andComparator:2 andValue:v37];
      v149[2] = v38;
      v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v149 count:3];
      LODWORD(v127) = 2;
      LODWORD(v40) = 1172373504;
      LODWORD(v41) = 1050253722;
      v135 = [(CSDetectionRule *)v29 initWithWindowSize:v39 conditions:0 processesAllowList:*(v2 + 5) processesDenyList:0 processesAllowRegex:*(v2 + 6) processesDenyRegex:1 daemonOnly:v40 mainThresholdValue:v41 ruleID:v127];

      v42 = [CSDetectionRule alloc];
      v43 = [CSDetectionRuleCondition alloc];
      LODWORD(v44) = 1142292480;
      v45 = [(CSDetectionRuleCondition *)v43 initWithScalarMetric:6 andNormalizerMetric:0 andComparator:1 andValue:v44];
      v148[0] = v45;
      v46 = [CSDetectionRuleCondition alloc];
      LODWORD(v47) = 1137180672;
      v48 = [(CSDetectionRuleCondition *)v46 initWithScalarMetric:2 andNormalizerMetric:0 andComparator:2 andValue:v47];
      v148[1] = v48;
      v49 = [CSDetectionRuleCondition alloc];
      LODWORD(v50) = 1050253722;
      v51 = [(CSDetectionRuleCondition *)v49 initWithScalarMetric:4 andNormalizerMetric:2 andComparator:2 andValue:v50];
      v148[2] = v51;
      v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v148 count:3];
      LODWORD(v128) = 3;
      LODWORD(v53) = 1150681088;
      LODWORD(v54) = 1050253722;
      v134 = [(CSDetectionRule *)v42 initWithWindowSize:v52 conditions:*(v2 + 7) processesAllowList:0 processesDenyList:0 processesAllowRegex:0 processesDenyRegex:1 daemonOnly:v53 mainThresholdValue:v54 ruleID:v128];

      v55 = [CSDetectionRule alloc];
      v56 = [CSDetectionRuleCondition alloc];
      LODWORD(v57) = 1065336439;
      v58 = [(CSDetectionRuleCondition *)v56 initWithScalarMetric:6 andNormalizerMetric:5 andComparator:1 andValue:v57];
      v147[0] = v58;
      v59 = [CSDetectionRuleCondition alloc];
      LODWORD(v60) = 1133903872;
      v61 = [(CSDetectionRuleCondition *)v59 initWithScalarMetric:1 andNormalizerMetric:0 andComparator:2 andValue:v60];
      v147[1] = v61;
      v62 = [CSDetectionRuleCondition alloc];
      LODWORD(v63) = 1140457472;
      v64 = [(CSDetectionRuleCondition *)v62 initWithScalarMetric:7 andNormalizerMetric:1 andComparator:2 andValue:v63];
      v147[2] = v64;
      v65 = [MEMORY[0x277CBEA60] arrayWithObjects:v147 count:3];
      LODWORD(v129) = 4;
      LODWORD(v66) = 1142292480;
      LODWORD(v67) = 1133903872;
      LODWORD(v68) = 1157840896;
      LODWORD(v69) = 1140457472;
      v137 = [(CSDetectionRule *)v55 initWithWindowSize:v65 slidingWindowStepSize:0 maxSlidingLookback:v138 conditions:0 processesAllowList:*(v2 + 6) processesDenyList:1 processesAllowRegex:v66 processesDenyRegex:v67 daemonOnly:v68 mainThresholdValue:v69 ruleID:v129];

      v70 = [CSDetectionRule alloc];
      v71 = [CSDetectionRuleCondition alloc];
      LODWORD(v72) = 1133903872;
      v73 = [(CSDetectionRuleCondition *)v71 initWithScalarMetric:6 andNormalizerMetric:0 andComparator:2 andValue:v72];
      v146[0] = v73;
      v74 = [CSDetectionRuleCondition alloc];
      LODWORD(v75) = 1133903872;
      v76 = [(CSDetectionRuleCondition *)v74 initWithScalarMetric:2 andNormalizerMetric:0 andComparator:2 andValue:v75];
      v146[1] = v76;
      v77 = [CSDetectionRuleCondition alloc];
      LODWORD(v78) = 1140457472;
      v79 = [(CSDetectionRuleCondition *)v77 initWithScalarMetric:8 andNormalizerMetric:1 andComparator:2 andValue:v78];
      v146[2] = v79;
      v80 = [MEMORY[0x277CBEA60] arrayWithObjects:v146 count:3];
      LODWORD(v130) = 5;
      LODWORD(v81) = 1142292480;
      LODWORD(v82) = 1133903872;
      LODWORD(v83) = 1157840896;
      LODWORD(v84) = 1140457472;
      v133 = [(CSDetectionRule *)v70 initWithWindowSize:v80 slidingWindowStepSize:0 maxSlidingLookback:v138 conditions:0 processesAllowList:*(v2 + 6) processesDenyList:1 processesAllowRegex:v81 processesDenyRegex:v82 daemonOnly:v83 mainThresholdValue:v84 ruleID:v130];

      v85 = [CSDetectionRule alloc];
      v86 = [CSDetectionRuleCondition alloc];
      LODWORD(v87) = 1065336439;
      v88 = [(CSDetectionRuleCondition *)v86 initWithScalarMetric:6 andNormalizerMetric:5 andComparator:1 andValue:v87];
      v145[0] = v88;
      v89 = [CSDetectionRuleCondition alloc];
      LODWORD(v90) = 1133903872;
      v91 = [(CSDetectionRuleCondition *)v89 initWithScalarMetric:2 andNormalizerMetric:0 andComparator:2 andValue:v90];
      v145[1] = v91;
      v92 = [CSDetectionRuleCondition alloc];
      LODWORD(v93) = 1132068864;
      v94 = [(CSDetectionRuleCondition *)v92 initWithScalarMetric:7 andNormalizerMetric:1 andComparator:2 andValue:v93];
      v145[2] = v94;
      v95 = [MEMORY[0x277CBEA60] arrayWithObjects:v145 count:3];
      LODWORD(v131) = 6;
      LODWORD(v96) = 1150681088;
      LODWORD(v97) = 1133903872;
      LODWORD(v98) = 1160298496;
      LODWORD(v99) = 1132068864;
      v100 = [(CSDetectionRule *)v85 initWithWindowSize:v95 slidingWindowStepSize:0 maxSlidingLookback:v138 conditions:0 processesAllowList:*(v2 + 6) processesDenyList:1 processesAllowRegex:v96 processesDenyRegex:v97 daemonOnly:v98 mainThresholdValue:v99 ruleID:v131];

      v101 = [CSDetectionRule alloc];
      v102 = [CSDetectionRuleCondition alloc];
      LODWORD(v103) = 1142292480;
      v104 = [(CSDetectionRuleCondition *)v102 initWithScalarMetric:6 andNormalizerMetric:0 andComparator:2 andValue:v103];
      v144[0] = v104;
      v105 = [CSDetectionRuleCondition alloc];
      LODWORD(v106) = 1133903872;
      v107 = [(CSDetectionRuleCondition *)v105 initWithScalarMetric:2 andNormalizerMetric:0 andComparator:2 andValue:v106];
      v144[1] = v107;
      v108 = [CSDetectionRuleCondition alloc];
      LODWORD(v109) = 1132068864;
      v110 = [(CSDetectionRuleCondition *)v108 initWithScalarMetric:8 andNormalizerMetric:1 andComparator:2 andValue:v109];
      v144[2] = v110;
      v111 = [MEMORY[0x277CBEA60] arrayWithObjects:v144 count:3];
      LODWORD(v132) = 7;
      LODWORD(v112) = 1150681088;
      LODWORD(v113) = 1133903872;
      LODWORD(v114) = 1160298496;
      LODWORD(v115) = 1132068864;
      v116 = [(CSDetectionRule *)v101 initWithWindowSize:v111 slidingWindowStepSize:0 maxSlidingLookback:v138 conditions:0 processesAllowList:*(v2 + 6) processesDenyList:1 processesAllowRegex:v112 processesDenyRegex:v113 daemonOnly:v114 mainThresholdValue:v115 ruleID:v132];

      v143[0] = v136;
      v143[1] = v135;
      v143[2] = v137;
      v143[3] = v133;
      v117 = v100;
      v143[4] = v100;
      v143[5] = v116;
      v118 = [MEMORY[0x277CBEA60] arrayWithObjects:v143 count:6];
      if ([*(v2 + 7) count])
      {
        v119 = v134;
        v142 = v134;
        v120 = [MEMORY[0x277CBEA60] arrayWithObjects:&v142 count:1];
        v121 = [v120 arrayByAddingObjectsFromArray:v118];
        v122 = *(v2 + 2);
        *(v2 + 2) = v121;
      }

      else
      {
        v123 = v118;
        v120 = *(v2 + 2);
        *(v2 + 2) = v123;
        v119 = v134;
      }
    }

    else if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_243DC3000, v6, OS_LOG_TYPE_INFO, "No rule based detection: PerfPowerServices/safeguards_rule_detection feature flag is off", buf, 2u);
    }

    v124 = v2;
  }

  return v2;
}

- (void)detectWithLookbackDuration:(double)duration
{
  v7 = [MEMORY[0x277CBEAA8] now];
  v5 = [v7 dateByAddingTimeInterval:-duration];
  rules = [(CSIssueDetector *)self rules];
  [(CSIssueDetector *)self detectIssuesFromStartTime:v5 endDate:v7 withRules:rules];
}

- (void)detectIssuesFromStartTime:(id)time endDate:(id)date withRules:(id)rules
{
  v67 = *MEMORY[0x277D85DE8];
  v8 = COERCE_DOUBLE(time);
  dateCopy = date;
  rulesCopy = rules;
  if (_os_feature_enabled_impl())
  {
    [dateCopy timeIntervalSinceDate:*&v8];
    v12 = v11;
    array = [MEMORY[0x277CBEB18] array];
    [(CSPowerlogDBReader *)self->_powerlogDBReader openConnection];
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v49 = rulesCopy;
    obj = rulesCopy;
    v13 = [obj countByEnumeratingWithState:&v57 objects:v66 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v58;
      v50 = v8;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v58 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v57 + 1) + 8 * i);
          v18 = objc_autoreleasePoolPush();
          [v17 windowSize];
          if (v12 >= v19 * 0.9)
          {
            if ([v17 useSlidingWindow])
            {
              logger = self->_logger;
              if (os_log_type_enabled(logger, OS_LOG_TYPE_INFO))
              {
                v31 = logger;
                ruleID = [v17 ruleID];
                LODWORD(buf) = 67109634;
                HIDWORD(buf) = ruleID;
                v62 = 2112;
                v63 = v8;
                v64 = 2112;
                v65 = dateCopy;
                _os_log_impl(&dword_243DC3000, v31, OS_LOG_TYPE_INFO, "Start detection for rule %d: From %@ to %@, with sliding window", &buf, 0x1Cu);
              }

              v33 = [(CSIssueDetector *)self evaluateRuleWithSlidingWindow:v17 withStartDate:*&v8 andEndDate:dateCopy];
              v34 = self->_logger;
              if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
              {
                v35 = v34;
                ruleID2 = [v17 ruleID];
                v37 = COERCE_DOUBLE([v33 count]);
                LODWORD(buf) = 67109376;
                HIDWORD(buf) = ruleID2;
                v8 = v50;
                v62 = 2048;
                v63 = v37;
                _os_log_impl(&dword_243DC3000, v35, OS_LOG_TYPE_INFO, "Finish detection for rule %d: Detected %lu issues", &buf, 0x12u);
              }

              [array addObjectsFromArray:v33];
            }

            else
            {
              [v17 windowSize];
              [dateCopy dateByAddingTimeInterval:-v38];
              v39 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              v40 = self->_logger;
              if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
              {
                v41 = v40;
                ruleID3 = [v17 ruleID];
                LODWORD(buf) = 67109634;
                HIDWORD(buf) = ruleID3;
                v62 = 2112;
                v63 = v39;
                v64 = 2112;
                v65 = dateCopy;
                _os_log_impl(&dword_243DC3000, v41, OS_LOG_TYPE_INFO, "Start detection for rule %d: From %@ to %@, without sliding window", &buf, 0x1Cu);
              }

              v43 = [(CSIssueDetector *)self evaluateRuleInFixedWindow:v17 withStartDate:*&v39 andEndDate:dateCopy];
              v44 = self->_logger;
              if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
              {
                v45 = v44;
                ruleID4 = [v17 ruleID];
                v47 = COERCE_DOUBLE([v43 count]);
                LODWORD(buf) = 67109376;
                HIDWORD(buf) = ruleID4;
                v62 = 2048;
                v63 = v47;
                _os_log_impl(&dword_243DC3000, v45, OS_LOG_TYPE_INFO, "Finish detection for rule %d: Detected %lu issues", &buf, 0x12u);
              }

              [array addObjectsFromArray:v43];

              v8 = v50;
            }
          }

          else
          {
            v20 = self->_logger;
            v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
            if (v21)
            {
              v22 = v20;
              ruleID5 = [v17 ruleID];
              [v17 windowSize];
              LODWORD(buf) = 67109376;
              HIDWORD(buf) = ruleID5;
              v62 = 2048;
              v63 = v24 - v12;
              _os_log_impl(&dword_243DC3000, v22, OS_LOG_TYPE_INFO, "Prepare detection for rule %d: Waiting for %.0f seconds, without sliding window", &buf, 0x12u);
            }

            v25 = getMainQueue(v21);
            v26 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v25);

            [v17 windowSize];
            v28 = dispatch_walltime(0, ((v27 - v12) * 1000000000.0));
            dispatch_source_set_timer(v26, v28, 0, 0x6FC23AC00uLL);
            objc_initWeak(&buf, self);
            handler[0] = MEMORY[0x277D85DD0];
            handler[1] = 3221225472;
            handler[2] = __63__CSIssueDetector_detectIssuesFromStartTime_endDate_withRules___block_invoke;
            handler[3] = &unk_278DF5788;
            v54 = v26;
            v55 = v17;
            v29 = v26;
            objc_copyWeak(&v56, &buf);
            dispatch_source_set_event_handler(v29, handler);
            dispatch_resume(v29);
            objc_destroyWeak(&v56);

            objc_destroyWeak(&buf);
          }

          objc_autoreleasePoolPop(v18);
        }

        v14 = [obj countByEnumeratingWithState:&v57 objects:v66 count:16];
      }

      while (v14);
    }

    [(CSPowerlogDBReader *)self->_powerlogDBReader closeConnection];
    if ([array count])
    {
      [(CSIssueDetector *)self handleDetectedIssues:array];
    }

    rulesCopy = v49;
  }

  else
  {
    v48 = self->_logger;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_243DC3000, v48, OS_LOG_TYPE_INFO, "detectWithLookbackDuration: No rule based detection: PerfPowerServices/safeguards_rule_detection feature flag is off", &buf, 2u);
    }
  }
}

void __63__CSIssueDetector_detectIssuesFromStartTime_endDate_withRules___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  dispatch_source_cancel(*(a1 + 32));
  v2 = [MEMORY[0x277CBEAA8] now];
  [*(a1 + 40) windowSize];
  v4 = [v2 dateByAddingTimeInterval:-v3];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = [WeakRetained logger];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [*(a1 + 40) ruleID];
    v15 = 67109634;
    v16 = v7;
    v17 = 2112;
    v18 = v4;
    v19 = 2112;
    v20 = v2;
    _os_log_impl(&dword_243DC3000, v6, OS_LOG_TYPE_INFO, "detectWithLookbackDuration: Start detection for rule %d: From %@ to %@, without sliding window", &v15, 0x1Cu);
  }

  v8 = objc_loadWeakRetained((a1 + 48));
  v9 = [v8 evaluateRuleInFixedWindow:*(a1 + 40) withStartDate:v4 andEndDate:v2];

  v10 = objc_loadWeakRetained((a1 + 48));
  v11 = [v10 logger];

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [*(a1 + 40) ruleID];
    v13 = [v9 count];
    v15 = 67109376;
    v16 = v12;
    v17 = 2048;
    v18 = v13;
    _os_log_impl(&dword_243DC3000, v11, OS_LOG_TYPE_INFO, "detectWithLookbackDuration: Finish detection for rule %d: Detected %lu issues", &v15, 0x12u);
  }

  v14 = objc_loadWeakRetained((a1 + 48));
  [v14 handleDetectedIssues:v9];
}

- (id)getValueOfMetric:(int)metric startDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v10 = endDateCopy;
  if (metric <= 3)
  {
    if (metric > 1)
    {
      if (metric == 2)
      {
        powerlogDBReader = [(CSIssueDetector *)self powerlogDBReader];
        v16 = [powerlogDBReader getAPWakeIntervalListWithStartDate:dateCopy andEndDate:v10];

        powerlogDBReader2 = [(CSIssueDetector *)self powerlogDBReader];
        v18 = [powerlogDBReader2 getUnpluggedIntervalListWithStartDate:dateCopy andEndDate:v10];

        v19 = [v16 intersectWithIntervalList:v18];
        [v19 durationInSeconds];
        v14 = [MEMORY[0x277CCABB0] numberWithDouble:?];

        goto LABEL_28;
      }

      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
      {
        [CSIssueDetector getValueOfMetric:startDate:endDate:];
      }

      goto LABEL_27;
    }

    if (!metric)
    {
      v14 = &unk_28570AF68;
      goto LABEL_28;
    }

    if (metric != 1)
    {
LABEL_25:
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
      {
        [CSIssueDetector getValueOfMetric:startDate:endDate:];
      }

      goto LABEL_27;
    }

    powerlogDBReader3 = [(CSIssueDetector *)self powerlogDBReader];
    v12 = [powerlogDBReader3 getAPWakeIntervalListWithStartDate:dateCopy andEndDate:v10];
LABEL_20:
    v20 = v12;

    [v20 durationInSeconds];
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:?];

    goto LABEL_28;
  }

  if (metric <= 5)
  {
    if (metric != 4)
    {
      v13 = MEMORY[0x277CCABB0];
      [endDateCopy timeIntervalSinceDate:dateCopy];
      v14 = [v13 numberWithDouble:?];
      goto LABEL_28;
    }

    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      [CSIssueDetector getValueOfMetric:startDate:endDate:];
    }

    goto LABEL_27;
  }

  if (metric == 6)
  {
    powerlogDBReader3 = [(CSIssueDetector *)self powerlogDBReader];
    v12 = [powerlogDBReader3 getUnpluggedIntervalListWithStartDate:dateCopy andEndDate:v10];
    goto LABEL_20;
  }

  if (metric == 7)
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      [CSIssueDetector getValueOfMetric:startDate:endDate:];
    }

    goto LABEL_27;
  }

  if (metric != 8)
  {
    goto LABEL_25;
  }

  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
  {
    [CSIssueDetector getValueOfMetric:startDate:endDate:];
  }

LABEL_27:
  v14 = 0;
LABEL_28:

  return v14;
}

- (void)processCPUIntervalsForCondition:(id)condition startDate:(id)date endDate:(id)endDate rule:(id)rule normalizer:(id)normalizer issueCandidates:(id)candidates
{
  v104 = *MEMORY[0x277D85DE8];
  conditionCopy = condition;
  dateCopy = date;
  endDateCopy = endDate;
  ruleCopy = rule;
  normalizerCopy = normalizer;
  candidatesCopy = candidates;
  v17 = [conditionCopy scalarMetric] == 4 || objc_msgSend(conditionCopy, "scalarMetric") == 8;
  v83 = "energy";
  if ([conditionCopy scalarMetric] != 8)
  {
    scalarMetric = [conditionCopy scalarMetric];
    v19 = "seconds";
    if (scalarMetric == 7)
    {
      v19 = "energy";
    }

    v83 = v19;
  }

  scalarMetric2 = [conditionCopy scalarMetric];
  if ((scalarMetric2 - 7) < 2)
  {
    v84 = candidatesCopy;
    powerlogDBReader = [(CSIssueDetector *)self powerlogDBReader];
    processesAllowList = [ruleCopy processesAllowList];
    processesDenyList = [ruleCopy processesDenyList];
    v24 = [powerlogDBReader getCPUEnergyIntervalListMapWithStartDate:dateCopy andEndDate:endDateCopy andAllowListCoalitions:processesAllowList andDenyListCoalitions:processesDenyList andDaemonOnly:{objc_msgSend(ruleCopy, "daemonOnly")}];
    goto LABEL_12;
  }

  if ((scalarMetric2 - 3) <= 1)
  {
    v84 = candidatesCopy;
    powerlogDBReader = [(CSIssueDetector *)self powerlogDBReader];
    processesAllowList = [ruleCopy processesAllowList];
    processesDenyList = [ruleCopy processesDenyList];
    v24 = [powerlogDBReader getCPUPercentageIntervalListMapWithStartDate:dateCopy andEndDate:endDateCopy andAllowListCoalitions:processesAllowList andDenyListCoalitions:processesDenyList andDaemonOnly:{objc_msgSend(ruleCopy, "daemonOnly")}];
LABEL_12:
    v25 = v24;

    if (v17)
    {
      powerlogDBReader2 = [(CSIssueDetector *)self powerlogDBReader];
      v88 = [powerlogDBReader2 getUnpluggedIntervalListWithStartDate:dateCopy andEndDate:endDateCopy];
    }

    else
    {
      v88 = 0;
    }

    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v27 = v25;
    v90 = [v27 countByEnumeratingWithState:&v93 objects:v103 count:16];
    if (v90)
    {
      v29 = "";
      v89 = *v94;
      if (v17)
      {
        v29 = "unplugged";
      }

      v80 = v29;
      *&v28 = 138412290;
      v78 = v28;
      v79 = conditionCopy;
      v86 = v27;
      v81 = ruleCopy;
      v82 = dateCopy;
      v87 = v17;
      do
      {
        for (i = 0; i != v90; ++i)
        {
          if (*v94 != v89)
          {
            objc_enumerationMutation(v27);
          }

          v31 = *(*(&v93 + 1) + 8 * i);
          v32 = objc_autoreleasePoolPush();
          v33 = [v27 objectForKeyedSubscript:v31];
          v34 = v33;
          if (v17)
          {
            v35 = [v33 intersectWithIntervalList:v88];

            v34 = v35;
          }

          [v34 timeWeightedSum];
          v37 = v36;
          v38 = v36;
          [conditionCopy value];
          v40 = v39;
          [normalizerCopy doubleValue];
          *&v40 = v41 * v40;
          comparator = [conditionCopy comparator];
          *&v43 = v38;
          LODWORD(v44) = LODWORD(v40);
          if ([(CSIssueDetector *)self compareWithValue1:comparator andValue2:v43 andComparator:v44])
          {
            v45 = [v31 rangeOfString:@":" options:4];
            if (v45 == 0x7FFFFFFFFFFFFFFFLL)
            {
              logger = self->_logger;
              if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
              {
                *buf = v78;
                v98 = v31;
                _os_log_error_impl(&dword_243DC3000, logger, OS_LOG_TYPE_ERROR, "Wrong format of launchdNameAndCID: %@", buf, 0xCu);
              }

              v47 = v31;
              v48 = &unk_28570AF80;
            }

            else
            {
              v49 = v45;
              v50 = MEMORY[0x277CCABB0];
              v51 = [v31 substringFromIndex:v45 + 1];
              v48 = [v50 numberWithInt:{objc_msgSend(v51, "intValue")}];

              v47 = [v31 substringToIndex:v49];
            }

            processesAllowRegex = [ruleCopy processesAllowRegex];

            if (!processesAllowRegex || ([ruleCopy processesAllowRegex], v53 = objc_claimAutoreleasedReturnValue(), v54 = objc_msgSend(v53, "rangeOfFirstMatchInString:options:range:", v47, 0, 0, objc_msgSend(v47, "length")), v53, v54 != 0x7FFFFFFFFFFFFFFFLL))
            {
              processesDenyRegex = [ruleCopy processesDenyRegex];

              if (!processesDenyRegex || ([ruleCopy processesDenyRegex], v56 = objc_claimAutoreleasedReturnValue(), v57 = objc_msgSend(v56, "rangeOfFirstMatchInString:options:range:", v47, 0, 0, objc_msgSend(v47, "length")), v56, v57 == 0x7FFFFFFFFFFFFFFFLL))
              {
                v58 = self->_logger;
                if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
                {
                  *buf = 136315650;
                  v98 = v83;
                  v99 = 2080;
                  v100 = v80;
                  v101 = 2112;
                  v102 = v47;
                  _os_log_impl(&dword_243DC3000, v58, OS_LOG_TYPE_INFO, "CPU %s %s threshold matches process with launchd name %@", buf, 0x20u);
                }

                v59 = -[CSIssueDetector getCPUIssueWithMitigationSuggestionForCoalitionID:withLaunchdName:fromStartDate:toEndDate:byRule:](self, "getCPUIssueWithMitigationSuggestionForCoalitionID:withLaunchdName:fromStartDate:toEndDate:byRule:", [v48 intValue], v47, dateCopy, endDateCopy, ruleCopy);
                [v59 setRule:ruleCopy];
                v60 = MEMORY[0x277CCABB0];
                [normalizerCopy doubleValue];
                v62 = [v60 numberWithDouble:v37 / v61];
                [v59 setValue:v62];

                if ([v34 count])
                {
                  [ruleCopy mainThresholdValue];
                  *&v64 = v63 / 10.0;
                  v65 = [(CSIssueDetector *)self getCPUIssueStartEndTime:v34 valueThreshold:v64];
                  if ([v65 count] == 2)
                  {
                    v66 = [v65 objectAtIndexedSubscript:0];
                    null = [MEMORY[0x277CBEB68] null];

                    if (v66 != null)
                    {
                      powerlogDBReader3 = [(CSIssueDetector *)self powerlogDBReader];
                      v69 = [v65 objectAtIndexedSubscript:0];
                      v70 = [powerlogDBReader3 getSystemTime:v69];
                      [v59 setStartTime:v70];

                      conditionCopy = v79;
                    }

                    v71 = [v65 objectAtIndexedSubscript:1];
                    null2 = [MEMORY[0x277CBEB68] null];

                    v73 = v71 == null2;
                    ruleCopy = v81;
                    dateCopy = v82;
                    if (!v73)
                    {
                      powerlogDBReader4 = [(CSIssueDetector *)self powerlogDBReader];
                      v75 = [v65 objectAtIndexedSubscript:1];
                      v76 = [powerlogDBReader4 getSystemTime:v75];
                      [v59 setEndTime:v76];

                      conditionCopy = v79;
                      ruleCopy = v81;

                      dateCopy = v82;
                    }
                  }
                }

                [v84 addObject:v59];
              }
            }

            v17 = v87;
            v27 = v86;
          }

          objc_autoreleasePoolPop(v32);
        }

        v90 = [v27 countByEnumeratingWithState:&v93 objects:v103 count:16];
      }

      while (v90);
    }

    candidatesCopy = v84;
    [v84 count];

    goto LABEL_48;
  }

  v77 = self->_logger;
  if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
  {
    [CSIssueDetector processCPUIntervalsForCondition:v77 startDate:? endDate:? rule:? normalizer:? issueCandidates:?];
  }

LABEL_48:
}

- (id)evaluateRuleInFixedWindow:(id)window withStartDate:(id)date andEndDate:(id)endDate
{
  v100 = *MEMORY[0x277D85DE8];
  windowCopy = window;
  dateCopy = date;
  endDateCopy = endDate;
  if (([windowCopy detectAcrossBoots] & 1) == 0)
  {
    powerlogDBReader = [(CSIssueDetector *)self powerlogDBReader];
    getDeviceBootTime = [powerlogDBReader getDeviceBootTime];

    if ([dateCopy compare:getDeviceBootTime] == -1)
    {
      logger = self->_logger;
      if (os_log_type_enabled(logger, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *v99 = dateCopy;
        *&v99[8] = 2112;
        *&v99[10] = getDeviceBootTime;
        _os_log_impl(&dword_243DC3000, logger, OS_LOG_TYPE_INFO, "Updated startDate (was %@) to deviceBootTime %@", buf, 0x16u);
      }

      v14 = getDeviceBootTime;

      dateCopy = v14;
    }
  }

  v15 = self->_logger;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = v15;
    ruleID = [windowCopy ruleID];
    *buf = 67109634;
    *v99 = ruleID;
    *&v99[4] = 2112;
    *&v99[6] = dateCopy;
    *&v99[14] = 2112;
    *&v99[16] = endDateCopy;
    _os_log_impl(&dword_243DC3000, v16, OS_LOG_TYPE_INFO, "Evaluating rule %d in a fixed window [%@, %@]", buf, 0x1Cu);
  }

  [endDateCopy timeIntervalSinceDate:dateCopy];
  if (v18 < 0.0)
  {
    v19 = self->_logger;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *v99 = dateCopy;
      *&v99[8] = 2112;
      *&v99[10] = endDateCopy;
      _os_log_impl(&dword_243DC3000, v19, OS_LOG_TYPE_INFO, "Skip evaluating rule since startDate %@ is later than endDate %@", buf, 0x16u);
    }

LABEL_15:
    array = 0;
    goto LABEL_72;
  }

  [endDateCopy timeIntervalSinceDate:dateCopy];
  v21 = v20;
  [windowCopy windowSize];
  if (v21 < v22 * 0.9)
  {
    v23 = self->_logger;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = v23;
      [windowCopy windowSize];
      *buf = 138412802;
      *v99 = dateCopy;
      *&v99[8] = 2112;
      *&v99[10] = endDateCopy;
      *&v99[18] = 2048;
      *&v99[20] = v25;
      _os_log_impl(&dword_243DC3000, v24, OS_LOG_TYPE_INFO, "Skip evaluating rule since duration from %@ to %@ is not enough for %f", buf, 0x20u);
    }

    goto LABEL_15;
  }

  array = [MEMORY[0x277CBEB18] array];
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  obj = [windowCopy conditions];
  v91 = [obj countByEnumeratingWithState:&v93 objects:v97 count:16];
  if (!v91)
  {
    goto LABEL_71;
  }

  v92 = *v94;
  v89 = array;
  do
  {
    v27 = 0;
    do
    {
      if (*v94 != v92)
      {
        objc_enumerationMutation(obj);
      }

      v28 = *(*(&v93 + 1) + 8 * v27);
      v29 = objc_autoreleasePoolPush();
      v30 = -[CSIssueDetector getValueOfMetric:startDate:endDate:](self, "getValueOfMetric:startDate:endDate:", [v28 normalizerMetric], dateCopy, endDateCopy);
      v31 = v30;
      if (!v30)
      {
        v83 = self->_logger;
        if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
        {
          [CSIssueDetector evaluateRuleInFixedWindow:v83 withStartDate:? andEndDate:?];
        }

        goto LABEL_58;
      }

      [v30 doubleValue];
      if (v32 == 0.0)
      {
        v84 = self->_logger;
        if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
        {
          [CSIssueDetector evaluateRuleInFixedWindow:v84 withStartDate:? andEndDate:?];
        }

        goto LABEL_58;
      }

      if ([v28 scalarMetric] == 1)
      {
        v33 = [(CSIssueDetector *)self getValueOfMetric:1 startDate:dateCopy endDate:endDateCopy];
        v34 = v33;
        if (!v33)
        {
          if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
          {
            [CSIssueDetector evaluateRuleInFixedWindow:buf withStartDate:&buf[1] andEndDate:?];
          }

          goto LABEL_68;
        }

        [v33 doubleValue];
        v36 = v35;
        [v28 value];
        v38 = v37;
        [v31 doubleValue];
        *&v38 = v39 * v38;
        comparator = [v28 comparator];
        *&v41 = v36;
        LODWORD(v42) = LODWORD(v38);
        v43 = [(CSIssueDetector *)self compareWithValue1:comparator andValue2:v41 andComparator:v42];
        v44 = self->_logger;
        v45 = os_log_type_enabled(v44, OS_LOG_TYPE_INFO);
        if (!v43)
        {
          if (v45)
          {
            *buf = 0;
            v85 = "--APWakeDuration condition not meet";
            goto LABEL_67;
          }

          goto LABEL_68;
        }

        if (v45)
        {
          *buf = 0;
          v46 = v44;
          v47 = "++APWakeDuration condition meet";
          goto LABEL_33;
        }

LABEL_34:

        goto LABEL_40;
      }

      if ([v28 scalarMetric] == 2)
      {
        v48 = [(CSIssueDetector *)self getValueOfMetric:2 startDate:dateCopy endDate:endDateCopy];
        v34 = v48;
        if (!v48)
        {
          if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
          {
            [CSIssueDetector evaluateRuleInFixedWindow:buf withStartDate:&buf[1] andEndDate:?];
          }

          goto LABEL_68;
        }

        [v48 doubleValue];
        v50 = v49;
        [v28 value];
        v52 = v51;
        [v31 doubleValue];
        *&v52 = v53 * v52;
        comparator2 = [v28 comparator];
        *&v55 = v50;
        LODWORD(v56) = LODWORD(v52);
        v57 = [(CSIssueDetector *)self compareWithValue1:comparator2 andValue2:v55 andComparator:v56];
        v44 = self->_logger;
        v58 = os_log_type_enabled(v44, OS_LOG_TYPE_INFO);
        if (!v57)
        {
          if (v58)
          {
            *buf = 0;
            v85 = "--APAwakeDurationUnplugged condition not meet";
            goto LABEL_67;
          }

          goto LABEL_68;
        }

        if (!v58)
        {
          goto LABEL_34;
        }

        *buf = 0;
        v46 = v44;
        v47 = "++APAwakeDurationUnplugged condition meet";
        goto LABEL_33;
      }

      if ([v28 scalarMetric] != 3 && objc_msgSend(v28, "scalarMetric") != 4 && objc_msgSend(v28, "scalarMetric") != 7 && objc_msgSend(v28, "scalarMetric") != 8)
      {
        if ([v28 scalarMetric] == 5)
        {
          v60 = [(CSIssueDetector *)self getValueOfMetric:5 startDate:dateCopy endDate:endDateCopy];
          v34 = v60;
          if (!v60)
          {
            if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
            {
              [CSIssueDetector evaluateRuleInFixedWindow:buf withStartDate:&buf[1] andEndDate:?];
            }

            goto LABEL_68;
          }

          [v60 doubleValue];
          v62 = v61;
          [v28 value];
          v64 = v63;
          [v31 doubleValue];
          *&v64 = v65 * v64;
          comparator3 = [v28 comparator];
          *&v67 = v62;
          LODWORD(v68) = LODWORD(v64);
          v69 = [(CSIssueDetector *)self compareWithValue1:comparator3 andValue2:v67 andComparator:v68];
          v44 = self->_logger;
          v70 = os_log_type_enabled(v44, OS_LOG_TYPE_INFO);
          if (!v69)
          {
            if (v70)
            {
              *buf = 0;
              v85 = "--UnpluggedDuration condition not meet";
              goto LABEL_67;
            }

            goto LABEL_68;
          }

          if (!v70)
          {
            goto LABEL_34;
          }
        }

        else
        {
          if ([v28 scalarMetric] != 6)
          {
            v88 = self->_logger;
            if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
            {
              [CSIssueDetector evaluateRuleInFixedWindow:v88 withStartDate:? andEndDate:?];
            }

LABEL_58:
            [v89 removeAllObjects];
            goto LABEL_70;
          }

          v71 = [(CSIssueDetector *)self getValueOfMetric:6 startDate:dateCopy endDate:endDateCopy];
          v34 = v71;
          if (!v71)
          {
            v86 = v89;
            if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
            {
              [CSIssueDetector evaluateRuleInFixedWindow:buf withStartDate:&buf[1] andEndDate:?];
            }

            goto LABEL_69;
          }

          [v71 doubleValue];
          v73 = v72;
          [v28 value];
          v75 = v74;
          [v31 doubleValue];
          *&v75 = v76 * v75;
          comparator4 = [v28 comparator];
          *&v78 = v73;
          LODWORD(v79) = LODWORD(v75);
          v80 = [(CSIssueDetector *)self compareWithValue1:comparator4 andValue2:v78 andComparator:v79];
          v44 = self->_logger;
          v81 = os_log_type_enabled(v44, OS_LOG_TYPE_INFO);
          if (!v80)
          {
            if (v81)
            {
              *buf = 0;
              v85 = "--UnpluggedDuration condition not meet";
LABEL_67:
              _os_log_impl(&dword_243DC3000, v44, OS_LOG_TYPE_INFO, v85, buf, 2u);
            }

LABEL_68:
            v86 = v89;
LABEL_69:
            [v86 removeAllObjects];

LABEL_70:
            objc_autoreleasePoolPop(v29);
            array = v89;
            goto LABEL_71;
          }

          if (!v81)
          {
            goto LABEL_34;
          }
        }

        *buf = 0;
        v46 = v44;
        v47 = "++UnpluggedDuration condition meet";
LABEL_33:
        _os_log_impl(&dword_243DC3000, v46, OS_LOG_TYPE_INFO, v47, buf, 2u);
        goto LABEL_34;
      }

      v59 = v89;
      [(CSIssueDetector *)self processCPUIntervalsForCondition:v28 startDate:dateCopy endDate:endDateCopy rule:windowCopy normalizer:v31 issueCandidates:v89, v89];
      if (![v59 count])
      {
        goto LABEL_70;
      }

LABEL_40:

      objc_autoreleasePoolPop(v29);
      ++v27;
    }

    while (v91 != v27);
    v82 = [obj countByEnumeratingWithState:&v93 objects:v97 count:16];
    array = v89;
    v91 = v82;
  }

  while (v82);
LABEL_71:

LABEL_72:

  return array;
}

- (id)evaluateRuleWithSlidingWindow:(id)window withStartDate:(id)date andEndDate:(id)endDate
{
  v73 = *MEMORY[0x277D85DE8];
  windowCopy = window;
  dateCopy = date;
  endDateCopy = endDate;
  [windowCopy maxSlidingLookback];
  v12 = [endDateCopy addTimeInterval:-v11];
  if ([v12 compare:dateCopy] == 1)
  {
    v13 = v12;

    dateCopy = v13;
  }

  if (([windowCopy detectAcrossBoots] & 1) == 0)
  {
    v14 = v12;
    powerlogDBReader = [(CSIssueDetector *)self powerlogDBReader];
    getDeviceBootTime = [powerlogDBReader getDeviceBootTime];

    if ([dateCopy compare:getDeviceBootTime] == -1)
    {
      logger = self->_logger;
      if (os_log_type_enabled(logger, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *v72 = dateCopy;
        *&v72[8] = 2112;
        *&v72[10] = getDeviceBootTime;
        _os_log_impl(&dword_243DC3000, logger, OS_LOG_TYPE_INFO, "Updated startDate (was %@) to deviceBootTime %@", buf, 0x16u);
      }

      v18 = getDeviceBootTime;

      dateCopy = v18;
    }

    v12 = v14;
  }

  v19 = self->_logger;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = v19;
    ruleID = [windowCopy ruleID];
    *buf = 67109634;
    *v72 = ruleID;
    *&v72[4] = 2112;
    *&v72[6] = dateCopy;
    *&v72[14] = 2112;
    *&v72[16] = endDateCopy;
    _os_log_impl(&dword_243DC3000, v20, OS_LOG_TYPE_INFO, "Evaluate rule %d in sliding windows in range [%@, %@]", buf, 0x1Cu);
  }

  [endDateCopy timeIntervalSinceDate:dateCopy];
  if (v22 < 0.0)
  {
    v23 = self->_logger;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *v72 = dateCopy;
      *&v72[8] = 2112;
      *&v72[10] = endDateCopy;
      _os_log_impl(&dword_243DC3000, v23, OS_LOG_TYPE_INFO, "Skip evaluating rule since startDate %@ is later than endDate %@", buf, 0x16u);
    }

LABEL_17:
    array = 0;
    goto LABEL_38;
  }

  [endDateCopy timeIntervalSinceDate:dateCopy];
  v25 = v24;
  [windowCopy windowSize];
  if (v25 < v26 * 0.9)
  {
    v27 = self->_logger;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = v27;
      [windowCopy windowSize];
      *buf = 138412802;
      *v72 = dateCopy;
      *&v72[8] = 2112;
      *&v72[10] = endDateCopy;
      *&v72[18] = 2048;
      *&v72[20] = v29;
      _os_log_impl(&dword_243DC3000, v28, OS_LOG_TYPE_INFO, "Skip evaluating rule since duration from %@ to %@ is not enough for %f", buf, 0x20u);
    }

    goto LABEL_17;
  }

  [windowCopy slidingWindowStepSize];
  v60 = endDateCopy;
  if (v31 >= 300.0)
  {
    v33 = v31;
  }

  else
  {
    v32 = self->_logger;
    v33 = 300.0;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v34 = v32;
      [windowCopy slidingWindowStepSize];
      v36 = v35;
      ruleID2 = [windowCopy ruleID];
      *buf = 134218496;
      *v72 = 0x4072C00000000000;
      *&v72[8] = 2048;
      *&v72[10] = v36;
      *&v72[18] = 1024;
      *&v72[20] = ruleID2;
      _os_log_impl(&dword_243DC3000, v34, OS_LOG_TYPE_INFO, "Use step size %.1f instead of %.1f in rule %d since it was too small", buf, 0x1Cu);
    }
  }

  v59 = v12;
  array = [MEMORY[0x277CBEB18] array];
  v38 = [MEMORY[0x277CBEB58] set];
  v39 = v60;
  [windowCopy windowSize];
  v41 = [v39 dateByAddingTimeInterval:-v40];
  [v41 timeIntervalSinceDate:dateCopy];
  if (v42 >= 0.0)
  {
    v45 = -v33;
    v61 = dateCopy;
    v62 = windowCopy;
    do
    {
      context = objc_autoreleasePoolPush();
      v64 = v39;
      v65 = v41;
      v46 = [(CSIssueDetector *)self evaluateRuleInFixedWindow:windowCopy withStartDate:v41 andEndDate:v39];
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v47 = [v46 countByEnumeratingWithState:&v66 objects:v70 count:16];
      if (v47)
      {
        v48 = v47;
        v49 = *v67;
        do
        {
          for (i = 0; i != v48; ++i)
          {
            if (*v67 != v49)
            {
              objc_enumerationMutation(v46);
            }

            v51 = *(*(&v66 + 1) + 8 * i);
            identifier = [v51 identifier];
            v53 = [v38 containsObject:identifier];

            if (v53)
            {
              v54 = self->_logger;
              if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
              {
                [(CSIssueDetector *)buf evaluateRuleWithSlidingWindow:v54 withStartDate:v51 andEndDate:v72];
              }
            }

            else
            {
              identifier2 = [v51 identifier];
              [v38 addObject:identifier2];

              [array addObject:v51];
            }
          }

          v48 = [v46 countByEnumeratingWithState:&v66 objects:v70 count:16];
        }

        while (v48);
      }

      v43 = [v64 dateByAddingTimeInterval:v45];

      windowCopy = v62;
      [v62 windowSize];
      v44 = [v43 dateByAddingTimeInterval:-v56];

      objc_autoreleasePoolPop(context);
      dateCopy = v61;
      [v44 timeIntervalSinceDate:v61];
      v41 = v44;
      v39 = v43;
    }

    while (v57 >= 0.0);
  }

  else
  {
    v43 = v39;
    v44 = v41;
  }

  v12 = v59;
  endDateCopy = v60;
LABEL_38:

  return array;
}

- (id)getCPUIssueWithMitigationSuggestionForCoalitionID:(int)d withLaunchdName:(id)name fromStartDate:(id)date toEndDate:(id)endDate byRule:(id)rule
{
  v10 = *&d;
  v80 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  dateCopy = date;
  endDateCopy = endDate;
  ruleCopy = rule;
  v16 = [CSIssue alloc];
  nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"CPU::%@", nameCopy];
  v74 = nameCopy;
  v18 = [(CSIssue *)v16 initWithIdentifier:nameCopy andLaunchdName:nameCopy andIssueType:1 andStartTime:dateCopy andEndTime:endDateCopy];

  [(CSIssue *)v18 setCoalitionID:v10];
  powerlogDBReader = [(CSIssueDetector *)self powerlogDBReader];
  if ([ruleCopy detectAcrossBoots])
  {
    v20 = [powerlogDBReader getProcessesForCoalitionID:v10 withStartDate:dateCopy andEndDate:endDateCopy andDeviceBootDate:0];
  }

  else
  {
    powerlogDBReader2 = [(CSIssueDetector *)self powerlogDBReader];
    getDeviceBootTime = [powerlogDBReader2 getDeviceBootTime];
    v20 = [powerlogDBReader getProcessesForCoalitionID:v10 withStartDate:dateCopy andEndDate:endDateCopy andDeviceBootDate:getDeviceBootTime];
  }

  if ([v20 count] == 1)
  {
    v23 = [v20 objectAtIndexedSubscript:0];
    v24 = [v23 objectForKeyedSubscript:@"PID"];
    -[CSIssue setLastPID:](v18, "setLastPID:", [v24 intValue]);

    v25 = [v20 objectAtIndexedSubscript:0];
    v26 = [v25 objectForKeyedSubscript:@"PUUID"];
    [(CSIssue *)v18 setLastPUUID:v26];

    v27 = [v20 objectAtIndexedSubscript:0];
    v28 = [v27 objectForKeyedSubscript:@"ProcessName"];
    [(CSIssue *)v18 setProcessName:v28];

    [(CSIssue *)v18 setMitigationSuggestion:4];
  }

  else
  {
    if ([v20 count] >= 2)
    {
      powerlogDBReader3 = [(CSIssueDetector *)self powerlogDBReader];
      if ([ruleCopy detectAcrossBoots])
      {
        v30 = [powerlogDBReader3 getProcessesForCoalitionID:v10 withStartDate:dateCopy andEndDate:endDateCopy andDeviceBootDate:0 andCPURatio:0.51];
      }

      else
      {
        powerlogDBReader4 = [(CSIssueDetector *)self powerlogDBReader];
        [powerlogDBReader4 getDeviceBootTime];
        v71 = ruleCopy;
        v33 = v32 = v20;
        v30 = [powerlogDBReader3 getProcessesForCoalitionID:v10 withStartDate:dateCopy andEndDate:endDateCopy andDeviceBootDate:v33 andCPURatio:0.51];

        v20 = v32;
        ruleCopy = v71;
      }

      if ([v30 count] == 1)
      {
        v34 = [v30 objectAtIndexedSubscript:0];
        v35 = [v34 objectForKeyedSubscript:@"PID"];
        -[CSIssue setLastPID:](v18, "setLastPID:", [v35 intValue]);

        v36 = [v30 objectAtIndexedSubscript:0];
        v37 = [v36 objectForKeyedSubscript:@"PUUID"];
        [(CSIssue *)v18 setLastPUUID:v37];

        v38 = [v30 objectAtIndexedSubscript:0];
        v39 = [v38 objectForKeyedSubscript:@"ProcessName"];
        [(CSIssue *)v18 setProcessName:v39];

        [(CSIssue *)v18 setMitigationSuggestion:4];
      }
    }

    if ([(CSIssue *)v18 mitigationSuggestion]== 255)
    {
      v68 = v20;
      v69 = endDateCopy;
      powerlogDBReader5 = [(CSIssueDetector *)self powerlogDBReader];
      powerlogDBReader6 = [(CSIssueDetector *)self powerlogDBReader];
      getDeviceBootTime2 = [powerlogDBReader6 getDeviceBootTime];
      v43 = [MEMORY[0x277CBEAA8] now];
      if ([ruleCopy detectAcrossBoots])
      {
        v44 = [powerlogDBReader5 getProcessesForCoalitionID:v10 withStartDate:getDeviceBootTime2 andEndDate:v43 andDeviceBootDate:0 andCPURatio:0.51];
      }

      else
      {
        powerlogDBReader7 = [(CSIssueDetector *)self powerlogDBReader];
        getDeviceBootTime3 = [powerlogDBReader7 getDeviceBootTime];
        v44 = [powerlogDBReader5 getProcessesForCoalitionID:v10 withStartDate:getDeviceBootTime2 andEndDate:v43 andDeviceBootDate:getDeviceBootTime3 andCPURatio:0.51];
      }

      if ([v44 count] == 1)
      {
        v47 = [v44 objectAtIndexedSubscript:0];
        v48 = [v47 objectForKeyedSubscript:@"PID"];
        -[CSIssue setLastPID:](v18, "setLastPID:", [v48 intValue]);

        v49 = [v44 objectAtIndexedSubscript:0];
        v50 = [v49 objectForKeyedSubscript:@"PUUID"];
        [(CSIssue *)v18 setLastPUUID:v50];

        v51 = [v44 objectAtIndexedSubscript:0];
        v52 = [v51 objectForKeyedSubscript:@"ProcessName"];
        [(CSIssue *)v18 setProcessName:v52];

        [(CSIssue *)v18 setMitigationSuggestion:4];
      }

      endDateCopy = v69;
      v20 = v68;
    }
  }

  if (-[CSIssue mitigationSuggestion](v18, "mitigationSuggestion") == 255 && [v20 count] >= 2)
  {
    v70 = endDateCopy;
    v72 = ruleCopy;
    v67 = dateCopy;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    obj = v20;
    v53 = [obj countByEnumeratingWithState:&v75 objects:v79 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = *v76;
      v66 = v18;
      while (2)
      {
        for (i = 0; i != v54; ++i)
        {
          if (*v76 != v55)
          {
            objc_enumerationMutation(obj);
          }

          v57 = *(*(&v75 + 1) + 8 * i);
          v58 = [v57 objectForKeyedSubscript:@"ProcessName"];
          v59 = [v74 stringByReplacingOccurrencesOfString:@"com.apple." withString:&stru_285706DD8];
          v60 = [v58 isEqualToString:v59];

          if (v60)
          {
            v61 = [v57 objectForKeyedSubscript:@"PID"];
            -[CSIssue setLastPID:](v66, "setLastPID:", [v61 intValue]);

            v62 = [v57 objectForKeyedSubscript:@"PUUID"];
            [(CSIssue *)v66 setLastPUUID:v62];

            v63 = [v57 objectForKeyedSubscript:@"ProcessName"];
            [(CSIssue *)v66 setProcessName:v63];

            v18 = v66;
            [(CSIssue *)v66 setMitigationSuggestion:4];
            goto LABEL_32;
          }
        }

        v54 = [obj countByEnumeratingWithState:&v75 objects:v79 count:16];
        v18 = v66;
        if (v54)
        {
          continue;
        }

        break;
      }
    }

LABEL_32:

    dateCopy = v67;
    endDateCopy = v70;
    ruleCopy = v72;
  }

  if ([(CSIssue *)v18 mitigationSuggestion]== 255)
  {
    [(CSIssue *)v18 setMitigationSuggestion:0];
    [(CSIssue *)v18 setForceMitigationSuggestion:1];
    if ([v20 count] <= 1)
    {
      if ([v20 count])
      {
        goto LABEL_39;
      }

      v64 = 1;
    }

    else
    {
      v64 = 2;
    }

    [(CSIssue *)v18 setMitigationSuggestionReason:v64];
  }

LABEL_39:

  return v18;
}

- (id)getCPUIssueStartEndTime:(id)time valueThreshold:(float)threshold
{
  v34 = *MEMORY[0x277D85DE8];
  timeCopy = time;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  intervalArray = [timeCopy intervalArray];
  v7 = [intervalArray countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (!v7)
  {

    v10 = 0;
    v9 = 0;
    goto LABEL_20;
  }

  v8 = v7;
  v9 = 0;
  v10 = 0;
  v11 = *v28;
  thresholdCopy = threshold;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v28 != v11)
      {
        objc_enumerationMutation(intervalArray);
      }

      v14 = *(*(&v27 + 1) + 8 * i);
      [v14 value];
      if (v15 >= thresholdCopy)
      {
        startTime = [v14 startTime];
        v17 = startTime;
        if (!v9)
        {
          v9 = startTime;
LABEL_13:
          endTime = [v14 endTime];

          v10 = endTime;
          continue;
        }

        v18 = [startTime compare:v9];

        if (v18 == -1)
        {
          startTime2 = [v14 startTime];

          v9 = startTime2;
        }

        endTime2 = [v14 endTime];
        v21 = [endTime2 compare:v10];

        if (v21 == 1)
        {
          goto LABEL_13;
        }
      }
    }

    v8 = [intervalArray countByEnumeratingWithState:&v27 objects:v33 count:16];
  }

  while (v8);

  if (v9 && v10)
  {
    v32[0] = v9;
    v32[1] = v10;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
    goto LABEL_21;
  }

LABEL_20:
  null = [MEMORY[0x277CBEB68] null];
  v31[0] = null;
  null2 = [MEMORY[0x277CBEB68] null];
  v31[1] = null2;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];

LABEL_21:

  return v23;
}

- (void)handleDetectedIssues:(id)issues
{
  v185 = *MEMORY[0x277D85DE8];
  issuesCopy = issues;
  v3 = [issuesCopy sortedArrayUsingComparator:&__block_literal_global_98];
  v4 = [MEMORY[0x277CBEB58] set];
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v153 objects:v184 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v154;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v154 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v153 + 1) + 8 * i);
        identifier = [v10 identifier];
        v12 = [v4 containsObject:identifier];

        if (v12)
        {
          [v10 setOverridden:1];
          [v10 setMitigationSuggestion:0];
          [v10 setForceMitigationSuggestion:1];
          [v10 setMitigationSuggestionReason:3];
        }

        else
        {
          identifier2 = [v10 identifier];
          [v4 addObject:identifier2];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v153 objects:v184 count:16];
    }

    while (v7);
  }

  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  obj = v5;
  v115 = [obj countByEnumeratingWithState:&v149 objects:v183 count:16];
  if (v115)
  {
    v113 = *v150;
    v114 = v4;
    do
    {
      v14 = 0;
      do
      {
        if (*v150 != v113)
        {
          objc_enumerationMutation(obj);
        }

        v147 = v14;
        v15 = *(*(&v149 + 1) + 8 * v14);
        context = objc_autoreleasePoolPush();
        v138 = MEMORY[0x277CCACA8];
        v134 = PEIssueTypeString([v15 issueType]);
        rule = [v15 rule];
        if (rule)
        {
          rule2 = [v15 rule];
          ruleID = [rule2 ruleID];
        }

        else
        {
          ruleID = 0xFFFFFFFFLL;
        }

        processName = [v15 processName];
        v142 = rule;
        if (processName)
        {
          processName2 = [v15 processName];
          uTF8String = [processName2 UTF8String];
        }

        else
        {
          uTF8String = "UnknownProcessName";
        }

        coalitionID = [v15 coalitionID];
        v19 = getDateFormatter(coalitionID);
        startTime = [v15 startTime];
        v21 = [v19 stringFromDate:startTime];
        uTF8String2 = [v21 UTF8String];
        v23 = getDateFormatter(uTF8String2);
        endTime = [v15 endTime];
        v25 = [v23 stringFromDate:endTime];
        v26 = [v138 stringWithFormat:@"Found issue with IssueType:%s in Rule: %d for process: %s with coalitionID: %llu from time %s to %s", v134, ruleID, uTF8String, coalitionID, uTF8String2, objc_msgSend(v25, "UTF8String")];
        [v15 setDetectorString:v26];

        if (processName)
        {
        }

        if (v142)
        {
        }

        v27 = self->_logger;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          rule3 = [v15 rule];
          if (rule3)
          {
            rule4 = [v15 rule];
            ruleID2 = [rule4 ruleID];
          }

          else
          {
            ruleID2 = -1;
          }

          processName3 = [v15 processName];
          v85 = processName3;
          v86 = @"UnknownProcessName";
          if (processName3)
          {
            v86 = processName3;
          }

          v137 = v86;
          coalitionID2 = [v15 coalitionID];
          v87 = getDateFormatter(coalitionID2);
          startTime2 = [v15 startTime];
          v89 = [v87 stringFromDate:startTime2];
          uTF8String3 = [v89 UTF8String];
          v91 = getDateFormatter(uTF8String3);
          endTime2 = [v15 endTime];
          v93 = [v91 stringFromDate:endTime2];
          uTF8String4 = [v93 UTF8String];
          *buf = 67110402;
          *v160 = ruleID2;
          *&v160[4] = 2112;
          *&v160[6] = v15;
          *&v160[14] = 2112;
          *&v160[16] = v137;
          *&v160[24] = 2048;
          *&v160[26] = coalitionID2;
          *&v160[34] = 2080;
          *&v160[36] = uTF8String3;
          v161 = 2080;
          v162 = uTF8String4;
          _os_log_error_impl(&dword_243DC3000, v27, OS_LOG_TYPE_ERROR, "handleDetectedIssues: Found issues with rule %d issue %@ for process %@ with coalitionID: %llu from time %s to %s", buf, 0x3Au);

          if (rule3)
          {
          }
        }

        if ([v15 mitigationSuggestion] || !objc_msgSend(v15, "forceMitigationSuggestion"))
        {
          v29 = +[CSMitigationManager sharedInstance];
          [v29 handleDetectorViolation:v15];

          if ([v15 mitigationDecisionType] == 1)
          {
            launchdName = [v15 launchdName];
            if (launchdName)
            {
              v31 = launchdName;
              fatalMitigatedProcessList = self->_fatalMitigatedProcessList;
              launchdName2 = [v15 launchdName];
              LOBYTE(fatalMitigatedProcessList) = [(NSMutableArray *)fatalMitigatedProcessList containsObject:launchdName2];

              if ((fatalMitigatedProcessList & 1) == 0)
              {
                v34 = self->_fatalMitigatedProcessList;
                launchdName3 = [v15 launchdName];
                [(NSMutableArray *)v34 addObject:launchdName3];
              }
            }
          }

          errorString = [v15 errorString];

          if (errorString)
          {
            logger = self->_logger;
            if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
            {
              v75 = logger;
              v76 = PEMitigationTypeString([v15 mitigationDecisionType]);
              v77 = PEReasonString([v15 mitigationDecisionReason]);
              errorString2 = [v15 errorString];
              v79 = errorString2;
              if (errorString2)
              {
                v80 = errorString2;
              }

              else
              {
                v80 = @"NullString";
              }

              processName4 = [v15 processName];
              v82 = processName4;
              *buf = 136315906;
              v83 = @"UnknownProcessName";
              if (processName4)
              {
                v83 = processName4;
              }

              *v160 = v76;
              *&v160[8] = 2080;
              *&v160[10] = v77;
              *&v160[18] = 2112;
              *&v160[20] = v80;
              *&v160[28] = 2112;
              *&v160[30] = v83;
              _os_log_error_impl(&dword_243DC3000, v75, OS_LOG_TYPE_ERROR, "handleDetectedIssues: handleDetectorViolation() returned an error. MitigationDecisionType: %s MitigationDecisionReason: %s errorString <%@> for process %@", buf, 0x2Au);
            }
          }
        }

        else
        {
          v28 = self->_logger;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            [(CSIssueDetector *)v181 handleDetectedIssues:v28, v15, &v182];
          }
        }

        v38 = +[CSLogger signpostCategory];
        lastPID = [v15 lastPID];
        if ((lastPID - 1) <= 0xFFFFFFFD)
        {
          v40 = lastPID;
          if (os_signpost_enabled(v38))
          {
            processName5 = [v15 processName];
            v143 = processName5;
            if (processName5)
            {
              processName6 = [v15 processName];
              processName5 = [processName6 UTF8String];
              v119 = processName5;
            }

            else
            {
              v119 = 0;
            }

            v42 = getDateFormatter(processName5);
            startTime3 = [v15 startTime];
            v139 = v42;
            v131 = [v42 stringFromDate:?];
            uTF8String5 = [v131 UTF8String];
            v43 = getDateFormatter(uTF8String5);
            endTime3 = [v15 endTime];
            v128 = v43;
            v123 = [v43 stringFromDate:?];
            uTF8String6 = [v123 UTF8String];
            v108 = PEIssueTypeString([v15 issueType]);
            value = [v15 value];
            if (value)
            {
              value2 = [v15 value];
              intValue = [value2 intValue];
            }

            else
            {
              intValue = -1;
            }

            coalitionID3 = [v15 coalitionID];
            launchdName4 = [v15 launchdName];
            if (launchdName4)
            {
              launchdName5 = [v15 launchdName];
              uTF8String7 = [launchdName5 UTF8String];
            }

            else
            {
              uTF8String7 = 0;
            }

            rule5 = [v15 rule];
            v121 = value;
            v111 = launchdName4;
            if (rule5)
            {
              rule6 = [v15 rule];
              ruleID3 = [rule6 ruleID];
            }

            else
            {
              ruleID3 = -1;
            }

            v103 = PEMitigationTypeString([v15 mitigationSuggestion]);
            v47 = PESuggestionReasonString([v15 mitigationSuggestionReason]);
            forceMitigationSuggestion = [v15 forceMitigationSuggestion];
            overridden = [v15 overridden];
            v50 = PEMitigationTypeString([v15 mitigationDecisionType]);
            v51 = PEReasonString([v15 mitigationDecisionReason]);
            errorString3 = [v15 errorString];
            v53 = errorString3;
            if (errorString3)
            {
              errorString4 = [v15 errorString];
              errorString3 = [errorString4 UTF8String];
            }

            *buf = 136449794;
            *v160 = v119;
            *&v160[8] = 2082;
            *&v160[10] = uTF8String5;
            *&v160[18] = 2082;
            *&v160[20] = uTF8String6;
            *&v160[28] = 2082;
            *&v160[30] = v108;
            *&v160[38] = 1026;
            *&v160[40] = intValue;
            v161 = 2050;
            v162 = coalitionID3;
            v163 = 2082;
            v164 = uTF8String7;
            v165 = 1026;
            v166 = ruleID3;
            v167 = 2082;
            v168 = v103;
            v169 = 2082;
            v170 = v47;
            v171 = 1026;
            v172 = forceMitigationSuggestion;
            v173 = 1026;
            v174 = overridden;
            v175 = 2082;
            v176 = v50;
            v177 = 2082;
            v178 = v51;
            v179 = 2082;
            v180 = errorString3;
            _os_signpost_emit_with_name_impl(&dword_243DC3000, v38, OS_SIGNPOST_EVENT, v40, "Issue Detected", "Process name: %{public, name=processName}s\nSignpost ID is PID\nTime Stamp Start: %{public, name=timeStampStart}s\nTime Stamp End: %{public, name=timeStampEnd}s\nIssue Type: %{public, name=issueType}s\nValue: %{public, name=value}d\nCoalition ID: %{public, name=coalitionID}lld\nCoalition name: %{public, name=coalitionName}s\nRule ID: %{public, name=ruleID}d\nMitigation Suggestion: %{public, name=mitigationSuggestion}s\nMitigation Suggestion Reason: %{public, name=mitigationSuggestionReason}s\nForce Mitigation Suggestion: %{public, name=forceMitigationSuggestion}d\nOverridden: %{public, name=overridden}d\nMitigation Decision Type: %{public, name=mitigationDecisionType}s\nMitigation Decision Reason: %{public, name=mitigationDecisionReason}s\nError String: %{public, name=errorString}s\n", buf, 0x88u);
            if (v53)
            {
            }

            if (rule5)
            {
            }

            if (v111)
            {
            }

            if (v121)
            {
            }

            if (v143)
            {
            }
          }
        }

        v126 = MEMORY[0x277CBEB38];
        v157[0] = @"timestampStart";
        v54 = MEMORY[0x277CCABB0];
        startTime4 = [v15 startTime];
        [startTime4 timeIntervalSince1970];
        v140 = [v54 numberWithDouble:?];
        v158[0] = v140;
        v157[1] = @"timestampEnd";
        v55 = MEMORY[0x277CCABB0];
        endTime4 = [v15 endTime];
        [endTime4 timeIntervalSince1970];
        v132 = [v55 numberWithDouble:?];
        v158[1] = v132;
        v157[2] = @"IssueType";
        v129 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v15, "issueType")}];
        v158[2] = v129;
        v157[3] = @"PID";
        v124 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v15, "lastPID")}];
        v158[3] = v124;
        v157[4] = @"CoalitionID";
        v122 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v15, "coalitionID")}];
        v158[4] = v122;
        v157[5] = @"RuleID";
        v56 = MEMORY[0x277CCABB0];
        rule7 = [v15 rule];
        if (rule7)
        {
          rule8 = [v15 rule];
          ruleID4 = [rule8 ruleID];
        }

        else
        {
          ruleID4 = 0xFFFFFFFFLL;
        }

        v58 = [v56 numberWithInt:ruleID4];
        v158[5] = v58;
        v157[6] = @"MitigationSuggestion";
        v59 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v15, "mitigationSuggestion")}];
        v158[6] = v59;
        v157[7] = @"MitigationSuggestionReason";
        v60 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v15, "mitigationSuggestionReason")}];
        v158[7] = v60;
        v157[8] = @"ForceMitigationSuggestion";
        v61 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v15, "forceMitigationSuggestion")}];
        v158[8] = v61;
        v157[9] = @"Overridden";
        v62 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v15, "overridden")}];
        v158[9] = v62;
        v157[10] = @"MitigationDecisionType";
        v63 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v15, "mitigationDecisionType")}];
        v158[10] = v63;
        v157[11] = @"MitigationDecisionReason";
        v64 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v15, "mitigationDecisionReason")}];
        v158[11] = v64;
        v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v158 forKeys:v157 count:12];
        v66 = [v126 dictionaryWithDictionary:v65];

        if (rule7)
        {
        }

        processName7 = [v15 processName];

        v4 = v114;
        if (processName7)
        {
          processName8 = [v15 processName];
          [v66 setObject:processName8 forKeyedSubscript:@"ProcessName"];
        }

        value3 = [v15 value];

        if (value3)
        {
          value4 = [v15 value];
          [v66 setObject:value4 forKeyedSubscript:@"Value"];
        }

        launchdName6 = [v15 launchdName];

        if (launchdName6)
        {
          launchdName7 = [v15 launchdName];
          [v66 setObject:launchdName7 forKeyedSubscript:@"LaunchdName"];
        }

        errorString5 = [v15 errorString];

        if (errorString5)
        {
          errorString6 = [v15 errorString];
          [v66 setObject:errorString6 forKeyedSubscript:@"ErrorString"];
        }

        [(CSIssueDetector *)self logIssuesToPowerLogWithPayload:v66];

        objc_autoreleasePoolPop(context);
        v14 = v147 + 1;
      }

      while (v115 != v147 + 1);
      v95 = [obj countByEnumeratingWithState:&v149 objects:v183 count:16];
      v115 = v95;
    }

    while (v95);
  }
}

uint64_t __40__CSIssueDetector_handleDetectedIssues___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 endTime];
  v6 = [v4 endTime];

  v7 = [v6 compare:v5];
  return v7;
}

- (void)logIssuesToPowerLogWithPayload:(id)payload
{
  payloadCopy = payload;
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
  {
    [(CSIssueDetector *)payloadCopy logIssuesToPowerLogWithPayload:?];
  }

  if (logIssuesToPowerLogWithPayload__onceToken != -1)
  {
    [CSIssueDetector logIssuesToPowerLogWithPayload:];
  }

  PPSSendTelemetry();
}

uint64_t __50__CSIssueDetector_logIssuesToPowerLogWithPayload___block_invoke()
{
  result = PPSCreateTelemetryIdentifier();
  logIssuesToPowerLogWithPayload__streamID = result;
  return result;
}

- (BOOL)compareWithValue1:(float)value1 andValue2:(float)value2 andComparator:(int)comparator
{
  if (comparator <= 1)
  {
    if (comparator)
    {
      return comparator == 1 && value1 > value2;
    }

    if (value1 != value2)
    {
      return 0;
    }
  }

  else if (comparator == 2)
  {
    if (value1 < value2)
    {
      return 0;
    }
  }

  else
  {
    if (comparator != 3)
    {
      return comparator == 4 && value1 <= value2;
    }

    if (value1 >= value2)
    {
      return 0;
    }
  }

  return 1;
}

- (void)clearFatalMitigatedProcessList
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__CSIssueDetector_clearFatalMitigatedProcessList__block_invoke;
  block[3] = &unk_278DF5230;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __49__CSIssueDetector_clearFatalMitigatedProcessList__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fatalMitigatedProcessList];
  [v2 removeAllObjects];

  v3 = *(*(a1 + 32) + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __49__CSIssueDetector_clearFatalMitigatedProcessList__block_invoke_cold_1(v3);
  }
}

- (void)registerForDayChangedNotification
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_dayChangedNotificationReceived_ name:*MEMORY[0x277CBE580] object:0];
}

- (void)dayChangedNotificationReceived:(id)received
{
  logger = self->_logger;
  v5 = os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    [CSIssueDetector dayChangedNotificationReceived:?];
  }

  v6 = getMainQueue(v5);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__CSIssueDetector_dayChangedNotificationReceived___block_invoke;
  block[3] = &unk_278DF5230;
  block[4] = self;
  dispatch_sync(v6, block);
}

- (void)testHandleDetectedIssues
{
  v32[3] = *MEMORY[0x277D85DE8];
  v2 = [CSIssue alloc];
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:1000.0];
  v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:2000.0];
  v5 = [(CSIssue *)v2 initWithIdentifier:@"CPU::process1" andLaunchdName:@"process1" andIssueType:1 andStartTime:v3 andEndTime:v4];

  v6 = [CSDetectionRule alloc];
  LODWORD(v28) = 10003;
  v7 = MEMORY[0x277CBEBF8];
  LODWORD(v8) = 1172373504;
  LODWORD(v9) = 1050253722;
  v10 = [(CSDetectionRule *)v6 initWithWindowSize:MEMORY[0x277CBEBF8] conditions:MEMORY[0x277CBEBF8] processesAllowList:MEMORY[0x277CBEBF8] processesDenyList:0 processesAllowRegex:0 processesDenyRegex:1 daemonOnly:v8 mainThresholdValue:v9 ruleID:v28];
  [(CSIssue *)v5 setRule:v10];

  [(CSIssue *)v5 setMitigationSuggestion:4];
  v11 = [CSIssue alloc];
  v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:1000.0];
  v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:3000.0];
  v14 = [(CSIssue *)v11 initWithIdentifier:@"CPU::process1" andLaunchdName:@"process1" andIssueType:1 andStartTime:v12 andEndTime:v13];

  v15 = [CSDetectionRule alloc];
  LODWORD(v29) = 10002;
  LODWORD(v16) = 1172373504;
  LODWORD(v17) = 1050253722;
  v18 = [(CSDetectionRule *)v15 initWithWindowSize:v7 conditions:v7 processesAllowList:v7 processesDenyList:0 processesAllowRegex:0 processesDenyRegex:1 daemonOnly:v16 mainThresholdValue:v17 ruleID:v29];
  [(CSIssue *)v14 setRule:v18];

  [(CSIssue *)v14 setMitigationSuggestion:4];
  v19 = [CSIssue alloc];
  v20 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:1000.0];
  v21 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:3000.0];
  v22 = [(CSIssue *)v19 initWithIdentifier:@"CPU::process2" andLaunchdName:@"process2" andIssueType:1 andStartTime:v20 andEndTime:v21];

  v23 = [CSDetectionRule alloc];
  LODWORD(v30) = 10003;
  LODWORD(v24) = 1172373504;
  LODWORD(v25) = 1050253722;
  v26 = [(CSDetectionRule *)v23 initWithWindowSize:v7 conditions:v7 processesAllowList:v7 processesDenyList:0 processesAllowRegex:0 processesDenyRegex:1 daemonOnly:v24 mainThresholdValue:v25 ruleID:v30];
  [(CSIssue *)v22 setRule:v26];

  [(CSIssue *)v22 setMitigationSuggestion:0];
  [(CSIssue *)v22 setForceMitigationSuggestion:1];
  [(CSIssue *)v22 setMitigationSuggestionReason:1];
  v32[0] = v5;
  v32[1] = v14;
  v32[2] = v22;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:3];
  [(CSIssueDetector *)self handleDetectedIssues:v27];
}

- (void)testDetectWithLookbackDuration
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = +[CSPowerlogDBReader sharedInstance];
  [v3 openConnection];

  v4 = [CSDetectionRule alloc];
  v5 = [[CSDetectionRuleCondition alloc] initWithScalarMetric:3 andNormalizerMetric:1 andComparator:2 andValue:0.0];
  v16[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  LODWORD(v14) = 9999;
  LODWORD(v7) = 1114636288;
  LODWORD(v8) = 1.0;
  v9 = [(CSDetectionRule *)v4 initWithWindowSize:v6 conditions:0 processesAllowList:self->_genericCPUDetectorProcessDenyList processesDenyList:0 processesAllowRegex:self->_genericCPUDetectorProcessDenyRegex processesDenyRegex:1 daemonOnly:v7 mainThresholdValue:v8 ruleID:v14];

  [(CSDetectionRule *)v9 setDetectAcrossBoots:1];
  v10 = [MEMORY[0x277CBEAA8] now];
  v11 = [v10 dateByAddingTimeInterval:-36000.0];
  v15 = v9;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  [(CSIssueDetector *)self detectIssuesFromStartTime:v11 endDate:v10 withRules:v12];

  v13 = +[CSPowerlogDBReader sharedInstance];
  [v13 closeConnection];
}

- (void)forceDetectorViolationForProcess:(id)process withHandler:(id)handler
{
  processCopy = process;
  handlerCopy = handler;
  v8 = [MEMORY[0x277CBEAA8] now];
  v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-4.0];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__3;
  v24 = __Block_byref_object_dispose__3;
  v25 = 0;
  v10 = getMainQueue(v9);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__CSIssueDetector_forceDetectorViolationForProcess_withHandler___block_invoke;
  block[3] = &unk_278DF57D0;
  v11 = processCopy;
  v15 = v11;
  v12 = v9;
  v16 = v12;
  v13 = v8;
  v17 = v13;
  selfCopy = self;
  v19 = &v20;
  dispatch_sync(v10, block);

  handlerCopy[2](handlerCopy, v21[5]);
  _Block_object_dispose(&v20, 8);
}

void __64__CSIssueDetector_forceDetectorViolationForProcess_withHandler___block_invoke(void *a1)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v2 = a1 + 4;
  v3 = [[CSIssue alloc] initWithIdentifier:a1[4] andProcessName:a1[4] andIssueType:1 andStartTime:a1[5] andEndTime:a1[6]];
  v4 = [CSProcessManager sharedInstanceWithEnrolledProcesses:0 andProcessPolicies:0 andBand95:0 andBand80:0];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 identiferForName:*v2];
    if (v6)
    {
      v7 = [v5 processForIdentifier:v6];
      v8 = v7;
      if (v7 && ([v7 trackedPIDs], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, v10))
      {
        v11 = [v8 lastPid];
      }

      else
      {
        v14 = a1[4];
        v15 = *(a1[8] + 8);
        obj = *(v15 + 40);
        v11 = [v5 discoverPidForProcessName:v14 withError:&obj];
        objc_storeStrong((v15 + 40), obj);
        if (!v11)
        {
          if ([v8 lastPid])
          {
            v11 = [v8 lastPid];
            v16 = *(a1[8] + 8);
            v17 = *(v16 + 40);
            *(v16 + 40) = 0;
          }

          else
          {
            v11 = 0;
          }
        }
      }

      v20 = [v8 uuid];
      v21 = [v20 UUIDString];
      [(CSIssue *)v3 setLastPUUID:v21];

      [(CSIssue *)v3 setLastPID:v11];
      -[CSIssue setCoalitionID:](v3, "setCoalitionID:", [v8 lastCoalitionID]);
      [(CSIssue *)v3 setValue:&unk_28570B498];
      v22 = a1[7];
      v25[0] = v3;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
      [v22 handleDetectedIssues:v23];
    }

    else
    {
      if (os_log_type_enabled(*(a1[7] + 32), OS_LOG_TYPE_ERROR))
      {
        __64__CSIssueDetector_forceDetectorViolationForProcess_withHandler___block_invoke_cold_1();
      }

      v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CSRestrictionManagerErrorDomain" code:0 userInfo:0];
      v19 = *(a1[8] + 8);
      v8 = *(v19 + 40);
      *(v19 + 40) = v18;
    }
  }

  else
  {
    if (os_log_type_enabled(*(a1[7] + 32), OS_LOG_TYPE_ERROR))
    {
      __64__CSIssueDetector_forceDetectorViolationForProcess_withHandler___block_invoke_cold_2();
    }

    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CSRestrictionManagerErrorDomain" code:4 userInfo:0];
    v13 = *(a1[8] + 8);
    v6 = *(v13 + 40);
    *(v13 + 40) = v12;
  }
}

- (void)setRuleParameters:(id)parameters withWindowSize:(id)size withStepSize:(id)stepSize withMaxLookback:(id)lookback withDaemonOnly:(id)only withHandler:(id)handler
{
  v45 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  sizeCopy = size;
  stepSizeCopy = stepSize;
  lookbackCopy = lookback;
  onlyCopy = only;
  handlerCopy = handler;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v17 = self->_rules;
  v18 = [(NSArray *)v17 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v41;
LABEL_3:
    v21 = 0;
    while (1)
    {
      if (*v41 != v20)
      {
        objc_enumerationMutation(v17);
      }

      v22 = *(*(&v40 + 1) + 8 * v21);
      ruleID = [v22 ruleID];
      if (ruleID == [parametersCopy intValue])
      {
        break;
      }

      if (v19 == ++v21)
      {
        v19 = [(NSArray *)v17 countByEnumeratingWithState:&v40 objects:v44 count:16];
        if (v19)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v24 = v22;

    if (!v24)
    {
      goto LABEL_15;
    }

    v25 = sizeCopy;
    intValue = [sizeCopy intValue];
    v27 = intValue;
    if (intValue != -1 && intValue <= 599)
    {
      v28 = lookbackCopy;
      v29 = stepSizeCopy;
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
      {
        [CSIssueDetector setRuleParameters:withWindowSize:withStepSize:withMaxLookback:withDaemonOnly:withHandler:];
      }

LABEL_29:
      v35 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CSRestrictionManagerErrorDomain" code:7 userInfo:0];
      handlerCopy[2](handlerCopy, v35);

      goto LABEL_30;
    }

    v29 = stepSizeCopy;
    intValue2 = [stepSizeCopy intValue];
    v31 = intValue2;
    v28 = lookbackCopy;
    if (intValue2 != -1 && intValue2 <= 59)
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
      {
        [CSIssueDetector setRuleParameters:withWindowSize:withStepSize:withMaxLookback:withDaemonOnly:withHandler:];
      }

      goto LABEL_29;
    }

    intValue3 = [lookbackCopy intValue];
    v33 = intValue3;
    if (intValue3 != -1 && intValue3 <= 599)
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
      {
        [CSIssueDetector setRuleParameters:withWindowSize:withStepSize:withMaxLookback:withDaemonOnly:withHandler:];
      }

      goto LABEL_29;
    }

    intValue4 = [onlyCopy intValue];
    if ((intValue4 - 2) <= 0xFFFFFFFC)
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
      {
        [CSIssueDetector setRuleParameters:withWindowSize:withStepSize:withMaxLookback:withDaemonOnly:withHandler:];
      }

      goto LABEL_29;
    }

    if (v27 != -1)
    {
      *&v34 = v27;
      [v24 setWindowSize:v34];
    }

    if (v31 != -1)
    {
      *&v34 = v31;
      [v24 setSlidingWindowStepSize:v34];
    }

    if (v33 != -1)
    {
      *&v34 = v33;
      [v24 setMaxSlidingLookback:v34];
    }

    if (intValue4 != -1)
    {
      [v24 setDaemonOnly:intValue4 != 0];
    }

    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
LABEL_9:

LABEL_15:
    v25 = sizeCopy;
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      [CSIssueDetector setRuleParameters:withWindowSize:withStepSize:withMaxLookback:withDaemonOnly:withHandler:];
    }

    v24 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CSRestrictionManagerErrorDomain" code:6 userInfo:0];
    handlerCopy[2](handlerCopy, v24);
    v28 = lookbackCopy;
    v29 = stepSizeCopy;
  }

LABEL_30:
}

- (void)resetRuleParameters:(id)parameters withHandler:(id)handler
{
  v22 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  handlerCopy = handler;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = self->_rules;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v18 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v17 + 1) + 8 * v12);
      ruleID = [v13 ruleID];
      if (ruleID == [parametersCopy intValue])
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v15 = v13;

    if (!v15)
    {
      goto LABEL_12;
    }

    [v15 initWindowSize];
    [v15 setWindowSize:?];
    [v15 initSlidingWindowStepSize];
    [v15 setSlidingWindowStepSize:?];
    [v15 initMaxSlidingLookback];
    [v15 setMaxSlidingLookback:?];
    [v15 setDaemonOnly:{objc_msgSend(v15, "initDaemonOnly")}];
    v16 = 0;
  }

  else
  {
LABEL_9:

LABEL_12:
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      [CSIssueDetector setRuleParameters:withWindowSize:withStepSize:withMaxLookback:withDaemonOnly:withHandler:];
    }

    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CSRestrictionManagerErrorDomain" code:6 userInfo:{0, v17}];
    v15 = v16;
  }

  handlerCopy[2](handlerCopy, v16);
}

- (void)getValueOfMetric:startDate:endDate:.cold.5()
{
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)processCPUIntervalsForCondition:(void *)a1 startDate:endDate:rule:normalizer:issueCandidates:.cold.1(void *a1)
{
  v2 = a1;
  [OUTLINED_FUNCTION_7() scalarMetric];
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_1_6(&dword_243DC3000, v3, v4, "Unrecognized scalar metric type passed to processCPUIntervalsForCondition: %u", v5, v6, v7, v8);
}

- (void)evaluateRuleInFixedWindow:(void *)a1 withStartDate:andEndDate:.cold.1(void *a1)
{
  v2 = a1;
  [OUTLINED_FUNCTION_7() scalarMetric];
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_1_6(&dword_243DC3000, v3, v4, "Scalar Metric Type %d is not supported", v5, v6, v7, v8);
}

- (void)evaluateRuleInFixedWindow:(void *)a1 withStartDate:andEndDate:.cold.6(void *a1)
{
  v2 = a1;
  [OUTLINED_FUNCTION_7() normalizerMetric];
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_1_6(&dword_243DC3000, v3, v4, "Normalizer Metric Type %d is zero", v5, v6, v7, v8);
}

- (void)evaluateRuleInFixedWindow:(void *)a1 withStartDate:andEndDate:.cold.7(void *a1)
{
  v2 = a1;
  [OUTLINED_FUNCTION_7() normalizerMetric];
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_1_6(&dword_243DC3000, v3, v4, "Error when getting normalizer value from metric %d", v5, v6, v7, v8);
}

- (void)evaluateRuleWithSlidingWindow:(void *)a3 withStartDate:(void *)a4 andEndDate:.cold.1(uint8_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 launchdName];
  *a1 = 138412290;
  *a4 = v8;
  _os_log_debug_impl(&dword_243DC3000, v7, OS_LOG_TYPE_DEBUG, "Issue on %@ already detected in a previous sliding window.", a1, 0xCu);
}

- (void)handleDetectedIssues:(void *)a3 .cold.1(uint8_t *a1, void *a2, void *a3, unsigned int *a4)
{
  v7 = a2;
  v8 = [a3 mitigationSuggestionReason];
  *a1 = 67109120;
  *a4 = v8;
  _os_log_error_impl(&dword_243DC3000, v7, OS_LOG_TYPE_ERROR, "handleDetectedIssues: Skip CSMitigationManager to handleDetectorViolation for this issue with reason: %d", a1, 8u);
}

- (void)logIssuesToPowerLogWithPayload:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_243DC3000, a2, OS_LOG_TYPE_DEBUG, "logIssuesToPowerLogWithPayload payload: %@", &v2, 0xCu);
}

- (void)setRuleParameters:withWindowSize:withStepSize:withMaxLookback:withDaemonOnly:withHandler:.cold.1()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_3_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);
}

- (void)setRuleParameters:withWindowSize:withStepSize:withMaxLookback:withDaemonOnly:withHandler:.cold.2()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_3_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x14u);
}

- (void)setRuleParameters:withWindowSize:withStepSize:withMaxLookback:withDaemonOnly:withHandler:.cold.3()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_3_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x14u);
}

- (void)setRuleParameters:withWindowSize:withStepSize:withMaxLookback:withDaemonOnly:withHandler:.cold.4()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_3_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x14u);
}

@end