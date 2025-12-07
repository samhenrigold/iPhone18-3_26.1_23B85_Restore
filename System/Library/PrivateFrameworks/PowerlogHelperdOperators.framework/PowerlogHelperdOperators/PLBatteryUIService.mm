@interface PLBatteryUIService
+ (void)load;
- (BOOL)dateIntervals:(id)intervals containDate:(id)date;
- (BOOL)demoMode;
- (BOOL)isAppEntryValidForAdjustment:(id)adjustment withQueryType:(int)type;
- (BOOL)writeOutputDemo;
- (PLBatteryUIService)init;
- (_PLTimeIntervalRange)getDataRangeWithNow:(id)now;
- (_PLTimeIntervalRange)getlastDayRangeWithNow:(id)now withNowSystem:(id)system;
- (_PLTimeIntervalRange)getlastXDayRangeWithNow:(id)now withNowSystem:(id)system;
- (double)adjustScreenOffTimeSecsWithGraphValue:(double)value withGraphScreenOnSecs:(double)secs queryType:(int)type andBreakdownEntries:(id)entries;
- (double)adjustScreenOnTimeSecsWithGraphValue:(double)value queryType:(int)type andBreakdownEntries:(id)entries;
- (id)batteryBreakdownAndGraphWithPayload:(id)payload;
- (id)batteryBreakdownWithPayload:(id)payload withDayRange:(_PLTimeIntervalRange)range withXDayRange:(_PLTimeIntervalRange)dayRange withDataRange:(_PLTimeIntervalRange)dataRange;
- (id)batteryLevelsAndChargingIntervalsInRange:(_PLTimeIntervalRange)range withDataRange:(_PLTimeIntervalRange)dataRange;
- (id)dateAndBatteryLevelPointsInRange:(_PLTimeIntervalRange)range;
- (id)demoModePath;
- (id)entriesInRange:(_PLTimeIntervalRange)range fromEntries:(id)entries;
- (id)generateTapBucketsForBucketSize:(int)size withNumberOfBuckets:(int)buckets withNowTime:(id)time withDrainThreshold:(double)threshold withQueryType:(int)type withDataRange:(_PLTimeIntervalRange)range;
- (id)getLPMIntervalsSpanningRange:(_PLTimeIntervalRange)range;
- (id)getLastChargeData;
- (id)lastXDaysWithRange:(_PLTimeIntervalRange)range withDataRange:(_PLTimeIntervalRange)dataRange withQueryType:(int)type andBatteryBreakdown:(id)breakdown;
- (id)modelsForGraphWithDayRange:(_PLTimeIntervalRange)range withXDayRange:(_PLTimeIntervalRange)dayRange withDataRange:(_PLTimeIntervalRange)dataRange withQueryType:(int)type andBatteryBreakdown:(id)breakdown;
- (id)modelsWithPayload:(id)payload;
- (id)screenTimeInRange:(_PLTimeIntervalRange)range withBucketSize:(double)size withNumBuckets:(int)buckets withDataRange:(_PLTimeIntervalRange)dataRange withQueryType:(int)type andBatteryBreakdown:(id)breakdown;
- (void)getLastChargeData;
- (void)initOperatorDependancies;
- (void)removeExcessUpgradePlistFiles;
- (void)testUIQuery;
@end

@implementation PLBatteryUIService

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLBatteryUIService;
  objc_msgSendSuper2(&v2, sel_load);
}

- (PLBatteryUIService)init
{
  if (([MEMORY[0x277D3F208] isHomePod] & 1) != 0 || +[PLUtilities isPerfPowerMetricd](PLUtilities, "isPerfPowerMetricd"))
  {
    selfCopy = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PLBatteryUIService;
    self = [(PLOperator *)&v5 init];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)initOperatorDependancies
{
  if ([(PLOperator *)self isDebugEnabled])
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, NotificationCallback, @"com.apple.powerlogd.PLBatteryUIService.batteryBreakdown", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  if (+[PLUtilities isPowerlogHelperd])
  {
    v4 = objc_alloc(MEMORY[0x277D3F278]);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __46__PLBatteryUIService_initOperatorDependancies__block_invoke;
    v9[3] = &unk_279A5BEC8;
    v9[4] = self;
    v5 = [v4 initWithOperator:self withRegistration:&unk_287147CD0 withBlock:v9];
    [(PLBatteryUIService *)self setBatteryBreakdownResponder:v5];

    v6 = objc_alloc(MEMORY[0x277D3F278]);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __46__PLBatteryUIService_initOperatorDependancies__block_invoke_42;
    v8[3] = &unk_279A5BEC8;
    v8[4] = self;
    v7 = [v6 initWithOperator:self withRegistration:&unk_287147CF8 withBlock:v8];
    [(PLBatteryUIService *)self setModelsResponder:v7];
  }
}

id __46__PLBatteryUIService_initOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __46__PLBatteryUIService_initOperatorDependancies__block_invoke_2;
    v20 = &__block_descriptor_40_e5_v8__0lu32l8;
    v21 = v7;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce, &block);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"batteryBreakdownResponder: payload=%@", v6, block, v18, v19, v20, v21];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryUIService.m"];
      v11 = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIService initOperatorDependancies]_block_invoke"];
      [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:100];

      v14 = PLLogCommon(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
      }
    }
  }

  v15 = [*(a1 + 32) batteryBreakdownAndGraphWithPayload:v6];

  return v15;
}

void *__46__PLBatteryUIService_initOperatorDependancies__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled = result;
  return result;
}

id __46__PLBatteryUIService_initOperatorDependancies__block_invoke_42(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __46__PLBatteryUIService_initOperatorDependancies__block_invoke_2_43;
    v20 = &__block_descriptor_40_e5_v8__0lu32l8;
    v21 = v7;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_2_defaultOnce != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_2_defaultOnce, &block);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_2_classDebugEnabled == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"modelsResponder: payload=%@", v6, block, v18, v19, v20, v21];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryUIService.m"];
      v11 = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIService initOperatorDependancies]_block_invoke"];
      [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:106];

      v14 = PLLogCommon(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
      }
    }
  }

  v15 = [*(a1 + 32) modelsWithPayload:v6];

  return v15;
}

void *__46__PLBatteryUIService_initOperatorDependancies__block_invoke_2_43(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_2_classDebugEnabled = result;
  return result;
}

- (_PLTimeIntervalRange)getlastDayRangeWithNow:(id)now withNowSystem:(id)system
{
  v39 = *MEMORY[0x277D85DE8];
  systemCopy = system;
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = [currentCalendar components:60 fromDate:systemCopy];
  v7 = [v6 valueForComponent:32];
  v8 = PLLogCommon(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v32 = [currentCalendar dateFromComponents:v6];
    *buf = 138412802;
    v34 = systemCopy;
    v35 = 2112;
    v36 = v32;
    v37 = 2048;
    v38 = v7;
    _os_log_debug_impl(&dword_25EE51000, v8, OS_LOG_TYPE_DEBUG, "Date: %@ -> %@ -> %lu", buf, 0x20u);
  }

  v10 = PLLogCommon(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIService getlastDayRangeWithNow:withNowSystem:];
  }

  v11 = (v7 - fmod(v7, 3.0) + 3.0);
  v13 = PLLogCommon(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIService getlastDayRangeWithNow:withNowSystem:];
  }

  [v6 setValue:v11 forComponent:32];
  v14 = [currentCalendar dateFromComponents:v6];
  v15 = PLLogCommon(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIService getlastDayRangeWithNow:withNowSystem:];
  }

  convertFromSystemToMonotonic = [v14 convertFromSystemToMonotonic];
  v17 = [convertFromSystemToMonotonic dateByAddingTimeInterval:-86400.0];
  v18 = convertFromSystemToMonotonic;
  [v17 timeIntervalSince1970];
  v20 = v19;
  [v18 timeIntervalSince1970];
  v22 = v21;

  v23 = v22 - v20;
  v25 = PLLogCommon(v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = MEMORY[0x277CCACA8];
    v27 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v20];
    v28 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v20 + v23];
    v29 = [v26 stringWithFormat:@"Start: %@, End %@", v27, v28];

    *buf = 138412290;
    v34 = v29;
    _os_log_impl(&dword_25EE51000, v25, OS_LOG_TYPE_INFO, "lastDayRange: %@", buf, 0xCu);
  }

  v30 = v20;
  v31 = v23;
  result.length = v31;
  result.location = v30;
  return result;
}

- (_PLTimeIntervalRange)getlastXDayRangeWithNow:(id)now withNowSystem:(id)system
{
  v30 = *MEMORY[0x277D85DE8];
  systemCopy = system;
  v5 = [MEMORY[0x277CBEAA8] nearestMidnightAfterDate:systemCopy];
  convertFromSystemToMonotonic = [v5 convertFromSystemToMonotonic];
  v7 = [convertFromSystemToMonotonic dateByAddingTimeInterval:-864000.0];
  v8 = convertFromSystemToMonotonic;
  [v7 timeIntervalSince1970];
  v10 = v9;
  [v8 timeIntervalSince1970];
  v12 = v11;

  v14 = PLLogCommon(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v25 = systemCopy;
    v26 = 2112;
    v27 = v5;
    v28 = 2112;
    v29 = v8;
    _os_log_debug_impl(&dword_25EE51000, v14, OS_LOG_TYPE_DEBUG, "Next system midnight %@ -> %@ = monotonic %@", buf, 0x20u);
  }

  v15 = v12 - v10;

  v17 = PLLogCommon(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = MEMORY[0x277CCACA8];
    v19 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v10];
    v20 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v10 + v15];
    v21 = [v18 stringWithFormat:@"Start: %@, End %@", v19, v20];

    *buf = 138412290;
    v25 = v21;
    _os_log_impl(&dword_25EE51000, v17, OS_LOG_TYPE_INFO, "lastXDayRange: %@", buf, 0xCu);
  }

  v22 = v10;
  v23 = v15;
  result.length = v23;
  result.location = v22;
  return result;
}

