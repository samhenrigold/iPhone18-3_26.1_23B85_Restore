@interface PLBBEurekaEventMsg
+ (id)bbEuEvMsgEventNotProcessed;
+ (id)bbEuEvMsgNameBBEurekaMsgLite;
+ (id)bbEuEvMsgNameCMCDMAExit;
+ (id)bbEuEvMsgNameCMCallEventConn;
+ (id)bbEuEvMsgNameCMCallEventConnV2;
+ (id)bbEuEvMsgNameCMCallEventEnd;
+ (id)bbEuEvMsgNameCMCallEventEndV2;
+ (id)bbEuEvMsgNameCMCallEventIncom;
+ (id)bbEuEvMsgNameCMCallEventOrig;
+ (id)bbEuEvMsgNameCMCallEventOrigV2;
+ (id)bbEuEvMsgNameGSML1State;
+ (id)bbEuEvMsgNameLTERRCState;
+ (id)bbEuEvMsgNameSDEventActionCode;
+ (id)bbEuEvMsgNameWCDMARRCState;
+ (id)bbEuEvMsgUTRANRRCState;
- (PLBBEurekaEventMsg)init;
- (void)addPairWithKey:(id)key andWithVal:(id)val;
- (void)appendToError:(id)error;
- (void)logEventCMCallEventConnWithId:(id)id andCallType:(id)type andSysMode:(id)mode;
- (void)logEventCMCallEventConnWithId:(id)id andCallType:(id)type andSysMode:(id)mode andClientId:(id)clientId;
- (void)logEventCMCallEventEndWithId:(id)id andNumCalls:(id)calls;
- (void)logEventCMCallEventEndWithId:(id)id andNumCalls:(id)calls andClientId:(id)clientId;
- (void)logEventCMCallEventOrigWithId:(id)id andCallType:(id)type andSrvType:(id)srvType;
- (void)logEventCMCallEventOrigWithId:(id)id andCallType:(id)type andSrvType:(id)srvType andClientId:(id)clientId;
- (void)logEventForwardBBEurekaEventMsgLite;
- (void)logEventForwardGSML1StateWith:(id)with;
- (void)logEventForwardLTERRCStateAs:(id)as;
- (void)logEventForwardSDEventActionCode;
- (void)logEventForwardUTRANRRCNextStateAs:(id)as andCurrStateAs:(id)stateAs andRateAs:(id)rateAs;
- (void)logEventForwardWCDMARRCPrevStateAs:(id)as andCurrState:(id)state andRate:(id)rate;
- (void)logEventNoneEventNotProcessed;
- (void)logEventPointCMExitCodeWithState:(id)state;
- (void)refreshBBEurekaEventMsgLite;
- (void)refreshEventNotProcessed;
- (void)refreshLTERRCState;
- (void)refreshSDEventActionCode;
- (void)refreshUTRANRRCState;
- (void)refreshWCDMARRCState;
- (void)sendAndLogPLEntry:(id)entry;
- (void)setError:(id)error;
- (void)setEventCode:(unsigned int)code;
- (void)setHeaderWithSeqNum:(id)num andDate:(id)date andTimeCal:(double)cal;
- (void)setPayload:(id)payload;
- (void)setSDEventActionCodeWith:(id)with andSDAction:(id)action andSDState:(id)state;
@end

@implementation PLBBEurekaEventMsg

- (PLBBEurekaEventMsg)init
{
  v11[7] = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = PLBBEurekaEventMsg;
  v2 = [(PLBBEurekaEventMsg *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CBEB38]);
    v11[0] = @"Validity";
    v11[1] = @"EventCode";
    v11[2] = @"Payload";
    v11[3] = @"Error";
    v11[4] = @"SeqNum";
    v11[5] = @"BBDate";
    v11[6] = @"TimeCal";
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:7];
    v5 = [v3 initWithObjects:&unk_282C15708 forKeys:v4];
    commonInfo = v2->_commonInfo;
    v2->_commonInfo = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    kvPairs = v2->_kvPairs;
    v2->_kvPairs = v7;

    v2->_inited = 1;
  }

  return v2;
}

- (void)setEventCode:(unsigned int)code
{
  v3 = *&code;
  v24 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__PLBBEurekaEventMsg_setEventCode___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F6248 != -1)
    {
      dispatch_once(&qword_2811F6248, block);
    }

    if (_MergedGlobals_1_49 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBEurekaEventMsg setEventCode:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaEventMsg.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaEventMsg setEventCode:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:85];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v23 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if (v3)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithInt:v3];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v13 = objc_opt_class();
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __35__PLBBEurekaEventMsg_setEventCode___block_invoke_47;
      v20[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v20[4] = v13;
      if (qword_2811F6250 != -1)
      {
        dispatch_once(&qword_2811F6250, v20);
      }

      if (byte_2811F6221 == 1)
      {
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"set event code with %d", v3];
        v15 = MEMORY[0x277D3F178];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaEventMsg.m"];
        lastPathComponent2 = [v16 lastPathComponent];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaEventMsg setEventCode:]"];
        [v15 logMessage:v14 fromFile:lastPathComponent2 fromFunction:v18 fromLineNumber:93];

        v19 = PLLogCommon();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v23 = v14;
          _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [(NSMutableDictionary *)self->_commonInfo setValue:v12 forKey:@"EventCode"];
  }
}

void *__35__PLBBEurekaEventMsg_setEventCode___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_49 = result;
  return result;
}

void *__35__PLBBEurekaEventMsg_setEventCode___block_invoke_47(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6221 = result;
  return result;
}

- (void)setPayload:(id)payload
{
  v36 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__PLBBEurekaEventMsg_setPayload___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F6258 != -1)
    {
      dispatch_once(&qword_2811F6258, block);
    }

    if (byte_2811F6222 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBEurekaEventMsg setPayload:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaEventMsg.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaEventMsg setPayload:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:102];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v35 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  debugEnabled = [MEMORY[0x277D3F180] debugEnabled];
  if (payloadCopy)
  {
    if (debugEnabled)
    {
      v13 = objc_opt_class();
      v27 = MEMORY[0x277D85DD0];
      v28 = 3221225472;
      v29 = __33__PLBBEurekaEventMsg_setPayload___block_invoke_59;
      v30 = &__block_descriptor_40_e5_v8__0lu32l8;
      v31 = v13;
      if (qword_2811F6268 != -1)
      {
        dispatch_once(&qword_2811F6268, &v27);
      }

      if (byte_2811F6224 == 1)
      {
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"set payload with with %@", payloadCopy, v27, v28, v29, v30, v31];
        v15 = MEMORY[0x277D3F178];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaEventMsg.m"];
        lastPathComponent2 = [v16 lastPathComponent];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaEventMsg setPayload:]"];
        [v15 logMessage:v14 fromFile:lastPathComponent2 fromFunction:v18 fromLineNumber:107];

        v19 = PLLogCommon();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v35 = v14;
          _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [(NSMutableDictionary *)self->_commonInfo setValue:payloadCopy forKey:@"Payload"];
  }

  else if (debugEnabled)
  {
    v20 = objc_opt_class();
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __33__PLBBEurekaEventMsg_setPayload___block_invoke_53;
    v32[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v32[4] = v20;
    if (qword_2811F6260 != -1)
    {
      dispatch_once(&qword_2811F6260, v32);
    }

    if (byte_2811F6223 == 1)
    {
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"bad payload"];
      v22 = MEMORY[0x277D3F178];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaEventMsg.m"];
      lastPathComponent3 = [v23 lastPathComponent];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaEventMsg setPayload:]"];
      [v22 logMessage:v21 fromFile:lastPathComponent3 fromFunction:v25 fromLineNumber:104];

      v26 = PLLogCommon();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v35 = v21;
        _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

void *__33__PLBBEurekaEventMsg_setPayload___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6222 = result;
  return result;
}

void *__33__PLBBEurekaEventMsg_setPayload___block_invoke_53(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6223 = result;
  return result;
}

void *__33__PLBBEurekaEventMsg_setPayload___block_invoke_59(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6224 = result;
  return result;
}

- (void)setError:(id)error
{
  v19 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __31__PLBBEurekaEventMsg_setError___block_invoke;
    v15 = &__block_descriptor_40_e5_v8__0lu32l8;
    v16 = v5;
    if (qword_2811F6270 != -1)
    {
      dispatch_once(&qword_2811F6270, &block);
    }

    if (byte_2811F6225 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBEurekaEventMsg setError:]", block, v13, v14, v15, v16];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaEventMsg.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaEventMsg setError:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:117];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v18 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if (errorCopy)
  {
    [(NSMutableDictionary *)self->_commonInfo setValue:errorCopy forKey:@"Error"];
  }
}

void *__31__PLBBEurekaEventMsg_setError___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6225 = result;
  return result;
}

- (void)appendToError:(id)error
{
  v19 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __36__PLBBEurekaEventMsg_appendToError___block_invoke;
    v15 = &__block_descriptor_40_e5_v8__0lu32l8;
    v16 = v5;
    if (qword_2811F6278 != -1)
    {
      dispatch_once(&qword_2811F6278, &block);
    }

    if (byte_2811F6226 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBEurekaEventMsg appendToError:]", block, v13, v14, v15, v16];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaEventMsg.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaEventMsg appendToError:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:125];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v18 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [(NSMutableDictionary *)self->_commonInfo setObject:errorCopy forKey:@"Error"];
}

void *__36__PLBBEurekaEventMsg_appendToError___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6226 = result;
  return result;
}

