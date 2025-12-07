@interface PLDuetServiceWithAccounting
+ (id)mapBundleID:(id)d;
- (PLDuetServiceWithAccounting)init;
- (id)energyResponse;
- (id)energyResponseWithQualificationID:(int)d;
- (id)eventTransitionsWithEvents:(id)events;
- (void)accumulateWithLastCompletedDate:(id)date withNow:(id)now;
- (void)accumulateWithLastCompletedDate:(id)date withNow:(id)now withQualificationID:(int)d;
- (void)createQualificationEventsWithEventTransitions:(id)transitions withQualificationID:(int)d;
- (void)didReceiveEventWithPayload:(id)payload;
- (void)initOperatorDependancies:(id)dependancies;
@end

@implementation PLDuetServiceWithAccounting

- (PLDuetServiceWithAccounting)init
{
  if ([MEMORY[0x277D3F208] isHomePod])
  {
    selfCopy = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PLDuetServiceWithAccounting;
    v4 = [(PLDuetServiceWithAccounting *)&v6 init];
    [(PLDuetServiceImpl *)v4 setDuetService:0];
    self = v4;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)initOperatorDependancies:(id)dependancies
{
  v21[3] = *MEMORY[0x277D85DE8];
  dependanciesCopy = dependancies;
  if (([MEMORY[0x277D3F258] isPowerlogHelperd] & 1) == 0)
  {
    isPerfPowerMetricd = [MEMORY[0x277D3F258] isPerfPowerMetricd];
    if (dependanciesCopy)
    {
      if ((isPerfPowerMetricd & 1) == 0)
      {
        [(PLDuetServiceImpl *)self setDuetService:dependanciesCopy];
        v6 = objc_alloc(MEMORY[0x277D3F270]);
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __56__PLDuetServiceWithAccounting_initOperatorDependancies___block_invoke;
        v20[3] = &unk_27825A1D8;
        v20[4] = self;
        v7 = [v6 initWithOperator:dependanciesCopy withRegistration:&unk_282C19C78 withBlock:v20];
        [(PLDuetServiceImpl *)self setEventListener:v7];

        v8 = objc_alloc(MEMORY[0x277D3F278]);
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __56__PLDuetServiceWithAccounting_initOperatorDependancies___block_invoke_2;
        v19[3] = &unk_278259810;
        v19[4] = self;
        v9 = [v8 initWithOperator:dependanciesCopy withRegistration:&unk_282C19CA0 withBlock:v19];
        [(PLDuetServiceImpl *)self setEnergyResponder:v9];

        v10 = [MEMORY[0x277D3F138] timeCriterionWithInterval:21600.0];
        v21[0] = v10;
        pluggedInCriterion = [MEMORY[0x277D3F130] pluggedInCriterion];
        v21[1] = pluggedInCriterion;
        displayOffCriterion = [MEMORY[0x277D3F130] displayOffCriterion];
        v21[2] = displayOffCriterion;
        v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];

        mEMORY[0x277D3F140] = [MEMORY[0x277D3F140] sharedInstance];
        workQueue = [dependanciesCopy workQueue];
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __56__PLDuetServiceWithAccounting_initOperatorDependancies___block_invoke_3;
        v18[3] = &unk_27825A740;
        v18[4] = self;
        [mEMORY[0x277D3F140] scheduleActivityWithIdentifier:@"PLDuetService_duetEnergyAccumulator" withCriteria:v13 withMustRunCriterion:0 withQueue:workQueue withInterruptBlock:0 withActivityBlock:v18];

        if (([dependanciesCopy isDebugEnabled] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F180], "BOOLForKey:ifNotSet:", @"PLDuetService_test", 0))
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          CFNotificationCenterAddObserver(DarwinNotifyCenter, self, testLogEvents, @"com.apple.powerlogd.PLDuetService.testLogEvents", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
          v17 = CFNotificationCenterGetDarwinNotifyCenter();
          CFNotificationCenterAddObserver(v17, self, testReportEnergy, @"com.apple.powerlogd.PLDuetService.testReportEnergy", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
        }
      }
    }
  }
}

