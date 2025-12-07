@interface PLBasebandHardwareMessage
- (BOOL)parseData:(id)data;
- (PLBasebandHardwareMessage)initWithData:(id)data;
- (id)convertToObjectArray:(unsigned int *)array ofSize:(unsigned int)size;
- (id)convertToObjectArrayPercentage:(unsigned int *)percentage ofSize:(unsigned int)size;
- (id)convertUint16ArrayToNSArray:(unsigned __int16 *)array ofSize:(unsigned int)size;
- (id)convertUint32ArrayToNSArray:(unsigned int *)array ofSize:(unsigned int)size;
- (id)convertUint32ArrayToNSArray:(unsigned int *)array ofSize:(unsigned int)size andFill:(unsigned int)fill;
- (id)convertUint64ArrayToNSArray:(unint64_t *)array ofSize:(unsigned int)size;
- (id)convertUint8ArrayToNSArray:(char *)array ofSize:(unsigned int)size;
- (unsigned)sumHardwareStat:(unsigned int *)stat ofSize:(unsigned int)size;
- (void)formatArray:(unsigned int *)array ofSize:(unsigned int)size inString:(id)string inReverse:(BOOL)reverse;
- (void)formatArray:(unsigned int *)array ofSize:(unsigned int)size withMultiplier:(float)multiplier inString:(id)string inReverse:(BOOL)reverse;
- (void)logHeaderWithLogger:(id)logger;
- (void)logModemAppWithLogger:(id)logger;
- (void)logPeripheralsWithLogger:(id)logger;
- (void)logProcessorWithLogger:(id)logger;
- (void)logRFWithLogger2:(id)logger2;
- (void)logRawWithLogger:(id)logger;
- (void)logWithLogger:(id)logger;
@end

@implementation PLBasebandHardwareMessage

- (PLBasebandHardwareMessage)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = PLBasebandHardwareMessage;
  v5 = [(PLBasebandMessage *)&v9 initWithData:dataCopy];
  v6 = v5;
  if (!v5 || ([(PLBasebandHardwareMessage *)v5 setHeader:0], [(PLBasebandHardwareMessage *)v6 setSystem:0], [(PLBasebandHardwareMessage *)v6 setArmPerf:0], [(PLBasebandHardwareMessage *)v6 setMdsp:0], [(PLBasebandHardwareMessage *)v6 setMdm:0], [(PLBasebandHardwareMessage *)v6 setAdsp:0], [(PLBasebandHardwareMessage *)v6 setAdm:0], [(PLBasebandHardwareMessage *)v6 setGps:0], [(PLBasebandHardwareMessage *)v6 setUsb:0], [(PLBasebandHardwareMessage *)v6 setUart:0], [(PLBasebandHardwareMessage *)v6 setSpi:0], [(PLBasebandHardwareMessage *)v6 setRx:0], [(PLBasebandHardwareMessage *)v6 setTx:0], v7 = 0, [(PLBasebandHardwareMessage *)v6 parseData:dataCopy]))
  {
    v7 = v6;
  }

  return v7;
}

