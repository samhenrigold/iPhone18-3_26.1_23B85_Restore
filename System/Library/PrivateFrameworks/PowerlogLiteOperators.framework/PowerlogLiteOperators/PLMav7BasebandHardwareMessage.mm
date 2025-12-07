@interface PLMav7BasebandHardwareMessage
- (BOOL)parseData:(id)data;
- (PLMav7BasebandHardwareMessage)initWithData:(id)data;
- (id)indexToRAT:(unint64_t)t;
- (int)GetClockCount:(_PLMav7BasebandHWStatsClockStateMask *)count;
- (void)SetClocks:(_PLMav7BasebandHWStatsClockStateMask *)clocks oftype:(int)oftype withData:(char *)data;
- (void)logAPPSWithLogger:(id)logger;
- (void)logClockWithLogger:(id)logger;
- (void)logHSICWithLogger:(id)logger;
- (void)logMPSSWithLogger:(id)logger;
- (void)logPeripheralsWithLogger:(id)logger;
- (void)logProtocolActiveWithLogger:(id)logger;
- (void)logRFWithLogger2:(id)logger2;
- (void)logSleepVetoWithLogger:(id)logger;
- (void)logWithLogger:(id)logger;
@end

@implementation PLMav7BasebandHardwareMessage

- (PLMav7BasebandHardwareMessage)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = PLMav7BasebandHardwareMessage;
  v5 = [(PLMav5BasebandHardwareMessage *)&v9 initWithData:dataCopy];
  v6 = v5;
  if (v5 && ![(PLMav7BasebandHardwareMessage *)v5 parseData:dataCopy])
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
  v26 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  bytes = [dataCopy bytes];
  v6 = &bytes[2 * (*bytes == 129)];
  [(PLMav4BasebandHardwareMessage *)self setHeader:v6 + 13];
  v7 = v6 + 33;
  [(PLMav4BasebandHardwareMessage *)self setLogDuration:([(PLMav4BasebandHardwareMessage *)self header][16] - [(PLMav4BasebandHardwareMessage *)self header][12])];
  if ([(PLMav4BasebandHardwareMessage *)self level])
  {
    [(PLMav5BasebandHardwareMessage *)self setRpm:v6 + 33];
    v7 = v6 + 49;
  }

  if ([(PLMav4BasebandHardwareMessage *)self level]>= 2)
  {
    [(PLMav5BasebandHardwareMessage *)self setApps:v7];
    [(PLMav5BasebandHardwareMessage *)self setApps_sleep:v7 + 24];
    v7 += 32;
  }

  if ([(PLMav4BasebandHardwareMessage *)self level]>= 3)
  {
    [(PLMav5BasebandHardwareMessage *)self setUsb:v7];
    [(PLMav4BasebandHardwareMessage *)self setUart:v7 + 12];
    [(PLMav4BasebandHardwareMessage *)self setSpi:v7 + 20];
    [(PLMav4BasebandHardwareMessage *)self setAdm:v7 + 28];
    v7 += 36;
  }

  if ([(PLMav4BasebandHardwareMessage *)self level]>= 4)
  {
    [(PLMav5BasebandHardwareMessage *)self setLpass:v7];
    v7 += 8;
  }

  if ([(PLMav4BasebandHardwareMessage *)self level]>= 5)
  {
    [(PLMav5BasebandHardwareMessage *)self setApps_sleep_veto:v7];
    [(PLMav5BasebandHardwareMessage *)self setMpss_sleep_veto:v7 + 4];
    [(PLMav5BasebandHardwareMessage *)self setMdsp:v7 + 16];
    [(PLMav5BasebandHardwareMessage *)self setQdsp:v7 + 56];
    [(PLMav4BasebandHardwareMessage *)self setGps:v7 + 96];
    [(PLMav5BasebandHardwareMessage *)self setGps_dpo:v7 + 104];
    [(PLMav7BasebandHardwareMessage *)self setGps_dpo_bins:v7 + 112];
    [(PLMav5BasebandHardwareMessage *)self setMpss_sleep:v7 + 136];
    v7 += 144;
  }

  if ([(PLMav4BasebandHardwareMessage *)self level]>= 6)
  {
    [(PLMav7BasebandHardwareMessage *)self setRf:v7];
    [(PLMav7BasebandHardwareMessage *)self setProtocol:v7 + 1536];
    [(PLMav7BasebandHardwareMessage *)self setMcpm_sleep_veto:v7 + 1944];
    [(PLMav7BasebandHardwareMessage *)self setNpa_sleep_veto:v7 + 1968];
    v7 += 2068;
  }

  if ([(PLMav4BasebandHardwareMessage *)self level]>= 7)
  {
    [(PLMav7BasebandHardwareMessage *)self setApps_clock_duration_mask:v7];
    v8 = v7 + 16;
    v9 = [(PLMav7BasebandHardwareMessage *)self GetClockCount:[(PLMav7BasebandHardwareMessage *)self apps_clock_duration_mask]];
    string = [MEMORY[0x277CCAB68] string];
    [(PLMav7BasebandHardwareMessage *)self setApps_clock_duration:string];

    [(PLMav7BasebandHardwareMessage *)self SetClocks:[(PLMav7BasebandHardwareMessage *)self apps_clock_duration_mask] oftype:0 withData:v8];
    v11 = &v8[4 * v9];
    [(PLMav7BasebandHardwareMessage *)self setMpss_clock_duration_mask:v11];
    v11 += 16;
    v12 = [(PLMav7BasebandHardwareMessage *)self GetClockCount:[(PLMav7BasebandHardwareMessage *)self mpss_clock_duration_mask]];
    string2 = [MEMORY[0x277CCAB68] string];
    [(PLMav7BasebandHardwareMessage *)self setMpss_clock_duration:string2];

    [(PLMav7BasebandHardwareMessage *)self SetClocks:[(PLMav7BasebandHardwareMessage *)self mpss_clock_duration_mask] oftype:1 withData:v11];
    v7 = (v11 + 4 * v12);
  }

  if ([(PLMav4BasebandHardwareMessage *)self level]>= 8)
  {
    [(PLMav7BasebandHardwareMessage *)self setApps_clock_count_mask:v7];
    v14 = &v7[4 * [(PLMav7BasebandHardwareMessage *)self GetClockCount:[(PLMav7BasebandHardwareMessage *)self apps_clock_count_mask]]+ 16];
    [(PLMav7BasebandHardwareMessage *)self setMpss_clock_count_mask:v14];
    v15 = v14 + 4 * [(PLMav7BasebandHardwareMessage *)self GetClockCount:[(PLMav7BasebandHardwareMessage *)self mpss_clock_count_mask]];
    [(PLMav7BasebandHardwareMessage *)self setHsic:v15 + 16];
    v7 = (v15 + 48);
  }

  v16 = &v7[-[dataCopy bytes]];
  v17 = [dataCopy length];
  if (v16 > v17)
  {
    v18 = PLLogCommon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v20 = 134218498;
      v21 = &v7[-[dataCopy bytes]];
      v22 = 2048;
      v23 = [dataCopy length];
      v24 = 2080;
      v25 = "[PLMav7BasebandHardwareMessage parseData:]";
      _os_log_error_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_ERROR, "Expected data length %lu but got %lu in %s", &v20, 0x20u);
    }
  }

  return v16 <= v17;
}