- (_PLTimeIntervalRange)getDataRangeWithNow:(id)now
{
  v41 = *MEMORY[0x277D85DE8];
  nowCopy = now;
  v5 = *MEMORY[0x277D3F5B8];
  v6 = [(PLOperator *)PLAppTimeService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"UsageTime"];
  v38 = [MEMORY[0x277D3F128] entryKeyForType:v5 andName:*MEMORY[0x277D3F318]];
  v7 = objc_msgSend_storage(self);
  v8 = [v7 firstEntryForKey:v6];

  if (v8)
  {
    entryDate = [v8 entryDate];
    v11 = PLLogCommon(entryDate);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIService getDataRangeWithNow:];
    }
  }

  else
  {
    v12 = PLLogCommon(v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIService getDataRangeWithNow:];
    }

    entryDate = nowCopy;
  }

  v13 = objc_msgSend_storage(self);
  v14 = [v13 firstEntryForKey:v38];

  if (v14)
  {
    entryDate2 = [v14 entryDate];
    v17 = PLLogCommon(entryDate2);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIService getDataRangeWithNow:];
    }
  }

  else
  {
    v18 = PLLogCommon(v15);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIService getDataRangeWithNow:];
    }

    entryDate2 = nowCopy;
  }

  v19 = [entryDate2 laterDate:entryDate];
  v20 = nowCopy;
  [v19 timeIntervalSince1970];
  v22 = v21;
  [v20 timeIntervalSince1970];
  v24 = v23;

  v25 = v24 - v22;
  v27 = PLLogCommon(v26);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = MEMORY[0x277CCACA8];
    v37 = v8;
    [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v22];
    v29 = v14;
    v30 = entryDate;
    v32 = v31 = v6;
    v33 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v22 + v25];
    v34 = [v28 stringWithFormat:@"Start: %@, End %@", v32, v33];

    v8 = v37;
    v6 = v31;
    entryDate = v30;
    v14 = v29;
    *buf = 138412290;
    v40 = v34;
    _os_log_impl(&dword_25EE51000, v27, OS_LOG_TYPE_INFO, "dataRange: %@", buf, 0xCu);
  }

  v35 = v22;
  v36 = v25;
  result.length = v36;
  result.location = v35;
  return result;
}

- (id)batteryBreakdownAndGraphWithPayload:(id)payload
{
  v80 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  if ([(PLBatteryUIService *)self demoMode])
  {
    demoModePath = [(PLBatteryUIService *)self demoModePath];
    v6 = PLLogCommon(demoModePath);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v79 = demoModePath;
      _os_log_impl(&dword_25EE51000, v6, OS_LOG_TYPE_INFO, "BUI Demo mode enabled, using plist at %@", buf, 0xCu);
    }

    v7 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:demoModePath];
    convertFromMonotonicToSystem = v7;
    if (v7)
    {
      dictionary = [v7 mutableCopy];
    }

    else
    {
      dictionary = 0;
    }
  }

  else
  {
    demoModePath = [MEMORY[0x277CBEAA8] monotonicDate];
    convertFromMonotonicToSystem = [demoModePath convertFromMonotonicToSystem];
    v10 = PLLogCommon(convertFromMonotonicToSystem);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v79 = convertFromMonotonicToSystem;
      _os_log_impl(&dword_25EE51000, v10, OS_LOG_TYPE_INFO, "Received xpc request at system time: %@", buf, 0xCu);
    }

    v12 = PLLogCommon(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIService batteryBreakdownAndGraphWithPayload:];
    }

    [(PLBatteryUIService *)self getlastDayRangeWithNow:demoModePath withNowSystem:convertFromMonotonicToSystem];
    v14 = v13;
    v16 = v15;
    [(PLBatteryUIService *)self getlastXDayRangeWithNow:demoModePath withNowSystem:convertFromMonotonicToSystem];
    v18 = v17;
    v20 = v19;
    [(PLBatteryUIService *)self getDataRangeWithNow:demoModePath];
    v22 = v21;
    v24 = v23;
    v25 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v14 + v16];
    convertFromMonotonicToSystem2 = [v25 convertFromMonotonicToSystem];
    [convertFromMonotonicToSystem2 timeIntervalSince1970];
    v28 = v27;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionary setObject:&unk_28714B108 forKeyedSubscript:@"PLBatteryUIXPCVersionKey"];
    v29 = [(PLBatteryUIService *)self batteryBreakdownWithPayload:payloadCopy withDayRange:v14 withXDayRange:v16 withDataRange:v18, v20, v22, v24];
    [dictionary setObject:v29 forKeyedSubscript:@"Breakdown"];

    v76 = payloadCopy;
    v30 = [payloadCopy objectForKeyedSubscript:@"PLBatteryUIQueryTypeKey"];
    intValue = [v30 intValue];
    v32 = [dictionary objectForKeyedSubscript:@"Breakdown"];
    v33 = [(PLBatteryUIService *)self modelsForGraphWithDayRange:intValue withXDayRange:v32 withDataRange:v14 withQueryType:v16 andBatteryBreakdown:v18, v20, v22, v24];
    [dictionary setObject:v33 forKeyedSubscript:@"Graph"];

    v34 = [MEMORY[0x277CCABB0] numberWithDouble:v28];
    [dictionary setObject:v34 forKeyedSubscript:@"endOfDay"];

    [convertFromMonotonicToSystem timeIntervalSince1970];
    v35 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [dictionary setObject:v35 forKeyedSubscript:@"PLBatteryUIQueryTime"];

    getLastChargeData = [(PLBatteryUIService *)self getLastChargeData];
    v37 = getLastChargeData;
    if (getLastChargeData)
    {
      getLastChargeData = [dictionary setObject:getLastChargeData forKeyedSubscript:@"PLBatteryUILastChargeKey"];
    }

    v75 = v37;
    v38 = PLLogCommon(getLastChargeData);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = MEMORY[0x277CCACA8];
      v40 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v14];
      v41 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v14 + v16];
      v42 = [v39 stringWithFormat:@"Start: %@, End %@", v40, v41];

      *buf = 138412290;
      v79 = v42;
      _os_log_impl(&dword_25EE51000, v38, OS_LOG_TYPE_INFO, "Computed batteryBreakdown response, day range: %@", buf, 0xCu);
    }

    v44 = PLLogCommon(v43);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25EE51000, v44, OS_LOG_TYPE_INFO, "Writing response to file", buf, 2u);
    }

    v45 = +[PLUtilities containerPath];
    v46 = [v45 stringByAppendingString:@"/Library/BatteryLife/Debug/"];
    [PLUtilities createAndChownDirectoryIfDirectoryDoesNotExist:v46];

    v47 = [v76 objectForKeyedSubscript:@"requestingService"];
    v48 = [v76 objectForKeyedSubscript:@"plistCopyDestination"];
    v49 = +[PLUtilities containerPath];
    v50 = [v49 stringByAppendingString:@"/Library/BatteryLife/Debug/"];

    if (v47)
    {
      v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"BatteryUI%@", v47];
      v52 = [MEMORY[0x277CBEBC0] fileURLWithPath:v50 isDirectory:1];
      v53 = [v52 URLByAppendingPathComponent:v51];

      [v53 URLByAppendingPathExtension:@"plist"];
    }

    else
    {
      v54 = MEMORY[0x277CBEBC0];
      v51 = +[PLUtilities containerPath];
      v53 = [v51 stringByAppendingString:@"/Library/BatteryLife/Debug/BatteryUI.plist"];
      [v54 fileURLWithPath:v53];
    }
    v55 = ;

    v57 = PLLogCommon(v56);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIService batteryBreakdownAndGraphWithPayload:];
    }

    v77 = 0;
    v58 = [dictionary writeToURL:v55 error:&v77];
    v59 = v77;
    v60 = v59;
    if (v58)
    {
      v74 = v47;
      v61 = convertFromMonotonicToSystem;
      v62 = v59;
      v63 = v48;
      v64 = v50;
      path = [v55 path];
      [PLUtilities setMobileOwnerForFile:path];

      v67 = PLLogCommon(v66);
      v50 = v64;
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryUIService batteryBreakdownAndGraphWithPayload:];
      }

      v48 = v63;
      v60 = v62;
      convertFromMonotonicToSystem = v61;
      v47 = v74;
    }

    else
    {
      v67 = PLLogCommon(v59);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        [PLBatteryUIService batteryBreakdownAndGraphWithPayload:];
      }
    }

    if (v47 && [v47 containsString:@"Upgrade"])
    {
      [(PLBatteryUIService *)self removeExcessUpgradePlistFiles];
    }

    if (v48)
    {
      v68 = [PLUtilities PLCopyItemsFromPath:v50 toPath:v48];
      v69 = v68;
      v70 = PLLogCommon(v68);
      v71 = v70;
      if (v69)
      {
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
        {
          [PLBatteryUIService batteryBreakdownAndGraphWithPayload:];
        }
      }

      else
      {
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          [PLBatteryUIService batteryBreakdownAndGraphWithPayload:];
        }

        v71 = dictionary;
        dictionary = 0;
      }

      v72 = v75;
    }

    else
    {
      v72 = v75;
    }

    payloadCopy = v76;
  }

  return dictionary;
}

