@interface PLBatteryUIResponseTypeBatteryBreakdownInternal
- (BOOL)showRootNodesInInternal;
- (void)filterEnergyEntries:(id)entries;
- (void)populateInternalRootNodeEnergyKeys:(id)keys;
@end

@implementation PLBatteryUIResponseTypeBatteryBreakdownInternal

- (void)populateInternalRootNodeEnergyKeys:(id)keys
{
  v65 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  array = [MEMORY[0x277CBEB18] array];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v41 = keysCopy;
  obj = [keysCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  v45 = [obj countByEnumeratingWithState:&v57 objects:v64 count:16];
  if (v45)
  {
    v43 = *v58;
    v5 = 0x277D3F000uLL;
    selfCopy = self;
    do
    {
      v6 = 0;
      do
      {
        if (*v58 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v46 = v6;
        v7 = *(*(&v57 + 1) + 8 * v6);
        if ([*(v5 + 384) debugEnabled])
        {
          v8 = objc_opt_class();
          v56[0] = MEMORY[0x277D85DD0];
          v56[1] = 3221225472;
          v56[2] = __86__PLBatteryUIResponseTypeBatteryBreakdownInternal_populateInternalRootNodeEnergyKeys___block_invoke;
          v56[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v56[4] = v8;
          if (populateInternalRootNodeEnergyKeys__defaultOnce != -1)
          {
            dispatch_once(&populateInternalRootNodeEnergyKeys__defaultOnce, v56);
          }

          if (populateInternalRootNodeEnergyKeys__classDebugEnabled == 1)
          {
            v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"energyEntry=%@", v7];
            v10 = MEMORY[0x277D3F178];
            v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeBatteryBreakdownInternal.m"];
            lastPathComponent = [v11 lastPathComponent];
            v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIResponseTypeBatteryBreakdownInternal populateInternalRootNodeEnergyKeys:]"];
            [v10 logMessage:v9 fromFile:lastPathComponent fromFunction:v13 fromLineNumber:29];

            v15 = PLLogCommon(v14);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v63 = v9;
              _os_log_debug_impl(&dword_25EE51000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            self = selfCopy;
          }
        }

        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        getRootNodeIDToRootNodeEnergyKeys = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getRootNodeIDToRootNodeEnergyKeys];
        v16 = [getRootNodeIDToRootNodeEnergyKeys countByEnumeratingWithState:&v52 objects:v61 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v53;
          v48 = *v53;
          do
          {
            v19 = 0;
            do
            {
              if (*v53 != v18)
              {
                objc_enumerationMutation(getRootNodeIDToRootNodeEnergyKeys);
              }

              v20 = *(*(&v52 + 1) + 8 * v19);
              if ([*(v5 + 384) debugEnabled])
              {
                v21 = objc_opt_class();
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = __86__PLBatteryUIResponseTypeBatteryBreakdownInternal_populateInternalRootNodeEnergyKeys___block_invoke_20;
                block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
                block[4] = v21;
                if (populateInternalRootNodeEnergyKeys__defaultOnce_18 != -1)
                {
                  dispatch_once(&populateInternalRootNodeEnergyKeys__defaultOnce_18, block);
                }

                if (populateInternalRootNodeEnergyKeys__classDebugEnabled_19 == 1)
                {
                  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"rootNodeName=%@", v20];
                  v23 = MEMORY[0x277D3F178];
                  v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeBatteryBreakdownInternal.m"];
                  lastPathComponent2 = [v24 lastPathComponent];
                  v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIResponseTypeBatteryBreakdownInternal populateInternalRootNodeEnergyKeys:]"];
                  [v23 logMessage:v22 fromFile:lastPathComponent2 fromFunction:v26 fromLineNumber:32];

                  v28 = PLLogCommon(v27);
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v63 = v22;
                    _os_log_debug_impl(&dword_25EE51000, v28, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                  }

                  v5 = 0x277D3F000uLL;
                  v18 = v48;
                }
              }

              getRootNodeIDToRootNodeEnergyKeys2 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getRootNodeIDToRootNodeEnergyKeys];
              v30 = [getRootNodeIDToRootNodeEnergyKeys2 objectForKeyedSubscript:v20];

              if ([*(v5 + 384) debugEnabled])
              {
                v31 = objc_opt_class();
                v50[0] = MEMORY[0x277D85DD0];
                v50[1] = 3221225472;
                v50[2] = __86__PLBatteryUIResponseTypeBatteryBreakdownInternal_populateInternalRootNodeEnergyKeys___block_invoke_26;
                v50[3] = &__block_descriptor_40_e5_v8__0lu32l8;
                v50[4] = v31;
                if (populateInternalRootNodeEnergyKeys__defaultOnce_24 != -1)
                {
                  dispatch_once(&populateInternalRootNodeEnergyKeys__defaultOnce_24, v50);
                }

                if (populateInternalRootNodeEnergyKeys__classDebugEnabled_25 == 1)
                {
                  v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"rootNodeEnergyKey=%@", v30];
                  v33 = MEMORY[0x277D3F178];
                  v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeBatteryBreakdownInternal.m"];
                  lastPathComponent3 = [v34 lastPathComponent];
                  v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIResponseTypeBatteryBreakdownInternal populateInternalRootNodeEnergyKeys:]"];
                  [v33 logMessage:v32 fromFile:lastPathComponent3 fromFunction:v36 fromLineNumber:35];

                  v38 = PLLogCommon(v37);
                  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v63 = v32;
                    _os_log_debug_impl(&dword_25EE51000, v38, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                  }

                  self = selfCopy;
                  v5 = 0x277D3F000;
                  v18 = v48;
                }
              }

              v39 = [v7 objectForKeyedSubscript:v20];
              if (v39)
              {
                v40 = v39;
              }

              else
              {
                v40 = &unk_2871479B0;
              }

              [v7 setObject:v40 forKeyedSubscript:v30];

              ++v19;
            }

            while (v17 != v19);
            v17 = [getRootNodeIDToRootNodeEnergyKeys countByEnumeratingWithState:&v52 objects:v61 count:16];
          }

          while (v17);
        }

        [array addObject:v7];
        v6 = v46 + 1;
      }

      while (v46 + 1 != v45);
      v45 = [obj countByEnumeratingWithState:&v57 objects:v64 count:16];
    }

    while (v45);
  }

  [v41 setObject:array forKeyedSubscript:@"PLBatteryUIAppArrayKey"];
}

