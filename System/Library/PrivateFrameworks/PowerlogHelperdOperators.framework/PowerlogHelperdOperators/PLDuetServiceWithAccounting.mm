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
  if (!+[PLUtilities isPowerlogHelperd])
  {
    v5 = +[PLUtilities isPerfPowerMetricd];
    if (dependanciesCopy)
    {
      if (!v5)
      {
        [(PLDuetServiceImpl *)self setDuetService:dependanciesCopy];
        v6 = objc_alloc(MEMORY[0x277D3F270]);
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __56__PLDuetServiceWithAccounting_initOperatorDependancies___block_invoke;
        v20[3] = &unk_279A5BCB8;
        v20[4] = self;
        v7 = [v6 initWithOperator:dependanciesCopy withRegistration:&unk_287148A68 withBlock:v20];
        [(PLDuetServiceImpl *)self setEventListener:v7];

        v8 = objc_alloc(MEMORY[0x277D3F278]);
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __56__PLDuetServiceWithAccounting_initOperatorDependancies___block_invoke_2;
        v19[3] = &unk_279A5BEC8;
        v19[4] = self;
        v9 = [v8 initWithOperator:dependanciesCopy withRegistration:&unk_287148A90 withBlock:v19];
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
        v18[3] = &unk_279A5D448;
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
  v156 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  debugEnabled = [MEMORY[0x277D3F180] debugEnabled];
  if (debugEnabled)
  {
    debugEnabled = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__PLDuetServiceWithAccounting_didReceiveEventWithPayload___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = debugEnabled;
    if (didReceiveEventWithPayload__defaultOnce != -1)
    {
      dispatch_once(&didReceiveEventWithPayload__defaultOnce, block);
    }

    if (didReceiveEventWithPayload__classDebugEnabled == 1)
    {
      payloadCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"payload=%@", payloadCopy];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceWithAccounting didReceiveEventWithPayload:]"];
      [v7 logMessage:payloadCopy fromFile:lastPathComponent fromFunction:v10 fromLineNumber:194];

      v12 = PLLogCommon(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  v13 = PLLogCommon(debugEnabled);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v13, OS_LOG_TYPE_DEFAULT, "┏ PLDuetService didReceiveEventWithPayload start", buf, 2u);
  }

  if (!payloadCopy || ([payloadCopy objectForKeyedSubscript:@"events"], v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
  {
    v115 = PLLogCommon(v14);
    if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
    {
      [PLDuetServiceWithAccounting didReceiveEventWithPayload:];
    }

    goto LABEL_91;
  }

  v16 = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  duetService = [(PLDuetServiceImpl *)self duetService];

  v19 = PLLogCommon(v18);
  v20 = v19;
  if (duetService)
  {
    context = v16;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [payloadCopy objectForKeyedSubscript:@"events"];
      v22 = [v21 count];
      *buf = 67109120;
      LODWORD(v149) = v22;
      _os_log_impl(&dword_25EE51000, v20, OS_LOG_TYPE_DEFAULT, "┃ ┏ PLDuetService didReceiveEventWithPayload processing %d events", buf, 8u);
    }

    v145 = 0u;
    v146 = 0u;
    v143 = 0u;
    v144 = 0u;
    v117 = payloadCopy;
    obj = [payloadCopy objectForKeyedSubscript:@"events"];
    v120 = [obj countByEnumeratingWithState:&v143 objects:v155 count:16];
    if (v120)
    {
      v119 = *v144;
      v123 = *MEMORY[0x277D3F5D8];
      selfCopy = self;
      do
      {
        v23 = 0;
        do
        {
          if (*v144 != v119)
          {
            objc_enumerationMutation(obj);
          }

          v121 = v23;
          v24 = *(*(&v143 + 1) + 8 * v23);
          v25 = objc_opt_new();
          v26 = objc_opt_class();
          v27 = [v24 objectForKeyedSubscript:@"bundleID"];
          v28 = [v26 mapBundleID:v27];
          [v25 setBundleID:v28];

          v29 = [v24 objectForKeyedSubscript:@"processName"];
          [v25 setProcessName:v29];

          v30 = [v24 objectForKeyedSubscript:@"updateType"];
          [v25 setUpdateType:{objc_msgSend(v30, "integerValue")}];

          v31 = [v24 objectForKeyedSubscript:@"childBundleIDToWeight"];
          [v25 setChildBundleIDToWeight:v31];

          v33 = PLLogCommon(v32);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v149 = v25;
            _os_log_debug_impl(&dword_25EE51000, v33, OS_LOG_TYPE_DEBUG, "┃ ┃ ┏ PLDuetService didReceiveEventWithPayload processing event: %@", buf, 0xCu);
          }

          childBundleIDToWeight = [v25 childBundleIDToWeight];
          if (childBundleIDToWeight && (v35 = childBundleIDToWeight, [v25 childBundleIDToWeight], v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v36, "count"), v36, v35, v37))
          {
            v126 = v24;
            bundleID = [v25 bundleID];
            v39 = [bundleID isEqualToString:@"cloudphotod"];

            if (v39)
            {
              v40 = 35;
            }

            else
            {
              v40 = 0;
            }

            dictionary = [MEMORY[0x277CBEB38] dictionary];
            v139 = 0u;
            v140 = 0u;
            v141 = 0u;
            v142 = 0u;
            childBundleIDToWeight2 = [v25 childBundleIDToWeight];
            v43 = [childBundleIDToWeight2 countByEnumeratingWithState:&v139 objects:v154 count:16];
            if (v43)
            {
              v44 = v43;
              v45 = *v140;
              do
              {
                for (i = 0; i != v44; ++i)
                {
                  if (*v140 != v45)
                  {
                    objc_enumerationMutation(childBundleIDToWeight2);
                  }

                  v47 = *(*(&v139 + 1) + 8 * i);
                  childBundleIDToWeight3 = [v25 childBundleIDToWeight];
                  v49 = [childBundleIDToWeight3 objectForKeyedSubscript:v47];
                  v50 = [objc_opt_class() mapBundleID:v47];
                  [dictionary setObject:v49 forKeyedSubscript:v50];
                }

                v44 = [childBundleIDToWeight2 countByEnumeratingWithState:&v139 objects:v154 count:16];
              }

              while (v44);
            }

            [v25 setChildBundleIDToWeight:dictionary];
            v24 = v126;
            self = selfCopy;
          }

          else
          {
            v40 = 0;
          }

          array3 = [MEMORY[0x277CBEB18] array];
          v51 = PLLogCommon(array3);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
          {
            v52 = [v24 objectForKeyedSubscript:@"eventIntervals"];
            v53 = [v52 count];
            *buf = 67109120;
            LODWORD(v149) = v53;
            _os_log_impl(&dword_25EE51000, v51, OS_LOG_TYPE_INFO, "┃ ┃ ┃ ┏ PLDuetService didReceiveEventWithPayload processing %d intervals", buf, 8u);
          }

          v137 = 0u;
          v138 = 0u;
          v135 = 0u;
          v136 = 0u;
          v125 = [v24 objectForKeyedSubscript:@"eventIntervals"];
          v54 = [v125 countByEnumeratingWithState:&v135 objects:v153 count:16];
          if (v54)
          {
            v55 = v54;
            v56 = *v136;
            do
            {
              for (j = 0; j != v55; ++j)
              {
                if (*v136 != v56)
                {
                  objc_enumerationMutation(v125);
                }

                v58 = *(*(&v135 + 1) + 8 * j);
                v59 = objc_opt_new();
                v60 = [v58 objectForKeyedSubscript:@"startDate"];
                convertFromSystemToMonotonic = [v60 convertFromSystemToMonotonic];
                [v59 setStartDate:convertFromSystemToMonotonic];

                v62 = [v58 objectForKeyedSubscript:@"endDate"];
                convertFromSystemToMonotonic2 = [v62 convertFromSystemToMonotonic];
                [v59 setEndDate:convertFromSystemToMonotonic2];

                v64 = PLLogCommon([array3 addObject:v59]);
                if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v149 = v59;
                  _os_log_debug_impl(&dword_25EE51000, v64, OS_LOG_TYPE_DEBUG, "┃ ┃ ┃ ┃ PLDuetService didReceiveEventWithPayload new interval:%@", buf, 0xCu);
                }

                if (v40)
                {
                  mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
                  childBundleIDToWeight4 = [v25 childBundleIDToWeight];
                  startDate = [v59 startDate];
                  endDate = [v59 endDate];
                  [mEMORY[0x277D3F0C0] createDistributionEventIntervalWithDistributionID:v40 withChildNodeNameToWeight:childBundleIDToWeight4 withStartDate:startDate withEndDate:endDate];

                  self = selfCopy;
                }

                duetService2 = [(PLDuetServiceImpl *)self duetService];
                if (duetService2)
                {
                  v70 = duetService2;
                  duetService3 = [(PLDuetServiceImpl *)self duetService];
                  isDebugEnabled = [duetService3 isDebugEnabled];

                  if (isDebugEnabled)
                  {
                    v73 = [(PLOperator *)PLDuetService entryKeyForType:v123 andName:@"DuetEvents"];
                    v74 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v73];
                    bundleID2 = [v25 bundleID];
                    if (bundleID2)
                    {
                      [v25 bundleID];
                    }

                    else
                    {
                      [v25 processName];
                    }
                    v76 = ;
                    [v74 setObject:v76 forKeyedSubscript:@"BundleID"];

                    v77 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v25, "updateType")}];
                    [v74 setObject:v77 forKeyedSubscript:@"UpdateType"];

                    startDate2 = [v59 startDate];
                    [v74 setObject:startDate2 forKeyedSubscript:@"StartDate"];

                    endDate2 = [v59 endDate];
                    [v74 setObject:endDate2 forKeyedSubscript:@"EndDate"];

                    duetService4 = [(PLDuetServiceImpl *)selfCopy duetService];

                    if (duetService4)
                    {
                      duetService5 = [(PLDuetServiceImpl *)selfCopy duetService];
                      [duetService5 logEntry:v74];
                    }

                    self = selfCopy;
                  }
                }
              }

              v55 = [v125 countByEnumeratingWithState:&v135 objects:v153 count:16];
            }

            while (v55);
          }

          v83 = PLLogCommon(v82);
          if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_25EE51000, v83, OS_LOG_TYPE_INFO, "┃ ┃ ┃ ┗ PLDuetService didReceiveEventWithPayload finished processing intervals", buf, 2u);
          }

          [v25 setEventIntervals:array3];
          updateType = [v25 updateType];
          v85 = array;
          if (updateType == 1 || (v86 = [v25 updateType], v85 = array2, v86 == 2))
          {
            [v85 addObject:v25];
          }

          childBundleIDToWeight5 = [v25 childBundleIDToWeight];
          if (childBundleIDToWeight5)
          {
            v88 = childBundleIDToWeight5;
            childBundleIDToWeight6 = [v25 childBundleIDToWeight];
            v90 = [childBundleIDToWeight6 count];

            if (v90)
            {
              v133 = 0u;
              v134 = 0u;
              v131 = 0u;
              v132 = 0u;
              childBundleIDToWeight7 = [v25 childBundleIDToWeight];
              v92 = [childBundleIDToWeight7 countByEnumeratingWithState:&v131 objects:v152 count:16];
              if (v92)
              {
                v93 = v92;
                v94 = *v132;
                do
                {
                  for (k = 0; k != v93; ++k)
                  {
                    if (*v132 != v94)
                    {
                      objc_enumerationMutation(childBundleIDToWeight7);
                    }

                    v96 = *(*(&v131 + 1) + 8 * k);
                    v97 = objc_opt_new();
                    [v97 setBundleID:v96];
                    [v97 setProcessName:v96];
                    [v97 setUpdateType:{objc_msgSend(v25, "updateType")}];
                    eventIntervals = [v25 eventIntervals];
                    [v97 setEventIntervals:eventIntervals];

                    updateType2 = [v97 updateType];
                    v100 = array;
                    if (updateType2 == 1 || (v101 = [v97 updateType], v100 = array2, v101 == 2))
                    {
                      v100 = [v100 addObject:v97];
                    }

                    v102 = PLLogCommon(v100);
                    if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v149 = v96;
                      _os_log_debug_impl(&dword_25EE51000, v102, OS_LOG_TYPE_DEBUG, "┃ ┃ ┃ ╸ PLDuetService didReceiveEventWithPayload childEvent for bundleID:%@", buf, 0xCu);
                    }
                  }

                  v93 = [childBundleIDToWeight7 countByEnumeratingWithState:&v131 objects:v152 count:16];
                }

                while (v93);
              }
            }
          }

          v103 = PLLogCommon(childBundleIDToWeight5);
          if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
          {
            [(PLDuetServiceWithAccounting *)&v129 didReceiveEventWithPayload:v130];
          }

          v23 = v121 + 1;
        }

        while (v121 + 1 != v120);
        v120 = [obj countByEnumeratingWithState:&v143 objects:v155 count:16];
      }

      while (v120);
    }

    v105 = PLLogCommon(v104);
    if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25EE51000, v105, OS_LOG_TYPE_DEFAULT, "┃ ┗ PLDuetService didReceiveEventWithPayload processing events completed", buf, 2u);
    }

    v106 = [(PLDuetServiceWithAccounting *)self eventTransitionsWithEvents:array];
    v107 = [(PLDuetServiceWithAccounting *)self eventTransitionsWithEvents:array2];
    v108 = PLLogCommon([(PLDuetServiceWithAccounting *)self createQualificationEventsWithEventTransitions:v106 withQualificationID:11]);
    payloadCopy = v117;
    if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
    {
      v109 = [v106 count];
      v110 = [array count];
      *buf = 134218240;
      v149 = v109;
      v150 = 2048;
      v151 = v110;
      _os_log_impl(&dword_25EE51000, v108, OS_LOG_TYPE_DEFAULT, "┃ PLDuetService didReceiveEventWithPayload created %lu disc transitions from %lu events", buf, 0x16u);
    }

    v111 = PLLogCommon([(PLDuetServiceWithAccounting *)self createQualificationEventsWithEventTransitions:v107 withQualificationID:12]);
    if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
    {
      v112 = [v107 count];
      v113 = [array2 count];
      *buf = 134218240;
      v149 = v112;
      v150 = 2048;
      v151 = v113;
      _os_log_impl(&dword_25EE51000, v111, OS_LOG_TYPE_DEFAULT, "┃ PLDuetService didReceiveEventWithPayload created %lu comp transitions from %lu events", buf, 0x16u);
    }

    objc_autoreleasePoolPop(context);
    v115 = PLLogCommon(v114);
    if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25EE51000, v115, OS_LOG_TYPE_DEFAULT, "┗ PLDuetService didReceiveEventWithPayload end", buf, 2u);
    }