- (id)batteryBreakdownWithPayload:(id)payload withDayRange:(_PLTimeIntervalRange)range withXDayRange:(_PLTimeIntervalRange)dayRange withDataRange:(_PLTimeIntervalRange)dataRange
{
  length = dataRange.length;
  location = dataRange.location;
  v8 = dayRange.length;
  v9 = dayRange.location;
  v10 = range.length;
  v11 = range.location;
  v107 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  incrementAggdKey = [(PLBatteryUIService *)self incrementAggdKey];
  v15 = v11 + v10;
  if (v11 < location && v15 > location)
  {
    v20 = location + length;
LABEL_14:
    if (v11 >= location)
    {
      v18 = v11;
    }

    else
    {
      v18 = location;
    }

    if (v15 < v20)
    {
      v20 = v11 + v10;
    }

    v19 = v20 - v18;
    goto LABEL_20;
  }

  v20 = location + length;
  if (location < v11 && v20 > v11)
  {
    goto LABEL_14;
  }

  v18 = 0.0;
  if (v11 != location || v10 <= 0.0)
  {
    v19 = 0.0;
    goto LABEL_20;
  }

  v19 = 0.0;
  if (length > 0.0)
  {
    goto LABEL_14;
  }

LABEL_20:
  v21 = v9 + v8;
  v98 = v8;
  v99 = v11 + v10;
  v97 = v10;
  if (v9 >= location || v21 <= location)
  {
    v22 = location + length;
    if (location >= v9 || v22 <= v9)
    {
      v23 = 0.0;
      if (v9 != location || v8 <= 0.0)
      {
        v24 = 0.0;
        goto LABEL_34;
      }

      v24 = 0.0;
      if (length <= 0.0)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v22 = location + length;
  }

  if (v9 >= location)
  {
    v25 = v9;
  }

  else
  {
    v25 = location;
  }

  if (v21 < v22)
  {
    v22 = v21;
  }

  v23 = v25;
  v24 = v22 - v25;
LABEL_34:
  v100 = v21;
  v26 = PLLogCommon(incrementAggdKey);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = MEMORY[0x277CCACA8];
    v28 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v11];
    v29 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v99];
    v30 = [v27 stringWithFormat:@"Start: %@, End %@", v28, v29];

    v31 = MEMORY[0x277CCACA8];
    v32 = MEMORY[0x277CBEAA8];
    v33 = v30;
    v34 = [v32 dateWithTimeIntervalSince1970:v18];
    v35 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v18 + v19];
    v36 = [v31 stringWithFormat:@"Start: %@, End %@", v34, v35];

    *buf = 138412546;
    v104 = v30;
    v105 = 2112;
    v106 = v36;
    _os_log_impl(&dword_25EE51000, v26, OS_LOG_TYPE_INFO, "Day: %@ -> %@", buf, 0x16u);
  }

  v38 = PLLogCommon(v37);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    v39 = MEMORY[0x277CCACA8];
    v40 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v9];
    v41 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v100];
    v42 = [v39 stringWithFormat:@"Start: %@, End %@", v40, v41];

    v43 = MEMORY[0x277CCACA8];
    v44 = MEMORY[0x277CBEAA8];
    v45 = v42;
    v46 = [v44 dateWithTimeIntervalSince1970:v23];
    v47 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v23 + v24];
    v48 = [v43 stringWithFormat:@"Start: %@, End %@", v46, v47];

    *buf = 138412546;
    v104 = v42;
    v105 = 2112;
    v106 = v48;
    _os_log_impl(&dword_25EE51000, v38, OS_LOG_TYPE_INFO, "xDay: %@ -> %@", buf, 0x16u);
  }

  v49 = [payloadCopy objectForKeyedSubscript:@"PLBatteryUIQueryTypeKey"];

  intValue = [v49 intValue];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v51 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __91__PLBatteryUIService_batteryBreakdownWithPayload_withDayRange_withXDayRange_withDataRange___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v51;
    if (batteryBreakdownWithPayload_withDayRange_withXDayRange_withDataRange__defaultOnce != -1)
    {
      dispatch_once(&batteryBreakdownWithPayload_withDayRange_withXDayRange_withDataRange__defaultOnce, block);
    }

    if (batteryBreakdownWithPayload_withDayRange_withXDayRange_withDataRange__classDebugEnabled == 1)
    {
      v52 = [MEMORY[0x277CCACA8] stringWithFormat:@"queryType=%i", intValue];
      v53 = MEMORY[0x277D3F178];
      v54 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryUIService.m"];
      lastPathComponent = [v54 lastPathComponent];
      v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIService batteryBreakdownWithPayload:withDayRange:withXDayRange:withDataRange:]"];
      [v53 logMessage:v52 fromFile:lastPathComponent fromFunction:v56 fromLineNumber:296];

      v58 = PLLogCommon(v57);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
      {
        __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
      }
    }
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v60 = PLLogCommon(dictionary);
  if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v60, OS_LOG_TYPE_INFO, "Computing last day breakdown", buf, 2u);
  }

  v61 = [(PLBatteryBreakdownService *)self batteryBreakdownWithTimeRange:intValue withDataRange:v11 withEntryTimeInterval:v97 withQueryType:location, length, 3600.0];
  v62 = PLLogCommon([dictionary setObject:v61 forKeyedSubscript:@"PLBatteryUIQueryRangeDayKey"]);
  if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v62, OS_LOG_TYPE_INFO, "Computing week breakdown", buf, 2u);
  }

  v63 = [(PLBatteryBreakdownService *)self batteryBreakdownWithTimeRange:intValue withDataRange:v9 withEntryTimeInterval:v98 withQueryType:location, length, 3600.0];
  [dictionary setObject:v63 forKeyedSubscript:@"PLBatteryUIQueryRangeWeekKey"];

  v65 = PLLogCommon(v64);
  if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v65, OS_LOG_TYPE_INFO, "Computing day breakdown for taps", buf, 2u);
  }

  v66 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v99];
  [(PLBatteryBreakdownService *)self totalSumEnergyRatioCutOff];
  v68 = [(PLBatteryUIService *)self generateTapBucketsForBucketSize:3600 withNumberOfBuckets:24 withNowTime:v66 withDrainThreshold:intValue withQueryType:v67 / 24.0 withDataRange:location, length];
  [dictionary setObject:v68 forKeyedSubscript:@"PLBatteryUIQueryRangeDayTapKey"];

  v70 = PLLogCommon(v69);
  if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v70, OS_LOG_TYPE_INFO, "Computing week breakdown for taps", buf, 2u);
  }

  v71 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v100];
  [(PLBatteryBreakdownService *)self totalSumEnergyRatioCutOff];
  v72 = [PLBatteryUIService generateTapBucketsForBucketSize:"generateTapBucketsForBucketSize:withNumberOfBuckets:withNowTime:withDrainThreshold:withQueryType:withDataRange:" withNumberOfBuckets:86400 withNowTime:10 withDrainThreshold:v71 withQueryType:intValue withDataRange:?];
  [dictionary setObject:v72 forKeyedSubscript:@"PLBatteryUIQueryRangeWeekTapKey"];

  v74 = PLLogCommon(v73);
  if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v74, OS_LOG_TYPE_INFO, "Computing suggestions", buf, 2u);
  }

  v75 = [v61 objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  v76 = [(PLBatteryBreakdownService *)self suggestionsWithEnergyEntries:v75];
  [dictionary setObject:v76 forKeyedSubscript:@"PLBatteryUISuggestionArrayKey"];

  v77 = MEMORY[0x277CBEAA8];
  v78 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v23];
  convertFromMonotonicToSystem = [v78 convertFromMonotonicToSystem];
  v80 = [v77 nearestMidnightBeforeDate:convertFromMonotonicToSystem];

  v81 = MEMORY[0x277CBEAA8];
  v82 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v23 + v24];
  convertFromMonotonicToSystem2 = [v82 convertFromMonotonicToSystem];
  v84 = [v81 nearestMidnightAfterDate:convertFromMonotonicToSystem2];

  [v84 timeIntervalSinceDate:v80];
  v85 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  [dictionary setObject:v85 forKeyedSubscript:@"PLBatteryUIDataDurationKey"];

  v87 = PLLogCommon(v86);
  if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIService batteryBreakdownWithPayload:withDayRange:withXDayRange:withDataRange:];
  }

  [(PLBatteryBreakdownService *)self clearState];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v88 = objc_opt_class();
    v101[0] = MEMORY[0x277D85DD0];
    v101[1] = 3221225472;
    v101[2] = __91__PLBatteryUIService_batteryBreakdownWithPayload_withDayRange_withXDayRange_withDataRange___block_invoke_123;
    v101[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v101[4] = v88;
    if (batteryBreakdownWithPayload_withDayRange_withXDayRange_withDataRange__defaultOnce_121 != -1)
    {
      dispatch_once(&batteryBreakdownWithPayload_withDayRange_withXDayRange_withDataRange__defaultOnce_121, v101);
    }

    if (batteryBreakdownWithPayload_withDayRange_withXDayRange_withDataRange__classDebugEnabled_122 == 1)
    {
      v89 = [MEMORY[0x277CCACA8] stringWithFormat:@"batteryBreakdown=%@", dictionary];
      v90 = MEMORY[0x277D3F178];
      v91 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryUIService.m"];
      lastPathComponent2 = [v91 lastPathComponent];
      v93 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIService batteryBreakdownWithPayload:withDayRange:withXDayRange:withDataRange:]"];
      [v90 logMessage:v89 fromFile:lastPathComponent2 fromFunction:v93 fromLineNumber:343];

      v95 = PLLogCommon(v94);
      if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
      {
        __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
      }
    }
  }

  return dictionary;
}

void *__91__PLBatteryUIService_batteryBreakdownWithPayload_withDayRange_withXDayRange_withDataRange___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  batteryBreakdownWithPayload_withDayRange_withXDayRange_withDataRange__classDebugEnabled = result;
  return result;
}

void *__91__PLBatteryUIService_batteryBreakdownWithPayload_withDayRange_withXDayRange_withDataRange___block_invoke_123(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  batteryBreakdownWithPayload_withDayRange_withXDayRange_withDataRange__classDebugEnabled_122 = result;
  return result;
}

- (id)generateTapBucketsForBucketSize:(int)size withNumberOfBuckets:(int)buckets withNowTime:(id)time withDrainThreshold:(double)threshold withQueryType:(int)type withDataRange:(_PLTimeIntervalRange)range
{
  length = range.length;
  location = range.location;
  v46 = *MEMORY[0x277D85DE8];
  timeCopy = time;
  v15 = objc_opt_new();
  if (buckets >= 1)
  {
    v16 = 0;
    v17 = 0;
    v33 = timeCopy;
    do
    {
      v18 = [timeCopy dateByAddingTimeInterval:v16];
      v19 = [v18 dateByAddingTimeInterval:-size];
      v20 = v18;
      [v19 timeIntervalSince1970];
      v22 = v21;
      [v20 timeIntervalSince1970];
      v24 = v23;

      v25 = v24 - v22;
      v27 = PLLogCommon(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v35 = MEMORY[0x277CCACA8];
        v34 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v22];
        v29 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v22 + v25];
        v36 = [v35 stringWithFormat:@"Start: %@, End %@", v34, v29];

        timeCopy = v33;
        *buf = 67109890;
        v39 = v17;
        v40 = 1024;
        v41 = buckets - 1;
        v42 = 1024;
        sizeCopy = size;
        v44 = 2112;
        v45 = v36;
        _os_log_debug_impl(&dword_25EE51000, v27, OS_LOG_TYPE_DEBUG, "Generating tap bucket %d (of %d) of size %d with lastTapRange %@", buf, 0x1Eu);
      }

      threshold = [(PLBatteryBreakdownService *)self batteryBreakdownWithTimeRange:type withDataRange:v22 withEntryTimeInterval:v25 withQueryType:location withTotalSumEnergyRatioCutOff:length, 3600.0, threshold];
      [v15 addObject:threshold];

      ++v17;
      v16 -= size;
    }

    while (buckets != v17);
  }

  reverseObjectEnumerator = [v15 reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  return allObjects;
}

- (id)modelsWithPayload:(id)payload
{
  v41[3] = *MEMORY[0x277D85DE8];
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:monotonicDate sinceDate:-604800.0];
  v6 = monotonicDate;
  [v5 timeIntervalSince1970];
  v8 = v7;
  [v6 timeIntervalSince1970];
  v10 = v9;

  v11 = [(PLBatteryUIService *)self dateAndBatteryLevelPointsInRange:v8, v10 - v8];
  v40[0] = @"ModelGraphName";
  v40[1] = @"ModelGraphType";
  v41[0] = @"Battery";
  v41[1] = &unk_287145550;
  v40[2] = @"ModelGraphArray";
  v41[2] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:3];
  if (v11 && [v11 count])
  {
    v37 = v12;
    v38[0] = @"ModelData";
    v34 = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
    v39[0] = v13;
    v38[1] = @"ModelMinDate";
    firstObject = [v11 firstObject];
    v15 = [firstObject objectAtIndexedSubscript:0];
    v39[1] = v15;
    v38[2] = @"ModelMaxDate";
    lastObject = [v11 lastObject];
    v17 = [lastObject objectAtIndexedSubscript:0];
    v39[2] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:3];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v19 = objc_opt_class();
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __40__PLBatteryUIService_modelsWithPayload___block_invoke_158;
      v35[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v35[4] = v19;
      if (modelsWithPayload__defaultOnce_156 != -1)
      {
        dispatch_once(&modelsWithPayload__defaultOnce_156, v35);
      }

      v12 = v34;
      if (modelsWithPayload__classDebugEnabled_157 == 1)
      {
        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"models=%@", v18];
        v21 = MEMORY[0x277D3F178];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryUIService.m"];
        lastPathComponent = [v22 lastPathComponent];
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIService modelsWithPayload:]"];
        [v21 logMessage:v20 fromFile:lastPathComponent fromFunction:v24 fromLineNumber:392];

        v26 = PLLogCommon(v25);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
        }

