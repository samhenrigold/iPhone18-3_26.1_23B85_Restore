@interface PLBBMav13HwMsgParser
+ (id)optimMaskMappings;
- (BOOL)parseData:(id)data;
- (PLBBMav13HwMsgParser)initWithData:(id)data;
- (int)GetClockCount:(_PLMav7BasebandHWStatsClockStateMask *)count;
- (void)SetClocks:(_PLMav7BasebandHWStatsClockStateMask *)clocks oftype:(int)oftype withData:(char *)data;
- (void)logAppsPerfWithLogger:(id)logger;
- (void)logHwRF1xWithLogger:(id)logger;
- (void)logHwRFEnhLTEWithLogger:(id)logger;
- (void)logHwRFEnhWCDMAWithLogger:(id)logger;
- (void)logHwRFGSMWithLogger:(id)logger;
- (void)logHwRFHDRWithLogger:(id)logger;
- (void)logHwRFOOSWithLogger:(id)logger;
- (void)logHwRFTDSWithLogger:(id)logger;
- (void)logLPASSWithLogger:(id)logger;
- (void)logLegacyRFWithLogger:(id)logger usingData:(id *)data forRAT:(unsigned int)t;
- (void)logMPSSWithLogger:(id)logger;
- (void)logPcieWithLogger:(id)logger;
- (void)logPeripheralsWithLogger:(id)logger;
- (void)logProtocolOnlyWithLogger:(id)logger forRAT:(unsigned int)t;
- (void)logProtocolWithLogger:(id)logger container:(id)container state:(id *)state forRAT:(unsigned int)t;
- (void)logRPMWithLogger:(id)logger;
- (void)logSleepVetoWithLogger:(id)logger;
- (void)logWithLogger:(id)logger;
@end

@implementation PLBBMav13HwMsgParser

+ (id)optimMaskMappings
{
  v5[19] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_282C13DA0;
  v4[1] = &unk_282C13DB8;
  v5[0] = @"PROTO_CDMA2K";
  v5[1] = @"PROTO_1xEVDO";
  v4[2] = &unk_282C13DD0;
  v4[3] = &unk_282C13DE8;
  v5[2] = @"PROTO_GSM";
  v5[3] = @"PROTO_WCDMA";
  v4[4] = &unk_282C13E00;
  v4[5] = &unk_282C13E18;
  v5[4] = @"PROTO_LTE";
  v5[5] = @"PROTO_TDSCDMA";
  v4[6] = &unk_282C13E30;
  v4[7] = &unk_282C13E48;
  v5[6] = @"RF_CDMA2K";
  v5[7] = @"RF_1xEVDO";
  v4[8] = &unk_282C13E60;
  v4[9] = &unk_282C13E78;
  v5[8] = @"RF_GSM";
  v5[9] = @"RF_WCDMA";
  v4[10] = &unk_282C13E90;
  v4[11] = &unk_282C13EA8;
  v5[10] = @"RF_LTE";
  v5[11] = @"RF_TDSCDMA";
  v4[12] = &unk_282C13EC0;
  v4[13] = &unk_282C13ED8;
  v5[12] = @"ENH_1x";
  v5[13] = @"ENH_HDR";
  v4[14] = &unk_282C13EF0;
  v4[15] = &unk_282C13F08;
  v5[14] = @"ENH_GSM";
  v5[15] = @"ENH_WCDMA";
  v4[16] = &unk_282C13F20;
  v4[17] = &unk_282C13F38;
  v5[16] = @"ENH_LTE";
  v5[17] = @"ENH_TDSCDMA";
  v4[18] = &unk_282C13F50;
  v5[18] = @"ENH_OOS";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:19];

  return v2;
}