LABEL_91:

    goto LABEL_92;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [PLDuetServiceWithAccounting didReceiveEventWithPayload:];
  }

  objc_autoreleasePoolPop(v16);
LABEL_92:
}

void *__58__PLDuetServiceWithAccounting_didReceiveEventWithPayload___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  didReceiveEventWithPayload__classDebugEnabled = result;
  return result;
}

- (id)eventTransitionsWithEvents:(id)events
{
  v81 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v4 = PLLogCommon(eventsCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v4, OS_LOG_TYPE_INFO, "┃ ┏ PLDuetService eventTransitionsWithEvents start", buf, 2u);
  }

  array = [MEMORY[0x277CBEB18] array];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = eventsCopy;
  v63 = [obj countByEnumeratingWithState:&v72 objects:v80 count:16];
  if (v63)
  {
    v60 = v71;
    v62 = *v73;
    do
    {
      v6 = 0;
      do
      {
        if (*v73 != v62)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v72 + 1) + 8 * v6);
        debugEnabled = [MEMORY[0x277D3F180] debugEnabled];
        if (debugEnabled)
        {
          debugEnabled = objc_opt_class();
          v70[0] = MEMORY[0x277D85DD0];
          v70[1] = 3221225472;
          v71[0] = __58__PLDuetServiceWithAccounting_eventTransitionsWithEvents___block_invoke;
          v71[1] = &__block_descriptor_40_e5_v8__0lu32l8;
          v71[2] = debugEnabled;
          if (eventTransitionsWithEvents__defaultOnce != -1)
          {
            dispatch_once(&eventTransitionsWithEvents__defaultOnce, v70);
          }

          if (eventTransitionsWithEvents__classDebugEnabled == 1)
          {
            v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"event=%@", v7, v60];
            v10 = MEMORY[0x277D3F178];
            v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
            lastPathComponent = [v11 lastPathComponent];
            v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceWithAccounting eventTransitionsWithEvents:]"];
            [v10 logMessage:v9 fromFile:lastPathComponent fromFunction:v13 fromLineNumber:321];

            v15 = PLLogCommon(v14);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              *v77 = v9;
              _os_log_debug_impl(&dword_25EE51000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        v16 = PLLogCommon(debugEnabled);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *v77 = v7;
          _os_log_debug_impl(&dword_25EE51000, v16, OS_LOG_TYPE_DEBUG, "┃ ┃ ┏ PLDuetService eventTransitionsWithEvents processing event: %@", buf, 0xCu);
        }

        eventIntervals = [v7 eventIntervals];
        v18 = [eventIntervals count];

        if (v18)
        {
          v64 = v6;
          v20 = 0;
          v21 = 0;
          v22 = 0;
          do
          {
            v23 = v21;
            eventIntervals2 = [v7 eventIntervals];
            v21 = [eventIntervals2 objectAtIndex:v20];

            v26 = PLLogCommon(v25);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              *v77 = v21;
              _os_log_debug_impl(&dword_25EE51000, v26, OS_LOG_TYPE_DEBUG, "┃ ┃ ┃ ┏ PLDuetService eventTransitionsWithEvents processing interval: %@", buf, 0xCu);
            }

            LODWORD(v27) = v22 + 1;
            eventIntervals3 = [v7 eventIntervals];
            if ([eventIntervals3 count] <= (v22 + 1))
            {
LABEL_28:
            }

            else
            {
              v27 = v27;
              while (1)
              {
                eventIntervals4 = [v7 eventIntervals];
                v30 = [eventIntervals4 objectAtIndex:v27];
                v31 = [v21 intersects:v30];

                if (!v31)
                {
                  break;
                }

                eventIntervals5 = [v7 eventIntervals];
                v33 = [eventIntervals5 objectAtIndex:v27];
                v34 = [v21 joinWithInterval:v33];

                v36 = PLLogCommon(v35);
                if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 67109634;
                  *v77 = v22;
                  *&v77[4] = 1024;
                  *&v77[6] = v27;
                  v78 = 2112;
                  v79 = v34;
                  _os_log_debug_impl(&dword_25EE51000, v36, OS_LOG_TYPE_DEBUG, "┃ ┃ ┃ ┃ PLDuetService eventTransitionsWithEvents Joining intervals %d-%d, active interval updated: %@", buf, 0x18u);
                }

                v22 = v27;

                ++v27;
                eventIntervals3 = [v7 eventIntervals];
                v21 = v34;
                if ([eventIntervals3 count] <= v27)
                {
                  v21 = v34;
                  goto LABEL_28;
                }
              }
            }

            v22 = v27;
            if ([MEMORY[0x277D3F180] debugEnabled])
            {
              v37 = objc_opt_class();
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __58__PLDuetServiceWithAccounting_eventTransitionsWithEvents___block_invoke_171;
              block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              block[4] = v37;
              if (eventTransitionsWithEvents__defaultOnce_169 != -1)
              {
                dispatch_once(&eventTransitionsWithEvents__defaultOnce_169, block);
              }

              if (eventTransitionsWithEvents__classDebugEnabled_170 == 1)
              {
                v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"eventInterval=%@", v21];
                v39 = MEMORY[0x277D3F178];
                v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
                lastPathComponent2 = [v40 lastPathComponent];
                v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceWithAccounting eventTransitionsWithEvents:]"];
                [v39 logMessage:v38 fromFile:lastPathComponent2 fromFunction:v42 fromLineNumber:338];

                v44 = PLLogCommon(v43);
                if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  *v77 = v38;
                  _os_log_debug_impl(&dword_25EE51000, v44, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }
              }
            }

            v45 = objc_opt_new();
            startDate = [v21 startDate];
            [v45 setDate:startDate];

            bundleID = [v7 bundleID];
            [v45 setBundleID:bundleID];

            [v45 setIsStart:1];
            v48 = PLLogCommon([array addObject:v45]);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *v77 = v45;
              _os_log_impl(&dword_25EE51000, v48, OS_LOG_TYPE_INFO, "┃ ┃ ┃ ┃ PLDuetService eventTransitionsWithEvents created start transition: %@", buf, 0xCu);
            }

            v49 = objc_opt_new();
            endDate = [v21 endDate];
            [v49 setDate:endDate];

            bundleID2 = [v7 bundleID];
            [v49 setBundleID:bundleID2];

            [v49 setIsStart:0];
            v52 = PLLogCommon([array addObject:v49]);
            if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *v77 = v49;
              _os_log_impl(&dword_25EE51000, v52, OS_LOG_TYPE_INFO, "┃ ┃ ┃ ┃ PLDuetService eventTransitionsWithEvents created end transition: %@", buf, 0xCu);
            }

            v54 = PLLogCommon(v53);
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
            {
              [(PLDuetServiceWithAccounting *)&v67 eventTransitionsWithEvents:v68];
            }

            v20 = v22;
            eventIntervals6 = [v7 eventIntervals];
            v56 = [eventIntervals6 count];
          }

          while (v56 > v22);

          v6 = v64;
        }

        v57 = PLLogCommon(v19);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
        {
          [(PLDuetServiceWithAccounting *)&v65 eventTransitionsWithEvents:v66];
        }

        ++v6;
      }

      while (v6 != v63);
      v63 = [obj countByEnumeratingWithState:&v72 objects:v80 count:16];
    }

    while (v63);
  }

  v58 = PLLogCommon([array sortUsingComparator:&__block_literal_global_20]);
  if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v58, OS_LOG_TYPE_INFO, "┃ ┗ PLDuetService eventTransitionsWithEvents end", buf, 2u);
  }

  return array;
}