- (void)didReceiveEventWithPayload:(id)payload
{
  v148 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__PLDuetServiceWithAccounting_didReceiveEventWithPayload___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F6978 != -1)
    {
      dispatch_once(&qword_2811F6978, block);
    }

    if (_MergedGlobals_1_59 == 1)
    {
      payloadCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"payload=%@", payloadCopy];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceWithAccounting didReceiveEventWithPayload:]"];
      [v7 logMessage:payloadCopy fromFile:lastPathComponent fromFunction:v10 fromLineNumber:194];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v141 = payloadCopy;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = PLLogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEFAULT, "┏ PLDuetService didReceiveEventWithPayload start", buf, 2u);
  }

  if (!payloadCopy || ([payloadCopy objectForKeyedSubscript:@"events"], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
  {
    v109 = PLLogCommon();
    if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_21A4C6000, v109, OS_LOG_TYPE_ERROR, "┗ PLDuetService didReceiveEventWithPayload end: Invalid payload", buf, 2u);
    }

    goto LABEL_91;
  }

  v14 = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  duetService = [(PLDuetServiceImpl *)self duetService];

  v17 = PLLogCommon();
  v18 = v17;
  if (duetService)
  {
    context = v14;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [payloadCopy objectForKeyedSubscript:@"events"];
      v20 = [v19 count];
      *buf = 67109120;
      LODWORD(v141) = v20;
      _os_log_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEFAULT, "┃ ┏ PLDuetService didReceiveEventWithPayload processing %d events", buf, 8u);
    }

    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v111 = payloadCopy;
    obj = [payloadCopy objectForKeyedSubscript:@"events"];
    v115 = [obj countByEnumeratingWithState:&v135 objects:v147 count:16];
    if (v115)
    {
      v113 = *v136;
      v118 = *MEMORY[0x277D3F5D8];
      selfCopy = self;
      v114 = array;
      do
      {
        v21 = 0;
        do
        {
          if (*v136 != v113)
          {
            objc_enumerationMutation(obj);
          }

          v116 = v21;
          v22 = *(*(&v135 + 1) + 8 * v21);
          v23 = objc_opt_new();
          v24 = objc_opt_class();
          v25 = [v22 objectForKeyedSubscript:@"bundleID"];
          v26 = [v24 mapBundleID:v25];
          [v23 setBundleID:v26];

          v27 = [v22 objectForKeyedSubscript:@"processName"];
          [v23 setProcessName:v27];

          v28 = [v22 objectForKeyedSubscript:@"updateType"];
          [v23 setUpdateType:{objc_msgSend(v28, "integerValue")}];

          v29 = [v22 objectForKeyedSubscript:@"childBundleIDToWeight"];
          [v23 setChildBundleIDToWeight:v29];

          v30 = PLLogCommon();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v141 = v23;
            _os_log_debug_impl(&dword_21A4C6000, v30, OS_LOG_TYPE_DEBUG, "┃ ┃ ┏ PLDuetService didReceiveEventWithPayload processing event: %@", buf, 0xCu);
          }

          childBundleIDToWeight = [v23 childBundleIDToWeight];
          if (childBundleIDToWeight && (v32 = childBundleIDToWeight, [v23 childBundleIDToWeight], v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "count"), v33, v32, v34))
          {
            v120 = v22;
            bundleID = [v23 bundleID];
            v36 = [bundleID isEqualToString:@"cloudphotod"];

            if (v36)
            {
              v37 = 35;
            }

            else
            {
              v37 = 0;
            }

            dictionary = [MEMORY[0x277CBEB38] dictionary];
            v131 = 0u;
            v132 = 0u;
            v133 = 0u;
            v134 = 0u;
            childBundleIDToWeight2 = [v23 childBundleIDToWeight];
            v40 = [childBundleIDToWeight2 countByEnumeratingWithState:&v131 objects:v146 count:16];
            if (v40)
            {
              v41 = v40;
              v42 = *v132;
              do
              {
                for (i = 0; i != v41; ++i)
                {
                  if (*v132 != v42)
                  {
                    objc_enumerationMutation(childBundleIDToWeight2);
                  }

                  v44 = *(*(&v131 + 1) + 8 * i);
                  childBundleIDToWeight3 = [v23 childBundleIDToWeight];
                  v46 = [childBundleIDToWeight3 objectForKeyedSubscript:v44];
                  v47 = [objc_opt_class() mapBundleID:v44];
                  [dictionary setObject:v46 forKeyedSubscript:v47];
                }

                v41 = [childBundleIDToWeight2 countByEnumeratingWithState:&v131 objects:v146 count:16];
              }

              while (v41);
            }

            [v23 setChildBundleIDToWeight:dictionary];
            v22 = v120;
            self = selfCopy;
          }

          else
          {
            v37 = 0;
          }

          array3 = [MEMORY[0x277CBEB18] array];
          v48 = PLLogCommon();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
          {
            v49 = [v22 objectForKeyedSubscript:@"eventIntervals"];
            v50 = [v49 count];
            *buf = 67109120;
            LODWORD(v141) = v50;
            _os_log_impl(&dword_21A4C6000, v48, OS_LOG_TYPE_INFO, "┃ ┃ ┃ ┏ PLDuetService didReceiveEventWithPayload processing %d intervals", buf, 8u);
          }

          v129 = 0u;
          v130 = 0u;
          v127 = 0u;
          v128 = 0u;
          v119 = [v22 objectForKeyedSubscript:@"eventIntervals"];
          v51 = [v119 countByEnumeratingWithState:&v127 objects:v145 count:16];
          if (v51)
          {
            v52 = v51;
            v53 = *v128;
            do
            {
              for (j = 0; j != v52; ++j)
              {
                if (*v128 != v53)
                {
                  objc_enumerationMutation(v119);
                }

                v55 = *(*(&v127 + 1) + 8 * j);
                v56 = objc_opt_new();
                v57 = [v55 objectForKeyedSubscript:@"startDate"];
                convertFromSystemToMonotonic = [v57 convertFromSystemToMonotonic];
                [v56 setStartDate:convertFromSystemToMonotonic];

                v59 = [v55 objectForKeyedSubscript:@"endDate"];
                convertFromSystemToMonotonic2 = [v59 convertFromSystemToMonotonic];
                [v56 setEndDate:convertFromSystemToMonotonic2];

                [array3 addObject:v56];
                v61 = PLLogCommon();
                if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v141 = v56;
                  _os_log_debug_impl(&dword_21A4C6000, v61, OS_LOG_TYPE_DEBUG, "┃ ┃ ┃ ┃ PLDuetService didReceiveEventWithPayload new interval:%@", buf, 0xCu);
                }

                if (v37)
                {
                  mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
                  childBundleIDToWeight4 = [v23 childBundleIDToWeight];
                  startDate = [v56 startDate];
                  endDate = [v56 endDate];
                  [mEMORY[0x277D3F0C0] createDistributionEventIntervalWithDistributionID:v37 withChildNodeNameToWeight:childBundleIDToWeight4 withStartDate:startDate withEndDate:endDate];

                  self = selfCopy;
                }

                duetService2 = [(PLDuetServiceImpl *)self duetService];
                if (duetService2)
                {
                  v67 = duetService2;
                  duetService3 = [(PLDuetServiceImpl *)self duetService];
                  isDebugEnabled = [duetService3 isDebugEnabled];

                  if (isDebugEnabled)
                  {
                    v70 = [(PLOperator *)PLDuetService entryKeyForType:v118 andName:@"DuetEvents"];
                    v71 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v70];
                    bundleID2 = [v23 bundleID];
                    if (bundleID2)
                    {
                      [v23 bundleID];
                    }

                    else
                    {
                      [v23 processName];
                    }
                    v73 = ;
                    [v71 setObject:v73 forKeyedSubscript:@"BundleID"];

                    v74 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v23, "updateType")}];
                    [v71 setObject:v74 forKeyedSubscript:@"UpdateType"];

                    startDate2 = [v56 startDate];
                    [v71 setObject:startDate2 forKeyedSubscript:@"StartDate"];

                    endDate2 = [v56 endDate];
                    [v71 setObject:endDate2 forKeyedSubscript:@"EndDate"];

                    self = selfCopy;
                    duetService4 = [(PLDuetServiceImpl *)selfCopy duetService];

                    if (duetService4)
                    {
                      duetService5 = [(PLDuetServiceImpl *)selfCopy duetService];
                      [duetService5 logEntry:v71];
                    }
                  }
                }
              }

              v52 = [v119 countByEnumeratingWithState:&v127 objects:v145 count:16];
            }

            while (v52);
          }

          v79 = PLLogCommon();
          if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_21A4C6000, v79, OS_LOG_TYPE_INFO, "┃ ┃ ┃ ┗ PLDuetService didReceiveEventWithPayload finished processing intervals", buf, 2u);
          }

          [v23 setEventIntervals:array3];
          updateType = [v23 updateType];
          array = v114;
          v81 = v114;
          if (updateType == 1 || (v82 = [v23 updateType], v81 = array2, v82 == 2))
          {
            [v81 addObject:v23];
          }

          childBundleIDToWeight5 = [v23 childBundleIDToWeight];
          if (childBundleIDToWeight5)
          {
            v84 = childBundleIDToWeight5;
            childBundleIDToWeight6 = [v23 childBundleIDToWeight];
            v86 = [childBundleIDToWeight6 count];

            if (v86)
            {
              v125 = 0u;
              v126 = 0u;
              v123 = 0u;
              v124 = 0u;
              childBundleIDToWeight7 = [v23 childBundleIDToWeight];
              v88 = [childBundleIDToWeight7 countByEnumeratingWithState:&v123 objects:v144 count:16];
              if (v88)
              {
                v89 = v88;
                v90 = *v124;
                do
                {
                  for (k = 0; k != v89; ++k)
                  {
                    if (*v124 != v90)
                    {
                      objc_enumerationMutation(childBundleIDToWeight7);
                    }

                    v92 = *(*(&v123 + 1) + 8 * k);
                    v93 = objc_opt_new();
                    [v93 setBundleID:v92];
                    [v93 setProcessName:v92];
                    [v93 setUpdateType:{objc_msgSend(v23, "updateType")}];
                    eventIntervals = [v23 eventIntervals];
                    [v93 setEventIntervals:eventIntervals];

                    updateType2 = [v93 updateType];
                    v96 = v114;
                    if (updateType2 == 1 || (v97 = [v93 updateType], v96 = array2, v97 == 2))
                    {
                      [v96 addObject:v93];
                    }

                    v98 = PLLogCommon();
                    if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v141 = v92;
                      _os_log_debug_impl(&dword_21A4C6000, v98, OS_LOG_TYPE_DEBUG, "┃ ┃ ┃ ╸ PLDuetService didReceiveEventWithPayload childEvent for bundleID:%@", buf, 0xCu);
                    }
                  }

                  v89 = [childBundleIDToWeight7 countByEnumeratingWithState:&v123 objects:v144 count:16];
                }

                while (v89);
              }
            }
          }

          v99 = PLLogCommon();
          if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_21A4C6000, v99, OS_LOG_TYPE_DEBUG, "┃ ┃ ┗ PLDuetService didReceiveEventWithPayload finished processing event", buf, 2u);
          }

          v21 = v116 + 1;
        }

        while (v116 + 1 != v115);
        v115 = [obj countByEnumeratingWithState:&v135 objects:v147 count:16];
      }

      while (v115);
    }

    v100 = PLLogCommon();
    if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21A4C6000, v100, OS_LOG_TYPE_DEFAULT, "┃ ┗ PLDuetService didReceiveEventWithPayload processing events completed", buf, 2u);
    }

    v101 = [(PLDuetServiceWithAccounting *)self eventTransitionsWithEvents:array];
    v102 = [(PLDuetServiceWithAccounting *)self eventTransitionsWithEvents:array2];
    [(PLDuetServiceWithAccounting *)self createQualificationEventsWithEventTransitions:v101 withQualificationID:11];
    v103 = PLLogCommon();
    payloadCopy = v111;
    if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
    {
      v104 = [v101 count];
      v105 = [array count];
      *buf = 134218240;
      v141 = v104;
      v142 = 2048;
      v143 = v105;
      _os_log_impl(&dword_21A4C6000, v103, OS_LOG_TYPE_DEFAULT, "┃ PLDuetService didReceiveEventWithPayload created %lu disc transitions from %lu events", buf, 0x16u);
    }

    [(PLDuetServiceWithAccounting *)self createQualificationEventsWithEventTransitions:v102 withQualificationID:12];
    v106 = PLLogCommon();
    if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
    {
      v107 = [v102 count];
      v108 = [array2 count];
      *buf = 134218240;
      v141 = v107;
      v142 = 2048;
      v143 = v108;
      _os_log_impl(&dword_21A4C6000, v106, OS_LOG_TYPE_DEFAULT, "┃ PLDuetService didReceiveEventWithPayload created %lu comp transitions from %lu events", buf, 0x16u);
    }

    objc_autoreleasePoolPop(context);
    v109 = PLLogCommon();
    if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21A4C6000, v109, OS_LOG_TYPE_DEFAULT, "┗ PLDuetService didReceiveEventWithPayload end", buf, 2u);
    }