- (BOOL)parseData:(id)data
{
  v17 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  bytes = [dataCopy bytes];
  [(PLBasebandHardwareMessage *)self setHeader:bytes + 13];
  if ([(PLBasebandHardwareMessage *)self revision]<= 2)
  {
    v6 = bytes + 29;
    [(PLBasebandHardwareMessage *)self setLogDuration:([(PLBasebandHardwareMessage *)self header][12] - [(PLBasebandHardwareMessage *)self header][8])];
    if ([(PLBasebandHardwareMessage *)self level])
    {
      [(PLBasebandHardwareMessage *)self setSystem:bytes + 29];
      v6 = bytes + 49;
    }

    if ([(PLBasebandHardwareMessage *)self level]>= 4)
    {
      [(PLBasebandHardwareMessage *)self setArmPerf:v6];
      v6 += 40;
    }

    if ([(PLBasebandHardwareMessage *)self level]>= 3)
    {
      [(PLBasebandHardwareMessage *)self setMdsp:v6];
      [(PLBasebandHardwareMessage *)self setMdm:v6 + 60];
      [(PLBasebandHardwareMessage *)self setAdsp:v6 + 76];
      [(PLBasebandHardwareMessage *)self setAdm:v6 + 136];
      [(PLBasebandHardwareMessage *)self setGps:v6 + 152];
      [(PLBasebandHardwareMessage *)self setUsb:v6 + 168];
      [(PLBasebandHardwareMessage *)self setUart:v6 + 184];
      [(PLBasebandHardwareMessage *)self setSpi:v6 + 216];
      v6 += 232;
    }

    if ([(PLBasebandHardwareMessage *)self level]>= 6)
    {
      [(PLBasebandHardwareMessage *)self setRx:v6];
      [(PLBasebandHardwareMessage *)self setTx:v6 + 120];
      v6 += 168;
    }

    v7 = v6 - [dataCopy bytes];
    if (v7 <= [dataCopy length])
    {
      v9 = 1;
      goto LABEL_16;
    }

    v8 = PLLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 134218498;
      v12 = v6 - [dataCopy bytes];
      v13 = 2048;
      v14 = [dataCopy length];
      v15 = 2080;
      v16 = "[PLBasebandHardwareMessage parseData:]";
      _os_log_error_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_ERROR, "Expected data length %lu but got %lu in %s", &v11, 0x20u);
    }
  }

  v9 = 0;
LABEL_16:

  return v9;
}

- (void)logWithLogger:(id)logger
{
  v26 = *MEMORY[0x277D85DE8];
  [(PLBasebandHardwareMessage *)self logRawWithLogger:0];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__PLBasebandHardwareMessage_logWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v4;
    if (qword_2811F8038 != -1)
    {
      dispatch_once(&qword_2811F8038, block);
    }

    if (_MergedGlobals_114 == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBasebandHardwareMessage logWithLogger:]"];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandHardwareMessage.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandHardwareMessage logWithLogger:]"];
      [v6 logMessage:v5 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:154];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v25 = v5;
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

  [(PLBasebandHardwareMessage *)self logHeaderWithLogger:v11];
  [(PLBasebandHardwareMessage *)self logProcessorWithLogger:v11];
  [(PLBasebandHardwareMessage *)self logModemAppWithLogger:v11];
  [(PLBasebandHardwareMessage *)self logPeripheralsWithLogger:v11];
  [(PLBBMavLogMsg *)v11 addToGroupPLBBMav1HwOther];
  [(PLBasebandHardwareMessage *)self logRFWithLogger2:v11];
  [(PLBBMavLogMsg *)v11 logEventBackwardGrpEntriesBBMavHw];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v15 = objc_opt_class();
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __43__PLBasebandHardwareMessage_logWithLogger___block_invoke_375;
    v22[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v22[4] = v15;
    if (qword_2811F8040 != -1)
    {
      dispatch_once(&qword_2811F8040, v22);
    }

    if (byte_2811F8021 == 1)
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoding BB HW RF completed"];
      v17 = MEMORY[0x277D3F178];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandHardwareMessage.m"];
      lastPathComponent2 = [v18 lastPathComponent];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandHardwareMessage logWithLogger:]"];
      [v17 logMessage:v16 fromFile:lastPathComponent2 fromFunction:v20 fromLineNumber:175];

      v21 = PLLogCommon();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v25 = v16;
        _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

void *__43__PLBasebandHardwareMessage_logWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_114 = result;
  return result;
}

void *__43__PLBasebandHardwareMessage_logWithLogger___block_invoke_375(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8021 = result;
  return result;
}

- (void)logRawWithLogger:(id)logger
{
  v3.receiver = self;
  v3.super_class = PLBasebandHardwareMessage;
  [(PLBasebandMessage *)&v3 logWithLogger:logger];
}

