@interface PLMAVBBMetricUtility
+ (BOOL)isInvalidMetricIdTag:(id)tag forClass:(Class)class;
+ (id)convertToStringData:(id)data;
@end

@implementation PLMAVBBMetricUtility

+ (BOOL)isInvalidMetricIdTag:(id)tag forClass:(Class)class
{
  v33 = *MEMORY[0x277D85DE8];
  tagCopy = tag;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__PLMAVBBMetricUtility_isInvalidMetricIdTag_forClass___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_2811F7110 != -1)
  {
    dispatch_once(&qword_2811F7110, block);
  }

  v7 = [qword_2811F7108 objectForKey:tagCopy];
  if (v7)
  {
    v8 = v7;
    v9 = NSStringFromClass(class);
    v10 = [qword_2811F7108 objectForKey:tagCopy];
    v11 = [v9 compare:v10];

    if (!v11)
    {
      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_21;
      }

      v22 = objc_opt_class();
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __54__PLMAVBBMetricUtility_isInvalidMetricIdTag_forClass___block_invoke_108;
      v29[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v29[4] = v22;
      if (qword_2811F7120 != -1)
      {
        dispatch_once(&qword_2811F7120, v29);
      }

      if (byte_2811F7101 != 1)
      {
LABEL_21:
        v21 = 1;
        goto LABEL_22;
      }

      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"*** invalid metricId tag ***"];
      v23 = MEMORY[0x277D3F178];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KMAV/PLMAVBBMetricUtility.m"];
      lastPathComponent = [v24 lastPathComponent];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLMAVBBMetricUtility isInvalidMetricIdTag:forClass:]"];
      [v23 logMessage:v15 fromFile:lastPathComponent fromFunction:v26 fromLineNumber:77];

      v20 = PLLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v32 = v15;
        _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v21 = 1;
      goto LABEL_20;
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v12 = objc_opt_class();
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __54__PLMAVBBMetricUtility_isInvalidMetricIdTag_forClass___block_invoke_114;
    v28[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v28[4] = v12;
    if (qword_2811F7128 != -1)
    {
      dispatch_once(&qword_2811F7128, v28);
    }

    if (byte_2811F7102 == 1)
    {
      v13 = MEMORY[0x277CCACA8];
      v14 = NSStringFromClass(class);
      v15 = [v13 stringWithFormat:@"supported metricId tag: %@ for class: %@", tagCopy, v14];

      v16 = MEMORY[0x277D3F178];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KMAV/PLMAVBBMetricUtility.m"];
      lastPathComponent2 = [v17 lastPathComponent];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLMAVBBMetricUtility isInvalidMetricIdTag:forClass:]"];
      [v16 logMessage:v15 fromFile:lastPathComponent2 fromFunction:v19 fromLineNumber:81];

      v20 = PLLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v32 = v15;
        _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v21 = 0;
LABEL_20:

      goto LABEL_22;
    }
  }

  v21 = 0;
LABEL_22:

  return v21;
}