LABEL_91:

    goto LABEL_92;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_ERROR, "┗ PLDuetService didReceiveEventWithPayload end: duetService not found", buf, 2u);
  }

  objc_autoreleasePoolPop(v14);
LABEL_92:
}

void *__58__PLDuetServiceWithAccounting_didReceiveEventWithPayload___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_59 = result;
  return result;
}

- (id)eventTransitionsWithEvents:(id)events
{
  v71 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v4 = PLLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_INFO, "┃ ┏ PLDuetService eventTransitionsWithEvents start", buf, 2u);
  }

  array = [MEMORY[0x277CBEB18] array];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = eventsCopy;
  v57 = [obj countByEnumeratingWithState:&v62 objects:v70 count:16];
  if (v57)
  {
    v54 = v61;
    v56 = *v63;
    do
    {
      v6 = 0;
      do
      {
        if (*v63 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v62 + 1) + 8 * v6);
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v8 = objc_opt_class();
          v60[0] = MEMORY[0x277D85DD0];
          v60[1] = 3221225472;
          v61[0] = __58__PLDuetServiceWithAccounting_eventTransitionsWithEvents___block_invoke;
          v61[1] = &__block_descriptor_40_e5_v8__0lu32l8;
          v61[2] = v8;
          if (qword_2811F6980 != -1)
          {
            dispatch_once(&qword_2811F6980, v60);
          }

          if (byte_2811F6951 == 1)
          {
            v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"event=%@", v7, v54];
            v10 = MEMORY[0x277D3F178];
            v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
            lastPathComponent = [v11 lastPathComponent];
            v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceWithAccounting eventTransitionsWithEvents:]"];
            [v10 logMessage:v9 fromFile:lastPathComponent fromFunction:v13 fromLineNumber:321];

            v14 = PLLogCommon();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              *v67 = v9;
              _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        v15 = PLLogCommon();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *v67 = v7;
          _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "┃ ┃ ┏ PLDuetService eventTransitionsWithEvents processing event: %@", buf, 0xCu);
        }

        eventIntervals = [v7 eventIntervals];
        v17 = [eventIntervals count];

        if (v17)
        {
          v58 = v6;
          v18 = 0;
          v19 = 0;
          v20 = 0;
          do
          {
            v21 = v19;
            eventIntervals2 = [v7 eventIntervals];
            v19 = [eventIntervals2 objectAtIndex:v18];

            v23 = PLLogCommon();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              *v67 = v19;
              _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "┃ ┃ ┃ ┏ PLDuetService eventTransitionsWithEvents processing interval: %@", buf, 0xCu);
            }

            LODWORD(v24) = v20 + 1;
            eventIntervals3 = [v7 eventIntervals];
            if ([eventIntervals3 count] <= (v20 + 1))
            {
LABEL_28:
            }

            else
            {
              v24 = v24;
              while (1)
              {
                eventIntervals4 = [v7 eventIntervals];
                v27 = [eventIntervals4 objectAtIndex:v24];
                v28 = [v19 intersects:v27];

                if (!v28)
                {
                  break;
                }

                eventIntervals5 = [v7 eventIntervals];
                v30 = [eventIntervals5 objectAtIndex:v24];
                v31 = [v19 joinWithInterval:v30];

                v32 = PLLogCommon();
                if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 67109634;
                  *v67 = v20;
                  *&v67[4] = 1024;
                  *&v67[6] = v24;
                  v68 = 2112;
                  v69 = v31;
                  _os_log_debug_impl(&dword_21A4C6000, v32, OS_LOG_TYPE_DEBUG, "┃ ┃ ┃ ┃ PLDuetService eventTransitionsWithEvents Joining intervals %d-%d, active interval updated: %@", buf, 0x18u);
                }

                v20 = v24;

                ++v24;
                eventIntervals3 = [v7 eventIntervals];
                v19 = v31;
                if ([eventIntervals3 count] <= v24)
                {
                  v19 = v31;
                  goto LABEL_28;
                }
              }
            }

            v20 = v24;
            if ([MEMORY[0x277D3F180] debugEnabled])
            {
              v33 = objc_opt_class();
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __58__PLDuetServiceWithAccounting_eventTransitionsWithEvents___block_invoke_171;
              block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              block[4] = v33;
              if (qword_2811F6988 != -1)
              {
                dispatch_once(&qword_2811F6988, block);
              }

              if (byte_2811F6952 == 1)
              {
                v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"eventInterval=%@", v19];
                v35 = MEMORY[0x277D3F178];
                v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
                lastPathComponent2 = [v36 lastPathComponent];
                v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceWithAccounting eventTransitionsWithEvents:]"];
                [v35 logMessage:v34 fromFile:lastPathComponent2 fromFunction:v38 fromLineNumber:338];

                v39 = PLLogCommon();
                if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  *v67 = v34;
                  _os_log_debug_impl(&dword_21A4C6000, v39, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }
              }
            }

            v40 = objc_opt_new();
            startDate = [v19 startDate];
            [v40 setDate:startDate];

            bundleID = [v7 bundleID];
            [v40 setBundleID:bundleID];

            [v40 setIsStart:1];
            [array addObject:v40];
            v43 = PLLogCommon();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *v67 = v40;
              _os_log_impl(&dword_21A4C6000, v43, OS_LOG_TYPE_INFO, "┃ ┃ ┃ ┃ PLDuetService eventTransitionsWithEvents created start transition: %@", buf, 0xCu);
            }

            v44 = objc_opt_new();
            endDate = [v19 endDate];
            [v44 setDate:endDate];

            bundleID2 = [v7 bundleID];
            [v44 setBundleID:bundleID2];

            [v44 setIsStart:0];
            [array addObject:v44];
            v47 = PLLogCommon();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *v67 = v44;
              _os_log_impl(&dword_21A4C6000, v47, OS_LOG_TYPE_INFO, "┃ ┃ ┃ ┃ PLDuetService eventTransitionsWithEvents created end transition: %@", buf, 0xCu);
            }

            v48 = PLLogCommon();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_debug_impl(&dword_21A4C6000, v48, OS_LOG_TYPE_DEBUG, "┃ ┃ ┃ ┗ PLDuetService eventTransitionsWithEvents finished processing interval", buf, 2u);
            }

            v18 = v20;
            eventIntervals6 = [v7 eventIntervals];
            v50 = [eventIntervals6 count];
          }

          while (v50 > v20);

          v6 = v58;
        }

        v51 = PLLogCommon();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_21A4C6000, v51, OS_LOG_TYPE_DEBUG, "┃ ┃ ┗ PLDuetService eventTransitionsWithEvents finished processing event", buf, 2u);
        }

        ++v6;
      }

      while (v6 != v57);
      v57 = [obj countByEnumeratingWithState:&v62 objects:v70 count:16];
    }

    while (v57);
  }

  [array sortUsingComparator:&__block_literal_global_61];
  v52 = PLLogCommon();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21A4C6000, v52, OS_LOG_TYPE_INFO, "┃ ┗ PLDuetService eventTransitionsWithEvents end", buf, 2u);
  }

  return array;
}