- (void)setHeaderWithSeqNum:(id)num andDate:(id)date andTimeCal:(double)cal
{
  v32 = *MEMORY[0x277D85DE8];
  numCopy = num;
  v9 = MEMORY[0x277D3F180];
  dateCopy = date;
  if ([v9 debugEnabled])
  {
    v11 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__PLBBEurekaEventMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v11;
    if (qword_2811F6280 != -1)
    {
      dispatch_once(&qword_2811F6280, block);
    }

    if (byte_2811F6227 == 1)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBEurekaEventMsg setHeaderWithSeqNum:andDate:andTimeCal:]"];
      v13 = MEMORY[0x277D3F178];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaEventMsg.m"];
      lastPathComponent = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaEventMsg setHeaderWithSeqNum:andDate:andTimeCal:]"];
      [v13 logMessage:v12 fromFile:lastPathComponent fromFunction:v16 fromLineNumber:134];

      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v31 = v12;
        _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v18 = numCopy;
  if (!numCopy)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v19 = objc_opt_class();
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __61__PLBBEurekaEventMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke_65;
      v28[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v28[4] = v19;
      if (qword_2811F6288 != -1)
      {
        dispatch_once(&qword_2811F6288, v28);
      }

      if (byte_2811F6228 == 1)
      {
        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"unable to set seqNum(%@)", 0];
        v21 = MEMORY[0x277D3F178];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaEventMsg.m"];
        lastPathComponent2 = [v22 lastPathComponent];
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaEventMsg setHeaderWithSeqNum:andDate:andTimeCal:]"];
        [v21 logMessage:v20 fromFile:lastPathComponent2 fromFunction:v24 fromLineNumber:136];

        v25 = PLLogCommon();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v31 = v20;
          _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v18 = &unk_282C129F0;
  }

  [(NSMutableDictionary *)self->_commonInfo setObject:v18 forKey:@"SeqNum"];
  [(NSMutableDictionary *)self->_commonInfo setValue:dateCopy forKey:@"BBDate"];

  commonInfo = self->_commonInfo;
  v27 = [MEMORY[0x277CCABB0] numberWithDouble:cal];
  [(NSMutableDictionary *)commonInfo setValue:v27 forKey:@"TimeCal"];
}

void *__61__PLBBEurekaEventMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6227 = result;
  return result;
}

void *__61__PLBBEurekaEventMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke_65(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6228 = result;
  return result;
}

- (void)sendAndLogPLEntry:(id)entry
{
  v33 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__PLBBEurekaEventMsg_sendAndLogPLEntry___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F6290 != -1)
    {
      dispatch_once(&qword_2811F6290, block);
    }

    if (byte_2811F6229 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBEurekaEventMsg sendAndLogPLEntry:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaEventMsg.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaEventMsg sendAndLogPLEntry:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:157];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v32 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"EventCode"];
  [entryCopy setObject:v12 forKeyedSubscript:@"EventCode"];

  v13 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"Payload"];
  [entryCopy setObject:v13 forKeyedSubscript:@"Payload"];

  v14 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"Error"];
  [entryCopy setObject:v14 forKeyedSubscript:@"Error"];

  v15 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"SeqNum"];
  [entryCopy setObject:v15 forKeyedSubscript:@"SeqNum"];

  v16 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"BBDate"];
  [entryCopy setObject:v16 forKeyedSubscript:@"BBDate"];

  v17 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"TimeCal"];
  [entryCopy setObject:v17 forKeyedSubscript:@"TimeCal"];

  agent = [(PLBasebandMessage *)self agent];

  if (!agent && [MEMORY[0x277D3F180] debugEnabled])
  {
    v19 = objc_opt_class();
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __40__PLBBEurekaEventMsg_sendAndLogPLEntry___block_invoke_72;
    v29[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v29[4] = v19;
    if (qword_2811F6298 != -1)
    {
      dispatch_once(&qword_2811F6298, v29);
    }

    if (byte_2811F622A == 1)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bad agent"];
      v21 = MEMORY[0x277D3F178];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaEventMsg.m"];
      lastPathComponent2 = [v22 lastPathComponent];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaEventMsg sendAndLogPLEntry:]"];
      [v21 logMessage:v20 fromFile:lastPathComponent2 fromFunction:v24 fromLineNumber:168];

      v25 = PLLogCommon();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v32 = v20;
        _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v26 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"BBDate"];
  convertFromBasebandToMonotonic = [v26 convertFromBasebandToMonotonic];
  [entryCopy setEntryDate:convertFromBasebandToMonotonic];

  agent2 = [(PLBasebandMessage *)self agent];
  [agent2 logEntry:entryCopy];
}

void *__40__PLBBEurekaEventMsg_sendAndLogPLEntry___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6229 = result;
  return result;
}

void *__40__PLBBEurekaEventMsg_sendAndLogPLEntry___block_invoke_72(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F622A = result;
  return result;
}

- (void)addPairWithKey:(id)key andWithVal:(id)val
{
  v31 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  valCopy = val;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__PLBBEurekaEventMsg_addPairWithKey_andWithVal___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (qword_2811F62A0 != -1)
    {
      dispatch_once(&qword_2811F62A0, block);
    }

    if (byte_2811F622B == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBEurekaEventMsg addPairWithKey:andWithVal:]"];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaEventMsg.m"];
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaEventMsg addPairWithKey:andWithVal:]"];
      [v10 logMessage:v9 fromFile:lastPathComponent fromFunction:v13 fromLineNumber:205];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v30 = v9;
        _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if (keyCopy)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v15 = objc_opt_class();
      v23 = MEMORY[0x277D85DD0];
      v24 = 3221225472;
      v25 = __48__PLBBEurekaEventMsg_addPairWithKey_andWithVal___block_invoke_78;
      v26 = &__block_descriptor_40_e5_v8__0lu32l8;
      v27 = v15;
      if (qword_2811F62A8 != -1)
      {
        dispatch_once(&qword_2811F62A8, &v23);
      }

      if (byte_2811F622C == 1)
      {
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Add KVPair [%@, %@]", keyCopy, valCopy, v23, v24, v25, v26, v27];
        v17 = MEMORY[0x277D3F178];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaEventMsg.m"];
        lastPathComponent2 = [v18 lastPathComponent];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaEventMsg addPairWithKey:andWithVal:]"];
        [v17 logMessage:v16 fromFile:lastPathComponent2 fromFunction:v20 fromLineNumber:207];

        v21 = PLLogCommon();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v30 = v16;
          _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    kvPairs = [(PLBBEurekaEventMsg *)self kvPairs];
    [kvPairs setObject:valCopy forKey:keyCopy];
  }
}

void *__48__PLBBEurekaEventMsg_addPairWithKey_andWithVal___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F622B = result;
  return result;
}

void *__48__PLBBEurekaEventMsg_addPairWithKey_andWithVal___block_invoke_78(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F622C = result;
  return result;
}

- (void)refreshBBEurekaEventMsgLite
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __49__PLBBEurekaEventMsg_refreshBBEurekaEventMsgLite__block_invoke;
    v17 = &__block_descriptor_40_e5_v8__0lu32l8;
    v18 = v4;
    if (qword_2811F62B0 != -1)
    {
      dispatch_once(&qword_2811F62B0, &block);
    }

    if (byte_2811F622D == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBEurekaEventMsg refreshBBEurekaEventMsgLite]", block, v15, v16, v17, v18];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaEventMsg.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaEventMsg refreshBBEurekaEventMsgLite]"];
      [v6 logMessage:v5 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:246];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v20 = v5;
        _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v11 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"BBEurekaEventMsgLite"];
  v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11];
  [v12 setIsErrorEntry:1];
  agent = [(PLBasebandMessage *)self agent];
  [agent logEntry:v12];

  objc_autoreleasePoolPop(v3);
}

void *__49__PLBBEurekaEventMsg_refreshBBEurekaEventMsgLite__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F622D = result;
  return result;
}

+ (id)bbEuEvMsgNameBBEurekaMsgLite
{
  v32[3] = *MEMORY[0x277D85DE8];
  v31[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4F8];
  v29[0] = *MEMORY[0x277D3F568];
  v29[1] = v2;
  v3 = *MEMORY[0x277D3F548];
  v29[2] = *MEMORY[0x277D3F508];
  v29[3] = v3;
  v30[2] = MEMORY[0x277CBEC28];
  v30[3] = @"refreshRequestHandler";
  v30[0] = &unk_282C1C898;
  v30[1] = MEMORY[0x277CBEC38];
  v29[4] = *MEMORY[0x277D3F558];
  v30[4] = MEMORY[0x277CBEC38];
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:5];
  v32[0] = v24;
  v31[1] = *MEMORY[0x277D3F540];
  v27[0] = @"EventCode";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v28[0] = commonTypeDict_IntegerFormat;
  v27[1] = @"Payload";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v28[1] = commonTypeDict_StringFormat;
  v27[2] = @"Error";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]3 commonTypeDict_BoolFormat];
  v28[2] = commonTypeDict_BoolFormat;
  v27[3] = @"SeqNum";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v28[3] = commonTypeDict_IntegerFormat2;
  v27[4] = @"BBDate";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]5 commonTypeDict_DateFormat];
  v28[4] = commonTypeDict_DateFormat;
  v27[5] = @"TimeCal";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v28[5] = commonTypeDict_IntegerFormat3;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:6];
  v32[1] = v7;
  v31[2] = *MEMORY[0x277D3F500];
  v25[0] = @"value";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]7 commonTypeDict_StringFormat];
  v25[1] = @"unit";
  v26[0] = commonTypeDict_StringFormat2;
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]8 commonTypeDict_StringFormat];
  v26[1] = commonTypeDict_StringFormat3;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
  v32[2] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:3];

  return v13;
}

