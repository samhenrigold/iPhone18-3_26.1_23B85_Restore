@interface PLBBEurekaLogMsg
+ (id)bbEuLogMsgNameLTESleepMgrStats;
- (PLBBEurekaLogMsg)init;
- (void)addPairWithKey:(id)key andWithVal:(id)val;
- (void)logEventBackwardLTESleepMgrStatsWithVer:(id)ver andML1State:(id)state andSES:(id)s andSDS:(id)dS andStDur:(id)dur andDSlpDur:(id)slpDur andLSlpDur:(id)lSlpDur;
- (void)refreshLTESleepMgrStats;
- (void)sendAndLogPLEntry:(id)entry withName:(id)name withType:(id)type;
- (void)setError:(id)error;
- (void)setEventCode:(unsigned int)code;
- (void)setHeaderWithSeqNum:(id)num andDate:(id)date andTimeCal:(double)cal;
- (void)setPayload:(id)payload;
@end

@implementation PLBBEurekaLogMsg

- (PLBBEurekaLogMsg)init
{
  v20 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __24__PLBBEurekaLogMsg_init__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F6D70 != -1)
    {
      dispatch_once(&qword_2811F6D70, block);
    }

    if (_MergedGlobals_1_66 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBEurekaLogMsg init]"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaLogMsg.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaLogMsg init]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:40];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v19 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v16.receiver = self;
  v16.super_class = PLBBEurekaLogMsg;
  v10 = [(PLBBEurekaLogMsg *)&v16 init];
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    commonInfo = v10->_commonInfo;
    v10->_commonInfo = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    kvPairs = v10->_kvPairs;
    v10->_kvPairs = v13;

    v10->_inited = 1;
  }

  return v10;
}

void *__24__PLBBEurekaLogMsg_init__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_66 = result;
  return result;
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
    block[2] = __33__PLBBEurekaLogMsg_setEventCode___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F6D78 != -1)
    {
      dispatch_once(&qword_2811F6D78, block);
    }

    if (byte_2811F6D61 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBEurekaLogMsg setEventCode:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaLogMsg.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaLogMsg setEventCode:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:69];

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
      v20[2] = __33__PLBBEurekaLogMsg_setEventCode___block_invoke_19;
      v20[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v20[4] = v13;
      if (qword_2811F6D80 != -1)
      {
        dispatch_once(&qword_2811F6D80, v20);
      }

      if (byte_2811F6D62 == 1)
      {
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"set event code with %d", v3];
        v15 = MEMORY[0x277D3F178];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaLogMsg.m"];
        lastPathComponent2 = [v16 lastPathComponent];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaLogMsg setEventCode:]"];
        [v15 logMessage:v14 fromFile:lastPathComponent2 fromFunction:v18 fromLineNumber:77];

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

void *__33__PLBBEurekaLogMsg_setEventCode___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6D61 = result;
  return result;
}

void *__33__PLBBEurekaLogMsg_setEventCode___block_invoke_19(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6D62 = result;
  return result;
}

- (void)setPayload:(id)payload
{
  v23 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __31__PLBBEurekaLogMsg_setPayload___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F6D88 != -1)
    {
      dispatch_once(&qword_2811F6D88, block);
    }

    if (byte_2811F6D63 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBEurekaLogMsg setPayload:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaLogMsg.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaLogMsg setPayload:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:87];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v22 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if (payloadCopy)
  {
    [(NSMutableDictionary *)self->_commonInfo setValue:payloadCopy forKey:@"Payload"];
  }

  else if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v12 = objc_opt_class();
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __31__PLBBEurekaLogMsg_setPayload___block_invoke_28;
    v19[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v19[4] = v12;
    if (qword_2811F6D90 != -1)
    {
      dispatch_once(&qword_2811F6D90, v19);
    }

    if (byte_2811F6D64 == 1)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"bad payload"];
      v14 = MEMORY[0x277D3F178];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaLogMsg.m"];
      lastPathComponent2 = [v15 lastPathComponent];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaLogMsg setPayload:]"];
      [v14 logMessage:v13 fromFile:lastPathComponent2 fromFunction:v17 fromLineNumber:89];

      v18 = PLLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v22 = v13;
        _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