void *__58__PLDuetServiceWithAccounting_eventTransitionsWithEvents___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6951 = result;
  return result;
}

void *__58__PLDuetServiceWithAccounting_eventTransitionsWithEvents___block_invoke_171(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6952 = result;
  return result;
}

uint64_t __58__PLDuetServiceWithAccounting_eventTransitionsWithEvents___block_invoke_176(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 date];
  v6 = [v4 date];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)createQualificationEventsWithEventTransitions:(id)transitions withQualificationID:(int)d
{
  v67 = *MEMORY[0x277D85DE8];
  transitionsCopy = transitions;
  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_INFO, "┃ ┏ PLDuetService createQualificationEventsWithEventTransitions start", buf, 2u);
  }

  firstObject = [transitionsCopy firstObject];
  v7 = [MEMORY[0x277CBEB58] set];
  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [transitionsCopy count];
    *buf = 67109120;
    LODWORD(v61) = v9;
    _os_log_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_INFO, "┃ ┃ ┏ PLDuetService createQualificationEventsWithEventTransitions processing %d transitions", buf, 8u);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = transitionsCopy;
  v10 = [obj countByEnumeratingWithState:&v56 objects:v66 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v54 = *v57;
    v13 = *MEMORY[0x277D3F118];
    v51 = v7;
    do
    {
      v14 = 0;
      do
      {
        if (*v57 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v56 + 1) + 8 * v14);
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v16 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __97__PLDuetServiceWithAccounting_createQualificationEventsWithEventTransitions_withQualificationID___block_invoke;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v16;
          if (qword_2811F6990 != -1)
          {
            dispatch_once(&qword_2811F6990, block);
          }

          if (byte_2811F6953 == 1)
          {
            v17 = v11;
            v18 = v12;
            v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"lastEventTransition=%@, eventTransition=%@", firstObject, v15];
            v20 = MEMORY[0x277D3F178];
            v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
            lastPathComponent = [v21 lastPathComponent];
            v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceWithAccounting createQualificationEventsWithEventTransitions:withQualificationID:]"];
            [v20 logMessage:v19 fromFile:lastPathComponent fromFunction:v23 fromLineNumber:375];

            v24 = PLLogCommon();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v61 = v19;
              _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v12 = v18;
            v11 = v17;
            v7 = v51;
          }
        }

        v25 = PLLogCommon();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v61 = v15;
          _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "┃ ┃ ┃ PLDuetService createQualificationEventsWithEventTransitions current transition:%@", buf, 0xCu);
        }

        v26 = PLLogCommon();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v61 = v7;
          _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "┃ ┃ ┃ PLDuetService createQualificationEventsWithEventTransitions current eventElements:%@", buf, 0xCu);
        }

        date = [v15 date];
        date2 = [firstObject date];
        [date timeIntervalSinceDate:date2];
        v30 = v29;

        if (v30 > v13)
        {
          mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
          allObjects = [v7 allObjects];
          date3 = [firstObject date];
          date4 = [v15 date];
          [mEMORY[0x277D3F0C0] createQualificationEventIntervalWithQualificationID:d withChildNodeNames:allObjects withStartDate:date3 withEndDate:date4];

          v35 = PLLogCommon();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            date5 = [firstObject date];
            [date5 timeIntervalSince1970];
            v41 = v40;
            date6 = [v15 date];
            [date6 timeIntervalSince1970];
            v44 = v43;
            date7 = [v15 date];
            [firstObject date];
            v46 = v11;
            v12 = v47 = v12;
            [date7 timeIntervalSinceDate:v12];
            *buf = 134218496;
            v61 = v41;
            v62 = 2048;
            v63 = v44;
            v64 = 2048;
            v65 = v48;
            _os_log_debug_impl(&dword_21A4C6000, v35, OS_LOG_TYPE_DEBUG, "┃ ┃ ┃ PLDuetService createQualificationEventsWithEventTransitions created event with startDate:%f, endDate:%f, timeRange=%f seconds", buf, 0x20u);

            LODWORD(v12) = v47;
            v11 = v46;
            v7 = v51;
          }

          v36 = v15;
          v12 = (v12 + 1);
          firstObject = v36;
        }

        isStart = [v15 isStart];
        bundleID = [v15 bundleID];
        if (isStart)
        {
          [v7 addObject:bundleID];
        }

        else
        {
          [v7 removeObject:bundleID];
        }

        ++v14;
      }

      while (v11 != v14);
      v11 = [obj countByEnumeratingWithState:&v56 objects:v66 count:16];
    }

    while (v11);
  }

  else
  {
    LODWORD(v12) = 0;
  }

  v49 = PLLogCommon();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v61) = v12;
    _os_log_impl(&dword_21A4C6000, v49, OS_LOG_TYPE_INFO, "┃ ┃ ┗ PLDuetService createQualificationEventsWithEventTransitions Created %d qualification events", buf, 8u);
  }

  v50 = PLLogCommon();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21A4C6000, v50, OS_LOG_TYPE_INFO, "┃ ┗ PLDuetService createQualificationEventsWithEventTransitions end", buf, 2u);
  }
}

void *__97__PLDuetServiceWithAccounting_createQualificationEventsWithEventTransitions_withQualificationID___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6953 = result;
  return result;
}