- (PLBBMav13HwMsgParser)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = PLBBMav13HwMsgParser;
  v5 = [(PLMav7BasebandHardwareMessage *)&v9 initWithData:dataCopy];
  v6 = v5;
  if (v5 && ![(PLBBMav13HwMsgParser *)v5 parseData:dataCopy])
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (BOOL)parseData:(id)data
{
  v370 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  bytes = [dataCopy bytes];
  string = [MEMORY[0x277CCAB68] string];
  v6 = string;
  if (*bytes == 129)
  {
    [string appendFormat:@"SeqInd[%x] ", 129];
    bytes += 2;
  }

  [(PLMav4BasebandHardwareMessage *)self setHeader:bytes + 13];
  [v6 appendFormat:@"Sw Rev[%0x %0x] ", bytes[13], bytes[14]];
  [v6 appendFormat:@"Hw Rev[%0x %0x] ", bytes[15], bytes[16]];
  v7 = 0x277D3F000uLL;
  v320 = v6;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    v363[0] = MEMORY[0x277D85DD0];
    v363[1] = 3221225472;
    v363[2] = __34__PLBBMav13HwMsgParser_parseData___block_invoke;
    v363[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v363[4] = v8;
    v9 = v363;
    if (qword_2811F8170 != -1)
    {
      dispatch_once(&qword_2811F8170, v9);
    }

    if (_MergedGlobals_117 == 1)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Header Info: %@", v6];
      v11 = MEMORY[0x277D3F178];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
      lastPathComponent = [v12 lastPathComponent];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser parseData:]"];
      [v11 logMessage:v10 fromFile:lastPathComponent fromFunction:v14 fromLineNumber:84];

      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v365 = v10;
        _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v16 = bytes + 33;
  [(PLMav4BasebandHardwareMessage *)self setLogDuration:([(PLMav4BasebandHardwareMessage *)self header][16] - [(PLMav4BasebandHardwareMessage *)self header][12])];
  if ([(PLMav4BasebandHardwareMessage *)self level])
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v17 = objc_opt_class();
      v362[0] = MEMORY[0x277D85DD0];
      v362[1] = 3221225472;
      v362[2] = __34__PLBBMav13HwMsgParser_parseData___block_invoke_476;
      v362[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v362[4] = v17;
      v18 = v362;
      if (qword_2811F8178 != -1)
      {
        dispatch_once(&qword_2811F8178, v18);
      }

      if (byte_2811F8101 == 1)
      {
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 1: RPM starts at offset %llu", 20];
        v20 = MEMORY[0x277D3F178];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
        lastPathComponent2 = [v21 lastPathComponent];
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser parseData:]"];
        [v20 logMessage:v19 fromFile:lastPathComponent2 fromFunction:v23 fromLineNumber:94];

        v24 = PLLogCommon();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v365 = v19;
          _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v7 = 0x277D3F000;
      }
    }

    [(PLBBMav13HwMsgParser *)self setRpmData:bytes + 33];
    v16 = bytes + 57;
    v25 = 44;
  }

  else
  {
    v25 = 20;
  }

  if ([(PLMav4BasebandHardwareMessage *)self level]>= 2)
  {
    if ([*(v7 + 384) debugEnabled])
    {
      v26 = objc_opt_class();
      v361[0] = MEMORY[0x277D85DD0];
      v361[1] = 3221225472;
      v361[2] = __34__PLBBMav13HwMsgParser_parseData___block_invoke_482;
      v361[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v361[4] = v26;
      v27 = v361;
      if (qword_2811F8180 != -1)
      {
        dispatch_once(&qword_2811F8180, v27);
      }

      if (byte_2811F8102 == 1)
      {
        v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 2: Apps Perf starts at offset %llu", v25];
        v29 = MEMORY[0x277D3F178];
        v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
        lastPathComponent3 = [v30 lastPathComponent];
        v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser parseData:]"];
        [v29 logMessage:v28 fromFile:lastPathComponent3 fromFunction:v32 fromLineNumber:103];

        v33 = PLLogCommon();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v365 = v28;
          _os_log_debug_impl(&dword_21A4C6000, v33, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [(PLBBMav13HwMsgParser *)self setAppsPerf:v16];
    if ([*(v7 + 384) debugEnabled])
    {
      v34 = objc_opt_class();
      v360[0] = MEMORY[0x277D85DD0];
      v360[1] = 3221225472;
      v360[2] = __34__PLBBMav13HwMsgParser_parseData___block_invoke_488;
      v360[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v360[4] = v34;
      v35 = v360;
      if (qword_2811F8188 != -1)
      {
        dispatch_once(&qword_2811F8188, v35);
      }

      if (byte_2811F8103 == 1)
      {
        v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 2: Apps Sleep starts at offset %llu", v25 + 24];
        v37 = MEMORY[0x277D3F178];
        v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
        lastPathComponent4 = [v38 lastPathComponent];
        v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser parseData:]"];
        [v37 logMessage:v36 fromFile:lastPathComponent4 fromFunction:v40 fromLineNumber:108];

        v41 = PLLogCommon();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v365 = v36;
          _os_log_debug_impl(&dword_21A4C6000, v41, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [(PLBBMav13HwMsgParser *)self setAppsSleep:v16 + 24];
    v16 += 36;
    v25 += 36;
  }

  if ([(PLMav4BasebandHardwareMessage *)self level]>= 3)
  {
    if ([*(v7 + 384) debugEnabled])
    {
      v42 = objc_opt_class();
      v359[0] = MEMORY[0x277D85DD0];
      v359[1] = 3221225472;
      v359[2] = __34__PLBBMav13HwMsgParser_parseData___block_invoke_494;
      v359[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v359[4] = v42;
      v43 = v359;
      if (qword_2811F8190 != -1)
      {
        dispatch_once(&qword_2811F8190, v43);
      }

      if (byte_2811F8104 == 1)
      {
        v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 3: PCIE stats starts at offset %llu", v25];
        v45 = MEMORY[0x277D3F178];
        v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
        lastPathComponent5 = [v46 lastPathComponent];
        v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser parseData:]"];
        [v45 logMessage:v44 fromFile:lastPathComponent5 fromFunction:v48 fromLineNumber:117];

        v49 = PLLogCommon();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v365 = v44;
          _os_log_debug_impl(&dword_21A4C6000, v49, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [(PLBBMav13HwMsgParser *)self setPcieState:v16];
    v16 += 12;
    v25 += 12;
  }

  if ([(PLMav4BasebandHardwareMessage *)self level]>= 4)
  {
    if ([*(v7 + 384) debugEnabled])
    {
      v50 = objc_opt_class();
      v358[0] = MEMORY[0x277D85DD0];
      v358[1] = 3221225472;
      v358[2] = __34__PLBBMav13HwMsgParser_parseData___block_invoke_500;
      v358[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v358[4] = v50;
      v51 = v358;
      if (qword_2811F8198 != -1)
      {
        dispatch_once(&qword_2811F8198, v51);
      }

      if (byte_2811F8105 == 1)
      {
        v52 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 4: LPASS stats starts at offset %llu", v25];
        v53 = MEMORY[0x277D3F178];
        v54 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
        lastPathComponent6 = [v54 lastPathComponent];
        v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser parseData:]"];
        [v53 logMessage:v52 fromFile:lastPathComponent6 fromFunction:v56 fromLineNumber:126];

        v57 = PLLogCommon();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v365 = v52;
          _os_log_debug_impl(&dword_21A4C6000, v57, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [(PLBBMav13HwMsgParser *)self setLpassState:v16];
    v16 += 8;
    v25 += 8;
  }

  if ([(PLMav4BasebandHardwareMessage *)self level]>= 5)
  {
    if ([*(v7 + 384) debugEnabled])
    {
      v58 = objc_opt_class();
      v357[0] = MEMORY[0x277D85DD0];
      v357[1] = 3221225472;
      v357[2] = __34__PLBBMav13HwMsgParser_parseData___block_invoke_506;
      v357[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v357[4] = v58;
      v59 = v357;
      if (qword_2811F81A0 != -1)
      {
        dispatch_once(&qword_2811F81A0, v59);
      }

      if (byte_2811F8106 == 1)
      {
        v60 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 5: Apps Sleep veto stats starts at offset %llu", v25];
        v61 = MEMORY[0x277D3F178];
        v62 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
        lastPathComponent7 = [v62 lastPathComponent];
        v64 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser parseData:]"];
        [v61 logMessage:v60 fromFile:lastPathComponent7 fromFunction:v64 fromLineNumber:135];

        v65 = PLLogCommon();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v365 = v60;
          _os_log_debug_impl(&dword_21A4C6000, v65, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [(PLBBMav13HwMsgParser *)self setAppsSleepVeto:v16];
    if ([*(v7 + 384) debugEnabled])
    {
      v66 = objc_opt_class();
      v356[0] = MEMORY[0x277D85DD0];
      v356[1] = 3221225472;
      v356[2] = __34__PLBBMav13HwMsgParser_parseData___block_invoke_512;
      v356[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v356[4] = v66;
      v67 = v356;
      if (qword_2811F81A8 != -1)
      {
        dispatch_once(&qword_2811F81A8, v67);
      }

      if (byte_2811F8107 == 1)
      {
        v68 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 5: MPSS Sleep veto stats starts at offset %llu", v25 + 20];
        v69 = MEMORY[0x277D3F178];
        v70 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
        lastPathComponent8 = [v70 lastPathComponent];
        v72 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser parseData:]"];
        [v69 logMessage:v68 fromFile:lastPathComponent8 fromFunction:v72 fromLineNumber:140];

        v73 = PLLogCommon();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v365 = v68;
          _os_log_debug_impl(&dword_21A4C6000, v73, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [(PLBBMav13HwMsgParser *)self setMpssSleepVeto:v16 + 20];
    if ([*(v7 + 384) debugEnabled])
    {
      v74 = objc_opt_class();
      v355[0] = MEMORY[0x277D85DD0];
      v355[1] = 3221225472;
      v355[2] = __34__PLBBMav13HwMsgParser_parseData___block_invoke_518;
      v355[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v355[4] = v74;
      v75 = v355;
      if (qword_2811F81B0 != -1)
      {
        dispatch_once(&qword_2811F81B0, v75);
      }

      if (byte_2811F8108 == 1)
      {
        v76 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 5: QDSP Sleep veto stats starts at offset %llu", v25 + 88];
        v77 = MEMORY[0x277D3F178];
        v78 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
        lastPathComponent9 = [v78 lastPathComponent];
        v80 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser parseData:]"];
        [v77 logMessage:v76 fromFile:lastPathComponent9 fromFunction:v80 fromLineNumber:145];

        v81 = PLLogCommon();
        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v365 = v76;
          _os_log_debug_impl(&dword_21A4C6000, v81, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [(PLBBMav13HwMsgParser *)self setQdspSpeed:v16 + 88];
    if ([*(v7 + 384) debugEnabled])
    {
      v82 = objc_opt_class();
      v354[0] = MEMORY[0x277D85DD0];
      v354[1] = 3221225472;
      v354[2] = __34__PLBBMav13HwMsgParser_parseData___block_invoke_524;
      v354[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v354[4] = v82;
      v83 = v354;
      if (qword_2811F81B8 != -1)
      {
        dispatch_once(&qword_2811F81B8, v83);
      }

      if (byte_2811F8109 == 1)
      {
        v84 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 5: MPSS Sleep stats starts at offset %llu", v25 + 136];
        v85 = MEMORY[0x277D3F178];
        v86 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
        lastPathComponent10 = [v86 lastPathComponent];
        v88 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser parseData:]"];
        [v85 logMessage:v84 fromFile:lastPathComponent10 fromFunction:v88 fromLineNumber:150];

        v89 = PLLogCommon();
        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v365 = v84;
          _os_log_debug_impl(&dword_21A4C6000, v89, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [(PLBBMav13HwMsgParser *)self setMpssSleep:v16 + 136];
    if ([*(v7 + 384) debugEnabled])
    {
      v90 = objc_opt_class();
      v353[0] = MEMORY[0x277D85DD0];
      v353[1] = 3221225472;
      v353[2] = __34__PLBBMav13HwMsgParser_parseData___block_invoke_530;
      v353[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v353[4] = v90;
      v91 = v353;
      if (qword_2811F81C0 != -1)
      {
        dispatch_once(&qword_2811F81C0, v91);
      }

      if (byte_2811F810A == 1)
      {
        v92 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 5: GPS stats starts at offset %llu", v25 + 148];
        v93 = MEMORY[0x277D3F178];
        v94 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
        lastPathComponent11 = [v94 lastPathComponent];
        v96 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser parseData:]"];
        [v93 logMessage:v92 fromFile:lastPathComponent11 fromFunction:v96 fromLineNumber:155];

        v97 = PLLogCommon();
        if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v365 = v92;
          _os_log_debug_impl(&dword_21A4C6000, v97, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [(PLBBMav13HwMsgParser *)self setGpsState:v16 + 148];
    if ([*(v7 + 384) debugEnabled])
    {
      v98 = objc_opt_class();
      v352[0] = MEMORY[0x277D85DD0];
      v352[1] = 3221225472;
      v352[2] = __34__PLBBMav13HwMsgParser_parseData___block_invoke_536;
      v352[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v352[4] = v98;
      v99 = v352;
      if (qword_2811F81C8 != -1)
      {
        dispatch_once(&qword_2811F81C8, v99);
      }

      if (byte_2811F810B == 1)
      {
        v100 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 5: GPS DPO stats starts at offset %llu", v25 + 156];
        v101 = MEMORY[0x277D3F178];
        v102 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
        lastPathComponent12 = [v102 lastPathComponent];
        v104 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser parseData:]"];
        [v101 logMessage:v100 fromFile:lastPathComponent12 fromFunction:v104 fromLineNumber:160];

        v105 = PLLogCommon();
        if (os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v365 = v100;
          _os_log_debug_impl(&dword_21A4C6000, v105, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [(PLBBMav13HwMsgParser *)self setGpsDpoState:v16 + 156];
    if ([*(v7 + 384) debugEnabled])
    {
      v106 = objc_opt_class();
      v351[0] = MEMORY[0x277D85DD0];
      v351[1] = 3221225472;
      v351[2] = __34__PLBBMav13HwMsgParser_parseData___block_invoke_542;
      v351[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v351[4] = v106;
      v107 = v351;
      if (qword_2811F81D0 != -1)
      {
        dispatch_once(&qword_2811F81D0, v107);
      }

      if (byte_2811F810C == 1)
      {
        v108 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 5: GPS DPO bin stats starts at offset %llu", v25 + 164];
        v109 = MEMORY[0x277D3F178];
        v110 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
        lastPathComponent13 = [v110 lastPathComponent];
        v112 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser parseData:]"];
        [v109 logMessage:v108 fromFile:lastPathComponent13 fromFunction:v112 fromLineNumber:165];

        v113 = PLLogCommon();
        if (os_log_type_enabled(v113, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v365 = v108;
          _os_log_debug_impl(&dword_21A4C6000, v113, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [(PLBBMav13HwMsgParser *)self setGpsDpoBins:v16 + 164];
    v16 += 188;
    v25 += 188;
  }

  if ([(PLMav4BasebandHardwareMessage *)self level]>= 6)
  {
    if ([*(v7 + 384) debugEnabled])
    {
      v114 = objc_opt_class();
      v350[0] = MEMORY[0x277D85DD0];
      v350[1] = 3221225472;
      v350[2] = __34__PLBBMav13HwMsgParser_parseData___block_invoke_548;
      v350[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v350[4] = v114;
      v115 = v350;
      if (qword_2811F81D8 != -1)
      {
        dispatch_once(&qword_2811F81D8, v115);
      }

      if (byte_2811F810D == 1)
      {
        v116 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 6: MCPM Sleep veto starts at offset %llu", v25];
        v117 = MEMORY[0x277D3F178];
        v118 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
        lastPathComponent14 = [v118 lastPathComponent];
        v120 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser parseData:]"];
        [v117 logMessage:v116 fromFile:lastPathComponent14 fromFunction:v120 fromLineNumber:174];

        v121 = PLLogCommon();
        if (os_log_type_enabled(v121, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v365 = v116;
          _os_log_debug_impl(&dword_21A4C6000, v121, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [(PLBBMav13HwMsgParser *)self setMcpmSleepVeto:v16];
    if ([*(v7 + 384) debugEnabled])
    {
      v122 = objc_opt_class();
      v349[0] = MEMORY[0x277D85DD0];
      v349[1] = 3221225472;
      v349[2] = __34__PLBBMav13HwMsgParser_parseData___block_invoke_554;
      v349[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v349[4] = v122;
      v123 = v349;
      if (qword_2811F81E0 != -1)
      {
        dispatch_once(&qword_2811F81E0, v123);
      }

      if (byte_2811F810E == 1)
      {
        v124 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 6: Protocol Active starts at offset %llu", v25 + 52];
        v125 = MEMORY[0x277D3F178];
        v126 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
        lastPathComponent15 = [v126 lastPathComponent];
        v128 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser parseData:]"];
        [v125 logMessage:v124 fromFile:lastPathComponent15 fromFunction:v128 fromLineNumber:179];

        v129 = PLLogCommon();
        if (os_log_type_enabled(v129, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v365 = v124;
          _os_log_debug_impl(&dword_21A4C6000, v129, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [(PLBBMav13HwMsgParser *)self setProtocolActive:v16 + 52];
    if ([*(v7 + 384) debugEnabled])
    {
      v130 = objc_opt_class();
      v348[0] = MEMORY[0x277D85DD0];
      v348[1] = 3221225472;
      v348[2] = __34__PLBBMav13HwMsgParser_parseData___block_invoke_560;
      v348[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v348[4] = v130;
      v131 = v348;
      if (qword_2811F81E8 != -1)
      {
        dispatch_once(&qword_2811F81E8, v131);
      }

      if (byte_2811F810F == 1)
      {
        v132 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 6: Optim mask starts at offset %llu", v25 + 76];
        v133 = MEMORY[0x277D3F178];
        v134 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
        lastPathComponent16 = [v134 lastPathComponent];
        v136 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser parseData:]"];
        [v133 logMessage:v132 fromFile:lastPathComponent16 fromFunction:v136 fromLineNumber:184];

        v137 = PLLogCommon();
        if (os_log_type_enabled(v137, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v365 = v132;
          _os_log_debug_impl(&dword_21A4C6000, v137, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v323 = v25;
    [(PLBBMav13HwMsgParser *)self setOptimMaskArray:v16 + 76];
    v138 = objc_opt_class();
    v347[0] = MEMORY[0x277D85DD0];
    v347[1] = 3221225472;
    v347[2] = __34__PLBBMav13HwMsgParser_parseData___block_invoke_566;
    v347[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v347[4] = v138;
    v139 = v347;
    if (qword_2811F81F0 != -1)
    {
      dispatch_once(&qword_2811F81F0, v139);
    }

    if (byte_2811F8110 == 1)
    {
      v140 = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%x", *-[PLBBMav13HwMsgParser optimMaskArray](self, "optimMaskArray")];
      v141 = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%x", -[PLBBMav13HwMsgParser optimMaskArray](self, "optimMaskArray")[1]];
      v142 = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%x", -[PLBBMav13HwMsgParser optimMaskArray](self, "optimMaskArray")[2]];
      v143 = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%x", -[PLBBMav13HwMsgParser optimMaskArray](self, "optimMaskArray")[3]];
      v319 = v140;
      v143 = [MEMORY[0x277CCACA8] stringWithFormat:@"Optim Mask [%@ %@ %@ %@]", v140, v141, v142, v143];
      v145 = MEMORY[0x277D3F178];
      v146 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
      lastPathComponent17 = [v146 lastPathComponent];
      v148 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser parseData:]"];
      [v145 logMessage:v143 fromFile:lastPathComponent17 fromFunction:v148 fromLineNumber:192];

      v149 = PLLogCommon();
      if (os_log_type_enabled(v149, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v365 = v143;
        _os_log_debug_impl(&dword_21A4C6000, v149, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v7 = 0x277D3F000uLL;
    }

    v150 = v323 + 80;
    if ([*(v7 + 384) debugEnabled])
    {
      v151 = objc_opt_class();
      v346[0] = MEMORY[0x277D85DD0];
      v346[1] = 3221225472;
      v346[2] = __34__PLBBMav13HwMsgParser_parseData___block_invoke_575;
      v346[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v346[4] = v151;
      v152 = v346;
      if (qword_2811F81F8 != -1)
      {
        dispatch_once(&qword_2811F81F8, v152);
      }

      if (byte_2811F8111 == 1)
      {
        v150 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 6: Protocol State starts at offset %llu", v150];
        v154 = MEMORY[0x277D3F178];
        v155 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
        lastPathComponent18 = [v155 lastPathComponent];
        v157 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser parseData:]"];
        [v154 logMessage:v150 fromFile:lastPathComponent18 fromFunction:v157 fromLineNumber:196];

        v158 = PLLogCommon();
        if (os_log_type_enabled(v158, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v365 = v150;
          _os_log_debug_impl(&dword_21A4C6000, v158, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v16 += 80;
    if ([*(v7 + 384) debugEnabled])
    {
      v159 = objc_opt_class();
      v345[0] = MEMORY[0x277D85DD0];
      v345[1] = 3221225472;
      v345[2] = __34__PLBBMav13HwMsgParser_parseData___block_invoke_581;
      v345[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v345[4] = v159;
      v160 = v345;
      if (qword_2811F8200 != -1)
      {
        dispatch_once(&qword_2811F8200, v160);
      }

      if (byte_2811F8112 == 1)
      {
        v161 = [MEMORY[0x277CCACA8] stringWithFormat:@"Level 6: Optim mask value [0x%x]", *-[PLBBMav13HwMsgParser optimMaskArray](self, "optimMaskArray")];
        v162 = MEMORY[0x277D3F178];
        v163 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
        lastPathComponent19 = [v163 lastPathComponent];
        v165 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser parseData:]"];
        [v162 logMessage:v161 fromFile:lastPathComponent19 fromFunction:v165 fromLineNumber:201];

        v166 = PLLogCommon();
        if (os_log_type_enabled(v166, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v365 = v161;
          _os_log_debug_impl(&dword_21A4C6000, v166, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    +[PLBBMav13HwMsgParser optimMaskMappings];
    v322 = v167 = 0;
    do
    {
      if ((*[(PLBBMav13HwMsgParser *)self optimMaskArray]>> v167))
      {
        if ([*(v7 + 384) debugEnabled])
        {
          v168 = objc_opt_class();
          v344[0] = MEMORY[0x277D85DD0];
          v344[1] = 3221225472;
          v344[2] = __34__PLBBMav13HwMsgParser_parseData___block_invoke_588;
          v344[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v344[4] = v168;
          v169 = v344;
          if (qword_2811F8208 != -1)
          {
            dispatch_once(&qword_2811F8208, v169);
          }

          if (byte_2811F8113 == 1)
          {
            v170 = MEMORY[0x277CCACA8];
            v171 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v167];
            v172 = [v322 objectForKeyedSubscript:v171];
            v173 = [v170 stringWithFormat:@"Payload %@ is present at offset %llu, pointer %ld", v172, v150, v16];

            v174 = MEMORY[0x277D3F178];
            v175 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
            lastPathComponent20 = [v175 lastPathComponent];
            v177 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser parseData:]"];
            [v174 logMessage:v173 fromFile:lastPathComponent20 fromFunction:v177 fromLineNumber:207];

            v178 = PLLogCommon();
            if (os_log_type_enabled(v178, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v365 = v173;
              _os_log_debug_impl(&dword_21A4C6000, v178, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v7 = 0x277D3F000uLL;
          }
        }

        switch(v167)
        {
          case 1:
            [(PLBBMav13HwMsgParser *)self setProtoStateHDR:v16];
            v150 += 64;
            v16 += 64;
            if (![*(v7 + 384) debugEnabled])
            {
              break;
            }

            v247 = objc_opt_class();
            v342[0] = MEMORY[0x277D85DD0];
            v342[1] = 3221225472;
            v342[2] = __34__PLBBMav13HwMsgParser_parseData___block_invoke_601;
            v342[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v342[4] = v247;
            v248 = v342;
            if (qword_2811F8218 != -1)
            {
              dispatch_once(&qword_2811F8218, v248);
            }

            if (byte_2811F8115 != 1)
            {
              break;
            }

            v181 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 64];
            v249 = MEMORY[0x277D3F178];
            v250 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
            lastPathComponent21 = [v250 lastPathComponent];
            v252 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser parseData:]"];
            [v249 logMessage:v181 fromFile:lastPathComponent21 fromFunction:v252 fromLineNumber:220];

            v186 = PLLogCommon();
            if (!os_log_type_enabled(v186, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_265;
            }

            goto LABEL_264;
          case 2:
            [(PLBBMav13HwMsgParser *)self setProtoStateGSM:v16];
            v150 += 64;
            v16 += 64;
            if (![*(v7 + 384) debugEnabled])
            {
              break;
            }

            v223 = objc_opt_class();
            v341[0] = MEMORY[0x277D85DD0];
            v341[1] = 3221225472;
            v341[2] = __34__PLBBMav13HwMsgParser_parseData___block_invoke_604;
            v341[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v341[4] = v223;
            v224 = v341;
            if (qword_2811F8220 != -1)
            {
              dispatch_once(&qword_2811F8220, v224);
            }

            if (byte_2811F8116 != 1)
            {
              break;
            }

            v181 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 64];
            v225 = MEMORY[0x277D3F178];
            v226 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
            lastPathComponent22 = [v226 lastPathComponent];
            v228 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser parseData:]"];
            [v225 logMessage:v181 fromFile:lastPathComponent22 fromFunction:v228 fromLineNumber:226];

            v186 = PLLogCommon();
            if (os_log_type_enabled(v186, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_264;
            }

            goto LABEL_265;
          case 3:
            [(PLBBMav13HwMsgParser *)self setProtoStateWCDMA:v16];
            v150 += 64;
            v16 += 64;
            if (![*(v7 + 384) debugEnabled])
            {
              break;
            }

            v235 = objc_opt_class();
            v340[0] = MEMORY[0x277D85DD0];
            v340[1] = 3221225472;
            v340[2] = __34__PLBBMav13HwMsgParser_parseData___block_invoke_607;
            v340[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v340[4] = v235;
            v236 = v340;
            if (qword_2811F8228 != -1)
            {
              dispatch_once(&qword_2811F8228, v236);
            }

            if (byte_2811F8117 != 1)
            {
              break;
            }

            v181 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 64];
            v237 = MEMORY[0x277D3F178];
            v238 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
            lastPathComponent23 = [v238 lastPathComponent];
            v240 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser parseData:]"];
            [v237 logMessage:v181 fromFile:lastPathComponent23 fromFunction:v240 fromLineNumber:232];

            v186 = PLLogCommon();
            if (os_log_type_enabled(v186, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_264;
            }

            goto LABEL_265;
          case 4:
            [(PLBBMav13HwMsgParser *)self setProtoStateLTE:v16];
            v150 += 64;
            v16 += 64;
            if (![*(v7 + 384) debugEnabled])
            {
              break;
            }

            v205 = objc_opt_class();
            v339[0] = MEMORY[0x277D85DD0];
            v339[1] = 3221225472;
            v339[2] = __34__PLBBMav13HwMsgParser_parseData___block_invoke_610;
            v339[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v339[4] = v205;
            v206 = v339;
            if (qword_2811F8230 != -1)
            {
              dispatch_once(&qword_2811F8230, v206);
            }

            if (byte_2811F8118 != 1)
            {
              break;
            }

            v181 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 64];
            v207 = MEMORY[0x277D3F178];
            v208 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
            lastPathComponent24 = [v208 lastPathComponent];
            v210 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser parseData:]"];
            [v207 logMessage:v181 fromFile:lastPathComponent24 fromFunction:v210 fromLineNumber:238];

            v186 = PLLogCommon();
            if (os_log_type_enabled(v186, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_264;
            }

            goto LABEL_265;
          case 5:
            [(PLBBMav13HwMsgParser *)self setProtoStateTDS:v16];
            v150 += 64;
            v16 += 64;
            if (![*(v7 + 384) debugEnabled])
            {
              break;
            }

            v259 = objc_opt_class();
            v338[0] = MEMORY[0x277D85DD0];
            v338[1] = 3221225472;
            v338[2] = __34__PLBBMav13HwMsgParser_parseData___block_invoke_613;
            v338[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v338[4] = v259;
            v260 = v338;
            if (qword_2811F8238 != -1)
            {
              dispatch_once(&qword_2811F8238, v260);
            }

            if (byte_2811F8119 != 1)
            {
              break;
            }

            v181 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 64];
            v261 = MEMORY[0x277D3F178];
            v262 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
            lastPathComponent25 = [v262 lastPathComponent];
            v264 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser parseData:]"];
            [v261 logMessage:v181 fromFile:lastPathComponent25 fromFunction:v264 fromLineNumber:244];

            v186 = PLLogCommon();
            if (os_log_type_enabled(v186, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_264;
            }

            goto LABEL_265;
          case 6:
            [(PLBBMav13HwMsgParser *)self setRfDataC2K:v16];
            v150 += 256;
            v16 += 256;
            if (![*(v7 + 384) debugEnabled])
            {
              break;
            }

            v271 = objc_opt_class();
            v337[0] = MEMORY[0x277D85DD0];
            v337[1] = 3221225472;
            v337[2] = __34__PLBBMav13HwMsgParser_parseData___block_invoke_616;
            v337[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v337[4] = v271;
            v272 = v337;
            if (qword_2811F8240 != -1)
            {
              dispatch_once(&qword_2811F8240, v272);
            }

            if (byte_2811F811A != 1)
            {
              break;
            }

            v181 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 256];
            v273 = MEMORY[0x277D3F178];
            v274 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
            lastPathComponent26 = [v274 lastPathComponent];
            v276 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser parseData:]"];
            [v273 logMessage:v181 fromFile:lastPathComponent26 fromFunction:v276 fromLineNumber:250];

            v186 = PLLogCommon();
            if (os_log_type_enabled(v186, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_264;
            }

            goto LABEL_265;
          case 7:
            [(PLBBMav13HwMsgParser *)self setRfData1xEVDO:v16];
            v150 += 256;
            v16 += 256;
            if (![*(v7 + 384) debugEnabled])
            {
              break;
            }

            v241 = objc_opt_class();
            v336[0] = MEMORY[0x277D85DD0];
            v336[1] = 3221225472;
            v336[2] = __34__PLBBMav13HwMsgParser_parseData___block_invoke_619;
            v336[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v336[4] = v241;
            v242 = v336;
            if (qword_2811F8248 != -1)
            {
              dispatch_once(&qword_2811F8248, v242);
            }

            if (byte_2811F811B != 1)
            {
              break;
            }

            v181 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 256];
            v243 = MEMORY[0x277D3F178];
            v244 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
            lastPathComponent27 = [v244 lastPathComponent];
            v246 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser parseData:]"];
            [v243 logMessage:v181 fromFile:lastPathComponent27 fromFunction:v246 fromLineNumber:256];

            v186 = PLLogCommon();
            if (os_log_type_enabled(v186, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_264;
            }

            goto LABEL_265;
          case 8:
            [(PLBBMav13HwMsgParser *)self setRfDataGSM:v16];
            v150 += 256;
            v16 += 256;
            if (![*(v7 + 384) debugEnabled])
            {
              break;
            }

            v283 = objc_opt_class();
            v335[0] = MEMORY[0x277D85DD0];
            v335[1] = 3221225472;
            v335[2] = __34__PLBBMav13HwMsgParser_parseData___block_invoke_622;
            v335[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v335[4] = v283;
            v284 = v335;
            if (qword_2811F8250 != -1)
            {
              dispatch_once(&qword_2811F8250, v284);
            }

            if (byte_2811F811C != 1)
            {
              break;
            }

            v181 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 256];
            v285 = MEMORY[0x277D3F178];
            v286 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
            lastPathComponent28 = [v286 lastPathComponent];
            v288 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser parseData:]"];
            [v285 logMessage:v181 fromFile:lastPathComponent28 fromFunction:v288 fromLineNumber:262];

            v186 = PLLogCommon();
            if (os_log_type_enabled(v186, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_264;
            }

            goto LABEL_265;
          case 9:
            [(PLBBMav13HwMsgParser *)self setRfDataWCDMA:v16];
            v150 += 208;
            v16 += 208;
            if (![*(v7 + 384) debugEnabled])
            {
              break;
            }

            v217 = objc_opt_class();
            v334[0] = MEMORY[0x277D85DD0];
            v334[1] = 3221225472;
            v334[2] = __34__PLBBMav13HwMsgParser_parseData___block_invoke_625;
            v334[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v334[4] = v217;
            v218 = v334;
            if (qword_2811F8258 != -1)
            {
              dispatch_once(&qword_2811F8258, v218);
            }

            if (byte_2811F811D != 1)
            {
              break;
            }

            v181 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 208];
            v219 = MEMORY[0x277D3F178];
            v220 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
            lastPathComponent29 = [v220 lastPathComponent];
            v222 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser parseData:]"];
            [v219 logMessage:v181 fromFile:lastPathComponent29 fromFunction:v222 fromLineNumber:268];

            v186 = PLLogCommon();
            if (os_log_type_enabled(v186, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_264;
            }

            goto LABEL_265;
          case 10:
            [(PLBBMav13HwMsgParser *)self setRfDataLTE:v16];
            v150 += 256;
            v16 += 256;
            if (![*(v7 + 384) debugEnabled])
            {
              break;
            }

            v277 = objc_opt_class();
            v333[0] = MEMORY[0x277D85DD0];
            v333[1] = 3221225472;
            v333[2] = __34__PLBBMav13HwMsgParser_parseData___block_invoke_628;
            v333[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v333[4] = v277;
            v278 = v333;
            if (qword_2811F8260 != -1)
            {
              dispatch_once(&qword_2811F8260, v278);
            }

            if (byte_2811F811E != 1)
            {
              break;
            }

            v181 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 256];
            v279 = MEMORY[0x277D3F178];
            v280 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
            lastPathComponent30 = [v280 lastPathComponent];
            v282 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser parseData:]"];
            [v279 logMessage:v181 fromFile:lastPathComponent30 fromFunction:v282 fromLineNumber:274];

            v186 = PLLogCommon();
            if (os_log_type_enabled(v186, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_264;
            }

            goto LABEL_265;
          case 11:
            [(PLBBMav13HwMsgParser *)self setRfDataTDS:v16];
            v150 += 256;
            v16 += 256;
            if (![*(v7 + 384) debugEnabled])
            {
              break;
            }

            v199 = objc_opt_class();
            v332[0] = MEMORY[0x277D85DD0];
            v332[1] = 3221225472;
            v332[2] = __34__PLBBMav13HwMsgParser_parseData___block_invoke_631;
            v332[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v332[4] = v199;
            v200 = v332;
            if (qword_2811F8268 != -1)
            {
              dispatch_once(&qword_2811F8268, v200);
            }

            if (byte_2811F811F != 1)
            {
              break;
            }

            v181 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 256];
            v201 = MEMORY[0x277D3F178];
            v202 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
            lastPathComponent31 = [v202 lastPathComponent];
            v204 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser parseData:]"];
            [v201 logMessage:v181 fromFile:lastPathComponent31 fromFunction:v204 fromLineNumber:280];

            v186 = PLLogCommon();
            if (os_log_type_enabled(v186, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_264;
            }

            goto LABEL_265;
          case 12:
            [(PLBBMav13HwMsgParser *)self setRfEnhLTE:v16];
            v150 += 576;
            v16 += 576;
            if (![*(v7 + 384) debugEnabled])
            {
              break;
            }

            v211 = objc_opt_class();
            v327[0] = MEMORY[0x277D85DD0];
            v327[1] = 3221225472;
            v327[2] = __34__PLBBMav13HwMsgParser_parseData___block_invoke_646;
            v327[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v327[4] = v211;
            v212 = v327;
            if (qword_2811F8290 != -1)
            {
              dispatch_once(&qword_2811F8290, v212);
            }

            if (byte_2811F8124 != 1)
            {
              break;
            }

            v181 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 576];
            v213 = MEMORY[0x277D3F178];
            v214 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
            lastPathComponent32 = [v214 lastPathComponent];
            v216 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser parseData:]"];
            [v213 logMessage:v181 fromFile:lastPathComponent32 fromFunction:v216 fromLineNumber:310];

            v186 = PLLogCommon();
            if (os_log_type_enabled(v186, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_264;
            }

            goto LABEL_265;
          case 13:
            [(PLBBMav13HwMsgParser *)self setRfEnhWCDMA:v16];
            v150 += 176;
            v16 += 176;
            if (![*(v7 + 384) debugEnabled])
            {
              break;
            }

            v265 = objc_opt_class();
            v328[0] = MEMORY[0x277D85DD0];
            v328[1] = 3221225472;
            v328[2] = __34__PLBBMav13HwMsgParser_parseData___block_invoke_643;
            v328[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v328[4] = v265;
            v266 = v328;
            if (qword_2811F8288 != -1)
            {
              dispatch_once(&qword_2811F8288, v266);
            }

            if (byte_2811F8123 != 1)
            {
              break;
            }

            v181 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 176];
            v267 = MEMORY[0x277D3F178];
            v268 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
            lastPathComponent33 = [v268 lastPathComponent];
            v270 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser parseData:]"];
            [v267 logMessage:v181 fromFile:lastPathComponent33 fromFunction:v270 fromLineNumber:304];

            v186 = PLLogCommon();
            if (os_log_type_enabled(v186, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_264;
            }

            goto LABEL_265;
          case 14:
            [(PLBBMav13HwMsgParser *)self setRfEnhGSM:v16];
            v150 += 20;
            v16 += 20;
            if (![*(v7 + 384) debugEnabled])
            {
              break;
            }

            v193 = objc_opt_class();
            v329[0] = MEMORY[0x277D85DD0];
            v329[1] = 3221225472;
            v329[2] = __34__PLBBMav13HwMsgParser_parseData___block_invoke_640;
            v329[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v329[4] = v193;
            v194 = v329;
            if (qword_2811F8280 != -1)
            {
              dispatch_once(&qword_2811F8280, v194);
            }

            if (byte_2811F8122 != 1)
            {
              break;
            }

            v181 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 20];
            v195 = MEMORY[0x277D3F178];
            v196 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
            lastPathComponent34 = [v196 lastPathComponent];
            v198 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser parseData:]"];
            [v195 logMessage:v181 fromFile:lastPathComponent34 fromFunction:v198 fromLineNumber:298];

            v186 = PLLogCommon();
            if (os_log_type_enabled(v186, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_264;
            }

            goto LABEL_265;
          case 15:
            [(PLBBMav13HwMsgParser *)self setRfEnhTDS:v16];
            v150 += 48;
            v16 += 48;
            if (![*(v7 + 384) debugEnabled])
            {
              break;
            }

            v229 = objc_opt_class();
            v326[0] = MEMORY[0x277D85DD0];
            v326[1] = 3221225472;
            v326[2] = __34__PLBBMav13HwMsgParser_parseData___block_invoke_649;
            v326[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v326[4] = v229;
            v230 = v326;
            if (qword_2811F8298 != -1)
            {
              dispatch_once(&qword_2811F8298, v230);
            }

            if (byte_2811F8125 != 1)
            {
              break;
            }

            v181 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 48];
            v231 = MEMORY[0x277D3F178];
            v232 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
            lastPathComponent35 = [v232 lastPathComponent];
            v234 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser parseData:]"];
            [v231 logMessage:v181 fromFile:lastPathComponent35 fromFunction:v234 fromLineNumber:316];

            v186 = PLLogCommon();
            if (os_log_type_enabled(v186, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_264;
            }

            goto LABEL_265;
          case 16:
            [(PLBBMav13HwMsgParser *)self setRfEnhC2K:v16];
            v150 += 40;
            v16 += 40;
            if (![*(v7 + 384) debugEnabled])
            {
              break;
            }

            v187 = objc_opt_class();
            v331[0] = MEMORY[0x277D85DD0];
            v331[1] = 3221225472;
            v331[2] = __34__PLBBMav13HwMsgParser_parseData___block_invoke_634;
            v331[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v331[4] = v187;
            v188 = v331;
            if (qword_2811F8270 != -1)
            {
              dispatch_once(&qword_2811F8270, v188);
            }

            if (byte_2811F8120 != 1)
            {
              break;
            }

            v181 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 40];
            v189 = MEMORY[0x277D3F178];
            v190 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
            lastPathComponent36 = [v190 lastPathComponent];
            v192 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser parseData:]"];
            [v189 logMessage:v181 fromFile:lastPathComponent36 fromFunction:v192 fromLineNumber:286];

            v186 = PLLogCommon();
            if (os_log_type_enabled(v186, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_264;
            }

            goto LABEL_265;
          case 17:
            [(PLBBMav13HwMsgParser *)self setRfEnh1xEVDO:v16];
            v150 += 32;
            v16 += 32;
            if (![*(v7 + 384) debugEnabled])
            {
              break;
            }

            v253 = objc_opt_class();
            v330[0] = MEMORY[0x277D85DD0];
            v330[1] = 3221225472;
            v330[2] = __34__PLBBMav13HwMsgParser_parseData___block_invoke_637;
            v330[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v330[4] = v253;
            v254 = v330;
            if (qword_2811F8278 != -1)
            {
              dispatch_once(&qword_2811F8278, v254);
            }

            if (byte_2811F8121 != 1)
            {
              break;
            }

            v181 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 32];
            v255 = MEMORY[0x277D3F178];
            v256 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
            lastPathComponent37 = [v256 lastPathComponent];
            v258 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser parseData:]"];
            [v255 logMessage:v181 fromFile:lastPathComponent37 fromFunction:v258 fromLineNumber:292];

            v186 = PLLogCommon();
            if (os_log_type_enabled(v186, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_264;
            }

            goto LABEL_265;
          case 18:
            [(PLBBMav13HwMsgParser *)self setRfEnhOOS:v16];
            v150 += 156;
            v16 += 156;
            if ([*(v7 + 384) debugEnabled])
            {
              v289 = objc_opt_class();
              v325[0] = MEMORY[0x277D85DD0];
              v325[1] = 3221225472;
              v325[2] = __34__PLBBMav13HwMsgParser_parseData___block_invoke_652;
              v325[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v325[4] = v289;
              v290 = v325;
              if (qword_2811F82A0 != -1)
              {
                dispatch_once(&qword_2811F82A0, v290);
              }

              if (byte_2811F8126 == 1)
              {
                v291 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 156];
                v292 = MEMORY[0x277D3F178];
                v293 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
                lastPathComponent38 = [v293 lastPathComponent];
                v295 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser parseData:]"];
                [v292 logMessage:v291 fromFile:lastPathComponent38 fromFunction:v295 fromLineNumber:322];

                v296 = PLLogCommon();
                if (os_log_type_enabled(v296, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v365 = v291;
                  _os_log_debug_impl(&dword_21A4C6000, v296, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }
              }
            }

            goto LABEL_275;
          default:
            [(PLBBMav13HwMsgParser *)self setProtoStateC2K:v16];
            v150 += 64;
            v16 += 64;
            if (![*(v7 + 384) debugEnabled])
            {
              break;
            }

            v179 = objc_opt_class();
            v343[0] = MEMORY[0x277D85DD0];
            v343[1] = 3221225472;
            v343[2] = __34__PLBBMav13HwMsgParser_parseData___block_invoke_595;
            v343[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v343[4] = v179;
            v180 = v343;
            if (qword_2811F8210 != -1)
            {
              dispatch_once(&qword_2811F8210, v180);
            }

            if (byte_2811F8114 != 1)
            {
              break;
            }

            v181 = [MEMORY[0x277CCACA8] stringWithFormat:@"Payload size [%lu]", 64];
            v182 = MEMORY[0x277D3F178];
            v183 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
            lastPathComponent39 = [v183 lastPathComponent];
            v185 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser parseData:]"];
            [v182 logMessage:v181 fromFile:lastPathComponent39 fromFunction:v185 fromLineNumber:214];

            v186 = PLLogCommon();
            if (os_log_type_enabled(v186, OS_LOG_TYPE_DEBUG))
            {
LABEL_264:
              *buf = 138412290;
              v365 = v181;
              _os_log_debug_impl(&dword_21A4C6000, v186, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

LABEL_265:

            v7 = 0x277D3F000;
            break;
        }
      }

      v167 = (v167 + 1);
    }

    while (v167 != 19);
LABEL_275:
    if ([*(v7 + 384) debugEnabled])
    {
      v297 = objc_opt_class();
      v324[0] = MEMORY[0x277D85DD0];
      v324[1] = 3221225472;
      v324[2] = __34__PLBBMav13HwMsgParser_parseData___block_invoke_655;
      v324[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v324[4] = v297;
      v298 = v324;
      if (qword_2811F82A8 != -1)
      {
        dispatch_once(&qword_2811F82A8, v298);
      }

      if (byte_2811F8127 == 1)
      {
        v1502 = [MEMORY[0x277CCACA8] stringWithFormat:@"End of Proto, Rf, Enh data at offset %llu", v150];
        v300 = MEMORY[0x277D3F178];
        v301 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
        lastPathComponent40 = [v301 lastPathComponent];
        v303 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser parseData:]"];
        [v300 logMessage:v1502 fromFile:lastPathComponent40 fromFunction:v303 fromLineNumber:328];

        v304 = PLLogCommon();
        if (os_log_type_enabled(v304, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v365 = v1502;
          _os_log_debug_impl(&dword_21A4C6000, v304, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }

  if ([(PLMav4BasebandHardwareMessage *)self level]>= 7)
  {
    [(PLMav7BasebandHardwareMessage *)self setApps_clock_duration_mask:v16];
    v305 = v16 + 16;
    v306 = [(PLBBMav13HwMsgParser *)self GetClockCount:[(PLMav7BasebandHardwareMessage *)self apps_clock_duration_mask]];
    string2 = [MEMORY[0x277CCAB68] string];
    [(PLMav7BasebandHardwareMessage *)self setApps_clock_duration:string2];

    [(PLBBMav13HwMsgParser *)self SetClocks:[(PLMav7BasebandHardwareMessage *)self apps_clock_duration_mask] oftype:0 withData:v305];
    v308 = &v305[4 * v306];
    [(PLMav7BasebandHardwareMessage *)self setMpss_clock_duration_mask:v308];
    v308 += 16;
    v309 = [(PLBBMav13HwMsgParser *)self GetClockCount:[(PLMav7BasebandHardwareMessage *)self mpss_clock_duration_mask]];
    string3 = [MEMORY[0x277CCAB68] string];
    [(PLMav7BasebandHardwareMessage *)self setMpss_clock_duration:string3];

    [(PLBBMav13HwMsgParser *)self SetClocks:[(PLMav7BasebandHardwareMessage *)self mpss_clock_duration_mask] oftype:1 withData:v308];
    v16 = &v308[4 * v309];
  }

  if ([(PLMav4BasebandHardwareMessage *)self level]>= 8)
  {
    [(PLMav7BasebandHardwareMessage *)self setApps_clock_count_mask:v16];
    v311 = &v16[4 * [(PLBBMav13HwMsgParser *)self GetClockCount:[(PLMav7BasebandHardwareMessage *)self apps_clock_count_mask]]+ 16];
    [(PLMav7BasebandHardwareMessage *)self setMpss_clock_count_mask:v311];
    v312 = v311 + 4 * [(PLBBMav13HwMsgParser *)self GetClockCount:[(PLMav7BasebandHardwareMessage *)self mpss_clock_count_mask]];
    [(PLMav7BasebandHardwareMessage *)self setHsic:v312 + 16];
    v16 = (v312 + 48);
  }

  v313 = &v16[-[dataCopy bytes]];
  v314 = [dataCopy length];
  if (v313 > v314)
  {
    v315 = PLLogCommon();
    if (os_log_type_enabled(v315, OS_LOG_TYPE_ERROR))
    {
      v317 = &v16[-[dataCopy bytes]];
      v318 = [dataCopy length];
      *buf = 134218498;
      v365 = v317;
      v366 = 2048;
      v367 = v318;
      v368 = 2080;
      v369 = "[PLBBMav13HwMsgParser parseData:]";
      _os_log_error_impl(&dword_21A4C6000, v315, OS_LOG_TYPE_ERROR, "Expected data length %lu but got %lu in %s", buf, 0x20u);
    }
  }

  return v313 <= v314;
}

void *__34__PLBBMav13HwMsgParser_parseData___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_117 = result;
  return result;
}

void *__34__PLBBMav13HwMsgParser_parseData___block_invoke_476(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8101 = result;
  return result;
}

void *__34__PLBBMav13HwMsgParser_parseData___block_invoke_482(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8102 = result;
  return result;
}

void *__34__PLBBMav13HwMsgParser_parseData___block_invoke_488(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8103 = result;
  return result;
}

void *__34__PLBBMav13HwMsgParser_parseData___block_invoke_494(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8104 = result;
  return result;
}

void *__34__PLBBMav13HwMsgParser_parseData___block_invoke_500(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8105 = result;
  return result;
}

void *__34__PLBBMav13HwMsgParser_parseData___block_invoke_506(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8106 = result;
  return result;
}

void *__34__PLBBMav13HwMsgParser_parseData___block_invoke_512(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8107 = result;
  return result;
}

void *__34__PLBBMav13HwMsgParser_parseData___block_invoke_518(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8108 = result;
  return result;
}

void *__34__PLBBMav13HwMsgParser_parseData___block_invoke_524(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8109 = result;
  return result;
}

void *__34__PLBBMav13HwMsgParser_parseData___block_invoke_530(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F810A = result;
  return result;
}

void *__34__PLBBMav13HwMsgParser_parseData___block_invoke_536(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F810B = result;
  return result;
}

void *__34__PLBBMav13HwMsgParser_parseData___block_invoke_542(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F810C = result;
  return result;
}

void *__34__PLBBMav13HwMsgParser_parseData___block_invoke_548(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F810D = result;
  return result;
}

void *__34__PLBBMav13HwMsgParser_parseData___block_invoke_554(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F810E = result;
  return result;
}

void *__34__PLBBMav13HwMsgParser_parseData___block_invoke_560(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F810F = result;
  return result;
}

void *__34__PLBBMav13HwMsgParser_parseData___block_invoke_566(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8110 = result;
  return result;
}

void *__34__PLBBMav13HwMsgParser_parseData___block_invoke_575(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8111 = result;
  return result;
}

void *__34__PLBBMav13HwMsgParser_parseData___block_invoke_581(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8112 = result;
  return result;
}

void *__34__PLBBMav13HwMsgParser_parseData___block_invoke_588(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8113 = result;
  return result;
}

void *__34__PLBBMav13HwMsgParser_parseData___block_invoke_595(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8114 = result;
  return result;
}

void *__34__PLBBMav13HwMsgParser_parseData___block_invoke_601(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8115 = result;
  return result;
}

void *__34__PLBBMav13HwMsgParser_parseData___block_invoke_604(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8116 = result;
  return result;
}

void *__34__PLBBMav13HwMsgParser_parseData___block_invoke_607(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8117 = result;
  return result;
}

void *__34__PLBBMav13HwMsgParser_parseData___block_invoke_610(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8118 = result;
  return result;
}

void *__34__PLBBMav13HwMsgParser_parseData___block_invoke_613(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8119 = result;
  return result;
}

void *__34__PLBBMav13HwMsgParser_parseData___block_invoke_616(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F811A = result;
  return result;
}

void *__34__PLBBMav13HwMsgParser_parseData___block_invoke_619(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F811B = result;
  return result;
}

void *__34__PLBBMav13HwMsgParser_parseData___block_invoke_622(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F811C = result;
  return result;
}

void *__34__PLBBMav13HwMsgParser_parseData___block_invoke_625(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F811D = result;
  return result;
}

void *__34__PLBBMav13HwMsgParser_parseData___block_invoke_628(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F811E = result;
  return result;
}

void *__34__PLBBMav13HwMsgParser_parseData___block_invoke_631(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F811F = result;
  return result;
}

void *__34__PLBBMav13HwMsgParser_parseData___block_invoke_634(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8120 = result;
  return result;
}

void *__34__PLBBMav13HwMsgParser_parseData___block_invoke_637(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8121 = result;
  return result;
}

void *__34__PLBBMav13HwMsgParser_parseData___block_invoke_640(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8122 = result;
  return result;
}

void *__34__PLBBMav13HwMsgParser_parseData___block_invoke_643(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8123 = result;
  return result;
}

void *__34__PLBBMav13HwMsgParser_parseData___block_invoke_646(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8124 = result;
  return result;
}

void *__34__PLBBMav13HwMsgParser_parseData___block_invoke_649(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8125 = result;
  return result;
}

void *__34__PLBBMav13HwMsgParser_parseData___block_invoke_652(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8126 = result;
  return result;
}

void *__34__PLBBMav13HwMsgParser_parseData___block_invoke_655(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8127 = result;
  return result;
}

- (void)logWithLogger:(id)logger
{
  v210 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  v5 = 0x277D3F000uLL;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    v207[0] = MEMORY[0x277D85DD0];
    v207[1] = 3221225472;
    v207[2] = __38__PLBBMav13HwMsgParser_logWithLogger___block_invoke;
    v207[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v207[4] = v6;
    v7 = v207;
    if (qword_2811F82B0 != -1)
    {
      dispatch_once(&qword_2811F82B0, v7);
    }

    if (byte_2811F8128 == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav13HwMsgParser logWithLogger:]"];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
      lastPathComponent = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logWithLogger:]"];
      [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:376];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v209 = v8;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v206.receiver = self;
  v206.super_class = PLBBMav13HwMsgParser;
  [(PLBasebandHardwareMessage *)&v206 logRawWithLogger:loggerCopy];
  v14 = objc_alloc_init(PLBBMavLogMsg);
  agent = [(PLBasebandMessage *)self agent];
  [(PLBasebandMessage *)v14 setAgent:agent];

  [(PLBBMavLogMsg *)v14 setError:&stru_282B650A0];
  seqNum = [(PLBasebandMessage *)self seqNum];
  date = [(PLBasebandMessage *)self date];
  [(PLBasebandMessage *)self timeCal];
  [(PLBBMavLogMsg *)v14 setHeaderWithSeqNum:seqNum andDate:date andTimeCal:?];

  if ([(PLMav4BasebandHardwareMessage *)self sw_rev]== 2)
  {
    [(PLMav4BasebandHardwareMessage *)self logHeaderWithLogger:v14];
    [(PLBBMav13HwMsgParser *)self logRPMWithLogger:v14];
    [(PLBBMav13HwMsgParser *)self logAppsPerfWithLogger:v14];
    [(PLBBMav13HwMsgParser *)self logMPSSWithLogger:v14];
    [(PLBBMav13HwMsgParser *)self logLPASSWithLogger:v14];
    [(PLBBMav13HwMsgParser *)self logPeripheralsWithLogger:v14];
    [(PLBBMav13HwMsgParser *)self logPcieWithLogger:v14];
    string = objc_opt_new();
    if ((*[(PLBBMav13HwMsgParser *)self optimMaskArray]& 1) != 0 && [(PLBBMav13HwMsgParser *)self protoStateC2K])
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v19 = objc_opt_class();
        v204[0] = MEMORY[0x277D85DD0];
        v204[1] = 3221225472;
        v204[2] = __38__PLBBMav13HwMsgParser_logWithLogger___block_invoke_683;
        v204[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v204[4] = v19;
        v20 = v204;
        if (qword_2811F82C0 != -1)
        {
          dispatch_once(&qword_2811F82C0, v20);
        }

        if (byte_2811F812A == 1)
        {
          v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"protoStateC2K is valid"];
          v22 = MEMORY[0x277D3F178];
          v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
          lastPathComponent2 = [v23 lastPathComponent];
          v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logWithLogger:]"];
          [v22 logMessage:v21 fromFile:lastPathComponent2 fromFunction:v25 fromLineNumber:414];

          v26 = PLLogCommon();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v209 = v21;
            _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v5 = 0x277D3F000;
        }
      }

      [(PLBBMav13HwMsgParser *)self logProtocolWithLogger:v14 container:string state:[(PLBBMav13HwMsgParser *)self protoStateC2K] forRAT:0];
      v27 = 0;
      v28 = 1;
    }

    else
    {
      v28 = 0;
      v27 = 6;
    }

    if ((*[(PLBBMav13HwMsgParser *)self optimMaskArray]& 2) != 0 && [(PLBBMav13HwMsgParser *)self protoStateHDR])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v36 = objc_opt_class();
        v203[0] = MEMORY[0x277D85DD0];
        v203[1] = 3221225472;
        v203[2] = __38__PLBBMav13HwMsgParser_logWithLogger___block_invoke_689;
        v203[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v203[4] = v36;
        v37 = v203;
        if (qword_2811F82C8 != -1)
        {
          dispatch_once(&qword_2811F82C8, v37);
        }

        if (byte_2811F812B == 1)
        {
          v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"protoStateHDR is valid"];
          v39 = MEMORY[0x277D3F178];
          v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
          lastPathComponent3 = [v40 lastPathComponent];
          v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logWithLogger:]"];
          [v39 logMessage:v38 fromFile:lastPathComponent3 fromFunction:v42 fromLineNumber:425];

          v43 = PLLogCommon();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v209 = v38;
            _os_log_debug_impl(&dword_21A4C6000, v43, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v5 = 0x277D3F000uLL;
        }
      }

      v28 = 1;
      [(PLBBMav13HwMsgParser *)self logProtocolWithLogger:v14 container:string state:[(PLBBMav13HwMsgParser *)self protoStateHDR] forRAT:1];
      v27 = 1;
    }

    if ((*[(PLBBMav13HwMsgParser *)self optimMaskArray]& 4) != 0 && [(PLBBMav13HwMsgParser *)self protoStateGSM])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v44 = objc_opt_class();
        v202[0] = MEMORY[0x277D85DD0];
        v202[1] = 3221225472;
        v202[2] = __38__PLBBMav13HwMsgParser_logWithLogger___block_invoke_695;
        v202[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v202[4] = v44;
        v45 = v202;
        if (qword_2811F82D0 != -1)
        {
          dispatch_once(&qword_2811F82D0, v45);
        }

        if (byte_2811F812C == 1)
        {
          v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"protoStateGSM is valid"];
          v47 = MEMORY[0x277D3F178];
          v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
          lastPathComponent4 = [v48 lastPathComponent];
          v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logWithLogger:]"];
          [v47 logMessage:v46 fromFile:lastPathComponent4 fromFunction:v50 fromLineNumber:436];

          v51 = PLLogCommon();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v209 = v46;
            _os_log_debug_impl(&dword_21A4C6000, v51, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v5 = 0x277D3F000uLL;
        }
      }

      v27 = 2;
      [(PLBBMav13HwMsgParser *)self logProtocolWithLogger:v14 container:string state:[(PLBBMav13HwMsgParser *)self protoStateGSM] forRAT:2];
      v28 = 1;
    }

    if ((*[(PLBBMav13HwMsgParser *)self optimMaskArray]& 8) != 0 && [(PLBBMav13HwMsgParser *)self protoStateWCDMA])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v52 = objc_opt_class();
        v201[0] = MEMORY[0x277D85DD0];
        v201[1] = 3221225472;
        v201[2] = __38__PLBBMav13HwMsgParser_logWithLogger___block_invoke_701;
        v201[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v201[4] = v52;
        v53 = v201;
        if (qword_2811F82D8 != -1)
        {
          dispatch_once(&qword_2811F82D8, v53);
        }

        if (byte_2811F812D == 1)
        {
          v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"protoStateWCDMA is valid"];
          v55 = MEMORY[0x277D3F178];
          v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
          lastPathComponent5 = [v56 lastPathComponent];
          v58 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logWithLogger:]"];
          [v55 logMessage:v54 fromFile:lastPathComponent5 fromFunction:v58 fromLineNumber:447];

          v59 = PLLogCommon();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v209 = v54;
            _os_log_debug_impl(&dword_21A4C6000, v59, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v5 = 0x277D3F000uLL;
        }
      }

      v27 = 3;
      [(PLBBMav13HwMsgParser *)self logProtocolWithLogger:v14 container:string state:[(PLBBMav13HwMsgParser *)self protoStateWCDMA] forRAT:3];
      v28 = 1;
    }

    if ((*[(PLBBMav13HwMsgParser *)self optimMaskArray]& 0x10) != 0 && [(PLBBMav13HwMsgParser *)self protoStateLTE])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v60 = objc_opt_class();
        v200[0] = MEMORY[0x277D85DD0];
        v200[1] = 3221225472;
        v200[2] = __38__PLBBMav13HwMsgParser_logWithLogger___block_invoke_707;
        v200[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v200[4] = v60;
        v61 = v200;
        if (qword_2811F82E0 != -1)
        {
          dispatch_once(&qword_2811F82E0, v61);
        }

        if (byte_2811F812E == 1)
        {
          v62 = [MEMORY[0x277CCACA8] stringWithFormat:@"protoStateLTE is valid"];
          v63 = MEMORY[0x277D3F178];
          v64 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
          lastPathComponent6 = [v64 lastPathComponent];
          v66 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logWithLogger:]"];
          [v63 logMessage:v62 fromFile:lastPathComponent6 fromFunction:v66 fromLineNumber:458];

          v67 = PLLogCommon();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v209 = v62;
            _os_log_debug_impl(&dword_21A4C6000, v67, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v5 = 0x277D3F000uLL;
        }
      }

      v27 = 4;
      [(PLBBMav13HwMsgParser *)self logProtocolWithLogger:v14 container:string state:[(PLBBMav13HwMsgParser *)self protoStateLTE] forRAT:4];
      v28 = 1;
    }

    if ((*[(PLBBMav13HwMsgParser *)self optimMaskArray]& 0x20) != 0 && [(PLBBMav13HwMsgParser *)self protoStateTDS])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v68 = objc_opt_class();
        v199[0] = MEMORY[0x277D85DD0];
        v199[1] = 3221225472;
        v199[2] = __38__PLBBMav13HwMsgParser_logWithLogger___block_invoke_713;
        v199[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v199[4] = v68;
        v69 = v199;
        if (qword_2811F82E8 != -1)
        {
          dispatch_once(&qword_2811F82E8, v69);
        }

        if (byte_2811F812F == 1)
        {
          v70 = [MEMORY[0x277CCACA8] stringWithFormat:@"protoStateTDS is valid"];
          v71 = MEMORY[0x277D3F178];
          v72 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
          lastPathComponent7 = [v72 lastPathComponent];
          v74 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logWithLogger:]"];
          [v71 logMessage:v70 fromFile:lastPathComponent7 fromFunction:v74 fromLineNumber:469];

          v75 = PLLogCommon();
          if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v209 = v70;
            _os_log_debug_impl(&dword_21A4C6000, v75, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v5 = 0x277D3F000uLL;
        }
      }

      v27 = 5;
      [(PLBBMav13HwMsgParser *)self logProtocolWithLogger:v14 container:string state:[(PLBBMav13HwMsgParser *)self protoStateTDS] forRAT:5];
      v28 = 1;
    }

    [(PLBBMavLogMsg *)v14 setProtocolStateHistDict:string];
    [(PLMav7BasebandHardwareMessage *)self logProtocolActiveWithLogger:v14];
    [(PLBBMav13HwMsgParser *)self logSleepVetoWithLogger:v14];
    if ([(PLMav4BasebandHardwareMessage *)self level]>= 7)
    {
      [(PLMav7BasebandHardwareMessage *)self logClockWithLogger:v14];
      [(PLMav7BasebandHardwareMessage *)self logHSICWithLogger:v14];
    }

    [(PLBBMavLogMsg *)v14 addToGroupPLBBMav13HwOther];
    if (([(PLBBMav13HwMsgParser *)self optimMaskArray][1] & 4) != 0 && [(PLBBMav13HwMsgParser *)self rfDataLTE])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v76 = objc_opt_class();
        v198[0] = MEMORY[0x277D85DD0];
        v198[1] = 3221225472;
        v198[2] = __38__PLBBMav13HwMsgParser_logWithLogger___block_invoke_719;
        v198[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v198[4] = v76;
        v77 = v198;
        if (qword_2811F82F0 != -1)
        {
          dispatch_once(&qword_2811F82F0, v77);
        }

        if (byte_2811F8130 == 1)
        {
          v181 = loggerCopy;
          v78 = [MEMORY[0x277CCACA8] stringWithFormat:@"rfDataLTE is valid"];
          v79 = MEMORY[0x277D3F178];
          v80 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
          lastPathComponent8 = [v80 lastPathComponent];
          v82 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logWithLogger:]"];
          [v79 logMessage:v78 fromFile:lastPathComponent8 fromFunction:v82 fromLineNumber:494];

          v83 = PLLogCommon();
          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v209 = v78;
            _os_log_debug_impl(&dword_21A4C6000, v83, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          loggerCopy = v181;
          v5 = 0x277D3F000;
        }
      }

      [(PLBBMav13HwMsgParser *)self logLegacyRFWithLogger:v14 usingData:[(PLBBMav13HwMsgParser *)self rfDataLTE] forRAT:4];
      v84 = 1;
    }

    else
    {
      v84 = 0;
    }

    if (([(PLBBMav13HwMsgParser *)self optimMaskArray][1] & 2) != 0 && [(PLBBMav13HwMsgParser *)self rfDataWCDMA])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v85 = objc_opt_class();
        v197[0] = MEMORY[0x277D85DD0];
        v197[1] = 3221225472;
        v197[2] = __38__PLBBMav13HwMsgParser_logWithLogger___block_invoke_725;
        v197[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v197[4] = v85;
        v86 = v197;
        if (qword_2811F82F8 != -1)
        {
          dispatch_once(&qword_2811F82F8, v86);
        }

        if (byte_2811F8131 == 1)
        {
          v182 = loggerCopy;
          v87 = [MEMORY[0x277CCACA8] stringWithFormat:@"rfDataWCDMA is valid"];
          v88 = MEMORY[0x277D3F178];
          v89 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
          lastPathComponent9 = [v89 lastPathComponent];
          v91 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logWithLogger:]"];
          [v88 logMessage:v87 fromFile:lastPathComponent9 fromFunction:v91 fromLineNumber:503];

          v92 = PLLogCommon();
          if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v209 = v87;
            _os_log_debug_impl(&dword_21A4C6000, v92, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          loggerCopy = v182;
          v5 = 0x277D3F000uLL;
        }
      }

      [(PLBBMav13HwMsgParser *)self logLegacyRFWithLogger:v14 usingData:[(PLBBMav13HwMsgParser *)self rfDataWCDMA] forRAT:3];
      v84 = 1;
    }

    if (([(PLBBMav13HwMsgParser *)self optimMaskArray][1] & 1) != 0 && [(PLBBMav13HwMsgParser *)self rfDataGSM])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v93 = objc_opt_class();
        v196[0] = MEMORY[0x277D85DD0];
        v196[1] = 3221225472;
        v196[2] = __38__PLBBMav13HwMsgParser_logWithLogger___block_invoke_731;
        v196[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v196[4] = v93;
        v94 = v196;
        if (qword_2811F8300 != -1)
        {
          dispatch_once(&qword_2811F8300, v94);
        }

        if (byte_2811F8132 == 1)
        {
          v183 = loggerCopy;
          v95 = [MEMORY[0x277CCACA8] stringWithFormat:@"rfDataGSM is valid"];
          v96 = MEMORY[0x277D3F178];
          v97 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
          lastPathComponent10 = [v97 lastPathComponent];
          v99 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logWithLogger:]"];
          [v96 logMessage:v95 fromFile:lastPathComponent10 fromFunction:v99 fromLineNumber:512];

          v100 = PLLogCommon();
          if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v209 = v95;
            _os_log_debug_impl(&dword_21A4C6000, v100, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          loggerCopy = v183;
          v5 = 0x277D3F000uLL;
        }
      }

      [(PLBBMav13HwMsgParser *)self logLegacyRFWithLogger:v14 usingData:[(PLBBMav13HwMsgParser *)self rfDataGSM] forRAT:2];
      v84 = 1;
    }

    if (([(PLBBMav13HwMsgParser *)self optimMaskArray][1] & 8) != 0 && [(PLBBMav13HwMsgParser *)self rfDataTDS])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v101 = objc_opt_class();
        v195[0] = MEMORY[0x277D85DD0];
        v195[1] = 3221225472;
        v195[2] = __38__PLBBMav13HwMsgParser_logWithLogger___block_invoke_737;
        v195[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v195[4] = v101;
        v102 = v195;
        if (qword_2811F8308 != -1)
        {
          dispatch_once(&qword_2811F8308, v102);
        }

        if (byte_2811F8133 == 1)
        {
          v184 = loggerCopy;
          v103 = [MEMORY[0x277CCACA8] stringWithFormat:@"rfDataTDS is valid"];
          v104 = MEMORY[0x277D3F178];
          v105 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
          lastPathComponent11 = [v105 lastPathComponent];
          v107 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logWithLogger:]"];
          [v104 logMessage:v103 fromFile:lastPathComponent11 fromFunction:v107 fromLineNumber:521];

          v108 = PLLogCommon();
          if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v209 = v103;
            _os_log_debug_impl(&dword_21A4C6000, v108, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          loggerCopy = v184;
          v5 = 0x277D3F000uLL;
        }
      }

      [(PLBBMav13HwMsgParser *)self logLegacyRFWithLogger:v14 usingData:[(PLBBMav13HwMsgParser *)self rfDataTDS] forRAT:5];
      v84 = 1;
    }

    if ((*[(PLBBMav13HwMsgParser *)self optimMaskArray]& 0x40) != 0 && [(PLBBMav13HwMsgParser *)self rfDataC2K])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v109 = objc_opt_class();
        v194[0] = MEMORY[0x277D85DD0];
        v194[1] = 3221225472;
        v194[2] = __38__PLBBMav13HwMsgParser_logWithLogger___block_invoke_743;
        v194[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v194[4] = v109;
        v110 = v194;
        if (qword_2811F8310 != -1)
        {
          dispatch_once(&qword_2811F8310, v110);
        }

        if (byte_2811F8134 == 1)
        {
          v185 = loggerCopy;
          v111 = [MEMORY[0x277CCACA8] stringWithFormat:@"rfDataTDS is valid"];
          v112 = MEMORY[0x277D3F178];
          v113 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
          lastPathComponent12 = [v113 lastPathComponent];
          v115 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logWithLogger:]"];
          [v112 logMessage:v111 fromFile:lastPathComponent12 fromFunction:v115 fromLineNumber:530];

          v116 = PLLogCommon();
          if (os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v209 = v111;
            _os_log_debug_impl(&dword_21A4C6000, v116, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          loggerCopy = v185;
          v5 = 0x277D3F000uLL;
        }
      }

      [(PLBBMav13HwMsgParser *)self logLegacyRFWithLogger:v14 usingData:[(PLBBMav13HwMsgParser *)self rfDataC2K] forRAT:0];
      v84 = 1;
    }

    if (*[(PLBBMav13HwMsgParser *)self optimMaskArray]< 0 && [(PLBBMav13HwMsgParser *)self rfData1xEVDO])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v117 = objc_opt_class();
        v193[0] = MEMORY[0x277D85DD0];
        v193[1] = 3221225472;
        v193[2] = __38__PLBBMav13HwMsgParser_logWithLogger___block_invoke_746;
        v193[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v193[4] = v117;
        v118 = v193;
        if (qword_2811F8318 != -1)
        {
          dispatch_once(&qword_2811F8318, v118);
        }

        if (byte_2811F8135 == 1)
        {
          v119 = [MEMORY[0x277CCACA8] stringWithFormat:@"rfDataTDS is valid"];
          v120 = MEMORY[0x277D3F178];
          v121 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
          lastPathComponent13 = [v121 lastPathComponent];
          v123 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logWithLogger:]"];
          [v120 logMessage:v119 fromFile:lastPathComponent13 fromFunction:v123 fromLineNumber:539];

          v124 = PLLogCommon();
          if (os_log_type_enabled(v124, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v209 = v119;
            _os_log_debug_impl(&dword_21A4C6000, v124, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v5 = 0x277D3F000;
        }
      }

      [(PLBBMav13HwMsgParser *)self logLegacyRFWithLogger:v14 usingData:[(PLBBMav13HwMsgParser *)self rfData1xEVDO] forRAT:1];
    }

    else if (((v84 | v28 ^ 1) & 1) == 0)
    {
      [(PLBBMav13HwMsgParser *)self logProtocolOnlyWithLogger:v14 forRAT:v27];
    }

    if (([(PLBBMav13HwMsgParser *)self optimMaskArray][1] & 0x10) != 0 && [(PLBBMav13HwMsgParser *)self rfEnhLTE])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v125 = objc_opt_class();
        v192[0] = MEMORY[0x277D85DD0];
        v192[1] = 3221225472;
        v192[2] = __38__PLBBMav13HwMsgParser_logWithLogger___block_invoke_749;
        v192[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v192[4] = v125;
        v126 = v192;
        if (qword_2811F8320 != -1)
        {
          dispatch_once(&qword_2811F8320, v126);
        }

        if (byte_2811F8136 == 1)
        {
          v127 = [MEMORY[0x277CCACA8] stringWithFormat:@"rfEnhLTE is valid"];
          v128 = MEMORY[0x277D3F178];
          v129 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
          lastPathComponent14 = [v129 lastPathComponent];
          v131 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logWithLogger:]"];
          [v128 logMessage:v127 fromFile:lastPathComponent14 fromFunction:v131 fromLineNumber:554];

          v132 = PLLogCommon();
          if (os_log_type_enabled(v132, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v209 = v127;
            _os_log_debug_impl(&dword_21A4C6000, v132, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v5 = 0x277D3F000uLL;
        }
      }

      [(PLBBMav13HwMsgParser *)self logHwRFEnhLTEWithLogger:v14];
    }

    if (([(PLBBMav13HwMsgParser *)self optimMaskArray][1] & 0x20) != 0 && [(PLBBMav13HwMsgParser *)self rfEnhWCDMA])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v133 = objc_opt_class();
        v191[0] = MEMORY[0x277D85DD0];
        v191[1] = 3221225472;
        v191[2] = __38__PLBBMav13HwMsgParser_logWithLogger___block_invoke_755;
        v191[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v191[4] = v133;
        v134 = v191;
        if (qword_2811F8328 != -1)
        {
          dispatch_once(&qword_2811F8328, v134);
        }

        if (byte_2811F8137 == 1)
        {
          v135 = [MEMORY[0x277CCACA8] stringWithFormat:@"rfEnhWCDMA is valid"];
          v136 = MEMORY[0x277D3F178];
          v137 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
          lastPathComponent15 = [v137 lastPathComponent];
          v139 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logWithLogger:]"];
          [v136 logMessage:v135 fromFile:lastPathComponent15 fromFunction:v139 fromLineNumber:560];

          v140 = PLLogCommon();
          if (os_log_type_enabled(v140, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v209 = v135;
            _os_log_debug_impl(&dword_21A4C6000, v140, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v5 = 0x277D3F000uLL;
        }
      }

      [(PLBBMav13HwMsgParser *)self logHwRFEnhWCDMAWithLogger:v14];
    }

    if (([(PLBBMav13HwMsgParser *)self optimMaskArray][1] & 0x40) != 0 && [(PLBBMav13HwMsgParser *)self rfEnhGSM])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v141 = objc_opt_class();
        v190[0] = MEMORY[0x277D85DD0];
        v190[1] = 3221225472;
        v190[2] = __38__PLBBMav13HwMsgParser_logWithLogger___block_invoke_761;
        v190[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v190[4] = v141;
        v142 = v190;
        if (qword_2811F8330 != -1)
        {
          dispatch_once(&qword_2811F8330, v142);
        }

        if (byte_2811F8138 == 1)
        {
          v143 = [MEMORY[0x277CCACA8] stringWithFormat:@"rfEnhGSM is valid"];
          v144 = MEMORY[0x277D3F178];
          v145 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
          lastPathComponent16 = [v145 lastPathComponent];
          v147 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logWithLogger:]"];
          [v144 logMessage:v143 fromFile:lastPathComponent16 fromFunction:v147 fromLineNumber:566];

          v148 = PLLogCommon();
          if (os_log_type_enabled(v148, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v209 = v143;
            _os_log_debug_impl(&dword_21A4C6000, v148, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v5 = 0x277D3F000uLL;
        }
      }

      [(PLBBMav13HwMsgParser *)self logHwRFGSMWithLogger:v14];
    }

    if ([(PLBBMav13HwMsgParser *)self optimMaskArray][1] < 0 && [(PLBBMav13HwMsgParser *)self rfEnhTDS])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v149 = objc_opt_class();
        v189[0] = MEMORY[0x277D85DD0];
        v189[1] = 3221225472;
        v189[2] = __38__PLBBMav13HwMsgParser_logWithLogger___block_invoke_767;
        v189[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v189[4] = v149;
        v150 = v189;
        if (qword_2811F8338 != -1)
        {
          dispatch_once(&qword_2811F8338, v150);
        }

        if (byte_2811F8139 == 1)
        {
          v151 = [MEMORY[0x277CCACA8] stringWithFormat:@"rfEnhTDS is valid"];
          v152 = MEMORY[0x277D3F178];
          v153 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
          lastPathComponent17 = [v153 lastPathComponent];
          v155 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logWithLogger:]"];
          [v152 logMessage:v151 fromFile:lastPathComponent17 fromFunction:v155 fromLineNumber:572];

          v156 = PLLogCommon();
          if (os_log_type_enabled(v156, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v209 = v151;
            _os_log_debug_impl(&dword_21A4C6000, v156, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v5 = 0x277D3F000uLL;
        }
      }

      [(PLBBMav13HwMsgParser *)self logHwRFTDSWithLogger:v14];
    }

    if (([(PLBBMav13HwMsgParser *)self optimMaskArray][2] & 1) != 0 && [(PLBBMav13HwMsgParser *)self rfEnhC2K])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v157 = objc_opt_class();
        v188[0] = MEMORY[0x277D85DD0];
        v188[1] = 3221225472;
        v188[2] = __38__PLBBMav13HwMsgParser_logWithLogger___block_invoke_773;
        v188[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v188[4] = v157;
        v158 = v188;
        if (qword_2811F8340 != -1)
        {
          dispatch_once(&qword_2811F8340, v158);
        }

        if (byte_2811F813A == 1)
        {
          v159 = [MEMORY[0x277CCACA8] stringWithFormat:@"rfEnh1x is valid"];
          v160 = MEMORY[0x277D3F178];
          v161 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
          lastPathComponent18 = [v161 lastPathComponent];
          v163 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logWithLogger:]"];
          [v160 logMessage:v159 fromFile:lastPathComponent18 fromFunction:v163 fromLineNumber:578];

          v164 = PLLogCommon();
          if (os_log_type_enabled(v164, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v209 = v159;
            _os_log_debug_impl(&dword_21A4C6000, v164, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v5 = 0x277D3F000uLL;
        }
      }

      [(PLBBMav13HwMsgParser *)self logHwRF1xWithLogger:v14];
    }

    if (([(PLBBMav13HwMsgParser *)self optimMaskArray][2] & 2) != 0 && [(PLBBMav13HwMsgParser *)self rfEnh1xEVDO])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v165 = objc_opt_class();
        v187[0] = MEMORY[0x277D85DD0];
        v187[1] = 3221225472;
        v187[2] = __38__PLBBMav13HwMsgParser_logWithLogger___block_invoke_779;
        v187[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v187[4] = v165;
        v166 = v187;
        if (qword_2811F8348 != -1)
        {
          dispatch_once(&qword_2811F8348, v166);
        }

        if (byte_2811F813B == 1)
        {
          v167 = [MEMORY[0x277CCACA8] stringWithFormat:@"rfEnhHDR is valid"];
          v168 = MEMORY[0x277D3F178];
          v169 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
          lastPathComponent19 = [v169 lastPathComponent];
          v171 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logWithLogger:]"];
          [v168 logMessage:v167 fromFile:lastPathComponent19 fromFunction:v171 fromLineNumber:584];

          v172 = PLLogCommon();
          if (os_log_type_enabled(v172, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v209 = v167;
            _os_log_debug_impl(&dword_21A4C6000, v172, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v5 = 0x277D3F000uLL;
        }
      }

      [(PLBBMav13HwMsgParser *)self logHwRFHDRWithLogger:v14];
    }

    if (([(PLBBMav13HwMsgParser *)self optimMaskArray][2] & 4) != 0 && [(PLBBMav13HwMsgParser *)self rfEnhOOS])
    {
      if ([*(v5 + 384) debugEnabled])
      {
        v173 = objc_opt_class();
        v186[0] = MEMORY[0x277D85DD0];
        v186[1] = 3221225472;
        v186[2] = __38__PLBBMav13HwMsgParser_logWithLogger___block_invoke_785;
        v186[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v186[4] = v173;
        v174 = v186;
        if (qword_2811F8350 != -1)
        {
          dispatch_once(&qword_2811F8350, v174);
        }

        if (byte_2811F813C == 1)
        {
          v175 = [MEMORY[0x277CCACA8] stringWithFormat:@"rfEnhOOS is valid"];
          v176 = MEMORY[0x277D3F178];
          v177 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
          lastPathComponent20 = [v177 lastPathComponent];
          v179 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logWithLogger:]"];
          [v176 logMessage:v175 fromFile:lastPathComponent20 fromFunction:v179 fromLineNumber:590];

          v180 = PLLogCommon();
          if (os_log_type_enabled(v180, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v209 = v175;
            _os_log_debug_impl(&dword_21A4C6000, v180, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      [(PLBBMav13HwMsgParser *)self logHwRFOOSWithLogger:v14];
    }

    [(PLBBMavLogMsg *)v14 logEventBackwardGrpEntriesBBMav13Hw];
  }

  else
  {
    string = [MEMORY[0x277CCAB68] string];
    [string appendFormat:@"Version Mismatch: Baseband_sw_rev=%d Powerlog_supported_sw_rev=%d", -[PLMav4BasebandHardwareMessage sw_rev](self, "sw_rev"), 2];
    [(PLBBMavLogMsg *)v14 setError:string];
    [(PLBBMavLogMsg *)v14 setType:@"BB HW Error"];
    [(PLBBMavLogMsg *)v14 logEventBackwardMavBBHwOther];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v29 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __38__PLBBMav13HwMsgParser_logWithLogger___block_invoke_676;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v29;
      if (qword_2811F82B8 != -1)
      {
        dispatch_once(&qword_2811F82B8, block);
      }

      if (byte_2811F8129 == 1)
      {
        v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"SW version mismatch, cannot process, returning"];
        v31 = MEMORY[0x277D3F178];
        v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
        lastPathComponent21 = [v32 lastPathComponent];
        v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logWithLogger:]"];
        [v31 logMessage:v30 fromFile:lastPathComponent21 fromFunction:v34 fromLineNumber:394];

        v35 = PLLogCommon();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v209 = v30;
          _os_log_debug_impl(&dword_21A4C6000, v35, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }
}

void *__38__PLBBMav13HwMsgParser_logWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8128 = result;
  return result;
}

void *__38__PLBBMav13HwMsgParser_logWithLogger___block_invoke_676(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8129 = result;
  return result;
}

void *__38__PLBBMav13HwMsgParser_logWithLogger___block_invoke_683(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F812A = result;
  return result;
}

void *__38__PLBBMav13HwMsgParser_logWithLogger___block_invoke_689(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F812B = result;
  return result;
}

void *__38__PLBBMav13HwMsgParser_logWithLogger___block_invoke_695(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F812C = result;
  return result;
}

void *__38__PLBBMav13HwMsgParser_logWithLogger___block_invoke_701(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F812D = result;
  return result;
}

void *__38__PLBBMav13HwMsgParser_logWithLogger___block_invoke_707(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F812E = result;
  return result;
}

void *__38__PLBBMav13HwMsgParser_logWithLogger___block_invoke_713(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F812F = result;
  return result;
}

void *__38__PLBBMav13HwMsgParser_logWithLogger___block_invoke_719(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8130 = result;
  return result;
}

void *__38__PLBBMav13HwMsgParser_logWithLogger___block_invoke_725(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8131 = result;
  return result;
}

void *__38__PLBBMav13HwMsgParser_logWithLogger___block_invoke_731(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8132 = result;
  return result;
}

void *__38__PLBBMav13HwMsgParser_logWithLogger___block_invoke_737(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8133 = result;
  return result;
}

void *__38__PLBBMav13HwMsgParser_logWithLogger___block_invoke_743(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8134 = result;
  return result;
}

void *__38__PLBBMav13HwMsgParser_logWithLogger___block_invoke_746(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8135 = result;
  return result;
}

void *__38__PLBBMav13HwMsgParser_logWithLogger___block_invoke_749(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8136 = result;
  return result;
}

void *__38__PLBBMav13HwMsgParser_logWithLogger___block_invoke_755(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8137 = result;
  return result;
}

void *__38__PLBBMav13HwMsgParser_logWithLogger___block_invoke_761(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8138 = result;
  return result;
}

void *__38__PLBBMav13HwMsgParser_logWithLogger___block_invoke_767(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8139 = result;
  return result;
}

void *__38__PLBBMav13HwMsgParser_logWithLogger___block_invoke_773(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F813A = result;
  return result;
}

void *__38__PLBBMav13HwMsgParser_logWithLogger___block_invoke_779(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F813B = result;
  return result;
}

void *__38__PLBBMav13HwMsgParser_logWithLogger___block_invoke_785(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F813C = result;
  return result;
}

- (void)logPcieWithLogger:(id)logger
{
  v21 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __42__PLBBMav13HwMsgParser_logPcieWithLogger___block_invoke;
    v17 = &__block_descriptor_40_e5_v8__0lu32l8;
    v18 = v5;
    if (qword_2811F8358 != -1)
    {
      dispatch_once(&qword_2811F8358, &block);
    }

    if (byte_2811F813D == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav13HwMsgParser logPcieWithLogger:]", block, v15, v16, v17, v18];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logPcieWithLogger:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:600];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v20 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = loggerCopy;
  if ([(PLBBMav13HwMsgParser *)self pcieState])
  {
    v13 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav13HwMsgParser *)self pcieState] ofSize:3];
    [v12 setPcieStateHistogram:v13];
  }
}

void *__42__PLBBMav13HwMsgParser_logPcieWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F813D = result;
  return result;
}

- (void)logSleepVetoWithLogger:(id)logger
{
  v44 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__PLBBMav13HwMsgParser_logSleepVetoWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F8360 != -1)
    {
      dispatch_once(&qword_2811F8360, block);
    }

    if (byte_2811F813E == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav13HwMsgParser logSleepVetoWithLogger:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logSleepVetoWithLogger:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:612];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v43 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = loggerCopy;
  if (![(PLBBMav13HwMsgParser *)self mcpmSleepVeto])
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v23 = objc_opt_class();
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __47__PLBBMav13HwMsgParser_logSleepVetoWithLogger___block_invoke_791;
      v40[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v40[4] = v23;
      if (qword_2811F8368 != -1)
      {
        dispatch_once(&qword_2811F8368, v40);
      }

      if (byte_2811F813F == 1)
      {
        v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: BB HW Sleep Veto is expected but not present or Mav16B"];
        v25 = MEMORY[0x277D3F178];
        v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
        lastPathComponent2 = [v26 lastPathComponent];
        v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logSleepVetoWithLogger:]"];
        [v25 logMessage:v24 fromFile:lastPathComponent2 fromFunction:v28 fromLineNumber:621];

        v29 = PLLogCommon();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v43 = v24;
          _os_log_debug_impl(&dword_21A4C6000, v29, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v30 = @"Error: BB HW Sleep Veto is expected but not present  or Mav16B. ";
    goto LABEL_33;
  }

  v13 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav13HwMsgParser *)self mcpmSleepVeto] ofSize:13];
  [v12 setMcpmVetoNumHistogram:v13];

  if (![(PLMav7BasebandHardwareMessage *)self npa_sleep_veto])
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v31 = objc_opt_class();
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __47__PLBBMav13HwMsgParser_logSleepVetoWithLogger___block_invoke_800;
      v39[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v39[4] = v31;
      if (qword_2811F8370 != -1)
      {
        dispatch_once(&qword_2811F8370, v39);
      }

      if (byte_2811F8140 == 1)
      {
        v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: BB HW Sleep Veto is expected but not present"];
        v33 = MEMORY[0x277D3F178];
        v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
        lastPathComponent3 = [v34 lastPathComponent];
        v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logSleepVetoWithLogger:]"];
        [v33 logMessage:v32 fromFile:lastPathComponent3 fromFunction:v36 fromLineNumber:634];

        v37 = PLLogCommon();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v43 = v32;
          _os_log_debug_impl(&dword_21A4C6000, v37, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v30 = @"Error: BB HW Sleep Veto is expected but not present. ";
LABEL_33:
    [v12 appendToError:v30];
    goto LABEL_34;
  }

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*-[PLMav7BasebandHardwareMessage npa_sleep_veto](self, "npa_sleep_veto")}];
  [v12 setNpaVetoMask:v14];

  v15 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav7BasebandHardwareMessage *)self npa_sleep_veto]+ 4 ofSize:24];
  [v12 setNpaVetoClientNumHistogram:v15];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v16 = objc_opt_class();
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __47__PLBBMav13HwMsgParser_logSleepVetoWithLogger___block_invoke_809;
    v38[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v38[4] = v16;
    if (qword_2811F8378 != -1)
    {
      dispatch_once(&qword_2811F8378, v38);
    }

    if (byte_2811F8141 == 1)
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded BB HW Sleep Veto"];
      v18 = MEMORY[0x277D3F178];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
      lastPathComponent4 = [v19 lastPathComponent];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logSleepVetoWithLogger:]"];
      [v18 logMessage:v17 fromFile:lastPathComponent4 fromFunction:v21 fromLineNumber:639];

      v22 = PLLogCommon();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v43 = v17;
        _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

LABEL_34:
}

void *__47__PLBBMav13HwMsgParser_logSleepVetoWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F813E = result;
  return result;
}

void *__47__PLBBMav13HwMsgParser_logSleepVetoWithLogger___block_invoke_791(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F813F = result;
  return result;
}

void *__47__PLBBMav13HwMsgParser_logSleepVetoWithLogger___block_invoke_800(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8140 = result;
  return result;
}

void *__47__PLBBMav13HwMsgParser_logSleepVetoWithLogger___block_invoke_809(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8141 = result;
  return result;
}

- (void)logRPMWithLogger:(id)logger
{
  v36 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__PLBBMav13HwMsgParser_logRPMWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F8380 != -1)
    {
      dispatch_once(&qword_2811F8380, block);
    }

    if (byte_2811F8142 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav13HwMsgParser logRPMWithLogger:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logRPMWithLogger:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:645];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v35 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = loggerCopy;
  if ([(PLBBMav13HwMsgParser *)self rpmData])
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[PLBBMav13HwMsgParser rpmData](self, "rpmData")[8]}];
    [v12 setRpmXOShutDuration:v13];

    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*-[PLBBMav13HwMsgParser rpmData](self, "rpmData")}];
    [v12 setRpmXOShutCnt:v14];

    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[PLBBMav13HwMsgParser rpmData](self, "rpmData")[16]}];
    [v12 setRpmVDDMinDuration:v15];

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLBBMav13HwMsgParser rpmData](self, "rpmData")[4]}];
    [v12 setRpmVDDMinEnterCnt:v16];
  }

  else
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v17 = objc_opt_class();
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __41__PLBBMav13HwMsgParser_logRPMWithLogger___block_invoke_815;
      v32[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v32[4] = v17;
      if (qword_2811F8388 != -1)
      {
        dispatch_once(&qword_2811F8388, v32);
      }

      if (byte_2811F8143 == 1)
      {
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"RPM=<unknown>"];
        v19 = MEMORY[0x277D3F178];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
        lastPathComponent2 = [v20 lastPathComponent];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logRPMWithLogger:]"];
        [v19 logMessage:v18 fromFile:lastPathComponent2 fromFunction:v22 fromLineNumber:660];

        v23 = PLLogCommon();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v35 = v18;
          _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [v12 appendToError:@"RPM=<unknown> "];
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v24 = objc_opt_class();
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __41__PLBBMav13HwMsgParser_logRPMWithLogger___block_invoke_824;
    v31[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v31[4] = v24;
    if (qword_2811F8390 != -1)
    {
      dispatch_once(&qword_2811F8390, v31);
    }

    if (byte_2811F8144 == 1)
    {
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded BB HW RPM"];
      v26 = MEMORY[0x277D3F178];
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
      lastPathComponent3 = [v27 lastPathComponent];
      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logRPMWithLogger:]"];
      [v26 logMessage:v25 fromFile:lastPathComponent3 fromFunction:v29 fromLineNumber:664];

      v30 = PLLogCommon();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v35 = v25;
        _os_log_debug_impl(&dword_21A4C6000, v30, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

void *__41__PLBBMav13HwMsgParser_logRPMWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8142 = result;
  return result;
}

void *__41__PLBBMav13HwMsgParser_logRPMWithLogger___block_invoke_815(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8143 = result;
  return result;
}

void *__41__PLBBMav13HwMsgParser_logRPMWithLogger___block_invoke_824(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8144 = result;
  return result;
}

- (void)logAppsPerfWithLogger:(id)logger
{
  v51 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__PLBBMav13HwMsgParser_logAppsPerfWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F8398 != -1)
    {
      dispatch_once(&qword_2811F8398, block);
    }

    if (byte_2811F8145 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav13HwMsgParser logAppsPerfWithLogger:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logAppsPerfWithLogger:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:670];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v50 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = loggerCopy;
  if ([(PLBBMav13HwMsgParser *)self appsPerf])
  {
    v13 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav13HwMsgParser *)self appsPerf] ofSize:6];
    [v12 setAppsPerfStateCountHist:v13];
LABEL_10:

    goto LABEL_18;
  }

  [v12 appendToError:@"Perf_Level=<unknown> "];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v14 = objc_opt_class();
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __46__PLBBMav13HwMsgParser_logAppsPerfWithLogger___block_invoke_833;
    v47[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v47[4] = v14;
    if (qword_2811F83A0 != -1)
    {
      dispatch_once(&qword_2811F83A0, v47);
    }

    if (byte_2811F8146 == 1)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Perf_Level=<unknown>"];
      v15 = MEMORY[0x277D3F178];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
      lastPathComponent2 = [v16 lastPathComponent];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logAppsPerfWithLogger:]"];
      [v15 logMessage:v13 fromFile:lastPathComponent2 fromFunction:v18 fromLineNumber:682];

      v19 = PLLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v50 = v13;
        _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_10;
    }
  }

LABEL_18:
  if ([(PLBBMav13HwMsgParser *)self appsSleep])
  {
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[PLBBMav13HwMsgParser appsSleep](self, "appsSleep")[4]}];
    [v12 setCxoShutDownDuration:v20];

    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*-[PLBBMav13HwMsgParser appsSleep](self, "appsSleep")}];
    [v12 setCxoShutDownCount:v21];
  }

  else
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v22 = objc_opt_class();
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __46__PLBBMav13HwMsgParser_logAppsPerfWithLogger___block_invoke_839;
      v46[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v46[4] = v22;
      if (qword_2811F83A8 != -1)
      {
        dispatch_once(&qword_2811F83A8, v46);
      }

      if (byte_2811F8147 == 1)
      {
        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sleep_Stats=<unknown>"];
        v24 = MEMORY[0x277D3F178];
        v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
        lastPathComponent3 = [v25 lastPathComponent];
        v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logAppsPerfWithLogger:]"];
        [v24 logMessage:v23 fromFile:lastPathComponent3 fromFunction:v27 fromLineNumber:693];

        v28 = PLLogCommon();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v50 = v23;
          _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [v12 appendToError:@"Sleep_Stats=<unknown> "];
  }

  if ([(PLBBMav13HwMsgParser *)self appsSleepVeto])
  {
    v29 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav13HwMsgParser *)self appsSleepVeto] ofSize:5];
    [v12 setAppsSleepVeto:v29];
  }

  else
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v30 = objc_opt_class();
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __46__PLBBMav13HwMsgParser_logAppsPerfWithLogger___block_invoke_848;
      v45[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v45[4] = v30;
      if (qword_2811F83B0 != -1)
      {
        dispatch_once(&qword_2811F83B0, v45);
      }

      if (byte_2811F8148 == 1)
      {
        v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sleep_Veto_Duration=<unknown>"];
        v32 = MEMORY[0x277D3F178];
        v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
        lastPathComponent4 = [v33 lastPathComponent];
        v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logAppsPerfWithLogger:]"];
        [v32 logMessage:v31 fromFile:lastPathComponent4 fromFunction:v35 fromLineNumber:705];

        v36 = PLLogCommon();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v50 = v31;
          _os_log_debug_impl(&dword_21A4C6000, v36, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [v12 appendToError:@"Sleep_Veto_Duration=<unknown> "];
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v37 = objc_opt_class();
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __46__PLBBMav13HwMsgParser_logAppsPerfWithLogger___block_invoke_857;
    v44[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v44[4] = v37;
    if (qword_2811F83B8 != -1)
    {
      dispatch_once(&qword_2811F83B8, v44);
    }

    if (byte_2811F8149 == 1)
    {
      v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded BB HW APPS"];
      v39 = MEMORY[0x277D3F178];
      v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
      lastPathComponent5 = [v40 lastPathComponent];
      v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logAppsPerfWithLogger:]"];
      [v39 logMessage:v38 fromFile:lastPathComponent5 fromFunction:v42 fromLineNumber:709];

      v43 = PLLogCommon();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v50 = v38;
        _os_log_debug_impl(&dword_21A4C6000, v43, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

void *__46__PLBBMav13HwMsgParser_logAppsPerfWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8145 = result;
  return result;
}

void *__46__PLBBMav13HwMsgParser_logAppsPerfWithLogger___block_invoke_833(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8146 = result;
  return result;
}

void *__46__PLBBMav13HwMsgParser_logAppsPerfWithLogger___block_invoke_839(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8147 = result;
  return result;
}

void *__46__PLBBMav13HwMsgParser_logAppsPerfWithLogger___block_invoke_848(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8148 = result;
  return result;
}

void *__46__PLBBMav13HwMsgParser_logAppsPerfWithLogger___block_invoke_857(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8149 = result;
  return result;
}

- (void)logMPSSWithLogger:(id)logger
{
  v43 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  v5 = &unk_21AA21000;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__PLBBMav13HwMsgParser_logMPSSWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v6;
    if (qword_2811F83C0 != -1)
    {
      dispatch_once(&qword_2811F83C0, block);
    }

    if (byte_2811F814A == 1)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav13HwMsgParser logMPSSWithLogger:]"];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
      lastPathComponent = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logMPSSWithLogger:]"];
      [v8 logMessage:v7 fromFile:lastPathComponent fromFunction:v11 fromLineNumber:714];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v42 = v7;
        _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v5 = &unk_21AA21000;
    }
  }

  v13 = loggerCopy;
  if ([(PLBBMav13HwMsgParser *)self mpssSleep])
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[PLBBMav13HwMsgParser mpssSleep](self, "mpssSleep")[4]}];
    [v13 setMpssCxoShutDownDuration:v14];

    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*-[PLBBMav13HwMsgParser mpssSleep](self, "mpssSleep")}];
    [v13 setMpssCxoShutDownCount:v15];
  }

  if ([(PLBBMav13HwMsgParser *)self mpssSleepVeto])
  {
    v16 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav13HwMsgParser *)self mpssSleepVeto] ofSize:17];
    [v13 setMpssSleepVeto:v16];
LABEL_12:

    goto LABEL_20;
  }

  [v13 appendToError:@"Sleep_Veto=<unknown> "];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v17 = objc_opt_class();
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __42__PLBBMav13HwMsgParser_logMPSSWithLogger___block_invoke_866;
    v39[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v39[4] = v17;
    if (qword_2811F83C8 != -1)
    {
      dispatch_once(&qword_2811F83C8, v39);
    }

    if (byte_2811F814B == 1)
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sleep_Veto=<unknown>"];
      v18 = MEMORY[0x277D3F178];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
      lastPathComponent2 = [v19 lastPathComponent];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logMPSSWithLogger:]"];
      [v18 logMessage:v16 fromFile:lastPathComponent2 fromFunction:v21 fromLineNumber:731];

      v22 = PLLogCommon();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v42 = v16;
        _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v5 = &unk_21AA21000;
      goto LABEL_12;
    }
  }

LABEL_20:
  if ([(PLBBMav13HwMsgParser *)self qdspSpeed])
  {
    v23 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav13HwMsgParser *)self qdspSpeed] ofSize:12];
    [v13 setQdspConfigCount:v23];
LABEL_22:

    goto LABEL_30;
  }

  [v13 appendToError:@"Q6SW_Perf=<unknown> "];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v24 = objc_opt_class();
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = v5[311];
    v38[2] = __42__PLBBMav13HwMsgParser_logMPSSWithLogger___block_invoke_875;
    v38[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v38[4] = v24;
    if (qword_2811F83D0 != -1)
    {
      dispatch_once(&qword_2811F83D0, v38);
    }

    if (byte_2811F814C == 1)
    {
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Q6SW_Perf=<unknown>"];
      v25 = MEMORY[0x277D3F178];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
      lastPathComponent3 = [v26 lastPathComponent];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logMPSSWithLogger:]"];
      [v25 logMessage:v23 fromFile:lastPathComponent3 fromFunction:v28 fromLineNumber:744];

      v29 = PLLogCommon();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v42 = v23;
        _os_log_debug_impl(&dword_21A4C6000, v29, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_22;
    }
  }

LABEL_30:
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v30 = objc_opt_class();
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = v5[311];
    v37[2] = __42__PLBBMav13HwMsgParser_logMPSSWithLogger___block_invoke_881;
    v37[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v37[4] = v30;
    if (qword_2811F83D8 != -1)
    {
      dispatch_once(&qword_2811F83D8, v37);
    }

    if (byte_2811F814D == 1)
    {
      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded BB HW MPSS"];
      v32 = MEMORY[0x277D3F178];
      v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
      lastPathComponent4 = [v33 lastPathComponent];
      v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logMPSSWithLogger:]"];
      [v32 logMessage:v31 fromFile:lastPathComponent4 fromFunction:v35 fromLineNumber:747];

      v36 = PLLogCommon();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v42 = v31;
        _os_log_debug_impl(&dword_21A4C6000, v36, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

void *__42__PLBBMav13HwMsgParser_logMPSSWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F814A = result;
  return result;
}

void *__42__PLBBMav13HwMsgParser_logMPSSWithLogger___block_invoke_866(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F814B = result;
  return result;
}

void *__42__PLBBMav13HwMsgParser_logMPSSWithLogger___block_invoke_875(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F814C = result;
  return result;
}

void *__42__PLBBMav13HwMsgParser_logMPSSWithLogger___block_invoke_881(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F814D = result;
  return result;
}

- (void)logLPASSWithLogger:(id)logger
{
  v27 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  if ([(PLBBMav13HwMsgParser *)self lpassState])
  {
    v5 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav13HwMsgParser *)self lpassState] ofSize:2];
    [loggerCopy setLpassOnOffState:v5];
LABEL_3:

    goto LABEL_11;
  }

  [loggerCopy appendToError:@"LPASS State=<unknown> "];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__PLBBMav13HwMsgParser_logLPASSWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v6;
    if (qword_2811F83E0 != -1)
    {
      dispatch_once(&qword_2811F83E0, block);
    }

    if (byte_2811F814E == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"LPASS State=<unknown>"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logLPASSWithLogger:]"];
      [v7 logMessage:v5 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:762];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v26 = v5;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_3;
    }
  }

LABEL_11:
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v12 = objc_opt_class();
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __43__PLBBMav13HwMsgParser_logLPASSWithLogger___block_invoke_893;
    v22 = &__block_descriptor_40_e5_v8__0lu32l8;
    v23 = v12;
    if (qword_2811F83E8 != -1)
    {
      dispatch_once(&qword_2811F83E8, &v19);
    }

    if (byte_2811F814F == 1)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded BB HW LPASS", v19, v20, v21, v22, v23];
      v14 = MEMORY[0x277D3F178];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
      lastPathComponent2 = [v15 lastPathComponent];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logLPASSWithLogger:]"];
      [v14 logMessage:v13 fromFile:lastPathComponent2 fromFunction:v17 fromLineNumber:765];

      v18 = PLLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v26 = v13;
        _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

void *__43__PLBBMav13HwMsgParser_logLPASSWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F814E = result;
  return result;
}

void *__43__PLBBMav13HwMsgParser_logLPASSWithLogger___block_invoke_893(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F814F = result;
  return result;
}

- (void)logPeripheralsWithLogger:(id)logger
{
  v48 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__PLBBMav13HwMsgParser_logPeripheralsWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F83F0 != -1)
    {
      dispatch_once(&qword_2811F83F0, block);
    }

    if (byte_2811F8150 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav13HwMsgParser logPeripheralsWithLogger:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logPeripheralsWithLogger:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:770];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v47 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = loggerCopy;
  if ([(PLBBMav13HwMsgParser *)self gpsState])
  {
    v13 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav13HwMsgParser *)self gpsState] ofSize:2];
    [v12 setGpsOnOff:v13];
LABEL_10:

    goto LABEL_18;
  }

  [v12 appendToError:@"GPS=<unknown> "];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v14 = objc_opt_class();
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __49__PLBBMav13HwMsgParser_logPeripheralsWithLogger___block_invoke_902;
    v44[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v44[4] = v14;
    if (qword_2811F83F8 != -1)
    {
      dispatch_once(&qword_2811F83F8, v44);
    }

    if (byte_2811F8151 == 1)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPS=<unknown>"];
      v15 = MEMORY[0x277D3F178];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
      lastPathComponent2 = [v16 lastPathComponent];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logPeripheralsWithLogger:]"];
      [v15 logMessage:v13 fromFile:lastPathComponent2 fromFunction:v18 fromLineNumber:782];

      v19 = PLLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v47 = v13;
        _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_10;
    }
  }

LABEL_18:
  if ([(PLBBMav13HwMsgParser *)self gpsDpoState])
  {
    v20 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav13HwMsgParser *)self gpsDpoState] ofSize:2];
    [v12 setGpsDPOOnOff:v20];
LABEL_20:

    goto LABEL_28;
  }

  [v12 appendToError:@"GPS_DPO=<unknown> "];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v21 = objc_opt_class();
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __49__PLBBMav13HwMsgParser_logPeripheralsWithLogger___block_invoke_911;
    v43[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v43[4] = v21;
    if (qword_2811F8400 != -1)
    {
      dispatch_once(&qword_2811F8400, v43);
    }

    if (byte_2811F8152 == 1)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPS_DPO=<unknown>"];
      v22 = MEMORY[0x277D3F178];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
      lastPathComponent3 = [v23 lastPathComponent];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logPeripheralsWithLogger:]"];
      [v22 logMessage:v20 fromFile:lastPathComponent3 fromFunction:v25 fromLineNumber:794];

      v26 = PLLogCommon();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v47 = v20;
        _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_20;
    }
  }

LABEL_28:
  if ([(PLBBMav13HwMsgParser *)self gpsDpoBins])
  {
    v27 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav13HwMsgParser *)self gpsDpoBins] ofSize:6];
    [v12 setGpsDPOBin:v27];
LABEL_30:

    goto LABEL_38;
  }

  [v12 appendToError:@"GPS_DPO_BINS=<unknown> "];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v28 = objc_opt_class();
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __49__PLBBMav13HwMsgParser_logPeripheralsWithLogger___block_invoke_920;
    v42[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v42[4] = v28;
    if (qword_2811F8408 != -1)
    {
      dispatch_once(&qword_2811F8408, v42);
    }

    if (byte_2811F8153 == 1)
    {
      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPS_DPO_BINS=<unknown>"];
      v29 = MEMORY[0x277D3F178];
      v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
      lastPathComponent4 = [v30 lastPathComponent];
      v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logPeripheralsWithLogger:]"];
      [v29 logMessage:v27 fromFile:lastPathComponent4 fromFunction:v32 fromLineNumber:806];

      v33 = PLLogCommon();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v47 = v27;
        _os_log_debug_impl(&dword_21A4C6000, v33, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_30;
    }
  }

LABEL_38:
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v34 = objc_opt_class();
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __49__PLBBMav13HwMsgParser_logPeripheralsWithLogger___block_invoke_926;
    v41[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v41[4] = v34;
    if (qword_2811F8410 != -1)
    {
      dispatch_once(&qword_2811F8410, v41);
    }

    if (byte_2811F8154 == 1)
    {
      v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded BB HW Peripherals GPS DPO BINS"];
      v36 = MEMORY[0x277D3F178];
      v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
      lastPathComponent5 = [v37 lastPathComponent];
      v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logPeripheralsWithLogger:]"];
      [v36 logMessage:v35 fromFile:lastPathComponent5 fromFunction:v39 fromLineNumber:809];

      v40 = PLLogCommon();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v47 = v35;
        _os_log_debug_impl(&dword_21A4C6000, v40, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

void *__49__PLBBMav13HwMsgParser_logPeripheralsWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8150 = result;
  return result;
}

void *__49__PLBBMav13HwMsgParser_logPeripheralsWithLogger___block_invoke_902(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8151 = result;
  return result;
}

void *__49__PLBBMav13HwMsgParser_logPeripheralsWithLogger___block_invoke_911(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8152 = result;
  return result;
}

void *__49__PLBBMav13HwMsgParser_logPeripheralsWithLogger___block_invoke_920(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8153 = result;
  return result;
}

void *__49__PLBBMav13HwMsgParser_logPeripheralsWithLogger___block_invoke_926(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8154 = result;
  return result;
}

- (void)logProtocolWithLogger:(id)logger container:(id)container state:(id *)state forRAT:(unsigned int)t
{
  v6 = *&t;
  v31 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  v11 = MEMORY[0x277D3F180];
  containerCopy = container;
  if ([v11 debugEnabled])
  {
    v13 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __69__PLBBMav13HwMsgParser_logProtocolWithLogger_container_state_forRAT___block_invoke;
    v27 = &__block_descriptor_40_e5_v8__0lu32l8;
    v28 = v13;
    if (qword_2811F8418 != -1)
    {
      dispatch_once(&qword_2811F8418, &block);
    }

    if (byte_2811F8155 == 1)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav13HwMsgParser logProtocolWithLogger:container:state:forRAT:]", block, v25, v26, v27, v28];
      v15 = MEMORY[0x277D3F178];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
      lastPathComponent = [v16 lastPathComponent];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logProtocolWithLogger:container:state:forRAT:]"];
      [v15 logMessage:v14 fromFile:lastPathComponent fromFunction:v18 fromLineNumber:817];

      v19 = PLLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v30 = v14;
        _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v20 = loggerCopy;
  v21 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:state ofSize:16];
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v6];
  [v20 setRadioTech:v22];

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v6];
  [containerCopy setObject:v21 forKey:v23];
}

void *__69__PLBBMav13HwMsgParser_logProtocolWithLogger_container_state_forRAT___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8155 = result;
  return result;
}