void *__31__PLBBEurekaLogMsg_setPayload___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6D63 = result;
  return result;
}

void *__31__PLBBEurekaLogMsg_setPayload___block_invoke_28(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6D64 = result;
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
    v14 = __29__PLBBEurekaLogMsg_setError___block_invoke;
    v15 = &__block_descriptor_40_e5_v8__0lu32l8;
    v16 = v5;
    if (qword_2811F6D98 != -1)
    {
      dispatch_once(&qword_2811F6D98, &block);
    }

    if (byte_2811F6D65 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBEurekaLogMsg setError:]", block, v13, v14, v15, v16];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaLogMsg.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaLogMsg setError:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:100];

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

void *__29__PLBBEurekaLogMsg_setError___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6D65 = result;
  return result;
}

- (void)sendAndLogPLEntry:(id)entry withName:(id)name withType:(id)type
{
  v54 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  nameCopy = name;
  typeCopy = type;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v11 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__PLBBEurekaLogMsg_sendAndLogPLEntry_withName_withType___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v11;
    if (qword_2811F6DA0 != -1)
    {
      dispatch_once(&qword_2811F6DA0, block);
    }

    if (byte_2811F6D66 == 1)
    {
      v12 = typeCopy;
      v13 = nameCopy;
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBEurekaLogMsg sendAndLogPLEntry:withName:withType:]"];
      v15 = MEMORY[0x277D3F178];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaLogMsg.m"];
      lastPathComponent = [v16 lastPathComponent];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaLogMsg sendAndLogPLEntry:withName:withType:]"];
      [v15 logMessage:v14 fromFile:lastPathComponent fromFunction:v18 fromLineNumber:117];

      v19 = PLLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v53 = v14;
        _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      nameCopy = v13;
      typeCopy = v12;
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v20 = objc_opt_class();
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __56__PLBBEurekaLogMsg_sendAndLogPLEntry_withName_withType___block_invoke_40;
    v50[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v50[4] = v20;
    if (qword_2811F6DA8 != -1)
    {
      dispatch_once(&qword_2811F6DA8, v50);
    }

    if (byte_2811F6D67 == 1)
    {
      v21 = typeCopy;
      v47 = typeCopy;
      v22 = nameCopy;
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sending PLEntry: name=%@ type=%@", nameCopy, v47];
      v24 = MEMORY[0x277D3F178];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaLogMsg.m"];
      lastPathComponent2 = [v25 lastPathComponent];
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaLogMsg sendAndLogPLEntry:withName:withType:]"];
      [v24 logMessage:v23 fromFile:lastPathComponent2 fromFunction:v27 fromLineNumber:118];

      v28 = PLLogCommon();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v53 = v23;
        _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      nameCopy = v22;
      typeCopy = v21;
    }
  }

  v29 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"EventCode"];
  [entryCopy setObject:v29 forKeyedSubscript:@"EventCode"];

  v30 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"Payload"];
  [entryCopy setObject:v30 forKeyedSubscript:@"Payload"];

  v31 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"Error"];
  [entryCopy setObject:v31 forKeyedSubscript:@"Error"];

  v32 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"SeqNum"];
  [entryCopy setObject:v32 forKeyedSubscript:@"SeqNum"];

  v33 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"BBDate"];
  [entryCopy setObject:v33 forKeyedSubscript:@"BBDate"];

  v34 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"TimeCal"];
  [entryCopy setObject:v34 forKeyedSubscript:@"TimeCal"];

  agent = [(PLBasebandMessage *)self agent];

  if (!agent && [MEMORY[0x277D3F180] debugEnabled])
  {
    v36 = objc_opt_class();
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __56__PLBBEurekaLogMsg_sendAndLogPLEntry_withName_withType___block_invoke_46;
    v49[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v49[4] = v36;
    if (qword_2811F6DB0 != -1)
    {
      dispatch_once(&qword_2811F6DB0, v49);
    }

    if (byte_2811F6D68 == 1)
    {
      v48 = typeCopy;
      v37 = nameCopy;
      v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bad agent"];
      v39 = MEMORY[0x277D3F178];
      v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaLogMsg.m"];
      lastPathComponent3 = [v40 lastPathComponent];
      v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaLogMsg sendAndLogPLEntry:withName:withType:]"];
      [v39 logMessage:v38 fromFile:lastPathComponent3 fromFunction:v42 fromLineNumber:129];

      v43 = PLLogCommon();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v53 = v38;
        _os_log_debug_impl(&dword_21A4C6000, v43, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      nameCopy = v37;
      typeCopy = v48;
    }
  }

  v44 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"BBDate"];
  convertFromBasebandToMonotonic = [v44 convertFromBasebandToMonotonic];
  [entryCopy setEntryDate:convertFromBasebandToMonotonic];

  agent2 = [(PLBasebandMessage *)self agent];
  [agent2 logEntry:entryCopy];
}

