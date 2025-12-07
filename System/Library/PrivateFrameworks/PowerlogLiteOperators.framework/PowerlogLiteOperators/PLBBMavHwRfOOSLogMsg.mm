@interface PLBBMavHwRfOOSLogMsg
+ (id)entryEventBackwardDefinitionOOSPerRat;
- (PLBBMavHwRfOOSLogMsg)init;
- (id)logEventBackwardBBMavHwRfOos;
- (void)populateEntry:(id)entry;
- (void)refreshBBMavHwRfOOS;
- (void)setHeaderWithSeqNum:(id)num andDate:(id)date andTimeCal:(double)cal;
@end

@implementation PLBBMavHwRfOOSLogMsg

- (PLBBMavHwRfOOSLogMsg)init
{
  v20 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __28__PLBBMavHwRfOOSLogMsg_init__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F46C8 != -1)
    {
      dispatch_once(&qword_2811F46C8, block);
    }

    if (_MergedGlobals_1_23 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavHwRfOOSLogMsg init]"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfOOSLogMsg.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfOOSLogMsg init]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:25];

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
  v16.super_class = PLBBMavHwRfOOSLogMsg;
  v10 = [(PLBBMavHwRfOOSLogMsg *)&v16 init];
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

void *__28__PLBBMavHwRfOOSLogMsg_init__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_23 = result;
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
    block[2] = __63__PLBBMavHwRfOOSLogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v10;
    if (qword_2811F46D0 != -1)
    {
      dispatch_once(&qword_2811F46D0, block);
    }

    if (byte_2811F46C1 == 1)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavHwRfOOSLogMsg setHeaderWithSeqNum:andDate:andTimeCal:]"];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfOOSLogMsg.m"];
      lastPathComponent = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfOOSLogMsg setHeaderWithSeqNum:andDate:andTimeCal:]"];
      [v12 logMessage:v11 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:39];

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
    v25[2] = __63__PLBBMavHwRfOOSLogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke_18;
    v25[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v25[4] = v19;
    if (qword_2811F46D8 != -1)
    {
      dispatch_once(&qword_2811F46D8, v25);
    }

    if (byte_2811F46C2 == 1)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"unable to set seqNum, date, timeCal"];
      v20 = MEMORY[0x277D3F178];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfOOSLogMsg.m"];
      lastPathComponent2 = [v21 lastPathComponent];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfOOSLogMsg setHeaderWithSeqNum:andDate:andTimeCal:]"];
      [v20 logMessage:v18 fromFile:lastPathComponent2 fromFunction:v23 fromLineNumber:41];

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

void *__63__PLBBMavHwRfOOSLogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F46C1 = result;
  return result;
}

void *__63__PLBBMavHwRfOOSLogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke_18(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F46C2 = result;
  return result;
}

+ (id)entryEventBackwardDefinitionOOSPerRat
{
  v31[3] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D3F598];
  v30[0] = *MEMORY[0x277D3F5A8];
  v30[1] = v2;
  v31[0] = &unk_282C10B60;
  v31[1] = &unk_282C10B78;
  v30[2] = *MEMORY[0x277D3F5A0];
  v31[2] = &unk_282C10B90;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:3];
  v28[0] = *MEMORY[0x277D3F4E8];
  v4 = *MEMORY[0x277D3F508];
  v26[0] = *MEMORY[0x277D3F568];
  v26[1] = v4;
  v27[0] = &unk_282C1BFE8;
  v27[1] = MEMORY[0x277CBEC28];
  v5 = *MEMORY[0x277D3F558];
  v26[2] = *MEMORY[0x277D3F548];
  v26[3] = v5;
  v27[2] = @"refreshRequestHandler";
  v27[3] = MEMORY[0x277CBEC38];
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:4];
  v29[0] = v23;
  v28[1] = *MEMORY[0x277D3F540];
  v24[0] = @"SeqNum";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v25[0] = commonTypeDict_IntegerFormat;
  v24[1] = @"BBDate";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]2 commonTypeDict_DateFormat];
  v25[1] = commonTypeDict_DateFormat;
  v24[2] = @"LogDuration";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198]3 commonTypeDict_RealFormat];
  v25[2] = commonTypeDict_RealFormat;
  v24[3] = @"oosInProgress";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]4 commonTypeDict_BoolFormat];
  v25[3] = commonTypeDict_BoolFormat;
  v24[4] = @"oosTimes";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v25[4] = commonTypeDict_IntegerFormat2;
  v24[5] = @"oosTicks";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v25[5] = commonTypeDict_IntegerFormat3;
  v24[6] = @"pssiTicks";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v25[6] = commonTypeDict_IntegerFormat4;
  v25[7] = v3;
  v24[7] = @"oosLtePssiTimes";
  v24[8] = @"oosLtePssiStatTicks";
  v25[8] = v3;
  v25[9] = v3;
  v24[9] = @"oosGsmPssiTimes";
  v24[10] = @"oosGsmPssiStatTicks";
  v25[10] = v3;
  v25[11] = v3;
  v24[11] = @"oosWcdmaPssiTimes";
  v24[12] = @"oosWcdmaPssiStatTicks";
  v25[12] = v3;
  v25[13] = v3;
  v24[13] = @"oosTdsPssiTimes";
  v24[14] = @"oosTdsPssiStatTicks";
  v25[14] = v3;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:15];
  v29[1] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];

  return v14;
}