void *__58__PLDuetServiceWithAccounting_eventTransitionsWithEvents___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  eventTransitionsWithEvents__classDebugEnabled = result;
  return result;
}

void *__58__PLDuetServiceWithAccounting_eventTransitionsWithEvents___block_invoke_171(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  eventTransitionsWithEvents__classDebugEnabled_170 = result;
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
  v72 = *MEMORY[0x277D85DE8];
  transitionsCopy = transitions;
  v5 = PLLogCommon(transitionsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v5, OS_LOG_TYPE_INFO, "┃ ┏ PLDuetService createQualificationEventsWithEventTransitions start", buf, 2u);
  }

  firstObject = [transitionsCopy firstObject];
  v7 = [MEMORY[0x277CBEB58] set];
  v8 = PLLogCommon(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [transitionsCopy count];
    *buf = 67109120;
    LODWORD(v66) = v9;
    _os_log_impl(&dword_25EE51000, v8, OS_LOG_TYPE_INFO, "┃ ┃ ┏ PLDuetService createQualificationEventsWithEventTransitions processing %d transitions", buf, 8u);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = transitionsCopy;
  v10 = [obj countByEnumeratingWithState:&v61 objects:v71 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v59 = *v62;
    v13 = *MEMORY[0x277D3F118];
    v56 = v7;
    do
    {
      v14 = 0;
      do
      {
        if (*v62 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v61 + 1) + 8 * v14);
        debugEnabled = [MEMORY[0x277D3F180] debugEnabled];
        if (debugEnabled)
        {
          debugEnabled = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __97__PLDuetServiceWithAccounting_createQualificationEventsWithEventTransitions_withQualificationID___block_invoke;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = debugEnabled;
          if (createQualificationEventsWithEventTransitions_withQualificationID__defaultOnce != -1)
          {
            dispatch_once(&createQualificationEventsWithEventTransitions_withQualificationID__defaultOnce, block);
          }

          if (createQualificationEventsWithEventTransitions_withQualificationID__classDebugEnabled == 1)
          {
            v17 = v11;
            v18 = v12;
            v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"lastEventTransition=%@, eventTransition=%@", firstObject, v15];
            v20 = MEMORY[0x277D3F178];
            v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
            lastPathComponent = [v21 lastPathComponent];
            v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceWithAccounting createQualificationEventsWithEventTransitions:withQualificationID:]"];
            [v20 logMessage:v19 fromFile:lastPathComponent fromFunction:v23 fromLineNumber:375];

            v25 = PLLogCommon(v24);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v66 = v19;
              _os_log_debug_impl(&dword_25EE51000, v25, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v12 = v18;
            v11 = v17;
            v7 = v56;
          }
        }

        v26 = PLLogCommon(debugEnabled);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v66 = v15;
          _os_log_debug_impl(&dword_25EE51000, v26, OS_LOG_TYPE_DEBUG, "┃ ┃ ┃ PLDuetService createQualificationEventsWithEventTransitions current transition:%@", buf, 0xCu);
        }

        v28 = PLLogCommon(v27);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v66 = v7;
          _os_log_debug_impl(&dword_25EE51000, v28, OS_LOG_TYPE_DEBUG, "┃ ┃ ┃ PLDuetService createQualificationEventsWithEventTransitions current eventElements:%@", buf, 0xCu);
        }

        date = [v15 date];
        date2 = [firstObject date];
        [date timeIntervalSinceDate:date2];
        v32 = v31;

        if (v32 > v13)
        {
          mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
          allObjects = [v7 allObjects];
          date3 = [firstObject date];
          date4 = [v15 date];
          [mEMORY[0x277D3F0C0] createQualificationEventIntervalWithQualificationID:d withChildNodeNames:allObjects withStartDate:date3 withEndDate:date4];

          v38 = PLLogCommon(v37);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            date5 = [firstObject date];
            [date5 timeIntervalSince1970];
            v44 = v43;
            date6 = [v15 date];
            [date6 timeIntervalSince1970];
            v47 = v46;
            date7 = [v15 date];
            [firstObject date];
            v49 = v11;
            v12 = v50 = v12;
            [date7 timeIntervalSinceDate:v12];
            *buf = 134218496;
            v66 = v44;
            v67 = 2048;
            v68 = v47;
            v69 = 2048;
            v70 = v51;
            _os_log_debug_impl(&dword_25EE51000, v38, OS_LOG_TYPE_DEBUG, "┃ ┃ ┃ PLDuetService createQualificationEventsWithEventTransitions created event with startDate:%f, endDate:%f, timeRange=%f seconds", buf, 0x20u);

            LODWORD(v12) = v50;
            v11 = v49;
            v7 = v56;
          }

          v39 = v15;
          v12 = (v12 + 1);
          firstObject = v39;
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
      v11 = [obj countByEnumeratingWithState:&v61 objects:v71 count:16];
    }

    while (v11);
  }

  else
  {
    LODWORD(v12) = 0;
  }

  v53 = PLLogCommon(v52);
  if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v66) = v12;
    _os_log_impl(&dword_25EE51000, v53, OS_LOG_TYPE_INFO, "┃ ┃ ┗ PLDuetService createQualificationEventsWithEventTransitions Created %d qualification events", buf, 8u);
  }

  v55 = PLLogCommon(v54);
  if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v55, OS_LOG_TYPE_INFO, "┃ ┗ PLDuetService createQualificationEventsWithEventTransitions end", buf, 2u);
  }
}

