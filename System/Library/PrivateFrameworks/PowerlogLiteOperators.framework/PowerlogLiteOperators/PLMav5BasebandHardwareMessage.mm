@interface PLMav5BasebandHardwareMessage
- (BOOL)parseData:(id)data;
- (PLMav5BasebandHardwareMessage)initWithData:(id)data;
- (id)indexToRAT:(unint64_t)t;
- (void)formatDurationandCount:(unsigned int)count withCount:(unsigned int)withCount inString:(id)string;
- (void)logAPPSWithLogger:(id)logger;
- (void)logClockWithLogger:(id)logger;
- (void)logLPASSWithLogger:(id)logger;
- (void)logModemAppWithLogger:(id)logger;
- (void)logPeripheralsWithLogger:(id)logger;
- (void)logProtocolWithLogger:(id)logger withCount:(unsigned int)count;
- (void)logRFWithLogger2:(id)logger2;
- (void)logRPMWithLogger:(id)logger;
- (void)logWithLogger:(id)logger;
@end

@implementation PLMav5BasebandHardwareMessage

- (PLMav5BasebandHardwareMessage)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = PLMav5BasebandHardwareMessage;
  v5 = [(PLMav4BasebandHardwareMessage *)&v9 initWithData:dataCopy];
  v6 = v5;
  if (!v5 || ([(PLMav5BasebandHardwareMessage *)v5 setRpm:0], [(PLMav5BasebandHardwareMessage *)v6 setApps:0], [(PLMav5BasebandHardwareMessage *)v6 setApps_sleep:0], [(PLMav5BasebandHardwareMessage *)v6 setApps_sleep_veto:0], [(PLMav5BasebandHardwareMessage *)v6 setLpass:0], [(PLMav5BasebandHardwareMessage *)v6 setMdsp:0], [(PLMav5BasebandHardwareMessage *)v6 setQdsp:0], [(PLMav5BasebandHardwareMessage *)v6 setMpss_sleep:0], [(PLMav5BasebandHardwareMessage *)v6 setMpss_sleep_veto:0], [(PLMav5BasebandHardwareMessage *)v6 setUsb:0], [(PLMav5BasebandHardwareMessage *)v6 setGps_dpo:0], [(PLMav5BasebandHardwareMessage *)v6 setRx:0], [(PLMav5BasebandHardwareMessage *)v6 setRx_sqa:0], [(PLMav5BasebandHardwareMessage *)v6 setTx:0], [(PLMav5BasebandHardwareMessage *)v6 setProtocol:0], [(PLMav5BasebandHardwareMessage *)v6 setClock:0], v7 = 0, [(PLMav5BasebandHardwareMessage *)v6 parseData:dataCopy]))
  {
    v7 = v6;
  }

  return v7;
}

- (BOOL)parseData:(id)data
{
  v34 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  bytes = [dataCopy bytes];
  v6 = &bytes[2 * (*bytes == 129)];
  [(PLMav4BasebandHardwareMessage *)self setHeader:v6 + 13];
  v7 = v6 + 33;
  [(PLMav4BasebandHardwareMessage *)self setLogDuration:([(PLMav4BasebandHardwareMessage *)self header][16] - [(PLMav4BasebandHardwareMessage *)self header][12])];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __43__PLMav5BasebandHardwareMessage_parseData___block_invoke;
    v26 = &__block_descriptor_40_e5_v8__0lu32l8;
    v27 = v8;
    if (qword_2811F7C00 != -1)
    {
      dispatch_once(&qword_2811F7C00, &block);
    }

    if (_MergedGlobals_100 == 1)
    {
      v9 = MEMORY[0x277CCACA8];
      logDuration = [(PLMav4BasebandHardwareMessage *)self logDuration];
      v11 = [v9 stringWithFormat:@"Mav5 hw log duration set as %u", logDuration, block, v24, v25, v26, v27];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      lastPathComponent = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage parseData:]"];
      [v12 logMessage:v11 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:98];

      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v29 = v11;
        _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

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
    [(PLMav5BasebandHardwareMessage *)self setMpss_sleep:v7 + 112];
    v7 += 120;
  }

  if ([(PLMav4BasebandHardwareMessage *)self level]>= 6)
  {
    [(PLMav5BasebandHardwareMessage *)self setRx:v7];
    [(PLMav5BasebandHardwareMessage *)self setTx:v7 + 600];
    [(PLMav5BasebandHardwareMessage *)self setRx_sqa:v7 + 840];
    [(PLMav5BasebandHardwareMessage *)self setProtocol:v7 + 1280];
    v7 += 1600;
  }

  if ([(PLMav4BasebandHardwareMessage *)self level]>= 7)
  {
    [(PLMav5BasebandHardwareMessage *)self setClock:v7];
    v7 += 836;
  }

  v17 = &v7[-[dataCopy bytes]];
  v18 = [dataCopy length];
  if (v17 > v18)
  {
    v19 = PLLogCommon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = &v7[-[dataCopy bytes]];
      v22 = [dataCopy length];
      *buf = 134218498;
      v29 = v21;
      v30 = 2048;
      v31 = v22;
      v32 = 2080;
      v33 = "[PLMav5BasebandHardwareMessage parseData:]";
      _os_log_error_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_ERROR, "Expected data length %lu but got %lu in %s", buf, 0x20u);
    }
  }

  return v17 <= v18;
}

void *__43__PLMav5BasebandHardwareMessage_parseData___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_100 = result;
  return result;
}