- (void)logWithLogger:(id)logger
{
  v28 = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = PLMav7BasebandHardwareMessage;
  [(PLBasebandHardwareMessage *)&v25 logRawWithLogger:logger];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__PLMav7BasebandHardwareMessage_logWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v4;
    if (qword_2811F5FB0 != -1)
    {
      dispatch_once(&qword_2811F5FB0, block);
    }

    if (_MergedGlobals_1_42 == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLMav7BasebandHardwareMessage logWithLogger:]"];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav7BasebandHardwareMessage.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav7BasebandHardwareMessage logWithLogger:]"];
      [v6 logMessage:v5 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:210];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v27 = v5;
        _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v11 = objc_alloc_init(PLBBMavLogMsg);
  agent = [(PLBasebandMessage *)self agent];
  [(PLBasebandMessage *)v11 setAgent:agent];

  [(PLBBMavLogMsg *)v11 setError:&stru_282B650A0];
  seqNum = [(PLBasebandMessage *)self seqNum];
  date = [(PLBasebandMessage *)self date];
  [(PLBasebandMessage *)self timeCal];
  [(PLBBMavLogMsg *)v11 setHeaderWithSeqNum:seqNum andDate:date andTimeCal:?];

  if ([(PLMav4BasebandHardwareMessage *)self sw_rev]== 3)
  {
    [(PLMav4BasebandHardwareMessage *)self logHeaderWithLogger:v11];
    [(PLMav5BasebandHardwareMessage *)self logRPMWithLogger:v11];
    [(PLMav7BasebandHardwareMessage *)self logAPPSWithLogger:v11];
    [(PLMav7BasebandHardwareMessage *)self logMPSSWithLogger:v11];
    [(PLMav5BasebandHardwareMessage *)self logLPASSWithLogger:v11];
    [(PLMav7BasebandHardwareMessage *)self logPeripheralsWithLogger:v11];
    [(PLMav5BasebandHardwareMessage *)self logProtocolWithLogger:v11 withCount:6];
    [(PLMav7BasebandHardwareMessage *)self logProtocolActiveWithLogger:v11];
    if ([MEMORY[0x277D3F180] fullMode])
    {
      [(PLMav7BasebandHardwareMessage *)self logSleepVetoWithLogger:v11];
    }

    if ([(PLMav4BasebandHardwareMessage *)self level]>= 7)
    {
      [(PLMav7BasebandHardwareMessage *)self logClockWithLogger:v11];
      [(PLMav7BasebandHardwareMessage *)self logHSICWithLogger:v11];
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v15 = objc_opt_class();
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __47__PLMav7BasebandHardwareMessage_logWithLogger___block_invoke_384;
      v23[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v23[4] = v15;
      if (qword_2811F5FB8 != -1)
      {
        dispatch_once(&qword_2811F5FB8, v23);
      }

      if (byte_2811F5F91 == 1)
      {
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded BB HW Other"];
        v17 = MEMORY[0x277D3F178];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav7BasebandHardwareMessage.m"];
        lastPathComponent2 = [v18 lastPathComponent];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav7BasebandHardwareMessage logWithLogger:]"];
        [v17 logMessage:v16 fromFile:lastPathComponent2 fromFunction:v20 fromLineNumber:245];

        v21 = PLLogCommon();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v27 = v16;
          _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [(PLBBMavLogMsg *)v11 addToGroupPLBBMavHwOther];
    [(PLMav7BasebandHardwareMessage *)self logRFWithLogger2:v11];
    [(PLBBMavLogMsg *)v11 logEventBackwardGrpEntriesBBMavHw];
  }

  else
  {
    string = [MEMORY[0x277CCAB68] string];
    [string appendFormat:@"Version Mismatch: Baseband_sw_rev=%d Powerlog_supported_sw_rev=%d", -[PLMav4BasebandHardwareMessage sw_rev](self, "sw_rev"), 3];
    [(PLBBMavLogMsg *)v11 setError:string];
    [(PLBBMavLogMsg *)v11 setType:@"BB HW Error"];
    [(PLBBMavLogMsg *)v11 logEventBackwardMavBBHwOther];
  }
}

void *__47__PLMav7BasebandHardwareMessage_logWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_42 = result;
  return result;
}

void *__47__PLMav7BasebandHardwareMessage_logWithLogger___block_invoke_384(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5F91 = result;
  return result;
}

- (void)logPeripheralsWithLogger:(id)logger
{
  v34 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  v31.receiver = self;
  v31.super_class = PLMav7BasebandHardwareMessage;
  [(PLMav5BasebandHardwareMessage *)&v31 logPeripheralsWithLogger:loggerCopy];
  v5 = &unk_21AA21000;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__PLMav7BasebandHardwareMessage_logPeripheralsWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v6;
    if (qword_2811F5FC0 != -1)
    {
      dispatch_once(&qword_2811F5FC0, block);
    }

    if (byte_2811F5F92 == 1)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLMav7BasebandHardwareMessage logPeripheralsWithLogger:]"];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav7BasebandHardwareMessage.m"];
      lastPathComponent = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav7BasebandHardwareMessage logPeripheralsWithLogger:]"];
      [v8 logMessage:v7 fromFile:lastPathComponent fromFunction:v11 fromLineNumber:259];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v33 = v7;
        _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v5 = &unk_21AA21000;
    }
  }

  v13 = loggerCopy;
  if ([(PLMav7BasebandHardwareMessage *)self gps_dpo_bins])
  {
    v14 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav7BasebandHardwareMessage *)self gps_dpo_bins] ofSize:6];
    [v13 setGpsDPOBin:v14];