- (id)energyResponse
{
  v38[2] = *MEMORY[0x277D85DE8];
  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEFAULT, "┏ PLDuetService energyResponse start", buf, 2u);
  }

  duetService = [(PLDuetServiceImpl *)self duetService];

  if (duetService)
  {
    v5 = [(PLDuetServiceWithAccounting *)self energyResponseWithQualificationID:11];
    v6 = PLLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 count];
      *buf = 67109120;
      LODWORD(v36) = v7;
      _os_log_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEFAULT, "┃ PLDuetService discretionaryCumulativeEnergies count: %d", buf, 8u);
    }

    v8 = [(PLDuetServiceWithAccounting *)self energyResponseWithQualificationID:12];
    v9 = PLLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 count];
      *buf = 67109120;
      LODWORD(v36) = v10;
      _os_log_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEFAULT, "┃ PLDuetService complicationCumulativeEnergies count: %d", buf, 8u);
    }

    v11 = [MEMORY[0x277CBEB18] arrayWithArray:v5];
    [v11 addObjectsFromArray:v8];
    v37[0] = @"BLMEnergyForDuet";
    v37[1] = @"BLMUUIDForDuet";
    v38[0] = v11;
    duetService2 = [(PLDuetServiceImpl *)self duetService];
    v13 = objc_msgSend_storage(duetService2);
    uuid = [v13 uuid];
    v38[1] = uuid;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];

    mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
    getLastQualifiedEnergyEventDate = [mEMORY[0x277D3F0C0] getLastQualifiedEnergyEventDate];

    v18 = PLLogCommon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v36 = getLastQualifiedEnergyEventDate;
      _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "lastQualifiedDate=%@", buf, 0xCu);
    }

    if (getLastQualifiedEnergyEventDate)
    {
      convertFromMonotonicToSystem = [getLastQualifiedEnergyEventDate convertFromMonotonicToSystem];
      v20 = PLLogCommon();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
LABEL_25:

        v34[0] = v11;
        v28 = [(PLDuetServiceImpl *)self duetService:@"BLMEnergyForDuet"];
        v29 = objc_msgSend_storage(v28);
        uuid2 = [v29 uuid];
        v33[2] = @"BLMEnergyResponseTimestamp";
        v34[1] = uuid2;
        v34[2] = convertFromMonotonicToSystem;
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:3];

        v31 = PLLogCommon();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21A4C6000, v31, OS_LOG_TYPE_DEFAULT, "┗ PLDuetService energyResponse created", buf, 2u);
        }

        goto LABEL_28;
      }

      *buf = 138412290;
      v36 = convertFromMonotonicToSystem;
      v21 = "After converting to system time, energyResponseTimestamp=%@";
    }

    else
    {
      mEMORY[0x277D3F140] = [MEMORY[0x277D3F140] sharedInstance];
      v24 = [mEMORY[0x277D3F140] lastCompletedDateWithIdentifier:@"PLDuetService_duetEnergyAccumulator"];
      v25 = [v24 dateByAddingTimeInterval:-3600.0];

      v26 = PLLogCommon();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v36 = v25;
        _os_log_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_INFO, "lastAccumulatedDate=%@", buf, 0xCu);
      }

      convertFromMonotonicToSystem = [v25 convertFromMonotonicToSystem];

      v27 = PLLogCommon();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v36 = convertFromMonotonicToSystem;
        _os_log_impl(&dword_21A4C6000, v27, OS_LOG_TYPE_INFO, "After converting to system time, lastAccumulatedDate=%@", buf, 0xCu);
      }

      if (!convertFromMonotonicToSystem)
      {
        convertFromMonotonicToSystem = [MEMORY[0x277CBEAA8] distantPast];
      }

      v20 = PLLogCommon();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        goto LABEL_25;
      }

      *buf = 138412290;
      v36 = convertFromMonotonicToSystem;
      v21 = "energyResponse timestamp is lastAccumulatedDate=%@";
    }

    _os_log_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_INFO, v21, buf, 0xCu);
    goto LABEL_25;
  }

  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_ERROR, "┗ PLDuetService energyResponse not created: duetService not found", buf, 2u);
  }

  v22 = MEMORY[0x277CBEC10];
LABEL_28:

  return v22;
}

- (id)energyResponseWithQualificationID:(int)d
{
  v3 = *&d;
  v164[1] = *MEMORY[0x277D85DE8];
  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_INFO, "┃ ┏ PLDuetService energyResponseWithQualificationID start", buf, 2u);
  }

  duetService = [(PLDuetServiceImpl *)self duetService];

  if (!duetService)
  {
    v15 = PLLogCommon();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
LABEL_78:
      array = 0;
      goto LABEL_85;
    }

    *buf = 0;
    v16 = "┃ ┗ PLDuetService energyResponseWithQualificationID: duetService not found";
    v17 = v15;
    v18 = 2;
LABEL_89:
    _os_log_error_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_ERROR, v16, buf, v18);
    goto LABEL_78;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = objc_opt_class();
    v151[0] = MEMORY[0x277D85DD0];
    v151[1] = 3221225472;
    v151[2] = __65__PLDuetServiceWithAccounting_energyResponseWithQualificationID___block_invoke;
    v151[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v151[4] = v7;
    if (qword_2811F6998 != -1)
    {
      dispatch_once(&qword_2811F6998, v151);
    }

    if (byte_2811F6954 == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"qualificationID=%i", v3];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
      lastPathComponent = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceWithAccounting energyResponseWithQualificationID:]"];
      [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:457];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v153 = v8;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if (v3 == 11)
  {
    v14 = 1;
    goto LABEL_17;
  }

  if (v3 != 12)
  {
    v15 = PLLogCommon();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_78;
    }

    *buf = 67109120;
    LODWORD(v153) = 0;
    v16 = "┃ ┗ PLDuetService energyResponseWithQualificationID: unexpected updateType %d";
    v17 = v15;
    v18 = 8;
    goto LABEL_89;
  }

  v14 = 2;
