@interface PLBLDService
+ (id)entryEventPointBLD;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (PLBLDService)init;
- (id)batteryBreakdownWithPayload:(id)payload;
- (id)bldEntryWithBatteryBreakdown:(id)breakdown;
- (void)initOperatorDependancies;
@end

@implementation PLBLDService

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLBLDService;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"BLD";
  v2 = +[PLBLDService entryEventPointBLD];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

+ (id)entryEventPointBLD
{
  v20[2] = *MEMORY[0x277D85DE8];
  v19[0] = *MEMORY[0x277D3F4E8];
  v17 = *MEMORY[0x277D3F568];
  v18 = &unk_28714BB38;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v20[0] = v2;
  v19[1] = *MEMORY[0x277D3F540];
  v15[0] = @"BUIOutput";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v16[0] = commonTypeDict_StringFormat;
  v15[1] = @"JSON";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]2 commonTypeDict_BoolFormat];
  v16[1] = commonTypeDict_BoolFormat;
  v15[2] = @"LastUpDateTime";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]3 commonTypeDict_DateFormat];
  v16[2] = commonTypeDict_DateFormat;
  v15[3] = @"BLDRetail";
  v13 = *MEMORY[0x277D3F5A8];
  v14 = &unk_287147B18;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];
  v20[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

  return v11;
}

- (PLBLDService)init
{
  if (([MEMORY[0x277D3F208] isHomePod] & 1) != 0 || +[PLUtilities isPerfPowerMetricd](PLUtilities, "isPerfPowerMetricd"))
  {
    selfCopy = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PLBLDService;
    self = [(PLOperator *)&v5 init];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)initOperatorDependancies
{
  v3 = objc_alloc(MEMORY[0x277D3F278]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__PLBLDService_initOperatorDependancies__block_invoke;
  v6[3] = &unk_279A5BEC8;
  v6[4] = self;
  v4 = [v3 initWithOperator:self withRegistration:&unk_28714AF70 withBlock:v6];
  [(PLBLDService *)self setBatteryBreakdownResponder:v4];

  if ([(PLOperator *)self isDebugEnabled])
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, NotificationCallback_0, @"com.apple.powerlogd.BLD.batteryBreakdown", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

id __40__PLBLDService_initOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = [*(a1 + 32) batteryBreakdownWithPayload:v6];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __40__PLBLDService_initOperatorDependancies__block_invoke_2;
    v21 = &__block_descriptor_40_e5_v8__0lu32l8;
    v22 = v8;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_0 != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_0, &block);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_0 == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/%d: result=%@, payload=%@", "-[PLBLDService initOperatorDependancies]_block_invoke", 100, v7, v6, block, v19, v20, v21, v22];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBLDService.m"];
      v12 = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBLDService initOperatorDependancies]_block_invoke"];
      [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:100];

      v15 = PLLogCommon(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  v23 = @"result";
  v24[0] = v7;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];

  return v16;
}

void *__40__PLBLDService_initOperatorDependancies__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_0 = result;
  return result;
}

