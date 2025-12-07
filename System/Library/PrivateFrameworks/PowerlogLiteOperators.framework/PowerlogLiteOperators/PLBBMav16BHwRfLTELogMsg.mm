@interface PLBBMav16BHwRfLTELogMsg
+ (id)entryEventBackwardDefinitionBBMav16BHwRfLTE;
- (PLBBMav16BHwRfLTELogMsg)init;
- (id)logEventBackwardBBMav16BHwRfLTE;
- (void)addPairWithKey:(id)key andWithVal:(id)val;
- (void)populateMav16BEntry:(id)entry;
- (void)refreshMav16BBBRfLTE;
- (void)sendAndLogPLEntry:(id)entry withName:(id)name withType:(id)type;
- (void)setHeaderWithSeqNum:(id)num andDate:(id)date andTimeCal:(double)cal;
@end

@implementation PLBBMav16BHwRfLTELogMsg

- (PLBBMav16BHwRfLTELogMsg)init
{
  v20 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __31__PLBBMav16BHwRfLTELogMsg_init__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F40E0 != -1)
    {
      dispatch_once(&qword_2811F40E0, block);
    }

    if (_MergedGlobals_1_15 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav16BHwRfLTELogMsg init]"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwRfLTELogMsg.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwRfLTELogMsg init]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:43];

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
  v16.super_class = PLBBMav16BHwRfLTELogMsg;
  v10 = [(PLBBMsgRoot *)&v16 init];
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

void *__31__PLBBMav16BHwRfLTELogMsg_init__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_15 = result;
  return result;
}

- (void)sendAndLogPLEntry:(id)entry withName:(id)name withType:(id)type
{
  v51 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  nameCopy = name;
  typeCopy = type;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v11 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__PLBBMav16BHwRfLTELogMsg_sendAndLogPLEntry_withName_withType___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v11;
    if (qword_2811F40E8 != -1)
    {
      dispatch_once(&qword_2811F40E8, block);
    }

    if (byte_2811F40D1 == 1)
    {
      v44 = typeCopy;
      v12 = nameCopy;
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav16BHwRfLTELogMsg sendAndLogPLEntry:withName:withType:]"];
      v14 = MEMORY[0x277D3F178];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwRfLTELogMsg.m"];
      lastPathComponent = [v15 lastPathComponent];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwRfLTELogMsg sendAndLogPLEntry:withName:withType:]"];
      [v14 logMessage:v13 fromFile:lastPathComponent fromFunction:v17 fromLineNumber:62];

      v18 = PLLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v50 = v13;
        _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      nameCopy = v12;
      typeCopy = v44;
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v19 = objc_opt_class();
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __63__PLBBMav16BHwRfLTELogMsg_sendAndLogPLEntry_withName_withType___block_invoke_372;
    v47[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v47[4] = v19;
    if (qword_2811F40F0 != -1)
    {
      dispatch_once(&qword_2811F40F0, v47);
    }

    if (byte_2811F40D2 == 1)
    {
      v20 = typeCopy;
      v43 = typeCopy;
      v21 = nameCopy;
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sending PLEntry: name=%@ type=%@", nameCopy, v43];
      v23 = MEMORY[0x277D3F178];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwRfLTELogMsg.m"];
      lastPathComponent2 = [v24 lastPathComponent];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwRfLTELogMsg sendAndLogPLEntry:withName:withType:]"];
      [v23 logMessage:v22 fromFile:lastPathComponent2 fromFunction:v26 fromLineNumber:63];

      v27 = PLLogCommon();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v50 = v22;
        _os_log_debug_impl(&dword_21A4C6000, v27, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      nameCopy = v21;
      typeCopy = v20;
    }
  }

  v28 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"SeqNum"];
  [entryCopy setObject:v28 forKeyedSubscript:@"SeqNum"];

  v29 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"BBDate"];
  [entryCopy setObject:v29 forKeyedSubscript:@"BBDate"];

  v30 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"TimeCal"];
  [entryCopy setObject:v30 forKeyedSubscript:@"TimeCal"];

  agent = [(PLBBMsgRoot *)self agent];

  if (!agent && [MEMORY[0x277D3F180] debugEnabled])
  {
    v32 = objc_opt_class();
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __63__PLBBMav16BHwRfLTELogMsg_sendAndLogPLEntry_withName_withType___block_invoke_378;
    v46[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v46[4] = v32;
    if (qword_2811F40F8 != -1)
    {
      dispatch_once(&qword_2811F40F8, v46);
    }

    if (byte_2811F40D3 == 1)
    {
      v45 = typeCopy;
      v33 = nameCopy;
      v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bad agent"];
      v35 = MEMORY[0x277D3F178];
      v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwRfLTELogMsg.m"];
      lastPathComponent3 = [v36 lastPathComponent];
      v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwRfLTELogMsg sendAndLogPLEntry:withName:withType:]"];
      [v35 logMessage:v34 fromFile:lastPathComponent3 fromFunction:v38 fromLineNumber:70];

      v39 = PLLogCommon();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v50 = v34;
        _os_log_debug_impl(&dword_21A4C6000, v39, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      nameCopy = v33;
      typeCopy = v45;
    }
  }

  v40 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"BBDate"];
  convertFromBasebandToMonotonic = [v40 convertFromBasebandToMonotonic];
  [entryCopy setEntryDate:convertFromBasebandToMonotonic];

  agent2 = [(PLBBMsgRoot *)self agent];
  [agent2 logEntry:entryCopy];
}