- (void)logEventForwardBBEurekaEventMsgLite
{
  v28 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__PLBBEurekaEventMsg_logEventForwardBBEurekaEventMsgLite__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F62B8 != -1)
    {
      dispatch_once(&qword_2811F62B8, block);
    }

    if (byte_2811F622E == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBEurekaEventMsg logEventForwardBBEurekaEventMsgLite]"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaEventMsg.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaEventMsg logEventForwardBBEurekaEventMsgLite]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:295];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v27 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"BBEurekaEventMsgLite"];
  v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  kvPairs = [(PLBBEurekaEventMsg *)self kvPairs];
  v13 = [kvPairs countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(kvPairs);
        }

        v17 = *(*(&v20 + 1) + 8 * i);
        kvPairs2 = [(PLBBEurekaEventMsg *)self kvPairs];
        v19 = [kvPairs2 objectForKey:v17];
        [v11 setObject:v19 forKeyedSubscript:v17];
      }

      v14 = [kvPairs countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v14);
  }

  [(PLBBEurekaEventMsg *)self sendAndLogPLEntry:v11];
}

void *__57__PLBBEurekaEventMsg_logEventForwardBBEurekaEventMsgLite__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F622E = result;
  return result;
}

- (void)refreshSDEventActionCode
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __46__PLBBEurekaEventMsg_refreshSDEventActionCode__block_invoke;
    v17 = &__block_descriptor_40_e5_v8__0lu32l8;
    v18 = v4;
    if (qword_2811F62C0 != -1)
    {
      dispatch_once(&qword_2811F62C0, &block);
    }

    if (byte_2811F622F == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBEurekaEventMsg refreshSDEventActionCode]", block, v15, v16, v17, v18];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaEventMsg.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaEventMsg refreshSDEventActionCode]"];
      [v6 logMessage:v5 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:319];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v20 = v5;
        _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v11 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"SDEventActionCode"];
  v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11];
  [v12 setIsErrorEntry:1];
  agent = [(PLBasebandMessage *)self agent];
  [agent logEntry:v12];

  objc_autoreleasePoolPop(v3);
}

void *__46__PLBBEurekaEventMsg_refreshSDEventActionCode__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F622F = result;
  return result;
}

+ (id)bbEuEvMsgNameSDEventActionCode
{
  v38[3] = *MEMORY[0x277D85DE8];
  v37[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4F8];
  v35[0] = *MEMORY[0x277D3F568];
  v35[1] = v2;
  v3 = *MEMORY[0x277D3F548];
  v35[2] = *MEMORY[0x277D3F508];
  v35[3] = v3;
  v36[2] = MEMORY[0x277CBEC28];
  v36[3] = @"refreshRequestHandler";
  v36[0] = &unk_282C1C898;
  v36[1] = MEMORY[0x277CBEC38];
  v35[4] = *MEMORY[0x277D3F558];
  v36[4] = MEMORY[0x277CBEC38];
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:5];
  v38[0] = v30;
  v37[1] = *MEMORY[0x277D3F540];
  v33[0] = @"EventCode";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v34[0] = commonTypeDict_IntegerFormat;
  v33[1] = @"Payload";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v34[1] = commonTypeDict_StringFormat;
  v33[2] = @"Error";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]3 commonTypeDict_BoolFormat];
  v34[2] = commonTypeDict_BoolFormat;
  v33[3] = @"SeqNum";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v34[3] = commonTypeDict_IntegerFormat2;
  v33[4] = @"BBDate";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]5 commonTypeDict_DateFormat];
  v34[4] = commonTypeDict_DateFormat;
  v33[5] = @"TimeCal";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v34[5] = commonTypeDict_IntegerFormat3;
  v33[6] = @"Event";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v34[6] = commonTypeDict_IntegerFormat4;
  v33[7] = @"Action";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v34[7] = commonTypeDict_IntegerFormat5;
  v33[8] = @"State";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v34[8] = commonTypeDict_IntegerFormat6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:9];
  v38[1] = v7;
  v37[2] = *MEMORY[0x277D3F500];
  v31[0] = @"value";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]10 commonTypeDict_StringFormat];
  v31[1] = @"unit";
  v32[0] = commonTypeDict_StringFormat2;
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]11 commonTypeDict_StringFormat];
  v32[1] = commonTypeDict_StringFormat3;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
  v38[2] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:3];

  return v13;
}

- (void)setSDEventActionCodeWith:(id)with andSDAction:(id)action andSDState:(id)state
{
  commonInfo = self->_commonInfo;
  stateCopy = state;
  actionCopy = action;
  [(NSMutableDictionary *)commonInfo setObject:with forKey:@"Event"];
  [(NSMutableDictionary *)self->_commonInfo setObject:actionCopy forKey:@"Action"];

  [(NSMutableDictionary *)self->_commonInfo setObject:stateCopy forKey:@"State"];
}

- (void)logEventForwardSDEventActionCode
{
  v35 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__PLBBEurekaEventMsg_logEventForwardSDEventActionCode__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F62C8 != -1)
    {
      dispatch_once(&qword_2811F62C8, block);
    }

    if (byte_2811F6230 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBEurekaEventMsg logEventForwardSDEventActionCode]"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaEventMsg.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaEventMsg logEventForwardSDEventActionCode]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:385];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v34 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"SDEventActionCode"];
  v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10];
  commonInfo = [(PLBBEurekaEventMsg *)self commonInfo];
  v13 = [commonInfo objectForKey:@"Event"];
  [v11 setObject:v13 forKeyedSubscript:@"Event"];

  commonInfo2 = [(PLBBEurekaEventMsg *)self commonInfo];
  v15 = [commonInfo2 objectForKey:@"Action"];
  [v11 setObject:v15 forKeyedSubscript:@"Action"];

  commonInfo3 = [(PLBBEurekaEventMsg *)self commonInfo];
  v17 = [commonInfo3 objectForKey:@"State"];
  [v11 setObject:v17 forKeyedSubscript:@"State"];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  kvPairs = [(PLBBEurekaEventMsg *)self kvPairs];
  v19 = [kvPairs countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v28;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(kvPairs);
        }

        v23 = *(*(&v27 + 1) + 8 * i);
        kvPairs2 = [(PLBBEurekaEventMsg *)self kvPairs];
        v25 = [kvPairs2 objectForKey:v23];
        [v11 setObject:v25 forKeyedSubscript:v23];
      }

      v20 = [kvPairs countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v20);
  }

  [(PLBBEurekaEventMsg *)self sendAndLogPLEntry:v11];
  agent = [(PLBasebandMessage *)self agent];
  [agent modelOOSPower:v11];
}

void *__54__PLBBEurekaEventMsg_logEventForwardSDEventActionCode__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6230 = result;
  return result;
}

+ (id)bbEuEvMsgNameCMCallEventConn
{
  v31[2] = *MEMORY[0x277D85DE8];
  v30[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v28[0] = *MEMORY[0x277D3F568];
  v28[1] = v2;
  v29[0] = &unk_282C1C8A8;
  v29[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F558];
  v28[2] = *MEMORY[0x277D3F548];
  v28[3] = v3;
  v29[2] = @"refreshRequestHandler";
  v29[3] = MEMORY[0x277CBEC38];
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];
  v31[0] = v25;
  v30[1] = *MEMORY[0x277D3F540];
  v26[0] = @"EventCode";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v27[0] = commonTypeDict_IntegerFormat;
  v26[1] = @"Payload";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v27[1] = commonTypeDict_StringFormat;
  v26[2] = @"Error";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]3 commonTypeDict_BoolFormat];
  v27[2] = commonTypeDict_BoolFormat;
  v26[3] = @"SeqNum";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v27[3] = commonTypeDict_IntegerFormat2;
  v26[4] = @"BBDate";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]5 commonTypeDict_DateFormat];
  v27[4] = commonTypeDict_DateFormat;
  v26[5] = @"TimeCal";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v27[5] = commonTypeDict_IntegerFormat3;
  v26[6] = @"callId";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]7 commonTypeDict_StringFormat];
  v27[6] = commonTypeDict_StringFormat2;
  v26[7] = @"callType";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]8 commonTypeDict_StringFormat];
  v27[7] = commonTypeDict_StringFormat3;
  v26[8] = @"systemMode";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat4 = [mEMORY[0x277D3F198]9 commonTypeDict_StringFormat];
  v27[8] = commonTypeDict_StringFormat4;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:9];
  v31[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];

  return v13;
}