LABEL_17:
  v132 = v14;
  v19 = PLLogCommon();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v153) = v132;
    _os_log_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEFAULT, "┃ ┃ PLDuetService energyResponseWithQualificationID: updateType %d", buf, 8u);
  }

  duetService2 = [(PLDuetServiceImpl *)self duetService];
  v21 = objc_opt_class();
  v22 = *MEMORY[0x277D3F5B8];
  v23 = [v21 entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"DuetEnergyAccumulator"];

  v24 = objc_alloc(MEMORY[0x277D3F260]);
  v25 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  v26 = [v24 initWithKey:@"QualificationID" withValue:v25 withComparisonOperation:0];

  selfCopy = self;
  duetService3 = [(PLDuetServiceImpl *)self duetService];
  v28 = objc_msgSend_storage(duetService3);
  v133 = v26;
  v164[0] = v26;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v164 count:1];
  v126 = v23;
  v30 = [v28 entriesForKey:v23 withComparisons:v29];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v31 = objc_opt_class();
    v150[0] = MEMORY[0x277D85DD0];
    v150[1] = 3221225472;
    v150[2] = __65__PLDuetServiceWithAccounting_energyResponseWithQualificationID___block_invoke_205;
    v150[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v150[4] = v31;
    if (qword_2811F69A0 != -1)
    {
      dispatch_once(&qword_2811F69A0, v150);
    }

    if (byte_2811F6955 == 1)
    {
      v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"accumulatorEntries=%@", v30];
      v33 = MEMORY[0x277D3F178];
      v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
      lastPathComponent2 = [v34 lastPathComponent];
      v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceWithAccounting energyResponseWithQualificationID:]"];
      [v33 logMessage:v32 fromFile:lastPathComponent2 fromFunction:v36 fromLineNumber:481];

      v37 = PLLogCommon();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v153 = v32;
        _os_log_debug_impl(&dword_21A4C6000, v37, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v38 = PLLogCommon();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    v39 = [v30 count];
    *buf = 67109120;
    LODWORD(v153) = v39;
    _os_log_impl(&dword_21A4C6000, v38, OS_LOG_TYPE_INFO, "┃ ┃ PLDuetService energyResponseWithQualificationID accumulatorEntries count: %d", buf, 8u);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v146 = 0u;
  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  obj = v30;
  v41 = [obj countByEnumeratingWithState:&v146 objects:v163 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v147;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v147 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v45 = *(*(&v146 + 1) + 8 * i);
        v46 = [v45 objectForKeyedSubscript:@"Energy"];
        v47 = [v45 objectForKeyedSubscript:@"BundleID"];
        [dictionary setObject:v46 forKeyedSubscript:v47];
      }

      v42 = [obj countByEnumeratingWithState:&v146 objects:v163 count:16];
    }

    while (v42);
  }

  v48 = [MEMORY[0x277D3F128] entryKeyForType:v22 andName:*MEMORY[0x277D3F2F0]];
  mEMORY[0x277D3F140] = [MEMORY[0x277D3F140] sharedInstance];
  v50 = [mEMORY[0x277D3F140] lastCompletedDateWithIdentifier:@"PLDuetService_duetEnergyAccumulator"];
  distantPast = [v50 dateByAddingTimeInterval:-3600.0];

  if (!distantPast)
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
  }

  v124 = distantPast;
  v52 = objc_alloc(MEMORY[0x277D3F260]);
  v53 = MEMORY[0x277CCABB0];
  [distantPast timeIntervalSince1970];
  v54 = [v53 numberWithDouble:?];
  v55 = [v52 initWithKey:@"timestamp" withValue:v54 withComparisonOperation:2];

  v56 = objc_alloc(MEMORY[0x277D3F260]);
  v57 = *MEMORY[0x277D3F308];
  v58 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  v59 = [v56 initWithKey:v57 withValue:v58 withComparisonOperation:0];

  v60 = objc_alloc(MEMORY[0x277D3F260]);
  v134 = *MEMORY[0x277D3F300];
  v61 = [v60 initWithKey:? withValue:? withComparisonOperation:?];
  duetService4 = [(PLDuetServiceImpl *)selfCopy duetService];
  v63 = objc_msgSend_storage(duetService4);
  v122 = v59;
  v123 = v55;
  v162[0] = v55;
  v162[1] = v59;
  v121 = v61;
  v162[2] = v61;
  v64 = [MEMORY[0x277CBEA60] arrayWithObjects:v162 count:3];
  v65 = [v63 entriesForKey:v48 withComparisons:v64];

  v66 = 0x277D3F000uLL;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v67 = objc_opt_class();
    v145[0] = MEMORY[0x277D85DD0];
    v145[1] = 3221225472;
    v145[2] = __65__PLDuetServiceWithAccounting_energyResponseWithQualificationID___block_invoke_221;
    v145[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v145[4] = v67;
    if (qword_2811F69A8 != -1)
    {
      dispatch_once(&qword_2811F69A8, v145);
    }

    if (byte_2811F6956 == 1)
    {
      v68 = [MEMORY[0x277CCACA8] stringWithFormat:@"aggregateQualificationEnergyEntries=%@", v65];
      v69 = MEMORY[0x277D3F178];
      v70 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
      lastPathComponent3 = [v70 lastPathComponent];
      v72 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceWithAccounting energyResponseWithQualificationID:]"];
      [v69 logMessage:v68 fromFile:lastPathComponent3 fromFunction:v72 fromLineNumber:514];

      v73 = PLLogCommon();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v153 = v68;
        _os_log_debug_impl(&dword_21A4C6000, v73, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v66 = 0x277D3F000uLL;
    }
  }

  v125 = v48;
  v74 = PLLogCommon();
  if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
  {
    v75 = [v65 count];
    *buf = 67109120;
    LODWORD(v153) = v75;
    _os_log_impl(&dword_21A4C6000, v74, OS_LOG_TYPE_INFO, "┃ ┃ PLDuetService energyResponseWithQualificationID aggregateQualificationEnergyEntries count: %d", buf, 8u);
  }

  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v128 = v65;
  v76 = [v128 countByEnumeratingWithState:&v141 objects:v161 count:16];
  if (v76)
  {
    v77 = v76;
    v131 = *v142;
    v130 = *MEMORY[0x277D3F2F8];
    do
    {
      v78 = 0;
      do
      {
        if (*v142 != v131)
        {
          objc_enumerationMutation(v128);
        }

        v79 = *(*(&v141 + 1) + 8 * v78);
        mEMORY[0x277D3F0D0] = [MEMORY[0x277D3F0D0] sharedInstance];
        v81 = [v79 objectForKeyedSubscript:v134];
        v82 = [mEMORY[0x277D3F0D0] nodeNameForNodeID:v81];

        if ([*(v66 + 384) debugEnabled])
        {
          v83 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __65__PLDuetServiceWithAccounting_energyResponseWithQualificationID___block_invoke_228;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v83;
          if (qword_2811F69B0 != -1)
          {
            dispatch_once(&qword_2811F69B0, block);
          }

          if (byte_2811F6957 == 1)
          {
            v84 = [MEMORY[0x277CCACA8] stringWithFormat:@"bundleID=%@", v82];
            v85 = MEMORY[0x277D3F178];
            v86 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
            lastPathComponent4 = [v86 lastPathComponent];
            v88 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceWithAccounting energyResponseWithQualificationID:]"];
            [v85 logMessage:v84 fromFile:lastPathComponent4 fromFunction:v88 fromLineNumber:521];

            v89 = PLLogCommon();
            if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v153 = v84;
              _os_log_debug_impl(&dword_21A4C6000, v89, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v66 = 0x277D3F000;
          }
        }

        if (v82)
        {
          v90 = [v79 objectForKeyedSubscript:v130];
          [v90 doubleValue];
          v92 = v91 / 1000.0;

          v93 = fmin(v92, 10000.0);
          v94 = [dictionary objectForKeyedSubscript:v82];

          v95 = MEMORY[0x277CCABB0];
          if (v94)
          {
            v96 = [dictionary objectForKeyedSubscript:v82];
            [v96 doubleValue];
            v98 = [v95 numberWithDouble:v93 + v97];
            [dictionary setObject:v98 forKeyedSubscript:v82];
          }

          else
          {
            v96 = [MEMORY[0x277CCABB0] numberWithDouble:v93];
            [dictionary setObject:v96 forKeyedSubscript:v82];
          }
        }

        ++v78;
      }

      while (v77 != v78);
      v77 = [v128 countByEnumeratingWithState:&v141 objects:v161 count:16];
    }

    while (v77);
  }

  array = [MEMORY[0x277CBEB18] array];
  v99 = PLLogCommon();
  if (os_log_type_enabled(v99, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21A4C6000, v99, OS_LOG_TYPE_INFO, "┃ ┃ ┏ PLDuetService energyResponseWithQualificationID cumulativeEnergies", buf, 2u);
  }

  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  v100 = dictionary;
  v101 = [v100 countByEnumeratingWithState:&v136 objects:v160 count:16];
  if (v101)
  {
    v102 = v101;
    v103 = *v137;
    v104 = 0.0;
    do
    {
      for (j = 0; j != v102; ++j)
      {
        if (*v137 != v103)
        {
          objc_enumerationMutation(v100);
        }

        v159[0] = *(*(&v136 + 1) + 8 * j);
        v106 = v159[0];
        v158[0] = @"bundleID";
        v158[1] = @"updateType";
        v107 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v132];
        v159[1] = v107;
        v158[2] = @"energy";
        v108 = [v100 objectForKeyedSubscript:v106];
        v159[2] = v108;
        v109 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v159 forKeys:v158 count:3];
        [array addObject:v109];

        v110 = [v100 objectForKeyedSubscript:v106];
        [v110 doubleValue];
        v112 = v111;

        v113 = PLLogCommon();
        if (os_log_type_enabled(v113, OS_LOG_TYPE_INFO))
        {
          v114 = [v100 objectForKeyedSubscript:v106];
          [v114 doubleValue];
          *buf = 138412546;
          v153 = v106;
          v154 = 2048;
          v155 = v115;
          _os_log_impl(&dword_21A4C6000, v113, OS_LOG_TYPE_INFO, "┃ ┃ ┃ PLDuetService energyResponseWithQualificationID cumulativeEnergies %@: %f", buf, 0x16u);
        }

        v104 = v104 + v112;
      }

      v102 = [v100 countByEnumeratingWithState:&v136 objects:v160 count:16];
    }

    while (v102);
  }

  else
  {
    v104 = 0.0;
  }

  v116 = PLLogCommon();
  if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
  {
    v117 = [array count];
    [v124 timeIntervalSince1970];
    *buf = 134218496;
    v153 = v117;
    v154 = 2048;
    v155 = v104;
    v156 = 2048;
    v157 = v118;
    _os_log_impl(&dword_21A4C6000, v116, OS_LOG_TYPE_DEFAULT, "┃ ┃ ┗ PLDuetService energyResponseWithQualificationID cumulativeEnergies %lu items with %f since %f", buf, 0x20u);
  }

  v119 = PLLogCommon();
  if (os_log_type_enabled(v119, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21A4C6000, v119, OS_LOG_TYPE_INFO, "┃ ┗ PLDuetService energyResponseWithQualificationID created", buf, 2u);
  }

  v15 = v126;