- (void)logProtocolOnlyWithLogger:(id)logger forRAT:(unsigned int)t
{
  v4 = *&t;
  v53 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = objc_opt_class();
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __57__PLBBMav13HwMsgParser_logProtocolOnlyWithLogger_forRAT___block_invoke;
    v49[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v49[4] = v7;
    if (qword_2811F8420 != -1)
    {
      dispatch_once(&qword_2811F8420, v49);
    }

    if (byte_2811F8156 == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav13HwMsgParser logProtocolOnlyWithLogger:forRAT:]"];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
      lastPathComponent = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logProtocolOnlyWithLogger:forRAT:]"];
      [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:829];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v52 = v8;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v14 = loggerCopy;
  v15 = objc_alloc_init(PLBBMavLogMsg);
  agent = [(PLBasebandMessage *)self agent];
  [(PLBasebandMessage *)v15 setAgent:agent];

  [(PLBBMavLogMsg *)v15 setError:&stru_282B650A0];
  seqNum = [(PLBasebandMessage *)self seqNum];
  date = [(PLBasebandMessage *)self date];
  [(PLBasebandMessage *)self timeCal];
  [(PLBBMavLogMsg *)v15 setHeaderWithSeqNum:seqNum andDate:date andTimeCal:?];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
  [(PLBBMavLogMsg *)v15 setRadioTech:v19];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLMav4BasebandHardwareMessage logDuration](self, "logDuration")}];
  [(PLBBMavLogMsg *)v15 setLogDuration:v20];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{(-[PLMav4BasebandHardwareMessage header](self, "header")[16] - -[PLMav4BasebandHardwareMessage header](self, "header")[12])}];
  [(PLBBMavLogMsg *)v15 setBbHwLogDurationInTicks:v21];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = [v14 protocolStateHistDict];
  v22 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v22)
  {
    v23 = v22;
    v43 = *v46;
    do
    {
      v24 = 0;
      v25 = 0x277D3F000uLL;
      do
      {
        if (*v46 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v45 + 1) + 8 * v24);
        protocolStateHistDict = [v14 protocolStateHistDict];
        v28 = [protocolStateHistDict objectForKey:v26];

        if (v28)
        {
          [(PLBBMavLogMsg *)v15 setProtocolStateHist:v28];
          if ([*(v25 + 384) debugEnabled])
          {
            v29 = objc_opt_class();
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __57__PLBBMav13HwMsgParser_logProtocolOnlyWithLogger_forRAT___block_invoke_932;
            block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            block[4] = v29;
            if (qword_2811F8428 != -1)
            {
              dispatch_once(&qword_2811F8428, block);
            }

            if (byte_2811F8157 == 1)
            {
              v30 = MEMORY[0x277CCACA8];
              protocolStateHistDict2 = [v14 protocolStateHistDict];
              v32 = [protocolStateHistDict2 objectForKey:v26];
              v33 = [v30 stringWithFormat:@"%@ : %@", v26, v32];

              v34 = MEMORY[0x277D3F178];
              v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
              lastPathComponent2 = [v35 lastPathComponent];
              v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logProtocolOnlyWithLogger:forRAT:]"];
              [v34 logMessage:v33 fromFile:lastPathComponent2 fromFunction:v37 fromLineNumber:849];

              v38 = PLLogCommon();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v52 = v33;
                _os_log_debug_impl(&dword_21A4C6000, v38, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v25 = 0x277D3F000;
            }
          }
        }

        logEventBackwardGrpEntriesBBMavHwOtherPerRAT = [(PLBBMavLogMsg *)v15 logEventBackwardGrpEntriesBBMavHwOtherPerRAT];
        v40 = [logEventBackwardGrpEntriesBBMavHwOtherPerRAT objectForKey:@"entry"];
        v41 = [logEventBackwardGrpEntriesBBMavHwOtherPerRAT objectForKey:@"name"];
        [v14 addToGroupPLBBMavHwEntry:v40 withEntryKey:v41];

        ++v24;
      }

      while (v23 != v24);
      v23 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v23);
  }
}