void __54__PLMAVBBMetricUtility_isInvalidMetricIdTag_forClass___block_invoke(uint64_t a1)
{
  v18[40] = *MEMORY[0x277D85DE8];
  v17[0] = &unk_282C0CBE8;
  v17[1] = &unk_282C0CC00;
  v18[0] = @"cellularPowerLogProfileTriggerCount";
  v18[1] = @"CellularPowerLogHistogram";
  v17[2] = &unk_282C0CC18;
  v17[3] = &unk_282C0CC30;
  v18[2] = @"CellularPowerLogHistogram";
  v18[3] = @"CellularPowerLogHistogram";
  v17[4] = &unk_282C0CC48;
  v17[5] = &unk_282C0CC60;
  v18[4] = @"CellularPowerLogHistogram";
  v18[5] = @"CellularPowerLogHistogram";
  v17[6] = &unk_282C0CC78;
  v17[7] = &unk_282C0CC90;
  v18[6] = @"CellularPowerLogHistogram";
  v18[7] = @"CellularPowerLogHistogram";
  v17[8] = &unk_282C0CCA8;
  v17[9] = &unk_282C0CCC0;
  v18[8] = @"CellularPowerLogLTECarrierComponentInfo";
  v18[9] = @"CellularPowerLogHistogram";
  v17[10] = &unk_282C0CCD8;
  v17[11] = &unk_282C0CCF0;
  v18[10] = @"CellularPowerLogHistogram";
  v18[11] = @"CellularPowerLogHistogram";
  v17[12] = &unk_282C0CD08;
  v17[13] = &unk_282C0CD20;
  v18[12] = @"CellularPowerLogHistogram";
  v18[13] = @"CellularPowerLogHistogram";
  v17[14] = &unk_282C0CD38;
  v17[15] = &unk_282C0CD50;
  v18[14] = @"CellularPowerLogHistogram";
  v18[15] = @"CellularPowerLogHistogram";
  v17[16] = &unk_282C0CD68;
  v17[17] = &unk_282C0CD80;
  v18[16] = @"CellularPowerLogHistogram";
  v18[17] = @"CellularPowerLogHistogram";
  v17[18] = &unk_282C0CD98;
  v17[19] = &unk_282C0CDB0;
  v18[18] = @"CellularPowerLogHistogram";
  v18[19] = @"CellularPowerLogHistogram";
  v17[20] = &unk_282C0CDC8;
  v17[21] = &unk_282C0CDE0;
  v18[20] = @"CellularPowerLogHistogram";
  v18[21] = @"CellularPowerLogHistogram";
  v17[22] = &unk_282C0CDF8;
  v17[23] = &unk_282C0CE10;
  v18[22] = @"CellularPowerLogHistogram";
  v18[23] = @"CellularPowerLogHistogram";
  v17[24] = &unk_282C0CE28;
  v17[25] = &unk_282C0CE40;
  v18[24] = @"CellularPowerLogNRCarrierComponentInfo";
  v18[25] = @"CellularPowerLogHistogram";
  v17[26] = &unk_282C0CE58;
  v17[27] = &unk_282C0CE70;
  v18[26] = @"CellularPowerLogHistogram";
  v18[27] = @"CellularPowerLogHistogram";
  v17[28] = &unk_282C0CE88;
  v17[29] = &unk_282C0CEA0;
  v18[28] = @"CellularPowerLogHistogram";
  v18[29] = @"CellularPowerLogHistogram";
  v17[30] = &unk_282C0CEB8;
  v17[31] = &unk_282C0CED0;
  v18[30] = @"CellularPowerLogHistogram";
  v18[31] = @"CellularPowerLogHistogram";
  v17[32] = &unk_282C0CEE8;
  v17[33] = &unk_282C0CF00;
  v18[32] = @"CellularPowerLogHistogram";
  v18[33] = @"CellularPowerLogHistogram";
  v17[34] = &unk_282C0CF18;
  v17[35] = &unk_282C0CF30;
  v18[34] = @"CellularPowerLogHistogram";
  v18[35] = @"CellularPowerLogNRCarrierComponentInfo";
  v17[36] = &unk_282C0CF48;
  v17[37] = &unk_282C0CF60;
  v18[36] = @"CellularPowerLogHistogram";
  v18[37] = @"CellularPowerLogHistogram";
  v17[38] = &unk_282C0CF78;
  v17[39] = &unk_282C0CF90;
  v18[38] = @"CellularPowerLogHistogram";
  v18[39] = @"CellularPowerLogHistogram";
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:40];
  v2 = qword_2811F7108;
  qword_2811F7108 = v1;

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __54__PLMAVBBMetricUtility_isInvalidMetricIdTag_forClass___block_invoke_99;
    v13 = &__block_descriptor_40_e5_v8__0lu32l8;
    v14 = v3;
    if (qword_2811F7118 != -1)
    {
      dispatch_once(&qword_2811F7118, &block);
    }

    if (_MergedGlobals_83 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", qword_2811F7108, block, v11, v12, v13, v14];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KMAV/PLMAVBBMetricUtility.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLMAVBBMetricUtility isInvalidMetricIdTag:forClass:]_block_invoke_2"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:73];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v16 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

void *__54__PLMAVBBMetricUtility_isInvalidMetricIdTag_forClass___block_invoke_99(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_83 = result;
  return result;
}

void *__54__PLMAVBBMetricUtility_isInvalidMetricIdTag_forClass___block_invoke_108(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7101 = result;
  return result;
}

void *__54__PLMAVBBMetricUtility_isInvalidMetricIdTag_forClass___block_invoke_114(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7102 = result;
  return result;
}

+ (id)convertToStringData:(id)data
{
  dataCopy = data;
  v4 = [dataCopy length];
  v5 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:2 * v4];
  bytes = [dataCopy bytes];
  if (v4)
  {
    v7 = bytes;
    do
    {
      v8 = *v7++;
      [v5 appendFormat:@"%02x", v8];
      --v4;
    }

    while (v4);
  }

  return v5;
}

@end