- (id)batteryBreakdownWithPayload:(id)payload
{
  v113 = *MEMORY[0x277D85DE8];
  v4 = [payload objectForKeyedSubscript:@"PLBatteryUIQueryTypeKey"];
  intValue = [v4 intValue];

  selfCopy = self;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    v110[0] = MEMORY[0x277D85DD0];
    v110[1] = 3221225472;
    v110[2] = __44__PLBLDService_batteryBreakdownWithPayload___block_invoke;
    v110[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v110[4] = v6;
    if (batteryBreakdownWithPayload__defaultOnce != -1)
    {
      dispatch_once(&batteryBreakdownWithPayload__defaultOnce, v110);
    }

    if (batteryBreakdownWithPayload__classDebugEnabled == 1)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"queryType=%i", intValue];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBLDService.m"];
      lastPathComponent = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBLDService batteryBreakdownWithPayload:]"];
      [v8 logMessage:v7 fromFile:lastPathComponent fromFunction:v11 fromLineNumber:118];

      v13 = PLLogCommon(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }

      self = selfCopy;
    }
  }

  if (intValue == 1)
  {
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    v104 = objc_opt_new();
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v16 = [monotonicDate dateByAddingTimeInterval:-86400.0];
    v17 = monotonicDate;
    [v16 timeIntervalSince1970];
    v19 = v18;
    [v17 timeIntervalSince1970];
    v21 = v20;

    v100 = [(PLBatteryBreakdownService *)self batteryBreakdownWithTimeRange:1 withDataRange:v19 withEntryTimeInterval:v21 - v19 withQueryType:0.0, 0.0, 3600.0];
    [dictionary setObject:v100 forKeyedSubscript:@"PLBatteryUIQueryRangeDayKey"];
    v22 = [(PLBLDService *)self bldEntryWithBatteryBreakdown:dictionary];
    if (+[PLUtilities isPowerlogHelperd])
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v23 = objc_opt_class();
        v109[0] = MEMORY[0x277D85DD0];
        v109[1] = 3221225472;
        v109[2] = __44__PLBLDService_batteryBreakdownWithPayload___block_invoke_67;
        v109[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v109[4] = v23;
        if (batteryBreakdownWithPayload__defaultOnce_65 != -1)
        {
          dispatch_once(&batteryBreakdownWithPayload__defaultOnce_65, v109);
        }

        if (batteryBreakdownWithPayload__classDebugEnabled_66 == 1)
        {
          v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/%d: past day results generated", "-[PLBLDService batteryBreakdownWithPayload:]", 139];
          v25 = MEMORY[0x277D3F178];
          v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBLDService.m"];
          lastPathComponent2 = [v26 lastPathComponent];
          v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBLDService batteryBreakdownWithPayload:]"];
          [v25 logMessage:v24 fromFile:lastPathComponent2 fromFunction:v28 fromLineNumber:139];

          v30 = PLLogCommon(v29);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }

          self = selfCopy;
        }
      }

      serialized = [v22 serialized];
      [v104 addObject:serialized];
    }

    else
    {
      [(PLOperator *)self logEntry:v22];
    }

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];

    v33 = [v17 dateByAddingTimeInterval:-604800.0];
    v34 = v17;
    [v33 timeIntervalSince1970];
    v36 = v35;
    [v34 timeIntervalSince1970];
    v38 = v37;

    v39 = [(PLBatteryBreakdownService *)self batteryBreakdownWithTimeRange:1 withDataRange:v36 withEntryTimeInterval:v38 - v36 withQueryType:0.0, 0.0, 3600.0];
    [dictionary2 setObject:v39 forKeyedSubscript:@"PLBatteryUIQueryRangeWeekKey"];

    v40 = [(PLBLDService *)self bldEntryWithBatteryBreakdown:dictionary2];
    v99 = v22;
    v101 = v40;
    if (+[PLUtilities isPowerlogHelperd])
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v41 = objc_opt_class();
        v108[0] = MEMORY[0x277D85DD0];
        v108[1] = 3221225472;
        v108[2] = __44__PLBLDService_batteryBreakdownWithPayload___block_invoke_76;
        v108[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v108[4] = v41;
        if (batteryBreakdownWithPayload__defaultOnce_74 != -1)
        {
          dispatch_once(&batteryBreakdownWithPayload__defaultOnce_74, v108);
        }

        if (batteryBreakdownWithPayload__classDebugEnabled_75 == 1)
        {
          v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/%d: past week results generated", "-[PLBLDService batteryBreakdownWithPayload:]", 155];
          v43 = MEMORY[0x277D3F178];
          v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBLDService.m"];
          lastPathComponent3 = [v44 lastPathComponent];
          v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBLDService batteryBreakdownWithPayload:]"];
          [v43 logMessage:v42 fromFile:lastPathComponent3 fromFunction:v46 fromLineNumber:155];

          v48 = PLLogCommon(v47);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }

          v40 = v101;
          self = selfCopy;
        }
      }

      serialized2 = [v40 serialized];
      [v104 addObject:serialized2];
    }

    else
    {
      [(PLOperator *)self logEntry:v40];
    }

    v98 = v34;
    convertFromMonotonicToSystem = [v34 convertFromMonotonicToSystem];
    v51 = 6;
    do
    {
      v52 = MEMORY[0x277CBEAA8];
      v53 = [convertFromMonotonicToSystem dateByAddingTimeInterval:-600.0];
      v54 = [v52 nearestMidnightBeforeDate:v53];

      v55 = @"PLBatteryUIQueryRangeTodayKey";
      if (v51 != 6)
      {
        v56 = MEMORY[0x277CCACA8];
        v57 = [MEMORY[0x277CCABB0] numberWithInt:v51];
        v55 = [v56 stringWithFormat:@"PLBatteryUIQueryRangeDay_%@_Key", v57];
      }

      dictionary3 = [MEMORY[0x277CBEB38] dictionary];

      convertFromSystemToMonotonic = [v54 convertFromSystemToMonotonic];
      convertFromSystemToMonotonic2 = [convertFromMonotonicToSystem convertFromSystemToMonotonic];
      [convertFromSystemToMonotonic timeIntervalSince1970];
      v62 = v61;
      [convertFromSystemToMonotonic2 timeIntervalSince1970];
      v64 = v63 - v62;

      v65 = [(PLBatteryBreakdownService *)self batteryBreakdownWithTimeRange:1 withDataRange:v62 withEntryTimeInterval:v64 withQueryType:0.0, 0.0, 3600.0];
      [dictionary3 setObject:v65 forKeyedSubscript:v55];

      v66 = [(PLBLDService *)self bldEntryWithBatteryBreakdown:dictionary3];
      if (+[PLUtilities isPowerlogHelperd])
      {
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v67 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __44__PLBLDService_batteryBreakdownWithPayload___block_invoke_89;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v67;
          if (batteryBreakdownWithPayload__defaultOnce_87 != -1)
          {
            dispatch_once(&batteryBreakdownWithPayload__defaultOnce_87, block);
          }

          if (batteryBreakdownWithPayload__classDebugEnabled_88 == 1)
          {
            v103 = v54;
            v68 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/%d: past N days results generated", "-[PLBLDService batteryBreakdownWithPayload:]", 176];
            v69 = MEMORY[0x277D3F178];
            v70 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBLDService.m"];
            lastPathComponent4 = [v70 lastPathComponent];
            v72 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBLDService batteryBreakdownWithPayload:]"];
            [v69 logMessage:v68 fromFile:lastPathComponent4 fromFunction:v72 fromLineNumber:176];

            v74 = PLLogCommon(v73);
            if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v112 = v68;
              _os_log_debug_impl(&dword_25EE51000, v74, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            self = selfCopy;
            v54 = v103;
          }
        }

        serialized3 = [v66 serialized];
        [v104 addObject:serialized3];
      }

      else
      {
        [(PLOperator *)self logEntry:v66];
      }

      v51 = (v51 - 1);
      dictionary2 = dictionary3;
      convertFromMonotonicToSystem = v54;
    }

    while (v51 != -1);
    dictionary4 = [MEMORY[0x277CBEB38] dictionary];
    v77 = [v100 objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
    v78 = [(PLBatteryBreakdownService *)self suggestionsWithEnergyEntries:v77];
    [dictionary4 setObject:v78 forKeyedSubscript:@"PLBatteryUISuggestionArrayKey"];

    v79 = [(PLBLDService *)self bldEntryWithBatteryBreakdown:dictionary4];
    if (+[PLUtilities isPowerlogHelperd])
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v80 = objc_opt_class();
        v106[0] = MEMORY[0x277D85DD0];
        v106[1] = 3221225472;
        v106[2] = __44__PLBLDService_batteryBreakdownWithPayload___block_invoke_101;
        v106[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v106[4] = v80;
        if (batteryBreakdownWithPayload__defaultOnce_99 != -1)
        {
          dispatch_once(&batteryBreakdownWithPayload__defaultOnce_99, v106);
        }

        if (batteryBreakdownWithPayload__classDebugEnabled_100 == 1)
        {
          v81 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/%d: suggestion array generated", "-[PLBLDService batteryBreakdownWithPayload:]", 198];
          v82 = MEMORY[0x277D3F178];
          v83 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBLDService.m"];
          lastPathComponent5 = [v83 lastPathComponent];
          v85 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBLDService batteryBreakdownWithPayload:]"];
          [v82 logMessage:v81 fromFile:lastPathComponent5 fromFunction:v85 fromLineNumber:198];

          v87 = PLLogCommon(v86);
          if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }

          self = selfCopy;
        }
      }

      serialized4 = [v79 serialized];
      [v104 addObject:serialized4];
    }

    else
    {
      [(PLOperator *)self logEntry:v79];
    }

    [(PLBatteryBreakdownService *)self clearState];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v89 = objc_opt_class();
      v105[0] = MEMORY[0x277D85DD0];
      v105[1] = 3221225472;
      v105[2] = __44__PLBLDService_batteryBreakdownWithPayload___block_invoke_107;
      v105[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v105[4] = v89;
      if (batteryBreakdownWithPayload__defaultOnce_105 != -1)
      {
        dispatch_once(&batteryBreakdownWithPayload__defaultOnce_105, v105);
      }

      if (batteryBreakdownWithPayload__classDebugEnabled_106 == 1)
      {
        v104 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/%d: allEntries=%@", "-[PLBLDService batteryBreakdownWithPayload:]", 209, v104];
        v91 = MEMORY[0x277D3F178];
        v92 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBLDService.m"];
        lastPathComponent6 = [v92 lastPathComponent];
        v94 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBLDService batteryBreakdownWithPayload:]"];
        [v91 logMessage:v104 fromFile:lastPathComponent6 fromFunction:v94 fromLineNumber:209];

        v96 = PLLogCommon(v95);
        if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }
  }

  else
  {
    v104 = 0;
  }

  return v104;
}