void *__57__PLBBMav13HwMsgParser_logProtocolOnlyWithLogger_forRAT___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8156 = result;
  return result;
}

void *__57__PLBBMav13HwMsgParser_logProtocolOnlyWithLogger_forRAT___block_invoke_932(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8157 = result;
  return result;
}

- (void)logLegacyRFWithLogger:(id)logger usingData:(id *)data forRAT:(unsigned int)t
{
  v5 = *&t;
  v48 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v9 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__PLBBMav13HwMsgParser_logLegacyRFWithLogger_usingData_forRAT___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v9;
    if (qword_2811F8430 != -1)
    {
      dispatch_once(&qword_2811F8430, block);
    }

    if (byte_2811F8158 == 1)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav13HwMsgParser logLegacyRFWithLogger:usingData:forRAT:]"];
      v11 = MEMORY[0x277D3F178];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
      lastPathComponent = [v12 lastPathComponent];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logLegacyRFWithLogger:usingData:forRAT:]"];
      [v11 logMessage:v10 fromFile:lastPathComponent fromFunction:v14 fromLineNumber:864];

      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v47 = v10;
        _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v16 = loggerCopy;
  v17 = objc_alloc_init(PLBBMavLogMsg);
  agent = [(PLBasebandMessage *)self agent];
  [(PLBasebandMessage *)v17 setAgent:agent];

  [(PLBBMavLogMsg *)v17 setError:&stru_282B650A0];
  seqNum = [(PLBasebandMessage *)self seqNum];
  date = [(PLBasebandMessage *)self date];
  [(PLBasebandMessage *)self timeCal];
  [(PLBBMavLogMsg *)v17 setHeaderWithSeqNum:seqNum andDate:date andTimeCal:?];

  v21 = [(PLMav7BasebandHardwareMessage *)self indexToRAT:v5];
  [(PLBBMavLogMsg *)v17 setRat:v21];

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLMav4BasebandHardwareMessage logDuration](self, "logDuration")}];
  [(PLBBMavLogMsg *)v17 setLogDuration:v22];

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5];
  [(PLBBMavLogMsg *)v17 setRadioTech:v23];

  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{(-[PLMav4BasebandHardwareMessage header](self, "header")[16] - -[PLMav4BasebandHardwareMessage header](self, "header")[12])}];
  [(PLBBMavLogMsg *)v17 setBbHwLogDurationInTicks:v24];

  v25 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:data ofSize:4];
  [(PLBBMavLogMsg *)v17 setRssiModeCount:v25];

  v26 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:data->var1 ofSize:13];
  [(PLBBMavLogMsg *)v17 setRx0RssiPowerHist:v26];

  v27 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:data->var2 ofSize:13];
  [(PLBBMavLogMsg *)v17 setRx1RssiPowerHist:v27];

  v28 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:data->var4 ofSize:11];
  [(PLBBMavLogMsg *)v17 setRx0SQAPowerHist:v28];

  v29 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:data->var5 ofSize:11];
  [(PLBBMavLogMsg *)v17 setRx1SQAPowerHist:v29];

  if (v5 != 3)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v30 = objc_opt_class();
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __63__PLBBMav13HwMsgParser_logLegacyRFWithLogger_usingData_forRAT___block_invoke_944;
      v44[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v44[4] = v30;
      if (qword_2811F8438 != -1)
      {
        dispatch_once(&qword_2811F8438, v44);
      }

      if (byte_2811F8159 == 1)
      {
        v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"Not WCDMA legacy data, use Tx power"];
        v31 = MEMORY[0x277D3F178];
        v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
        lastPathComponent2 = [v32 lastPathComponent];
        v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logLegacyRFWithLogger:usingData:forRAT:]"];
        [v31 logMessage:v43 fromFile:lastPathComponent2 fromFunction:v34 fromLineNumber:900];

        v35 = PLLogCommon();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v47 = v43;
          _os_log_debug_impl(&dword_21A4C6000, v35, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v36 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:data->var3 ofSize:12];
    [(PLBBMavLogMsg *)v17 setTxPowerHist:v36];
  }

  protocolStateHistDict = [v16 protocolStateHistDict];
  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5];
  v39 = [protocolStateHistDict objectForKey:v38];

  if (v39)
  {
    [(PLBBMavLogMsg *)v17 setProtocolStateHist:v39];
  }

  logEventBackwardGrpEntriesBBMavHwOtherPerRAT = [(PLBBMavLogMsg *)v17 logEventBackwardGrpEntriesBBMavHwOtherPerRAT];
  v41 = [logEventBackwardGrpEntriesBBMavHwOtherPerRAT objectForKey:@"entry"];
  v42 = [logEventBackwardGrpEntriesBBMavHwOtherPerRAT objectForKey:@"name"];
  [v16 addToGroupPLBBMavHwEntry:v41 withEntryKey:v42];
}