- (void)logHeaderWithLogger:(id)logger
{
  v24 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __49__PLBasebandHardwareMessage_logHeaderWithLogger___block_invoke;
    v20 = &__block_descriptor_40_e5_v8__0lu32l8;
    v21 = v5;
    if (qword_2811F8048 != -1)
    {
      dispatch_once(&qword_2811F8048, &block);
    }

    if (byte_2811F8022 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBasebandHardwareMessage logHeaderWithLogger:]", block, v18, v19, v20, v21];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandHardwareMessage.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandHardwareMessage logHeaderWithLogger:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:186];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v23 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = MEMORY[0x277CCABB0];
  v13 = loggerCopy;
  v14 = [v12 numberWithUnsignedInt:{-[PLBasebandHardwareMessage logDuration](self, "logDuration")}];
  [v13 setBbHwLogDurationInTicks:v14];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLBasebandHardwareMessage level](self, "level")}];
  [v13 setBbHwStatsLevel:v15];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLBasebandHardwareMessage revision](self, "revision")}];
  [v13 setBbHwRev:v16];
}

void *__49__PLBasebandHardwareMessage_logHeaderWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8022 = result;
  return result;
}

- (void)logProcessorWithLogger:(id)logger
{
  v32 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__PLBasebandHardwareMessage_logProcessorWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F8050 != -1)
    {
      dispatch_once(&qword_2811F8050, block);
    }

    if (byte_2811F8023 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBasebandHardwareMessage logProcessorWithLogger:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandHardwareMessage.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandHardwareMessage logProcessorWithLogger:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:197];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v31 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = loggerCopy;
  if ([(PLBasebandHardwareMessage *)self system])
  {
    self->super.ticksInGoodState = [(PLBasebandHardwareMessage *)self system][16];
    v13 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBasebandHardwareMessage *)self system]+ 8 ofSize:3];
    [v12 setBbHwProcSystemState:v13];
LABEL_10:

    goto LABEL_18;
  }

  [v12 appendToError:@"System_State=<unknown>"];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v14 = objc_opt_class();
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __52__PLBasebandHardwareMessage_logProcessorWithLogger___block_invoke_387;
    v28[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v28[4] = v14;
    if (qword_2811F8058 != -1)
    {
      dispatch_once(&qword_2811F8058, v28);
    }

    if (byte_2811F8024 == 1)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"System_State=<unknown>"];
      v15 = MEMORY[0x277D3F178];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandHardwareMessage.m"];
      lastPathComponent2 = [v16 lastPathComponent];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandHardwareMessage logProcessorWithLogger:]"];
      [v15 logMessage:v13 fromFile:lastPathComponent2 fromFunction:v18 fromLineNumber:214];

      v19 = PLLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v31 = v13;
        _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_10;
    }
  }

LABEL_18:
  if ([(PLBasebandHardwareMessage *)self armPerf])
  {
    v20 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBasebandHardwareMessage *)self armPerf]+ 12 ofSize:7];
    [v12 setBbHwProcArmPerfState:v20];
LABEL_20:

    goto LABEL_28;
  }

  [v12 appendToError:@"ARM_Perf_Level=<unknown>"];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v21 = objc_opt_class();
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __52__PLBasebandHardwareMessage_logProcessorWithLogger___block_invoke_393;
    v27[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v27[4] = v21;
    if (qword_2811F8060 != -1)
    {
      dispatch_once(&qword_2811F8060, v27);
    }

    if (byte_2811F8025 == 1)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"ARM_Perf_Level=<unknown>"];
      v22 = MEMORY[0x277D3F178];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandHardwareMessage.m"];
      lastPathComponent3 = [v23 lastPathComponent];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandHardwareMessage logProcessorWithLogger:]"];
      [v22 logMessage:v20 fromFile:lastPathComponent3 fromFunction:v25 fromLineNumber:233];

      v26 = PLLogCommon();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v31 = v20;
        _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_20;
    }
  }

LABEL_28:
  [v12 setType:@"BB HW Log"];
}

void *__52__PLBasebandHardwareMessage_logProcessorWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8023 = result;
  return result;
}

void *__52__PLBasebandHardwareMessage_logProcessorWithLogger___block_invoke_387(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8024 = result;
  return result;
}

void *__52__PLBasebandHardwareMessage_logProcessorWithLogger___block_invoke_393(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8025 = result;
  return result;
}