void *__44__PLBLDService_batteryBreakdownWithPayload___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  batteryBreakdownWithPayload__classDebugEnabled = result;
  return result;
}

void *__44__PLBLDService_batteryBreakdownWithPayload___block_invoke_67(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  batteryBreakdownWithPayload__classDebugEnabled_66 = result;
  return result;
}

void *__44__PLBLDService_batteryBreakdownWithPayload___block_invoke_76(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  batteryBreakdownWithPayload__classDebugEnabled_75 = result;
  return result;
}

void *__44__PLBLDService_batteryBreakdownWithPayload___block_invoke_89(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  batteryBreakdownWithPayload__classDebugEnabled_88 = result;
  return result;
}

void *__44__PLBLDService_batteryBreakdownWithPayload___block_invoke_101(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  batteryBreakdownWithPayload__classDebugEnabled_100 = result;
  return result;
}

void *__44__PLBLDService_batteryBreakdownWithPayload___block_invoke_107(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  batteryBreakdownWithPayload__classDebugEnabled_106 = result;
  return result;
}

- (id)bldEntryWithBatteryBreakdown:(id)breakdown
{
  breakdownCopy = breakdown;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__PLBLDService_bldEntryWithBatteryBreakdown___block_invoke;
  block[3] = &unk_279A5BDC0;
  block[4] = self;
  if (bldEntryWithBatteryBreakdown__onceToken != -1)
  {
    dispatch_once(&bldEntryWithBatteryBreakdown__onceToken, block);
  }

  v5 = objc_alloc(MEMORY[0x277D3F190]);
  v6 = [v5 initWithEntryKey:bldEntryWithBatteryBreakdown__entryKey];
  [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"BLDRetail"];
  entryDate = [v6 entryDate];
  [v6 setObject:entryDate forKeyedSubscript:@"LastUpDateTime"];

  v8 = [PLUtilities JSONSanitizeDictionary:breakdownCopy];
  v9 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v8 options:0 error:0];
  if (v9)
  {
    [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"JSON"];
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v9 encoding:4];
  }

  else
  {
    [v6 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"JSON"];
    v10 = [v8 description];
  }

  v11 = v10;
  [v6 setObject:v10 forKeyedSubscript:@"BUIOutput"];

  return v6;
}

uint64_t __45__PLBLDService_bldEntryWithBatteryBreakdown___block_invoke(uint64_t a1)
{
  v1 = [objc_opt_class() entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"BLD"];
  bldEntryWithBatteryBreakdown__entryKey = v1;

  return MEMORY[0x2821F96F8](v1);
}

@end