- (void)logEventCMCallEventConnWithId:(id)id andCallType:(id)type andSysMode:(id)mode
{
  v40 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  v9 = MEMORY[0x277D3F180];
  typeCopy = type;
  idCopy = id;
  if ([v9 debugEnabled])
  {
    v12 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v34 = 3221225472;
    v35 = __75__PLBBEurekaEventMsg_logEventCMCallEventConnWithId_andCallType_andSysMode___block_invoke;
    v36 = &__block_descriptor_40_e5_v8__0lu32l8;
    v37 = v12;
    if (qword_2811F62D0 != -1)
    {
      dispatch_once(&qword_2811F62D0, &block);
    }

    if (byte_2811F6231 == 1)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBEurekaEventMsg logEventCMCallEventConnWithId:andCallType:andSysMode:]", block, v34, v35, v36, v37];
      v14 = MEMORY[0x277D3F178];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaEventMsg.m"];
      lastPathComponent = [v15 lastPathComponent];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaEventMsg logEventCMCallEventConnWithId:andCallType:andSysMode:]"];
      [v14 logMessage:v13 fromFile:lastPathComponent fromFunction:v17 fromLineNumber:465];

      v18 = PLLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v39 = v13;
        _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v19 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"CMCallEventConnCode"];
  v20 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v19];
  v21 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"EventCode"];
  [v20 setObject:v21 forKeyedSubscript:@"EventCode"];

  v22 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"Payload"];
  [v20 setObject:v22 forKeyedSubscript:@"Payload"];

  v23 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"Error"];
  [v20 setObject:v23 forKeyedSubscript:@"Error"];

  [v20 setObject:idCopy forKeyedSubscript:@"callId"];
  [v20 setObject:typeCopy forKeyedSubscript:@"callType"];
  [v20 setObject:modeCopy forKeyedSubscript:@"systemMode"];
  [(PLBBEurekaEventMsg *)self sendAndLogPLEntry:v20];
  v24 = [typeCopy isEqualToString:@"VOICE"];

  if (v24)
  {
    if ([modeCopy isEqualToString:@"CDMA"])
    {
      agent = [(PLBasebandMessage *)self agent];
      v26 = agent;
      v27 = @"CDMA2K";
      v28 = v20;
    }

    else
    {
      v32 = @"GSM";
      if (![modeCopy isEqualToString:@"GSM"])
      {
        v32 = @"WCDMA";
        if (![modeCopy isEqualToString:@"WCDMA"])
        {
          v32 = @"UTRAN";
          if (![modeCopy isEqualToString:@"UTRAN"])
          {
            goto LABEL_18;
          }
        }
      }

      agent = [(PLBasebandMessage *)self agent];
      v26 = agent;
      v28 = v20;
      v27 = v32;
    }

    [agent modelStateTransitionPower:v28 rat:v27 state:@"Voice"];

LABEL_18:
    agent2 = [(PLBasebandMessage *)self agent];
    [agent2 accountVoicePower:v20 state:@"voice_start"];
LABEL_22:

    goto LABEL_23;
  }

  if ([modeCopy isEqualToString:@"HDR"])
  {
    agent3 = [(PLBasebandMessage *)self agent];
    agent2 = agent3;
    v31 = @"1xEVDO";
LABEL_21:
    [agent3 modelStateTransitionPower:v20 rat:v31 state:@"Connected"];
    goto LABEL_22;
  }

  if ([modeCopy isEqualToString:@"CDMA"])
  {
    agent3 = [(PLBasebandMessage *)self agent];
    agent2 = agent3;
    v31 = @"CDMA2K";
    goto LABEL_21;
  }

LABEL_23:
}

void *__75__PLBBEurekaEventMsg_logEventCMCallEventConnWithId_andCallType_andSysMode___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6231 = result;
  return result;
}

+ (id)bbEuEvMsgNameCMCallEventEnd
{
  v29[2] = *MEMORY[0x277D85DE8];
  v28[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v26[0] = *MEMORY[0x277D3F568];
  v26[1] = v2;
  v27[0] = &unk_282C1C8A8;
  v27[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F558];
  v26[2] = *MEMORY[0x277D3F548];
  v26[3] = v3;
  v27[2] = @"refreshRequestHandler";
  v27[3] = MEMORY[0x277CBEC38];
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:4];
  v29[0] = v23;
  v28[1] = *MEMORY[0x277D3F540];
  v24[0] = @"EventCode";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v25[0] = commonTypeDict_IntegerFormat;
  v24[1] = @"Payload";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v25[1] = commonTypeDict_StringFormat;
  v24[2] = @"Error";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]3 commonTypeDict_BoolFormat];
  v25[2] = commonTypeDict_BoolFormat;
  v24[3] = @"SeqNum";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v25[3] = commonTypeDict_IntegerFormat2;
  v24[4] = @"BBDate";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]5 commonTypeDict_DateFormat];
  v25[4] = commonTypeDict_DateFormat;
  v24[5] = @"TimeCal";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v25[5] = commonTypeDict_IntegerFormat3;
  v24[6] = @"numberOfCalls";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]7 commonTypeDict_StringFormat];
  v25[6] = commonTypeDict_StringFormat2;
  v24[7] = @"callId";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]8 commonTypeDict_StringFormat];
  v25[7] = commonTypeDict_StringFormat3;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:8];
  v29[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];

  return v13;
}

- (void)logEventCMCallEventEndWithId:(id)id andNumCalls:(id)calls
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D3F180];
  callsCopy = calls;
  idCopy = id;
  if ([v6 debugEnabled])
  {
    v9 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __63__PLBBEurekaEventMsg_logEventCMCallEventEndWithId_andNumCalls___block_invoke;
    v27 = &__block_descriptor_40_e5_v8__0lu32l8;
    v28 = v9;
    if (qword_2811F62D8 != -1)
    {
      dispatch_once(&qword_2811F62D8, &block);
    }

    if (byte_2811F6232 == 1)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBEurekaEventMsg logEventCMCallEventEndWithId:andNumCalls:]", block, v25, v26, v27, v28];
      v11 = MEMORY[0x277D3F178];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaEventMsg.m"];
      lastPathComponent = [v12 lastPathComponent];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaEventMsg logEventCMCallEventEndWithId:andNumCalls:]"];
      [v11 logMessage:v10 fromFile:lastPathComponent fromFunction:v14 fromLineNumber:543];

      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v30 = v10;
        _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v16 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"CMCallEventEndCode"];
  v17 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v16];
  v18 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"EventCode"];
  [v17 setObject:v18 forKeyedSubscript:@"EventCode"];

  v19 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"Payload"];
  [v17 setObject:v19 forKeyedSubscript:@"Payload"];

  v20 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"Error"];
  [v17 setObject:v20 forKeyedSubscript:@"Error"];

  [v17 setObject:idCopy forKeyedSubscript:@"callId"];
  [v17 setObject:callsCopy forKeyedSubscript:@"numberOfCalls"];

  [(PLBBEurekaEventMsg *)self sendAndLogPLEntry:v17];
  agent = [(PLBasebandMessage *)self agent];
  [agent modelStateTransitionPower:v17 rat:@"CDMA2K" state:@"Inactive"];

  agent2 = [(PLBasebandMessage *)self agent];
  [agent2 modelStateTransitionPower:v17 rat:@"1xEVDO" state:@"Inactive"];

  agent3 = [(PLBasebandMessage *)self agent];
  [agent3 accountVoicePower:v17 state:@"voice_end"];
}

void *__63__PLBBEurekaEventMsg_logEventCMCallEventEndWithId_andNumCalls___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6232 = result;
  return result;
}

+ (id)bbEuEvMsgNameCMCallEventOrig
{
  v31[2] = *MEMORY[0x277D85DE8];
  v30[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v28[0] = *MEMORY[0x277D3F568];
  v28[1] = v2;
  v29[0] = &unk_282C1C8A8;
  v29[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F558];
  v28[2] = *MEMORY[0x277D3F548];
  v28[3] = v3;
  v29[2] = @"refreshRequestHandler";
  v29[3] = MEMORY[0x277CBEC38];
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];
  v31[0] = v25;
  v30[1] = *MEMORY[0x277D3F540];
  v26[0] = @"EventCode";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v27[0] = commonTypeDict_IntegerFormat;
  v26[1] = @"Payload";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v27[1] = commonTypeDict_StringFormat;
  v26[2] = @"Error";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]3 commonTypeDict_BoolFormat];
  v27[2] = commonTypeDict_BoolFormat;
  v26[3] = @"SeqNum";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v27[3] = commonTypeDict_IntegerFormat2;
  v26[4] = @"BBDate";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]5 commonTypeDict_DateFormat];
  v27[4] = commonTypeDict_DateFormat;
  v26[5] = @"TimeCal";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v27[5] = commonTypeDict_IntegerFormat3;
  v26[6] = @"callId";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]7 commonTypeDict_StringFormat];
  v27[6] = commonTypeDict_StringFormat2;
  v26[7] = @"callType";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]8 commonTypeDict_StringFormat];
  v27[7] = commonTypeDict_StringFormat3;
  v26[8] = @"serviceType";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat4 = [mEMORY[0x277D3F198]9 commonTypeDict_StringFormat];
  v27[8] = commonTypeDict_StringFormat4;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:9];
  v31[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];

  return v13;
}

- (void)logEventCMCallEventOrigWithId:(id)id andCallType:(id)type andSrvType:(id)srvType
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277D3F180];
  srvTypeCopy = srvType;
  typeCopy = type;
  idCopy = id;
  if ([v8 debugEnabled])
  {
    v12 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __75__PLBBEurekaEventMsg_logEventCMCallEventOrigWithId_andCallType_andSrvType___block_invoke;
    v27 = &__block_descriptor_40_e5_v8__0lu32l8;
    v28 = v12;
    if (qword_2811F62E0 != -1)
    {
      dispatch_once(&qword_2811F62E0, &block);
    }

    if (byte_2811F6233 == 1)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBEurekaEventMsg logEventCMCallEventOrigWithId:andCallType:andSrvType:]", block, v25, v26, v27, v28];
      v14 = MEMORY[0x277D3F178];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaEventMsg.m"];
      lastPathComponent = [v15 lastPathComponent];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaEventMsg logEventCMCallEventOrigWithId:andCallType:andSrvType:]"];
      [v14 logMessage:v13 fromFile:lastPathComponent fromFunction:v17 fromLineNumber:602];

      v18 = PLLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v30 = v13;
        _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v19 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"CMCallEventOrigCode"];
  v20 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v19];
  v21 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"EventCode"];
  [v20 setObject:v21 forKeyedSubscript:@"EventCode"];

  v22 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"Payload"];
  [v20 setObject:v22 forKeyedSubscript:@"Payload"];

  v23 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"Error"];
  [v20 setObject:v23 forKeyedSubscript:@"Error"];

  [v20 setObject:idCopy forKeyedSubscript:@"callId"];
  [v20 setObject:typeCopy forKeyedSubscript:@"callType"];

  [v20 setObject:srvTypeCopy forKeyedSubscript:@"serviceType"];
  [(PLBBEurekaEventMsg *)self sendAndLogPLEntry:v20];
}