void *__97__PLDuetServiceWithAccounting_createQualificationEventsWithEventTransitions_withQualificationID___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  createQualificationEventsWithEventTransitions_withQualificationID__classDebugEnabled = result;
  return result;
}

- (id)energyResponse
{
  v44[2] = *MEMORY[0x277D85DE8];
  v3 = PLLogCommon(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v3, OS_LOG_TYPE_DEFAULT, "┏ PLDuetService energyResponse start", buf, 2u);
  }

  duetService = [(PLDuetServiceImpl *)self duetService];

  if (duetService)
  {
    v6 = [(PLDuetServiceWithAccounting *)self energyResponseWithQualificationID:11];
    v7 = PLLogCommon(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 count];
      *buf = 67109120;
      LODWORD(v42) = v8;
      _os_log_impl(&dword_25EE51000, v7, OS_LOG_TYPE_DEFAULT, "┃ PLDuetService discretionaryCumulativeEnergies count: %d", buf, 8u);
    }

    v9 = [(PLDuetServiceWithAccounting *)self energyResponseWithQualificationID:12];
    v10 = PLLogCommon(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v9 count];
      *buf = 67109120;
      LODWORD(v42) = v11;
      _os_log_impl(&dword_25EE51000, v10, OS_LOG_TYPE_DEFAULT, "┃ PLDuetService complicationCumulativeEnergies count: %d", buf, 8u);
    }

    v12 = [MEMORY[0x277CBEB18] arrayWithArray:v6];
    [v12 addObjectsFromArray:v9];
    v43[0] = @"BLMEnergyForDuet";
    v43[1] = @"BLMUUIDForDuet";
    v44[0] = v12;
    duetService2 = [(PLDuetServiceImpl *)self duetService];
    v14 = objc_msgSend_storage(duetService2);
    uuid = [v14 uuid];
    v44[1] = uuid;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];

    mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
    getLastQualifiedEnergyEventDate = [mEMORY[0x277D3F0C0] getLastQualifiedEnergyEventDate];

    v20 = PLLogCommon(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [PLDuetServiceWithAccounting energyResponse];
    }

    if (getLastQualifiedEnergyEventDate)
    {
      convertFromMonotonicToSystem = [getLastQualifiedEnergyEventDate convertFromMonotonicToSystem];
      v22 = PLLogCommon(convertFromMonotonicToSystem);
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
LABEL_25:

        v40[0] = v12;
        v33 = [(PLDuetServiceImpl *)self duetService:@"BLMEnergyForDuet"];
        v34 = objc_msgSend_storage(v33);
        uuid2 = [v34 uuid];
        v39[2] = @"BLMEnergyResponseTimestamp";
        v40[1] = uuid2;
        v40[2] = convertFromMonotonicToSystem;
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:3];

        v37 = PLLogCommon(v36);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25EE51000, v37, OS_LOG_TYPE_DEFAULT, "┗ PLDuetService energyResponse created", buf, 2u);
        }

        goto LABEL_28;
      }

      *buf = 138412290;
      v42 = convertFromMonotonicToSystem;
      v23 = "After converting to system time, energyResponseTimestamp=%@";
    }

    else
    {
      mEMORY[0x277D3F140] = [MEMORY[0x277D3F140] sharedInstance];
      v26 = [mEMORY[0x277D3F140] lastCompletedDateWithIdentifier:@"PLDuetService_duetEnergyAccumulator"];
      v27 = [v26 dateByAddingTimeInterval:-3600.0];

      v29 = PLLogCommon(v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v42 = v27;
        _os_log_impl(&dword_25EE51000, v29, OS_LOG_TYPE_INFO, "lastAccumulatedDate=%@", buf, 0xCu);
      }

      convertFromMonotonicToSystem = [v27 convertFromMonotonicToSystem];

      v31 = PLLogCommon(v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v42 = convertFromMonotonicToSystem;
        _os_log_impl(&dword_25EE51000, v31, OS_LOG_TYPE_INFO, "After converting to system time, lastAccumulatedDate=%@", buf, 0xCu);
      }

      if (!convertFromMonotonicToSystem)
      {
        distantPast = [MEMORY[0x277CBEAA8] distantPast];
        convertFromMonotonicToSystem = distantPast;
      }

      v22 = PLLogCommon(distantPast);
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        goto LABEL_25;
      }

      *buf = 138412290;
      v42 = convertFromMonotonicToSystem;
      v23 = "energyResponse timestamp is lastAccumulatedDate=%@";
    }

    _os_log_impl(&dword_25EE51000, v22, OS_LOG_TYPE_INFO, v23, buf, 0xCu);
    goto LABEL_25;
  }

  v6 = PLLogCommon(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [PLDuetServiceWithAccounting energyResponse];
  }

  v24 = MEMORY[0x277CBEC10];
