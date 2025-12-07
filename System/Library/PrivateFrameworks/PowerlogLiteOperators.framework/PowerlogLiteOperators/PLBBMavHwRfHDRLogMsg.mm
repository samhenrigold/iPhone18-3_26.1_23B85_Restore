@interface PLBBMavHwRfHDRLogMsg
+ (id)entryEventBackwardDefinitionBBMavHwRfHDR;
- (PLBBMavHwRfHDRLogMsg)init;
- (id)logEventBackwardBBMavHwRfHDR;
- (void)addPairWithKey:(id)key andWithVal:(id)val;
- (void)populateEntry:(id)entry;
- (void)refreshRequest;
- (void)sendAndLogPLEntry:(id)entry withName:(id)name withType:(id)type;
- (void)setHeaderWithSeqNum:(id)num andDate:(id)date andTimeCal:(double)cal;
@end

@implementation PLBBMavHwRfHDRLogMsg

- (PLBBMavHwRfHDRLogMsg)init
{
  v20 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __28__PLBBMavHwRfHDRLogMsg_init__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F61D0 != -1)
    {
      dispatch_once(&qword_2811F61D0, block);
    }

    if (_MergedGlobals_1_47 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavHwRfHDRLogMsg init]"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfHDRLogMsg.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfHDRLogMsg init]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:39];

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
  v16.super_class = PLBBMavHwRfHDRLogMsg;
  v10 = [(PLBBMavHwRfHDRLogMsg *)&v16 init];
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

void *__28__PLBBMavHwRfHDRLogMsg_init__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_47 = result;
  return result;
}

- (void)sendAndLogPLEntry:(id)entry withName:(id)name withType:(id)type
{
  v38 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  typeCopy = type;
  v10 = MEMORY[0x277D3F180];
  entryCopy = entry;
  if ([v10 debugEnabled])
  {
    v12 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__PLBBMavHwRfHDRLogMsg_sendAndLogPLEntry_withName_withType___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v12;
    if (qword_2811F61D8 != -1)
    {
      dispatch_once(&qword_2811F61D8, block);
    }

    if (byte_2811F61C9 == 1)
    {
      v33 = typeCopy;
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavHwRfHDRLogMsg sendAndLogPLEntry:withName:withType:]"];
      v14 = MEMORY[0x277D3F178];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfHDRLogMsg.m"];
      lastPathComponent = [v15 lastPathComponent];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfHDRLogMsg sendAndLogPLEntry:withName:withType:]"];
      [v14 logMessage:v13 fromFile:lastPathComponent fromFunction:v17 fromLineNumber:58];

      v18 = PLLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v37 = v13;
        _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      typeCopy = v33;
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v19 = objc_opt_class();
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __60__PLBBMavHwRfHDRLogMsg_sendAndLogPLEntry_withName_withType___block_invoke_372;
    v34[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v34[4] = v19;
    if (qword_2811F61E0 != -1)
    {
      dispatch_once(&qword_2811F61E0, v34);
    }

    if (byte_2811F61CA == 1)
    {
      v20 = typeCopy;
      typeCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Sending PLEntry: name=%@ type=%@", nameCopy, typeCopy];
      v22 = MEMORY[0x277D3F178];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfHDRLogMsg.m"];
      lastPathComponent2 = [v23 lastPathComponent];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfHDRLogMsg sendAndLogPLEntry:withName:withType:]"];
      [v22 logMessage:typeCopy fromFile:lastPathComponent2 fromFunction:v25 fromLineNumber:59];

      v26 = PLLogCommon();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v37 = typeCopy;
        _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      typeCopy = v20;
    }
  }

  v27 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"SeqNum"];
  [entryCopy setObject:v27 forKeyedSubscript:@"SeqNum"];

  v28 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"BBDate"];
  [entryCopy setObject:v28 forKeyedSubscript:@"BBDate"];

  v29 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"TimeCal"];
  [entryCopy setObject:v29 forKeyedSubscript:@"TimeCal"];

  v30 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"BBDate"];
  convertFromBasebandToMonotonic = [v30 convertFromBasebandToMonotonic];
  [entryCopy setEntryDate:convertFromBasebandToMonotonic];

  agent = [(PLBasebandMessage *)self agent];
  [agent logEntry:entryCopy];
}

void *__60__PLBBMavHwRfHDRLogMsg_sendAndLogPLEntry_withName_withType___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F61C9 = result;
  return result;
}