void *__63__PLBBMav16BHwRfLTELogMsg_sendAndLogPLEntry_withName_withType___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F40D1 = result;
  return result;
}

void *__63__PLBBMav16BHwRfLTELogMsg_sendAndLogPLEntry_withName_withType___block_invoke_372(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F40D2 = result;
  return result;
}

void *__63__PLBBMav16BHwRfLTELogMsg_sendAndLogPLEntry_withName_withType___block_invoke_378(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F40D3 = result;
  return result;
}

- (void)setHeaderWithSeqNum:(id)num andDate:(id)date andTimeCal:(double)cal
{
  v29 = *MEMORY[0x277D85DE8];
  numCopy = num;
  dateCopy = date;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v10 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__PLBBMav16BHwRfLTELogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v10;
    if (qword_2811F4100 != -1)
    {
      dispatch_once(&qword_2811F4100, block);
    }

    if (byte_2811F40D4 == 1)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav16BHwRfLTELogMsg setHeaderWithSeqNum:andDate:andTimeCal:]"];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwRfLTELogMsg.m"];
      lastPathComponent = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwRfLTELogMsg setHeaderWithSeqNum:andDate:andTimeCal:]"];
      [v12 logMessage:v11 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:83];

      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v28 = v11;
        _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if (numCopy && dateCopy)
  {
    [(NSMutableDictionary *)self->_commonInfo setObject:numCopy forKey:@"SeqNum"];
    [(NSMutableDictionary *)self->_commonInfo setObject:dateCopy forKey:@"BBDate"];
    commonInfo = self->_commonInfo;
    v18 = [MEMORY[0x277CCABB0] numberWithDouble:cal];
    [(NSMutableDictionary *)commonInfo setValue:v18 forKey:@"TimeCal"];
LABEL_11:

    goto LABEL_19;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v19 = objc_opt_class();
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __66__PLBBMav16BHwRfLTELogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke_384;
    v25[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v25[4] = v19;
    if (qword_2811F4108 != -1)
    {
      dispatch_once(&qword_2811F4108, v25);
    }

    if (byte_2811F40D5 == 1)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"unable to set seqNum, date, timeCal"];
      v20 = MEMORY[0x277D3F178];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwRfLTELogMsg.m"];
      lastPathComponent2 = [v21 lastPathComponent];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwRfLTELogMsg setHeaderWithSeqNum:andDate:andTimeCal:]"];
      [v20 logMessage:v18 fromFile:lastPathComponent2 fromFunction:v23 fromLineNumber:85];

      v24 = PLLogCommon();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v28 = v18;
        _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_11;
    }
  }

LABEL_19:
}

void *__66__PLBBMav16BHwRfLTELogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F40D4 = result;
  return result;
}

void *__66__PLBBMav16BHwRfLTELogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke_384(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F40D5 = result;
  return result;
}

