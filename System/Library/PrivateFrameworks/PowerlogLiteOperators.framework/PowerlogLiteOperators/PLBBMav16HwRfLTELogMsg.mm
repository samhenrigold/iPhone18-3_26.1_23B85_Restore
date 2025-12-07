@interface PLBBMav16HwRfLTELogMsg
+ (id)entryEventBackwardDefinitionBBMav16HwRfLTE;
- (PLBBMav16HwRfLTELogMsg)init;
- (id)logEventBackwardBBMav16HwRfLTE;
- (void)addPairWithKey:(id)key andWithVal:(id)val;
- (void)populateMav16Entry:(id)entry;
- (void)refreshMav16BBRfLTE;
- (void)sendAndLogPLEntry:(id)entry withName:(id)name withType:(id)type;
- (void)setHeaderWithSeqNum:(id)num andDate:(id)date andTimeCal:(double)cal;
@end

@implementation PLBBMav16HwRfLTELogMsg

- (PLBBMav16HwRfLTELogMsg)init
{
  v20 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __30__PLBBMav16HwRfLTELogMsg_init__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F48A0 != -1)
    {
      dispatch_once(&qword_2811F48A0, block);
    }

    if (_MergedGlobals_1_27 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav16HwRfLTELogMsg init]"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwRfLTELogMsg.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwRfLTELogMsg init]"];
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
  v16.super_class = PLBBMav16HwRfLTELogMsg;
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

void *__30__PLBBMav16HwRfLTELogMsg_init__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_27 = result;
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
    block[2] = __62__PLBBMav16HwRfLTELogMsg_sendAndLogPLEntry_withName_withType___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v11;
    if (qword_2811F48A8 != -1)
    {
      dispatch_once(&qword_2811F48A8, block);
    }

    if (byte_2811F4891 == 1)
    {
      v44 = typeCopy;
      v12 = nameCopy;
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav16HwRfLTELogMsg sendAndLogPLEntry:withName:withType:]"];
      v14 = MEMORY[0x277D3F178];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwRfLTELogMsg.m"];
      lastPathComponent = [v15 lastPathComponent];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwRfLTELogMsg sendAndLogPLEntry:withName:withType:]"];
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
    v47[2] = __62__PLBBMav16HwRfLTELogMsg_sendAndLogPLEntry_withName_withType___block_invoke_372;
    v47[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v47[4] = v19;
    if (qword_2811F48B0 != -1)
    {
      dispatch_once(&qword_2811F48B0, v47);
    }

    if (byte_2811F4892 == 1)
    {
      v20 = typeCopy;
      v43 = typeCopy;
      v21 = nameCopy;
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sending PLEntry: name=%@ type=%@", nameCopy, v43];
      v23 = MEMORY[0x277D3F178];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwRfLTELogMsg.m"];
      lastPathComponent2 = [v24 lastPathComponent];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwRfLTELogMsg sendAndLogPLEntry:withName:withType:]"];
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
    v46[2] = __62__PLBBMav16HwRfLTELogMsg_sendAndLogPLEntry_withName_withType___block_invoke_378;
    v46[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v46[4] = v32;
    if (qword_2811F48B8 != -1)
    {
      dispatch_once(&qword_2811F48B8, v46);
    }

    if (byte_2811F4893 == 1)
    {
      v45 = typeCopy;
      v33 = nameCopy;
      v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bad agent"];
      v35 = MEMORY[0x277D3F178];
      v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwRfLTELogMsg.m"];
      lastPathComponent3 = [v36 lastPathComponent];
      v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwRfLTELogMsg sendAndLogPLEntry:withName:withType:]"];
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

void *__62__PLBBMav16HwRfLTELogMsg_sendAndLogPLEntry_withName_withType___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4891 = result;
  return result;
}

void *__62__PLBBMav16HwRfLTELogMsg_sendAndLogPLEntry_withName_withType___block_invoke_372(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4892 = result;
  return result;
}

void *__62__PLBBMav16HwRfLTELogMsg_sendAndLogPLEntry_withName_withType___block_invoke_378(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4893 = result;
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
    block[2] = __65__PLBBMav16HwRfLTELogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v10;
    if (qword_2811F48C0 != -1)
    {
      dispatch_once(&qword_2811F48C0, block);
    }

    if (byte_2811F4894 == 1)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav16HwRfLTELogMsg setHeaderWithSeqNum:andDate:andTimeCal:]"];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwRfLTELogMsg.m"];
      lastPathComponent = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwRfLTELogMsg setHeaderWithSeqNum:andDate:andTimeCal:]"];
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
    v25[2] = __65__PLBBMav16HwRfLTELogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke_384;
    v25[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v25[4] = v19;
    if (qword_2811F48C8 != -1)
    {
      dispatch_once(&qword_2811F48C8, v25);
    }

    if (byte_2811F4895 == 1)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"unable to set seqNum, date, timeCal"];
      v20 = MEMORY[0x277D3F178];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwRfLTELogMsg.m"];
      lastPathComponent2 = [v21 lastPathComponent];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwRfLTELogMsg setHeaderWithSeqNum:andDate:andTimeCal:]"];
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