- (void)refreshBBMavHwRfOOS
{
  v2 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v2);
}

- (id)logEventBackwardBBMavHwRfOos
{
  v8[2] = *MEMORY[0x277D85DE8];
  v3 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"BBMavHwRfOos"];
  v4 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v3];
  [(PLBBMavHwRfOOSLogMsg *)self populateEntry:v4];
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

  logDuration = [(PLBBMavHwRfOOSLogMsg *)self logDuration];
  [entryCopy setObject:logDuration forKeyedSubscript:@"LogDuration"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[PLBBMavHwRfOOSLogMsg oosInProgress](self, "oosInProgress")}];
  [entryCopy setObject:v11 forKeyedSubscript:@"oosInProgress"];

  oosTimes = [(PLBBMavHwRfOOSLogMsg *)self oosTimes];
  [entryCopy setObject:oosTimes forKeyedSubscript:@"oosTimes"];

  oosTicks = [(PLBBMavHwRfOOSLogMsg *)self oosTicks];
  [entryCopy setObject:oosTicks forKeyedSubscript:@"oosTicks"];

  pssiTicks = [(PLBBMavHwRfOOSLogMsg *)self pssiTicks];
  [entryCopy setObject:pssiTicks forKeyedSubscript:@"pssiTicks"];

  oosLtePssiTimes = [(PLBBMavHwRfOOSLogMsg *)self oosLtePssiTimes];
  [entryCopy setObject:oosLtePssiTimes forKeyedSubscript:@"oosLtePssiTimes"];

  oosLtePssiStatTicks = [(PLBBMavHwRfOOSLogMsg *)self oosLtePssiStatTicks];
  [entryCopy setObject:oosLtePssiStatTicks forKeyedSubscript:@"oosLtePssiStatTicks"];

  oosGsmPssiTimes = [(PLBBMavHwRfOOSLogMsg *)self oosGsmPssiTimes];
  [entryCopy setObject:oosGsmPssiTimes forKeyedSubscript:@"oosGsmPssiTimes"];

  oosGsmPssiStatTicks = [(PLBBMavHwRfOOSLogMsg *)self oosGsmPssiStatTicks];
  [entryCopy setObject:oosGsmPssiStatTicks forKeyedSubscript:@"oosGsmPssiStatTicks"];

  oosWcdmaPssiTimes = [(PLBBMavHwRfOOSLogMsg *)self oosWcdmaPssiTimes];
  [entryCopy setObject:oosWcdmaPssiTimes forKeyedSubscript:@"oosWcdmaPssiTimes"];

  oosWcdmaPssiStatTicks = [(PLBBMavHwRfOOSLogMsg *)self oosWcdmaPssiStatTicks];
  [entryCopy setObject:oosWcdmaPssiStatTicks forKeyedSubscript:@"oosWcdmaPssiStatTicks"];

  oosTdsPssiTimes = [(PLBBMavHwRfOOSLogMsg *)self oosTdsPssiTimes];
  [entryCopy setObject:oosTdsPssiTimes forKeyedSubscript:@"oosTdsPssiTimes"];

  oosTdsPssiStatTicks = [(PLBBMavHwRfOOSLogMsg *)self oosTdsPssiStatTicks];
  [entryCopy setObject:oosTdsPssiStatTicks forKeyedSubscript:@"oosTdsPssiStatTicks"];
}

@end