- (void)addPairWithKey:(id)key andWithVal:(id)val
{
  v35 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  valCopy = val;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__PLBBMav16BHwRfLTELogMsg_addPairWithKey_andWithVal___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (qword_2811F4110 != -1)
    {
      dispatch_once(&qword_2811F4110, block);
    }

    if (byte_2811F40D6 == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav16BHwRfLTELogMsg addPairWithKey:andWithVal:]"];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwRfLTELogMsg.m"];
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwRfLTELogMsg addPairWithKey:andWithVal:]"];
      [v10 logMessage:v9 fromFile:lastPathComponent fromFunction:v13 fromLineNumber:101];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v34 = v9;
        _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  debugEnabled = [MEMORY[0x277D3F180] debugEnabled];
  if (keyCopy)
  {
    if (debugEnabled)
    {
      v16 = objc_opt_class();
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __53__PLBBMav16BHwRfLTELogMsg_addPairWithKey_andWithVal___block_invoke_397;
      v30[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v30[4] = v16;
      if (qword_2811F4120 != -1)
      {
        dispatch_once(&qword_2811F4120, v30);
      }

      if (byte_2811F40D8 == 1)
      {
        valCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Add KVPair [%@, %@]", keyCopy, valCopy];
        v18 = MEMORY[0x277D3F178];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwRfLTELogMsg.m"];
        lastPathComponent2 = [v19 lastPathComponent];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwRfLTELogMsg addPairWithKey:andWithVal:]"];
        [v18 logMessage:valCopy fromFile:lastPathComponent2 fromFunction:v21 fromLineNumber:107];

        v22 = PLLogCommon();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v34 = valCopy;
          _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    kvPairs = [(PLBBMav16BHwRfLTELogMsg *)self kvPairs];
    [kvPairs setObject:valCopy forKey:keyCopy];
LABEL_17:

    goto LABEL_25;
  }

  if (debugEnabled)
  {
    v24 = objc_opt_class();
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __53__PLBBMav16BHwRfLTELogMsg_addPairWithKey_andWithVal___block_invoke_391;
    v31[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v31[4] = v24;
    if (qword_2811F4118 != -1)
    {
      dispatch_once(&qword_2811F4118, v31);
    }

    if (byte_2811F40D7 == 1)
    {
      kvPairs = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: nil key for kvPair not expected, return"];
      v25 = MEMORY[0x277D3F178];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwRfLTELogMsg.m"];
      lastPathComponent3 = [v26 lastPathComponent];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwRfLTELogMsg addPairWithKey:andWithVal:]"];
      [v25 logMessage:kvPairs fromFile:lastPathComponent3 fromFunction:v28 fromLineNumber:104];

      v29 = PLLogCommon();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v34 = kvPairs;
        _os_log_debug_impl(&dword_21A4C6000, v29, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_17;
    }
  }

LABEL_25:
}

void *__53__PLBBMav16BHwRfLTELogMsg_addPairWithKey_andWithVal___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F40D6 = result;
  return result;
}

void *__53__PLBBMav16BHwRfLTELogMsg_addPairWithKey_andWithVal___block_invoke_391(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F40D7 = result;
  return result;
}

void *__53__PLBBMav16BHwRfLTELogMsg_addPairWithKey_andWithVal___block_invoke_397(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F40D8 = result;
  return result;
}

+ (id)entryEventBackwardDefinitionBBMav16BHwRfLTE
{
  v123[2] = *MEMORY[0x277D85DE8];
  v122[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v120[0] = *MEMORY[0x277D3F568];
  v120[1] = v2;
  v121[0] = &unk_282C1BE18;
  v121[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F558];
  v120[2] = *MEMORY[0x277D3F548];
  v120[3] = v3;
  v121[2] = @"refreshMav16BBBRfLTE";
  v121[3] = MEMORY[0x277CBEC38];
  v84 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v121 forKeys:v120 count:4];
  v123[0] = v84;
  v122[1] = *MEMORY[0x277D3F540];
  v118[0] = @"SeqNum";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v119[0] = commonTypeDict_IntegerFormat;
  v118[1] = @"BBDate";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]2 commonTypeDict_DateFormat];
  v119[1] = commonTypeDict_DateFormat;
  v118[2] = @"LogDuration";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198]3 commonTypeDict_RealFormat];
  v119[2] = commonTypeDict_RealFormat;
  v118[3] = @"DupMode";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v119[3] = commonTypeDict_IntegerFormat2;
  v118[4] = @"PCC_Band";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v119[4] = commonTypeDict_IntegerFormat3;
  v118[5] = @"PCC_BW";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v119[5] = commonTypeDict_IntegerFormat4;
  v118[6] = @"SCC1_Band";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v119[6] = commonTypeDict_IntegerFormat5;
  v118[7] = @"SCC1_BW";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v119[7] = commonTypeDict_IntegerFormat6;
  v118[8] = @"SCC2_Band";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v119[8] = commonTypeDict_IntegerFormat7;
  v118[9] = @"SCC2_BW";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
  v119[9] = commonTypeDict_IntegerFormat8;
  v118[10] = @"SCC3_Band";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
  v119[10] = commonTypeDict_IntegerFormat9;
  v118[11] = @"SCC3_BW";
  mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat];
  v119[11] = commonTypeDict_IntegerFormat10;
  v118[12] = @"DLTBSzArr";
  v5 = *MEMORY[0x277D3F598];
  v115[0] = *MEMORY[0x277D3F5A8];
  v4 = v115[0];
  v115[1] = v5;
  v117[0] = &unk_282C102F0;
  v117[1] = &unk_282C10308;
  v116 = *MEMORY[0x277D3F5A0];
  v6 = v116;
  v117[2] = &unk_282C10320;
  v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v117 forKeys:v115 count:3];
  v119[12] = v59;
  v118[13] = @"TxPwrBktArr";
  v113[0] = v4;
  v113[1] = v5;
  v114[0] = &unk_282C102F0;
  v114[1] = &unk_282C10338;
  v113[2] = v6;
  v114[2] = &unk_282C10320;
  v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v114 forKeys:v113 count:3];
  v119[13] = v58;
  v118[14] = @"CASCCStateArr";
  v111[0] = v4;
  v111[1] = v5;
  v112[0] = &unk_282C102F0;
  v112[1] = &unk_282C10350;
  v111[2] = v6;
  v112[2] = &unk_282C10320;
  v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v112 forKeys:v111 count:3];
  v119[14] = v57;
  v118[15] = @"ULCACStateArr";
  v109[0] = v4;
  v109[1] = v5;
  v110[0] = &unk_282C102F0;
  v110[1] = &unk_282C10368;
  v109[2] = v6;
  v110[2] = &unk_282C10320;
  v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v110 forKeys:v109 count:3];
  v119[15] = v56;
  v118[16] = @"kRfActRxTxArr";
  v107[0] = v4;
  v107[1] = v5;
  v108[0] = &unk_282C102F0;
  v108[1] = &unk_282C10380;
  v107[2] = v6;
  v108[2] = &unk_282C10320;
  v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v108 forKeys:v107 count:3];
  v119[16] = v55;
  v118[17] = @"SleepStateIdleArr";
  v105[0] = v4;
  v105[1] = v5;
  v106[0] = &unk_282C102F0;
  v106[1] = &unk_282C10398;
  v105[2] = v6;
  v106[2] = &unk_282C10320;
  v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v106 forKeys:v105 count:3];
  v119[17] = v54;
  v118[18] = @"SleepStateConnArr";
  v103[0] = v4;
  v103[1] = v5;
  v104[0] = &unk_282C102F0;
  v104[1] = &unk_282C10398;
  v103[2] = v6;
  v104[2] = &unk_282C10320;
  v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v104 forKeys:v103 count:3];
  v119[18] = v53;
  v118[19] = @"RfRSRPIdleArr";
  v101[0] = v4;
  v101[1] = v5;
  v102[0] = &unk_282C102F0;
  v102[1] = &unk_282C10380;
  v101[2] = v6;
  v102[2] = &unk_282C10320;
  v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v102 forKeys:v101 count:3];
  v119[19] = v52;
  v118[20] = @"RfRSRPConnArr";
  v99[0] = v4;
  v99[1] = v5;
  v100[0] = &unk_282C102F0;
  v100[1] = &unk_282C10380;
  v99[2] = v6;
  v100[2] = &unk_282C10320;
  v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v100 forKeys:v99 count:3];
  v119[20] = v51;
  v118[21] = @"RfSINRIdleArr";
  v97[0] = v4;
  v97[1] = v5;
  v98[0] = &unk_282C102F0;
  v98[1] = &unk_282C10380;
  v97[2] = v6;
  v98[2] = &unk_282C10320;
  v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v98 forKeys:v97 count:3];
  v119[21] = v50;
  v118[22] = @"RfSINRConnArr";
  v95[0] = v4;
  v95[1] = v5;
  v96[0] = &unk_282C102F0;
  v96[1] = &unk_282C10380;
  v95[2] = v6;
  v96[2] = &unk_282C10320;
  v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v96 forKeys:v95 count:3];
  v119[22] = v49;
  v118[23] = @"RfNLICArr";
  v93[0] = v4;
  v93[1] = v5;
  v94[0] = &unk_282C102F0;
  v94[1] = &unk_282C10368;
  v93[2] = v6;
  v94[2] = &unk_282C10320;
  v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v94 forKeys:v93 count:3];
  v119[23] = v48;
  v118[24] = @"ARD_RxD_Off_Duration";
  mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat11 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat];
  v119[24] = commonTypeDict_IntegerFormat11;
  v118[25] = @"uSleep_PCC";
  mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat12 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat];
  v119[25] = commonTypeDict_IntegerFormat12;
  v118[26] = @"uSleep_SCC1";
  mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat13 = [mEMORY[0x277D3F198]15 commonTypeDict_IntegerFormat];
  v119[26] = commonTypeDict_IntegerFormat13;
  v118[27] = @"uSleep_SCC2";
  mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat14 = [mEMORY[0x277D3F198]16 commonTypeDict_IntegerFormat];
  v119[27] = commonTypeDict_IntegerFormat14;
  v118[28] = @"uSleep_SCC3";
  mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat15 = [mEMORY[0x277D3F198]17 commonTypeDict_IntegerFormat];
  v119[28] = commonTypeDict_IntegerFormat15;
  v118[29] = @"HSIC_PCC_OffOn";
  v91[0] = v4;
  v91[1] = v5;
  v92[0] = &unk_282C102F0;
  v92[1] = &unk_282C103B0;
  v91[2] = v6;
  v92[2] = &unk_282C10320;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v92 forKeys:v91 count:3];
  v119[29] = v37;
  v118[30] = @"HSIC_SCC1_OffOn";
  v89[0] = v4;
  v89[1] = v5;
  v90[0] = &unk_282C102F0;
  v90[1] = &unk_282C103B0;
  v89[2] = v6;
  v90[2] = &unk_282C10320;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:v89 count:3];
  v119[30] = v36;
  v118[31] = @"HSIC_SCC2_OffOn";
  v87[0] = v4;
  v87[1] = v5;
  v88[0] = &unk_282C102F0;
  v88[1] = &unk_282C103B0;
  v87[2] = v6;
  v88[2] = &unk_282C10320;
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v87 count:3];
  v119[31] = v35;
  v118[32] = @"HSIC_SCC3_OffOn";
  v85[0] = v4;
  v85[1] = v5;
  v86[0] = &unk_282C102F0;
  v86[1] = &unk_282C103B0;
  v85[2] = v6;
  v86[2] = &unk_282C10320;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:v85 count:3];
  v119[32] = v34;
  v118[33] = @"PCC_ARX_Off";
  mEMORY[0x277D3F198]18 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat16 = [mEMORY[0x277D3F198]18 commonTypeDict_IntegerFormat];
  v119[33] = commonTypeDict_IntegerFormat16;
  v118[34] = @"SCC1_ARX_Off";
  mEMORY[0x277D3F198]19 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat17 = [mEMORY[0x277D3F198]19 commonTypeDict_IntegerFormat];
  v119[34] = commonTypeDict_IntegerFormat17;
  v118[35] = @"SCC2_ARX_Off";
  mEMORY[0x277D3F198]20 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat18 = [mEMORY[0x277D3F198]20 commonTypeDict_IntegerFormat];
  v119[35] = commonTypeDict_IntegerFormat18;
  v118[36] = @"SCC3_ARX_Off";
  mEMORY[0x277D3F198]21 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat19 = [mEMORY[0x277D3F198]21 commonTypeDict_IntegerFormat];
  v119[36] = commonTypeDict_IntegerFormat19;
  v118[37] = @"PCC_ARX_Baseline";
  mEMORY[0x277D3F198]22 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat20 = [mEMORY[0x277D3F198]22 commonTypeDict_IntegerFormat];
  v119[37] = commonTypeDict_IntegerFormat20;
  v118[38] = @"SCC1_ARX_Baseline";
  mEMORY[0x277D3F198]23 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat21 = [mEMORY[0x277D3F198]23 commonTypeDict_IntegerFormat];
  v119[38] = commonTypeDict_IntegerFormat21;
  v118[39] = @"SCC2_ARX_Baseline";
  mEMORY[0x277D3F198]24 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat22 = [mEMORY[0x277D3F198]24 commonTypeDict_IntegerFormat];
  v119[39] = commonTypeDict_IntegerFormat22;
  v118[40] = @"SCC3_ARX_Baseline";
  mEMORY[0x277D3F198]25 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat23 = [mEMORY[0x277D3F198]25 commonTypeDict_IntegerFormat];
  v119[40] = commonTypeDict_IntegerFormat23;
  v118[41] = @"PCC_ARX_QICE";
  mEMORY[0x277D3F198]26 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat24 = [mEMORY[0x277D3F198]26 commonTypeDict_IntegerFormat];
  v119[41] = commonTypeDict_IntegerFormat24;
  v118[42] = @"SCC1_ARX_QICE";
  mEMORY[0x277D3F198]27 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat25 = [mEMORY[0x277D3F198]27 commonTypeDict_IntegerFormat];
  v119[42] = commonTypeDict_IntegerFormat25;
  v118[43] = @"SCC2_ARX_QICE";
  mEMORY[0x277D3F198]28 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat26 = [mEMORY[0x277D3F198]28 commonTypeDict_IntegerFormat];
  v119[43] = commonTypeDict_IntegerFormat26;
  v118[44] = @"SCC3_ARX_QICE";
  mEMORY[0x277D3F198]29 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat27 = [mEMORY[0x277D3F198]29 commonTypeDict_IntegerFormat];
  v119[44] = commonTypeDict_IntegerFormat27;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v119 forKeys:v118 count:45];
  v123[1] = v15;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v123 forKeys:v122 count:2];

  return v17;
}