void *__65__PLBBMav16HwRfLTELogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4894 = result;
  return result;
}

void *__65__PLBBMav16HwRfLTELogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke_384(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4895 = result;
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
    block[2] = __52__PLBBMav16HwRfLTELogMsg_addPairWithKey_andWithVal___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (qword_2811F48D0 != -1)
    {
      dispatch_once(&qword_2811F48D0, block);
    }

    if (byte_2811F4896 == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav16HwRfLTELogMsg addPairWithKey:andWithVal:]"];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwRfLTELogMsg.m"];
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwRfLTELogMsg addPairWithKey:andWithVal:]"];
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
      v30[2] = __52__PLBBMav16HwRfLTELogMsg_addPairWithKey_andWithVal___block_invoke_397;
      v30[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v30[4] = v16;
      if (qword_2811F48E0 != -1)
      {
        dispatch_once(&qword_2811F48E0, v30);
      }

      if (byte_2811F4898 == 1)
      {
        valCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Add KVPair [%@, %@]", keyCopy, valCopy];
        v18 = MEMORY[0x277D3F178];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwRfLTELogMsg.m"];
        lastPathComponent2 = [v19 lastPathComponent];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwRfLTELogMsg addPairWithKey:andWithVal:]"];
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

    kvPairs = [(PLBBMav16HwRfLTELogMsg *)self kvPairs];
    [kvPairs setObject:valCopy forKey:keyCopy];
LABEL_17:

    goto LABEL_25;
  }

  if (debugEnabled)
  {
    v24 = objc_opt_class();
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __52__PLBBMav16HwRfLTELogMsg_addPairWithKey_andWithVal___block_invoke_391;
    v31[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v31[4] = v24;
    if (qword_2811F48D8 != -1)
    {
      dispatch_once(&qword_2811F48D8, v31);
    }

    if (byte_2811F4897 == 1)
    {
      kvPairs = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: nil key for kvPair not expected, return"];
      v25 = MEMORY[0x277D3F178];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwRfLTELogMsg.m"];
      lastPathComponent3 = [v26 lastPathComponent];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwRfLTELogMsg addPairWithKey:andWithVal:]"];
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

void *__52__PLBBMav16HwRfLTELogMsg_addPairWithKey_andWithVal___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4896 = result;
  return result;
}

void *__52__PLBBMav16HwRfLTELogMsg_addPairWithKey_andWithVal___block_invoke_391(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4897 = result;
  return result;
}

void *__52__PLBBMav16HwRfLTELogMsg_addPairWithKey_andWithVal___block_invoke_397(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4898 = result;
  return result;
}

+ (id)entryEventBackwardDefinitionBBMav16HwRfLTE
{
  v117[2] = *MEMORY[0x277D85DE8];
  v116[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v114[0] = *MEMORY[0x277D3F568];
  v114[1] = v2;
  v115[0] = &unk_282C1C168;
  v115[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F558];
  v114[2] = *MEMORY[0x277D3F548];
  v114[3] = v3;
  v115[2] = @"refreshMav16BBRfLTE";
  v115[3] = MEMORY[0x277CBEC38];
  v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v115 forKeys:v114 count:4];
  v117[0] = v66;
  v116[1] = *MEMORY[0x277D3F540];
  v112[0] = @"SeqNum";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v113[0] = commonTypeDict_IntegerFormat;
  v112[1] = @"BBDate";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]2 commonTypeDict_DateFormat];
  v113[1] = commonTypeDict_DateFormat;
  v112[2] = @"LogDuration";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198]3 commonTypeDict_RealFormat];
  v113[2] = commonTypeDict_RealFormat;
  v112[3] = @"DupMode";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v113[3] = commonTypeDict_IntegerFormat2;
  v112[4] = @"PCC_Band";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v113[4] = commonTypeDict_IntegerFormat3;
  v112[5] = @"PCC_BW";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v113[5] = commonTypeDict_IntegerFormat4;
  v112[6] = @"SCC1_Band";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v113[6] = commonTypeDict_IntegerFormat5;
  v112[7] = @"SCC1_BW";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v113[7] = commonTypeDict_IntegerFormat6;
  v112[8] = @"SCC2_Band";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v113[8] = commonTypeDict_IntegerFormat7;
  v112[9] = @"SCC2_BW";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
  v113[9] = commonTypeDict_IntegerFormat8;
  v112[10] = @"DLTBSzArr";
  v5 = *MEMORY[0x277D3F598];
  v109[0] = *MEMORY[0x277D3F5A8];
  v4 = v109[0];
  v109[1] = v5;
  v111[0] = &unk_282C11478;
  v111[1] = &unk_282C11490;
  v110 = *MEMORY[0x277D3F5A0];
  v6 = v110;
  v111[2] = &unk_282C114A8;
  v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v111 forKeys:v109 count:3];
  v113[10] = v45;
  v112[11] = @"TxPwrBktArr";
  v107[0] = v4;
  v107[1] = v5;
  v108[0] = &unk_282C11478;
  v108[1] = &unk_282C114C0;
  v107[2] = v6;
  v108[2] = &unk_282C114A8;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v108 forKeys:v107 count:3];
  v113[11] = v44;
  v112[12] = @"CASCCStateArr";
  v105[0] = v4;
  v105[1] = v5;
  v106[0] = &unk_282C11478;
  v106[1] = &unk_282C114D8;
  v105[2] = v6;
  v106[2] = &unk_282C114A8;
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v106 forKeys:v105 count:3];
  v113[12] = v43;
  v112[13] = @"ULCACStateArr";
  v103[0] = v4;
  v103[1] = v5;
  v104[0] = &unk_282C11478;
  v104[1] = &unk_282C114F0;
  v103[2] = v6;
  v104[2] = &unk_282C114A8;
  v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v104 forKeys:v103 count:3];
  v113[13] = v42;
  v112[14] = @"kRfActRxTxArr";
  v101[0] = v4;
  v101[1] = v5;
  v102[0] = &unk_282C11478;
  v102[1] = &unk_282C114D8;
  v101[2] = v6;
  v102[2] = &unk_282C114A8;
  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v102 forKeys:v101 count:3];
  v113[14] = v41;
  v112[15] = @"SleepStateIdleArr";
  v99[0] = v4;
  v99[1] = v5;
  v100[0] = &unk_282C11478;
  v100[1] = &unk_282C11508;
  v99[2] = v6;
  v100[2] = &unk_282C114A8;
  v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v100 forKeys:v99 count:3];
  v113[15] = v40;
  v112[16] = @"SleepStateConnArr";
  v97[0] = v4;
  v97[1] = v5;
  v98[0] = &unk_282C11478;
  v98[1] = &unk_282C11508;
  v97[2] = v6;
  v98[2] = &unk_282C114A8;
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v98 forKeys:v97 count:3];
  v113[16] = v39;
  v112[17] = @"RfRSRPIdleArr";
  v95[0] = v4;
  v95[1] = v5;
  v96[0] = &unk_282C11478;
  v96[1] = &unk_282C114D8;
  v95[2] = v6;
  v96[2] = &unk_282C114A8;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v96 forKeys:v95 count:3];
  v113[17] = v38;
  v112[18] = @"RfRSRPConnArr";
  v93[0] = v4;
  v93[1] = v5;
  v94[0] = &unk_282C11478;
  v94[1] = &unk_282C114D8;
  v93[2] = v6;
  v94[2] = &unk_282C114A8;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v94 forKeys:v93 count:3];
  v113[18] = v37;
  v112[19] = @"RfSINRIdleArr";
  v91[0] = v4;
  v91[1] = v5;
  v92[0] = &unk_282C11478;
  v92[1] = &unk_282C114D8;
  v91[2] = v6;
  v92[2] = &unk_282C114A8;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v92 forKeys:v91 count:3];
  v113[19] = v36;
  v112[20] = @"RfSINRConnArr";
  v89[0] = v4;
  v89[1] = v5;
  v90[0] = &unk_282C11478;
  v90[1] = &unk_282C114D8;
  v89[2] = v6;
  v90[2] = &unk_282C114A8;
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:v89 count:3];
  v113[20] = v35;
  v112[21] = @"RfNLICArr";
  v87[0] = v4;
  v87[1] = v5;
  v88[0] = &unk_282C11478;
  v88[1] = &unk_282C114F0;
  v87[2] = v6;
  v88[2] = &unk_282C114A8;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v87 count:3];
  v113[21] = v34;
  v112[22] = @"RfBPEArr";
  v85[0] = v4;
  v85[1] = v5;
  v86[0] = &unk_282C11478;
  v86[1] = &unk_282C11520;
  v85[2] = v6;
  v86[2] = &unk_282C114A8;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:v85 count:3];
  v113[22] = v33;
  v112[23] = @"ARD_RxD_Off_Duration";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
  v113[23] = commonTypeDict_IntegerFormat9;
  v112[24] = @"uSleep_PCC";
  mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat];
  v113[24] = commonTypeDict_IntegerFormat10;
  v112[25] = @"uSleep_SCC1";
  mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat11 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat];
  v113[25] = commonTypeDict_IntegerFormat11;
  v112[26] = @"uSleep_SCC2";
  mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat12 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat];
  v113[26] = commonTypeDict_IntegerFormat12;
  v112[27] = @"HSIC_PCC_OffOn";
  v83[0] = v4;
  v83[1] = v5;
  v84[0] = &unk_282C11478;
  v84[1] = &unk_282C11538;
  v83[2] = v6;
  v84[2] = &unk_282C114A8;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:v83 count:3];
  v113[27] = v24;
  v112[28] = @"HSIC_SCC1_OffOn";
  v81[0] = v4;
  v81[1] = v5;
  v82[0] = &unk_282C11478;
  v82[1] = &unk_282C11538;
  v81[2] = v6;
  v82[2] = &unk_282C114A8;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:3];
  v113[28] = v23;
  v112[29] = @"HSIC_SCC2_OffOn";
  v79[0] = v4;
  v79[1] = v5;
  v80[0] = &unk_282C11478;
  v80[1] = &unk_282C11538;
  v79[2] = v6;
  v80[2] = &unk_282C114A8;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:3];
  v113[29] = v22;
  v112[30] = @"PCC_ARX_Off";
  mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat13 = [mEMORY[0x277D3F198]15 commonTypeDict_IntegerFormat];
  v113[30] = commonTypeDict_IntegerFormat13;
  v112[31] = @"SCC1_ARX_Off";
  mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat14 = [mEMORY[0x277D3F198]16 commonTypeDict_IntegerFormat];
  v113[31] = commonTypeDict_IntegerFormat14;
  v112[32] = @"SCC2_ARX_Off";
  mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat15 = [mEMORY[0x277D3F198]17 commonTypeDict_IntegerFormat];
  v113[32] = commonTypeDict_IntegerFormat15;
  v112[33] = @"PCC_ARX_Baseline";
  v77[0] = v4;
  v77[1] = v5;
  v78[0] = &unk_282C11478;
  v78[1] = &unk_282C114F0;
  v77[2] = v6;
  v78[2] = &unk_282C114A8;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:3];
  v113[33] = v15;
  v112[34] = @"SCC1_ARX_Baseline";
  v75[0] = v4;
  v75[1] = v5;
  v76[0] = &unk_282C11478;
  v76[1] = &unk_282C114F0;
  v75[2] = v6;
  v76[2] = &unk_282C114A8;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:3];
  v113[34] = v14;
  v112[35] = @"SCC2_ARX_Baseline";
  v73[0] = v4;
  v73[1] = v5;
  v74[0] = &unk_282C11478;
  v74[1] = &unk_282C114F0;
  v73[2] = v6;
  v74[2] = &unk_282C114A8;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:3];
  v113[35] = v7;
  v112[36] = @"PCC_ARX_QICE";
  v71[0] = v4;
  v71[1] = v5;
  v72[0] = &unk_282C11478;
  v72[1] = &unk_282C114F0;
  v71[2] = v6;
  v72[2] = &unk_282C114A8;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:3];
  v113[36] = v8;
  v112[37] = @"SCC1_ARX_QICE";
  v69[0] = v4;
  v69[1] = v5;
  v70[0] = &unk_282C11478;
  v70[1] = &unk_282C114F0;
  v69[2] = v6;
  v70[2] = &unk_282C114A8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:3];
  v113[37] = v9;
  v112[38] = @"SCC2_ARX_QICE";
  v67[0] = v4;
  v67[1] = v5;
  v68[0] = &unk_282C11478;
  v68[1] = &unk_282C114F0;
  v67[2] = v6;
  v68[2] = &unk_282C114A8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:3];
  v113[38] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v113 forKeys:v112 count:39];
  v117[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v117 forKeys:v116 count:2];

  return v12;
}