- (void)logModemAppWithLogger:(id)logger
{
  v28 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __51__PLBasebandHardwareMessage_logModemAppWithLogger___block_invoke;
    v24 = &__block_descriptor_40_e5_v8__0lu32l8;
    v25 = v5;
    if (qword_2811F8068 != -1)
    {
      dispatch_once(&qword_2811F8068, &block);
    }

    if (byte_2811F8026 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBasebandHardwareMessage logModemAppWithLogger:]", block, v22, v23, v24, v25];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandHardwareMessage.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandHardwareMessage logModemAppWithLogger:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:242];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v27 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = loggerCopy;
  if ([(PLBasebandHardwareMessage *)self mdsp])
  {
    v13 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBasebandHardwareMessage *)self mdsp]+ 8 ofSize:2];
    [v12 setBbHwModemAppMdspState:v13];

    v14 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBasebandHardwareMessage *)self mdsp]+ 24 ofSize:2];
    [v12 setBbHwModemAppMdspClockState:v14];

    v15 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBasebandHardwareMessage *)self mdsp]+ 40 ofSize:5];
    [v12 setBbHwModemAppMdspSpeed:v15];
  }

  else
  {
    [v12 appendToError:@"MDSP=<unknown>"];
  }

  if ([(PLBasebandHardwareMessage *)self mdm])
  {
    v16 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBasebandHardwareMessage *)self mdm]+ 8 ofSize:2];
    [v12 setBbHwModemAppMdmState:v16];
  }

  else
  {
    [v12 appendToError:@"MDM=<unknown>"];
  }

  if ([(PLBasebandHardwareMessage *)self adsp])
  {
    v17 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBasebandHardwareMessage *)self adsp]+ 8 ofSize:2];
    [v12 setBbHwModemAppAdspState:v17];

    v18 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBasebandHardwareMessage *)self adsp]+ 24 ofSize:2];
    [v12 setBbHwModemAppAdspClockState:v18];

    v19 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBasebandHardwareMessage *)self adsp]+ 8 ofSize:2];
    [v12 setBbHwModemAppAdspSpeed:v19];
  }

  else
  {
    [v12 appendToError:@"ADSP_Speed=<unknown>"];
  }

  if ([(PLBasebandHardwareMessage *)self adm])
  {
    v20 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBasebandHardwareMessage *)self adm]+ 8 ofSize:2];
    [v12 setBbHwModemAppAdmState:v20];
  }

  else
  {
    [v12 appendToError:@"ADM=<unknown>"];
  }

  [v12 setType:@"BB HW Modem/App"];
}

void *__51__PLBasebandHardwareMessage_logModemAppWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8026 = result;
  return result;
}

- (void)logPeripheralsWithLogger:(id)logger
{
  v28 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__PLBasebandHardwareMessage_logPeripheralsWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F8070 != -1)
    {
      dispatch_once(&qword_2811F8070, block);
    }

    if (byte_2811F8027 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBasebandHardwareMessage logPeripheralsWithLogger:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandHardwareMessage.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandHardwareMessage logPeripheralsWithLogger:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:334];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v27 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = loggerCopy;
  if ([(PLBasebandHardwareMessage *)self gps])
  {
    v13 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBasebandHardwareMessage *)self gps]+ 8 ofSize:2];
    [v12 setBbHwPeripheralGPSState:v13];
  }

  else
  {
    [v12 appendToError:@"GPS=<unknown>"];
  }

  if ([(PLBasebandHardwareMessage *)self usb])
  {
    v14 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBasebandHardwareMessage *)self usb]+ 8 ofSize:2];
    [v12 setBbHwPeripheralUSBState:v14];
  }

  else
  {
    [v12 appendToError:@"USB=<unknown>"];
  }

  if ([(PLBasebandHardwareMessage *)self spi])
  {
    v15 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBasebandHardwareMessage *)self spi]+ 8 ofSize:2];
    [v12 setBbHwPeripheralSPIState:v15];
  }

  else
  {
    [v12 appendToError:@"SPI=<unknown>"];
  }

  if ([(PLBasebandHardwareMessage *)self uart])
  {
    v16 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBasebandHardwareMessage *)self uart]+ 24 ofSize:2];
    [v12 setBbHwPeripheralUARTState:v16];
  }

  else
  {
    [v12 appendToError:@"UART_Clock=<unknown>"];
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v17 = objc_opt_class();
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __54__PLBasebandHardwareMessage_logPeripheralsWithLogger___block_invoke_426;
    v24[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v24[4] = v17;
    if (qword_2811F8078 != -1)
    {
      dispatch_once(&qword_2811F8078, v24);
    }

    if (byte_2811F8028 == 1)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded BB HW Peripheral"];
      v19 = MEMORY[0x277D3F178];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandHardwareMessage.m"];
      lastPathComponent2 = [v20 lastPathComponent];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandHardwareMessage logPeripheralsWithLogger:]"];
      [v19 logMessage:v18 fromFile:lastPathComponent2 fromFunction:v22 fromLineNumber:404];

      v23 = PLLogCommon();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v27 = v18;
        _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

void *__54__PLBasebandHardwareMessage_logPeripheralsWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8027 = result;
  return result;
}