- (void)logWithLogger:(id)logger
{
  v28 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  v25.receiver = self;
  v25.super_class = PLMav5BasebandHardwareMessage;
  [(PLBasebandHardwareMessage *)&v25 logRawWithLogger:loggerCopy];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__PLMav5BasebandHardwareMessage_logWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F7C08 != -1)
    {
      dispatch_once(&qword_2811F7C08, block);
    }

    if (byte_2811F7BD9 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLMav5BasebandHardwareMessage logWithLogger:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logWithLogger:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:205];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v27 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = objc_alloc_init(PLBBMavLogMsg);
  agent = [(PLBasebandMessage *)self agent];
  [(PLBasebandMessage *)v12 setAgent:agent];

  [(PLBBMavLogMsg *)v12 setError:@"not set"];
  seqNum = [(PLBasebandMessage *)self seqNum];
  date = [(PLBasebandMessage *)self date];
  [(PLBasebandMessage *)self timeCal];
  [(PLBBMavLogMsg *)v12 setHeaderWithSeqNum:seqNum andDate:date andTimeCal:?];

  if ([(PLMav4BasebandHardwareMessage *)self sw_rev]!= 4)
  {
    string = [MEMORY[0x277CCAB68] string];
    [string appendFormat:@" Version Mismatch: Baseband_sw_rev=%d Powerlog_supported_sw_rev=%d", -[PLMav4BasebandHardwareMessage sw_rev](self, "sw_rev"), 4];
    [(PLBBMavLogMsg *)v12 setError:string];
    [(PLBBMavLogMsg *)v12 setType:@"BB HW Error"];
    [(PLBBMavLogMsg *)v12 logEventBackwardMavBBHwOther];
LABEL_19:

    goto LABEL_20;
  }

  [(PLMav4BasebandHardwareMessage *)self logHeaderWithLogger:v12];
  [(PLMav5BasebandHardwareMessage *)self logRPMWithLogger:v12];
  [(PLMav5BasebandHardwareMessage *)self logAPPSWithLogger:v12];
  [(PLMav5BasebandHardwareMessage *)self logLPASSWithLogger:v12];
  [(PLMav5BasebandHardwareMessage *)self logModemAppWithLogger:loggerCopy];
  [(PLMav5BasebandHardwareMessage *)self logPeripheralsWithLogger:v12];
  [(PLMav5BasebandHardwareMessage *)self logProtocolWithLogger:v12 withCount:5];
  if ([MEMORY[0x277D3F180] fullMode])
  {
    [(PLMav5BasebandHardwareMessage *)self logClockWithLogger:loggerCopy];
  }

  [(PLBBMavLogMsg *)v12 addToGroupPLBBMavHwOther];
  [(PLMav5BasebandHardwareMessage *)self logRFWithLogger2:v12];
  [(PLBBMavLogMsg *)v12 logEventBackwardGrpEntriesBBMavHw];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v16 = objc_opt_class();
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __47__PLMav5BasebandHardwareMessage_logWithLogger___block_invoke_387;
    v23[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v23[4] = v16;
    if (qword_2811F7C10 != -1)
    {
      dispatch_once(&qword_2811F7C10, v23);
    }

    if (byte_2811F7BDA == 1)
    {
      string = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoding BB HW RF completed"];
      v18 = MEMORY[0x277D3F178];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      lastPathComponent2 = [v19 lastPathComponent];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logWithLogger:]"];
      [v18 logMessage:string fromFile:lastPathComponent2 fromFunction:v21 fromLineNumber:250];

      v22 = PLLogCommon();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v27 = string;
        _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_19;
    }
  }

LABEL_20:
}

void *__47__PLMav5BasebandHardwareMessage_logWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BD9 = result;
  return result;
}

void *__47__PLMav5BasebandHardwareMessage_logWithLogger___block_invoke_387(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BDA = result;
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
    block[2] = __50__PLMav5BasebandHardwareMessage_logRPMWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F7C18 != -1)
    {
      dispatch_once(&qword_2811F7C18, block);
    }

    if (byte_2811F7BDB == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLMav5BasebandHardwareMessage logRPMWithLogger:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logRPMWithLogger:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:255];

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
  if ([(PLMav5BasebandHardwareMessage *)self rpm])
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*-[PLMav5BasebandHardwareMessage rpm](self, "rpm")}];
    [v12 setRpmXOShutDuration:v13];

    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLMav5BasebandHardwareMessage rpm](self, "rpm")[4]}];
    [v12 setRpmXOShutCnt:v14];

    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLMav5BasebandHardwareMessage rpm](self, "rpm")[8]}];
    [v12 setRpmVDDMinDuration:v15];

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLMav5BasebandHardwareMessage rpm](self, "rpm")[12]}];
    [v12 setRpmVDDMinEnterCnt:v16];
  }

  else
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v17 = objc_opt_class();
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __50__PLMav5BasebandHardwareMessage_logRPMWithLogger___block_invoke_394;
      v32[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v32[4] = v17;
      if (qword_2811F7C20 != -1)
      {
        dispatch_once(&qword_2811F7C20, v32);
      }

      if (byte_2811F7BDC == 1)
      {
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"RPM=<unknown>"];
        v19 = MEMORY[0x277D3F178];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
        lastPathComponent2 = [v20 lastPathComponent];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logRPMWithLogger:]"];
        [v19 logMessage:v18 fromFile:lastPathComponent2 fromFunction:v22 fromLineNumber:285];

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
    v31[2] = __50__PLMav5BasebandHardwareMessage_logRPMWithLogger___block_invoke_403;
    v31[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v31[4] = v24;
    if (qword_2811F7C28 != -1)
    {
      dispatch_once(&qword_2811F7C28, v31);
    }

    if (byte_2811F7BDD == 1)
    {
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded BB HW RPM"];
      v26 = MEMORY[0x277D3F178];
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      lastPathComponent3 = [v27 lastPathComponent];
      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logRPMWithLogger:]"];
      [v26 logMessage:v25 fromFile:lastPathComponent3 fromFunction:v29 fromLineNumber:289];

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

void *__50__PLMav5BasebandHardwareMessage_logRPMWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BDB = result;
  return result;
}

void *__50__PLMav5BasebandHardwareMessage_logRPMWithLogger___block_invoke_394(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BDC = result;
  return result;
}

void *__50__PLMav5BasebandHardwareMessage_logRPMWithLogger___block_invoke_403(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BDD = result;
  return result;
}

- (void)logAPPSWithLogger:(id)logger
{
  v44 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  if ([(PLMav5BasebandHardwareMessage *)self apps])
  {
    v5 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav5BasebandHardwareMessage *)self apps] ofSize:6];
    [loggerCopy setAppsPerfStateCountHist:v5];
LABEL_3:

    goto LABEL_11;
  }

  [loggerCopy appendToError:@"Perf_Level=<unknown> "];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__PLMav5BasebandHardwareMessage_logAPPSWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v6;
    if (qword_2811F7C30 != -1)
    {
      dispatch_once(&qword_2811F7C30, block);
    }

    if (byte_2811F7BDE == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Perf_Level=<unknown>"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logAPPSWithLogger:]"];
      [v7 logMessage:v5 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:313];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v43 = v5;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_3;
    }
  }

LABEL_11:
  if ([(PLMav5BasebandHardwareMessage *)self apps_sleep])
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*-[PLMav5BasebandHardwareMessage apps_sleep](self, "apps_sleep")}];
    [loggerCopy setCxoShutDownDuration:v12];

    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLMav5BasebandHardwareMessage apps_sleep](self, "apps_sleep")[4]}];
    [loggerCopy setCxoShutDownCount:v13];