LABEL_28:

  return v24;
}

- (id)energyResponseWithQualificationID:(int)d
{
  v3 = *&d;
  v169[1] = *MEMORY[0x277D85DE8];
  v5 = PLLogCommon(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v5, OS_LOG_TYPE_INFO, "┃ ┏ PLDuetService energyResponseWithQualificationID start", buf, 2u);
  }

  duetService = [(PLDuetServiceImpl *)self duetService];

  if (!duetService)
  {
    v17 = PLLogCommon(v7);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [PLDuetServiceWithAccounting energyResponseWithQualificationID:];
    }

    goto LABEL_79;
  }

  debugEnabled = [MEMORY[0x277D3F180] debugEnabled];
  if (debugEnabled)
  {
    debugEnabled = objc_opt_class();
    v156[0] = MEMORY[0x277D85DD0];
    v156[1] = 3221225472;
    v156[2] = __65__PLDuetServiceWithAccounting_energyResponseWithQualificationID___block_invoke;
    v156[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v156[4] = debugEnabled;
    if (energyResponseWithQualificationID__defaultOnce != -1)
    {
      dispatch_once(&energyResponseWithQualificationID__defaultOnce, v156);
    }

    if (energyResponseWithQualificationID__classDebugEnabled == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"qualificationID=%i", v3];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceWithAccounting energyResponseWithQualificationID:]"];
      [v10 logMessage:v9 fromFile:lastPathComponent fromFunction:v13 fromLineNumber:457];

      v15 = PLLogCommon(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  if (v3 == 11)
  {
    v16 = 1;
    goto LABEL_17;
  }

  if (v3 != 12)
  {
    v17 = PLLogCommon(debugEnabled);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [PLDuetServiceWithAccounting energyResponseWithQualificationID:v17];
    }

LABEL_79:
    array = 0;
    goto LABEL_86;
  }

  v16 = 2;
LABEL_17:
  v137 = v16;
  v18 = PLLogCommon(debugEnabled);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v158) = v137;
    _os_log_impl(&dword_25EE51000, v18, OS_LOG_TYPE_DEFAULT, "┃ ┃ PLDuetService energyResponseWithQualificationID: updateType %d", buf, 8u);
  }

  duetService2 = [(PLDuetServiceImpl *)self duetService];
  v20 = objc_opt_class();
  v21 = *MEMORY[0x277D3F5B8];
  v22 = [v20 entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"DuetEnergyAccumulator"];

  v23 = objc_alloc(MEMORY[0x277D3F260]);
  v24 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  v25 = [v23 initWithKey:@"QualificationID" withValue:v24 withComparisonOperation:0];

  selfCopy = self;
  duetService3 = [(PLDuetServiceImpl *)self duetService];
  v27 = objc_msgSend_storage(duetService3);
  v138 = v25;
  v169[0] = v25;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v169 count:1];
  v131 = v22;
  v29 = [v27 entriesForKey:v22 withComparisons:v28];

  debugEnabled2 = [MEMORY[0x277D3F180] debugEnabled];
  if (debugEnabled2)
  {
    debugEnabled2 = objc_opt_class();
    v155[0] = MEMORY[0x277D85DD0];
    v155[1] = 3221225472;
    v155[2] = __65__PLDuetServiceWithAccounting_energyResponseWithQualificationID___block_invoke_205;
    v155[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v155[4] = debugEnabled2;
    if (energyResponseWithQualificationID__defaultOnce_203 != -1)
    {
      dispatch_once(&energyResponseWithQualificationID__defaultOnce_203, v155);
    }

    if (energyResponseWithQualificationID__classDebugEnabled_204 == 1)
    {
      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"accumulatorEntries=%@", v29];
      v32 = MEMORY[0x277D3F178];
      v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
      lastPathComponent2 = [v33 lastPathComponent];
      v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceWithAccounting energyResponseWithQualificationID:]"];
      [v32 logMessage:v31 fromFile:lastPathComponent2 fromFunction:v35 fromLineNumber:481];

      v37 = PLLogCommon(v36);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  v38 = PLLogCommon(debugEnabled2);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    v39 = [v29 count];
    *buf = 67109120;
    LODWORD(v158) = v39;
    _os_log_impl(&dword_25EE51000, v38, OS_LOG_TYPE_INFO, "┃ ┃ PLDuetService energyResponseWithQualificationID accumulatorEntries count: %d", buf, 8u);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  obj = v29;
  v41 = [obj countByEnumeratingWithState:&v151 objects:v168 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v152;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v152 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v45 = *(*(&v151 + 1) + 8 * i);
        v46 = [v45 objectForKeyedSubscript:@"Energy"];
        v47 = [v45 objectForKeyedSubscript:@"BundleID"];
        [dictionary setObject:v46 forKeyedSubscript:v47];
      }

      v42 = [obj countByEnumeratingWithState:&v151 objects:v168 count:16];
    }

    while (v42);
  }

  v48 = [MEMORY[0x277D3F128] entryKeyForType:v21 andName:*MEMORY[0x277D3F2F0]];
  mEMORY[0x277D3F140] = [MEMORY[0x277D3F140] sharedInstance];
  v50 = [mEMORY[0x277D3F140] lastCompletedDateWithIdentifier:@"PLDuetService_duetEnergyAccumulator"];
  distantPast = [v50 dateByAddingTimeInterval:-3600.0];

  if (!distantPast)
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
  }

  v129 = distantPast;
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
  v139 = *MEMORY[0x277D3F300];
  v61 = [v60 initWithKey:? withValue:? withComparisonOperation:?];
  duetService4 = [(PLDuetServiceImpl *)selfCopy duetService];
  v63 = objc_msgSend_storage(duetService4);
  v127 = v59;
  v128 = v55;
  v167[0] = v55;
  v167[1] = v59;
  v126 = v61;
  v167[2] = v61;
  v64 = [MEMORY[0x277CBEA60] arrayWithObjects:v167 count:3];
  v65 = [v63 entriesForKey:v48 withComparisons:v64];

  v66 = 0x277D3F000uLL;
  debugEnabled3 = [MEMORY[0x277D3F180] debugEnabled];
  if (debugEnabled3)
  {
    debugEnabled3 = objc_opt_class();
    v150[0] = MEMORY[0x277D85DD0];
    v150[1] = 3221225472;
    v150[2] = __65__PLDuetServiceWithAccounting_energyResponseWithQualificationID___block_invoke_221;
    v150[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v150[4] = debugEnabled3;
    if (energyResponseWithQualificationID__defaultOnce_219 != -1)
    {
      dispatch_once(&energyResponseWithQualificationID__defaultOnce_219, v150);
    }

    if (energyResponseWithQualificationID__classDebugEnabled_220 == 1)
    {
      v68 = [MEMORY[0x277CCACA8] stringWithFormat:@"aggregateQualificationEnergyEntries=%@", v65];
      v69 = MEMORY[0x277D3F178];
      v70 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
      lastPathComponent3 = [v70 lastPathComponent];
      v72 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceWithAccounting energyResponseWithQualificationID:]"];
      [v69 logMessage:v68 fromFile:lastPathComponent3 fromFunction:v72 fromLineNumber:514];

      v74 = PLLogCommon(v73);
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }

      v66 = 0x277D3F000uLL;
    }
  }

  v130 = v48;
  v75 = PLLogCommon(debugEnabled3);
  if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
  {
    v76 = [v65 count];
    *buf = 67109120;
    LODWORD(v158) = v76;
    _os_log_impl(&dword_25EE51000, v75, OS_LOG_TYPE_INFO, "┃ ┃ PLDuetService energyResponseWithQualificationID aggregateQualificationEnergyEntries count: %d", buf, 8u);
  }

  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  v133 = v65;
  v77 = [v133 countByEnumeratingWithState:&v146 objects:v166 count:16];
  if (v77)
  {
    v78 = v77;
    v136 = *v147;
    v135 = *MEMORY[0x277D3F2F8];
    do
    {
      v79 = 0;
      do
      {
        if (*v147 != v136)
        {
          objc_enumerationMutation(v133);
        }

        v80 = *(*(&v146 + 1) + 8 * v79);
        mEMORY[0x277D3F0D0] = [MEMORY[0x277D3F0D0] sharedInstance];
        v82 = [v80 objectForKeyedSubscript:v139];
        v83 = [mEMORY[0x277D3F0D0] nodeNameForNodeID:v82];

        if ([*(v66 + 384) debugEnabled])
        {
          v84 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __65__PLDuetServiceWithAccounting_energyResponseWithQualificationID___block_invoke_228;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v84;
          if (energyResponseWithQualificationID__defaultOnce_226 != -1)
          {
            dispatch_once(&energyResponseWithQualificationID__defaultOnce_226, block);
          }

          if (energyResponseWithQualificationID__classDebugEnabled_227 == 1)
          {
            v85 = [MEMORY[0x277CCACA8] stringWithFormat:@"bundleID=%@", v83];
            v86 = MEMORY[0x277D3F178];
            v87 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
            lastPathComponent4 = [v87 lastPathComponent];
            v89 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceWithAccounting energyResponseWithQualificationID:]"];
            [v86 logMessage:v85 fromFile:lastPathComponent4 fromFunction:v89 fromLineNumber:521];

            v91 = PLLogCommon(v90);
            if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v158 = v85;
              _os_log_debug_impl(&dword_25EE51000, v91, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v66 = 0x277D3F000;
          }
        }

        if (v83)
        {
          v92 = [v80 objectForKeyedSubscript:v135];
          [v92 doubleValue];
          v94 = v93 / 1000.0;

          v95 = fmin(v94, 10000.0);
          v96 = [dictionary objectForKeyedSubscript:v83];

          v97 = MEMORY[0x277CCABB0];
          if (v96)
          {
            v98 = [dictionary objectForKeyedSubscript:v83];
            [v98 doubleValue];
            v100 = [v97 numberWithDouble:v95 + v99];
            [dictionary setObject:v100 forKeyedSubscript:v83];
          }

          else
          {
            v98 = [MEMORY[0x277CCABB0] numberWithDouble:v95];
            [dictionary setObject:v98 forKeyedSubscript:v83];
          }
        }

        ++v79;
      }

      while (v78 != v79);
      v78 = [v133 countByEnumeratingWithState:&v146 objects:v166 count:16];
    }

    while (v78);
  }

  array = [MEMORY[0x277CBEB18] array];
  v101 = PLLogCommon(array);
  if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v101, OS_LOG_TYPE_INFO, "┃ ┃ ┏ PLDuetService energyResponseWithQualificationID cumulativeEnergies", buf, 2u);
  }

  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v102 = dictionary;
  v103 = [v102 countByEnumeratingWithState:&v141 objects:v165 count:16];
  if (v103)
  {
    v104 = v103;
    v105 = *v142;
    v106 = 0.0;
    do
    {
      for (j = 0; j != v104; ++j)
      {
        if (*v142 != v105)
        {
          objc_enumerationMutation(v102);
        }

        v164[0] = *(*(&v141 + 1) + 8 * j);
        v108 = v164[0];
        v163[0] = @"bundleID";
        v163[1] = @"updateType";
        v109 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v137];
        v164[1] = v109;
        v163[2] = @"energy";
        v110 = [v102 objectForKeyedSubscript:v108];
        v164[2] = v110;
        v111 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v164 forKeys:v163 count:3];
        [array addObject:v111];

        v112 = [v102 objectForKeyedSubscript:v108];
        [v112 doubleValue];
        v114 = v113;

        v116 = PLLogCommon(v115);
        if (os_log_type_enabled(v116, OS_LOG_TYPE_INFO))
        {
          v117 = [v102 objectForKeyedSubscript:v108];
          [v117 doubleValue];
          *buf = 138412546;
          v158 = v108;
          v159 = 2048;
          v160 = v118;
          _os_log_impl(&dword_25EE51000, v116, OS_LOG_TYPE_INFO, "┃ ┃ ┃ PLDuetService energyResponseWithQualificationID cumulativeEnergies %@: %f", buf, 0x16u);
        }

        v106 = v106 + v114;
      }

      v104 = [v102 countByEnumeratingWithState:&v141 objects:v165 count:16];
    }

    while (v104);
  }

  else
  {
    v106 = 0.0;
  }

  v120 = PLLogCommon(v119);
  if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
  {
    v121 = [array count];
    [v129 timeIntervalSince1970];
    *buf = 134218496;
    v158 = v121;
    v159 = 2048;
    v160 = v106;
    v161 = 2048;
    v162 = v122;
    _os_log_impl(&dword_25EE51000, v120, OS_LOG_TYPE_DEFAULT, "┃ ┃ ┗ PLDuetService energyResponseWithQualificationID cumulativeEnergies %lu items with %f since %f", buf, 0x20u);
  }

  v124 = PLLogCommon(v123);
  if (os_log_type_enabled(v124, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v124, OS_LOG_TYPE_INFO, "┃ ┗ PLDuetService energyResponseWithQualificationID created", buf, 2u);
  }

  v17 = v131;
