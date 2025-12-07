@interface PLICEBBMetricUtility
+ (BOOL)isInvalidMetricIdTag:(id)tag forClass:(Class)class;
+ (id)convertToStringData:(id)data;
@end

@implementation PLICEBBMetricUtility

+ (BOOL)isInvalidMetricIdTag:(id)tag forClass:(Class)class
{
  v33 = *MEMORY[0x277D85DE8];
  tagCopy = tag;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__PLICEBBMetricUtility_isInvalidMetricIdTag_forClass___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_2811F7F18 != -1)
  {
    dispatch_once(&qword_2811F7F18, block);
  }

  v7 = [qword_2811F7F10 objectForKey:tagCopy];
  if (v7)
  {
    v8 = v7;
    v9 = NSStringFromClass(class);
    v10 = [qword_2811F7F10 objectForKey:tagCopy];
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
      v29[2] = __54__PLICEBBMetricUtility_isInvalidMetricIdTag_forClass___block_invoke_130;
      v29[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v29[4] = v22;
      if (qword_2811F7F28 != -1)
      {
        dispatch_once(&qword_2811F7F28, v29);
      }

      if (byte_2811F7F09 != 1)
      {
LABEL_21:
        v21 = 1;
        goto LABEL_22;
      }

      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"*** invalid metricId tag ***"];
      v23 = MEMORY[0x277D3F178];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KICE/PLICEBBMetricUtility.m"];
      lastPathComponent = [v24 lastPathComponent];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLICEBBMetricUtility isInvalidMetricIdTag:forClass:]"];
      [v23 logMessage:v15 fromFile:lastPathComponent fromFunction:v26 fromLineNumber:74];

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
    v28[2] = __54__PLICEBBMetricUtility_isInvalidMetricIdTag_forClass___block_invoke_136;
    v28[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v28[4] = v12;
    if (qword_2811F7F30 != -1)
    {
      dispatch_once(&qword_2811F7F30, v28);
    }

    if (byte_2811F7F0A == 1)
    {
      v13 = MEMORY[0x277CCACA8];
      v14 = NSStringFromClass(class);
      v15 = [v13 stringWithFormat:@"supported metricId tag: %@ for class: %@", tagCopy, v14];

      v16 = MEMORY[0x277D3F178];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KICE/PLICEBBMetricUtility.m"];
      lastPathComponent2 = [v17 lastPathComponent];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLICEBBMetricUtility isInvalidMetricIdTag:forClass:]"];
      [v16 logMessage:v15 fromFile:lastPathComponent2 fromFunction:v19 fromLineNumber:78];

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

void __54__PLICEBBMetricUtility_isInvalidMetricIdTag_forClass___block_invoke(uint64_t a1)
{
  v18[39] = *MEMORY[0x277D85DE8];
  v17[0] = &unk_282C12630;
  v17[1] = &unk_282C12648;
  v18[0] = @"KCellularPerClientProfileTriggerCount";
  v18[1] = @"KCellularProtocolStackHist";
  v17[2] = &unk_282C12660;
  v17[3] = &unk_282C12678;
  v18[2] = @"KCellularPeripheralStats";
  v18[3] = @"KCellularProtocolStackHist";
  v17[4] = &unk_282C12690;
  v17[5] = &unk_282C126A8;
  v18[4] = @"KCellularProtocolStackHist";
  v18[5] = @"KCellularProtocolStackHist";
  v17[6] = &unk_282C126C0;
  v17[7] = &unk_282C126D8;
  v18[6] = @"KCellularProtocolStackHist";
  v18[7] = @"KCellularLteFwDuplexMode";
  v17[8] = &unk_282C126F0;
  v17[9] = &unk_282C12708;
  v18[8] = @"KCellularRrcModeHist";
  v18[9] = @"KCellularRrcModeHist";
  v17[10] = &unk_282C12720;
  v17[11] = &unk_282C12738;
  v18[10] = @"KCellularRrcModeHist";
  v18[11] = @"KCellularProtocolStackHist";
  v17[12] = &unk_282C12750;
  v17[13] = &unk_282C12768;
  v18[12] = @"KCellularProtocolStackHist";
  v18[13] = @"KCellularProtocolStackHist";
  v17[14] = &unk_282C12780;
  v17[15] = &unk_282C12798;
  v18[14] = @"KCellularProtocolStackHist";
  v18[15] = @"KCellularLteComponentCarrierInfo";
  v17[16] = &unk_282C127B0;
  v17[17] = &unk_282C127C8;
  v18[16] = @"KCellularProtocolStackHist";
  v18[17] = @"KCellularProtocolStackHist";
  v17[18] = &unk_282C127E0;
  v17[19] = &unk_282C127F8;
  v18[18] = @"KCellularProtocolStackHist";
  v18[19] = @"KCellularProtocolStackHist";
  v17[20] = &unk_282C12810;
  v17[21] = &unk_282C12828;
  v18[20] = @"KCellularLteCdrxConfig";
  v18[21] = @"kCellularLteRadioLinkFailure";
  v17[22] = &unk_282C12840;
  v17[23] = &unk_282C12858;
  v18[22] = @"KCellularProtocolStackHist";
  v18[23] = @"KCellularCellPlmnSearchCount";
  v17[24] = &unk_282C12870;
  v17[25] = &unk_282C12888;
  v18[24] = @"KCellularProtocolStackHist";
  v18[25] = @"KCellularProtocolStackPowerState";
  v17[26] = &unk_282C128A0;
  v17[27] = &unk_282C128B8;
  v18[26] = @"KCellularServingCellLost";
  v18[27] = @"KCellularWcdmaCpcStat";
  v17[28] = &unk_282C128D0;
  v17[29] = &unk_282C128E8;
  v18[28] = @"KCellularRrcModeHist";
  v18[29] = @"KCellularRrcModeHist";
  v17[30] = &unk_282C12900;
  v17[31] = &unk_282C12918;
  v18[30] = @"KCellularRrcModeHist";
  v18[31] = @"KCellularRrcModeHist";
  v17[32] = &unk_282C12930;
  v17[33] = &unk_282C12948;
  v18[32] = @"KCellularRrcModeHist";
  v18[33] = @"KCellularProtocolStackHist";
  v17[34] = &unk_282C12960;
  v17[35] = &unk_282C12978;
  v18[34] = @"KCellularProtocolStackHist";
  v18[35] = @"KCellularProtocolStackHist";
  v17[36] = &unk_282C12990;
  v17[37] = &unk_282C129A8;
  v18[36] = @"KCellularProtocolStackHist";
  v18[37] = @"KCellularProtocolStackHist";
  v17[38] = &unk_282C129C0;
  v18[38] = @"KCellularProtocolStackHist";
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:39];
  v2 = qword_2811F7F10;
  qword_2811F7F10 = v1;

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __54__PLICEBBMetricUtility_isInvalidMetricIdTag_forClass___block_invoke_121;
    v13 = &__block_descriptor_40_e5_v8__0lu32l8;
    v14 = v3;
    if (qword_2811F7F20 != -1)
    {
      dispatch_once(&qword_2811F7F20, &block);
    }

    if (_MergedGlobals_111 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", qword_2811F7F10, block, v11, v12, v13, v14];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KICE/PLICEBBMetricUtility.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLICEBBMetricUtility isInvalidMetricIdTag:forClass:]_block_invoke_2"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:70];

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

void *__54__PLICEBBMetricUtility_isInvalidMetricIdTag_forClass___block_invoke_121(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_111 = result;
  return result;
}

void *__54__PLICEBBMetricUtility_isInvalidMetricIdTag_forClass___block_invoke_130(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7F09 = result;
  return result;
}

void *__54__PLICEBBMetricUtility_isInvalidMetricIdTag_forClass___block_invoke_136(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7F0A = result;
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