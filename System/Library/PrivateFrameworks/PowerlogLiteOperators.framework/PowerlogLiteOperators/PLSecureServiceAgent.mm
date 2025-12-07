@interface PLSecureServiceAgent
+ (id)entryEventPointDefinitionConnectionState;
+ (id)entryEventPointDefinitionSummary;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (PLSecureServiceAgent)init;
- (void)initOperatorDependancies;
- (void)logEventPointConnectionState:(id)state withEvent:(int64_t)event;
- (void)logEventPointPeriodicReport:(id)report;
@end

@implementation PLSecureServiceAgent

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLSecureServiceAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"ConnectionState";
  v2 = +[PLSecureServiceAgent entryEventPointDefinitionConnectionState];
  v6[1] = @"Summary";
  v7[0] = v2;
  v3 = +[PLSecureServiceAgent entryEventPointDefinitionSummary];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

+ (id)entryEventPointDefinitionConnectionState
{
  v19[2] = *MEMORY[0x277D85DE8];
  v18[0] = *MEMORY[0x277D3F4E8];
  v16 = *MEMORY[0x277D3F568];
  v17 = &unk_282C1BF28;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v19[0] = v13;
  v18[1] = *MEMORY[0x277D3F540];
  v14[0] = @"keyId";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v15[0] = commonTypeDict_IntegerFormat;
  v14[1] = @"UUID";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v15[1] = commonTypeDict_StringFormat;
  v14[2] = @"EventType";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v15[2] = commonTypeDict_IntegerFormat2;
  v14[3] = @"Confidence";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v15[3] = commonTypeDict_IntegerFormat3;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];
  v19[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

  return v11;
}

+ (id)entryEventPointDefinitionSummary
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v12 = *MEMORY[0x277D3F568];
  v13 = &unk_282C1BF28;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v15[0] = v2;
  v14[1] = *MEMORY[0x277D3F540];
  v10[0] = @"ActiveConnections";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v10[1] = @"ConnectionCount";
  v11[0] = commonTypeDict_IntegerFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v11[1] = commonTypeDict_IntegerFormat2;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v15[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  return v8;
}

- (PLSecureServiceAgent)init
{
  v18 = *MEMORY[0x277D85DE8];
  if (+[PLSecureServiceAgent isSecureServiceSupported])
  {
    v15.receiver = self;
    v15.super_class = PLSecureServiceAgent;
    v3 = [(PLAgent *)&v15 init];
    v4 = v3;
    if (v3)
    {
      v3->_numBTConn = 0;
      v3->_periodicReportCount = 0;
      v3->_prevActiveKeys = -1;
      v3->_numEntries = 0;
      v3->_previousEvent = -1;
      previousHash = v3->_previousHash;
      v3->_previousHash = 0;
    }

    else
    {
      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_13;
      }

      v7 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __28__PLSecureServiceAgent_init__block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v7;
      if (qword_2811F4320 != -1)
      {
        dispatch_once(&qword_2811F4320, block);
      }

      if (_MergedGlobals_1_20 != 1)
      {
        goto LABEL_13;
      }

      previousHash = [MEMORY[0x277CCACA8] stringWithFormat:@"PLSecureServiceAgent: failed to init"];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSecureServiceAgent.m"];
      lastPathComponent = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSecureServiceAgent init]"];
      [v8 logMessage:previousHash fromFile:lastPathComponent fromFunction:v11 fromLineNumber:130];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v17 = previousHash;
        _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

LABEL_13:
    self = v4;
    selfCopy = self;
    goto LABEL_14;
  }

  selfCopy = 0;
LABEL_14:

  return selfCopy;
}

void *__28__PLSecureServiceAgent_init__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_20 = result;
  return result;
}