void *__54__PLBasebandHardwareMessage_logPeripheralsWithLogger___block_invoke_426(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8028 = result;
  return result;
}

- (void)logRFWithLogger2:(id)logger2
{
  v52 = *MEMORY[0x277D85DE8];
  logger2Copy = logger2;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__PLBasebandHardwareMessage_logRFWithLogger2___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F8080 != -1)
    {
      dispatch_once(&qword_2811F8080, block);
    }

    if (byte_2811F8029 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBasebandHardwareMessage logRFWithLogger2:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandHardwareMessage.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandHardwareMessage logRFWithLogger2:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:409];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf[0]) = 138412290;
        *(buf + 4) = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = logger2Copy;
  v13 = objc_alloc_init(PLBBMavLogMsg);
  agent = [(PLBasebandMessage *)self agent];
  [(PLBasebandMessage *)v13 setAgent:agent];

  [(PLBBMavLogMsg *)v13 setError:&stru_282B650A0];
  seqNum = [(PLBasebandMessage *)self seqNum];
  date = [(PLBasebandMessage *)self date];
  [(PLBasebandMessage *)self timeCal];
  [(PLBBMavLogMsg *)v13 setHeaderWithSeqNum:seqNum andDate:date andTimeCal:?];

  if ([(PLBasebandHardwareMessage *)self rx]&& [(PLBasebandHardwareMessage *)self tx])
  {
    buf[0] = *[(PLBasebandHardwareMessage *)self rx];
    v17 = [(PLBasebandHardwareMessage *)self sumHardwareStat:buf ofSize:4];
    v18 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:v17];
    [(PLBBMavLogMsg *)v13 setRxTicks:v18];

    v19 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBasebandHardwareMessage *)self rx] ofSize:4];
    [(PLBBMavLogMsg *)v13 setRssiModeCount:v19];

    v20 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBasebandHardwareMessage *)self rx]+ 16 ofSize:13];
    [(PLBBMavLogMsg *)v13 setRx0RssiPowerHist:v20];

    v21 = [(PLBasebandHardwareMessage *)self tx];
    v23 = *&v21->var0[4];
    v22 = *&v21->var0[8];
    buf[0] = *v21->var0;
    buf[1] = v23;
    buf[2] = v22;
    v24 = [(PLBasebandHardwareMessage *)self sumHardwareStat:buf ofSize:12];
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v24];
    [(PLBBMavLogMsg *)v13 setTxTicks:v25];

    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLBasebandHardwareMessage logDuration](self, "logDuration")}];
    [(PLBBMavLogMsg *)v13 setBbHwLogDurationInTicks:v26];

    v27 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBasebandHardwareMessage *)self tx] ofSize:12];
    [(PLBBMavLogMsg *)v13 setTxPowerHist1x:v27];

    v28 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLBasebandHardwareMessage *)self rx]+ 68 ofSize:12];
    [(PLBBMavLogMsg *)v13 setTxPowerHistEVDO:v28];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v29 = objc_opt_class();
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __46__PLBasebandHardwareMessage_logRFWithLogger2___block_invoke_438;
      v46[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v46[4] = v29;
      if (qword_2811F8090 != -1)
      {
        dispatch_once(&qword_2811F8090, v46);
      }

      if (byte_2811F802B == 1)
      {
        v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded Mav BB HW RF"];
        v31 = MEMORY[0x277D3F178];
        v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandHardwareMessage.m"];
        lastPathComponent2 = [v32 lastPathComponent];
        v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandHardwareMessage logRFWithLogger2:]"];
        [v31 logMessage:v30 fromFile:lastPathComponent2 fromFunction:v34 fromLineNumber:463];

        v35 = PLLogCommon();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          *v49 = 138412290;
          v50 = v30;
          _os_log_debug_impl(&dword_21A4C6000, v35, OS_LOG_TYPE_DEBUG, "%@", v49, 0xCu);
        }
      }
    }

    logEventBackwardGrpEntriesBBMav1HwOtherPerRAT = [(PLBBMavLogMsg *)v13 logEventBackwardGrpEntriesBBMav1HwOtherPerRAT];
    v37 = [logEventBackwardGrpEntriesBBMav1HwOtherPerRAT objectForKey:@"entry"];
    v38 = [logEventBackwardGrpEntriesBBMav1HwOtherPerRAT objectForKey:@"name"];
    [v12 addToGroupPLBBMavHwEntry:v37 withEntryKey:v38];
  }

  else
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v39 = objc_opt_class();
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __46__PLBasebandHardwareMessage_logRFWithLogger2___block_invoke_432;
      v47[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v47[4] = v39;
      if (qword_2811F8088 != -1)
      {
        dispatch_once(&qword_2811F8088, v47);
      }

      if (byte_2811F802A == 1)
      {
        v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: BB HW RF <RAT> is expected but not present"];
        v41 = MEMORY[0x277D3F178];
        v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandHardwareMessage.m"];
        lastPathComponent3 = [v42 lastPathComponent];
        v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandHardwareMessage logRFWithLogger2:]"];
        [v41 logMessage:v40 fromFile:lastPathComponent3 fromFunction:v44 fromLineNumber:432];

        v45 = PLLogCommon();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf[0]) = 138412290;
          *(buf + 4) = v40;
          _os_log_debug_impl(&dword_21A4C6000, v45, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [(PLBBMavLogMsg *)v13 appendToError:@"Error: BB HW RF <RAT> is expected but not present"];
    [(PLBBMavLogMsg *)v13 logEventBackwardMavBBHwOtherPerRAT];
  }
}