LABEL_10:

    goto LABEL_18;
  }

  [v13 appendToError:@"GPS_DPO_BINS=<unknown> "];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v15 = objc_opt_class();
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __58__PLMav7BasebandHardwareMessage_logPeripheralsWithLogger___block_invoke_395;
    v29[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v29[4] = v15;
    if (qword_2811F5FC8 != -1)
    {
      dispatch_once(&qword_2811F5FC8, v29);
    }

    if (byte_2811F5F93 == 1)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPS_DPO_BINS=<unknown>"];
      v16 = MEMORY[0x277D3F178];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav7BasebandHardwareMessage.m"];
      lastPathComponent2 = [v17 lastPathComponent];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav7BasebandHardwareMessage logPeripheralsWithLogger:]"];
      [v16 logMessage:v14 fromFile:lastPathComponent2 fromFunction:v19 fromLineNumber:271];

      v20 = PLLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v33 = v14;
        _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v5 = &unk_21AA21000;
      goto LABEL_10;
    }
  }

LABEL_18:
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v21 = objc_opt_class();
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = v5[311];
    v28[2] = __58__PLMav7BasebandHardwareMessage_logPeripheralsWithLogger___block_invoke_401;
    v28[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v28[4] = v21;
    if (qword_2811F5FD0 != -1)
    {
      dispatch_once(&qword_2811F5FD0, v28);
    }

    if (byte_2811F5F94 == 1)
    {
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded BB HW Peripherals GPS DPO BINS"];
      v23 = MEMORY[0x277D3F178];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav7BasebandHardwareMessage.m"];
      lastPathComponent3 = [v24 lastPathComponent];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav7BasebandHardwareMessage logPeripheralsWithLogger:]"];
      [v23 logMessage:v22 fromFile:lastPathComponent3 fromFunction:v26 fromLineNumber:274];

      v27 = PLLogCommon();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v33 = v22;
        _os_log_debug_impl(&dword_21A4C6000, v27, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

void *__58__PLMav7BasebandHardwareMessage_logPeripheralsWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5F92 = result;
  return result;
}

void *__58__PLMav7BasebandHardwareMessage_logPeripheralsWithLogger___block_invoke_395(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5F93 = result;
  return result;
}

void *__58__PLMav7BasebandHardwareMessage_logPeripheralsWithLogger___block_invoke_401(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5F94 = result;
  return result;
}

- (void)logAPPSWithLogger:(id)logger
{
  v51 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__PLMav7BasebandHardwareMessage_logAPPSWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F5FD8 != -1)
    {
      dispatch_once(&qword_2811F5FD8, block);
    }

    if (byte_2811F5F95 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLMav7BasebandHardwareMessage logAPPSWithLogger:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav7BasebandHardwareMessage.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav7BasebandHardwareMessage logAPPSWithLogger:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:279];

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
  if ([(PLMav5BasebandHardwareMessage *)self apps])
  {
    v13 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav5BasebandHardwareMessage *)self apps] ofSize:6];
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
    v47[2] = __51__PLMav7BasebandHardwareMessage_logAPPSWithLogger___block_invoke_410;
    v47[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v47[4] = v14;
    if (qword_2811F5FE0 != -1)
    {
      dispatch_once(&qword_2811F5FE0, v47);
    }

    if (byte_2811F5F96 == 1)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Perf_Level=<unknown>"];
      v15 = MEMORY[0x277D3F178];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav7BasebandHardwareMessage.m"];
      lastPathComponent2 = [v16 lastPathComponent];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav7BasebandHardwareMessage logAPPSWithLogger:]"];
      [v15 logMessage:v13 fromFile:lastPathComponent2 fromFunction:v18 fromLineNumber:296];

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
  if ([(PLMav5BasebandHardwareMessage *)self apps_sleep])
  {
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*-[PLMav5BasebandHardwareMessage apps_sleep](self, "apps_sleep")}];
    [v12 setCxoShutDownDuration:v20];

    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLMav5BasebandHardwareMessage apps_sleep](self, "apps_sleep")[4]}];
    [v12 setCxoShutDownCount:v21];
  }

  else
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v22 = objc_opt_class();
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __51__PLMav7BasebandHardwareMessage_logAPPSWithLogger___block_invoke_417;
      v46[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v46[4] = v22;
      if (qword_2811F5FE8 != -1)
      {
        dispatch_once(&qword_2811F5FE8, v46);
      }

      if (byte_2811F5F97 == 1)
      {
        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sleep_Stats=<unknown>"];
        v24 = MEMORY[0x277D3F178];
        v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav7BasebandHardwareMessage.m"];
        lastPathComponent3 = [v25 lastPathComponent];
        v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav7BasebandHardwareMessage logAPPSWithLogger:]"];
        [v24 logMessage:v23 fromFile:lastPathComponent3 fromFunction:v27 fromLineNumber:316];

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

  if ([(PLMav5BasebandHardwareMessage *)self apps_sleep_veto])
  {
    v29 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav5BasebandHardwareMessage *)self apps_sleep_veto] ofSize:1];
    [v12 setAppsSleepVeto:v29];
  }

  else
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v30 = objc_opt_class();
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __51__PLMav7BasebandHardwareMessage_logAPPSWithLogger___block_invoke_426;
      v45[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v45[4] = v30;
      if (qword_2811F5FF0 != -1)
      {
        dispatch_once(&qword_2811F5FF0, v45);
      }

      if (byte_2811F5F98 == 1)
      {
        v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sleep_Veto_Duration=<unknown>"];
        v32 = MEMORY[0x277D3F178];
        v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav7BasebandHardwareMessage.m"];
        lastPathComponent4 = [v33 lastPathComponent];
        v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav7BasebandHardwareMessage logAPPSWithLogger:]"];
        [v32 logMessage:v31 fromFile:lastPathComponent4 fromFunction:v35 fromLineNumber:337];

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
    v44[2] = __51__PLMav7BasebandHardwareMessage_logAPPSWithLogger___block_invoke_435;
    v44[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v44[4] = v37;
    if (qword_2811F5FF8 != -1)
    {
      dispatch_once(&qword_2811F5FF8, v44);
    }

    if (byte_2811F5F99 == 1)
    {
      v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded BB HW APPS"];
      v39 = MEMORY[0x277D3F178];
      v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav7BasebandHardwareMessage.m"];
      lastPathComponent5 = [v40 lastPathComponent];
      v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav7BasebandHardwareMessage logAPPSWithLogger:]"];
      [v39 logMessage:v38 fromFile:lastPathComponent5 fromFunction:v42 fromLineNumber:341];

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

void *__51__PLMav7BasebandHardwareMessage_logAPPSWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5F95 = result;
  return result;
}

void *__51__PLMav7BasebandHardwareMessage_logAPPSWithLogger___block_invoke_410(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5F96 = result;
  return result;
}

void *__51__PLMav7BasebandHardwareMessage_logAPPSWithLogger___block_invoke_417(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5F97 = result;
  return result;
}

void *__51__PLMav7BasebandHardwareMessage_logAPPSWithLogger___block_invoke_426(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5F98 = result;
  return result;
}

void *__51__PLMav7BasebandHardwareMessage_logAPPSWithLogger___block_invoke_435(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5F99 = result;
  return result;
}

- (void)logMPSSWithLogger:(id)logger
{
  v58 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__PLMav7BasebandHardwareMessage_logMPSSWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F6000 != -1)
    {
      dispatch_once(&qword_2811F6000, block);
    }

    if (byte_2811F5F9A == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLMav7BasebandHardwareMessage logMPSSWithLogger:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav7BasebandHardwareMessage.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav7BasebandHardwareMessage logMPSSWithLogger:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:348];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v57 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = loggerCopy;
  if ([(PLMav5BasebandHardwareMessage *)self mpss_sleep])
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*-[PLMav5BasebandHardwareMessage mpss_sleep](self, "mpss_sleep")}];
    [v12 setMpssCxoShutDownDuration:v13];

    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLMav5BasebandHardwareMessage mpss_sleep](self, "mpss_sleep")[4]}];
    [v12 setMpssCxoShutDownCount:v14];
  }

  if ([(PLMav5BasebandHardwareMessage *)self mpss_sleep_veto])
  {
    v15 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav5BasebandHardwareMessage *)self mpss_sleep_veto] ofSize:3];
    [v12 setMpssSleepVeto:v15];