LABEL_86:

  return array;
}

void *__65__PLDuetServiceWithAccounting_energyResponseWithQualificationID___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  energyResponseWithQualificationID__classDebugEnabled = result;
  return result;
}

void *__65__PLDuetServiceWithAccounting_energyResponseWithQualificationID___block_invoke_205(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  energyResponseWithQualificationID__classDebugEnabled_204 = result;
  return result;
}

void *__65__PLDuetServiceWithAccounting_energyResponseWithQualificationID___block_invoke_221(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  energyResponseWithQualificationID__classDebugEnabled_220 = result;
  return result;
}

void *__65__PLDuetServiceWithAccounting_energyResponseWithQualificationID___block_invoke_228(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  energyResponseWithQualificationID__classDebugEnabled_227 = result;
  return result;
}

- (void)accumulateWithLastCompletedDate:(id)date withNow:(id)now
{
  dateCopy = date;
  nowCopy = now;
  debugEnabled = [MEMORY[0x277D3F180] debugEnabled];
  if (debugEnabled)
  {
    debugEnabled = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__PLDuetServiceWithAccounting_accumulateWithLastCompletedDate_withNow___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = debugEnabled;
    if (accumulateWithLastCompletedDate_withNow__defaultOnce != -1)
    {
      dispatch_once(&accumulateWithLastCompletedDate_withNow__defaultOnce, block);
    }

    if (accumulateWithLastCompletedDate_withNow__classDebugEnabled == 1)
    {
      nowCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"lastCompletedDate=%@, now=%@", dateCopy, nowCopy];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceWithAccounting accumulateWithLastCompletedDate:withNow:]"];
      [v10 logMessage:nowCopy fromFile:lastPathComponent fromFunction:v13 fromLineNumber:554];

      v15 = PLLogCommon(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  v16 = PLLogCommon(debugEnabled);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [PLDuetServiceWithAccounting accumulateWithLastCompletedDate:dateCopy withNow:nowCopy];
  }

  [(PLDuetServiceWithAccounting *)self accumulateWithLastCompletedDate:dateCopy withNow:nowCopy withQualificationID:11];
  v17 = PLLogCommon([(PLDuetServiceWithAccounting *)self accumulateWithLastCompletedDate:dateCopy withNow:nowCopy withQualificationID:12]);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [PLDuetServiceWithAccounting accumulateWithLastCompletedDate:withNow:];
  }
}