void *__46__PLBasebandHardwareMessage_logRFWithLogger2___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8029 = result;
  return result;
}

void *__46__PLBasebandHardwareMessage_logRFWithLogger2___block_invoke_432(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F802A = result;
  return result;
}

void *__46__PLBasebandHardwareMessage_logRFWithLogger2___block_invoke_438(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F802B = result;
  return result;
}

- (void)formatArray:(unsigned int *)array ofSize:(unsigned int)size inString:(id)string inReverse:(BOOL)reverse
{
  reverseCopy = reverse;
  v7 = *&size;
  stringCopy = string;
  *&v10 = 100.0 / [(PLBasebandHardwareMessage *)self logDuration];
  [(PLBasebandHardwareMessage *)self formatArray:array ofSize:v7 withMultiplier:stringCopy inString:reverseCopy inReverse:v10];
}

- (void)formatArray:(unsigned int *)array ofSize:(unsigned int)size withMultiplier:(float)multiplier inString:(id)string inReverse:(BOOL)reverse
{
  reverseCopy = reverse;
  multiplierCopy = multiplier;
  v9 = *&size;
  stringCopy = string;
  if ((LODWORD(multiplier) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    multiplierCopy = 0.0;
  }

  v13 = [(PLBasebandHardwareMessage *)self convertToObjectArray:array ofSize:v9];
  if (v13)
  {
    [stringCopy appendString:@"["];
    if ([v13 count])
    {
      v14 = 0;
      v15 = @"%];";
      do
      {
        if (v14)
        {
          [stringCopy appendString:{@", "}];
        }

        v16 = v14;
        if (reverseCopy)
        {
          v16 = [v13 count] + ~v14;
        }

        v17 = [v13 objectAtIndexedSubscript:v16];
        [v17 floatValue];
        v19 = multiplierCopy * v18;

        if (v19 >= 0.01)
        {
          [stringCopy appendFormat:@"%.02f", v19];
        }

        else
        {
          [stringCopy appendString:{@"0", v19}];
        }

        ++v14;
      }

      while (v14 < [v13 count]);
    }

    else
    {
      v15 = @"%];";
    }
  }

  else
  {
    v15 = @"[Array Length > FORMAT_ARRAY_MAX_LENGTH]";
  }

  [stringCopy appendString:v15];
}

- (id)convertUint8ArrayToNSArray:(char *)array ofSize:(unsigned int)size
{
  v30 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__PLBasebandHardwareMessage_convertUint8ArrayToNSArray_ofSize___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v6;
    if (qword_2811F8098 != -1)
    {
      dispatch_once(&qword_2811F8098, block);
    }

    if (byte_2811F802C == 1)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBasebandHardwareMessage convertUint8ArrayToNSArray:ofSize:]"];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandHardwareMessage.m"];
      lastPathComponent = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandHardwareMessage convertUint8ArrayToNSArray:ofSize:]"];
      [v8 logMessage:v7 fromFile:lastPathComponent fromFunction:v11 fromLineNumber:668];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v29 = v7;
        _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (array && size)
  {
    sizeCopy = size;
    do
    {
      v15 = *array++;
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v15];
      [v13 addObject:v16];

      --sizeCopy;
    }

    while (sizeCopy);
    v17 = v13;
  }

  else
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v18 = objc_opt_class();
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __63__PLBasebandHardwareMessage_convertUint8ArrayToNSArray_ofSize___block_invoke_469;
      v26[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v26[4] = v18;
      if (qword_2811F80A0 != -1)
      {
        dispatch_once(&qword_2811F80A0, v26);
      }

      if (byte_2811F802D == 1)
      {
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"bad input"];
        v20 = MEMORY[0x277D3F178];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandHardwareMessage.m"];
        lastPathComponent2 = [v21 lastPathComponent];
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandHardwareMessage convertUint8ArrayToNSArray:ofSize:]"];
        [v20 logMessage:v19 fromFile:lastPathComponent2 fromFunction:v23 fromLineNumber:672];

        v24 = PLLogCommon();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v29 = v19;
          _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v17 = MEMORY[0x277CBEBF8];
  }

  return v17;
}