LABEL_13:

    goto LABEL_21;
  }

  [loggerCopy appendToError:@"Sleep_Stats=<unknown> "];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v14 = objc_opt_class();
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __51__PLMav5BasebandHardwareMessage_logAPPSWithLogger___block_invoke_418;
    v40[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v40[4] = v14;
    if (qword_2811F7C38 != -1)
    {
      dispatch_once(&qword_2811F7C38, v40);
    }

    if (byte_2811F7BDF == 1)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sleep_Stats=<unknown>"];
      v15 = MEMORY[0x277D3F178];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      lastPathComponent2 = [v16 lastPathComponent];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logAPPSWithLogger:]"];
      [v15 logMessage:v13 fromFile:lastPathComponent2 fromFunction:v18 fromLineNumber:332];

      v19 = PLLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v43 = v13;
        _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_13;
    }
  }

LABEL_21:
  if ([(PLMav5BasebandHardwareMessage *)self apps_sleep_veto])
  {
    v20 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav5BasebandHardwareMessage *)self apps_sleep_veto] ofSize:1];
    [loggerCopy setAppsSleepVeto:v20];
LABEL_23:

    goto LABEL_31;
  }

  [loggerCopy appendToError:@"Sleep_Veto_Duration=<unknown> "];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v21 = objc_opt_class();
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __51__PLMav5BasebandHardwareMessage_logAPPSWithLogger___block_invoke_427;
    v39[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v39[4] = v21;
    if (qword_2811F7C40 != -1)
    {
      dispatch_once(&qword_2811F7C40, v39);
    }

    if (byte_2811F7BE0 == 1)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sleep_Veto_Duration=<unknown>"];
      v22 = MEMORY[0x277D3F178];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      lastPathComponent3 = [v23 lastPathComponent];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logAPPSWithLogger:]"];
      [v22 logMessage:v20 fromFile:lastPathComponent3 fromFunction:v25 fromLineNumber:353];

      v26 = PLLogCommon();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v43 = v20;
        _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_23;
    }
  }

LABEL_31:
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v27 = objc_opt_class();
    v34 = MEMORY[0x277D85DD0];
    v35 = 3221225472;
    v36 = __51__PLMav5BasebandHardwareMessage_logAPPSWithLogger___block_invoke_433;
    v37 = &__block_descriptor_40_e5_v8__0lu32l8;
    v38 = v27;
    if (qword_2811F7C48 != -1)
    {
      dispatch_once(&qword_2811F7C48, &v34);
    }

    if (byte_2811F7BE1 == 1)
    {
      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded BB HW APPS", v34, v35, v36, v37, v38];
      v29 = MEMORY[0x277D3F178];
      v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      lastPathComponent4 = [v30 lastPathComponent];
      v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logAPPSWithLogger:]"];
      [v29 logMessage:v28 fromFile:lastPathComponent4 fromFunction:v32 fromLineNumber:357];

      v33 = PLLogCommon();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v43 = v28;
        _os_log_debug_impl(&dword_21A4C6000, v33, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

void *__51__PLMav5BasebandHardwareMessage_logAPPSWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BDE = result;
  return result;
}

void *__51__PLMav5BasebandHardwareMessage_logAPPSWithLogger___block_invoke_418(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BDF = result;
  return result;
}

void *__51__PLMav5BasebandHardwareMessage_logAPPSWithLogger___block_invoke_427(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BE0 = result;
  return result;
}

void *__51__PLMav5BasebandHardwareMessage_logAPPSWithLogger___block_invoke_433(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BE1 = result;
  return result;
}

- (void)logLPASSWithLogger:(id)logger
{
  v27 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  if ([(PLMav5BasebandHardwareMessage *)self lpass])
  {
    v5 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav5BasebandHardwareMessage *)self lpass] ofSize:2];
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
    block[2] = __52__PLMav5BasebandHardwareMessage_logLPASSWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v6;
    if (qword_2811F7C50 != -1)
    {
      dispatch_once(&qword_2811F7C50, block);
    }

    if (byte_2811F7BE2 == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"LPASS State=<unknown>"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logLPASSWithLogger:]"];
      [v7 logMessage:v5 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:374];

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
    v21 = __52__PLMav5BasebandHardwareMessage_logLPASSWithLogger___block_invoke_445;
    v22 = &__block_descriptor_40_e5_v8__0lu32l8;
    v23 = v12;
    if (qword_2811F7C58 != -1)
    {
      dispatch_once(&qword_2811F7C58, &v19);
    }

    if (byte_2811F7BE3 == 1)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded BB HW LPASS", v19, v20, v21, v22, v23];
      v14 = MEMORY[0x277D3F178];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      lastPathComponent2 = [v15 lastPathComponent];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logLPASSWithLogger:]"];
      [v14 logMessage:v13 fromFile:lastPathComponent2 fromFunction:v17 fromLineNumber:377];

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

void *__52__PLMav5BasebandHardwareMessage_logLPASSWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BE2 = result;
  return result;
}

void *__52__PLMav5BasebandHardwareMessage_logLPASSWithLogger___block_invoke_445(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BE3 = result;
  return result;
}

- (void)logModemAppWithLogger:(id)logger
{
  v60 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  if ([(PLMav5BasebandHardwareMessage *)self mpss_sleep])
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*-[PLMav5BasebandHardwareMessage mpss_sleep](self, "mpss_sleep")}];
    [loggerCopy setMpssCxoShutDownDuration:v5];

    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLMav5BasebandHardwareMessage mpss_sleep](self, "mpss_sleep")[4]}];
    [loggerCopy setMpssCxoShutDownCount:v6];
LABEL_3:

    goto LABEL_11;
  }

  [loggerCopy appendToError:@"MPSS CXO_Shutdown=<unknown> "];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__PLMav5BasebandHardwareMessage_logModemAppWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v7;
    if (qword_2811F7C60 != -1)
    {
      dispatch_once(&qword_2811F7C60, block);
    }

    if (byte_2811F7BE4 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"MPSS CXO_Shutdown=<unknown>"];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      lastPathComponent = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logModemAppWithLogger:]"];
      [v8 logMessage:v6 fromFile:lastPathComponent fromFunction:v11 fromLineNumber:399];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v59 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_3;
    }
  }

LABEL_11:
  if ([(PLMav5BasebandHardwareMessage *)self mpss_sleep_veto])
  {
    v13 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav5BasebandHardwareMessage *)self mpss_sleep_veto] ofSize:3];
    [loggerCopy setMpssSleepVeto:v13];