void *__60__PLBBMavHwRfHDRLogMsg_sendAndLogPLEntry_withName_withType___block_invoke_372(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F61CA = result;
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
    block[2] = __63__PLBBMavHwRfHDRLogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v10;
    if (qword_2811F61E8 != -1)
    {
      dispatch_once(&qword_2811F61E8, block);
    }

    if (byte_2811F61CB == 1)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavHwRfHDRLogMsg setHeaderWithSeqNum:andDate:andTimeCal:]"];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfHDRLogMsg.m"];
      lastPathComponent = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfHDRLogMsg setHeaderWithSeqNum:andDate:andTimeCal:]"];
      [v12 logMessage:v11 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:76];

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
    v25[2] = __63__PLBBMavHwRfHDRLogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke_378;
    v25[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v25[4] = v19;
    if (qword_2811F61F0 != -1)
    {
      dispatch_once(&qword_2811F61F0, v25);
    }

    if (byte_2811F61CC == 1)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"unable to set seqNum, date, timeCal"];
      v20 = MEMORY[0x277D3F178];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfHDRLogMsg.m"];
      lastPathComponent2 = [v21 lastPathComponent];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfHDRLogMsg setHeaderWithSeqNum:andDate:andTimeCal:]"];
      [v20 logMessage:v18 fromFile:lastPathComponent2 fromFunction:v23 fromLineNumber:78];

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

void *__63__PLBBMavHwRfHDRLogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F61CB = result;
  return result;
}

void *__63__PLBBMavHwRfHDRLogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke_378(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F61CC = result;
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
    block[2] = __50__PLBBMavHwRfHDRLogMsg_addPairWithKey_andWithVal___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (qword_2811F61F8 != -1)
    {
      dispatch_once(&qword_2811F61F8, block);
    }

    if (byte_2811F61CD == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavHwRfHDRLogMsg addPairWithKey:andWithVal:]"];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfHDRLogMsg.m"];
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfHDRLogMsg addPairWithKey:andWithVal:]"];
      [v10 logMessage:v9 fromFile:lastPathComponent fromFunction:v13 fromLineNumber:94];

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
      v30[2] = __50__PLBBMavHwRfHDRLogMsg_addPairWithKey_andWithVal___block_invoke_391;
      v30[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v30[4] = v16;
      if (qword_2811F6208 != -1)
      {
        dispatch_once(&qword_2811F6208, v30);
      }

      if (byte_2811F61CF == 1)
      {
        valCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Add KVPair [%@, %@]", keyCopy, valCopy];
        v18 = MEMORY[0x277D3F178];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfHDRLogMsg.m"];
        lastPathComponent2 = [v19 lastPathComponent];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfHDRLogMsg addPairWithKey:andWithVal:]"];
        [v18 logMessage:valCopy fromFile:lastPathComponent2 fromFunction:v21 fromLineNumber:100];

        v22 = PLLogCommon();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v34 = valCopy;
          _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    kvPairs = [(PLBBMavHwRfHDRLogMsg *)self kvPairs];
    [kvPairs setObject:valCopy forKey:keyCopy];
LABEL_17:

    goto LABEL_25;
  }

  if (debugEnabled)
  {
    v24 = objc_opt_class();
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __50__PLBBMavHwRfHDRLogMsg_addPairWithKey_andWithVal___block_invoke_385;
    v31[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v31[4] = v24;
    if (qword_2811F6200 != -1)
    {
      dispatch_once(&qword_2811F6200, v31);
    }

    if (byte_2811F61CE == 1)
    {
      kvPairs = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: nil key for kvPair not expected, return"];
      v25 = MEMORY[0x277D3F178];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfHDRLogMsg.m"];
      lastPathComponent3 = [v26 lastPathComponent];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfHDRLogMsg addPairWithKey:andWithVal:]"];
      [v25 logMessage:kvPairs fromFile:lastPathComponent3 fromFunction:v28 fromLineNumber:97];

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

void *__50__PLBBMavHwRfHDRLogMsg_addPairWithKey_andWithVal___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F61CD = result;
  return result;
}

void *__50__PLBBMavHwRfHDRLogMsg_addPairWithKey_andWithVal___block_invoke_385(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F61CE = result;
  return result;
}

void *__50__PLBBMavHwRfHDRLogMsg_addPairWithKey_andWithVal___block_invoke_391(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F61CF = result;
  return result;
}

+ (id)entryEventBackwardDefinitionBBMavHwRfHDR
{
  v31[2] = *MEMORY[0x277D85DE8];
  v30[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v28[0] = *MEMORY[0x277D3F568];
  v28[1] = v2;
  v29[0] = &unk_282C1C868;
  v29[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F558];
  v28[2] = *MEMORY[0x277D3F548];
  v28[3] = v3;
  v29[2] = @"refreshRequestHandler";
  v29[3] = MEMORY[0x277CBEC38];
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];
  v31[0] = v25;
  v30[1] = *MEMORY[0x277D3F540];
  v26[0] = @"SeqNum";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v27[0] = commonTypeDict_IntegerFormat;
  v26[1] = @"BBDate";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]2 commonTypeDict_DateFormat];
  v27[1] = commonTypeDict_DateFormat;
  v26[2] = @"LogDuration";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198]3 commonTypeDict_RealFormat];
  v27[2] = commonTypeDict_RealFormat;
  v26[3] = @"SDTXOnFrames";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_RealFormat];
  v27[3] = commonTypeDict_RealFormat2;
  v26[4] = @"SDTXOffFrames";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat3 = [mEMORY[0x277D3F198]5 commonTypeDict_RealFormat];
  v27[4] = commonTypeDict_RealFormat3;
  v26[5] = @"LTXOnFrames";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat4 = [mEMORY[0x277D3F198]6 commonTypeDict_RealFormat];
  v27[5] = commonTypeDict_RealFormat4;
  v26[6] = @"LDTXOffFrames";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat5 = [mEMORY[0x277D3F198]7 commonTypeDict_RealFormat];
  v27[6] = commonTypeDict_RealFormat5;
  v26[7] = @"TTXOnFrames";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat6 = [mEMORY[0x277D3F198]8 commonTypeDict_RealFormat];
  v27[7] = commonTypeDict_RealFormat6;
  v26[8] = @"TDTXOffFrames";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat7 = [mEMORY[0x277D3F198]9 commonTypeDict_RealFormat];
  v27[8] = commonTypeDict_RealFormat7;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:9];
  v31[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];

  return v13;
}