void *__56__PLBBEurekaLogMsg_sendAndLogPLEntry_withName_withType___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6D66 = result;
  return result;
}

void *__56__PLBBEurekaLogMsg_sendAndLogPLEntry_withName_withType___block_invoke_40(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6D67 = result;
  return result;
}

void *__56__PLBBEurekaLogMsg_sendAndLogPLEntry_withName_withType___block_invoke_46(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6D68 = result;
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
    block[2] = __59__PLBBEurekaLogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v11;
    if (qword_2811F6DB8 != -1)
    {
      dispatch_once(&qword_2811F6DB8, block);
    }

    if (byte_2811F6D69 == 1)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBEurekaLogMsg setHeaderWithSeqNum:andDate:andTimeCal:]"];
      v13 = MEMORY[0x277D3F178];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaLogMsg.m"];
      lastPathComponent = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaLogMsg setHeaderWithSeqNum:andDate:andTimeCal:]"];
      [v13 logMessage:v12 fromFile:lastPathComponent fromFunction:v16 fromLineNumber:144];

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
      v28[2] = __59__PLBBEurekaLogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke_52;
      v28[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v28[4] = v19;
      if (qword_2811F6DC0 != -1)
      {
        dispatch_once(&qword_2811F6DC0, v28);
      }

      if (byte_2811F6D6A == 1)
      {
        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to set seqNum(%@), zero it", 0];
        v21 = MEMORY[0x277D3F178];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaLogMsg.m"];
        lastPathComponent2 = [v22 lastPathComponent];
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaLogMsg setHeaderWithSeqNum:andDate:andTimeCal:]"];
        [v21 logMessage:v20 fromFile:lastPathComponent2 fromFunction:v24 fromLineNumber:146];

        v25 = PLLogCommon();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v31 = v20;
          _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v18 = &unk_282C136E0;
  }

  [(NSMutableDictionary *)self->_commonInfo setObject:v18 forKey:@"SeqNum"];
  [(NSMutableDictionary *)self->_commonInfo setValue:dateCopy forKey:@"BBDate"];

  commonInfo = self->_commonInfo;
  v27 = [MEMORY[0x277CCABB0] numberWithDouble:cal];
  [(NSMutableDictionary *)commonInfo setValue:v27 forKey:@"TimeCal"];
}

void *__59__PLBBEurekaLogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6D69 = result;
  return result;
}