LABEL_13:

    goto LABEL_21;
  }

  [loggerCopy appendToError:@"MPSS_Sleep_Veto_Duration=<unknown> "];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v14 = objc_opt_class();
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __55__PLMav5BasebandHardwareMessage_logModemAppWithLogger___block_invoke_460;
    v56[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v56[4] = v14;
    if (qword_2811F7C68 != -1)
    {
      dispatch_once(&qword_2811F7C68, v56);
    }

    if (byte_2811F7BE5 == 1)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"MPSS_Sleep_Veto_Duration=<unknown>"];
      v15 = MEMORY[0x277D3F178];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      lastPathComponent2 = [v16 lastPathComponent];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logModemAppWithLogger:]"];
      [v15 logMessage:v13 fromFile:lastPathComponent2 fromFunction:v18 fromLineNumber:415];

      v19 = PLLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v59 = v13;
        _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_13;
    }
  }

LABEL_21:
  if ([(PLMav5BasebandHardwareMessage *)self mdsp])
  {
    v20 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav5BasebandHardwareMessage *)self mdsp] ofSize:10];
    [loggerCopy setMpssSleepVeto:v20];
LABEL_23:

    goto LABEL_31;
  }

  [loggerCopy appendToError:@"MDSP=<unknown> "];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v21 = objc_opt_class();
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __55__PLMav5BasebandHardwareMessage_logModemAppWithLogger___block_invoke_469;
    v55[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v55[4] = v21;
    if (qword_2811F7C70 != -1)
    {
      dispatch_once(&qword_2811F7C70, v55);
    }

    if (byte_2811F7BE6 == 1)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"MPSS_Sleep_Veto_Duration=<unknown>"];
      v22 = MEMORY[0x277D3F178];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      lastPathComponent3 = [v23 lastPathComponent];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logModemAppWithLogger:]"];
      [v22 logMessage:v20 fromFile:lastPathComponent3 fromFunction:v25 fromLineNumber:434];

      v26 = PLLogCommon();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v59 = v20;
        _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_23;
    }
  }

LABEL_31:
  if ([(PLMav5BasebandHardwareMessage *)self qdsp])
  {
    v27 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav5BasebandHardwareMessage *)self qdsp] ofSize:10];
    [loggerCopy setMpssSleepVeto:v27];
LABEL_33:

    goto LABEL_41;
  }

  [loggerCopy appendToError:@"QDSP=<unknown> "];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v28 = objc_opt_class();
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __55__PLMav5BasebandHardwareMessage_logModemAppWithLogger___block_invoke_475;
    v54[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v54[4] = v28;
    if (qword_2811F7C78 != -1)
    {
      dispatch_once(&qword_2811F7C78, v54);
    }

    if (byte_2811F7BE7 == 1)
    {
      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"QDSP=<unknown>"];
      v29 = MEMORY[0x277D3F178];
      v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      lastPathComponent4 = [v30 lastPathComponent];
      v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logModemAppWithLogger:]"];
      [v29 logMessage:v27 fromFile:lastPathComponent4 fromFunction:v32 fromLineNumber:453];

      v33 = PLLogCommon();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v59 = v27;
        _os_log_debug_impl(&dword_21A4C6000, v33, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_33;
    }
  }

LABEL_41:
  if ([(PLMav4BasebandHardwareMessage *)self adm])
  {
    v34 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav4BasebandHardwareMessage *)self adm] ofSize:2];
    [loggerCopy setMpssSleepVeto:v34];
LABEL_43:

    goto LABEL_51;
  }

  [loggerCopy appendToError:@"ADM=<unknown> "];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v35 = objc_opt_class();
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __55__PLMav5BasebandHardwareMessage_logModemAppWithLogger___block_invoke_484;
    v53[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v53[4] = v35;
    if (qword_2811F7C80 != -1)
    {
      dispatch_once(&qword_2811F7C80, v53);
    }

    if (byte_2811F7BE8 == 1)
    {
      v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"ADM=<unknown>"];
      v36 = MEMORY[0x277D3F178];
      v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      lastPathComponent5 = [v37 lastPathComponent];
      v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logModemAppWithLogger:]"];
      [v36 logMessage:v34 fromFile:lastPathComponent5 fromFunction:v39 fromLineNumber:470];

      v40 = PLLogCommon();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v59 = v34;
        _os_log_debug_impl(&dword_21A4C6000, v40, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_43;
    }
  }

LABEL_51:
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v41 = objc_opt_class();
    v48 = MEMORY[0x277D85DD0];
    v49 = 3221225472;
    v50 = __55__PLMav5BasebandHardwareMessage_logModemAppWithLogger___block_invoke_490;
    v51 = &__block_descriptor_40_e5_v8__0lu32l8;
    v52 = v41;
    if (qword_2811F7C88 != -1)
    {
      dispatch_once(&qword_2811F7C88, &v48);
    }

    if (byte_2811F7BE9 == 1)
    {
      v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded BB HW MPSS", v48, v49, v50, v51, v52];
      v43 = MEMORY[0x277D3F178];
      v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      lastPathComponent6 = [v44 lastPathComponent];
      v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logModemAppWithLogger:]"];
      [v43 logMessage:v42 fromFile:lastPathComponent6 fromFunction:v46 fromLineNumber:476];

      v47 = PLLogCommon();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v59 = v42;
        _os_log_debug_impl(&dword_21A4C6000, v47, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

void *__55__PLMav5BasebandHardwareMessage_logModemAppWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BE4 = result;
  return result;
}

void *__55__PLMav5BasebandHardwareMessage_logModemAppWithLogger___block_invoke_460(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BE5 = result;
  return result;
}

void *__55__PLMav5BasebandHardwareMessage_logModemAppWithLogger___block_invoke_469(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BE6 = result;
  return result;
}

void *__55__PLMav5BasebandHardwareMessage_logModemAppWithLogger___block_invoke_475(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BE7 = result;
  return result;
}

void *__55__PLMav5BasebandHardwareMessage_logModemAppWithLogger___block_invoke_484(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BE8 = result;
  return result;
}

void *__55__PLMav5BasebandHardwareMessage_logModemAppWithLogger___block_invoke_490(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BE9 = result;
  return result;
}

- (void)logPeripheralsWithLogger:(id)logger
{
  v59 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  if ([(PLMav5BasebandHardwareMessage *)self usb])
  {
    v5 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav5BasebandHardwareMessage *)self usb] ofSize:3];
    [loggerCopy setUsbStateCountHist:v5];