LABEL_16:
      }
    }

    else
    {
      v12 = v34;
    }
  }

  else
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v27 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __40__PLBatteryUIService_modelsWithPayload___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v27;
      if (modelsWithPayload__defaultOnce != -1)
      {
        dispatch_once(&modelsWithPayload__defaultOnce, block);
      }

      if (modelsWithPayload__classDebugEnabled == 1)
      {
        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"dateAndBatteryLevelPoints is nil or empty!"];
        v28 = MEMORY[0x277D3F178];
        v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryUIService.m"];
        lastPathComponent2 = [v29 lastPathComponent];
        v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIService modelsWithPayload:]"];
        [v28 logMessage:v20 fromFile:lastPathComponent2 fromFunction:v31 fromLineNumber:383];

        v26 = PLLogCommon(v32);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
        }

        v18 = 0;
        goto LABEL_16;
      }
    }

    v18 = 0;
  }

  return v18;
}

void *__40__PLBatteryUIService_modelsWithPayload___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  modelsWithPayload__classDebugEnabled = result;
  return result;
}

void *__40__PLBatteryUIService_modelsWithPayload___block_invoke_158(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  modelsWithPayload__classDebugEnabled_157 = result;
  return result;
}

- (id)dateAndBatteryLevelPointsInRange:(_PLTimeIntervalRange)range
{
  length = range.length;
  location = range.location;
  v44 = *MEMORY[0x277D85DE8];
  if (dateAndBatteryLevelPointsInRange__onceToken != -1)
  {
    [PLBatteryUIService dateAndBatteryLevelPointsInRange:];
  }

  v6 = objc_msgSend_storage(self);
  v7 = [v6 entriesForKey:dateAndBatteryLevelPointsInRange__batteryUIEntryKey inTimeRange:0 withFilters:{location, length}];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__PLBatteryUIService_dateAndBatteryLevelPointsInRange___block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (dateAndBatteryLevelPointsInRange__defaultOnce != -1)
    {
      dispatch_once(&dateAndBatteryLevelPointsInRange__defaultOnce, block);
    }

    if (dateAndBatteryLevelPointsInRange__classDebugEnabled == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"batteryEntries=%@", v7];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryUIService.m"];
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIService dateAndBatteryLevelPointsInRange:]"];
      [v10 logMessage:v9 fromFile:lastPathComponent fromFunction:v13 fromLineNumber:408];

      v15 = PLLogCommon(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
      }
    }
  }

  array = [MEMORY[0x277CBEB18] array];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v7;
  v17 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v38;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v38 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v37 + 1) + 8 * i);
        entryDate = [v21 entryDate];
        convertFromMonotonicToSystem = [entryDate convertFromMonotonicToSystem];
        v42[0] = convertFromMonotonicToSystem;
        v24 = [v21 objectForKeyedSubscript:@"Level"];
        v42[1] = v24;
        v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];

        [array addObject:v25];
      }

      v18 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v18);
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v26 = objc_opt_class();
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __55__PLBatteryUIService_dateAndBatteryLevelPointsInRange___block_invoke_171;
    v36[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v36[4] = v26;
    if (dateAndBatteryLevelPointsInRange__defaultOnce_169 != -1)
    {
      dispatch_once(&dateAndBatteryLevelPointsInRange__defaultOnce_169, v36);
    }

    if (dateAndBatteryLevelPointsInRange__classDebugEnabled_170 == 1)
    {
      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"dateAndBatteryLevelPoints=%@", array];
      v28 = MEMORY[0x277D3F178];
      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryUIService.m"];
      lastPathComponent2 = [v29 lastPathComponent];
      v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIService dateAndBatteryLevelPointsInRange:]"];
      [v28 logMessage:v27 fromFile:lastPathComponent2 fromFunction:v31 fromLineNumber:418];

      v33 = PLLogCommon(v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
      }
    }
  }

  return array;
}

uint64_t __55__PLBatteryUIService_dateAndBatteryLevelPointsInRange___block_invoke()
{
  v0 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"BatteryUI"];
  dateAndBatteryLevelPointsInRange__batteryUIEntryKey = v0;

  return MEMORY[0x2821F96F8](v0);
}

void *__55__PLBatteryUIService_dateAndBatteryLevelPointsInRange___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  dateAndBatteryLevelPointsInRange__classDebugEnabled = result;
  return result;
}

void *__55__PLBatteryUIService_dateAndBatteryLevelPointsInRange___block_invoke_171(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  dateAndBatteryLevelPointsInRange__classDebugEnabled_170 = result;
  return result;
}

- (void)testUIQuery
{
  v3 = objc_opt_new();
  [v3 setObject:&unk_287145568 forKeyedSubscript:@"PLBatteryUIQueryTypeKey"];
  v4 = [(PLBatteryUIService *)self batteryBreakdownAndGraphWithPayload:v3];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __33__PLBatteryUIService_testUIQuery__block_invoke;
    v16 = &__block_descriptor_40_e5_v8__0lu32l8;
    v17 = v5;
    if (testUIQuery_defaultOnce != -1)
    {
      dispatch_once(&testUIQuery_defaultOnce, &block);
    }

    if (testUIQuery_classDebugEnabled == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Response %@", v4, block, v14, v15, v16, v17];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryUIService.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIService testUIQuery]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:482];

      v12 = PLLogCommon(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
      }
    }
  }
}

void *__33__PLBatteryUIService_testUIQuery__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  testUIQuery_classDebugEnabled = result;
  return result;
}

- (BOOL)demoMode
{
  if (demoMode_onceToken != -1)
  {
    [PLBatteryUIService demoMode];
  }

  v3 = demoMode_val;
  if (demoMode_val)
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

uint64_t __30__PLBatteryUIService_demoMode__block_invoke()
{
  +[PLUtilities containerPath];
  v0 = _CFPreferencesCopyValueWithContainer();
  demoMode_val = v0;

  return MEMORY[0x2821F96F8](v0);
}

- (id)demoModePath
{
  if (demoModePath_onceToken != -1)
  {
    [PLBatteryUIService demoModePath];
  }

  if (demoModePath_val)
  {
    v2 = PLLogCommon(self);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIService demoModePath];
    }

    v3 = demoModePath_val;
  }

  else
  {
    v3 = @"/var/mobile/bui_demo.plist";
  }

  return v3;
}

uint64_t __34__PLBatteryUIService_demoModePath__block_invoke()
{
  +[PLUtilities containerPath];
  v0 = _CFPreferencesCopyValueWithContainer();
  demoModePath_val = v0;

  return MEMORY[0x2821F96F8](v0);
}

- (BOOL)writeOutputDemo
{
  if (writeOutputDemo_onceToken != -1)
  {
    [PLBatteryUIService writeOutputDemo];
  }

  v3 = writeOutputDemo_val;
  if (writeOutputDemo_val)
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

uint64_t __37__PLBatteryUIService_writeOutputDemo__block_invoke()
{
  +[PLUtilities containerPath];
  v0 = _CFPreferencesCopyValueWithContainer();
  writeOutputDemo_val = v0;

  return MEMORY[0x2821F96F8](v0);
}

- (id)getLastChargeData
{
  v18[2] = *MEMORY[0x277D85DE8];
  +[PLUtilities containerPath];
  v2 = _CFPreferencesCopyValueWithContainer();
  +[PLUtilities containerPath];
  v3 = _CFPreferencesCopyValueWithContainer();
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v8 = PLLogCommon(v3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [PLBatteryUIService getLastChargeData];
    }

    v6 = 0;
  }

  else
  {
    v7 = MEMORY[0x277CBEAA8];
    [v3 doubleValue];
    v8 = [v7 dateWithTimeIntervalSince1970:?];
    intValue = [v2 intValue];
    if (intValue >= 100)
    {
      v10 = 100;
    }

    else
    {
      v10 = intValue;
    }

    if (v10 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    v17[0] = @"PLBatteryUITimestampKey";
    v12 = MEMORY[0x277CCABB0];
    convertFromMonotonicToSystem = [v8 convertFromMonotonicToSystem];
    [convertFromMonotonicToSystem timeIntervalSince1970];
    v14 = [v12 numberWithDouble:?];
    v17[1] = @"PLBatteryUILevelKey";
    v18[0] = v14;
    v15 = [MEMORY[0x277CCABB0] numberWithInt:v11];
    v18[1] = v15;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  }

  return v6;
}

- (id)getLPMIntervalsSpanningRange:(_PLTimeIntervalRange)range
{
  length = range.length;
  location = range.location;
  v59[1] = *MEMORY[0x277D85DE8];
  v6 = PLLogCommon(self);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIService getLPMIntervalsSpanningRange:];
  }

  v7 = objc_opt_new();
  v8 = objc_alloc(MEMORY[0x277D3F260]);
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:location];
  v10 = [v8 initWithKey:@"timestamp" withValue:v9 withComparisonOperation:5];

  v11 = objc_msgSend_storage(self);
  v48 = v10;
  v59[0] = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:1];
  v13 = [v11 lastEntryForKey:@"PLDuetService_EventForward_BatterySaverMode" withComparisons:v12 isSingleton:0];

  if (!v13)
  {
    goto LABEL_8;
  }

  v14 = [v13 objectForKeyedSubscript:@"Value"];
  bOOLValue = [v14 BOOLValue];

  v17 = PLLogCommon(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIService getLPMIntervalsSpanningRange:];
  }

  if (bOOLValue)
  {
    v18 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:location];
    v19 = 1;
  }

  else
  {
LABEL_8:
    v18 = 0;
    v19 = 0;
  }

  v47 = v13;
  v49 = v7;
  v20 = objc_msgSend_storage(self);
  v21 = [v20 entriesForKey:@"PLDuetService_EventForward_BatterySaverMode" inTimeRange:0 withFilters:{location, length}];

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v46 = v21;
  reverseObjectEnumerator = [v21 reverseObjectEnumerator];
  v23 = [reverseObjectEnumerator countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v53;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v53 != v25)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v27 = *(*(&v52 + 1) + 8 * i);
        v28 = [v27 objectForKeyedSubscript:@"Value"];
        bOOLValue2 = [v28 BOOLValue];

        v31 = PLLogCommon(v30);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109378;
          LODWORD(v57[0]) = bOOLValue2;
          WORD2(v57[0]) = 2112;
          *(v57 + 6) = v27;
          _os_log_debug_impl(&dword_25EE51000, v31, OS_LOG_TYPE_DEBUG, "LPM Entry: %d %@", buf, 0x12u);
        }

        if ((v19 & 1) == bOOLValue2)
        {
          v33 = PLLogCommon(v32);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            [(PLBatteryUIService *)&v50 getLPMIntervalsSpanningRange:v51, v33];
          }
        }

        else if (bOOLValue2)
        {
          [v27 entryDate];
          v33 = v18;
          v18 = v19 = 1;
        }

        else
        {
          v34 = objc_alloc(MEMORY[0x277CCA970]);
          entryDate = [v27 entryDate];
          v33 = [v34 initWithStartDate:v18 endDate:entryDate];

          v36 = PLLogCommon([v49 addObject:v33]);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v57[0] = v33;
            _os_log_debug_impl(&dword_25EE51000, v36, OS_LOG_TYPE_DEBUG, "Created LPM interval %@", buf, 0xCu);
          }

          v18 = 0;
          v19 = 0;
        }
      }

      v24 = [reverseObjectEnumerator countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v24);
  }

  if (v19)
  {
    v38 = PLLogCommon(v37);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIService getLPMIntervalsSpanningRange:];
    }

    v39 = objc_alloc(MEMORY[0x277CCA970]);
    v40 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:location + length];
    v41 = [v39 initWithStartDate:v18 endDate:v40];

    v42 = PLLogCommon([v49 addObject:v41]);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIService getLPMIntervalsSpanningRange:];
    }
  }

  v43 = PLLogCommon(v37);
  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v57[0] = v49;
    _os_log_impl(&dword_25EE51000, v43, OS_LOG_TYPE_INFO, "LPM intervals: %@", buf, 0xCu);
  }

  v44 = v49;
  return v49;
}