void *__75__PLBBEurekaEventMsg_logEventCMCallEventOrigWithId_andCallType_andSrvType___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6233 = result;
  return result;
}

+ (id)bbEuEvMsgNameCMCallEventConnV2
{
  v33[2] = *MEMORY[0x277D85DE8];
  v32[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v30[0] = *MEMORY[0x277D3F568];
  v30[1] = v2;
  v31[0] = &unk_282C1C8A8;
  v31[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F558];
  v30[2] = *MEMORY[0x277D3F548];
  v30[3] = v3;
  v31[2] = @"refreshRequestHandler";
  v31[3] = MEMORY[0x277CBEC38];
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:4];
  v33[0] = v27;
  v32[1] = *MEMORY[0x277D3F540];
  v28[0] = @"EventCode";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v29[0] = commonTypeDict_IntegerFormat;
  v28[1] = @"Payload";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v29[1] = commonTypeDict_StringFormat;
  v28[2] = @"Error";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]3 commonTypeDict_BoolFormat];
  v29[2] = commonTypeDict_BoolFormat;
  v28[3] = @"SeqNum";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v29[3] = commonTypeDict_IntegerFormat2;
  v28[4] = @"BBDate";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]5 commonTypeDict_DateFormat];
  v29[4] = commonTypeDict_DateFormat;
  v28[5] = @"TimeCal";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v29[5] = commonTypeDict_IntegerFormat3;
  v28[6] = @"callId";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]7 commonTypeDict_StringFormat];
  v29[6] = commonTypeDict_StringFormat2;
  v28[7] = @"callType";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]8 commonTypeDict_StringFormat];
  v29[7] = commonTypeDict_StringFormat3;
  v28[8] = @"systemMode";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat4 = [mEMORY[0x277D3F198]9 commonTypeDict_StringFormat];
  v29[8] = commonTypeDict_StringFormat4;
  v28[9] = @"clientId";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat5 = [mEMORY[0x277D3F198]10 commonTypeDict_StringFormat];
  v29[9] = commonTypeDict_StringFormat5;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:10];
  v33[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];

  return v13;
}

- (void)logEventCMCallEventConnWithId:(id)id andCallType:(id)type andSysMode:(id)mode andClientId:(id)clientId
{
  v40 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  v11 = MEMORY[0x277D3F180];
  clientIdCopy = clientId;
  typeCopy = type;
  idCopy = id;
  if ([v11 debugEnabled])
  {
    v15 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v34 = 3221225472;
    v35 = __87__PLBBEurekaEventMsg_logEventCMCallEventConnWithId_andCallType_andSysMode_andClientId___block_invoke;
    v36 = &__block_descriptor_40_e5_v8__0lu32l8;
    v37 = v15;
    if (qword_2811F62E8 != -1)
    {
      dispatch_once(&qword_2811F62E8, &block);
    }

    if (byte_2811F6234 == 1)
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBEurekaEventMsg logEventCMCallEventConnWithId:andCallType:andSysMode:andClientId:]", block, v34, v35, v36, v37];
      v17 = MEMORY[0x277D3F178];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaEventMsg.m"];
      lastPathComponent = [v18 lastPathComponent];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaEventMsg logEventCMCallEventConnWithId:andCallType:andSysMode:andClientId:]"];
      [v17 logMessage:v16 fromFile:lastPathComponent fromFunction:v20 fromLineNumber:658];

      v21 = PLLogCommon();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v39 = v16;
        _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v22 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"CMCallEventConnCode"];
  v23 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v22];
  v24 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"EventCode"];
  [v23 setObject:v24 forKeyedSubscript:@"EventCode"];

  v25 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"Payload"];
  [v23 setObject:v25 forKeyedSubscript:@"Payload"];

  v26 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"Error"];
  [v23 setObject:v26 forKeyedSubscript:@"Error"];

  [v23 setObject:idCopy forKeyedSubscript:@"callId"];
  [v23 setObject:typeCopy forKeyedSubscript:@"callType"];
  [v23 setObject:modeCopy forKeyedSubscript:@"systemMode"];
  [v23 setObject:clientIdCopy forKeyedSubscript:@"clientId"];

  [(PLBBEurekaEventMsg *)self sendAndLogPLEntry:v23];
  v27 = [typeCopy isEqualToString:@"VOICE"];

  if (v27)
  {
    if ([modeCopy isEqualToString:@"CDMA"])
    {
      v28 = @"CDMA2K";
    }

    else
    {
      v28 = @"GSM";
      if (([modeCopy isEqualToString:@"GSM"] & 1) == 0)
      {
        v28 = @"WCDMA";
        if (([modeCopy isEqualToString:@"WCDMA"] & 1) == 0)
        {
          v28 = @"UTRAN";
          if (![modeCopy isEqualToString:@"UTRAN"])
          {
            goto LABEL_17;
          }
        }
      }
    }

    agent = [(PLBasebandMessage *)self agent];
    [agent modelStateTransitionPower:v23 rat:v28 state:@"Voice"];

LABEL_17:
    agent2 = [(PLBasebandMessage *)self agent];
    [agent2 accountVoicePower:v23 state:@"voice_start"];
LABEL_21:

    goto LABEL_22;
  }

  if ([modeCopy isEqualToString:@"HDR"])
  {
    agent3 = [(PLBasebandMessage *)self agent];
    agent2 = agent3;
    v31 = @"1xEVDO";
LABEL_20:
    [agent3 modelStateTransitionPower:v23 rat:v31 state:@"Connected"];
    goto LABEL_21;
  }

  if ([modeCopy isEqualToString:@"CDMA"])
  {
    agent3 = [(PLBasebandMessage *)self agent];
    agent2 = agent3;
    v31 = @"CDMA2K";
    goto LABEL_20;
  }

LABEL_22:
}

void *__87__PLBBEurekaEventMsg_logEventCMCallEventConnWithId_andCallType_andSysMode_andClientId___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6234 = result;
  return result;
}

+ (id)bbEuEvMsgNameCMCallEventEndV2
{
  v31[2] = *MEMORY[0x277D85DE8];
  v30[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v28[0] = *MEMORY[0x277D3F568];
  v28[1] = v2;
  v29[0] = &unk_282C1C8A8;
  v29[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F558];
  v28[2] = *MEMORY[0x277D3F548];
  v28[3] = v3;
  v29[2] = @"refreshRequestHandler";
  v29[3] = MEMORY[0x277CBEC38];
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];
  v31[0] = v25;
  v30[1] = *MEMORY[0x277D3F540];
  v26[0] = @"EventCode";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v27[0] = commonTypeDict_IntegerFormat;
  v26[1] = @"Payload";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v27[1] = commonTypeDict_StringFormat;
  v26[2] = @"Error";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]3 commonTypeDict_BoolFormat];
  v27[2] = commonTypeDict_BoolFormat;
  v26[3] = @"SeqNum";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v27[3] = commonTypeDict_IntegerFormat2;
  v26[4] = @"BBDate";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]5 commonTypeDict_DateFormat];
  v27[4] = commonTypeDict_DateFormat;
  v26[5] = @"TimeCal";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v27[5] = commonTypeDict_IntegerFormat3;
  v26[6] = @"numberOfCalls";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]7 commonTypeDict_StringFormat];
  v27[6] = commonTypeDict_StringFormat2;
  v26[7] = @"callId";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]8 commonTypeDict_StringFormat];
  v27[7] = commonTypeDict_StringFormat3;
  v26[8] = @"clientId";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat4 = [mEMORY[0x277D3F198]9 commonTypeDict_StringFormat];
  v27[8] = commonTypeDict_StringFormat4;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:9];
  v31[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];

  return v13;
}

- (void)logEventCMCallEventEndWithId:(id)id andNumCalls:(id)calls andClientId:(id)clientId
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277D3F180];
  clientIdCopy = clientId;
  callsCopy = calls;
  idCopy = id;
  if ([v8 debugEnabled])
  {
    v12 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __75__PLBBEurekaEventMsg_logEventCMCallEventEndWithId_andNumCalls_andClientId___block_invoke;
    v30 = &__block_descriptor_40_e5_v8__0lu32l8;
    v31 = v12;
    if (qword_2811F62F0 != -1)
    {
      dispatch_once(&qword_2811F62F0, &block);
    }

    if (byte_2811F6235 == 1)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBEurekaEventMsg logEventCMCallEventEndWithId:andNumCalls:andClientId:]", block, v28, v29, v30, v31];
      v14 = MEMORY[0x277D3F178];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaEventMsg.m"];
      lastPathComponent = [v15 lastPathComponent];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaEventMsg logEventCMCallEventEndWithId:andNumCalls:andClientId:]"];
      [v14 logMessage:v13 fromFile:lastPathComponent fromFunction:v17 fromLineNumber:740];

      v18 = PLLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v33 = v13;
        _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v19 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"CMCallEventEndCode"];
  v20 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v19];
  v21 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"EventCode"];
  [v20 setObject:v21 forKeyedSubscript:@"EventCode"];

  v22 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"Payload"];
  [v20 setObject:v22 forKeyedSubscript:@"Payload"];

  v23 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"Error"];
  [v20 setObject:v23 forKeyedSubscript:@"Error"];

  [v20 setObject:idCopy forKeyedSubscript:@"callId"];
  [v20 setObject:callsCopy forKeyedSubscript:@"numberOfCalls"];

  [v20 setObject:clientIdCopy forKeyedSubscript:@"clientId"];
  [(PLBBEurekaEventMsg *)self sendAndLogPLEntry:v20];
  agent = [(PLBasebandMessage *)self agent];
  [agent modelStateTransitionPower:v20 rat:@"CDMA2K" state:@"Inactive"];

  agent2 = [(PLBasebandMessage *)self agent];
  [agent2 modelStateTransitionPower:v20 rat:@"1xEVDO" state:@"Inactive"];

  agent3 = [(PLBasebandMessage *)self agent];
  [agent3 accountVoicePower:v20 state:@"voice_end"];
}