- (void)initOperatorDependancies
{
  [(PLOperator *)self defaultDoubleForKey:@"EntriesPerHourTimer"];
  v4 = v3;
  v5 = objc_alloc(MEMORY[0x277D3F250]);
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v4];
  workQueue = [(PLOperator *)self workQueue];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __48__PLSecureServiceAgent_initOperatorDependancies__block_invoke;
  v25[3] = &unk_278259C40;
  v25[4] = self;
  v8 = [v5 initWithFireDate:v6 withInterval:1 withTolerance:0 repeats:workQueue withUserInfo:v25 withQueue:v4 withBlock:0.0];
  entriesPerHourTimer = self->_entriesPerHourTimer;
  self->_entriesPerHourTimer = v8;

  v10 = objc_alloc(MEMORY[0x277D3F270]);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __48__PLSecureServiceAgent_initOperatorDependancies__block_invoke_81;
  v24[3] = &unk_27825A1D8;
  v24[4] = self;
  v11 = [v10 initWithOperator:self withRegistration:&unk_282C17658 withBlock:v24];
  [(PLSecureServiceAgent *)self setDaemonLaunchListener:v11];

  v12 = objc_alloc(MEMORY[0x277D3F270]);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __48__PLSecureServiceAgent_initOperatorDependancies__block_invoke_94;
  v23[3] = &unk_27825A1D8;
  v23[4] = self;
  v13 = [v12 initWithOperator:self withRegistration:&unk_282C17680 withBlock:v23];
  [(PLSecureServiceAgent *)self setConnectionListener:v13];

  v14 = objc_alloc(MEMORY[0x277D3F270]);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __48__PLSecureServiceAgent_initOperatorDependancies__block_invoke_106;
  v22[3] = &unk_27825A1D8;
  v22[4] = self;
  v15 = [v14 initWithOperator:self withRegistration:&unk_282C176A8 withBlock:v22];
  [(PLSecureServiceAgent *)self setDisconnectionListener:v15];

  v16 = objc_alloc(MEMORY[0x277D3F270]);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __48__PLSecureServiceAgent_initOperatorDependancies__block_invoke_118;
  v21[3] = &unk_27825A1D8;
  v21[4] = self;
  v17 = [v16 initWithOperator:self withRegistration:&unk_282C176D0 withBlock:v21];
  [(PLSecureServiceAgent *)self setDeviceIntentListener:v17];

  v18 = objc_alloc(MEMORY[0x277D3F270]);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __48__PLSecureServiceAgent_initOperatorDependancies__block_invoke_130;
  v20[3] = &unk_27825A1D8;
  v20[4] = self;
  v19 = [v18 initWithOperator:self withRegistration:&unk_282C176F8 withBlock:v20];
  [(PLSecureServiceAgent *)self setPeriodicReportListener:v19];
}

void __48__PLSecureServiceAgent_initOperatorDependancies__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setNumEntries:0];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __48__PLSecureServiceAgent_initOperatorDependancies__block_invoke_2;
    v12 = &__block_descriptor_40_e5_v8__0lu32l8;
    v13 = v2;
    if (qword_2811F4328 != -1)
    {
      dispatch_once(&qword_2811F4328, &block);
    }

    if (byte_2811F4311 == 1)
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLSecureServiceAgent:: Timer Credit refreshed %lu", *(*(a1 + 32) + 120), block, v10, v11, v12, v13];
      v4 = MEMORY[0x277D3F178];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSecureServiceAgent.m"];
      v6 = [v5 lastPathComponent];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSecureServiceAgent initOperatorDependancies]_block_invoke"];
      [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:141];

      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v15 = v3;
        _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

void *__48__PLSecureServiceAgent_initOperatorDependancies__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4311 = result;
  return result;
}

void __48__PLSecureServiceAgent_initOperatorDependancies__block_invoke_81(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v9 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__PLSecureServiceAgent_initOperatorDependancies__block_invoke_2_82;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v9;
    if (qword_2811F4330 != -1)
    {
      dispatch_once(&qword_2811F4330, block);
    }

    if (byte_2811F4312 == 1)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLSecureServiceAgent:: Daemon Launch State =%@ for %@", v8, v7];
      v11 = MEMORY[0x277D3F178];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSecureServiceAgent.m"];
      v13 = [v12 lastPathComponent];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSecureServiceAgent initOperatorDependancies]_block_invoke"];
      [v11 logMessage:v10 fromFile:v13 fromFunction:v14 fromLineNumber:145];

      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v18 = v10;
        _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) logEventPointConnectionState:v8 withEvent:0];
}

void *__48__PLSecureServiceAgent_initOperatorDependancies__block_invoke_2_82(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4312 = result;
  return result;
}

void __48__PLSecureServiceAgent_initOperatorDependancies__block_invoke_94(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v9 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__PLSecureServiceAgent_initOperatorDependancies__block_invoke_2_95;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v9;
    if (qword_2811F4338 != -1)
    {
      dispatch_once(&qword_2811F4338, block);
    }

    if (byte_2811F4313 == 1)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLSecureServiceAgent:: Connection State=%@ for %@", v8, v7];
      v11 = MEMORY[0x277D3F178];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSecureServiceAgent.m"];
      v13 = [v12 lastPathComponent];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSecureServiceAgent initOperatorDependancies]_block_invoke"];
      [v11 logMessage:v10 fromFile:v13 fromFunction:v14 fromLineNumber:150];

      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v18 = v10;
        _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) logEventPointConnectionState:v8 withEvent:1];
}