- (BOOL)dateIntervals:(id)intervals containDate:(id)date
{
  v18 = *MEMORY[0x277D85DE8];
  intervalsCopy = intervals;
  dateCopy = date;
  v7 = dateCopy;
  LOBYTE(v8) = 0;
  if (intervalsCopy && dateCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v9 = intervalsCopy;
    v8 = [v9 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v10 = *v14;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v9);
          }

          if ([*(*(&v13 + 1) + 8 * i) containsDate:{v7, v13}])
          {
            LOBYTE(v8) = 1;
            goto LABEL_13;
          }
        }

        v8 = [v9 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v8;
}

- (id)batteryLevelsAndChargingIntervalsInRange:(_PLTimeIntervalRange)range withDataRange:(_PLTimeIntervalRange)dataRange
{
  length = range.length;
  location = range.location;
  v166[2] = *MEMORY[0x277D85DE8];
  v6 = range.location + range.length;
  if (location >= dataRange.location || v6 <= dataRange.location)
  {
    v11 = dataRange.location + dataRange.length;
    if (dataRange.location >= location || v11 <= location)
    {
      v9 = 0.0;
      if (location != dataRange.location || length <= 0.0)
      {
        v10 = 0.0;
        goto LABEL_20;
      }

      v10 = 0.0;
      if (dataRange.length <= 0.0)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    v11 = dataRange.location + dataRange.length;
  }

  if (location >= dataRange.location)
  {
    v9 = location;
  }

  else
  {
    v9 = dataRange.location;
  }

  if (v6 >= v11)
  {
    v6 = v11;
  }

  v10 = v6 - v9;
LABEL_20:
  v142 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{location, v11}];
  v12 = PLLogCommon(v142);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v12, OS_LOG_TYPE_INFO, "Creating battery points and charging intervals", buf, 2u);
  }

  v13 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"BatteryUI"];
  v14 = objc_opt_new();
  v139 = objc_opt_new();
  v15 = objc_alloc(MEMORY[0x277D3F260]);
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:location];
  v17 = [v15 initWithKey:@"timestamp" withValue:v16 withComparisonOperation:5];

  v18 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"Level" withValue:&unk_287145568 withComparisonOperation:3];
  v19 = objc_msgSend_storage(self);
  v131 = v18;
  v132 = v17;
  v166[0] = v17;
  v166[1] = v18;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v166 count:2];
  v21 = [v19 lastEntryForKey:v13 withComparisons:v20 isSingleton:0];

  if (v21)
  {
    v22 = [v21 objectForKeyedSubscript:@"IsCharging"];
    LODWORD(v23) = [v22 BOOLValue];

    v25 = PLLogCommon(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIService batteryLevelsAndChargingIntervalsInRange:withDataRange:];
    }
  }

  else
  {
    LODWORD(v23) = 0;
  }

  v145 = [(PLBatteryUIService *)self getLPMIntervalsSpanningRange:location, length];
  v26 = objc_msgSend_storage(self);
  v27 = [v26 entriesForKey:v13 inTimeRange:0 withFilters:{v9, v10}];

  v29 = PLLogCommon(v28);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIService batteryLevelsAndChargingIntervalsInRange:v27 withDataRange:?];
  }

  v30 = [v27 count];
  if (v30 >= 0x121)
  {
    v31 = PLLogCommon(v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *v159 = 0x4072C00000000000;
      _os_log_impl(&dword_25EE51000, v31, OS_LOG_TYPE_INFO, "More battery point entries than expected, has PLBatteryAgent_RateLimiterBatteryUI been set to less than default %.f s?", buf, 0xCu);
    }

    v32 = [v27 count];
    if (v32 >= 0x10E1)
    {
      v33 = PLLogCommon(v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25EE51000, v33, OS_LOG_TYPE_INFO, "More battery point entries than possible given 20s battery tick rate limit, double check query ranges", buf, 2u);
      }
    }
  }

  v130 = v21;
  v133 = v13;
  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  v135 = v27;
  reverseObjectEnumerator = [v27 reverseObjectEnumerator];
  v35 = [reverseObjectEnumerator countByEnumeratingWithState:&v151 objects:v165 count:16];
  v134 = v14;
  if (v35)
  {
    v36 = v35;
    v37 = *v152;
    v38 = 0.0;
    while (1)
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v152 != v37)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v40 = *(*(&v151 + 1) + 8 * i);
        v41 = [v40 objectForKeyedSubscript:@"Level"];
        intValue = [v41 intValue];

        if (intValue < 0)
        {
          entryDate = PLLogCommon(v43);
          if (os_log_type_enabled(entryDate, OS_LOG_TYPE_DEBUG))
          {
            [PLBatteryUIService batteryLevelsAndChargingIntervalsInRange:v164 withDataRange:v40];
          }
        }

        else
        {
          v44 = [v40 objectForKeyedSubscript:@"IsCharging"];
          bOOLValue = [v44 BOOLValue];

          if ((v23 & 1) == bOOLValue)
          {
            continue;
          }

          if (bOOLValue)
          {
            entryDate = [v40 entryDate];
            [entryDate timeIntervalSinceDate:v142];
            v38 = v47;
            LOBYTE(v23) = 1;
          }

          else
          {
            v48 = [MEMORY[0x277CCABB0] numberWithInt:v38];
            v163[0] = v48;
            v49 = MEMORY[0x277CCABB0];
            entryDate2 = [v40 entryDate];
            [entryDate2 timeIntervalSinceDate:v142];
            v52 = [v49 numberWithInt:v51];
            v163[1] = v52;
            entryDate = [MEMORY[0x277CBEA60] arrayWithObjects:v163 count:2];

            v23 = PLLogCommon(v53);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              v54 = [entryDate objectAtIndexedSubscript:0];
              v55 = [entryDate objectAtIndexedSubscript:1];
              *buf = 138412546;
              *v159 = v54;
              *&v159[8] = 2112;
              *&v159[10] = v55;
              _os_log_debug_impl(&dword_25EE51000, v23, OS_LOG_TYPE_DEBUG, "Created charging interval: [%@ %@]", buf, 0x16u);
            }

            [v139 addObject:entryDate];
            LOBYTE(v23) = 0;
          }
        }
      }

      v36 = [reverseObjectEnumerator countByEnumeratingWithState:&v151 objects:v165 count:16];
      if (!v36)
      {

        v56 = 0x277CBE000;
        if (v23)
        {
          v57 = v38;
          goto LABEL_57;
        }

        goto LABEL_62;
      }
    }
  }

  v56 = 0x277CBE000uLL;
  if (v23)
  {
    v57 = 0;
LABEL_57:
    firstObject = [v135 firstObject];
    v59 = firstObject;
    if (firstObject)
    {
      entryDate3 = [firstObject entryDate];
      [entryDate3 timeIntervalSinceDate:v142];
      v62 = v61;

      v63 = [MEMORY[0x277CCABB0] numberWithInt:v57];
      v162[0] = v63;
      v64 = [MEMORY[0x277CCABB0] numberWithInt:v62];
      v162[1] = v64;
      v65 = [*(v56 + 2656) arrayWithObjects:v162 count:2];

      v67 = PLLogCommon(v66);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryUIService batteryLevelsAndChargingIntervalsInRange:v65 withDataRange:?];
      }

      [v139 addObject:v65];
    }
  }