void *__71__PLDuetServiceWithAccounting_accumulateWithLastCompletedDate_withNow___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  accumulateWithLastCompletedDate_withNow__classDebugEnabled = result;
  return result;
}

- (void)accumulateWithLastCompletedDate:(id)date withNow:(id)now withQualificationID:(int)d
{
  v128[4] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  nowCopy = now;
  v9 = PLLogCommon(nowCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [PLDuetServiceWithAccounting accumulateWithLastCompletedDate:withNow:withQualificationID:];
  }

  duetService = [(PLDuetServiceImpl *)self duetService];

  if (duetService)
  {
    selfCopy = self;
    v11 = *MEMORY[0x277D3F5B8];
    v12 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5B8] andName:*MEMORY[0x277D3F2F0]];
    distantPast = [dateCopy dateByAddingTimeInterval:-3600.0];
    v14 = distantPast;
    if (!distantPast)
    {
      v15 = PLLogCommon(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [PLDuetServiceWithAccounting accumulateWithLastCompletedDate:withNow:withQualificationID:];
      }

      distantPast = [MEMORY[0x277CBEAA8] distantPast];
      v14 = distantPast;
    }

    v16 = PLLogCommon(distantPast);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [PLDuetServiceWithAccounting accumulateWithLastCompletedDate:v14 withNow:? withQualificationID:?];
    }

    v97 = dateCopy;

    v17 = [nowCopy dateByAddingTimeInterval:-3600.0];
    v18 = PLLogCommon(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [PLDuetServiceWithAccounting accumulateWithLastCompletedDate:v17 withNow:? withQualificationID:?];
    }

    v19 = objc_alloc(MEMORY[0x277D3F260]);
    v20 = MEMORY[0x277CCABB0];
    v95 = v14;
    [v14 timeIntervalSince1970];
    v21 = [v20 numberWithDouble:?];
    v22 = [v19 initWithKey:@"timestamp" withValue:v21 withComparisonOperation:2];

    v23 = objc_alloc(MEMORY[0x277D3F260]);
    v24 = MEMORY[0x277CCABB0];
    v94 = v17;
    [v17 timeIntervalSince1970];
    v25 = [v24 numberWithDouble:?];
    v26 = [v23 initWithKey:@"timestamp" withValue:v25 withComparisonOperation:4];

    v27 = objc_alloc(MEMORY[0x277D3F260]);
    v28 = *MEMORY[0x277D3F308];
    v29 = [MEMORY[0x277CCABB0] numberWithInt:d];
    v30 = [v27 initWithKey:v28 withValue:v29 withComparisonOperation:0];

    v31 = objc_alloc(MEMORY[0x277D3F260]);
    v107 = *MEMORY[0x277D3F300];
    v32 = [v31 initWithKey:? withValue:? withComparisonOperation:?];
    duetService2 = [(PLDuetServiceImpl *)selfCopy duetService];
    v34 = objc_msgSend_storage(duetService2);
    v92 = v26;
    v93 = v22;
    v128[0] = v22;
    v128[1] = v26;
    v90 = v32;
    v91 = v30;
    v128[2] = v30;
    v128[3] = v32;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v128 count:4];
    v96 = v12;
    v36 = [v34 entriesForKey:v12 withComparisons:v35];

    debugEnabled = [MEMORY[0x277D3F180] debugEnabled];
    v98 = nowCopy;
    if (debugEnabled)
    {
      debugEnabled = objc_opt_class();
      v117[0] = MEMORY[0x277D85DD0];
      v117[1] = 3221225472;
      v117[2] = __91__PLDuetServiceWithAccounting_accumulateWithLastCompletedDate_withNow_withQualificationID___block_invoke;
      v117[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v117[4] = debugEnabled;
      if (accumulateWithLastCompletedDate_withNow_withQualificationID__defaultOnce != -1)
      {
        dispatch_once(&accumulateWithLastCompletedDate_withNow_withQualificationID__defaultOnce, v117);
      }

      if (accumulateWithLastCompletedDate_withNow_withQualificationID__classDebugEnabled == 1)
      {
        v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"aggregateQualificationEnergyEntries=%@", v36];
        v39 = MEMORY[0x277D3F178];
        v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
        lastPathComponent = [v40 lastPathComponent];
        v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceWithAccounting accumulateWithLastCompletedDate:withNow:withQualificationID:]"];
        [v39 logMessage:v38 fromFile:lastPathComponent fromFunction:v42 fromLineNumber:603];

        v44 = PLLogCommon(v43);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    v45 = PLLogCommon(debugEnabled);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      [PLDuetServiceWithAccounting accumulateWithLastCompletedDate:v36 withNow:? withQualificationID:?];
    }

    duetService3 = [(PLDuetServiceImpl *)selfCopy duetService];
    v47 = [objc_opt_class() entryKeyForType:v11 andName:@"DuetEnergyAccumulator"];

    duetService4 = [(PLDuetServiceImpl *)selfCopy duetService];
    v49 = objc_msgSend_storage(duetService4);
    v106 = v47;
    v50 = [v49 entriesForKey:v47];

    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    obj = v50;
    v51 = [obj countByEnumeratingWithState:&v113 objects:v127 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v114;
      do
      {
        v54 = 0;
        do
        {
          if (*v114 != v53)
          {
            objc_enumerationMutation(obj);
          }

          v55 = *(*(&v113 + 1) + 8 * v54);
          v56 = PLLogCommon(v51);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v121 = v55;
            _os_log_debug_impl(&dword_25EE51000, v56, OS_LOG_TYPE_DEBUG, "┃ ┃ ╸ PLDuetService accumulateWithLastCompletedDate existing entry:%@", buf, 0xCu);
          }

          ++v54;
        }

        while (v52 != v54);
        v51 = [obj countByEnumeratingWithState:&v113 objects:v127 count:16];
        v52 = v51;
      }

      while (v51);
    }

    array = [MEMORY[0x277CBEB18] array];
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v100 = v36;
    v57 = [v100 countByEnumeratingWithState:&v109 objects:v126 count:16];
    nowCopy = v98;
    v58 = selfCopy;
    if (v57)
    {
      v59 = v57;
      v105 = *v110;
      v102 = *MEMORY[0x277D3F2F8];
      do
      {
        v60 = 0;
        do
        {
          if (*v110 != v105)
          {
            objc_enumerationMutation(v100);
          }

          v61 = *(*(&v109 + 1) + 8 * v60);
          v62 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v106 withDate:nowCopy];
          mEMORY[0x277D3F0D0] = [MEMORY[0x277D3F0D0] sharedInstance];
          v64 = [v61 objectForKeyedSubscript:v107];
          v65 = [mEMORY[0x277D3F0D0] nodeNameForNodeID:v64];

          debugEnabled2 = [MEMORY[0x277D3F180] debugEnabled];
          if (debugEnabled2)
          {
            debugEnabled2 = objc_opt_class();
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __91__PLDuetServiceWithAccounting_accumulateWithLastCompletedDate_withNow_withQualificationID___block_invoke_240;
            block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            block[4] = debugEnabled2;
            if (accumulateWithLastCompletedDate_withNow_withQualificationID__defaultOnce_238 != -1)
            {
              dispatch_once(&accumulateWithLastCompletedDate_withNow_withQualificationID__defaultOnce_238, block);
            }

            if (accumulateWithLastCompletedDate_withNow_withQualificationID__classDebugEnabled_239 == 1)
            {
              [MEMORY[0x277CCACA8] stringWithFormat:@"bundleID=%@", v65];
              v67 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              v68 = MEMORY[0x277D3F178];
              v69 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
              lastPathComponent2 = [v69 lastPathComponent];
              v71 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceWithAccounting accumulateWithLastCompletedDate:withNow:withQualificationID:]"];
              [v68 logMessage:*&v67 fromFile:lastPathComponent2 fromFunction:v71 fromLineNumber:620];

              v73 = PLLogCommon(v72);
              if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v121 = v67;
                _os_log_debug_impl(&dword_25EE51000, v73, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              nowCopy = v98;
              v58 = selfCopy;
            }
          }

          v74 = PLLogCommon(debugEnabled2);
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
          {
            [v61 objectForKeyedSubscript:v107];
            v83 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            v84 = [v61 objectForKeyedSubscript:@"timestamp"];
            *buf = 138412802;
            v121 = v83;
            v122 = 2112;
            v123 = v65;
            v124 = 2112;
            v125 = v84;
            _os_log_debug_impl(&dword_25EE51000, v74, OS_LOG_TYPE_DEBUG, "┃ ┃ ┏ PLDuetService accumulateWithLastCompletedDate entry for nodeID:%@, bundleID:%@, timestamp:%@", buf, 0x20u);

            v58 = selfCopy;
          }

          if (v65)
          {
            [v62 setObject:v65 forKeyedSubscript:@"BundleID"];
            v75 = [MEMORY[0x277CCABB0] numberWithInt:d];
            [v62 setObject:v75 forKeyedSubscript:@"QualificationID"];

            v76 = [v61 objectForKeyedSubscript:v102];
            [v76 doubleValue];
            v78 = v77 / 1000.0;

            v79 = fmin(v78, 10000.0);
            v80 = [MEMORY[0x277CCABB0] numberWithDouble:v79];
            [v62 setObject:v80 forKeyedSubscript:@"Energy"];

            v82 = PLLogCommon(v81);
            if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134217984;
              v121 = v79;
              _os_log_debug_impl(&dword_25EE51000, v82, OS_LOG_TYPE_DEBUG, "┃ ┃ ┗ PLDuetService accumulateWithLastCompletedDate entry energy:%fmWh", buf, 0xCu);
            }

            [array addObject:v62];
          }

          ++v60;
        }

        while (v59 != v60);
        v59 = [v100 countByEnumeratingWithState:&v109 objects:v126 count:16];
      }

      while (v59);
    }

    v85 = [array count];
    if (v85)
    {
      duetService5 = [(PLDuetServiceImpl *)v58 duetService];

      if (duetService5)
      {
        duetService6 = [(PLDuetServiceImpl *)v58 duetService];
        v118 = v106;
        v119 = array;
        v88 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v119 forKeys:&v118 count:1];
        [duetService6 logEntries:v88 withGroupID:v106];
      }
    }

    v89 = PLLogCommon(v85);
    if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
    {
      [PLDuetServiceWithAccounting accumulateWithLastCompletedDate:withNow:withQualificationID:];
    }

    dateCopy = v97;
  }
}