void *__48__PLSecureServiceAgent_initOperatorDependancies__block_invoke_2_95(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4313 = result;
  return result;
}

void __48__PLSecureServiceAgent_initOperatorDependancies__block_invoke_106(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v9 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__PLSecureServiceAgent_initOperatorDependancies__block_invoke_2_107;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v9;
    if (qword_2811F4340 != -1)
    {
      dispatch_once(&qword_2811F4340, block);
    }

    if (byte_2811F4314 == 1)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLSecureServiceAgent:: Disconnection Connection State=%@ for %@", v8, v7];
      v11 = MEMORY[0x277D3F178];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSecureServiceAgent.m"];
      v13 = [v12 lastPathComponent];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSecureServiceAgent initOperatorDependancies]_block_invoke"];
      [v11 logMessage:v10 fromFile:v13 fromFunction:v14 fromLineNumber:155];

      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v18 = v10;
        _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) logEventPointConnectionState:v8 withEvent:2];
}

void *__48__PLSecureServiceAgent_initOperatorDependancies__block_invoke_2_107(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4314 = result;
  return result;
}

void __48__PLSecureServiceAgent_initOperatorDependancies__block_invoke_118(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v9 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__PLSecureServiceAgent_initOperatorDependancies__block_invoke_2_119;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v9;
    if (qword_2811F4348 != -1)
    {
      dispatch_once(&qword_2811F4348, block);
    }

    if (byte_2811F4315 == 1)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLSecureServiceAgent:: Device Intent State=%@ for %@", v8, v7];
      v11 = MEMORY[0x277D3F178];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSecureServiceAgent.m"];
      v13 = [v12 lastPathComponent];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSecureServiceAgent initOperatorDependancies]_block_invoke"];
      [v11 logMessage:v10 fromFile:v13 fromFunction:v14 fromLineNumber:160];

      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v18 = v10;
        _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) logEventPointConnectionState:v8 withEvent:3];
}

void *__48__PLSecureServiceAgent_initOperatorDependancies__block_invoke_2_119(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4315 = result;
  return result;
}

void __48__PLSecureServiceAgent_initOperatorDependancies__block_invoke_130(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v9 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__PLSecureServiceAgent_initOperatorDependancies__block_invoke_2_131;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v9;
    if (qword_2811F4350 != -1)
    {
      dispatch_once(&qword_2811F4350, block);
    }

    if (byte_2811F4316 == 1)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLSecureServiceAgent:: Periodic Report State=%@ for %@", v8, v7];
      v11 = MEMORY[0x277D3F178];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSecureServiceAgent.m"];
      v13 = [v12 lastPathComponent];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSecureServiceAgent initOperatorDependancies]_block_invoke"];
      [v11 logMessage:v10 fromFile:v13 fromFunction:v14 fromLineNumber:165];

      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v18 = v10;
        _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) logEventPointPeriodicReport:v8];
}

void *__48__PLSecureServiceAgent_initOperatorDependancies__block_invoke_2_131(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4316 = result;
  return result;
}

- (void)logEventPointConnectionState:(id)state withEvent:(int64_t)event
{
  v38 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v7 = stateCopy;
  if (stateCopy)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [stateCopy objectForKeyedSubscript:@"UUID"];
    v10 = [v8 stringWithFormat:@"%lu", objc_msgSend(v9, "hash")];

    if ((event - 1) <= 1 && [(NSString *)self->_previousHash isEqualToString:v10]&& self->_previousEvent == event)
    {
      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_29;
      }

      v11 = objc_opt_class();
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __63__PLSecureServiceAgent_logEventPointConnectionState_withEvent___block_invoke;
      v35[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v35[4] = v11;
      if (qword_2811F4358 != -1)
      {
        dispatch_once(&qword_2811F4358, v35);
      }

      if (byte_2811F4317 != 1)
      {
        goto LABEL_29;
      }

      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLSecureServiceAgent:: Too many connect/disconnects, avoiding duplicates=%@", v7];
      v13 = MEMORY[0x277D3F178];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSecureServiceAgent.m"];
      lastPathComponent = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSecureServiceAgent logEventPointConnectionState:withEvent:]"];
      [v13 logMessage:v12 fromFile:lastPathComponent fromFunction:v16 fromLineNumber:180];

      v17 = PLLogCommon();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
LABEL_23:

LABEL_29:
        goto LABEL_30;
      }

      *buf = 138412290;
      v37 = v12;