- (void)refreshRequest
{
  v2 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v2);
}

- (id)logEventBackwardBBMavHwRfHDR
{
  v8[2] = *MEMORY[0x277D85DE8];
  v3 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"BBMavHwRfHDR"];
  v4 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v3];
  [(PLBBMavHwRfHDRLogMsg *)self populateEntry:v4];
  v7[0] = @"entry";
  v7[1] = @"entryKey";
  v8[0] = v4;
  v8[1] = v3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (void)populateEntry:(id)entry
{
  commonInfo = self->_commonInfo;
  entryCopy = entry;
  v6 = [(NSMutableDictionary *)commonInfo objectForKey:@"BBDate"];
  convertFromBasebandToMonotonic = [v6 convertFromBasebandToMonotonic];
  [entryCopy setEntryDate:convertFromBasebandToMonotonic];

  v8 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"BBDate"];
  [entryCopy setObject:v8 forKeyedSubscript:@"BBDate"];

  v9 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"SeqNum"];
  [entryCopy setObject:v9 forKeyedSubscript:@"SeqNum"];

  logDuration = [(PLBBMavHwRfHDRLogMsg *)self logDuration];
  [entryCopy setObject:logDuration forKeyedSubscript:@"LogDuration"];

  sDTXOnFrame = [(PLBBMavHwRfHDRLogMsg *)self sDTXOnFrame];
  [entryCopy setObject:sDTXOnFrame forKeyedSubscript:@"SDTXOnFrames"];

  sDTXOffFrame = [(PLBBMavHwRfHDRLogMsg *)self sDTXOffFrame];
  [entryCopy setObject:sDTXOffFrame forKeyedSubscript:@"SDTXOffFrames"];

  lDTXOnFrame = [(PLBBMavHwRfHDRLogMsg *)self lDTXOnFrame];
  [entryCopy setObject:lDTXOnFrame forKeyedSubscript:@"LTXOnFrames"];

  lDTXOffFrame = [(PLBBMavHwRfHDRLogMsg *)self lDTXOffFrame];
  [entryCopy setObject:lDTXOffFrame forKeyedSubscript:@"LDTXOffFrames"];

  tDTXOnFrame = [(PLBBMavHwRfHDRLogMsg *)self tDTXOnFrame];
  [entryCopy setObject:tDTXOnFrame forKeyedSubscript:@"TTXOnFrames"];

  tDTXOffFrame = [(PLBBMavHwRfHDRLogMsg *)self tDTXOffFrame];
  [entryCopy setObject:tDTXOffFrame forKeyedSubscript:@"TDTXOffFrames"];
}

@end