LABEL_85:

  return array;
}

void *__65__PLDuetServiceWithAccounting_energyResponseWithQualificationID___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6954 = result;
  return result;
}

void *__65__PLDuetServiceWithAccounting_energyResponseWithQualificationID___block_invoke_205(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6955 = result;
  return result;
}

void *__65__PLDuetServiceWithAccounting_energyResponseWithQualificationID___block_invoke_221(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6956 = result;
  return result;
}

void *__65__PLDuetServiceWithAccounting_energyResponseWithQualificationID___block_invoke_228(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6957 = result;
  return result;
}

- (void)accumulateWithLastCompletedDate:(id)date withNow:(id)now
{
  v25 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  nowCopy = now;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__PLDuetServiceWithAccounting_accumulateWithLastCompletedDate_withNow___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (qword_2811F69B8 != -1)
    {
      dispatch_once(&qword_2811F69B8, block);
    }

    if (byte_2811F6958 == 1)
    {
      nowCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"lastCompletedDate=%@, now=%@", dateCopy, nowCopy];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceWithAccounting accumulateWithLastCompletedDate:withNow:]"];
      [v10 logMessage:nowCopy fromFile:lastPathComponent fromFunction:v13 fromLineNumber:554];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v22 = nowCopy;
        _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v15 = PLLogCommon();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [dateCopy timeIntervalSince1970];
    v18 = v17;
    [nowCopy timeIntervalSince1970];
    *buf = 134218240;
    v22 = v18;
    v23 = 2048;
    v24 = v19;
    _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "┏ PLDuetService accumulateWithLastCompletedDate start, lastCompletedDate=%f, now=%f", buf, 0x16u);
  }

  [(PLDuetServiceWithAccounting *)self accumulateWithLastCompletedDate:dateCopy withNow:nowCopy withQualificationID:11];
  [(PLDuetServiceWithAccounting *)self accumulateWithLastCompletedDate:dateCopy withNow:nowCopy withQualificationID:12];
  v16 = PLLogCommon();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "┗ PLDuetService accumulateWithLastCompletedDate end", buf, 2u);
  }
}

void *__71__PLDuetServiceWithAccounting_accumulateWithLastCompletedDate_withNow___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6958 = result;
  return result;
}