void *__59__PLBBEurekaLogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke_52(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6D6A = result;
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
    block[2] = __46__PLBBEurekaLogMsg_addPairWithKey_andWithVal___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (qword_2811F6DC8 != -1)
    {
      dispatch_once(&qword_2811F6DC8, block);
    }

    if (byte_2811F6D6B == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBEurekaLogMsg addPairWithKey:andWithVal:]"];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaLogMsg.m"];
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaLogMsg addPairWithKey:andWithVal:]"];
      [v10 logMessage:v9 fromFile:lastPathComponent fromFunction:v13 fromLineNumber:161];

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
      v25 = __46__PLBBEurekaLogMsg_addPairWithKey_andWithVal___block_invoke_59;
      v26 = &__block_descriptor_40_e5_v8__0lu32l8;
      v27 = v15;
      if (qword_2811F6DD0 != -1)
      {
        dispatch_once(&qword_2811F6DD0, &v23);
      }

      if (byte_2811F6D6C == 1)
      {
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Add KVPair [%@, %@]", keyCopy, valCopy, v23, v24, v25, v26, v27];
        v17 = MEMORY[0x277D3F178];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaLogMsg.m"];
        lastPathComponent2 = [v18 lastPathComponent];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaLogMsg addPairWithKey:andWithVal:]"];
        [v17 logMessage:v16 fromFile:lastPathComponent2 fromFunction:v20 fromLineNumber:163];

        v21 = PLLogCommon();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v30 = v16;
          _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    kvPairs = [(PLBBEurekaLogMsg *)self kvPairs];
    [kvPairs setObject:valCopy forKey:keyCopy];
  }
}

void *__46__PLBBEurekaLogMsg_addPairWithKey_andWithVal___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6D6B = result;
  return result;
}

void *__46__PLBBEurekaLogMsg_addPairWithKey_andWithVal___block_invoke_59(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6D6C = result;
  return result;
}

- (void)refreshLTESleepMgrStats
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __43__PLBBEurekaLogMsg_refreshLTESleepMgrStats__block_invoke;
    v17 = &__block_descriptor_40_e5_v8__0lu32l8;
    v18 = v4;
    if (qword_2811F6DD8 != -1)
    {
      dispatch_once(&qword_2811F6DD8, &block);
    }

    if (byte_2811F6D6D == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBEurekaLogMsg refreshLTESleepMgrStats]", block, v15, v16, v17, v18];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaLogMsg.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaLogMsg refreshLTESleepMgrStats]"];
      [v6 logMessage:v5 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:183];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v20 = v5;
        _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v11 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"LTESleepMgrStats"];
  v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11];
  [v12 setIsErrorEntry:1];
  agent = [(PLBasebandMessage *)self agent];
  [agent logEntry:v12];

  objc_autoreleasePoolPop(v3);
}

void *__43__PLBBEurekaLogMsg_refreshLTESleepMgrStats__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6D6D = result;
  return result;
}

+ (id)bbEuLogMsgNameLTESleepMgrStats
{
  v35[2] = *MEMORY[0x277D85DE8];
  v34[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4F8];
  v32[0] = *MEMORY[0x277D3F568];
  v32[1] = v2;
  v3 = *MEMORY[0x277D3F548];
  v32[2] = *MEMORY[0x277D3F508];
  v32[3] = v3;
  v33[0] = &unk_282C1CE18;
  v33[1] = MEMORY[0x277CBEC28];
  v33[2] = MEMORY[0x277CBEC28];
  v33[3] = @"refreshRequestHandler";
  v32[4] = *MEMORY[0x277D3F558];
  v33[4] = MEMORY[0x277CBEC38];
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:5];
  v35[0] = v29;
  v34[1] = *MEMORY[0x277D3F540];
  v30[0] = @"EventCode";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v31[0] = commonTypeDict_IntegerFormat;
  v30[1] = @"Payload";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v31[1] = commonTypeDict_StringFormat;
  v30[2] = @"Error";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]3 commonTypeDict_BoolFormat];
  v31[2] = commonTypeDict_BoolFormat;
  v30[3] = @"Version";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v31[3] = commonTypeDict_IntegerFormat2;
  v30[4] = @"ML1State";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v31[4] = commonTypeDict_IntegerFormat3;
  v30[5] = @"SleepEnableSclk";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v31[5] = commonTypeDict_IntegerFormat4;
  v30[6] = @"SleepDisabledSclk";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v31[6] = commonTypeDict_IntegerFormat5;
  v30[7] = @"StateDuration";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v31[7] = commonTypeDict_IntegerFormat6;
  v30[8] = @"DeepSleepDuration";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v31[8] = commonTypeDict_IntegerFormat7;
  v30[9] = @"LightSleepDuration";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
  v31[9] = commonTypeDict_IntegerFormat8;
  v30[10] = @"BBDate";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]11 commonTypeDict_DateFormat];
  v31[10] = commonTypeDict_DateFormat;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:11];
  v35[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];

  return v13;
}