- (void)refreshMav16BBRfLTE
{
  v2 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v2);
}

- (id)logEventBackwardBBMav16HwRfLTE
{
  v23 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __56__PLBBMav16HwRfLTELogMsg_logEventBackwardBBMav16HwRfLTE__block_invoke;
    v17 = &__block_descriptor_40_e5_v8__0lu32l8;
    v18 = v3;
    if (qword_2811F48E8 != -1)
    {
      dispatch_once(&qword_2811F48E8, &block);
    }

    if (byte_2811F4899 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav16HwRfLTELogMsg logEventBackwardBBMav16HwRfLTE]", block, v15, v16, v17, v18];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwRfLTELogMsg.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwRfLTELogMsg logEventBackwardBBMav16HwRfLTE]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:265];

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
  [(PLBBMav16HwRfLTELogMsg *)self populateMav16Entry:v11];
  v19[0] = @"entry";
  v19[1] = @"entryKey";
  v20[0] = v11;
  v20[1] = v10;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

  return v12;
}

void *__56__PLBBMav16HwRfLTELogMsg_logEventBackwardBBMav16HwRfLTE__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4899 = result;
  return result;
}

- (void)populateMav16Entry:(id)entry
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

  logDuration = [(PLBBMav16HwRfLTELogMsg *)self logDuration];
  [entryCopy setObject:logDuration forKeyedSubscript:@"LogDuration"];

  dupMode = [(PLBBMav16HwRfLTELogMsg *)self dupMode];
  [entryCopy setObject:dupMode forKeyedSubscript:@"DupMode"];

  pCCFreq = [(PLBBMav16HwRfLTELogMsg *)self PCCFreq];
  [entryCopy setObject:pCCFreq forKeyedSubscript:@"PCC_Band"];

  pCCBw = [(PLBBMav16HwRfLTELogMsg *)self PCCBw];
  [entryCopy setObject:pCCBw forKeyedSubscript:@"PCC_BW"];

  sCC1Freq = [(PLBBMav16HwRfLTELogMsg *)self SCC1Freq];
  [entryCopy setObject:sCC1Freq forKeyedSubscript:@"SCC1_Band"];

  sCC1Bw = [(PLBBMav16HwRfLTELogMsg *)self SCC1Bw];
  [entryCopy setObject:sCC1Bw forKeyedSubscript:@"SCC1_BW"];

  sCC2Freq = [(PLBBMav16HwRfLTELogMsg *)self SCC2Freq];
  [entryCopy setObject:sCC2Freq forKeyedSubscript:@"SCC2_Band"];

  sCC2Bw = [(PLBBMav16HwRfLTELogMsg *)self SCC2Bw];
  [entryCopy setObject:sCC2Bw forKeyedSubscript:@"SCC2_BW"];

  dlTBSzCnt = [(PLBBMav16HwRfLTELogMsg *)self dlTBSzCnt];
  [entryCopy setObject:dlTBSzCnt forKeyedSubscript:@"DLTBSzArr"];

  txPwrCnt = [(PLBBMav16HwRfLTELogMsg *)self txPwrCnt];
  [entryCopy setObject:txPwrCnt forKeyedSubscript:@"TxPwrBktArr"];

  caSCCCnt = [(PLBBMav16HwRfLTELogMsg *)self caSCCCnt];
  [entryCopy setObject:caSCCCnt forKeyedSubscript:@"CASCCStateArr"];

  ulCaSCCCnt = [(PLBBMav16HwRfLTELogMsg *)self ulCaSCCCnt];
  [entryCopy setObject:ulCaSCCCnt forKeyedSubscript:@"ULCACStateArr"];

  actRxTxCnt = [(PLBBMav16HwRfLTELogMsg *)self actRxTxCnt];
  [entryCopy setObject:actRxTxCnt forKeyedSubscript:@"kRfActRxTxArr"];

  sleepStateIdleCnt = [(PLBBMav16HwRfLTELogMsg *)self sleepStateIdleCnt];
  [entryCopy setObject:sleepStateIdleCnt forKeyedSubscript:@"SleepStateIdleArr"];

  sleepStateConnCnt = [(PLBBMav16HwRfLTELogMsg *)self sleepStateConnCnt];
  [entryCopy setObject:sleepStateConnCnt forKeyedSubscript:@"SleepStateConnArr"];

  rsrpIdleCnt = [(PLBBMav16HwRfLTELogMsg *)self rsrpIdleCnt];
  [entryCopy setObject:rsrpIdleCnt forKeyedSubscript:@"RfRSRPIdleArr"];

  rsrpConnCnt = [(PLBBMav16HwRfLTELogMsg *)self rsrpConnCnt];
  [entryCopy setObject:rsrpConnCnt forKeyedSubscript:@"RfRSRPConnArr"];

  sinrIdleCnt = [(PLBBMav16HwRfLTELogMsg *)self sinrIdleCnt];
  [entryCopy setObject:sinrIdleCnt forKeyedSubscript:@"RfSINRIdleArr"];

  sinrConnCnt = [(PLBBMav16HwRfLTELogMsg *)self sinrConnCnt];
  [entryCopy setObject:sinrConnCnt forKeyedSubscript:@"RfSINRConnArr"];

  arxStateCnt = [(PLBBMav16HwRfLTELogMsg *)self arxStateCnt];
  [entryCopy setObject:arxStateCnt forKeyedSubscript:@"RfARXArr"];

  nlicStateCnt = [(PLBBMav16HwRfLTELogMsg *)self nlicStateCnt];
  [entryCopy setObject:nlicStateCnt forKeyedSubscript:@"RfNLICArr"];

  bpeStats = [(PLBBMav16HwRfLTELogMsg *)self bpeStats];
  [entryCopy setObject:bpeStats forKeyedSubscript:@"RfBPEArr"];

  ardRxDOff = [(PLBBMav16HwRfLTELogMsg *)self ardRxDOff];
  [entryCopy setObject:ardRxDOff forKeyedSubscript:@"ARD_RxD_Off_Duration"];

  uSleepPCCCnt = [(PLBBMav16HwRfLTELogMsg *)self uSleepPCCCnt];
  [entryCopy setObject:uSleepPCCCnt forKeyedSubscript:@"uSleep_PCC"];

  uSleepSCC1Cnt = [(PLBBMav16HwRfLTELogMsg *)self uSleepSCC1Cnt];
  [entryCopy setObject:uSleepSCC1Cnt forKeyedSubscript:@"uSleep_SCC1"];

  uSleepSCC2Cnt = [(PLBBMav16HwRfLTELogMsg *)self uSleepSCC2Cnt];
  [entryCopy setObject:uSleepSCC2Cnt forKeyedSubscript:@"uSleep_SCC2"];

  hsicPCC = [(PLBBMav16HwRfLTELogMsg *)self hsicPCC];
  [entryCopy setObject:hsicPCC forKeyedSubscript:@"HSIC_PCC_OffOn"];

  hsicSCC1 = [(PLBBMav16HwRfLTELogMsg *)self hsicSCC1];
  [entryCopy setObject:hsicSCC1 forKeyedSubscript:@"HSIC_SCC1_OffOn"];

  hsicSCC2 = [(PLBBMav16HwRfLTELogMsg *)self hsicSCC2];
  [entryCopy setObject:hsicSCC2 forKeyedSubscript:@"HSIC_SCC2_OffOn"];

  arxOffPCC = [(PLBBMav16HwRfLTELogMsg *)self arxOffPCC];
  [entryCopy setObject:arxOffPCC forKeyedSubscript:@"PCC_ARX_Off"];

  arxOffSCC1 = [(PLBBMav16HwRfLTELogMsg *)self arxOffSCC1];
  [entryCopy setObject:arxOffSCC1 forKeyedSubscript:@"SCC1_ARX_Off"];

  arxOffSCC2 = [(PLBBMav16HwRfLTELogMsg *)self arxOffSCC2];
  [entryCopy setObject:arxOffSCC2 forKeyedSubscript:@"SCC2_ARX_Off"];

  arxBaselinePCC = [(PLBBMav16HwRfLTELogMsg *)self arxBaselinePCC];
  [entryCopy setObject:arxBaselinePCC forKeyedSubscript:@"PCC_ARX_Baseline"];

  arxBaselineSCC1 = [(PLBBMav16HwRfLTELogMsg *)self arxBaselineSCC1];
  [entryCopy setObject:arxBaselineSCC1 forKeyedSubscript:@"SCC1_ARX_Baseline"];

  arxBaselineSCC2 = [(PLBBMav16HwRfLTELogMsg *)self arxBaselineSCC2];
  [entryCopy setObject:arxBaselineSCC2 forKeyedSubscript:@"SCC2_ARX_Baseline"];

  arxQicePCC = [(PLBBMav16HwRfLTELogMsg *)self arxQicePCC];
  [entryCopy setObject:arxQicePCC forKeyedSubscript:@"PCC_ARX_QICE"];

  arxQiceSCC1 = [(PLBBMav16HwRfLTELogMsg *)self arxQiceSCC1];
  [entryCopy setObject:arxQiceSCC1 forKeyedSubscript:@"SCC1_ARX_QICE"];

  arxQiceSCC2 = [(PLBBMav16HwRfLTELogMsg *)self arxQiceSCC2];
  [entryCopy setObject:arxQiceSCC2 forKeyedSubscript:@"SCC2_ARX_QICE"];
}

@end