LABEL_62:
  v68 = v142;
  v69 = PLLogCommon(v68);
  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIService batteryLevelsAndChargingIntervalsInRange:withDataRange:];
  }

  v138 = 0;
  if ([MEMORY[0x277D3F208] isiPad])
  {
    v70 = 10;
  }

  else
  {
    v70 = 20;
  }

  v141 = v70;
  v140 = -1;
  v129 = v68;
  v71 = v68;
  do
  {
    v137 = v71;
    timeIntervalSince1970 = [v71 timeIntervalSince1970];
    v74 = v73;
    v75 = PLLogCommon(timeIntervalSince1970);
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
    {
      v123 = MEMORY[0x277CCACA8];
      v124 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v74];
      v125 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v74 + 900.0];
      v125 = [v123 stringWithFormat:@"Start: %@, End %@", v124, v125];

      *buf = 67109378;
      *v159 = v138;
      *&v159[4] = 2112;
      *&v159[6] = v125;
      _os_log_debug_impl(&dword_25EE51000, v75, OS_LOG_TYPE_DEBUG, "Calculating battery entries for bucket %d in range %@", buf, 0x12u);
    }

    v76 = [(PLBatteryUIService *)self entriesInRange:v135 fromEntries:v74, 900.0];
    v77 = PLLogCommon(v76);
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIService batteryLevelsAndChargingIntervalsInRange:v161 withDataRange:v76];
    }

    v78 = [v76 count];
    v136 = v76;
    if (v78)
    {
      v143 = objc_opt_new();
      v147 = 0u;
      v148 = 0u;
      v149 = 0u;
      v150 = 0u;
      v79 = v76;
      v80 = [v79 countByEnumeratingWithState:&v147 objects:v160 count:16];
      if (v80)
      {
        v81 = v80;
        v82 = 0;
        v83 = *v148;
        do
        {
          for (j = 0; j != v81; ++j)
          {
            if (*v148 != v83)
            {
              objc_enumerationMutation(v79);
            }

            v85 = *(*(&v147 + 1) + 8 * j);
            v86 = [v85 objectForKeyedSubscript:@"Level"];
            intValue2 = [v86 intValue];

            if ((intValue2 & 0x80000000) == 0)
            {
              entryDate4 = [v85 entryDate];
              v89 = [(PLBatteryUIService *)self dateIntervals:v145 containDate:entryDate4];

              v90 = [v85 objectForKeyedSubscript:@"IsCharging"];
              bOOLValue2 = [v90 BOOLValue];

              v92 = [v85 objectForKeyedSubscript:@"Level"];

              if (v92)
              {
                v93 = [v85 objectForKeyedSubscript:@"Level"];
                [v143 addObject:v93];

                v94 = [v85 objectForKeyedSubscript:@"Level"];
                intValue3 = [v94 intValue];

                v96 = v82 | 8;
                if (!bOOLValue2)
                {
                  v96 = v82;
                }

                if (v89)
                {
                  v96 |= 4uLL;
                }

                if (intValue3 > v141)
                {
                  v82 = v96;
                }

                else
                {
                  v82 = v96 | 2;
                }
              }

              else
              {
                v97 = 9;
                if (!bOOLValue2)
                {
                  v97 = 1;
                }

                v98 = v97 | v82;
                if (v89)
                {
                  v82 = v98 | 4;
                }

                else
                {
                  v82 = v98;
                }
              }
            }
          }

          v81 = [v79 countByEnumeratingWithState:&v147 objects:v160 count:16];
        }

        while (v81);
      }

      else
      {
        v82 = 0;
      }

      if ([v143 count])
      {
        v99 = [v143 valueForKeyPath:@"@avg.self"];
      }

      else
      {
        v99 = &unk_287145580;
      }

      if ([v99 intValue] >= 101)
      {

        v99 = &unk_287145598;
      }

      if (([v99 intValue] & 0x80000000) != 0)
      {

        v99 = &unk_287145568;
      }
    }

    else
    {
      v99 = &unk_287145580;
      v82 = 1;
    }

    v100 = PLLogCommon(v78);
    if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109634;
      *v159 = v138;
      *&v159[4] = 2112;
      *&v159[6] = v99;
      *&v159[14] = 2048;
      *&v159[16] = v82;
      _os_log_debug_impl(&dword_25EE51000, v100, OS_LOG_TYPE_DEBUG, "i:%d, %@, %lu", buf, 0x1Cu);
    }

    v144 = v99;

    if ((v82 & 1) == 0 && v140 != -1)
    {
      v101 = v138 - v140;
      if ((v138 - v140 - 2) <= 3)
      {
        v102 = [v134 objectAtIndexedSubscript:v140];
        v103 = [v102 objectAtIndexedSubscript:0];
        [v103 doubleValue];
        v105 = v104;

        [v144 doubleValue];
        v107 = v106;
        v108 = [v134 objectAtIndexedSubscript:v140];
        v109 = [v108 objectAtIndexedSubscript:1];
        intValue4 = [v109 intValue];

        if (v140 + 1 < v138)
        {
          v111 = intValue4;
          v112 = (v107 - v105) / v101;
          v113 = v140 + 1;
          v114 = 1;
          do
          {
            v115 = [MEMORY[0x277CCABB0] numberWithDouble:floor(v105 + v112 * v114)];
            v157[0] = v115;
            v111 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v82 & v111];
            v157[1] = v111;
            v117 = [MEMORY[0x277CBEA60] arrayWithObjects:v157 count:2];

            [v134 setObject:v117 atIndexedSubscript:v113];
            ++v113;
            ++v114;
          }

          while (v101 != v114);
        }
      }
    }

    v118 = v138;
    if (v82)
    {
      v119 = v140;
    }

    else
    {
      v119 = v138;
    }

    v140 = v119;
    v120 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v144, "intValue")}];
    v156[0] = v120;
    v121 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v82];
    v156[1] = v121;
    v122 = [MEMORY[0x277CBEA60] arrayWithObjects:v156 count:2];

    [v134 addObject:v122];
    v71 = [v137 dateByAddingTimeInterval:900.0];

    ++v138;
  }

  while (v118 != 95);
  v155[0] = v134;
  v155[1] = v139;
  v127 = [MEMORY[0x277CBEA60] arrayWithObjects:v155 count:2];

  return v127;
}

- (id)screenTimeInRange:(_PLTimeIntervalRange)range withBucketSize:(double)size withNumBuckets:(int)buckets withDataRange:(_PLTimeIntervalRange)dataRange withQueryType:(int)type andBatteryBreakdown:(id)breakdown
{
  length = dataRange.length;
  location = dataRange.location;
  v12 = range.length;
  v13 = range.location;
  v130 = *MEMORY[0x277D85DE8];
  breakdownCopy = breakdown;
  v14 = v13 + -1800.0;
  v15 = location + length;
  if (location >= v13 + -1800.0 || v15 <= v14)
  {
    v20 = v12 + v14;
    if (v14 >= location || v20 <= location)
    {
      v18 = 0.0;
      if (location != v14 || length <= 0.0)
      {
        v19 = 0.0;
        goto LABEL_20;
      }

      v19 = 0.0;
      if (v12 <= 0.0)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    v20 = v12 + v14;
  }

  if (location >= v14)
  {
    v18 = location;
  }

  else
  {
    v18 = v14;
  }

  if (v15 >= v20)
  {
    v15 = v20;
  }

  v19 = v15 - v18;
LABEL_20:
  v21 = [(PLOperator *)PLAppTimeService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"UsageTime", v15, v20];
  v22 = objc_msgSend_storage(self);
  v101 = v21;
  v23 = [v22 entriesForKey:v21 inTimeRange:0 withFilters:{v18, v19}];

  v25 = PLLogCommon(v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v25, OS_LOG_TYPE_INFO, "Creating screen times", buf, 2u);
  }

  v26 = objc_opt_new();
  v109 = objc_opt_new();
  v27 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v12 + v14];
  v104 = v23;
  selfCopy2 = self;
  v102 = v26;
  if (buckets < 1)
  {
    v78 = 0;
    v77 = 0.0;
    v76 = 0.0;
  }

  else
  {
    v112 = 0;
    v113 = 0;
    v111 = 0;
    bucketsCopy = buckets;
    do
    {
      v29 = [v27 dateByAddingTimeInterval:-size];
      v30 = v27;
      [v29 timeIntervalSince1970];
      v32 = v31;
      [v30 timeIntervalSince1970];
      v34 = v33;

      v35 = v34 - v32;
      v36 = [(PLBatteryUIService *)selfCopy2 entriesInRange:v23 fromEntries:v32, v35];
      v37 = PLLogCommon(v36);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        v71 = MEMORY[0x277CCACA8];
        v72 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v32];
        v73 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v32 + v35];
        v74 = [v71 stringWithFormat:@"Start: %@, End %@", v72, v73];

        v26 = v102;
        v75 = [v36 count];
        *buf = 67109634;
        v126 = v113;
        v127 = 2112;
        *v128 = v74;
        *&v128[8] = 2048;
        v129 = v75;
        _os_log_debug_impl(&dword_25EE51000, v37, OS_LOG_TYPE_DEBUG, "Bucket %d range: %@ with %lu entries in range", buf, 0x1Cu);
      }

      v38 = [v36 count];
      v39 = PLLogCommon(v38);
      v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG);
      if (v38)
      {
        if (v40)
        {
          *buf = 67109632;
          v126 = v113;
          v127 = 1024;
          *v128 = 0;
          *&v128[4] = 1024;
          *&v128[6] = 0;
          _os_log_debug_impl(&dword_25EE51000, v39, OS_LOG_TYPE_DEBUG, "Start of bucket %d On:%d Off:%d", buf, 0x14u);
        }

        v110 = v30;

        v117 = 0u;
        v118 = 0u;
        v115 = 0u;
        v116 = 0u;
        v41 = v36;
        v42 = [v41 countByEnumeratingWithState:&v115 objects:v124 count:16];
        if (v42)
        {
          v43 = v42;
          v106 = v36;
          v44 = 0;
          v45 = 0;
          v46 = *v116;
          do
          {
            for (i = 0; i != v43; ++i)
            {
              if (*v116 != v46)
              {
                objc_enumerationMutation(v41);
              }

              v48 = *(*(&v115 + 1) + 8 * i);
              v49 = [v48 objectForKeyedSubscript:@"ScreenOn"];
              if (v49)
              {
                v50 = [v48 objectForKeyedSubscript:@"ScreenOn"];
                v45 += [v50 intValue];
              }

              v51 = [v48 objectForKeyedSubscript:@"ScreenOff"];
              if (v51)
              {
                v52 = [v48 objectForKeyedSubscript:@"ScreenOff"];
                v44 += [v52 intValue];
              }

              v54 = PLLogCommon(v53);
              if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
              {
                *buf = 67109888;
                v126 = v113;
                v127 = 1024;
                *v128 = v45;
                *&v128[4] = 1024;
                *&v128[6] = v44;
                LOWORD(v129) = 1024;
                *(&v129 + 2) = v44 + v45;
                _os_log_debug_impl(&dword_25EE51000, v54, OS_LOG_TYPE_DEBUG, "Bucket %d On:%d Off:%d Total:%d", buf, 0x1Au);
              }
            }

            v43 = [v41 countByEnumeratingWithState:&v115 objects:v124 count:16];
          }

          while (v43);
          v55 = (v44 + v45);
          v26 = v102;
          v36 = v106;
        }

        else
        {
          v44 = 0;
          v45 = 0;
          v55 = 0.0;
        }

        if (v55 <= size)
        {
          v58 = v36;
        }

        else
        {
          v45 = (v45 * size / v55);
          v44 = (v44 * size / v55);
          v57 = PLLogCommon(v56);
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109376;
            v126 = v45;
            v127 = 1024;
            *v128 = v44;
            _os_log_debug_impl(&dword_25EE51000, v57, OS_LOG_TYPE_DEBUG, "Normalized On:%d Off:%d", buf, 0xEu);
          }

          v58 = v36;
        }

        HIDWORD(v112) += v45;
        LODWORD(v112) = v44 + v112;
        v59 = [breakdownCopy objectForKeyedSubscript:@"PLBatteryUIQueryRangeDayTapKey"];
        v113 = [v59 objectAtIndexedSubscript:23 - v113];
        v61 = [v113 objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];

        v62 = v45;
        selfCopy2 = self;
        [(PLBatteryUIService *)self adjustScreenOnTimeSecsWithGraphValue:type queryType:v61 andBreakdownEntries:v62];
        v64 = v63;
        [(PLBatteryUIService *)self adjustScreenOffTimeSecsWithGraphValue:type withGraphScreenOnSecs:v61 queryType:v44 andBreakdownEntries:v64];
        v66 = v65;
        v67 = [MEMORY[0x277CCABB0] numberWithInt:v64];
        [v26 addObject:v67];

        v68 = [MEMORY[0x277CCABB0] numberWithInt:v66];
        [v109 addObject:v68];

        v70 = PLLogCommon(v69);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109632;
          v126 = v113;
          v127 = 1024;
          *v128 = HIDWORD(v112);
          *&v128[4] = 1024;
          *&v128[6] = v112;
          _os_log_debug_impl(&dword_25EE51000, v70, OS_LOG_TYPE_DEBUG, "Bucket %d Totals so far on:%d off:%d", buf, 0x14u);
        }

        v111 = (v111 + 1);

        v30 = v110;
        v36 = v58;
        v23 = v104;
      }

      else
      {
        if (v40)
        {
          *buf = 67109632;
          v126 = v113;
          v127 = 1024;
          *v128 = HIDWORD(v112);
          *&v128[4] = 1024;
          *&v128[6] = v112;
          _os_log_debug_impl(&dword_25EE51000, v39, OS_LOG_TYPE_DEBUG, "Not enough info in bucket %d, total on:%d off:%d", buf, 0x14u);
        }

        [v26 addObject:&unk_287145580];
        [v109 addObject:&unk_287145580];
      }

      v27 = [v30 dateByAddingTimeInterval:-size];

      ++v113;
    }

    while (v113 != bucketsCopy);
    v76 = SHIDWORD(v112);
    v77 = v112;
    v78 = v111;
  }

  ADClientSetValueForScalarKey();
  v79 = objc_opt_new();
  [v79 setObject:@"24hr" forKeyedSubscript:@"duration"];
  v80 = [MEMORY[0x277CCABB0] numberWithInt:v78];
  [v79 setObject:v80 forKeyedSubscript:@"numBuckets"];

  v114 = v79;
  v81 = AnalyticsSendEventLazy();
  v82 = PLLogCommon(v81);
  if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v126 = v78;
    _os_log_impl(&dword_25EE51000, v82, OS_LOG_TYPE_INFO, "Total screen buckets with info: %d", buf, 8u);
  }

  v84 = PLLogCommon(v83);
  if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIService screenTimeInRange:withBucketSize:withNumBuckets:withDataRange:withQueryType:andBatteryBreakdown:];
  }

  v85 = [breakdownCopy objectForKeyedSubscript:@"PLBatteryUIQueryRangeDayKey"];
  v86 = [v85 objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];

  [(PLBatteryUIService *)self adjustScreenOnTimeSecsWithGraphValue:type queryType:v86 andBreakdownEntries:v76];
  v88 = v87;
  [(PLBatteryUIService *)self adjustScreenOffTimeSecsWithGraphValue:type withGraphScreenOnSecs:v86 queryType:v77 andBreakdownEntries:v88];
  v90 = v89;
  v122[0] = @"PLBatteryUIGraphHourly";
  reverseObjectEnumerator = [v26 reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];
  v122[1] = @"PLBatteryUIGraphTotal";
  v123[0] = allObjects;
  v93 = [MEMORY[0x277CCABB0] numberWithInt:v88];
  v123[1] = v93;
  v94 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v123 forKeys:v122 count:2];

  v120[0] = @"PLBatteryUIGraphHourly";
  reverseObjectEnumerator2 = [v109 reverseObjectEnumerator];
  allObjects2 = [reverseObjectEnumerator2 allObjects];
  v120[1] = @"PLBatteryUIGraphTotal";
  v121[0] = allObjects2;
  v97 = [MEMORY[0x277CCABB0] numberWithInt:v90];
  v121[1] = v97;
  v98 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v121 forKeys:v120 count:2];

  v119[0] = v94;
  v119[1] = v98;
  v99 = [MEMORY[0x277CBEA60] arrayWithObjects:v119 count:2];

  return v99;
}