LABEL_12:

    goto LABEL_20;
  }

  [v12 appendToError:@"Sleep_Veto=<unknown> "];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v16 = objc_opt_class();
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __51__PLMav7BasebandHardwareMessage_logMPSSWithLogger___block_invoke_444;
    v54[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v54[4] = v16;
    if (qword_2811F6008 != -1)
    {
      dispatch_once(&qword_2811F6008, v54);
    }

    if (byte_2811F5F9B == 1)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sleep_Veto=<unknown>"];
      v17 = MEMORY[0x277D3F178];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav7BasebandHardwareMessage.m"];
      lastPathComponent2 = [v18 lastPathComponent];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav7BasebandHardwareMessage logMPSSWithLogger:]"];
      [v17 logMessage:v15 fromFile:lastPathComponent2 fromFunction:v20 fromLineNumber:383];

      v21 = PLLogCommon();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v57 = v15;
        _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_12;
    }
  }

LABEL_20:
  if ([(PLMav5BasebandHardwareMessage *)self mdsp])
  {
    v22 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav5BasebandHardwareMessage *)self mdsp] ofSize:10];
    [v12 setMdspConfigCount:v22];
LABEL_22:

    goto LABEL_30;
  }

  [v12 appendToError:@"Q6FW_Perf=<unknown> "];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v23 = objc_opt_class();
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __51__PLMav7BasebandHardwareMessage_logMPSSWithLogger___block_invoke_453;
    v53[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v53[4] = v23;
    if (qword_2811F6010 != -1)
    {
      dispatch_once(&qword_2811F6010, v53);
    }

    if (byte_2811F5F9C == 1)
    {
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Q6FW_Perf=<unknown>"];
      v24 = MEMORY[0x277D3F178];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav7BasebandHardwareMessage.m"];
      lastPathComponent3 = [v25 lastPathComponent];
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav7BasebandHardwareMessage logMPSSWithLogger:]"];
      [v24 logMessage:v22 fromFile:lastPathComponent3 fromFunction:v27 fromLineNumber:404];

      v28 = PLLogCommon();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v57 = v22;
        _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_22;
    }
  }

LABEL_30:
  if ([(PLMav5BasebandHardwareMessage *)self qdsp])
  {
    v29 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav5BasebandHardwareMessage *)self qdsp] ofSize:10];
    [v12 setQdspConfigCount:v29];
LABEL_32:

    goto LABEL_40;
  }

  [v12 appendToError:@"Q6SW_Perf=<unknown> "];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v30 = objc_opt_class();
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __51__PLMav7BasebandHardwareMessage_logMPSSWithLogger___block_invoke_462;
    v52[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v52[4] = v30;
    if (qword_2811F6018 != -1)
    {
      dispatch_once(&qword_2811F6018, v52);
    }

    if (byte_2811F5F9D == 1)
    {
      v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"Q6SW_Perf=<unknown>"];
      v31 = MEMORY[0x277D3F178];
      v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav7BasebandHardwareMessage.m"];
      lastPathComponent4 = [v32 lastPathComponent];
      v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav7BasebandHardwareMessage logMPSSWithLogger:]"];
      [v31 logMessage:v29 fromFile:lastPathComponent4 fromFunction:v34 fromLineNumber:423];

      v35 = PLLogCommon();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v57 = v29;
        _os_log_debug_impl(&dword_21A4C6000, v35, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_32;
    }
  }

LABEL_40:
  if ([(PLMav4BasebandHardwareMessage *)self adm])
  {
    v36 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav4BasebandHardwareMessage *)self adm] ofSize:2];
    [v12 setAdmOnOffState:v36];