void *__63__PLBBMav13HwMsgParser_logLegacyRFWithLogger_usingData_forRAT___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8158 = result;
  return result;
}

void *__63__PLBBMav13HwMsgParser_logLegacyRFWithLogger_usingData_forRAT___block_invoke_944(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8159 = result;
  return result;
}

- (void)logHwRFEnhLTEWithLogger:(id)logger
{
  v65 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__PLBBMav13HwMsgParser_logHwRFEnhLTEWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F8440 != -1)
    {
      dispatch_once(&qword_2811F8440, block);
    }

    if (byte_2811F815A == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav13HwMsgParser logHwRFEnhLTEWithLogger:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logHwRFEnhLTEWithLogger:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:919];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v64 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = loggerCopy;
  v13 = objc_alloc_init(PLBBMavHwRfLTELogMsg);
  if (v13)
  {
    agent = [(PLBasebandMessage *)self agent];
    [(PLBBMsgRoot *)v13 setAgent:agent];

    [(PLBBMavHwRfLTELogMsg *)v13 setError:@"not set"];
    seqNum = [(PLBasebandMessage *)self seqNum];
    date = [(PLBasebandMessage *)self date];
    [(PLBasebandMessage *)self timeCal];
    [(PLBBMavHwRfLTELogMsg *)v13 setHeaderWithSeqNum:seqNum andDate:date andTimeCal:?];

    if (([(PLBBMav13HwMsgParser *)self optimMaskArray][1] & 0x10) == 0 || [(PLBBMav13HwMsgParser *)self rfEnhLTE])
    {
      v17 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:{(-[PLBBMav13HwMsgParser rfEnhLTE](self, "rfEnhLTE")[4] - -[PLBBMav13HwMsgParser rfEnhLTE](self, "rfEnhLTE")[8])}];
      [(PLBBMavHwRfLTELogMsg *)v13 setLogDuration:v17];

      v18 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{-[PLBBMav13HwMsgParser rfEnhLTE](self, "rfEnhLTE")[16]}];
      [(PLBBMavHwRfLTELogMsg *)v13 setDupMode:v18];

      v19 = [(PLBasebandHardwareMessage *)self convertUint8ArrayToNSArray:[(PLBBMav13HwMsgParser *)self rfEnhLTE]+ 20 ofSize:4];
      [(PLBBMavHwRfLTELogMsg *)v13 setCaFreqInfo:v19];

      v20 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav13HwMsgParser *)self rfEnhLTE]+ 24 ofSize:18];
      [(PLBBMavHwRfLTELogMsg *)v13 setDlC0TBSzCnt:v20];

      v21 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav13HwMsgParser *)self rfEnhLTE]+ 96 ofSize:18];
      [(PLBBMavHwRfLTELogMsg *)v13 setDlC1TBSzCnt:v21];

      v22 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav13HwMsgParser *)self rfEnhLTE]+ 168 ofSize:12];
      [(PLBBMavHwRfLTELogMsg *)v13 setTxPwrCnt:v22];

      v23 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav13HwMsgParser *)self rfEnhLTE]+ 216 ofSize:4];
      [(PLBBMavHwRfLTELogMsg *)v13 setCaSCCCnt:v23];

      v24 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav13HwMsgParser *)self rfEnhLTE]+ 216 ofSize:4];
      [(PLBBMavHwRfLTELogMsg *)v13 setCaPriCCCnt:v24];

      v25 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav13HwMsgParser *)self rfEnhLTE]+ 232 ofSize:4];
      [(PLBBMavHwRfLTELogMsg *)v13 setCaPriCCCnt:v25];

      v26 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav13HwMsgParser *)self rfEnhLTE]+ 248 ofSize:4];
      [(PLBBMavHwRfLTELogMsg *)v13 setCaPriSecCCCnt:v26];

      v27 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav13HwMsgParser *)self rfEnhLTE]+ 232 ofSize:8];
      [(PLBBMavHwRfLTELogMsg *)v13 setActRxTxPriCCCnt:v27];

      v28 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav13HwMsgParser *)self rfEnhLTE]+ 264 ofSize:8];
      [(PLBBMavHwRfLTELogMsg *)v13 setActRxTxSecCCCnt:v28];

      v29 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav13HwMsgParser *)self rfEnhLTE]+ 296 ofSize:8];
      [(PLBBMavHwRfLTELogMsg *)v13 setActRxTxPriSecCCCnt:v29];

      v30 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav13HwMsgParser *)self rfEnhLTE]+ 328 ofSize:7];
      [(PLBBMavHwRfLTELogMsg *)v13 setSleepStateIdleCnt:v30];

      v31 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav13HwMsgParser *)self rfEnhLTE]+ 356 ofSize:7];
      [(PLBBMavHwRfLTELogMsg *)v13 setSleepStateConnCnt:v31];

      v32 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav13HwMsgParser *)self rfEnhLTE]+ 384 ofSize:6];
      [(PLBBMavHwRfLTELogMsg *)v13 setRsrpIdleCnt:v32];

      v33 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav13HwMsgParser *)self rfEnhLTE]+ 408 ofSize:6];
      [(PLBBMavHwRfLTELogMsg *)v13 setRsrpConnCnt:v33];

      v34 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav13HwMsgParser *)self rfEnhLTE]+ 432 ofSize:6];
      [(PLBBMavHwRfLTELogMsg *)v13 setSinrIdleCnt:v34];

      v35 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav13HwMsgParser *)self rfEnhLTE]+ 456 ofSize:6];
      [(PLBBMavHwRfLTELogMsg *)v13 setSinrConnCnt:v35];

      v36 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav13HwMsgParser *)self rfEnhLTE]+ 480 ofSize:5];
      [(PLBBMavHwRfLTELogMsg *)v13 setArxStateCnt:v36];

      v37 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav13HwMsgParser *)self rfEnhLTE]+ 500 ofSize:3];
      [(PLBBMavHwRfLTELogMsg *)v13 setNlicStateCnt:v37];

      v38 = [(PLBasebandHardwareMessage *)self convertUint64ArrayToNSArray:[(PLBBMav13HwMsgParser *)self rfEnhLTE]+ 512 ofSize:8];
      [(PLBBMavHwRfLTELogMsg *)v13 setBpeStats:v38];

      logEventBackwardBBMav13HwRfLTE = [(PLBBMavHwRfLTELogMsg *)v13 logEventBackwardBBMav13HwRfLTE];
      v40 = [logEventBackwardBBMav13HwRfLTE objectForKey:@"entry"];
      v41 = [logEventBackwardBBMav13HwRfLTE objectForKey:@"entryKey"];
      [v12 addToGroupPLBBMavHwEntry:v40 withEntryKey:v41];

      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_32;
      }

      v42 = objc_opt_class();
      v59[0] = MEMORY[0x277D85DD0];
      v59[1] = 3221225472;
      v59[2] = __48__PLBBMav13HwMsgParser_logHwRFEnhLTEWithLogger___block_invoke_969;
      v59[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v59[4] = v42;
      if (qword_2811F8458 != -1)
      {
        dispatch_once(&qword_2811F8458, v59);
      }

      if (byte_2811F815D != 1)
      {
        goto LABEL_32;
      }

      v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded enh Mav HW RF ENH LTE"];
      v44 = MEMORY[0x277D3F178];
      v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
      lastPathComponent2 = [v45 lastPathComponent];
      v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logHwRFEnhLTEWithLogger:]"];
      [v44 logMessage:v43 fromFile:lastPathComponent2 fromFunction:v47 fromLineNumber:1029];

      v48 = PLLogCommon();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v64 = v43;
        _os_log_debug_impl(&dword_21A4C6000, v48, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

LABEL_31:
LABEL_32:

      goto LABEL_33;
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v54 = objc_opt_class();
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __48__PLBBMav13HwMsgParser_logHwRFEnhLTEWithLogger___block_invoke_960;
      v60[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v60[4] = v54;
      if (qword_2811F8450 != -1)
      {
        dispatch_once(&qword_2811F8450, v60);
      }

      if (byte_2811F815C == 1)
      {
        logEventBackwardBBMav13HwRfLTE = [MEMORY[0x277CCACA8] stringWithFormat:@"rfEnhLTE is not valid, return"];
        v55 = MEMORY[0x277D3F178];
        v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
        lastPathComponent3 = [v56 lastPathComponent];
        v58 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logHwRFEnhLTEWithLogger:]"];
        [v55 logMessage:logEventBackwardBBMav13HwRfLTE fromFile:lastPathComponent3 fromFunction:v58 fromLineNumber:934];

        v43 = PLLogCommon();
        if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_31;
        }

        *buf = 138412290;
        v64 = logEventBackwardBBMav13HwRfLTE;
        goto LABEL_30;
      }
    }
  }

  else if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v49 = objc_opt_class();
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __48__PLBBMav13HwMsgParser_logHwRFEnhLTEWithLogger___block_invoke_951;
    v61[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v61[4] = v49;
    if (qword_2811F8448 != -1)
    {
      dispatch_once(&qword_2811F8448, v61);
    }

    if (byte_2811F815B == 1)
    {
      logEventBackwardBBMav13HwRfLTE = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: mem alloc for logHwRfLTE failed"];
      v50 = MEMORY[0x277D3F178];
      v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
      lastPathComponent4 = [v51 lastPathComponent];
      v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logHwRFEnhLTEWithLogger:]"];
      [v50 logMessage:logEventBackwardBBMav13HwRfLTE fromFile:lastPathComponent4 fromFunction:v53 fromLineNumber:923];

      v43 = PLLogCommon();
      if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_31;
      }

      *buf = 138412290;
      v64 = logEventBackwardBBMav13HwRfLTE;