void *__86__PLBatteryUIResponseTypeBatteryBreakdownInternal_populateInternalRootNodeEnergyKeys___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  populateInternalRootNodeEnergyKeys__classDebugEnabled = result;
  return result;
}

void *__86__PLBatteryUIResponseTypeBatteryBreakdownInternal_populateInternalRootNodeEnergyKeys___block_invoke_20(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  populateInternalRootNodeEnergyKeys__classDebugEnabled_19 = result;
  return result;
}

void *__86__PLBatteryUIResponseTypeBatteryBreakdownInternal_populateInternalRootNodeEnergyKeys___block_invoke_26(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  populateInternalRootNodeEnergyKeys__classDebugEnabled_25 = result;
  return result;
}

- (BOOL)showRootNodesInInternal
{
  if (showRootNodesInInternal_onceToken_0 != -1)
  {
    [PLBatteryUIResponseTypeBatteryBreakdownInternal showRootNodesInInternal];
  }

  v3 = showRootNodesInInternal_val_0;
  if (showRootNodesInInternal_val_0)
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

uint64_t __74__PLBatteryUIResponseTypeBatteryBreakdownInternal_showRootNodesInInternal__block_invoke()
{
  +[PLUtilities containerPath];
  v0 = _CFPreferencesCopyValueWithContainer();
  showRootNodesInInternal_val_0 = v0;

  return MEMORY[0x2821F96F8](v0);
}

- (void)filterEnergyEntries:(id)entries
{
  v23 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  if (![(PLBatteryUIResponseTypeBatteryBreakdownInternal *)self showRootNodesInInternal])
  {
    v16 = entriesCopy;
    v17 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = [entriesCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          v11 = [v10 objectForKeyedSubscript:@"PLBatteryUIAppTypeKey"];
          intValue = [v11 intValue];

          if (intValue != 5)
          {
            v13 = [v10 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
            getIntermediateRootNodes = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getIntermediateRootNodes];
            v15 = [getIntermediateRootNodes containsObject:v13];

            if ((v15 & 1) == 0 && [v13 rangeOfString:@"AssertionPID"] == 0x7FFFFFFFFFFFFFFFLL)
            {
              [v17 addObject:v10];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }

    entriesCopy = v16;
    [v16 setObject:v17 forKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  }
}

@end