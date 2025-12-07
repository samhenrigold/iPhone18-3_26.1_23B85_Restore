@interface PLPMUAgent
+ (id)entryEventPointDefinitions;
+ (void)load;
- (PLPMUAgent)init;
- (void)init;
- (void)initOperatorDependancies;
- (void)logEventPointSensors;
@end

@implementation PLPMUAgent

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLPMUAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v36[1] = *MEMORY[0x277D85DE8];
  v35 = kPLPMUAgentSensors;
  v33[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4D8];
  v31[0] = *MEMORY[0x277D3F568];
  v31[1] = v2;
  v32[0] = &unk_2870FEE30;
  v32[1] = MEMORY[0x277CBEC38];
  v31[2] = *MEMORY[0x277D3F4F8];
  v32[2] = MEMORY[0x277CBEC38];
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:3];
  v34[0] = v26;
  v33[1] = *MEMORY[0x277D3F540];
  v29[0] = @"C-ich";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198] commonTypeDict_RealFormat];
  v30[0] = commonTypeDict_RealFormat;
  v29[1] = @"C-vbus";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_RealFormat];
  v30[1] = commonTypeDict_RealFormat2;
  v29[2] = @"C-ich_avg";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_RealFormat];
  v30[2] = commonTypeDict_RealFormat3;
  v29[3] = @"V-vbus";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_RealFormat];
  v30[3] = commonTypeDict_RealFormat4;
  v29[4] = @"V-adc_in7";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_RealFormat];
  v30[4] = commonTypeDict_RealFormat5;
  v29[5] = @"V-vbat";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat6 = [mEMORY[0x277D3F198]6 commonTypeDict_RealFormat];
  v30[5] = commonTypeDict_RealFormat6;
  v29[6] = @"V-vcc_main";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat7 = [mEMORY[0x277D3F198]7 commonTypeDict_RealFormat];
  v30[6] = commonTypeDict_RealFormat7;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:7];
  v34[1] = v5;
  v33[2] = *MEMORY[0x277D3F500];
  v27[0] = @"value";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat8 = [mEMORY[0x277D3F198]8 commonTypeDict_RealFormat];
  v27[1] = @"unit";
  v28[0] = commonTypeDict_RealFormat8;
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]9 commonTypeDict_StringFormat];
  v28[1] = commonTypeDict_StringFormat;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
  v34[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:3];
  v36[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];

  return v12;
}