void *__63__PLBasebandHardwareMessage_convertUint8ArrayToNSArray_ofSize___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F802C = result;
  return result;
}

void *__63__PLBasebandHardwareMessage_convertUint8ArrayToNSArray_ofSize___block_invoke_469(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F802D = result;
  return result;
}

- (id)convertUint16ArrayToNSArray:(unsigned __int16 *)array ofSize:(unsigned int)size
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (array && size)
  {
    sizeCopy = size;
    do
    {
      v8 = *array++;
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v8];
      [v6 addObject:v9];

      --sizeCopy;
    }

    while (sizeCopy);
    v10 = v6;
  }

  else
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v11 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __64__PLBasebandHardwareMessage_convertUint16ArrayToNSArray_ofSize___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v11;
      if (qword_2811F80A8 != -1)
      {
        dispatch_once(&qword_2811F80A8, block);
      }

      if (byte_2811F802E == 1)
      {
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"bad input"];
        v13 = MEMORY[0x277D3F178];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandHardwareMessage.m"];
        lastPathComponent = [v14 lastPathComponent];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandHardwareMessage convertUint16ArrayToNSArray:ofSize:]"];
        [v13 logMessage:v12 fromFile:lastPathComponent fromFunction:v16 fromLineNumber:689];

        v17 = PLLogCommon();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v21 = v12;
          _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v10 = MEMORY[0x277CBEBF8];
  }

  return v10;
}

void *__64__PLBasebandHardwareMessage_convertUint16ArrayToNSArray_ofSize___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F802E = result;
  return result;
}