LABEL_42:

    goto LABEL_50;
  }

  [v12 appendToError:@"ADM=<unknown> "];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v37 = objc_opt_class();
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __51__PLMav7BasebandHardwareMessage_logMPSSWithLogger___block_invoke_471;
    v51[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v51[4] = v37;
    if (qword_2811F6020 != -1)
    {
      dispatch_once(&qword_2811F6020, v51);
    }

    if (byte_2811F5F9E == 1)
    {
      v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"ADM=<unknown>"];
      v38 = MEMORY[0x277D3F178];
      v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav7BasebandHardwareMessage.m"];
      lastPathComponent5 = [v39 lastPathComponent];
      v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav7BasebandHardwareMessage logMPSSWithLogger:]"];
      [v38 logMessage:v36 fromFile:lastPathComponent5 fromFunction:v41 fromLineNumber:443];

      v42 = PLLogCommon();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v57 = v36;
        _os_log_debug_impl(&dword_21A4C6000, v42, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_42;
    }
  }

LABEL_50:
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v43 = objc_opt_class();
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __51__PLMav7BasebandHardwareMessage_logMPSSWithLogger___block_invoke_477;
    v50[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v50[4] = v43;
    if (qword_2811F6028 != -1)
    {
      dispatch_once(&qword_2811F6028, v50);
    }

    if (byte_2811F5F9F == 1)
    {
      v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded BB HW MPSS"];
      v45 = MEMORY[0x277D3F178];
      v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav7BasebandHardwareMessage.m"];
      lastPathComponent6 = [v46 lastPathComponent];
      v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav7BasebandHardwareMessage logMPSSWithLogger:]"];
      [v45 logMessage:v44 fromFile:lastPathComponent6 fromFunction:v48 fromLineNumber:449];

      v49 = PLLogCommon();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v57 = v44;
        _os_log_debug_impl(&dword_21A4C6000, v49, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

void *__51__PLMav7BasebandHardwareMessage_logMPSSWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5F9A = result;
  return result;
}

void *__51__PLMav7BasebandHardwareMessage_logMPSSWithLogger___block_invoke_444(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5F9B = result;
  return result;
}

void *__51__PLMav7BasebandHardwareMessage_logMPSSWithLogger___block_invoke_453(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5F9C = result;
  return result;
}

void *__51__PLMav7BasebandHardwareMessage_logMPSSWithLogger___block_invoke_462(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5F9D = result;
  return result;
}

void *__51__PLMav7BasebandHardwareMessage_logMPSSWithLogger___block_invoke_471(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5F9E = result;
  return result;
}

void *__51__PLMav7BasebandHardwareMessage_logMPSSWithLogger___block_invoke_477(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5F9F = result;
  return result;
}

- (void)logRFWithLogger2:(id)logger2
{
  v70 = *MEMORY[0x277D85DE8];
  logger2Copy = logger2;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __50__PLMav7BasebandHardwareMessage_logRFWithLogger2___block_invoke;
    v67[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v67[4] = v5;
    if (qword_2811F6030 != -1)
    {
      dispatch_once(&qword_2811F6030, v67);
    }

    if (byte_2811F5FA0 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLMav7BasebandHardwareMessage logRFWithLogger2:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav7BasebandHardwareMessage.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav7BasebandHardwareMessage logRFWithLogger2:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:626];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v69 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v60 = logger2Copy;
  v12 = objc_alloc_init(PLBBMavLogMsg);
  agent = [(PLBasebandMessage *)self agent];
  [(PLBasebandMessage *)v12 setAgent:agent];

  [(PLBBMavLogMsg *)v12 setError:&stru_282B650A0];
  seqNum = [(PLBasebandMessage *)self seqNum];
  date = [(PLBasebandMessage *)self date];
  [(PLBasebandMessage *)self timeCal];
  [(PLBBMavLogMsg *)v12 setHeaderWithSeqNum:seqNum andDate:date andTimeCal:?];

  if (![(PLMav7BasebandHardwareMessage *)self rf])
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v16 = objc_opt_class();
      v66[0] = MEMORY[0x277D85DD0];
      v66[1] = 3221225472;
      v66[2] = __50__PLMav7BasebandHardwareMessage_logRFWithLogger2___block_invoke_483;
      v66[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v66[4] = v16;
      if (qword_2811F6038 != -1)
      {
        dispatch_once(&qword_2811F6038, v66);
      }

      if (byte_2811F5FA1 == 1)
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: BB HW RF <RAT> is expected but not present"];
        v18 = MEMORY[0x277D3F178];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav7BasebandHardwareMessage.m"];
        lastPathComponent2 = [v19 lastPathComponent];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav7BasebandHardwareMessage logRFWithLogger2:]"];
        [v18 logMessage:v17 fromFile:lastPathComponent2 fromFunction:v21 fromLineNumber:639];

        v22 = PLLogCommon();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v69 = v17;
          _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [(PLBBMavLogMsg *)v12 appendToError:@"Error: BB HW RF <RAT> is expected but not present"];
    [(PLBBMavLogMsg *)v12 logEventBackwardMavBBHwOtherPerRAT];
  }

  v23 = 0;
  v24 = 0;
  v25 = 1272;
  v26 = 408;
  v27 = 720;
  v28 = 0x277D3F000uLL;
  do
  {
    v29 = [(PLMav7BasebandHardwareMessage *)self indexToRAT:v24];
    if ([v29 length])
    {
      [(PLBBMavLogMsg *)v12 setRat:v29];
      v30 = v29;
      v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLMav4BasebandHardwareMessage logDuration](self, "logDuration")}];
      [(PLBBMavLogMsg *)v12 setLogDuration:v31];

      v32 = [MEMORY[0x277CCABB0] numberWithInt:v24];
      [(PLBBMavLogMsg *)v12 setRadioTech:v32];

      v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{(-[PLMav4BasebandHardwareMessage header](self, "header")[16] - -[PLMav4BasebandHardwareMessage header](self, "header")[12])}];
      [(PLBBMavLogMsg *)v12 setBbHwLogDurationInTicks:v33];

      v62 = v23;
      v34 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav7BasebandHardwareMessage *)self rf]+ v23 ofSize:4];
      [(PLBBMavLogMsg *)v12 setRssiModeCount:v34];

      v35 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav7BasebandHardwareMessage *)self rf]+ v26 - 312 ofSize:13];
      [(PLBBMavLogMsg *)v12 setRx0RssiPowerHist:v35];

      v36 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav7BasebandHardwareMessage *)self rf]+ v26 ofSize:13];
      [(PLBBMavLogMsg *)v12 setRx1RssiPowerHist:v36];

      v37 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav7BasebandHardwareMessage *)self rf]+ v25 - 264 ofSize:11];
      [(PLBBMavLogMsg *)v12 setRx0SQAPowerHist:v37];

      v38 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav7BasebandHardwareMessage *)self rf]+ v25 ofSize:11];
      [(PLBBMavLogMsg *)v12 setRx1SQAPowerHist:v38];

      v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLMav4BasebandHardwareMessage logDuration](self, "logDuration")}];
      [(PLBBMavLogMsg *)v12 setLogDuration:v39];

      v63 = v30;
      v40 = v30;
      v28 = 0x277D3F000uLL;
      [(PLBBMavLogMsg *)v12 setRat:v40];
      v41 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav7BasebandHardwareMessage *)self rf]+ v27 ofSize:12];
      [(PLBBMavLogMsg *)v12 setTxPowerHist:v41];

      protocolStateHistDict = [v60 protocolStateHistDict];
      v43 = [MEMORY[0x277CCABB0] numberWithInt:v24];
      v44 = [protocolStateHistDict objectForKey:v43];
      [(PLBBMavLogMsg *)v12 setProtocolStateHist:v44];

      v61 = v27;
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v45 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __50__PLMav7BasebandHardwareMessage_logRFWithLogger2___block_invoke_495;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v45;
        if (qword_2811F6048 != -1)
        {
          dispatch_once(&qword_2811F6048, block);
        }

        if (byte_2811F5FA3 == 1)
        {
          v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded BB HW RF %@", v63];
          v47 = MEMORY[0x277D3F178];
          v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav7BasebandHardwareMessage.m"];
          lastPathComponent3 = [v48 lastPathComponent];
          v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav7BasebandHardwareMessage logRFWithLogger2:]"];
          [v47 logMessage:v46 fromFile:lastPathComponent3 fromFunction:v50 fromLineNumber:695];

          v51 = PLLogCommon();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v69 = v46;
            _os_log_debug_impl(&dword_21A4C6000, v51, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v28 = 0x277D3F000;
        }
      }

      logEventBackwardGrpEntriesBBMavHwOtherPerRAT = [(PLBBMavLogMsg *)v12 logEventBackwardGrpEntriesBBMavHwOtherPerRAT];
      v53 = [logEventBackwardGrpEntriesBBMavHwOtherPerRAT objectForKey:@"entry"];
      v54 = [logEventBackwardGrpEntriesBBMavHwOtherPerRAT objectForKey:@"name"];
      [v60 addToGroupPLBBMavHwEntry:v53 withEntryKey:v54];