LABEL_3:

    goto LABEL_11;
  }

  [loggerCopy appendToError:@"USB=<unknown> "];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__PLMav5BasebandHardwareMessage_logPeripheralsWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v6;
    if (qword_2811F7C90 != -1)
    {
      dispatch_once(&qword_2811F7C90, block);
    }

    if (byte_2811F7BEA == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"USB=<unknown>"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logPeripheralsWithLogger:]"];
      [v7 logMessage:v5 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:498];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v58 = v5;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_3;
    }
  }

LABEL_11:
  if ([(PLMav4BasebandHardwareMessage *)self spi])
  {
    v12 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav4BasebandHardwareMessage *)self spi] ofSize:2];
    [loggerCopy setSpiOnOffState:v12];
LABEL_13:

    goto LABEL_21;
  }

  [loggerCopy appendToError:@"SPI=<unknown> "];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v13 = objc_opt_class();
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __58__PLMav5BasebandHardwareMessage_logPeripheralsWithLogger___block_invoke_505;
    v55[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v55[4] = v13;
    if (qword_2811F7C98 != -1)
    {
      dispatch_once(&qword_2811F7C98, v55);
    }

    if (byte_2811F7BEB == 1)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"USB=<unknown>"];
      v14 = MEMORY[0x277D3F178];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      lastPathComponent2 = [v15 lastPathComponent];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logPeripheralsWithLogger:]"];
      [v14 logMessage:v12 fromFile:lastPathComponent2 fromFunction:v17 fromLineNumber:516];

      v18 = PLLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v58 = v12;
        _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_13;
    }
  }

LABEL_21:
  if ([(PLMav4BasebandHardwareMessage *)self uart])
  {
    v19 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav4BasebandHardwareMessage *)self uart] ofSize:2];
    [loggerCopy setUartOnOffState:v19];
LABEL_23:

    goto LABEL_31;
  }

  [loggerCopy appendToError:@"UART=<unknown> "];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v20 = objc_opt_class();
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __58__PLMav5BasebandHardwareMessage_logPeripheralsWithLogger___block_invoke_511;
    v54[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v54[4] = v20;
    if (qword_2811F7CA0 != -1)
    {
      dispatch_once(&qword_2811F7CA0, v54);
    }

    if (byte_2811F7BEC == 1)
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"UART=<unknown>"];
      v21 = MEMORY[0x277D3F178];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      lastPathComponent3 = [v22 lastPathComponent];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logPeripheralsWithLogger:]"];
      [v21 logMessage:v19 fromFile:lastPathComponent3 fromFunction:v24 fromLineNumber:535];

      v25 = PLLogCommon();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v58 = v19;
        _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_23;
    }
  }

LABEL_31:
  if ([(PLMav4BasebandHardwareMessage *)self gps])
  {
    v26 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav4BasebandHardwareMessage *)self gps] ofSize:2];
    [loggerCopy setGpsOnOff:v26];
LABEL_33:

    goto LABEL_41;
  }

  [loggerCopy appendToError:@"GPS=<unknown> "];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v27 = objc_opt_class();
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __58__PLMav5BasebandHardwareMessage_logPeripheralsWithLogger___block_invoke_520;
    v53[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v53[4] = v27;
    if (qword_2811F7CA8 != -1)
    {
      dispatch_once(&qword_2811F7CA8, v53);
    }

    if (byte_2811F7BED == 1)
    {
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPS=<unknown>"];
      v28 = MEMORY[0x277D3F178];
      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      lastPathComponent4 = [v29 lastPathComponent];
      v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logPeripheralsWithLogger:]"];
      [v28 logMessage:v26 fromFile:lastPathComponent4 fromFunction:v31 fromLineNumber:554];

      v32 = PLLogCommon();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v58 = v26;
        _os_log_debug_impl(&dword_21A4C6000, v32, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_33;
    }
  }

LABEL_41:
  if ([(PLMav5BasebandHardwareMessage *)self gps_dpo])
  {
    v33 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav5BasebandHardwareMessage *)self gps_dpo] ofSize:2];
    [loggerCopy setGpsDPOOnOff:v33];
LABEL_43:

    goto LABEL_51;
  }

  [loggerCopy appendToError:@"GPS_DPO=<unknown> "];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v34 = objc_opt_class();
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __58__PLMav5BasebandHardwareMessage_logPeripheralsWithLogger___block_invoke_529;
    v52[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v52[4] = v34;
    if (qword_2811F7CB0 != -1)
    {
      dispatch_once(&qword_2811F7CB0, v52);
    }

    if (byte_2811F7BEE == 1)
    {
      v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPS_DPO=<unknown>"];
      v35 = MEMORY[0x277D3F178];
      v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      lastPathComponent5 = [v36 lastPathComponent];
      v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logPeripheralsWithLogger:]"];
      [v35 logMessage:v33 fromFile:lastPathComponent5 fromFunction:v38 fromLineNumber:572];

      v39 = PLLogCommon();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v58 = v33;
        _os_log_debug_impl(&dword_21A4C6000, v39, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_43;
    }
  }

LABEL_51:
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v40 = objc_opt_class();
    v47 = MEMORY[0x277D85DD0];
    v48 = 3221225472;
    v49 = __58__PLMav5BasebandHardwareMessage_logPeripheralsWithLogger___block_invoke_535;
    v50 = &__block_descriptor_40_e5_v8__0lu32l8;
    v51 = v40;
    if (qword_2811F7CB8 != -1)
    {
      dispatch_once(&qword_2811F7CB8, &v47);
    }

    if (byte_2811F7BEF == 1)
    {
      v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded BB HW Peripherals", v47, v48, v49, v50, v51];
      v42 = MEMORY[0x277D3F178];
      v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      lastPathComponent6 = [v43 lastPathComponent];
      v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logPeripheralsWithLogger:]"];
      [v42 logMessage:v41 fromFile:lastPathComponent6 fromFunction:v45 fromLineNumber:578];

      v46 = PLLogCommon();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v58 = v41;
        _os_log_debug_impl(&dword_21A4C6000, v46, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

void *__58__PLMav5BasebandHardwareMessage_logPeripheralsWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BEA = result;
  return result;
}

void *__58__PLMav5BasebandHardwareMessage_logPeripheralsWithLogger___block_invoke_505(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BEB = result;
  return result;
}

void *__58__PLMav5BasebandHardwareMessage_logPeripheralsWithLogger___block_invoke_511(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BEC = result;
  return result;
}

void *__58__PLMav5BasebandHardwareMessage_logPeripheralsWithLogger___block_invoke_520(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BED = result;
  return result;
}

void *__58__PLMav5BasebandHardwareMessage_logPeripheralsWithLogger___block_invoke_529(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BEE = result;
  return result;
}