void *__75__PLBBEurekaEventMsg_logEventCMCallEventEndWithId_andNumCalls_andClientId___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6235 = result;
  return result;
}

+ (id)bbEuEvMsgNameCMCallEventOrigV2
{
  v33[2] = *MEMORY[0x277D85DE8];
  v32[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v30[0] = *MEMORY[0x277D3F568];
  v30[1] = v2;
  v31[0] = &unk_282C1C8A8;
  v31[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F558];
  v30[2] = *MEMORY[0x277D3F548];
  v30[3] = v3;
  v31[2] = @"refreshRequestHandler";
  v31[3] = MEMORY[0x277CBEC38];
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:4];
  v33[0] = v27;
  v32[1] = *MEMORY[0x277D3F540];
  v28[0] = @"EventCode";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v29[0] = commonTypeDict_IntegerFormat;
  v28[1] = @"Payload";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v29[1] = commonTypeDict_StringFormat;
  v28[2] = @"Error";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]3 commonTypeDict_BoolFormat];
  v29[2] = commonTypeDict_BoolFormat;
  v28[3] = @"SeqNum";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v29[3] = commonTypeDict_IntegerFormat2;
  v28[4] = @"BBDate";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]5 commonTypeDict_DateFormat];
  v29[4] = commonTypeDict_DateFormat;
  v28[5] = @"TimeCal";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v29[5] = commonTypeDict_IntegerFormat3;
  v28[6] = @"callId";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]7 commonTypeDict_StringFormat];
  v29[6] = commonTypeDict_StringFormat2;
  v28[7] = @"callType";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]8 commonTypeDict_StringFormat];
  v29[7] = commonTypeDict_StringFormat3;
  v28[8] = @"serviceType";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat4 = [mEMORY[0x277D3F198]9 commonTypeDict_StringFormat];
  v29[8] = commonTypeDict_StringFormat4;
  v28[9] = @"clientId";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat5 = [mEMORY[0x277D3F198]10 commonTypeDict_StringFormat];
  v29[9] = commonTypeDict_StringFormat5;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:10];
  v33[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];

  return v13;
}

- (void)logEventCMCallEventOrigWithId:(id)id andCallType:(id)type andSrvType:(id)srvType andClientId:(id)clientId
{
  v34 = *MEMORY[0x277D85DE8];
  v10 = MEMORY[0x277D3F180];
  clientIdCopy = clientId;
  srvTypeCopy = srvType;
  typeCopy = type;
  idCopy = id;
  if ([v10 debugEnabled])
  {
    v15 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __87__PLBBEurekaEventMsg_logEventCMCallEventOrigWithId_andCallType_andSrvType_andClientId___block_invoke;
    v30 = &__block_descriptor_40_e5_v8__0lu32l8;
    v31 = v15;
    if (qword_2811F62F8 != -1)
    {
      dispatch_once(&qword_2811F62F8, &block);
    }

    if (byte_2811F6236 == 1)
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBEurekaEventMsg logEventCMCallEventOrigWithId:andCallType:andSrvType:andClientId:]", block, v28, v29, v30, v31];
      v17 = MEMORY[0x277D3F178];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaEventMsg.m"];
      lastPathComponent = [v18 lastPathComponent];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaEventMsg logEventCMCallEventOrigWithId:andCallType:andSrvType:andClientId:]"];
      [v17 logMessage:v16 fromFile:lastPathComponent fromFunction:v20 fromLineNumber:803];

      v21 = PLLogCommon();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v33 = v16;
        _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v22 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"CMCallEventOrigCode"];
  v23 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v22];
  v24 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"EventCode"];
  [v23 setObject:v24 forKeyedSubscript:@"EventCode"];

  v25 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"Payload"];
  [v23 setObject:v25 forKeyedSubscript:@"Payload"];

  v26 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"Error"];
  [v23 setObject:v26 forKeyedSubscript:@"Error"];

  [v23 setObject:idCopy forKeyedSubscript:@"callId"];
  [v23 setObject:typeCopy forKeyedSubscript:@"callType"];

  [v23 setObject:srvTypeCopy forKeyedSubscript:@"serviceType"];
  [v23 setObject:clientIdCopy forKeyedSubscript:@"clientId"];

  [(PLBBEurekaEventMsg *)self sendAndLogPLEntry:v23];
}

void *__87__PLBBEurekaEventMsg_logEventCMCallEventOrigWithId_andCallType_andSrvType_andClientId___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6236 = result;
  return result;
}

+ (id)bbEuEvMsgNameCMCallEventIncom
{
  v31[2] = *MEMORY[0x277D85DE8];
  v30[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v28[0] = *MEMORY[0x277D3F568];
  v28[1] = v2;
  v29[0] = &unk_282C1C898;
  v29[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F558];
  v28[2] = *MEMORY[0x277D3F548];
  v28[3] = v3;
  v29[2] = @"refreshRequestHandler";
  v29[3] = MEMORY[0x277CBEC38];
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];
  v31[0] = v25;
  v30[1] = *MEMORY[0x277D3F540];
  v26[0] = @"EventCode";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v27[0] = commonTypeDict_IntegerFormat;
  v26[1] = @"Payload";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v27[1] = commonTypeDict_StringFormat;
  v26[2] = @"Error";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]3 commonTypeDict_BoolFormat];
  v27[2] = commonTypeDict_BoolFormat;
  v26[3] = @"SeqNum";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v27[3] = commonTypeDict_IntegerFormat2;
  v26[4] = @"BBDate";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]5 commonTypeDict_DateFormat];
  v27[4] = commonTypeDict_DateFormat;
  v26[5] = @"TimeCal";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v27[5] = commonTypeDict_IntegerFormat3;
  v26[6] = @"callId";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]7 commonTypeDict_StringFormat];
  v27[6] = commonTypeDict_StringFormat2;
  v26[7] = @"callType";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]8 commonTypeDict_StringFormat];
  v27[7] = commonTypeDict_StringFormat3;
  v26[8] = @"serviceType";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat4 = [mEMORY[0x277D3F198]9 commonTypeDict_StringFormat];
  v27[8] = commonTypeDict_StringFormat4;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:9];
  v31[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];

  return v13;
}

+ (id)bbEuEvMsgNameCMCDMAExit
{
  v27[2] = *MEMORY[0x277D85DE8];
  v26[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v24[0] = *MEMORY[0x277D3F568];
  v24[1] = v2;
  v25[0] = &unk_282C1C898;
  v25[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F558];
  v24[2] = *MEMORY[0x277D3F548];
  v24[3] = v3;
  v25[2] = @"refreshRequestHandler";
  v25[3] = MEMORY[0x277CBEC38];
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];
  v27[0] = v21;
  v26[1] = *MEMORY[0x277D3F540];
  v22[0] = @"EventCode";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v23[0] = commonTypeDict_IntegerFormat;
  v22[1] = @"Payload";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v23[1] = commonTypeDict_StringFormat;
  v22[2] = @"Error";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]3 commonTypeDict_BoolFormat];
  v23[2] = commonTypeDict_BoolFormat;
  v22[3] = @"SeqNum";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v23[3] = commonTypeDict_IntegerFormat2;
  v22[4] = @"BBDate";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]5 commonTypeDict_DateFormat];
  v23[4] = commonTypeDict_DateFormat;
  v22[5] = @"TimeCal";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v23[5] = commonTypeDict_IntegerFormat3;
  v22[6] = @"cdmaExitCode";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]7 commonTypeDict_StringFormat];
  v23[6] = commonTypeDict_StringFormat2;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:7];
  v27[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];

  return v13;
}

- (void)logEventPointCMExitCodeWithState:(id)state
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D3F180];
  stateCopy = state;
  if ([v4 debugEnabled])
  {
    v6 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __55__PLBBEurekaEventMsg_logEventPointCMExitCodeWithState___block_invoke;
    v21 = &__block_descriptor_40_e5_v8__0lu32l8;
    v22 = v6;
    if (qword_2811F6300 != -1)
    {
      dispatch_once(&qword_2811F6300, &block);
    }

    if (byte_2811F6237 == 1)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBEurekaEventMsg logEventPointCMExitCodeWithState:]", block, v19, v20, v21, v22];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaEventMsg.m"];
      lastPathComponent = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaEventMsg logEventPointCMExitCodeWithState:]"];
      [v8 logMessage:v7 fromFile:lastPathComponent fromFunction:v11 fromLineNumber:890];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v24 = v7;
        _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v13 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"CMCDMAExitCode"];
  v14 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v13];
  v15 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"EventCode"];
  [v14 setObject:v15 forKeyedSubscript:@"EventCode"];

  v16 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"Payload"];
  [v14 setObject:v16 forKeyedSubscript:@"Payload"];

  v17 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"Error"];
  [v14 setObject:v17 forKeyedSubscript:@"Error"];

  [v14 setObject:stateCopy forKeyedSubscript:@"cdmaExitCode"];
  [(PLBBEurekaEventMsg *)self sendAndLogPLEntry:v14];
}

void *__55__PLBBEurekaEventMsg_logEventPointCMExitCodeWithState___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6237 = result;
  return result;
}