LABEL_27:
      v23 = v62;

      v27 = v61;
      v29 = v63;
      goto LABEL_35;
    }

    if ([*(v28 + 384) debugEnabled])
    {
      v55 = objc_opt_class();
      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = 3221225472;
      v65[2] = __50__PLMav7BasebandHardwareMessage_logRFWithLogger2___block_invoke_489;
      v65[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v65[4] = v55;
      if (qword_2811F6040 != -1)
      {
        dispatch_once(&qword_2811F6040, v65);
      }

      if (byte_2811F5FA2 == 1)
      {
        v62 = v23;
        v63 = v29;
        v61 = v27;
        logEventBackwardGrpEntriesBBMavHwOtherPerRAT = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: RAT unknown, cannot record"];
        v56 = MEMORY[0x277D3F178];
        v57 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav7BasebandHardwareMessage.m"];
        lastPathComponent4 = [v57 lastPathComponent];
        v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav7BasebandHardwareMessage logRFWithLogger2:]"];
        [v56 logMessage:logEventBackwardGrpEntriesBBMavHwOtherPerRAT fromFile:lastPathComponent4 fromFunction:v59 fromLineNumber:651];

        v53 = PLLogCommon();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v69 = logEventBackwardGrpEntriesBBMavHwOtherPerRAT;
          _os_log_debug_impl(&dword_21A4C6000, v53, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v28 = 0x277D3F000;
        goto LABEL_27;
      }
    }

LABEL_35:

    ++v24;
    v25 += 44;
    v27 += 48;
    v26 += 52;
    v23 += 16;
  }

  while (v25 != 1536);
}

void *__50__PLMav7BasebandHardwareMessage_logRFWithLogger2___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5FA0 = result;
  return result;
}

void *__50__PLMav7BasebandHardwareMessage_logRFWithLogger2___block_invoke_483(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5FA1 = result;
  return result;
}

void *__50__PLMav7BasebandHardwareMessage_logRFWithLogger2___block_invoke_489(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5FA2 = result;
  return result;
}

void *__50__PLMav7BasebandHardwareMessage_logRFWithLogger2___block_invoke_495(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5FA3 = result;
  return result;
}

- (void)logProtocolActiveWithLogger:(id)logger
{
  v33 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__PLMav7BasebandHardwareMessage_logProtocolActiveWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F6050 != -1)
    {
      dispatch_once(&qword_2811F6050, block);
    }

    if (byte_2811F5FA4 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLMav7BasebandHardwareMessage logProtocolActiveWithLogger:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav7BasebandHardwareMessage.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav7BasebandHardwareMessage logProtocolActiveWithLogger:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:709];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v32 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = loggerCopy;
  if ([(PLMav7BasebandHardwareMessage *)self protocol])
  {
    v13 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav7BasebandHardwareMessage *)self protocol]+ 384 ofSize:6];
    [v12 setBbActive:v13];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v14 = objc_opt_class();
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __61__PLMav7BasebandHardwareMessage_logProtocolActiveWithLogger___block_invoke_513;
      v28[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v28[4] = v14;
      if (qword_2811F6060 != -1)
      {
        dispatch_once(&qword_2811F6060, v28);
      }

      if (byte_2811F5FA6 == 1)
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded BB HW Protocol Active"];
        v16 = MEMORY[0x277D3F178];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav7BasebandHardwareMessage.m"];
        lastPathComponent2 = [v17 lastPathComponent];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav7BasebandHardwareMessage logProtocolActiveWithLogger:]"];
        [v16 logMessage:v15 fromFile:lastPathComponent2 fromFunction:v19 fromLineNumber:721];

        v20 = PLLogCommon();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v32 = v15;
          _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v21 = objc_opt_class();
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __61__PLMav7BasebandHardwareMessage_logProtocolActiveWithLogger___block_invoke_507;
      v29[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v29[4] = v21;
      if (qword_2811F6058 != -1)
      {
        dispatch_once(&qword_2811F6058, v29);
      }

      if (byte_2811F5FA5 == 1)
      {
        v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: BB HW Protocol is expected but not present"];
        v23 = MEMORY[0x277D3F178];
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav7BasebandHardwareMessage.m"];
        lastPathComponent3 = [v24 lastPathComponent];
        v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav7BasebandHardwareMessage logProtocolActiveWithLogger:]"];
        [v23 logMessage:v22 fromFile:lastPathComponent3 fromFunction:v26 fromLineNumber:712];

        v27 = PLLogCommon();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v32 = v22;
          _os_log_debug_impl(&dword_21A4C6000, v27, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [v12 setError:@"Error: BB HW Protocol is expected but not present"];
  }
}