void *__58__PLMav5BasebandHardwareMessage_logPeripheralsWithLogger___block_invoke_535(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BEF = result;
  return result;
}

- (void)logRFWithLogger2:(id)logger2
{
  v72 = *MEMORY[0x277D85DE8];
  logger2Copy = logger2;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __50__PLMav5BasebandHardwareMessage_logRFWithLogger2___block_invoke;
    v69[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v69[4] = v5;
    if (qword_2811F7CC0 != -1)
    {
      dispatch_once(&qword_2811F7CC0, v69);
    }

    if (byte_2811F7BF0 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLMav5BasebandHardwareMessage logRFWithLogger2:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logRFWithLogger2:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:584];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v71 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v61 = logger2Copy;
  v12 = objc_alloc_init(PLBBMavLogMsg);
  agent = [(PLBasebandMessage *)self agent];
  [(PLBasebandMessage *)v12 setAgent:agent];

  [(PLBBMavLogMsg *)v12 setError:&stru_282B650A0];
  seqNum = [(PLBasebandMessage *)self seqNum];
  date = [(PLBasebandMessage *)self date];
  [(PLBasebandMessage *)self timeCal];
  [(PLBBMavLogMsg *)v12 setHeaderWithSeqNum:seqNum andDate:date andTimeCal:?];

  if ([(PLMav5BasebandHardwareMessage *)self rx]&& [(PLMav5BasebandHardwareMessage *)self rx_sqa]&& [(PLMav5BasebandHardwareMessage *)self tx])
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 80;
    v20 = 220;
    v21 = v61;
    while (1)
    {
      v22 = [(PLMav5BasebandHardwareMessage *)self indexToRAT:v18];
      if ([v22 length])
      {
        [(PLBBMavLogMsg *)v12 setRat:v22];
        v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLMav4BasebandHardwareMessage logDuration](self, "logDuration")}];
        [(PLBBMavLogMsg *)v12 setLogDuration:v23];

        v24 = [MEMORY[0x277CCABB0] numberWithInt:v18];
        [(PLBBMavLogMsg *)v12 setRadioTech:v24];

        v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{(-[PLMav4BasebandHardwareMessage header](self, "header")[16] - -[PLMav4BasebandHardwareMessage header](self, "header")[12])}];
        [(PLBBMavLogMsg *)v12 setBbHwLogDurationInTicks:v25];

        v64 = v16;
        v26 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav5BasebandHardwareMessage *)self rx]+ v16 ofSize:4];
        [(PLBBMavLogMsg *)v12 setRssiModeCount:v26];

        v27 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav5BasebandHardwareMessage *)self rx]+ v19 ofSize:13];
        [(PLBBMavLogMsg *)v12 setRx0RssiPowerHist:v27];

        v28 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav5BasebandHardwareMessage *)self rx]+ v19 + 260 ofSize:13];
        [(PLBBMavLogMsg *)v12 setRx1RssiPowerHist:v28];

        v29 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav5BasebandHardwareMessage *)self rx_sqa]+ v20 - 220 ofSize:11];
        [(PLBBMavLogMsg *)v12 setRx0SQAPowerHist:v29];

        v30 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav5BasebandHardwareMessage *)self rx_sqa]+ v20 ofSize:11];
        [(PLBBMavLogMsg *)v12 setRx1SQAPowerHist:v30];

        v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLMav4BasebandHardwareMessage logDuration](self, "logDuration")}];
        [(PLBBMavLogMsg *)v12 setLogDuration:v31];

        v65 = v22;
        v21 = v61;
        [(PLBBMavLogMsg *)v12 setRat:v22];
        v32 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav5BasebandHardwareMessage *)self tx]+ v17 ofSize:12];
        [(PLBBMavLogMsg *)v12 setTxPowerHist:v32];

        protocolStateHistDict = [v61 protocolStateHistDict];
        v34 = [MEMORY[0x277CCABB0] numberWithInt:v18];
        v35 = [protocolStateHistDict objectForKey:v34];

        if (v35)
        {
          [(PLBBMavLogMsg *)v12 setProtocolStateHist:v35];
        }

        v62 = v35;
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v36 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __50__PLMav5BasebandHardwareMessage_logRFWithLogger2___block_invoke_556;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v36;
          if (qword_2811F7CD8 != -1)
          {
            dispatch_once(&qword_2811F7CD8, block);
          }

          if (byte_2811F7BF3 == 1)
          {
            v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded BB HW RF %@", v65];
            v60 = MEMORY[0x277D3F178];
            v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
            lastPathComponent2 = [v38 lastPathComponent];
            v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logRFWithLogger2:]"];
            [v60 logMessage:v37 fromFile:lastPathComponent2 fromFunction:v40 fromLineNumber:654];

            v41 = v37;
            v42 = PLLogCommon();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v71 = v41;
              _os_log_debug_impl(&dword_21A4C6000, v42, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v21 = v61;
          }
        }

        logEventBackwardGrpEntriesBBMavHwOtherPerRAT = [(PLBBMavLogMsg *)v12 logEventBackwardGrpEntriesBBMavHwOtherPerRAT];
        v44 = [logEventBackwardGrpEntriesBBMavHwOtherPerRAT objectForKey:@"entry"];
        v45 = [logEventBackwardGrpEntriesBBMavHwOtherPerRAT objectForKey:@"name"];
        [v21 addToGroupPLBBMavHwEntry:v44 withEntryKey:v45];
      }

      else
      {
        if (![MEMORY[0x277D3F180] debugEnabled])
        {
          goto LABEL_31;
        }

        v47 = objc_opt_class();
        v67[0] = MEMORY[0x277D85DD0];
        v67[1] = 3221225472;
        v67[2] = __50__PLMav5BasebandHardwareMessage_logRFWithLogger2___block_invoke_550;
        v67[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v67[4] = v47;
        if (qword_2811F7CD0 != -1)
        {
          dispatch_once(&qword_2811F7CD0, v67);
        }

        if (byte_2811F7BF2 != 1)
        {
          goto LABEL_31;
        }

        v64 = v16;
        v65 = v22;
        v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: RAT unknown, cannot record"];
        v63 = MEMORY[0x277D3F178];
        v49 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
        lastPathComponent3 = [v49 lastPathComponent];
        v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logRFWithLogger2:]"];
        v52 = v63;
        v62 = v48;
        [v52 logMessage:v48 fromFile:lastPathComponent3 fromFunction:v51 fromLineNumber:609];

        logEventBackwardGrpEntriesBBMavHwOtherPerRAT = PLLogCommon();
        if (os_log_type_enabled(logEventBackwardGrpEntriesBBMavHwOtherPerRAT, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v46 = v62;
          v71 = v62;
          _os_log_debug_impl(&dword_21A4C6000, logEventBackwardGrpEntriesBBMavHwOtherPerRAT, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          v21 = v61;
          v16 = v64;
          goto LABEL_24;
        }

        v21 = v61;
      }

      v46 = v62;
      v16 = v64;
LABEL_24:

      v22 = v65;
LABEL_31:

      ++v18;
      v19 += 52;
      v17 += 48;
      v20 += 44;
      v16 += 16;
      if (v19 == 340)
      {
        goto LABEL_42;
      }
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v53 = objc_opt_class();
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __50__PLMav5BasebandHardwareMessage_logRFWithLogger2___block_invoke_544;
    v68[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v68[4] = v53;
    if (qword_2811F7CC8 != -1)
    {
      dispatch_once(&qword_2811F7CC8, v68);
    }

    if (byte_2811F7BF1 == 1)
    {
      v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: BB HW RF <RAT> is expected but not present"];
      v55 = MEMORY[0x277D3F178];
      v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      lastPathComponent4 = [v56 lastPathComponent];
      v58 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logRFWithLogger2:]"];
      [v55 logMessage:v54 fromFile:lastPathComponent4 fromFunction:v58 fromLineNumber:598];

      v59 = PLLogCommon();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v71 = v54;
        _os_log_debug_impl(&dword_21A4C6000, v59, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [(PLBBMavLogMsg *)v12 appendToError:@"Error: BB HW RF <RAT> is expected but not present"];
  [(PLBBMavLogMsg *)v12 logEventBackwardMavBBHwOtherPerRAT];
  v21 = v61;
LABEL_42:
}

void *__50__PLMav5BasebandHardwareMessage_logRFWithLogger2___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BF0 = result;
  return result;
}

void *__50__PLMav5BasebandHardwareMessage_logRFWithLogger2___block_invoke_544(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BF1 = result;
  return result;
}

void *__50__PLMav5BasebandHardwareMessage_logRFWithLogger2___block_invoke_550(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BF2 = result;
  return result;
}

void *__50__PLMav5BasebandHardwareMessage_logRFWithLogger2___block_invoke_556(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BF3 = result;
  return result;
}

- (void)logProtocolWithLogger:(id)logger withCount:(unsigned int)count
{
  v62 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  v7 = 0x277D3F000uLL;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __65__PLMav5BasebandHardwareMessage_logProtocolWithLogger_withCount___block_invoke;
    v59[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v59[4] = v8;
    if (qword_2811F7CE0 != -1)
    {
      dispatch_once(&qword_2811F7CE0, v59);
    }

    if (byte_2811F7BF4 == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLMav5BasebandHardwareMessage logProtocolWithLogger:withCount:]"];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logProtocolWithLogger:withCount:]"];
      [v10 logMessage:v9 fromFile:lastPathComponent fromFunction:v13 fromLineNumber:819];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v61 = v9;
        _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v51 = loggerCopy;
  v50 = objc_opt_new();
  if ([(PLMav5BasebandHardwareMessage *)self protocol])
  {
    if (count)
    {
      v53 = 0;
      v15 = 0;
      v16 = 0;
      countCopy = count;
      v17 = 0x277CCA000uLL;
      do
      {
        v18 = v16;
        v52 = v15;
        v54 = [(PLMav5BasebandHardwareMessage *)self indexToRAT:v15];
        string = [MEMORY[0x277CCAB68] string];
        v16 = objc_opt_new();

        if ([(PLMav5BasebandHardwareMessage *)self protocol])
        {
          v19 = -16;
          v20 = v53;
          v21 = off_27825E5D8;
          do
          {
            if ([(PLMav5BasebandHardwareMessage *)self protocol][v20])
            {
              v22 = [(PLMav5BasebandHardwareMessage *)self protocol][v20];
              logDuration = [(PLMav4BasebandHardwareMessage *)self logDuration];
              if ((v19 + 16) <= 0xE)
              {
                [string appendString:*v21];
              }

              if ([*(v7 + 384) debugEnabled])
              {
                v24 = objc_opt_class();
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = __65__PLMav5BasebandHardwareMessage_logProtocolWithLogger_withCount___block_invoke_615;
                block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
                block[4] = v24;
                if (qword_2811F7CE8 != -1)
                {
                  dispatch_once(&qword_2811F7CE8, block);
                }

                if (byte_2811F7BF5 == 1)
                {
                  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Protocol State: RAT [%@], Log [%@], percent [%f]= ", v54, string, ((v22 * 100.0) / logDuration)];
                  v26 = MEMORY[0x277D3F178];
                  v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
                  lastPathComponent2 = [v27 lastPathComponent];
                  v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logProtocolWithLogger:withCount:]"];
                  [v26 logMessage:v25 fromFile:lastPathComponent2 fromFunction:v29 fromLineNumber:859];

                  v30 = PLLogCommon();
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v61 = v25;
                    _os_log_debug_impl(&dword_21A4C6000, v30, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                  }

                  v7 = 0x277D3F000;
                  v17 = 0x277CCA000uLL;
                }
              }

              v31 = [*(v17 + 2992) numberWithUnsignedInt:{-[PLMav5BasebandHardwareMessage protocol](self, "protocol")[v20]}];
              [v16 addObject:v31];
            }

            else
            {
              [v16 addObject:&unk_282C11928];
            }

            ++v21;
            v20 += 4;
          }

          while (!__CFADD__(v19++, 1));
        }

        v33 = [*(v17 + 2992) numberWithInt:v52];
        [v51 setRadioTech:v33];

        v34 = [*(v17 + 2992) numberWithInt:v52];
        [v50 setObject:v16 forKey:v34];

        if ([*(v7 + 384) debugEnabled])
        {
          v35 = objc_opt_class();
          v57[0] = MEMORY[0x277D85DD0];
          v57[1] = 3221225472;
          v57[2] = __65__PLMav5BasebandHardwareMessage_logProtocolWithLogger_withCount___block_invoke_622;
          v57[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v57[4] = v35;
          if (qword_2811F7CF0 != -1)
          {
            dispatch_once(&qword_2811F7CF0, v57);
          }

          if (byte_2811F7BF6 == 1)
          {
            v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded BB HW Protocol %@", v54];
            v37 = MEMORY[0x277D3F178];
            v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
            lastPathComponent3 = [v38 lastPathComponent];
            v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logProtocolWithLogger:withCount:]"];
            [v37 logMessage:v36 fromFile:lastPathComponent3 fromFunction:v40 fromLineNumber:873];

            v41 = PLLogCommon();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v61 = v36;
              _os_log_debug_impl(&dword_21A4C6000, v41, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v7 = 0x277D3F000;
            v17 = 0x277CCA000;
          }
        }

        v15 = v52 + 1;
        v53 += 64;
      }

      while (v52 + 1 != countCopy);
    }
  }

  else
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v42 = objc_opt_class();
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __65__PLMav5BasebandHardwareMessage_logProtocolWithLogger_withCount___block_invoke_628;
      v56[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v56[4] = v42;
      if (qword_2811F7CF8 != -1)
      {
        dispatch_once(&qword_2811F7CF8, v56);
      }

      if (byte_2811F7BF7 == 1)
      {
        v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: BB HW Protocol is expected but not present"];
        v44 = MEMORY[0x277D3F178];
        v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
        lastPathComponent4 = [v45 lastPathComponent];
        v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logProtocolWithLogger:withCount:]"];
        [v44 logMessage:v43 fromFile:lastPathComponent4 fromFunction:v47 fromLineNumber:879];

        v48 = PLLogCommon();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v61 = v43;
          _os_log_debug_impl(&dword_21A4C6000, v48, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [v51 appendToError:@"Error: BB HW Protocol is expected but not present. "];
    [v51 logEventBackwardMavBBHwOtherPerRAT];
  }

  [v51 setProtocolStateHistDict:v50];
}

void *__65__PLMav5BasebandHardwareMessage_logProtocolWithLogger_withCount___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BF4 = result;
  return result;
}

void *__65__PLMav5BasebandHardwareMessage_logProtocolWithLogger_withCount___block_invoke_615(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BF5 = result;
  return result;
}

void *__65__PLMav5BasebandHardwareMessage_logProtocolWithLogger_withCount___block_invoke_622(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BF6 = result;
  return result;
}

void *__65__PLMav5BasebandHardwareMessage_logProtocolWithLogger_withCount___block_invoke_628(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BF7 = result;
  return result;
}

- (void)logClockWithLogger:(id)logger
{
  v45 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__PLMav5BasebandHardwareMessage_logClockWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F7D00 != -1)
    {
      dispatch_once(&qword_2811F7D00, block);
    }

    if (byte_2811F7BF8 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLMav5BasebandHardwareMessage logClockWithLogger:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logClockWithLogger:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:889];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v44 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = loggerCopy;
  if ([(PLMav5BasebandHardwareMessage *)self clock])
  {
    for (i = 0; i != 114; ++i)
    {
      if ([(PLMav5BasebandHardwareMessage *)self clock][4 * i])
      {
        v14 = [(PLMav5BasebandHardwareMessage *)self clock][4 * i] * 100.0;
        v15 = v14 / [(PLMav4BasebandHardwareMessage *)self logDuration];
        v16 = v15;
        if (v16 > 0.01)
        {
          v17 = apps_clock_names_0[i];
          v18 = [MEMORY[0x277CCAB68] stringWithFormat:@"%.02f%%", *&v16];
          [v12 addPairWithKey:v17 andWithVal:v18];
        }
      }
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v19 = objc_opt_class();
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __52__PLMav5BasebandHardwareMessage_logClockWithLogger___block_invoke_640;
      v41[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v41[4] = v19;
      if (qword_2811F7D08 != -1)
      {
        dispatch_once(&qword_2811F7D08, v41);
      }

      if (byte_2811F7BF9 == 1)
      {
        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded BB HW APPS Clock"];
        v21 = MEMORY[0x277D3F178];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
        lastPathComponent2 = [v22 lastPathComponent];
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logClockWithLogger:]"];
        [v21 logMessage:v20 fromFile:lastPathComponent2 fromFunction:v24 fromLineNumber:912];

        v25 = PLLogCommon();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v44 = v20;
          _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v26 = mpss_clock_names;
    for (j = 456; j != 836; j += 4)
    {
      if ([(PLMav5BasebandHardwareMessage *)self clock][j])
      {
        v28 = [(PLMav5BasebandHardwareMessage *)self clock][j] * 100.0;
        v29 = v28 / [(PLMav4BasebandHardwareMessage *)self logDuration];
        v30 = v29;
        if (v30 > 0.01)
        {
          v31 = *v26;
          v32 = [MEMORY[0x277CCAB68] stringWithFormat:@"%.02f%%", *&v30];
          [v12 addPairWithKey:v31 andWithVal:v32];
        }
      }

      ++v26;
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v33 = objc_opt_class();
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __52__PLMav5BasebandHardwareMessage_logClockWithLogger___block_invoke_646;
      v40[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v40[4] = v33;
      if (qword_2811F7D10 != -1)
      {
        dispatch_once(&qword_2811F7D10, v40);
      }

      if (byte_2811F7BFA == 1)
      {
        v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded BB HW MPSS Clock"];
        v35 = MEMORY[0x277D3F178];
        v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
        lastPathComponent3 = [v36 lastPathComponent];
        v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logClockWithLogger:]"];
        [v35 logMessage:v34 fromFile:lastPathComponent3 fromFunction:v38 fromLineNumber:932];

        v39 = PLLogCommon();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v44 = v34;
          _os_log_debug_impl(&dword_21A4C6000, v39, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [v12 setType:@"BB HW APPS Clock"];
  }
}

void *__52__PLMav5BasebandHardwareMessage_logClockWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BF8 = result;
  return result;
}

void *__52__PLMav5BasebandHardwareMessage_logClockWithLogger___block_invoke_640(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BF9 = result;
  return result;
}

void *__52__PLMav5BasebandHardwareMessage_logClockWithLogger___block_invoke_646(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BFA = result;
  return result;
}

- (void)formatDurationandCount:(unsigned int)count withCount:(unsigned int)withCount inString:(id)string
{
  v5 = *&withCount;
  v7 = count * 100.0;
  stringCopy = string;
  logDuration = [(PLMav4BasebandHardwareMessage *)self logDuration];
  v9 = 0.0;
  if (COERCE_INT(fabs(v7 / logDuration)) < 2139095040)
  {
    v9 = (v7 / logDuration);
  }

  [stringCopy appendFormat:@"[%.02f%%, %d];", *&v9, v5];
}

- (id)indexToRAT:(unint64_t)t
{
  if (t > 4)
  {
    v4 = &stru_282B650A0;
  }

  else
  {
    v4 = *off_27825E650[t];
  }

  return v4;
}

@end