- (id)entriesInRange:(_PLTimeIntervalRange)range fromEntries:(id)entries
{
  length = range.length;
  location = range.location;
  v26 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  v7 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = entriesCopy;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    v12 = location + length;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        entryDate = [v14 entryDate];
        if (entryDate)
        {
          v16 = entryDate;
          [entryDate timeIntervalSince1970];
          v18 = v17;

          if (location <= v18 && v18 < v12)
          {
            [v7 addObject:v14];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)lastXDaysWithRange:(_PLTimeIntervalRange)range withDataRange:(_PLTimeIntervalRange)dataRange withQueryType:(int)type andBatteryBreakdown:(id)breakdown
{
  length = dataRange.length;
  location = dataRange.location;
  v8 = range.length;
  v9 = range.location;
  v129 = *MEMORY[0x277D85DE8];
  breakdownCopy = breakdown;
  v10 = v9 + -1800.0;
  v11 = v8 + v9 + -1800.0;
  v12 = v10 >= location || v11 <= location;
  if (!v12)
  {
    v16 = location + length;
LABEL_16:
    if (v10 >= location)
    {
      v14 = v10;
    }

    else
    {
      v14 = location;
    }

    if (v11 >= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v11;
    }

    v15 = v17 - v14;
    goto LABEL_23;
  }

  v16 = location + length;
  if (location < v10 && v16 > v10)
  {
    goto LABEL_16;
  }

  v14 = 0.0;
  if (v10 != location || v8 <= 0.0)
  {
    v15 = 0.0;
    goto LABEL_23;
  }

  v12 = length <= 0.0;
  v15 = 0.0;
  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_23:
  v18 = *MEMORY[0x277D3F5B8];
  v19 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"UILevel"];
  v20 = objc_msgSend_storage(self);
  v103 = [v20 entriesForKey:v19 inTimeRange:0 withFilters:{v14, v15}];

  v21 = [(PLOperator *)PLAppTimeService entryKeyForType:v18 andName:@"UsageTime"];
  v22 = objc_msgSend_storage(self);
  v98 = v21;
  v102 = [v22 entriesForKey:v21 inTimeRange:0 withFilters:{v14, v15}];

  v24 = PLLogCommon(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v24, OS_LOG_TYPE_INFO, "Computing lastX days data", buf, 2u);
  }

  v26 = PLLogCommon(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIService lastXDaysWithRange:v102 withDataRange:v103 withQueryType:? andBatteryBreakdown:?];
  }

  v100 = objc_opt_new();
  v27 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v11];
  v28 = PLLogCommon(v27);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIService lastXDaysWithRange:withDataRange:withQueryType:andBatteryBreakdown:];
  }

  v108 = 0;
  v29 = 0;
  do
  {
    v30 = [v27 dateByAddingTimeInterval:-86400.0];
    v31 = v27;
    [v30 timeIntervalSince1970];
    v33 = v32;
    [v31 timeIntervalSince1970];
    v35 = v34;
    v106 = v31;

    v36 = v35 - v33;
    v38 = PLLogCommon(v37);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      v89 = MEMORY[0x277CCACA8];
      v90 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v33];
      v91 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v33 + v36];
      v92 = [v89 stringWithFormat:@"Start: %@, End %@", v90, v91];

      *buf = 67109378;
      *v128 = v108;
      *&v128[4] = 2112;
      *&v128[6] = v92;
      _os_log_debug_impl(&dword_25EE51000, v38, OS_LOG_TYPE_DEBUG, "Calculating day %d range: %@", buf, 0x12u);
    }

    v39 = [(PLBatteryUIService *)self entriesInRange:v103 fromEntries:v33, v36];
    v40 = [(PLBatteryUIService *)self entriesInRange:v102 fromEntries:v33, v36];
    v41 = PLLogCommon(v40);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      v93 = [v39 count];
      v94 = [v40 count];
      *buf = 134218240;
      *v128 = v93;
      *&v128[8] = 2048;
      *&v128[10] = v94;
      _os_log_debug_impl(&dword_25EE51000, v41, OS_LOG_TYPE_DEBUG, "Entries in range UI: %lu Usage: %lu", buf, 0x16u);
    }

    v42 = [v39 count];
    v109 = v39;
    v105 = v40;
    if (v42 && (v42 = [v40 count]) != 0)
    {
      v110 = v29;
      v119 = 0u;
      v120 = 0u;
      v118 = 0u;
      v117 = 0u;
      v43 = v40;
      v44 = [v43 countByEnumeratingWithState:&v117 objects:v126 count:16];
      if (v44)
      {
        v45 = v44;
        v46 = 0;
        v47 = 0;
        v48 = *v118;
        do
        {
          for (i = 0; i != v45; ++i)
          {
            if (*v118 != v48)
            {
              objc_enumerationMutation(v43);
            }

            v50 = *(*(&v117 + 1) + 8 * i);
            v51 = [v50 objectForKeyedSubscript:@"ScreenOn"];
            if (v51)
            {
              v52 = [v50 objectForKeyedSubscript:@"ScreenOn"];
              v47 += [v52 intValue];
            }

            v53 = [v50 objectForKeyedSubscript:@"ScreenOff"];
            if (v53)
            {
              v54 = [v50 objectForKeyedSubscript:@"ScreenOff"];
              v46 += [v54 intValue];
            }
          }

          v45 = [v43 countByEnumeratingWithState:&v117 objects:v126 count:16];
        }

        while (v45);
      }

      else
      {
        v46 = 0;
        v47 = 0;
      }

      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v59 = v109;
      v60 = [v59 countByEnumeratingWithState:&v113 objects:v125 count:16];
      if (v60)
      {
        v61 = v60;
        v57 = 0;
        v62 = *v114;
        do
        {
          for (j = 0; j != v61; ++j)
          {
            if (*v114 != v62)
            {
              objc_enumerationMutation(v59);
            }

            v64 = *(*(&v113 + 1) + 8 * j);
            v65 = [v64 objectForKeyedSubscript:@"Level"];
            if (v65)
            {
              v66 = [v64 objectForKeyedSubscript:@"Level"];
              v57 = [v66 intValue] + v57;
            }
          }

          v61 = [v59 countByEnumeratingWithState:&v113 objects:v125 count:16];
        }

        while (v61);
      }

      else
      {
        v57 = 0;
      }

      v68 = v47 + v46;
      if (v47 + v46 < 86401)
      {
        v70 = v110;
      }

      else
      {
        v47 = (v47 * 86400.0 / v68);
        v46 = (v46 * 86400.0 / v68);
        v69 = PLLogCommon(v67);
        v70 = v110;
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109376;
          *v128 = v47;
          *&v128[4] = 1024;
          *&v128[6] = v46;
          _os_log_debug_impl(&dword_25EE51000, v69, OS_LOG_TYPE_DEBUG, "Normalized On:%d Off:%d", buf, 0xEu);
        }
      }

      v71 = PLLogCommon(v67);
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109632;
        *v128 = v47;
        *&v128[4] = 1024;
        *&v128[6] = v46;
        *&v128[10] = 1024;
        *&v128[12] = v57;
        _os_log_debug_impl(&dword_25EE51000, v71, OS_LOG_TYPE_DEBUG, "On:%ds Off:%ds UI:%d%%", buf, 0x14u);
      }

      v29 = (v70 + 1);
      v58 = v47;
      v56 = v46;
    }

    else
    {
      v55 = PLLogCommon(v42);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryUIService lastXDaysWithRange:v112 withDataRange:v55 withQueryType:? andBatteryBreakdown:?];
      }

      v56 = -1.0;
      v57 = 0xFFFFFFFFLL;
      v58 = -1.0;
    }

    ADClientSetValueForScalarKey();
    v72 = objc_opt_new();
    [v72 setObject:@"xDay" forKeyedSubscript:@"duration"];
    v73 = [MEMORY[0x277CCABB0] numberWithInt:v29];
    [v72 setObject:v73 forKeyedSubscript:@"numBuckets"];

    v104 = v72;
    v74 = AnalyticsSendEventLazy();
    v75 = PLLogCommon(v74);
    if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *v128 = v29;
      _os_log_impl(&dword_25EE51000, v75, OS_LOG_TYPE_INFO, "Total screen buckets with info: %d", buf, 8u);
    }

    v76 = [breakdownCopy objectForKeyedSubscript:@"PLBatteryUIQueryRangeWeekTapKey"];
    v108 = [v76 objectAtIndexedSubscript:9 - v108];
    v78 = [v108 objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];

    [(PLBatteryUIService *)self adjustScreenOnTimeSecsWithGraphValue:type queryType:v78 andBreakdownEntries:v58];
    v80 = v79;
    [(PLBatteryUIService *)self adjustScreenOffTimeSecsWithGraphValue:type withGraphScreenOnSecs:v78 queryType:v56 andBreakdownEntries:v80];
    v82 = v81;
    v83 = objc_opt_new();
    v123 = @"PLBatteryUIGraphTotal";
    v84 = [MEMORY[0x277CCABB0] numberWithInt:v80];
    v124 = v84;
    v85 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v124 forKeys:&v123 count:1];
    [v83 setObject:v85 forKeyedSubscript:@"PLBatteryUIScreenOnTimeKey"];

    v121 = @"PLBatteryUIGraphTotal";
    v86 = [MEMORY[0x277CCABB0] numberWithInt:v82];
    v122 = v86;
    v87 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v122 forKeys:&v121 count:1];
    [v83 setObject:v87 forKeyedSubscript:@"PLBatteryUIScreenOffTimeKey"];

    v88 = [MEMORY[0x277CCABB0] numberWithInt:v57];
    [v83 setObject:v88 forKeyedSubscript:@"PLBatteryUIEnergyKey"];

    [v100 addObject:v83];
    v27 = [v106 dateByAddingTimeInterval:-86400.0];

    ++v108;
  }

  while (v108 != 10);
  reverseObjectEnumerator = [v100 reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  return allObjects;
}