void *__61__PLMav7BasebandHardwareMessage_logProtocolActiveWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5FA4 = result;
  return result;
}

void *__61__PLMav7BasebandHardwareMessage_logProtocolActiveWithLogger___block_invoke_507(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5FA5 = result;
  return result;
}

void *__61__PLMav7BasebandHardwareMessage_logProtocolActiveWithLogger___block_invoke_513(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5FA6 = result;
  return result;
}

- (void)logSleepVetoWithLogger:(id)logger
{
  v41 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__PLMav7BasebandHardwareMessage_logSleepVetoWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F6068 != -1)
    {
      dispatch_once(&qword_2811F6068, block);
    }

    if (byte_2811F5FA7 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLMav7BasebandHardwareMessage logSleepVetoWithLogger:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav7BasebandHardwareMessage.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav7BasebandHardwareMessage logSleepVetoWithLogger:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:728];

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
  if (![(PLMav7BasebandHardwareMessage *)self mcpm_sleep_veto])
  {
    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_29;
    }

    v23 = objc_opt_class();
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __56__PLMav7BasebandHardwareMessage_logSleepVetoWithLogger___block_invoke_519;
    v37[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v37[4] = v23;
    if (qword_2811F6070 != -1)
    {
      dispatch_once(&qword_2811F6070, v37);
    }

    if (byte_2811F5FA8 != 1)
    {
      goto LABEL_29;
    }

    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: BB HW Sleep Veto is expected but not present"];
    v25 = MEMORY[0x277D3F178];
    v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav7BasebandHardwareMessage.m"];
    lastPathComponent2 = [v26 lastPathComponent];
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav7BasebandHardwareMessage logSleepVetoWithLogger:]"];
    [v25 logMessage:v24 fromFile:lastPathComponent2 fromFunction:v28 fromLineNumber:745];

    v29 = PLLogCommon();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_28;
    }

    *buf = 138412290;
    v40 = v24;
    goto LABEL_32;
  }

  v13 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav7BasebandHardwareMessage *)self mcpm_sleep_veto] ofSize:6];
  [v12 setMcpmVetoNumHistogram:v13];

  if (![(PLMav7BasebandHardwareMessage *)self npa_sleep_veto])
  {
    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_29;
    }

    v30 = objc_opt_class();
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __56__PLMav7BasebandHardwareMessage_logSleepVetoWithLogger___block_invoke_528;
    v36[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v36[4] = v30;
    if (qword_2811F6078 != -1)
    {
      dispatch_once(&qword_2811F6078, v36);
    }

    if (byte_2811F5FA9 != 1)
    {
      goto LABEL_29;
    }

    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: BB HW Sleep Veto is expected but not present"];
    v31 = MEMORY[0x277D3F178];
    v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav7BasebandHardwareMessage.m"];
    lastPathComponent3 = [v32 lastPathComponent];
    v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav7BasebandHardwareMessage logSleepVetoWithLogger:]"];
    [v31 logMessage:v24 fromFile:lastPathComponent3 fromFunction:v34 fromLineNumber:765];

    v29 = PLLogCommon();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
LABEL_28:

LABEL_29:
      [v12 appendToError:@"Error: BB HW Sleep Veto is expected but not present. "];
      goto LABEL_30;
    }

    *buf = 138412290;
    v40 = v24;
LABEL_32:
    _os_log_debug_impl(&dword_21A4C6000, v29, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    goto LABEL_28;
  }

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*-[PLMav7BasebandHardwareMessage npa_sleep_veto](self, "npa_sleep_veto")}];
  [v12 setNpaVetoMask:v14];

  v15 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav7BasebandHardwareMessage *)self npa_sleep_veto]+ 4 ofSize:24];
  [v12 setNpaVetoClientNumHistogram:v15];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v16 = objc_opt_class();
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __56__PLMav7BasebandHardwareMessage_logSleepVetoWithLogger___block_invoke_531;
    v35[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v35[4] = v16;
    if (qword_2811F6080 != -1)
    {
      dispatch_once(&qword_2811F6080, v35);
    }

    if (byte_2811F5FAA == 1)
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded BB HW Sleep Veto"];
      v18 = MEMORY[0x277D3F178];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav7BasebandHardwareMessage.m"];
      lastPathComponent4 = [v19 lastPathComponent];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav7BasebandHardwareMessage logSleepVetoWithLogger:]"];
      [v18 logMessage:v17 fromFile:lastPathComponent4 fromFunction:v21 fromLineNumber:773];

      v22 = PLLogCommon();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v40 = v17;
        _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

LABEL_30:
}

void *__56__PLMav7BasebandHardwareMessage_logSleepVetoWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5FA7 = result;
  return result;
}

void *__56__PLMav7BasebandHardwareMessage_logSleepVetoWithLogger___block_invoke_519(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5FA8 = result;
  return result;
}

void *__56__PLMav7BasebandHardwareMessage_logSleepVetoWithLogger___block_invoke_528(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5FA9 = result;
  return result;
}

void *__56__PLMav7BasebandHardwareMessage_logSleepVetoWithLogger___block_invoke_531(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5FAA = result;
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
  v9 = apps_clock_names_1;
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
              v14 = v13;
              if (v14 > 0.01)
              {
                [string appendFormat:@" %@=[%.02f%%];", *v11, *&v14];
              }
            }
          }

          data += 4;
        }

        ++v11;
        v15 = v10 >= 2;
        v10 >>= 1;
      }

      while (v15);
    }

    ++v8;
    ++v9;
  }

  while (v8 != 4);
  if (oftype || ([(PLMav7BasebandHardwareMessage *)self apps_clock_duration], v18 = objc_claimAutoreleasedReturnValue(), v18, !v18))
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

  v19 = mpss_clock_duration2;
  [mpss_clock_duration2 appendString:string];