- (void)accumulateWithLastCompletedDate:(id)date withNow:(id)now withQualificationID:(int)d
{
  v126[4] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  nowCopy = now;
  v9 = PLLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    LODWORD(v119) = d;
    _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "┃ ┏ PLDuetService accumulateWithLastCompletedDate start for qualificationID:%d", buf, 8u);
  }

  duetService = [(PLDuetServiceImpl *)self duetService];

  if (duetService)
  {
    selfCopy = self;
    v11 = *MEMORY[0x277D3F5B8];
    v12 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5B8] andName:*MEMORY[0x277D3F2F0]];
    distantPast = [dateCopy dateByAddingTimeInterval:-3600.0];
    if (!distantPast)
    {
      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "┃ ┃ PLDuetService accumulateWithLastCompletedDate !lastBucketAlreadyAccumulated", buf, 2u);
      }

      distantPast = [MEMORY[0x277CBEAA8] distantPast];
    }

    v15 = PLLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [distantPast timeIntervalSince1970];
      *buf = 134217984;
      v119 = v85;
      _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "┃ ┃ PLDuetService accumulateWithLastCompletedDate lastBucketAlreadyAccumulated=%f", buf, 0xCu);
    }

    v95 = dateCopy;

    v16 = [nowCopy dateByAddingTimeInterval:-3600.0];
    v17 = PLLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [v16 timeIntervalSince1970];
      *buf = 134217984;
      v119 = v86;
      _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "┃ ┃ PLDuetService accumulateWithLastCompletedDate lastBucketToAccumulate=%f", buf, 0xCu);
    }

    v18 = objc_alloc(MEMORY[0x277D3F260]);
    v19 = MEMORY[0x277CCABB0];
    v93 = distantPast;
    [distantPast timeIntervalSince1970];
    v20 = [v19 numberWithDouble:?];
    v21 = [v18 initWithKey:@"timestamp" withValue:v20 withComparisonOperation:2];

    v22 = objc_alloc(MEMORY[0x277D3F260]);
    v23 = MEMORY[0x277CCABB0];
    v92 = v16;
    [v16 timeIntervalSince1970];
    v24 = [v23 numberWithDouble:?];
    v25 = [v22 initWithKey:@"timestamp" withValue:v24 withComparisonOperation:4];

    v26 = objc_alloc(MEMORY[0x277D3F260]);
    v27 = *MEMORY[0x277D3F308];
    v28 = [MEMORY[0x277CCABB0] numberWithInt:d];
    v29 = [v26 initWithKey:v27 withValue:v28 withComparisonOperation:0];

    v30 = objc_alloc(MEMORY[0x277D3F260]);
    v105 = *MEMORY[0x277D3F300];
    v31 = [v30 initWithKey:? withValue:? withComparisonOperation:?];
    duetService2 = [(PLDuetServiceImpl *)selfCopy duetService];
    v33 = objc_msgSend_storage(duetService2);
    v90 = v25;
    v91 = v21;
    v126[0] = v21;
    v126[1] = v25;
    v88 = v31;
    v89 = v29;
    v126[2] = v29;
    v126[3] = v31;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v126 count:4];
    v94 = v12;
    v35 = [v33 entriesForKey:v12 withComparisons:v34];

    v96 = nowCopy;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v36 = objc_opt_class();
      v115[0] = MEMORY[0x277D85DD0];
      v115[1] = 3221225472;
      v115[2] = __91__PLDuetServiceWithAccounting_accumulateWithLastCompletedDate_withNow_withQualificationID___block_invoke;
      v115[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v115[4] = v36;
      if (qword_2811F69C0 != -1)
      {
        dispatch_once(&qword_2811F69C0, v115);
      }

      if (byte_2811F6959 == 1)
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"aggregateQualificationEnergyEntries=%@", v35];
        v37 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v38 = MEMORY[0x277D3F178];
        v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
        lastPathComponent = [v39 lastPathComponent];
        v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceWithAccounting accumulateWithLastCompletedDate:withNow:withQualificationID:]"];
        [v38 logMessage:*&v37 fromFile:lastPathComponent fromFunction:v41 fromLineNumber:603];

        v42 = PLLogCommon();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v119 = v37;
          _os_log_debug_impl(&dword_21A4C6000, v42, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v43 = PLLogCommon();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      v87 = [v35 count];
      *buf = 67109120;
      LODWORD(v119) = v87;
      _os_log_debug_impl(&dword_21A4C6000, v43, OS_LOG_TYPE_DEBUG, "┃ ┃ PLDuetService accumulateWithLastCompletedDate %d aggregate entries found", buf, 8u);
    }

    duetService3 = [(PLDuetServiceImpl *)selfCopy duetService];
    v45 = [objc_opt_class() entryKeyForType:v11 andName:@"DuetEnergyAccumulator"];

    duetService4 = [(PLDuetServiceImpl *)selfCopy duetService];
    v47 = objc_msgSend_storage(duetService4);
    v104 = v45;
    v48 = [v47 entriesForKey:v45];

    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    obj = v48;
    v49 = [obj countByEnumeratingWithState:&v111 objects:v125 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v112;
      do
      {
        for (i = 0; i != v50; ++i)
        {
          if (*v112 != v51)
          {
            objc_enumerationMutation(obj);
          }

          v53 = *(*(&v111 + 1) + 8 * i);
          v54 = PLLogCommon();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v119 = v53;
            _os_log_debug_impl(&dword_21A4C6000, v54, OS_LOG_TYPE_DEBUG, "┃ ┃ ╸ PLDuetService accumulateWithLastCompletedDate existing entry:%@", buf, 0xCu);
          }
        }

        v50 = [obj countByEnumeratingWithState:&v111 objects:v125 count:16];
      }

      while (v50);
    }

    array = [MEMORY[0x277CBEB18] array];
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v98 = v35;
    v55 = [v98 countByEnumeratingWithState:&v107 objects:v124 count:16];
    nowCopy = v96;
    v56 = selfCopy;
    if (v55)
    {
      v57 = v55;
      v103 = *v108;
      v100 = *MEMORY[0x277D3F2F8];
      do
      {
        v58 = 0;
        do
        {
          if (*v108 != v103)
          {
            objc_enumerationMutation(v98);
          }

          v59 = *(*(&v107 + 1) + 8 * v58);
          v60 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v104 withDate:nowCopy];
          mEMORY[0x277D3F0D0] = [MEMORY[0x277D3F0D0] sharedInstance];
          v62 = [v59 objectForKeyedSubscript:v105];
          v63 = [mEMORY[0x277D3F0D0] nodeNameForNodeID:v62];

          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v64 = objc_opt_class();
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __91__PLDuetServiceWithAccounting_accumulateWithLastCompletedDate_withNow_withQualificationID___block_invoke_240;
            block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            block[4] = v64;
            if (qword_2811F69C8 != -1)
            {
              dispatch_once(&qword_2811F69C8, block);
            }

            if (byte_2811F695A == 1)
            {
              [MEMORY[0x277CCACA8] stringWithFormat:@"bundleID=%@", v63];
              v65 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              v66 = MEMORY[0x277D3F178];
              v67 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
              lastPathComponent2 = [v67 lastPathComponent];
              v69 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceWithAccounting accumulateWithLastCompletedDate:withNow:withQualificationID:]"];
              [v66 logMessage:*&v65 fromFile:lastPathComponent2 fromFunction:v69 fromLineNumber:620];

              v70 = PLLogCommon();
              if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v119 = v65;
                _os_log_debug_impl(&dword_21A4C6000, v70, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              nowCopy = v96;
              v56 = selfCopy;
            }
          }

          v71 = PLLogCommon();
          if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
          {
            [v59 objectForKeyedSubscript:v105];
            v79 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            v80 = [v59 objectForKeyedSubscript:@"timestamp"];
            *buf = 138412802;
            v119 = v79;
            v120 = 2112;
            v121 = v63;
            v122 = 2112;
            v123 = v80;
            _os_log_debug_impl(&dword_21A4C6000, v71, OS_LOG_TYPE_DEBUG, "┃ ┃ ┏ PLDuetService accumulateWithLastCompletedDate entry for nodeID:%@, bundleID:%@, timestamp:%@", buf, 0x20u);

            v56 = selfCopy;
          }

          if (v63)
          {
            [v60 setObject:v63 forKeyedSubscript:@"BundleID"];
            v72 = [MEMORY[0x277CCABB0] numberWithInt:d];
            [v60 setObject:v72 forKeyedSubscript:@"QualificationID"];

            v73 = [v59 objectForKeyedSubscript:v100];
            [v73 doubleValue];
            v75 = v74 / 1000.0;

            v76 = fmin(v75, 10000.0);
            v77 = [MEMORY[0x277CCABB0] numberWithDouble:v76];
            [v60 setObject:v77 forKeyedSubscript:@"Energy"];

            v78 = PLLogCommon();
            if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134217984;
              v119 = v76;
              _os_log_debug_impl(&dword_21A4C6000, v78, OS_LOG_TYPE_DEBUG, "┃ ┃ ┗ PLDuetService accumulateWithLastCompletedDate entry energy:%fmWh", buf, 0xCu);
            }

            [array addObject:v60];
          }

          ++v58;
        }

        while (v57 != v58);
        v57 = [v98 countByEnumeratingWithState:&v107 objects:v124 count:16];
      }

      while (v57);
    }

    if ([array count])
    {
      duetService5 = [(PLDuetServiceImpl *)v56 duetService];

      if (duetService5)
      {
        duetService6 = [(PLDuetServiceImpl *)v56 duetService];
        v116 = v104;
        v117 = array;
        v83 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v117 forKeys:&v116 count:1];
        [duetService6 logEntries:v83 withGroupID:v104];
      }
    }

    v84 = PLLogCommon();
    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v84, OS_LOG_TYPE_DEBUG, "┃ ┗ PLDuetService accumulateWithLastCompletedDate end", buf, 2u);
    }

    dateCopy = v95;
  }
}

void *__91__PLDuetServiceWithAccounting_accumulateWithLastCompletedDate_withNow_withQualificationID___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6959 = result;
  return result;
}

void *__91__PLDuetServiceWithAccounting_accumulateWithLastCompletedDate_withNow_withQualificationID___block_invoke_240(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F695A = result;
  return result;
}

+ (id)mapBundleID:(id)d
{
  v3 = qword_2811F69D0;
  dCopy = d;
  if (v3 != -1)
  {
    dispatch_once(&qword_2811F69D0, &__block_literal_global_242_0);
  }

  v5 = [qword_2811F69D8 objectForKeyedSubscript:dCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = dCopy;
  }

  v8 = v7;

  return v7;
}

void __43__PLDuetServiceWithAccounting_mapBundleID___block_invoke()
{
  v0 = qword_2811F69D8;
  qword_2811F69D8 = &unk_282C19CC8;
}

@end