void *__91__PLDuetServiceWithAccounting_accumulateWithLastCompletedDate_withNow_withQualificationID___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  accumulateWithLastCompletedDate_withNow_withQualificationID__classDebugEnabled = result;
  return result;
}

void *__91__PLDuetServiceWithAccounting_accumulateWithLastCompletedDate_withNow_withQualificationID___block_invoke_240(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  accumulateWithLastCompletedDate_withNow_withQualificationID__classDebugEnabled_239 = result;
  return result;
}

+ (id)mapBundleID:(id)d
{
  v3 = mapBundleID__onceToken;
  dCopy = d;
  if (v3 != -1)
  {
    +[PLDuetServiceWithAccounting mapBundleID:];
  }

  v5 = [mapBundleID__daemonBundleIDToName objectForKeyedSubscript:dCopy];
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
  v0 = mapBundleID__daemonBundleIDToName;
  mapBundleID__daemonBundleIDToName = &unk_287148AB8;
}

- (void)didReceiveEventWithPayload:(_BYTE *)a1 .cold.2(_BYTE *a1, _BYTE *a2)
{
  OUTLINED_FUNCTION_3_2(a1, a2);
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 2u);
}

- (void)eventTransitionsWithEvents:(_BYTE *)a1 .cold.1(_BYTE *a1, _BYTE *a2)
{
  OUTLINED_FUNCTION_3_2(a1, a2);
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 2u);
}

- (void)eventTransitionsWithEvents:(_BYTE *)a1 .cold.2(_BYTE *a1, _BYTE *a2)
{
  OUTLINED_FUNCTION_3_2(a1, a2);
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 2u);
}

- (void)energyResponseWithQualificationID:(os_log_t)log .cold.4(os_log_t log)
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 67109120;
  v1[1] = 0;
  _os_log_error_impl(&dword_25EE51000, log, OS_LOG_TYPE_ERROR, "┃ ┗ PLDuetService energyResponseWithQualificationID: unexpected updateType %d", v1, 8u);
}

- (void)accumulateWithLastCompletedDate:(void *)a1 withNow:(void *)a2 .cold.2(void *a1, void *a2)
{
  [a1 timeIntervalSince1970];
  [a2 timeIntervalSince1970];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)accumulateWithLastCompletedDate:withNow:.cold.3()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)accumulateWithLastCompletedDate:withNow:withQualificationID:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)accumulateWithLastCompletedDate:(void *)a1 withNow:withQualificationID:.cold.3(void *a1)
{
  [a1 timeIntervalSince1970];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)accumulateWithLastCompletedDate:(void *)a1 withNow:withQualificationID:.cold.4(void *a1)
{
  [a1 timeIntervalSince1970];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)accumulateWithLastCompletedDate:(void *)a1 withNow:withQualificationID:.cold.6(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

- (void)accumulateWithLastCompletedDate:withNow:withQualificationID:.cold.7()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end