LABEL_17:
}

- (void)logClockWithLogger:(id)logger
{
  v41 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  apps_clock_duration = [(PLMav7BasebandHardwareMessage *)self apps_clock_duration];
  if (apps_clock_duration && (v6 = apps_clock_duration, -[PLMav7BasebandHardwareMessage apps_clock_duration](self, "apps_clock_duration"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 length], v7, v6, v8))
  {
    apps_clock_duration2 = [(PLMav7BasebandHardwareMessage *)self apps_clock_duration];
    [loggerCopy setAppsClockStateDurationStr:apps_clock_duration2];
  }

  else if ([(PLMav4BasebandHardwareMessage *)self level]>= 7)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v10 = objc_opt_class();
      block = MEMORY[0x277D85DD0];
      v35 = 3221225472;
      v36 = __52__PLMav7BasebandHardwareMessage_logClockWithLogger___block_invoke;
      v37 = &__block_descriptor_40_e5_v8__0lu32l8;
      v38 = v10;
      if (qword_2811F6088 != -1)
      {
        dispatch_once(&qword_2811F6088, &block);
      }

      if (byte_2811F5FAB == 1)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: BB HW APPS Clocks is expected but not present"];
        v12 = MEMORY[0x277D3F178];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav7BasebandHardwareMessage.m"];
        lastPathComponent = [v13 lastPathComponent];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav7BasebandHardwareMessage logClockWithLogger:]"];
        [v12 logMessage:v11 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:848];

        v16 = PLLogCommon();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v40 = v11;
          _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [loggerCopy appendToError:@"Error: BB HW APPS Clocks is expected but not present. "];
  }

  mpss_clock_duration = [(PLMav7BasebandHardwareMessage *)self mpss_clock_duration];
  if (mpss_clock_duration && (v18 = mpss_clock_duration, -[PLMav7BasebandHardwareMessage mpss_clock_duration](self, "mpss_clock_duration"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 length], v19, v18, v20))
  {
    mpss_clock_duration2 = [(PLMav7BasebandHardwareMessage *)self mpss_clock_duration];
    [loggerCopy setMpssClockStateDurationStr:mpss_clock_duration2];
  }

  else if ([(PLMav4BasebandHardwareMessage *)self level]>= 7)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v22 = objc_opt_class();
      v29 = MEMORY[0x277D85DD0];
      v30 = 3221225472;
      v31 = __52__PLMav7BasebandHardwareMessage_logClockWithLogger___block_invoke_546;
      v32 = &__block_descriptor_40_e5_v8__0lu32l8;
      v33 = v22;
      if (qword_2811F6090 != -1)
      {
        dispatch_once(&qword_2811F6090, &v29);
      }

      if (byte_2811F5FAC == 1)
      {
        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: BB HW MPSS Clock is expected but not present", v29, v30, v31, v32, v33];
        v24 = MEMORY[0x277D3F178];
        v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav7BasebandHardwareMessage.m"];
        lastPathComponent2 = [v25 lastPathComponent];
        v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav7BasebandHardwareMessage logClockWithLogger:]"];
        [v24 logMessage:v23 fromFile:lastPathComponent2 fromFunction:v27 fromLineNumber:876];

        v28 = PLLogCommon();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v40 = v23;
          _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [loggerCopy appendToError:{@"Error: BB HW MPSS Clock is expected but not present. ", v29, v30, v31, v32, v33, block, v35, v36, v37, v38}];
  }
}

void *__52__PLMav7BasebandHardwareMessage_logClockWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5FAB = result;
  return result;
}

void *__52__PLMav7BasebandHardwareMessage_logClockWithLogger___block_invoke_546(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5FAC = result;
  return result;
}

- (void)logHSICWithLogger:(id)logger
{
  v28 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  if ([(PLMav7BasebandHardwareMessage *)self hsic])
  {
    v5 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav7BasebandHardwareMessage *)self hsic] ofSize:8];
    [loggerCopy setHsicStateSleepVetoNum:v5];
  }

  else
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v6 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __51__PLMav7BasebandHardwareMessage_logHSICWithLogger___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v6;
      if (qword_2811F6098 != -1)
      {
        dispatch_once(&qword_2811F6098, block);
      }

      if (byte_2811F5FAD == 1)
      {
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: HSIC is expected but not present"];
        v8 = MEMORY[0x277D3F178];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav7BasebandHardwareMessage.m"];
        lastPathComponent = [v9 lastPathComponent];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav7BasebandHardwareMessage logHSICWithLogger:]"];
        [v8 logMessage:v7 fromFile:lastPathComponent fromFunction:v11 fromLineNumber:907];

        v12 = PLLogCommon();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v27 = v7;
          _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [loggerCopy appendToError:@"State=<unknown>;"];
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v13 = objc_opt_class();
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __51__PLMav7BasebandHardwareMessage_logHSICWithLogger___block_invoke_561;
    v23 = &__block_descriptor_40_e5_v8__0lu32l8;
    v24 = v13;
    if (qword_2811F60A0 != -1)
    {
      dispatch_once(&qword_2811F60A0, &v20);
    }

    if (byte_2811F5FAE == 1)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded BB HW HSIC", v20, v21, v22, v23, v24];
      v15 = MEMORY[0x277D3F178];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav7BasebandHardwareMessage.m"];
      lastPathComponent2 = [v16 lastPathComponent];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav7BasebandHardwareMessage logHSICWithLogger:]"];
      [v15 logMessage:v14 fromFile:lastPathComponent2 fromFunction:v18 fromLineNumber:914];

      v19 = PLLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v27 = v14;
        _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

void *__51__PLMav7BasebandHardwareMessage_logHSICWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5FAD = result;
  return result;
}

void *__51__PLMav7BasebandHardwareMessage_logHSICWithLogger___block_invoke_561(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5FAE = result;
  return result;
}

- (id)indexToRAT:(unint64_t)t
{
  if (t > 5)
  {
    v4 = &stru_282B650A0;
  }

  else
  {
    v4 = *off_27825FCA0[t];
  }

  return v4;
}

@end