- (PLPMUAgent)init
{
  v100[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isArchARM])
  {
    v94.receiver = self;
    v94.super_class = PLPMUAgent;
    v3 = [(PLAgent *)&v94 init];
    if (!v3)
    {
LABEL_51:
      self = v3;
      selfCopy = self;
      goto LABEL_52;
    }

    v4 = IOHIDEventSystemClientCreate();
    v3->hidEventSystem = v4;
    if (!v4)
    {
      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_51;
      }

      v23 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __18__PLPMUAgent_init__block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v23;
      if (init_defaultOnce != -1)
      {
        dispatch_once(&init_defaultOnce, block);
      }

      if (init_classDebugEnabled != 1)
      {
        goto LABEL_51;
      }

      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"PMU: could not create HIDEventSystem"];
      v24 = MEMORY[0x277D3F178];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLPMUAgent.m"];
      lastPathComponent = [v25 lastPathComponent];
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPMUAgent init]"];
      [v24 logMessage:v9 fromFile:lastPathComponent fromFunction:v27 fromLineNumber:119];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [(PLPMUAgent *)v9 init:v11];
      }

      goto LABEL_50;
    }

    v5 = objc_opt_new();
    matchingSensors = v3->matchingSensors;
    v3->matchingSensors = v5;

    v99[0] = @"PrimaryUsagePage";
    v7 = [MEMORY[0x277CCABB0] numberWithInt:65288];
    v99[1] = @"PrimaryUsage";
    v100[0] = v7;
    v8 = [MEMORY[0x277CCABB0] numberWithInt:3];
    v100[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v100 forKeys:v99 count:2];

    IOHIDEventSystemClientSetMatching();
    v10 = IOHIDEventSystemClientCopyServices(v3->hidEventSystem);
    v11 = v10;
    v80 = v10;
    if (v10)
    {
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      obj = v10;
      v12 = [(__CFArray *)obj countByEnumeratingWithState:&v88 objects:v98 count:16];
      if (v12)
      {
        v13 = v12;
        v78 = v9;
        v14 = *v89;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v89 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v88 + 1) + 8 * i);
            v17 = IOHIDServiceClientCopyProperty(v16, @"Product");
            v18 = v17;
            if (v17)
            {
              v19 = v3->matchingSensors;
              [v17 stringByReplacingOccurrencesOfString:@"PMU " withString:@"V-"];
              v21 = v20 = v3;
              [(NSMutableDictionary *)v19 setObject:v16 forKey:v21];

              v3 = v20;
            }
          }

          v13 = [(__CFArray *)obj countByEnumeratingWithState:&v88 objects:v98 count:16];
        }

        while (v13);
        v9 = v78;
        v11 = v80;
      }
    }

    else
    {
      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_30;
      }

      v34 = objc_opt_class();
      v92[0] = MEMORY[0x277D85DD0];
      v92[1] = 3221225472;
      v92[2] = __18__PLPMUAgent_init__block_invoke_60;
      v92[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v92[4] = v34;
      if (init_defaultOnce_58 != -1)
      {
        dispatch_once(&init_defaultOnce_58, v92);
      }

      if (init_classDebugEnabled_59 != 1)
      {
LABEL_30:
        v96[0] = @"PrimaryUsagePage";
        v47 = [MEMORY[0x277CCABB0] numberWithInt:65288];
        v96[1] = @"PrimaryUsage";
        v97[0] = v47;
        v48 = [MEMORY[0x277CCABB0] numberWithInt:2];
        v97[1] = v48;
        v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v97 forKeys:v96 count:2];

        IOHIDEventSystemClientSetMatching();
        v50 = IOHIDEventSystemClientCopyServices(v3->hidEventSystem);
        v51 = v50;
        if (v50)
        {
          v52 = v9;
          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          v53 = v50;
          v54 = [(__CFArray *)v53 countByEnumeratingWithState:&v83 objects:v95 count:16];
          if (v54)
          {
            v55 = v54;
            v77 = v51;
            v79 = v52;
            obja = v49;
            v56 = *v84;
            do
            {
              for (j = 0; j != v55; ++j)
              {
                if (*v84 != v56)
                {
                  objc_enumerationMutation(v53);
                }

                v58 = *(*(&v83 + 1) + 8 * j);
                v59 = IOHIDServiceClientCopyProperty(v58, @"Product");
                v60 = v59;
                if (v59)
                {
                  v61 = v3->matchingSensors;
                  v62 = [v59 stringByReplacingOccurrencesOfString:@"PMU " withString:@"C-"];
                  [(NSMutableDictionary *)v61 setObject:v58 forKey:v62];
                }
              }

              v55 = [(__CFArray *)v53 countByEnumeratingWithState:&v83 objects:v95 count:16];
            }

            while (v55);
            v52 = v79;
            v11 = v80;
            v49 = obja;
            v51 = v77;
          }
        }

        else
        {
          if (![MEMORY[0x277D3F180] debugEnabled])
          {
            goto LABEL_49;
          }

          v63 = objc_opt_class();
          v87[0] = MEMORY[0x277D85DD0];
          v87[1] = 3221225472;
          v87[2] = __18__PLPMUAgent_init__block_invoke_75;
          v87[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v87[4] = v63;
          if (init_defaultOnce_73 != -1)
          {
            dispatch_once(&init_defaultOnce_73, v87);
          }

          if (init_classDebugEnabled_74 != 1)
          {
            goto LABEL_49;
          }

          v52 = v9;
          v64 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: PMU: Could not find any current sensors"];
          v65 = MEMORY[0x277D3F178];
          v66 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLPMUAgent.m"];
          lastPathComponent2 = [v66 lastPathComponent];
          v68 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPMUAgent init]"];
          v53 = v64;
          [v65 logMessage:v64 fromFile:lastPathComponent2 fromFunction:v68 fromLineNumber:149];

          v69 = PLLogCommon();
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
          {
            [(PLPMUAgent *)v64 init:v69];
          }

          v11 = v80;
        }

        v9 = v52;
LABEL_49:

LABEL_50:
        goto LABEL_51;
      }

      v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: PMU: Could not find any voltage sensors"];
      v36 = MEMORY[0x277D3F178];
      v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLPMUAgent.m"];
      lastPathComponent3 = [v37 lastPathComponent];
      v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPMUAgent init]"];
      obj = v35;
      [v36 logMessage:v35 fromFile:lastPathComponent3 fromFunction:v39 fromLineNumber:131];

      v40 = PLLogCommon();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        [(PLPMUAgent *)v35 init:v40];
      }

      v11 = 0;
    }

    goto LABEL_30;
  }

  selfCopy = 0;
LABEL_52:

  return selfCopy;
}

void *__18__PLPMUAgent_init__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  init_classDebugEnabled = result;
  return result;
}

void *__18__PLPMUAgent_init__block_invoke_60(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  init_classDebugEnabled_59 = result;
  return result;
}

void *__18__PLPMUAgent_init__block_invoke_75(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  init_classDebugEnabled_74 = result;
  return result;
}

- (void)initOperatorDependancies
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__PLPMUAgent_initOperatorDependancies__block_invoke;
  v4[3] = &unk_279A58F10;
  v4[4] = self;
  v3 = [MEMORY[0x277D3F1A8] significantBatteryChangeNotificationWithOperator:self withBlock:v4];
  [(PLPMUAgent *)self setBatteryLevelChanged:v3];
}

- (void)logEventPointSensors
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->matchingSensors)
  {
    v13 = [(PLOperator *)PLPMUAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:kPLPMUAgentSensors];
    v3 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v13];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    allKeys = [(NSMutableDictionary *)self->matchingSensors allKeys];
    v5 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(allKeys);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          [(NSMutableDictionary *)self->matchingSensors objectForKeyedSubscript:v9];

          v10 = IOHIDServiceClientCopyEvent();
          if (v10)
          {
            v11 = v10;
            IOHIDEventGetFloatValue();
            v12 = [MEMORY[0x277CCABB0] numberWithDouble:?];
            [v3 setObject:v12 forKeyedSubscript:v9];

            CFRelease(v11);
          }
        }

        v6 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }

    [(PLOperator *)self logEntry:v3];
  }
}

- (void)init
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = self;
  OUTLINED_FUNCTION_0(&dword_25EE16000, a2, a3, "%@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end