- (void)refreshMav16BBBRfLTE
{
  v2 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v2);
}

- (id)logEventBackwardBBMav16BHwRfLTE
{
  v23 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __58__PLBBMav16BHwRfLTELogMsg_logEventBackwardBBMav16BHwRfLTE__block_invoke;
    v17 = &__block_descriptor_40_e5_v8__0lu32l8;
    v18 = v3;
    if (qword_2811F4128 != -1)
    {
      dispatch_once(&qword_2811F4128, &block);
    }

    if (byte_2811F40D9 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav16BHwRfLTELogMsg logEventBackwardBBMav16BHwRfLTE]", block, v15, v16, v17, v18];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwRfLTELogMsg.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwRfLTELogMsg logEventBackwardBBMav16BHwRfLTE]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:264];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v22 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"BBMavHwRfLTE"];
  v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10];
  [(PLBBMav16BHwRfLTELogMsg *)self populateMav16BEntry:v11];
  v19[0] = @"entry";
  v19[1] = @"entryKey";
  v20[0] = v11;
  v20[1] = v10;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

  return v12;
}

void *__58__PLBBMav16BHwRfLTELogMsg_logEventBackwardBBMav16BHwRfLTE__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F40D9 = result;
  return result;
}

- (void)populateMav16BEntry:(id)entry
{
  commonInfo = self->_commonInfo;
  entryCopy = entry;
  v6 = [(NSMutableDictionary *)commonInfo objectForKey:@"BBDate"];
  convertFromBasebandToMonotonic = [v6 convertFromBasebandToMonotonic];
  [entryCopy setEntryDate:convertFromBasebandToMonotonic];

  v8 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"SeqNum"];
  [entryCopy setObject:v8 forKeyedSubscript:@"SeqNum"];

  v9 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"BBDate"];
  [entryCopy setObject:v9 forKeyedSubscript:@"BBDate"];

  logDuration = [(PLBBMav16BHwRfLTELogMsg *)self logDuration];
  [entryCopy setObject:logDuration forKeyedSubscript:@"LogDuration"];

  dupMode = [(PLBBMav16BHwRfLTELogMsg *)self dupMode];
  [entryCopy setObject:dupMode forKeyedSubscript:@"DupMode"];

  pCCFreq = [(PLBBMav16BHwRfLTELogMsg *)self PCCFreq];
  [entryCopy setObject:pCCFreq forKeyedSubscript:@"PCC_Band"];

  pCCBw = [(PLBBMav16BHwRfLTELogMsg *)self PCCBw];
  [entryCopy setObject:pCCBw forKeyedSubscript:@"PCC_BW"];

  sCC1Freq = [(PLBBMav16BHwRfLTELogMsg *)self SCC1Freq];
  [entryCopy setObject:sCC1Freq forKeyedSubscript:@"SCC1_Band"];

  sCC1Bw = [(PLBBMav16BHwRfLTELogMsg *)self SCC1Bw];
  [entryCopy setObject:sCC1Bw forKeyedSubscript:@"SCC1_BW"];

  sCC2Freq = [(PLBBMav16BHwRfLTELogMsg *)self SCC2Freq];
  [entryCopy setObject:sCC2Freq forKeyedSubscript:@"SCC2_Band"];

  sCC2Bw = [(PLBBMav16BHwRfLTELogMsg *)self SCC2Bw];
  [entryCopy setObject:sCC2Bw forKeyedSubscript:@"SCC2_BW"];

  sCC3Freq = [(PLBBMav16BHwRfLTELogMsg *)self SCC3Freq];
  [entryCopy setObject:sCC3Freq forKeyedSubscript:@"SCC3_Band"];

  sCC3Bw = [(PLBBMav16BHwRfLTELogMsg *)self SCC3Bw];
  [entryCopy setObject:sCC3Bw forKeyedSubscript:@"SCC3_BW"];

  dlTBSzCnt = [(PLBBMav16BHwRfLTELogMsg *)self dlTBSzCnt];
  [entryCopy setObject:dlTBSzCnt forKeyedSubscript:@"DLTBSzArr"];

  txPwrCnt = [(PLBBMav16BHwRfLTELogMsg *)self txPwrCnt];
  [entryCopy setObject:txPwrCnt forKeyedSubscript:@"TxPwrBktArr"];

  caSCCCnt = [(PLBBMav16BHwRfLTELogMsg *)self caSCCCnt];
  [entryCopy setObject:caSCCCnt forKeyedSubscript:@"CASCCStateArr"];

  ulCaSCCCnt = [(PLBBMav16BHwRfLTELogMsg *)self ulCaSCCCnt];
  [entryCopy setObject:ulCaSCCCnt forKeyedSubscript:@"ULCACStateArr"];

  actRxTxCnt = [(PLBBMav16BHwRfLTELogMsg *)self actRxTxCnt];
  [entryCopy setObject:actRxTxCnt forKeyedSubscript:@"kRfActRxTxArr"];

  sleepStateIdleCnt = [(PLBBMav16BHwRfLTELogMsg *)self sleepStateIdleCnt];
  [entryCopy setObject:sleepStateIdleCnt forKeyedSubscript:@"SleepStateIdleArr"];

  sleepStateConnCnt = [(PLBBMav16BHwRfLTELogMsg *)self sleepStateConnCnt];
  [entryCopy setObject:sleepStateConnCnt forKeyedSubscript:@"SleepStateConnArr"];

  rsrpIdleCnt = [(PLBBMav16BHwRfLTELogMsg *)self rsrpIdleCnt];
  [entryCopy setObject:rsrpIdleCnt forKeyedSubscript:@"RfRSRPIdleArr"];

  rsrpConnCnt = [(PLBBMav16BHwRfLTELogMsg *)self rsrpConnCnt];
  [entryCopy setObject:rsrpConnCnt forKeyedSubscript:@"RfRSRPConnArr"];

  sinrIdleCnt = [(PLBBMav16BHwRfLTELogMsg *)self sinrIdleCnt];
  [entryCopy setObject:sinrIdleCnt forKeyedSubscript:@"RfSINRIdleArr"];

  sinrConnCnt = [(PLBBMav16BHwRfLTELogMsg *)self sinrConnCnt];
  [entryCopy setObject:sinrConnCnt forKeyedSubscript:@"RfSINRConnArr"];

  arxStateCnt = [(PLBBMav16BHwRfLTELogMsg *)self arxStateCnt];
  [entryCopy setObject:arxStateCnt forKeyedSubscript:@"RfARXArr"];

  nlicStateCnt = [(PLBBMav16BHwRfLTELogMsg *)self nlicStateCnt];
  [entryCopy setObject:nlicStateCnt forKeyedSubscript:@"RfNLICArr"];

  bpeStats = [(PLBBMav16BHwRfLTELogMsg *)self bpeStats];
  [entryCopy setObject:bpeStats forKeyedSubscript:@"RfBPEArr"];

  ardRxDOff = [(PLBBMav16BHwRfLTELogMsg *)self ardRxDOff];
  [entryCopy setObject:ardRxDOff forKeyedSubscript:@"ARD_RxD_Off_Duration"];

  uSleepPCCCnt = [(PLBBMav16BHwRfLTELogMsg *)self uSleepPCCCnt];
  [entryCopy setObject:uSleepPCCCnt forKeyedSubscript:@"uSleep_PCC"];

  uSleepSCC1Cnt = [(PLBBMav16BHwRfLTELogMsg *)self uSleepSCC1Cnt];
  [entryCopy setObject:uSleepSCC1Cnt forKeyedSubscript:@"uSleep_SCC1"];

  uSleepSCC2Cnt = [(PLBBMav16BHwRfLTELogMsg *)self uSleepSCC2Cnt];
  [entryCopy setObject:uSleepSCC2Cnt forKeyedSubscript:@"uSleep_SCC2"];

  uSleepSCC3Cnt = [(PLBBMav16BHwRfLTELogMsg *)self uSleepSCC3Cnt];
  [entryCopy setObject:uSleepSCC3Cnt forKeyedSubscript:@"uSleep_SCC3"];

  hsicPCC = [(PLBBMav16BHwRfLTELogMsg *)self hsicPCC];
  [entryCopy setObject:hsicPCC forKeyedSubscript:@"HSIC_PCC_OffOn"];

  hsicSCC1 = [(PLBBMav16BHwRfLTELogMsg *)self hsicSCC1];
  [entryCopy setObject:hsicSCC1 forKeyedSubscript:@"HSIC_SCC1_OffOn"];

  hsicSCC2 = [(PLBBMav16BHwRfLTELogMsg *)self hsicSCC2];
  [entryCopy setObject:hsicSCC2 forKeyedSubscript:@"HSIC_SCC2_OffOn"];

  hsicSCC3 = [(PLBBMav16BHwRfLTELogMsg *)self hsicSCC3];
  [entryCopy setObject:hsicSCC3 forKeyedSubscript:@"HSIC_SCC3_OffOn"];

  arxOffPCC = [(PLBBMav16BHwRfLTELogMsg *)self arxOffPCC];
  [entryCopy setObject:arxOffPCC forKeyedSubscript:@"PCC_ARX_Off"];

  arxOffSCC1 = [(PLBBMav16BHwRfLTELogMsg *)self arxOffSCC1];
  [entryCopy setObject:arxOffSCC1 forKeyedSubscript:@"SCC1_ARX_Off"];

  arxOffSCC2 = [(PLBBMav16BHwRfLTELogMsg *)self arxOffSCC2];
  [entryCopy setObject:arxOffSCC2 forKeyedSubscript:@"SCC2_ARX_Off"];

  arxOffSCC3 = [(PLBBMav16BHwRfLTELogMsg *)self arxOffSCC3];
  [entryCopy setObject:arxOffSCC3 forKeyedSubscript:@"SCC3_ARX_Off"];

  arxBaselinePCC = [(PLBBMav16BHwRfLTELogMsg *)self arxBaselinePCC];
  [entryCopy setObject:arxBaselinePCC forKeyedSubscript:@"PCC_ARX_Baseline"];

  arxBaselineSCC1 = [(PLBBMav16BHwRfLTELogMsg *)self arxBaselineSCC1];
  [entryCopy setObject:arxBaselineSCC1 forKeyedSubscript:@"SCC1_ARX_Baseline"];

  arxBaselineSCC2 = [(PLBBMav16BHwRfLTELogMsg *)self arxBaselineSCC2];
  [entryCopy setObject:arxBaselineSCC2 forKeyedSubscript:@"SCC2_ARX_Baseline"];

  arxBaselineSCC3 = [(PLBBMav16BHwRfLTELogMsg *)self arxBaselineSCC3];
  [entryCopy setObject:arxBaselineSCC3 forKeyedSubscript:@"SCC3_ARX_Baseline"];

  arxQicePCC = [(PLBBMav16BHwRfLTELogMsg *)self arxQicePCC];
  [entryCopy setObject:arxQicePCC forKeyedSubscript:@"PCC_ARX_QICE"];

  arxQiceSCC1 = [(PLBBMav16BHwRfLTELogMsg *)self arxQiceSCC1];
  [entryCopy setObject:arxQiceSCC1 forKeyedSubscript:@"SCC1_ARX_QICE"];

  arxQiceSCC2 = [(PLBBMav16BHwRfLTELogMsg *)self arxQiceSCC2];
  [entryCopy setObject:arxQiceSCC2 forKeyedSubscript:@"SCC2_ARX_QICE"];

  arxQiceSCC3 = [(PLBBMav16BHwRfLTELogMsg *)self arxQiceSCC3];
  [entryCopy setObject:arxQiceSCC3 forKeyedSubscript:@"SCC3_ARX_QICE"];
}

@end