- (void)logEventBackwardLTESleepMgrStatsWithVer:(id)ver andML1State:(id)state andSES:(id)s andSDS:(id)dS andStDur:(id)dur andDSlpDur:(id)slpDur andLSlpDur:(id)lSlpDur
{
  v41 = *MEMORY[0x277D85DE8];
  v16 = MEMORY[0x277D3F180];
  lSlpDurCopy = lSlpDur;
  slpDurCopy = slpDur;
  durCopy = dur;
  dSCopy = dS;
  sCopy = s;
  stateCopy = state;
  verCopy = ver;
  if ([v16 debugEnabled])
  {
    v19 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __117__PLBBEurekaLogMsg_logEventBackwardLTESleepMgrStatsWithVer_andML1State_andSES_andSDS_andStDur_andDSlpDur_andLSlpDur___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v19;
    if (qword_2811F6DE0 != -1)
    {
      dispatch_once(&qword_2811F6DE0, block);
    }

    if (byte_2811F6D6E == 1)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBEurekaLogMsg logEventBackwardLTESleepMgrStatsWithVer:andML1State:andSES:andSDS:andStDur:andDSlpDur:andLSlpDur:]"];
      v21 = MEMORY[0x277D3F178];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaLogMsg.m"];
      lastPathComponent = [v22 lastPathComponent];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaLogMsg logEventBackwardLTESleepMgrStatsWithVer:andML1State:andSES:andSDS:andStDur:andDSlpDur:andLSlpDur:]"];
      [v21 logMessage:v20 fromFile:lastPathComponent fromFunction:v24 fromLineNumber:234];

      v25 = PLLogCommon();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v40 = v20;
        _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v26 = *MEMORY[0x277D3F5C8];
  v27 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"LTESleepMgrStats"];
  v28 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v27];
  v29 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"EventCode"];
  [v28 setObject:v29 forKeyedSubscript:@"EventCode"];

  v30 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"Payload"];
  [v28 setObject:v30 forKeyedSubscript:@"Payload"];

  v31 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"Error"];
  [v28 setObject:v31 forKeyedSubscript:@"Error"];

  [v28 setObject:verCopy forKeyedSubscript:@"Version"];
  [v28 setObject:stateCopy forKeyedSubscript:@"ML1State"];

  [v28 setObject:sCopy forKeyedSubscript:@"SleepEnableSclk"];
  [v28 setObject:dSCopy forKeyedSubscript:@"SleepDisabledSclk"];

  [v28 setObject:durCopy forKeyedSubscript:@"StateDuration"];
  [v28 setObject:slpDurCopy forKeyedSubscript:@"DeepSleepDuration"];

  [v28 setObject:lSlpDurCopy forKeyedSubscript:@"LightSleepDuration"];
  [(PLBBEurekaLogMsg *)self sendAndLogPLEntry:v28 withName:@"LTESleepMgrStats" withType:v26];
  agent = [(PLBasebandMessage *)self agent];
  [agent modelLTESLEEPMGRPower:v28];
}

void *__117__PLBBEurekaLogMsg_logEventBackwardLTESleepMgrStatsWithVer_andML1State_andSES_andSDS_andStDur_andDSlpDur_andLSlpDur___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6D6E = result;
  return result;
}

@end