LABEL_30:
      _os_log_debug_impl(&dword_21A4C6000, v43, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      goto LABEL_31;
    }
  }

LABEL_33:
}

void *__48__PLBBMav13HwMsgParser_logHwRFEnhLTEWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F815A = result;
  return result;
}

void *__48__PLBBMav13HwMsgParser_logHwRFEnhLTEWithLogger___block_invoke_951(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F815B = result;
  return result;
}

void *__48__PLBBMav13HwMsgParser_logHwRFEnhLTEWithLogger___block_invoke_960(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F815C = result;
  return result;
}

void *__48__PLBBMav13HwMsgParser_logHwRFEnhLTEWithLogger___block_invoke_969(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F815D = result;
  return result;
}

- (void)logHwRFEnhWCDMAWithLogger:(id)logger
{
  v51 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__PLBBMav13HwMsgParser_logHwRFEnhWCDMAWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F8460 != -1)
    {
      dispatch_once(&qword_2811F8460, block);
    }

    if (byte_2811F815E == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav13HwMsgParser logHwRFEnhWCDMAWithLogger:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logHwRFEnhWCDMAWithLogger:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:1034];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v50 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = loggerCopy;
  v13 = objc_alloc_init(PLBBMavHwRfWCDMALogMsg);
  if (v13)
  {
    agent = [(PLBasebandMessage *)self agent];
    [(PLBasebandMessage *)v13 setAgent:agent];

    [(PLBBMavHwRfWCDMALogMsg *)v13 setError:@"not set"];
    seqNum = [(PLBasebandMessage *)self seqNum];
    date = [(PLBasebandMessage *)self date];
    [(PLBasebandMessage *)self timeCal];
    [(PLBBMavHwRfWCDMALogMsg *)v13 setHeaderWithSeqNum:seqNum andDate:date andTimeCal:?];

    v17 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:{(*-[PLBBMav13HwMsgParser rfEnhWCDMA](self, "rfEnhWCDMA") - -[PLBBMav13HwMsgParser rfEnhWCDMA](self, "rfEnhWCDMA")[4])}];
    [(PLBBMavHwRfWCDMALogMsg *)v13 setLogDuration:v17];

    v18 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav13HwMsgParser *)self rfEnhWCDMA]+ 8 ofSize:3];
    [(PLBBMavHwRfWCDMALogMsg *)v13 setSCEqStatCnt:v18];

    v19 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav13HwMsgParser *)self rfEnhWCDMA]+ 20 ofSize:3];
    [(PLBBMavHwRfWCDMALogMsg *)v13 setDCEqStatCnt:v19];

    v20 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav13HwMsgParser *)self rfEnhWCDMA]+ 32 ofSize:4];
    [(PLBBMavHwRfWCDMALogMsg *)v13 setSCQsetEqStatCnt:v20];

    v21 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav13HwMsgParser *)self rfEnhWCDMA]+ 48 ofSize:4];
    [(PLBBMavHwRfWCDMALogMsg *)v13 setDCQsetEqStatCnt:v21];

    v22 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav13HwMsgParser *)self rfEnhWCDMA]+ 64 ofSize:2];
    [(PLBBMavHwRfWCDMALogMsg *)v13 setDurInCarrierMode:v22];

    v23 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav13HwMsgParser *)self rfEnhWCDMA]+ 72 ofSize:4];
    [(PLBBMavHwRfWCDMALogMsg *)v13 setRABModeCnt:v23];

    v24 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav13HwMsgParser *)self rfEnhWCDMA]+ 88 ofSize:4];
    [(PLBBMavHwRfWCDMALogMsg *)v13 setRABTypeCnt:v24];

    v25 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav13HwMsgParser *)self rfEnhWCDMA]+ 104 ofSize:12];
    [(PLBBMavHwRfWCDMALogMsg *)v13 setTxPwrBucket:v25];

    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[PLBBMav13HwMsgParser rfEnhWCDMA](self, "rfEnhWCDMA")[152]}];
    [(PLBBMavHwRfWCDMALogMsg *)v13 setFetCnt:v26];

    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[PLBBMav13HwMsgParser rfEnhWCDMA](self, "rfEnhWCDMA")[156]}];
    [(PLBBMavHwRfWCDMALogMsg *)v13 setCpcRxOnCnt:v27];

    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[PLBBMav13HwMsgParser rfEnhWCDMA](self, "rfEnhWCDMA")[160]}];
    [(PLBBMavHwRfWCDMALogMsg *)v13 setCpcRxTxOffCnt:v28];

    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[PLBBMav13HwMsgParser rfEnhWCDMA](self, "rfEnhWCDMA")[164]}];
    [(PLBBMavHwRfWCDMALogMsg *)v13 setCpcTimeCnt:v29];

    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[PLBBMav13HwMsgParser rfEnhWCDMA](self, "rfEnhWCDMA")[168]}];
    [(PLBBMavHwRfWCDMALogMsg *)v13 setCpcEnergy:v30];

    logEventBackwardBBMavHwRfWCDMA = [(PLBBMavHwRfWCDMALogMsg *)v13 logEventBackwardBBMavHwRfWCDMA];
    v32 = [logEventBackwardBBMavHwRfWCDMA objectForKey:@"entry"];
    v33 = [logEventBackwardBBMavHwRfWCDMA objectForKey:@"entryKey"];
    [v12 addToGroupPLBBMavHwEntry:v32 withEntryKey:v33];

    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_23;
    }

    v34 = objc_opt_class();
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __50__PLBBMav13HwMsgParser_logHwRFEnhWCDMAWithLogger___block_invoke_982;
    v46[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v46[4] = v34;
    if (qword_2811F8470 != -1)
    {
      dispatch_once(&qword_2811F8470, v46);
    }

    if (byte_2811F8160 != 1)
    {
      goto LABEL_23;
    }

    v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded enh BB HW RF WCDMA"];
    v36 = MEMORY[0x277D3F178];
    v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
    lastPathComponent2 = [v37 lastPathComponent];
    v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logHwRFEnhWCDMAWithLogger:]"];
    [v36 logMessage:v35 fromFile:lastPathComponent2 fromFunction:v39 fromLineNumber:1095];

    v40 = PLLogCommon();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v50 = v35;
      _os_log_debug_impl(&dword_21A4C6000, v40, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

LABEL_22:
LABEL_23:

    goto LABEL_24;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v41 = objc_opt_class();
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __50__PLBBMav13HwMsgParser_logHwRFEnhWCDMAWithLogger___block_invoke_976;
    v47[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v47[4] = v41;
    if (qword_2811F8468 != -1)
    {
      dispatch_once(&qword_2811F8468, v47);
    }

    if (byte_2811F815F == 1)
    {
      logEventBackwardBBMavHwRfWCDMA = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: mem alloc for logHwRfWCDMA failed"];
      v42 = MEMORY[0x277D3F178];
      v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
      lastPathComponent3 = [v43 lastPathComponent];
      v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logHwRFEnhWCDMAWithLogger:]"];
      [v42 logMessage:logEventBackwardBBMavHwRfWCDMA fromFile:lastPathComponent3 fromFunction:v45 fromLineNumber:1038];

      v35 = PLLogCommon();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v50 = logEventBackwardBBMavHwRfWCDMA;
        _os_log_debug_impl(&dword_21A4C6000, v35, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_22;
    }
  }

LABEL_24:
}