- (id)convertUint32ArrayToNSArray:(unsigned int *)array ofSize:(unsigned int)size
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (array && size)
  {
    sizeCopy = size;
    do
    {
      v8 = *array++;
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
      [v6 addObject:v9];

      --sizeCopy;
    }

    while (sizeCopy);
    v10 = v6;
  }

  else
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v11 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __64__PLBasebandHardwareMessage_convertUint32ArrayToNSArray_ofSize___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v11;
      if (qword_2811F80B0 != -1)
      {
        dispatch_once(&qword_2811F80B0, block);
      }

      if (byte_2811F802F == 1)
      {
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"bad input"];
        v13 = MEMORY[0x277D3F178];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandHardwareMessage.m"];
        lastPathComponent = [v14 lastPathComponent];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandHardwareMessage convertUint32ArrayToNSArray:ofSize:]"];
        [v13 logMessage:v12 fromFile:lastPathComponent fromFunction:v16 fromLineNumber:706];

        v17 = PLLogCommon();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v21 = v12;
          _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v10 = MEMORY[0x277CBEBF8];
  }

  return v10;
}

void *__64__PLBasebandHardwareMessage_convertUint32ArrayToNSArray_ofSize___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F802F = result;
  return result;
}

- (id)convertUint64ArrayToNSArray:(unint64_t *)array ofSize:(unsigned int)size
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (array && size)
  {
    sizeCopy = size;
    do
    {
      v8 = *array++;
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v8];
      [v6 addObject:v9];

      --sizeCopy;
    }

    while (sizeCopy);
    v10 = v6;
  }

  else
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v11 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __64__PLBasebandHardwareMessage_convertUint64ArrayToNSArray_ofSize___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v11;
      if (qword_2811F80B8 != -1)
      {
        dispatch_once(&qword_2811F80B8, block);
      }

      if (byte_2811F8030 == 1)
      {
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"bad input"];
        v13 = MEMORY[0x277D3F178];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandHardwareMessage.m"];
        lastPathComponent = [v14 lastPathComponent];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandHardwareMessage convertUint64ArrayToNSArray:ofSize:]"];
        [v13 logMessage:v12 fromFile:lastPathComponent fromFunction:v16 fromLineNumber:723];

        v17 = PLLogCommon();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v21 = v12;
          _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v10 = MEMORY[0x277CBEBF8];
  }

  return v10;
}

void *__64__PLBasebandHardwareMessage_convertUint64ArrayToNSArray_ofSize___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F8030 = result;
  return result;
}

- (id)convertUint32ArrayToNSArray:(unsigned int *)array ofSize:(unsigned int)size andFill:(unsigned int)fill
{
  v6 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:array ofSize:*&size];
  v7 = [v6 mutableCopy];

  if (fill)
  {
    fillCopy = fill;
    do
    {
      [v7 addObject:&unk_282C13278];
      --fillCopy;
    }

    while (fillCopy);
  }

  return v7;
}

- (id)convertToObjectArrayPercentage:(unsigned int *)percentage ofSize:(unsigned int)size
{
  v4 = *&size;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = [(PLBasebandHardwareMessage *)self convertToObjectArray:percentage ofSize:v4];
  logDuration = [(PLBasebandHardwareMessage *)self logDuration];
  if ((100.0 / logDuration) == INFINITY)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = 100.0 / logDuration;
  }

  if ([v8 count])
  {
    v11 = 0;
    do
    {
      v12 = [v8 objectAtIndexedSubscript:v11];
      [v12 floatValue];
      v14 = v10 * v13;

      *&v15 = v14;
      v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
      [v7 addObject:v16];

      ++v11;
    }

    while (v11 < [v8 count]);
  }

  return v7;
}

- (id)convertToObjectArray:(unsigned int *)array ofSize:(unsigned int)size
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (size <= 0x18)
  {
    __memcpy_chk();
    if (size)
    {
      sizeCopy = size;
      v8 = &v12;
      do
      {
        v9 = *v8++;
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
        [v5 addObject:v10];

        --sizeCopy;
      }

      while (sizeCopy);
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unsigned)sumHardwareStat:(unsigned int *)stat ofSize:(unsigned int)size
{
  result = 0;
  if (size)
  {
    sizeCopy = size;
    do
    {
      v6 = *stat++;
      result += v6;
      --sizeCopy;
    }

    while (sizeCopy);
  }

  return result;
}

@end