LABEL_32:
      _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      goto LABEL_23;
    }

    eventCopy = event;
    if (event != 1)
    {
      if (event != 2)
      {
        v19 = event == 3;
        if ((event - 1) >= 3)
        {
          [(PLSecureServiceAgent *)self numEntries];
          goto LABEL_26;
        }

LABEL_17:
        [(PLSecureServiceAgent *)self setNumEntries:[(PLSecureServiceAgent *)self numEntries]+ 1];
        if ([(PLSecureServiceAgent *)self numEntries]> 10)
        {
          if (![MEMORY[0x277D3F180] debugEnabled])
          {
            goto LABEL_29;
          }

          v20 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __63__PLSecureServiceAgent_logEventPointConnectionState_withEvent___block_invoke_145;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v20;
          if (qword_2811F4360 != -1)
          {
            dispatch_once(&qword_2811F4360, block);
          }

          if (byte_2811F4318 != 1)
          {
            goto LABEL_29;
          }

          v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLSecureServiceAgent:: Too many connect/disconnects=%@", v7];
          v21 = MEMORY[0x277D3F178];
          v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSecureServiceAgent.m"];
          lastPathComponent2 = [v22 lastPathComponent];
          v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSecureServiceAgent logEventPointConnectionState:withEvent:]"];
          [v21 logMessage:v12 fromFile:lastPathComponent2 fromFunction:v24 fromLineNumber:212];

          v17 = PLLogCommon();
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_23;
          }

          *buf = 138412290;
          v37 = v12;
          goto LABEL_32;
        }

LABEL_26:
        v25 = [(PLOperator *)PLSecureServiceAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"ConnectionState"];
        v26 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v25];
        [v26 setObject:v10 forKeyedSubscript:@"keyId"];
        v27 = [MEMORY[0x277CCABB0] numberWithInteger:event];
        [v26 setObject:v27 forKeyedSubscript:@"EventType"];

        v28 = [v7 objectForKeyedSubscript:@"PeerUUID"];
        [v26 setObject:v28 forKeyedSubscript:@"UUID"];

        if (v19)
        {
          v29 = MEMORY[0x277CCABB0];
          v30 = [v7 objectForKeyedSubscript:@"ConfidenceLevel"];
          [v30 floatValue];
          *&v32 = v31 * 100.0;
          v33 = [v29 numberWithFloat:v32];
          [v26 setObject:v33 forKeyedSubscript:@"Confidence"];
        }

        [(PLOperator *)self logEntry:v26];
        self->_previousEvent = event;
        objc_storeStrong(&self->_previousHash, v10);

        goto LABEL_29;
      }

      if ([(PLSecureServiceAgent *)self numBTConn]<= 0)
      {
LABEL_16:
        v19 = 0;
        goto LABEL_17;
      }

      eventCopy = -1;
    }

    [(PLSecureServiceAgent *)self setNumBTConn:[(PLSecureServiceAgent *)self numBTConn]+ eventCopy];
    goto LABEL_16;
  }

LABEL_30:
}

void *__63__PLSecureServiceAgent_logEventPointConnectionState_withEvent___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4317 = result;
  return result;
}

void *__63__PLSecureServiceAgent_logEventPointConnectionState_withEvent___block_invoke_145(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4318 = result;
  return result;
}

- (void)logEventPointPeriodicReport:(id)report
{
  reportCopy = report;
  if (reportCopy)
  {
    v13 = reportCopy;
    [(PLSecureServiceAgent *)self setPeriodicReportCount:[(PLSecureServiceAgent *)self periodicReportCount]+ 1];
    v5 = [v13 objectForKeyedSubscript:@"NumberOfActiveKeys"];
    integerValue = [v5 integerValue];
    if (integerValue == [(PLSecureServiceAgent *)self prevActiveKeys])
    {
      periodicReportCount = [(PLSecureServiceAgent *)self periodicReportCount];

      reportCopy = v13;
      if (periodicReportCount >= 4)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    v8 = [v13 objectForKeyedSubscript:@"NumberOfActiveKeys"];
    -[PLSecureServiceAgent setPrevActiveKeys:](self, "setPrevActiveKeys:", [v8 integerValue]);

    v9 = [(PLOperator *)PLSecureServiceAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"Summary"];
    v10 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v9];
    v11 = [v13 objectForKeyedSubscript:@"NumberOfActiveKeys"];
    [v10 setObject:v11 forKeyedSubscript:@"ActiveConnections"];

    v12 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PLSecureServiceAgent numBTConn](self, "numBTConn")}];
    [v10 setObject:v12 forKeyedSubscript:@"ConnectionCount"];

    [(PLOperator *)self logEntry:v10];
    reportCopy = v13;
  }

LABEL_7:
}

@end