- (id)modelsForGraphWithDayRange:(_PLTimeIntervalRange)range withXDayRange:(_PLTimeIntervalRange)dayRange withDataRange:(_PLTimeIntervalRange)dataRange withQueryType:(int)type andBatteryBreakdown:(id)breakdown
{
  v7 = *&type;
  length = dataRange.length;
  location = dataRange.location;
  v10 = dayRange.length;
  v11 = dayRange.location;
  v12 = range.length;
  v13 = range.location;
  v28[3] = *MEMORY[0x277D85DE8];
  breakdownCopy = breakdown;
  v16 = objc_opt_new();
  v17 = [(PLBatteryUIService *)self screenTimeInRange:24 withBucketSize:v7 withNumBuckets:breakdownCopy withDataRange:v13 withQueryType:v12 andBatteryBreakdown:3600.0, location, length];
  v18 = [v17 objectAtIndexedSubscript:0];
  [v16 setObject:v18 forKeyedSubscript:@"PLBatteryUIScreenOnTimeKey"];

  v19 = [v17 objectAtIndexedSubscript:1];
  [v16 setObject:v19 forKeyedSubscript:@"PLBatteryUIScreenOffTimeKey"];

  v20 = [(PLBatteryUIService *)self batteryLevelsAndChargingIntervalsInRange:v13 withDataRange:v12, location, length];
  v21 = [v20 objectAtIndexedSubscript:0];
  [v16 setObject:v21 forKeyedSubscript:@"PLBatteryUIBatteryLevelsKey"];

  v22 = [v20 objectAtIndexedSubscript:1];
  [v16 setObject:v22 forKeyedSubscript:@"PLBatteryUIChargingIntervalsKey"];

  v23 = [(PLBatteryUIService *)self lastXDaysWithRange:v7 withDataRange:breakdownCopy withQueryType:v11 andBatteryBreakdown:v10, location, length];

  v27[0] = @"PLBatteryUIErrorCodeKey";
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
  v28[0] = v24;
  v28[1] = v16;
  v27[1] = @"PLBatteryUIGraph24hrs";
  v27[2] = @"PLBatteryUIGraphDays";
  v28[2] = v23;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:3];

  return v25;
}

- (double)adjustScreenOnTimeSecsWithGraphValue:(double)value queryType:(int)type andBreakdownEntries:(id)entries
{
  v26 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  v9 = entriesCopy;
  valueCopy = 0.0;
  if (entriesCopy)
  {
    if ([entriesCopy count])
    {
      valueCopy = value;
      if (!type)
      {
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v11 = v9;
        v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v22;
          valueCopy = 0.0;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v22 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v21 + 1) + 8 * i);
              if ([(PLBatteryUIService *)self isAppEntryValidForAdjustment:v16 withQueryType:0, v21])
              {
                v17 = [v16 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
                [v17 doubleValue];
                [(PLBatteryUIService *)self floorSeconds:?];
                v19 = v18;

                valueCopy = valueCopy + v19;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
          }

          while (v13);
        }

        else
        {
          valueCopy = 0.0;
        }
      }
    }
  }

  return valueCopy;
}

- (double)adjustScreenOffTimeSecsWithGraphValue:(double)value withGraphScreenOnSecs:(double)secs queryType:(int)type andBreakdownEntries:(id)entries
{
  v32 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  v11 = entriesCopy;
  valueCopy = 0.0;
  if (entriesCopy && [entriesCopy count])
  {
    if (type)
    {
      valueCopy = value;
    }

    else
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v13 = v11;
      v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v28;
        v17 = 0.0;
        v18 = 0.0;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v28 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v20 = *(*(&v27 + 1) + 8 * i);
            if ([(PLBatteryUIService *)self isAppEntryValidForAdjustment:v20 withQueryType:0, v27])
            {
              v21 = [v20 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
              [v21 doubleValue];
              v23 = v22;

              [(PLBatteryUIService *)self floorSeconds:v23];
              v18 = v18 + v24;
              if (v23 > v17)
              {
                v17 = v23;
              }
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v15);
      }

      else
      {
        v17 = 0.0;
        v18 = 0.0;
      }

      if (v18 >= value)
      {
        valueCopy2 = value;
      }

      else
      {
        valueCopy2 = v18;
      }

      if (valueCopy2 >= v17 - secs)
      {
        valueCopy = valueCopy2;
      }

      else
      {
        valueCopy = v17 - secs;
      }
    }
  }

  return valueCopy;
}

- (BOOL)isAppEntryValidForAdjustment:(id)adjustment withQueryType:(int)type
{
  adjustmentCopy = adjustment;
  v6 = adjustmentCopy;
  if (type != 3)
  {
    v7 = [adjustmentCopy objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
    [v7 floatValue];
    if ((v8 + 0.5) < 1)
    {
      v9 = [v6 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
      [v9 doubleValue];
      v11 = v10;
      v12 = [v6 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
      [v12 doubleValue];
      v14 = v11 + v13;

      if (v14 < 60.0)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v15 = [v6 objectForKeyedSubscript:@"PLBatteryUIAppTypeKey"];
  if ([v15 intValue] == 5)
  {
  }

  else
  {
    v16 = [v6 objectForKeyedSubscript:@"PLBatteryUIAppTypeKey"];
    intValue = [v16 intValue];

    if (intValue != 2)
    {
      v18 = 1;
      goto LABEL_10;
    }
  }

LABEL_8:
  v18 = 0;
LABEL_10:

  return v18;
}

- (void)removeExcessUpgradePlistFiles
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xEu);
}

void __51__PLBatteryUIService_removeExcessUpgradePlistFiles__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 lastPathComponent];
  v4 = [v3 containsString:@"Upgrade"];

  if (v4)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }
}

void __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)getlastDayRangeWithNow:withNowSystem:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)getDataRangeWithNow:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getDataRangeWithNow:.cold.4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)batteryBreakdownAndGraphWithPayload:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)batteryBreakdownAndGraphWithPayload:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)batteryBreakdownAndGraphWithPayload:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)batteryBreakdownAndGraphWithPayload:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)batteryBreakdownAndGraphWithPayload:.cold.5()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_25EE51000, v0, OS_LOG_TYPE_ERROR, "Failed to copy to folder %@", v1, 0xCu);
}

- (void)batteryBreakdownAndGraphWithPayload:.cold.6()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)getLastChargeData
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)getLPMIntervalsSpanningRange:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getLPMIntervalsSpanningRange:(os_log_t)log .cold.3(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_25EE51000, log, OS_LOG_TYPE_DEBUG, "LPM logged with no change?", buf, 2u);
}

- (void)getLPMIntervalsSpanningRange:.cold.4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getLPMIntervalsSpanningRange:.cold.5()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)batteryLevelsAndChargingIntervalsInRange:(void *)a1 withDataRange:.cold.2(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

- (void)batteryLevelsAndChargingIntervalsInRange:(uint64_t)a1 withDataRange:(uint64_t)a2 .cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_7(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  OUTLINED_FUNCTION_9(&dword_25EE51000, v5, v6, "Found invalid battery entry at %@");
}

- (void)batteryLevelsAndChargingIntervalsInRange:(void *)a1 withDataRange:.cold.4(void *a1)
{
  v2 = [a1 objectAtIndexedSubscript:0];
  v8 = [a1 objectAtIndexedSubscript:1];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)batteryLevelsAndChargingIntervalsInRange:(uint64_t)a1 withDataRange:(uint64_t)a2 .cold.6(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_7(a1 a2)];
  *v3 = 134217984;
  *v2 = v4;
  OUTLINED_FUNCTION_9(&dword_25EE51000, v5, v6, "Found %lu entries in range!");
}

- (void)screenTimeInRange:withBucketSize:withNumBuckets:withDataRange:withQueryType:andBatteryBreakdown:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)lastXDaysWithRange:(void *)a1 withDataRange:(void *)a2 withQueryType:andBatteryBreakdown:.cold.1(void *a1, void *a2)
{
  [a1 count];
  [a2 count];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)lastXDaysWithRange:withDataRange:withQueryType:andBatteryBreakdown:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)lastXDaysWithRange:(os_log_t)log withDataRange:withQueryType:andBatteryBreakdown:.cold.3(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_25EE51000, log, OS_LOG_TYPE_DEBUG, "Not enough info in range!", buf, 2u);
}

@end