+ (id)bbEuEvMsgNameGSML1State
{
  v27[2] = *MEMORY[0x277D85DE8];
  v26[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v24[0] = *MEMORY[0x277D3F568];
  v24[1] = v2;
  v25[0] = &unk_282C1C898;
  v25[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F558];
  v24[2] = *MEMORY[0x277D3F548];
  v24[3] = v3;
  v25[2] = @"refreshRequestHandler";
  v25[3] = MEMORY[0x277CBEC38];
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];
  v27[0] = v21;
  v26[1] = *MEMORY[0x277D3F540];
  v22[0] = @"EventCode";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v23[0] = commonTypeDict_IntegerFormat;
  v22[1] = @"Payload";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v23[1] = commonTypeDict_StringFormat;
  v22[2] = @"Error";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]3 commonTypeDict_BoolFormat];
  v23[2] = commonTypeDict_BoolFormat;
  v22[3] = @"SeqNum";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v23[3] = commonTypeDict_IntegerFormat2;
  v22[4] = @"BBDate";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]5 commonTypeDict_DateFormat];
  v23[4] = commonTypeDict_DateFormat;
  v22[5] = @"TimeCal";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v23[5] = commonTypeDict_IntegerFormat3;
  v22[6] = @"State";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]7 commonTypeDict_StringFormat];
  v23[6] = commonTypeDict_StringFormat2;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:7];
  v27[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];

  return v13;
}

- (void)logEventForwardGSML1StateWith:(id)with
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D3F180];
  withCopy = with;
  if ([v4 debugEnabled])
  {
    v6 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __52__PLBBEurekaEventMsg_logEventForwardGSML1StateWith___block_invoke;
    v19 = &__block_descriptor_40_e5_v8__0lu32l8;
    v20 = v6;
    if (qword_2811F6308 != -1)
    {
      dispatch_once(&qword_2811F6308, &block);
    }

    if (byte_2811F6238 == 1)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBEurekaEventMsg logEventForwardGSML1StateWith:]", block, v17, v18, v19, v20];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaEventMsg.m"];
      lastPathComponent = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaEventMsg logEventForwardGSML1StateWith:]"];
      [v8 logMessage:v7 fromFile:lastPathComponent fromFunction:v11 fromLineNumber:943];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v22 = v7;
        _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v13 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"GSML1State"];
  v14 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v13];
  [v14 setObject:withCopy forKeyedSubscript:@"State"];
  [(PLBBEurekaEventMsg *)self sendAndLogPLEntry:v14];
  agent = [(PLBasebandMessage *)self agent];
  [agent modelStateTransitionPower:v14 rat:@"GSM" state:withCopy];
}

void *__52__PLBBEurekaEventMsg_logEventForwardGSML1StateWith___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6238 = result;
  return result;
}

- (void)refreshWCDMARRCState
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __42__PLBBEurekaEventMsg_refreshWCDMARRCState__block_invoke;
    v17 = &__block_descriptor_40_e5_v8__0lu32l8;
    v18 = v4;
    if (qword_2811F6310 != -1)
    {
      dispatch_once(&qword_2811F6310, &block);
    }

    if (byte_2811F6239 == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBEurekaEventMsg refreshWCDMARRCState]", block, v15, v16, v17, v18];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaEventMsg.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaEventMsg refreshWCDMARRCState]"];
      [v6 logMessage:v5 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:968];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v20 = v5;
        _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v11 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"WCDMARRCState"];
  v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11];
  [v12 setIsErrorEntry:1];
  agent = [(PLBasebandMessage *)self agent];
  [agent logEntry:v12];

  objc_autoreleasePoolPop(v3);
}

void *__42__PLBBEurekaEventMsg_refreshWCDMARRCState__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6239 = result;
  return result;
}

+ (id)bbEuEvMsgNameWCDMARRCState
{
  v31[2] = *MEMORY[0x277D85DE8];
  v30[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v28[0] = *MEMORY[0x277D3F568];
  v28[1] = v2;
  v29[0] = &unk_282C1C8A8;
  v29[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F558];
  v28[2] = *MEMORY[0x277D3F548];
  v28[3] = v3;
  v29[2] = @"refreshRequestHandler";
  v29[3] = MEMORY[0x277CBEC38];
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];
  v31[0] = v25;
  v30[1] = *MEMORY[0x277D3F540];
  v26[0] = @"EventCode";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v27[0] = commonTypeDict_IntegerFormat;
  v26[1] = @"Payload";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v27[1] = commonTypeDict_StringFormat;
  v26[2] = @"Error";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]3 commonTypeDict_BoolFormat];
  v27[2] = commonTypeDict_BoolFormat;
  v26[3] = @"SeqNum";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v27[3] = commonTypeDict_IntegerFormat2;
  v26[4] = @"BBDate";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]5 commonTypeDict_DateFormat];
  v27[4] = commonTypeDict_DateFormat;
  v26[5] = @"TimeCal";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v27[5] = commonTypeDict_IntegerFormat3;
  v26[6] = @"PrevState";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]7 commonTypeDict_StringFormat];
  v27[6] = commonTypeDict_StringFormat2;
  v26[7] = @"CurrState";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]8 commonTypeDict_StringFormat];
  v27[7] = commonTypeDict_StringFormat3;
  v26[8] = @"Rate";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat4 = [mEMORY[0x277D3F198]9 commonTypeDict_StringFormat];
  v27[8] = commonTypeDict_StringFormat4;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:9];
  v31[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];

  return v13;
}

- (void)logEventForwardWCDMARRCPrevStateAs:(id)as andCurrState:(id)state andRate:(id)rate
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277D3F180];
  stateCopy = state;
  asCopy = as;
  if ([v7 debugEnabled])
  {
    v10 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __78__PLBBEurekaEventMsg_logEventForwardWCDMARRCPrevStateAs_andCurrState_andRate___block_invoke;
    v23 = &__block_descriptor_40_e5_v8__0lu32l8;
    v24 = v10;
    if (qword_2811F6318 != -1)
    {
      dispatch_once(&qword_2811F6318, &block);
    }

    if (byte_2811F623A == 1)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBEurekaEventMsg logEventForwardWCDMARRCPrevStateAs:andCurrState:andRate:]", block, v21, v22, v23, v24];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaEventMsg.m"];
      lastPathComponent = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaEventMsg logEventForwardWCDMARRCPrevStateAs:andCurrState:andRate:]"];
      [v12 logMessage:v11 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:1012];

      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v26 = v11;
        _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v17 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"WCDMARRCState"];
  v18 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v17];
  [v18 setObject:asCopy forKeyedSubscript:@"PrevState"];

  [v18 setObject:stateCopy forKeyedSubscript:@"CurrState"];
  [(PLBBEurekaEventMsg *)self sendAndLogPLEntry:v18];
  agent = [(PLBasebandMessage *)self agent];
  [agent modelStateTransitionPower:v18 rat:@"WCDMA" state:stateCopy];
}

void *__78__PLBBEurekaEventMsg_logEventForwardWCDMARRCPrevStateAs_andCurrState_andRate___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F623A = result;
  return result;
}

- (void)refreshLTERRCState
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __40__PLBBEurekaEventMsg_refreshLTERRCState__block_invoke;
    v17 = &__block_descriptor_40_e5_v8__0lu32l8;
    v18 = v4;
    if (qword_2811F6320 != -1)
    {
      dispatch_once(&qword_2811F6320, &block);
    }

    if (byte_2811F623B == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBEurekaEventMsg refreshLTERRCState]", block, v15, v16, v17, v18];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaEventMsg.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaEventMsg refreshLTERRCState]"];
      [v6 logMessage:v5 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:1052];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v20 = v5;
        _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v11 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"LTERRCState"];
  v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11];
  [v12 setIsErrorEntry:1];
  agent = [(PLBasebandMessage *)self agent];
  [agent logEntry:v12];

  objc_autoreleasePoolPop(v3);
}

void *__40__PLBBEurekaEventMsg_refreshLTERRCState__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F623B = result;
  return result;
}

+ (id)bbEuEvMsgNameLTERRCState
{
  v27[2] = *MEMORY[0x277D85DE8];
  v26[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v24[0] = *MEMORY[0x277D3F568];
  v24[1] = v2;
  v25[0] = &unk_282C1C898;
  v25[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F558];
  v24[2] = *MEMORY[0x277D3F548];
  v24[3] = v3;
  v25[2] = @"refreshRequestHandler";
  v25[3] = MEMORY[0x277CBEC38];
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];
  v27[0] = v21;
  v26[1] = *MEMORY[0x277D3F540];
  v22[0] = @"EventCode";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v23[0] = commonTypeDict_IntegerFormat;
  v22[1] = @"Payload";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v23[1] = commonTypeDict_StringFormat;
  v22[2] = @"Error";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]3 commonTypeDict_BoolFormat];
  v23[2] = commonTypeDict_BoolFormat;
  v22[3] = @"SeqNum";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v23[3] = commonTypeDict_IntegerFormat2;
  v22[4] = @"BBDate";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]5 commonTypeDict_DateFormat];
  v23[4] = commonTypeDict_DateFormat;
  v22[5] = @"TimeCal";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v23[5] = commonTypeDict_IntegerFormat3;
  v22[6] = @"State";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]7 commonTypeDict_StringFormat];
  v23[6] = commonTypeDict_StringFormat2;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:7];
  v27[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];

  return v13;
}