void *__50__PLBBMav13HwMsgParser_logHwRFEnhWCDMAWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F815E = result;
  return result;
}

void *__50__PLBBMav13HwMsgParser_logHwRFEnhWCDMAWithLogger___block_invoke_976(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F815F = result;
  return result;
}

void *__50__PLBBMav13HwMsgParser_logHwRFEnhWCDMAWithLogger___block_invoke_982(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8160 = result;
  return result;
}

- (void)logHwRFGSMWithLogger:(id)logger
{
  v37 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__PLBBMav13HwMsgParser_logHwRFGSMWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F8478 != -1)
    {
      dispatch_once(&qword_2811F8478, block);
    }

    if (byte_2811F8161 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav13HwMsgParser logHwRFGSMWithLogger:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logHwRFGSMWithLogger:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:1101];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v36 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = loggerCopy;
  v13 = objc_alloc_init(PLBBMavHwRfGSMLogMsg);
  if (!v13)
  {
    logEventBackwardBBMavHwRfGSM = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: mem alloc for logHwRfEnhGSM failed"];
    v29 = MEMORY[0x277D3F178];
    v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
    lastPathComponent2 = [v30 lastPathComponent];
    v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logHwRFGSMWithLogger:]"];
    [v29 logMessage:logEventBackwardBBMavHwRfGSM fromFile:lastPathComponent2 fromFunction:v32 fromLineNumber:1105];

    v23 = PLLogCommon();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v36 = logEventBackwardBBMavHwRfGSM;
      _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    goto LABEL_18;
  }

  agent = [(PLBasebandMessage *)self agent];
  [(PLBasebandMessage *)v13 setAgent:agent];

  [(PLBBMavHwRfGSMLogMsg *)v13 setError:@"not set"];
  seqNum = [(PLBasebandMessage *)self seqNum];
  date = [(PLBasebandMessage *)self date];
  [(PLBasebandMessage *)self timeCal];
  [(PLBBMavHwRfGSMLogMsg *)v13 setHeaderWithSeqNum:seqNum andDate:date andTimeCal:?];

  v17 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:{(*-[PLBBMav13HwMsgParser rfEnhGSM](self, "rfEnhGSM") - -[PLBBMav13HwMsgParser rfEnhGSM](self, "rfEnhGSM")[4])}];
  [(PLBBMavHwRfGSMLogMsg *)v13 setLogDuration:v17];

  v18 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav13HwMsgParser *)self rfEnhGSM]+ 8 ofSize:3];
  [(PLBBMavHwRfGSMLogMsg *)v13 setConnState:v18];

  logEventBackwardBBMavHwRfGSM = [(PLBBMavHwRfGSMLogMsg *)v13 logEventBackwardBBMavHwRfGSM];
  v20 = [logEventBackwardBBMavHwRfGSM objectForKey:@"entry"];
  v21 = [logEventBackwardBBMavHwRfGSM objectForKey:@"entryKey"];
  [v12 addToGroupPLBBMavHwEntry:v20 withEntryKey:v21];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v22 = objc_opt_class();
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __45__PLBBMav13HwMsgParser_logHwRFGSMWithLogger___block_invoke_992;
    v33[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v33[4] = v22;
    if (qword_2811F8480 != -1)
    {
      dispatch_once(&qword_2811F8480, v33);
    }

    if (byte_2811F8162 == 1)
    {
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded enh BB HW RF ENH GSM"];
      v24 = MEMORY[0x277D3F178];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
      lastPathComponent3 = [v25 lastPathComponent];
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logHwRFGSMWithLogger:]"];
      [v24 logMessage:v23 fromFile:lastPathComponent3 fromFunction:v27 fromLineNumber:1125];

      v28 = PLLogCommon();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v36 = v23;
        _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

LABEL_18:
    }
  }
}

void *__45__PLBBMav13HwMsgParser_logHwRFGSMWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8161 = result;
  return result;
}

void *__45__PLBBMav13HwMsgParser_logHwRFGSMWithLogger___block_invoke_992(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8162 = result;
  return result;
}