- (void)logEventForwardLTERRCStateAs:(id)as
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D3F180];
  asCopy = as;
  if ([v4 debugEnabled])
  {
    v6 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __51__PLBBEurekaEventMsg_logEventForwardLTERRCStateAs___block_invoke;
    v22 = &__block_descriptor_40_e5_v8__0lu32l8;
    v23 = v6;
    if (qword_2811F6328 != -1)
    {
      dispatch_once(&qword_2811F6328, &block);
    }

    if (byte_2811F623C == 1)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBEurekaEventMsg logEventForwardLTERRCStateAs:]", block, v20, v21, v22, v23];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaEventMsg.m"];
      lastPathComponent = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaEventMsg logEventForwardLTERRCStateAs:]"];
      [v8 logMessage:v7 fromFile:lastPathComponent fromFunction:v11 fromLineNumber:1092];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v25 = v7;
        _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v13 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"LTERRCState"];
  v14 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v13];
  v15 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"EventCode"];
  [v14 setObject:v15 forKeyedSubscript:@"EventCode"];

  v16 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"Payload"];
  [v14 setObject:v16 forKeyedSubscript:@"Payload"];

  v17 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"Error"];
  [v14 setObject:v17 forKeyedSubscript:@"Error"];

  [v14 setObject:asCopy forKeyedSubscript:@"State"];
  [(PLBBEurekaEventMsg *)self sendAndLogPLEntry:v14];
  agent = [(PLBasebandMessage *)self agent];
  [agent modelStateTransitionPower:v14 rat:@"LTE" state:asCopy];
}

void *__51__PLBBEurekaEventMsg_logEventForwardLTERRCStateAs___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F623C = result;
  return result;
}

- (void)refreshUTRANRRCState
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __42__PLBBEurekaEventMsg_refreshUTRANRRCState__block_invoke;
    v17 = &__block_descriptor_40_e5_v8__0lu32l8;
    v18 = v4;
    if (qword_2811F6330 != -1)
    {
      dispatch_once(&qword_2811F6330, &block);
    }

    if (byte_2811F623D == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBEurekaEventMsg refreshUTRANRRCState]", block, v15, v16, v17, v18];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaEventMsg.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaEventMsg refreshUTRANRRCState]"];
      [v6 logMessage:v5 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:1133];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v20 = v5;
        _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v11 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"UTRANRRCState"];
  v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11];
  [v12 setIsErrorEntry:1];
  agent = [(PLBasebandMessage *)self agent];
  [agent logEntry:v12];

  objc_autoreleasePoolPop(v3);
}

void *__42__PLBBEurekaEventMsg_refreshUTRANRRCState__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F623D = result;
  return result;
}

+ (id)bbEuEvMsgUTRANRRCState
{
  v31[2] = *MEMORY[0x277D85DE8];
  v30[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v28[0] = *MEMORY[0x277D3F568];
  v28[1] = v2;
  v29[0] = &unk_282C1C898;
  v29[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F558];
  v28[2] = *MEMORY[0x277D3F548];
  v28[3] = v3;
  v29[2] = @"refreshRequestHandler";
  v29[3] = MEMORY[0x277CBEC38];
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];
  v31[0] = v25;
  v30[1] = *MEMORY[0x277D3F540];
  v26[0] = @"EventCode";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v27[0] = commonTypeDict_IntegerFormat;
  v26[1] = @"Payload";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v27[1] = commonTypeDict_StringFormat;
  v26[2] = @"Error";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]3 commonTypeDict_BoolFormat];
  v27[2] = commonTypeDict_BoolFormat;
  v26[3] = @"SeqNum";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v27[3] = commonTypeDict_IntegerFormat2;
  v26[4] = @"BBDate";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]5 commonTypeDict_DateFormat];
  v27[4] = commonTypeDict_DateFormat;
  v26[5] = @"TimeCal";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v27[5] = commonTypeDict_IntegerFormat3;
  v26[6] = @"NextState";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]7 commonTypeDict_StringFormat];
  v27[6] = commonTypeDict_StringFormat2;
  v26[7] = @"CurrState";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]8 commonTypeDict_StringFormat];
  v27[7] = commonTypeDict_StringFormat3;
  v26[8] = @"Rate";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat4 = [mEMORY[0x277D3F198]9 commonTypeDict_StringFormat];
  v27[8] = commonTypeDict_StringFormat4;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:9];
  v31[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];

  return v13;
}

- (void)logEventForwardUTRANRRCNextStateAs:(id)as andCurrStateAs:(id)stateAs andRateAs:(id)rateAs
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277D3F180];
  rateAsCopy = rateAs;
  stateAsCopy = stateAs;
  asCopy = as;
  if ([v8 debugEnabled])
  {
    v12 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __82__PLBBEurekaEventMsg_logEventForwardUTRANRRCNextStateAs_andCurrStateAs_andRateAs___block_invoke;
    v28 = &__block_descriptor_40_e5_v8__0lu32l8;
    v29 = v12;
    if (qword_2811F6338 != -1)
    {
      dispatch_once(&qword_2811F6338, &block);
    }

    if (byte_2811F623E == 1)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBEurekaEventMsg logEventForwardUTRANRRCNextStateAs:andCurrStateAs:andRateAs:]", block, v26, v27, v28, v29];
      v14 = MEMORY[0x277D3F178];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaEventMsg.m"];
      lastPathComponent = [v15 lastPathComponent];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaEventMsg logEventForwardUTRANRRCNextStateAs:andCurrStateAs:andRateAs:]"];
      [v14 logMessage:v13 fromFile:lastPathComponent fromFunction:v17 fromLineNumber:1177];

      v18 = PLLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v31 = v13;
        _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v19 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"UTRANRRCState"];
  v20 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v19];
  v21 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"EventCode"];
  [v20 setObject:v21 forKeyedSubscript:@"EventCode"];

  v22 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"Payload"];
  [v20 setObject:v22 forKeyedSubscript:@"Payload"];

  v23 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"Error"];
  [v20 setObject:v23 forKeyedSubscript:@"Error"];

  [v20 setObject:asCopy forKeyedSubscript:@"NextState"];
  [v20 setObject:stateAsCopy forKeyedSubscript:@"CurrState"];
  [v20 setObject:rateAsCopy forKeyedSubscript:@"Rate"];

  [(PLBBEurekaEventMsg *)self sendAndLogPLEntry:v20];
  agent = [(PLBasebandMessage *)self agent];
  [agent modelStateTransitionPower:v20 rat:@"UTRAN" state:stateAsCopy];
}

void *__82__PLBBEurekaEventMsg_logEventForwardUTRANRRCNextStateAs_andCurrStateAs_andRateAs___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F623E = result;
  return result;
}

- (void)refreshEventNotProcessed
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __46__PLBBEurekaEventMsg_refreshEventNotProcessed__block_invoke;
    v17 = &__block_descriptor_40_e5_v8__0lu32l8;
    v18 = v4;
    if (qword_2811F6340 != -1)
    {
      dispatch_once(&qword_2811F6340, &block);
    }

    if (byte_2811F623F == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBEurekaEventMsg refreshEventNotProcessed]", block, v15, v16, v17, v18];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaEventMsg.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaEventMsg refreshEventNotProcessed]"];
      [v6 logMessage:v5 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:1211];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v20 = v5;
        _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v11 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"EventNotProcessed"];
  v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11];
  [v12 setIsErrorEntry:1];
  agent = [(PLBasebandMessage *)self agent];
  [agent logEntry:v12];

  objc_autoreleasePoolPop(v3);
}

void *__46__PLBBEurekaEventMsg_refreshEventNotProcessed__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F623F = result;
  return result;
}

+ (id)bbEuEvMsgEventNotProcessed
{
  v23[2] = *MEMORY[0x277D85DE8];
  v22[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v20[0] = *MEMORY[0x277D3F568];
  v20[1] = v2;
  v21[0] = &unk_282C1C898;
  v21[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F558];
  v20[2] = *MEMORY[0x277D3F548];
  v20[3] = v3;
  v21[2] = @"refreshRequestHandler";
  v21[3] = MEMORY[0x277CBEC38];
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:4];
  v23[0] = v17;
  v22[1] = *MEMORY[0x277D3F540];
  v18[0] = @"EventCode";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v19[0] = commonTypeDict_IntegerFormat;
  v18[1] = @"Payload";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v19[1] = commonTypeDict_StringFormat;
  v18[2] = @"Error";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]3 commonTypeDict_BoolFormat];
  v19[2] = commonTypeDict_BoolFormat;
  v18[3] = @"SeqNum";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v19[3] = commonTypeDict_IntegerFormat2;
  v18[4] = @"BBDate";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]5 commonTypeDict_DateFormat];
  v19[4] = commonTypeDict_DateFormat;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];
  v23[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];

  return v13;
}

- (void)logEventNoneEventNotProcessed
{
  v22 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __51__PLBBEurekaEventMsg_logEventNoneEventNotProcessed__block_invoke;
    v18 = &__block_descriptor_40_e5_v8__0lu32l8;
    v19 = v3;
    if (qword_2811F6348 != -1)
    {
      dispatch_once(&qword_2811F6348, &block);
    }

    if (byte_2811F6240 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBEurekaEventMsg logEventNoneEventNotProcessed]", block, v16, v17, v18, v19];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaEventMsg.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaEventMsg logEventNoneEventNotProcessed]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:1247];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v21 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"EventNotProcessed"];
  v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10];
  v12 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"EventCode"];
  [v11 setObject:v12 forKeyedSubscript:@"EventCode"];

  v13 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"Payload"];
  [v11 setObject:v13 forKeyedSubscript:@"Payload"];

  v14 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"Error"];
  [v11 setObject:v14 forKeyedSubscript:@"Error"];

  [(PLBBEurekaEventMsg *)self sendAndLogPLEntry:v11];
}

void *__51__PLBBEurekaEventMsg_logEventNoneEventNotProcessed__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6240 = result;
  return result;
}

@end