- (void)logHwRFTDSWithLogger:(id)logger
{
  v40 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__PLBBMav13HwMsgParser_logHwRFTDSWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F8488 != -1)
    {
      dispatch_once(&qword_2811F8488, block);
    }

    if (byte_2811F8163 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav13HwMsgParser logHwRFTDSWithLogger:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logHwRFTDSWithLogger:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:1130];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v39 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = loggerCopy;
  v13 = objc_alloc_init(PLBBMavHwRfTDSLogMsg);
  if (v13)
  {
    agent = [(PLBasebandMessage *)self agent];
    [(PLBasebandMessage *)v13 setAgent:agent];

    [(PLBBMavHwRfTDSLogMsg *)v13 setError:@"not set"];
    seqNum = [(PLBasebandMessage *)self seqNum];
    date = [(PLBasebandMessage *)self date];
    [(PLBasebandMessage *)self timeCal];
    [(PLBBMavHwRfTDSLogMsg *)v13 setHeaderWithSeqNum:seqNum andDate:date andTimeCal:?];

    v17 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:{(*-[PLBBMav13HwMsgParser rfEnhTDS](self, "rfEnhTDS") - -[PLBBMav13HwMsgParser rfEnhTDS](self, "rfEnhTDS")[4])}];
    [(PLBBMavHwRfTDSLogMsg *)v13 setLogDuration:v17];

    v18 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav13HwMsgParser *)self rfEnhTDS]+ 8 ofSize:7];
    [(PLBBMavHwRfTDSLogMsg *)v13 setSrvcTypeCnt:v18];

    v19 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav13HwMsgParser *)self rfEnhTDS]+ 36 ofSize:3];
    [(PLBBMavHwRfTDSLogMsg *)v13 setRxdStateCnt:v19];

    logEventBackwardBBMavHwRfTDS = [(PLBBMavHwRfTDSLogMsg *)v13 logEventBackwardBBMavHwRfTDS];
    v21 = [logEventBackwardBBMavHwRfTDS objectForKey:@"entry"];
    v22 = [logEventBackwardBBMavHwRfTDS objectForKey:@"entryKey"];
    [v12 addToGroupPLBBMavHwEntry:v21 withEntryKey:v22];

    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_23;
    }

    v23 = objc_opt_class();
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __45__PLBBMav13HwMsgParser_logHwRFTDSWithLogger___block_invoke_1005;
    v35[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v35[4] = v23;
    if (qword_2811F8498 != -1)
    {
      dispatch_once(&qword_2811F8498, v35);
    }

    if (byte_2811F8165 != 1)
    {
      goto LABEL_23;
    }

    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded enh BB HW RF TDS"];
    v25 = MEMORY[0x277D3F178];
    v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
    lastPathComponent2 = [v26 lastPathComponent];
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logHwRFTDSWithLogger:]"];
    [v25 logMessage:v24 fromFile:lastPathComponent2 fromFunction:v28 fromLineNumber:1155];

    v29 = PLLogCommon();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v39 = v24;
      _os_log_debug_impl(&dword_21A4C6000, v29, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

LABEL_22:
LABEL_23:

    goto LABEL_24;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v30 = objc_opt_class();
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __45__PLBBMav13HwMsgParser_logHwRFTDSWithLogger___block_invoke_999;
    v36[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v36[4] = v30;
    if (qword_2811F8490 != -1)
    {
      dispatch_once(&qword_2811F8490, v36);
    }

    if (byte_2811F8164 == 1)
    {
      logEventBackwardBBMavHwRfTDS = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: mem alloc for logHwRfGSM failed"];
      v31 = MEMORY[0x277D3F178];
      v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
      lastPathComponent3 = [v32 lastPathComponent];
      v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logHwRFTDSWithLogger:]"];
      [v31 logMessage:logEventBackwardBBMavHwRfTDS fromFile:lastPathComponent3 fromFunction:v34 fromLineNumber:1134];

      v24 = PLLogCommon();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v39 = logEventBackwardBBMavHwRfTDS;
        _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_22;
    }
  }

LABEL_24:
}

void *__45__PLBBMav13HwMsgParser_logHwRFTDSWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8163 = result;
  return result;
}

void *__45__PLBBMav13HwMsgParser_logHwRFTDSWithLogger___block_invoke_999(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8164 = result;
  return result;
}

void *__45__PLBBMav13HwMsgParser_logHwRFTDSWithLogger___block_invoke_1005(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8165 = result;
  return result;
}

- (void)logHwRF1xWithLogger:(id)logger
{
  v41 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__PLBBMav13HwMsgParser_logHwRF1xWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F84A0 != -1)
    {
      dispatch_once(&qword_2811F84A0, block);
    }

    if (byte_2811F8166 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav13HwMsgParser logHwRF1xWithLogger:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logHwRF1xWithLogger:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:1160];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v40 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = loggerCopy;
  v13 = objc_alloc_init(PLBBMavHwRf1xLogMsg);
  if (v13)
  {
    agent = [(PLBasebandMessage *)self agent];
    [(PLBasebandMessage *)v13 setAgent:agent];

    [(PLBBMavHwRf1xLogMsg *)v13 setError:@"not set"];
    seqNum = [(PLBasebandMessage *)self seqNum];
    date = [(PLBasebandMessage *)self date];
    [(PLBasebandMessage *)self timeCal];
    [(PLBBMavHwRf1xLogMsg *)v13 setHeaderWithSeqNum:seqNum andDate:date andTimeCal:?];

    v17 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:{(*-[PLBBMav13HwMsgParser rfEnhC2K](self, "rfEnhC2K") - -[PLBBMav13HwMsgParser rfEnhC2K](self, "rfEnhC2K")[4])}];
    [(PLBBMavHwRf1xLogMsg *)v13 setLogDuration:v17];

    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLBBMav13HwMsgParser rfEnhC2K](self, "rfEnhC2K")[8]}];
    [(PLBBMavHwRf1xLogMsg *)v13 setDtxOn:v18];

    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLBBMav13HwMsgParser rfEnhC2K](self, "rfEnhC2K")[12]}];
    [(PLBBMavHwRf1xLogMsg *)v13 setDtxOff:v19];

    v20 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav13HwMsgParser *)self rfEnhC2K]+ 16 ofSize:6];
    [(PLBBMavHwRf1xLogMsg *)v13 setCallTypeDur:v20];

    logEventBackwardBBMavHwRf1x = [(PLBBMavHwRf1xLogMsg *)v13 logEventBackwardBBMavHwRf1x];
    v22 = [logEventBackwardBBMavHwRf1x objectForKey:@"entry"];
    v23 = [logEventBackwardBBMavHwRf1x objectForKey:@"entryKey"];
    [v12 addToGroupPLBBMavHwEntry:v22 withEntryKey:v23];

    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_23;
    }

    v24 = objc_opt_class();
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __44__PLBBMav13HwMsgParser_logHwRF1xWithLogger___block_invoke_1018;
    v36[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v36[4] = v24;
    if (qword_2811F84B0 != -1)
    {
      dispatch_once(&qword_2811F84B0, v36);
    }

    if (byte_2811F8168 != 1)
    {
      goto LABEL_23;
    }

    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded enh BB HW RF ENH 1x"];
    v26 = MEMORY[0x277D3F178];
    v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
    lastPathComponent2 = [v27 lastPathComponent];
    v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logHwRF1xWithLogger:]"];
    [v26 logMessage:v25 fromFile:lastPathComponent2 fromFunction:v29 fromLineNumber:1219];

    v30 = PLLogCommon();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v40 = v25;
      _os_log_debug_impl(&dword_21A4C6000, v30, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

LABEL_22:
LABEL_23:

    goto LABEL_24;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v31 = objc_opt_class();
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __44__PLBBMav13HwMsgParser_logHwRF1xWithLogger___block_invoke_1012;
    v37[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v37[4] = v31;
    if (qword_2811F84A8 != -1)
    {
      dispatch_once(&qword_2811F84A8, v37);
    }

    if (byte_2811F8167 == 1)
    {
      logEventBackwardBBMavHwRf1x = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: mem alloc for logHwRf1x failed"];
      v32 = MEMORY[0x277D3F178];
      v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
      lastPathComponent3 = [v33 lastPathComponent];
      v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logHwRF1xWithLogger:]"];
      [v32 logMessage:logEventBackwardBBMavHwRf1x fromFile:lastPathComponent3 fromFunction:v35 fromLineNumber:1164];

      v25 = PLLogCommon();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v40 = logEventBackwardBBMavHwRf1x;
        _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_22;
    }
  }

LABEL_24:
}

void *__44__PLBBMav13HwMsgParser_logHwRF1xWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8166 = result;
  return result;
}

void *__44__PLBBMav13HwMsgParser_logHwRF1xWithLogger___block_invoke_1012(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8167 = result;
  return result;
}

void *__44__PLBBMav13HwMsgParser_logHwRF1xWithLogger___block_invoke_1018(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8168 = result;
  return result;
}

- (void)logHwRFHDRWithLogger:(id)logger
{
  v44 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__PLBBMav13HwMsgParser_logHwRFHDRWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F84B8 != -1)
    {
      dispatch_once(&qword_2811F84B8, block);
    }

    if (byte_2811F8169 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav13HwMsgParser logHwRFHDRWithLogger:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logHwRFHDRWithLogger:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:1224];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v43 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = loggerCopy;
  v13 = objc_alloc_init(PLBBMavHwRfHDRLogMsg);
  if (v13)
  {
    agent = [(PLBasebandMessage *)self agent];
    [(PLBasebandMessage *)v13 setAgent:agent];

    [(PLBBMavHwRfHDRLogMsg *)v13 setError:@"not set"];
    seqNum = [(PLBasebandMessage *)self seqNum];
    date = [(PLBasebandMessage *)self date];
    [(PLBasebandMessage *)self timeCal];
    [(PLBBMavHwRfHDRLogMsg *)v13 setHeaderWithSeqNum:seqNum andDate:date andTimeCal:?];

    v17 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:{(*-[PLBBMav13HwMsgParser rfEnh1xEVDO](self, "rfEnh1xEVDO") - -[PLBBMav13HwMsgParser rfEnh1xEVDO](self, "rfEnh1xEVDO")[4])}];
    [(PLBBMavHwRfHDRLogMsg *)v13 setLogDuration:v17];

    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLBBMav13HwMsgParser rfEnh1xEVDO](self, "rfEnh1xEVDO")[8]}];
    [(PLBBMavHwRfHDRLogMsg *)v13 setSDTXOnFrame:v18];

    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLBBMav13HwMsgParser rfEnh1xEVDO](self, "rfEnh1xEVDO")[12]}];
    [(PLBBMavHwRfHDRLogMsg *)v13 setSDTXOffFrame:v19];

    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLBBMav13HwMsgParser rfEnh1xEVDO](self, "rfEnh1xEVDO")[16]}];
    [(PLBBMavHwRfHDRLogMsg *)v13 setLDTXOnFrame:v20];

    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLBBMav13HwMsgParser rfEnh1xEVDO](self, "rfEnh1xEVDO")[20]}];
    [(PLBBMavHwRfHDRLogMsg *)v13 setLDTXOffFrame:v21];

    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLBBMav13HwMsgParser rfEnh1xEVDO](self, "rfEnh1xEVDO")[24]}];
    [(PLBBMavHwRfHDRLogMsg *)v13 setTDTXOnFrame:v22];

    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLBBMav13HwMsgParser rfEnh1xEVDO](self, "rfEnh1xEVDO")[28]}];
    [(PLBBMavHwRfHDRLogMsg *)v13 setTDTXOffFrame:v23];

    logEventBackwardBBMavHwRfHDR = [(PLBBMavHwRfHDRLogMsg *)v13 logEventBackwardBBMavHwRfHDR];
    v25 = [logEventBackwardBBMavHwRfHDR objectForKey:@"entry"];
    v26 = [logEventBackwardBBMavHwRfHDR objectForKey:@"entryKey"];
    [v12 addToGroupPLBBMavHwEntry:v25 withEntryKey:v26];

    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_23;
    }

    v27 = objc_opt_class();
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __45__PLBBMav13HwMsgParser_logHwRFHDRWithLogger___block_invoke_1031;
    v39[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v39[4] = v27;
    if (qword_2811F84C8 != -1)
    {
      dispatch_once(&qword_2811F84C8, v39);
    }

    if (byte_2811F816B != 1)
    {
      goto LABEL_23;
    }

    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded enh BB HW RF ENH HDR"];
    v29 = MEMORY[0x277D3F178];
    v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
    lastPathComponent2 = [v30 lastPathComponent];
    v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logHwRFHDRWithLogger:]"];
    [v29 logMessage:v28 fromFile:lastPathComponent2 fromFunction:v32 fromLineNumber:1254];

    v33 = PLLogCommon();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v43 = v28;
      _os_log_debug_impl(&dword_21A4C6000, v33, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

LABEL_22:
LABEL_23:

    goto LABEL_24;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v34 = objc_opt_class();
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __45__PLBBMav13HwMsgParser_logHwRFHDRWithLogger___block_invoke_1025;
    v40[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v40[4] = v34;
    if (qword_2811F84C0 != -1)
    {
      dispatch_once(&qword_2811F84C0, v40);
    }

    if (byte_2811F816A == 1)
    {
      logEventBackwardBBMavHwRfHDR = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: mem alloc for logHwRfHDR failed"];
      v35 = MEMORY[0x277D3F178];
      v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
      lastPathComponent3 = [v36 lastPathComponent];
      v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logHwRFHDRWithLogger:]"];
      [v35 logMessage:logEventBackwardBBMavHwRfHDR fromFile:lastPathComponent3 fromFunction:v38 fromLineNumber:1228];

      v28 = PLLogCommon();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v43 = logEventBackwardBBMavHwRfHDR;
        _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_22;
    }
  }

LABEL_24:
}

void *__45__PLBBMav13HwMsgParser_logHwRFHDRWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8169 = result;
  return result;
}

void *__45__PLBBMav13HwMsgParser_logHwRFHDRWithLogger___block_invoke_1025(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F816A = result;
  return result;
}

void *__45__PLBBMav13HwMsgParser_logHwRFHDRWithLogger___block_invoke_1031(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F816B = result;
  return result;
}

- (void)logHwRFOOSWithLogger:(id)logger
{
  v43 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__PLBBMav13HwMsgParser_logHwRFOOSWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F84D0 != -1)
    {
      dispatch_once(&qword_2811F84D0, block);
    }

    if (byte_2811F816C == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav13HwMsgParser logHwRFOOSWithLogger:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logHwRFOOSWithLogger:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:1259];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v42 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = loggerCopy;
  v13 = objc_opt_new();
  agent = [(PLBasebandMessage *)self agent];
  [v13 setAgent:agent];

  [v13 setError:&stru_282B650A0];
  seqNum = [(PLBasebandMessage *)self seqNum];
  date = [(PLBasebandMessage *)self date];
  [(PLBasebandMessage *)self timeCal];
  [v13 setHeaderWithSeqNum:seqNum andDate:date andTimeCal:?];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLMav4BasebandHardwareMessage logDuration](self, "logDuration")}];
  [v13 setLogDuration:v17];

  [v13 setOosInProgress:{-[PLBBMav13HwMsgParser rfEnhOOS](self, "rfEnhOOS")[2]}];
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLBBMav13HwMsgParser rfEnhOOS](self, "rfEnhOOS")[4]}];
  [v13 setOosTicks:v18];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{*-[PLBBMav13HwMsgParser rfEnhOOS](self, "rfEnhOOS")}];
  [v13 setOosTimes:v19];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLBBMav13HwMsgParser rfEnhOOS](self, "rfEnhOOS")[8]}];
  [v13 setPssiTicks:v20];

  v21 = [(PLBasebandHardwareMessage *)self convertUint16ArrayToNSArray:[(PLBBMav13HwMsgParser *)self rfEnhOOS]+ 12 ofSize:6];
  [v13 setOosGsmPssiTimes:v21];

  v22 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav13HwMsgParser *)self rfEnhOOS]+ 60 ofSize:6];
  [v13 setOosGsmPssiStatTicks:v22];

  v23 = [(PLBasebandHardwareMessage *)self convertUint16ArrayToNSArray:[(PLBBMav13HwMsgParser *)self rfEnhOOS]+ 24 ofSize:6];
  [v13 setOosWcdmaPssiTimes:v23];

  v24 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav13HwMsgParser *)self rfEnhOOS]+ 84 ofSize:6];
  [v13 setOosWcdmaPssiStatTicks:v24];

  v25 = [(PLBasebandHardwareMessage *)self convertUint16ArrayToNSArray:[(PLBBMav13HwMsgParser *)self rfEnhOOS]+ 36 ofSize:6];
  [v13 setOosLtePssiTimes:v25];

  v26 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav13HwMsgParser *)self rfEnhOOS]+ 108 ofSize:6];
  [v13 setOosLtePssiStatTicks:v26];

  v27 = [(PLBasebandHardwareMessage *)self convertUint16ArrayToNSArray:[(PLBBMav13HwMsgParser *)self rfEnhOOS]+ 48 ofSize:6];
  [v13 setOosTdsPssiTimes:v27];

  v28 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBBMav13HwMsgParser *)self rfEnhOOS]+ 132 ofSize:6];
  [v13 setOosTdsPssiStatTicks:v28];

  logEventBackwardBBMavHwRfOos = [v13 logEventBackwardBBMavHwRfOos];
  v30 = [logEventBackwardBBMavHwRfOos objectForKey:@"entry"];
  v31 = [logEventBackwardBBMavHwRfOos objectForKey:@"entryKey"];
  [v12 addToGroupPLBBMavHwEntry:v30 withEntryKey:v31];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v32 = objc_opt_class();
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __45__PLBBMav13HwMsgParser_logHwRFOOSWithLogger___block_invoke_1038;
    v39[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v39[4] = v32;
    if (qword_2811F84D8 != -1)
    {
      dispatch_once(&qword_2811F84D8, v39);
    }

    if (byte_2811F816D == 1)
    {
      v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded enh BB HW RF ENH OOS"];
      v34 = MEMORY[0x277D3F178];
      v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav13HwMsgParser.m"];
      lastPathComponent2 = [v35 lastPathComponent];
      v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav13HwMsgParser logHwRFOOSWithLogger:]"];
      [v34 logMessage:v33 fromFile:lastPathComponent2 fromFunction:v37 fromLineNumber:1309];

      v38 = PLLogCommon();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v42 = v33;
        _os_log_debug_impl(&dword_21A4C6000, v38, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

void *__45__PLBBMav13HwMsgParser_logHwRFOOSWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F816C = result;
  return result;
}

void *__45__PLBBMav13HwMsgParser_logHwRFOOSWithLogger___block_invoke_1038(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F816D = result;
  return result;
}

- (int)GetClockCount:(_PLMav7BasebandHWStatsClockStateMask *)count
{
  v3 = 0;
  result = 0;
  do
  {
    v5 = count->var0[v3];
    if (v5)
    {
      do
      {
        result += v5 & 1;
        v6 = v5 >= 2;
        v5 >>= 1;
      }

      while (v6);
    }

    ++v3;
  }

  while (v3 != 4);
  return result;
}

- (void)SetClocks:(_PLMav7BasebandHWStatsClockStateMask *)clocks oftype:(int)oftype withData:(char *)data
{
  string = [MEMORY[0x277CCAB68] string];
  v8 = 0;
  v9 = apps_clock_names_2;
  do
  {
    v10 = clocks->var0[v8];
    v11 = v9;
    if (v10)
    {
      do
      {
        if (v10)
        {
          v12 = *data;
          if ([(PLMav4BasebandHardwareMessage *)self logDuration])
          {
            if ([(PLMav4BasebandHardwareMessage *)self logDuration])
            {
              v13 = v12 * 100.0 / [(PLMav4BasebandHardwareMessage *)self logDuration];
              if (v13 > 0.01)
              {
                [string appendFormat:@" %@=[%d];", *v11, v12];
              }
            }
          }

          data += 4;
        }

        ++v11;
        v14 = v10 >= 2;
        v10 >>= 1;
      }

      while (v14);
    }

    ++v8;
    ++v9;
  }

  while (v8 != 4);
  if (oftype || ([(PLMav7BasebandHardwareMessage *)self apps_clock_duration], v17 = objc_claimAutoreleasedReturnValue(), v17, !v17))
  {
    mpss_clock_duration = [(PLMav7BasebandHardwareMessage *)self mpss_clock_duration];

    if (!mpss_clock_duration)
    {
      goto LABEL_17;
    }

    mpss_clock_duration2 = [(PLMav7BasebandHardwareMessage *)self mpss_clock_duration];
  }

  else
  {
    mpss_clock_duration2 = [(PLMav7BasebandHardwareMessage *)self apps_clock_duration];
  }

  v18 = mpss_clock_duration2;
  [mpss_clock_duration2 appendString:string];

LABEL_17:
}

@end