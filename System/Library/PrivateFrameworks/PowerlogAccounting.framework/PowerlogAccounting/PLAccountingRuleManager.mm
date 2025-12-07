@interface PLAccountingRuleManager
+ (id)decryptData:(id)data withKey:(id)key;
+ (id)firstLineWithFile:(id)file;
- (NSMutableDictionary)ruleIDToRule;
- (PLAccountingRuleManager)init;
- (id)ruleForRuleID:(id)d;
- (id)rulesFromFileWithForceLoad:(BOOL)load;
- (void)indexRule:(id)rule;
- (void)loadRules;
@end

@implementation PLAccountingRuleManager

- (NSMutableDictionary)ruleIDToRule
{
  ruleIDToRule = self->_ruleIDToRule;
  if (!ruleIDToRule)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v5 = self->_ruleIDToRule;
    self->_ruleIDToRule = dictionary;

    ruleIDToRule = self->_ruleIDToRule;
  }

  return ruleIDToRule;
}

- (PLAccountingRuleManager)init
{
  v5.receiver = self;
  v5.super_class = PLAccountingRuleManager;
  v2 = [(PLAccountingRuleManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PLAccountingRuleManager *)v2 loadRules];
  }

  return v3;
}

- (id)ruleForRuleID:(id)d
{
  dCopy = d;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__PLAccountingRuleManager_ruleForRuleID___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (ruleForRuleID__defaultOnce != -1)
    {
      dispatch_once(&ruleForRuleID__defaultOnce, block);
    }

    if (ruleForRuleID__classDebugEnabled == 1)
    {
      v6 = MEMORY[0x277CCACA8];
      ruleIDToRule = [(PLAccountingRuleManager *)self ruleIDToRule];
      v8 = [v6 stringWithFormat:@"ruleID=%@, ruleIDToRule=%@", dCopy, ruleIDToRule];

      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Rule Managers/PLAccountingRuleManager.m"];
      lastPathComponent = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingRuleManager ruleForRuleID:]"];
      [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:37];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  ruleIDToRule2 = [(PLAccountingRuleManager *)self ruleIDToRule];
  v15 = [ruleIDToRule2 objectForKeyedSubscript:dCopy];

  return v15;
}

void *__41__PLAccountingRuleManager_ruleForRuleID___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  ruleForRuleID__classDebugEnabled = result;
  return result;
}

- (void)indexRule:(id)rule
{
  ruleCopy = rule;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __37__PLAccountingRuleManager_indexRule___block_invoke;
    v17 = &__block_descriptor_40_e5_v8__0lu32l8;
    v18 = v5;
    if (indexRule__defaultOnce_1 != -1)
    {
      dispatch_once(&indexRule__defaultOnce_1, &block);
    }

    if (indexRule__classDebugEnabled_1 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"rule=%@", ruleCopy, block, v15, v16, v17, v18];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Rule Managers/PLAccountingRuleManager.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingRuleManager indexRule:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:42];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  ruleIDToRule = [(PLAccountingRuleManager *)self ruleIDToRule];
  v13 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(ruleCopy, "entryID")}];
  [ruleIDToRule setObject:ruleCopy forKeyedSubscript:v13];
}

void *__37__PLAccountingRuleManager_indexRule___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  indexRule__classDebugEnabled_1 = result;
  return result;
}

- (void)loadRules
{
  v123 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
  storage = [mEMORY[0x277D3F2A0] storage];
  rulesEntryKey = [objc_opt_class() rulesEntryKey];
  v90 = [storage entriesForKey:rulesEntryKey];

  v6 = 0x277D3F000uLL;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = objc_opt_class();
    v116[0] = MEMORY[0x277D85DD0];
    v116[1] = 3221225472;
    v116[2] = __36__PLAccountingRuleManager_loadRules__block_invoke;
    v116[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v116[4] = v7;
    if (loadRules_defaultOnce != -1)
    {
      dispatch_once(&loadRules_defaultOnce, v116);
    }

    if (loadRules_classDebugEnabled == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"rulesFromDB=%@", v90];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Rule Managers/PLAccountingRuleManager.m"];
      lastPathComponent = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingRuleManager loadRules]"];
      [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:62];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  v14 = -[PLAccountingRuleManager rulesFromFileWithForceLoad:](self, "rulesFromFileWithForceLoad:", [v90 count] == 0);
  v87 = v14;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v15 = objc_opt_class();
    v115[0] = MEMORY[0x277D85DD0];
    v115[1] = 3221225472;
    v115[2] = __36__PLAccountingRuleManager_loadRules__block_invoke_25;
    v115[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v115[4] = v15;
    if (loadRules_defaultOnce_23 != -1)
    {
      dispatch_once(&loadRules_defaultOnce_23, v115);
    }

    if (loadRules_classDebugEnabled_24 == 1)
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"rulesFromFile=%@", v14];
      v17 = MEMORY[0x277D3F178];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Rule Managers/PLAccountingRuleManager.m"];
      lastPathComponent2 = [v18 lastPathComponent];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingRuleManager loadRules]"];
      [v17 logMessage:v16 fromFile:lastPathComponent2 fromFunction:v20 fromLineNumber:67];

      v21 = PLLogCommon();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }

      v14 = v87;
    }
  }

  if (v14)
  {
    v22 = [MEMORY[0x277CBEB98] setWithArray:v90];
    v23 = [MEMORY[0x277CBEB98] setWithArray:v14];
    v89 = v22;
    v24 = [v22 mutableCopy];
    v88 = v23;
    [v24 minusSet:v23];
    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v25 = v24;
    v26 = [v25 countByEnumeratingWithState:&v111 objects:v122 count:16];
    v93 = v25;
    if (v26)
    {
      v27 = v26;
      v28 = *v112;
      do
      {
        v29 = 0;
        do
        {
          if (*v112 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v111 + 1) + 8 * v29);
          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v31 = objc_opt_class();
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __36__PLAccountingRuleManager_loadRules__block_invoke_32;
            block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            block[4] = v31;
            if (loadRules_defaultOnce_30 != -1)
            {
              dispatch_once(&loadRules_defaultOnce_30, block);
            }

            if (loadRules_classDebugEnabled_31 == 1)
            {
              v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"ruleToDelete=%@", v30];
              v33 = MEMORY[0x277D3F178];
              v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Rule Managers/PLAccountingRuleManager.m"];
              lastPathComponent3 = [v34 lastPathComponent];
              v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingRuleManager loadRules]"];
              [v33 logMessage:v32 fromFile:lastPathComponent3 fromFunction:v36 fromLineNumber:78];

              v37 = PLLogCommon();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v121 = v32;
                _os_log_debug_impl(&dword_25EDCD000, v37, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v6 = 0x277D3F000uLL;
              v25 = v93;
            }
          }

          mEMORY[0x277D3F2A0]2 = [MEMORY[0x277D3F2A0] sharedCore];
          storage2 = [mEMORY[0x277D3F2A0]2 storage];
          [storage2 deleteEntry:v30];

          ++v29;
        }

        while (v27 != v29);
        v27 = [v25 countByEnumeratingWithState:&v111 objects:v122 count:16];
      }

      while (v27);
    }

    v40 = [v88 mutableCopy];
    [v40 minusSet:v89];
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v41 = v40;
    v42 = [v41 countByEnumeratingWithState:&v106 objects:v119 count:16];
    v92 = v41;
    if (v42)
    {
      v43 = v42;
      v44 = *v107;
      do
      {
        v45 = 0;
        do
        {
          if (*v107 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v46 = *(*(&v106 + 1) + 8 * v45);
          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v47 = objc_opt_class();
            v105[0] = MEMORY[0x277D85DD0];
            v105[1] = 3221225472;
            v105[2] = __36__PLAccountingRuleManager_loadRules__block_invoke_38;
            v105[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v105[4] = v47;
            if (loadRules_defaultOnce_36 != -1)
            {
              dispatch_once(&loadRules_defaultOnce_36, v105);
            }

            if (loadRules_classDebugEnabled_37 == 1)
            {
              v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"ruleToAdd=%@", v46];
              v49 = MEMORY[0x277D3F178];
              v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Rule Managers/PLAccountingRuleManager.m"];
              lastPathComponent4 = [v50 lastPathComponent];
              v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingRuleManager loadRules]"];
              [v49 logMessage:v48 fromFile:lastPathComponent4 fromFunction:v52 fromLineNumber:86];

              v53 = PLLogCommon();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v121 = v48;
                _os_log_debug_impl(&dword_25EDCD000, v53, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v6 = 0x277D3F000uLL;
              v41 = v92;
            }
          }

          mEMORY[0x277D3F2A0]3 = [MEMORY[0x277D3F2A0] sharedCore];
          storage3 = [mEMORY[0x277D3F2A0]3 storage];
          [storage3 blockingWriteEntry:v46 withCompletionBlock:&__block_literal_global_14];

          [(PLAccountingRuleManager *)self indexRule:v46];
          ++v45;
        }

        while (v43 != v45);
        v43 = [v41 countByEnumeratingWithState:&v106 objects:v119 count:16];
      }

      while (v43);
    }

    v56 = [v89 mutableCopy];
    [v56 intersectSet:v88];
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v57 = v56;
    v58 = [v57 countByEnumeratingWithState:&v101 objects:v118 count:16];
    if (v58)
    {
      v59 = v58;
      v60 = *v102;
      v61 = &dependencyIDsForOwner__defaultOnce;
      selfCopy = self;
      do
      {
        for (i = 0; i != v59; ++i)
        {
          if (*v102 != v60)
          {
            objc_enumerationMutation(v57);
          }

          v63 = *(*(&v101 + 1) + 8 * i);
          if ([*(v6 + 384) debugEnabled])
          {
            v64 = objc_opt_class();
            v100[0] = MEMORY[0x277D85DD0];
            v100[1] = 3221225472;
            v100[2] = __36__PLAccountingRuleManager_loadRules__block_invoke_2;
            v100[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v100[4] = v64;
            if (v61[482] != -1)
            {
              dispatch_once(&loadRules_defaultOnce_43, v100);
            }

            if (loadRules_classDebugEnabled_44 == 1)
            {
              v65 = v57;
              v66 = [MEMORY[0x277CCACA8] stringWithFormat:@"ruleInBoth=%@", v63];
              v67 = MEMORY[0x277D3F178];
              v68 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Rule Managers/PLAccountingRuleManager.m"];
              lastPathComponent5 = [v68 lastPathComponent];
              v70 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingRuleManager loadRules]"];
              [v67 logMessage:v66 fromFile:lastPathComponent5 fromFunction:v70 fromLineNumber:95];

              v71 = PLLogCommon();
              if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v121 = v66;
                _os_log_debug_impl(&dword_25EDCD000, v71, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v6 = 0x277D3F000;
              v57 = v65;
              self = selfCopy;
              v61 = &dependencyIDsForOwner__defaultOnce;
            }
          }

          [(PLAccountingRuleManager *)self indexRule:v63];
        }

        v59 = [v57 countByEnumeratingWithState:&v101 objects:v118 count:16];
      }

      while (v59);
    }

    v72 = v89;
  }

  else
  {
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v72 = v90;
    v73 = [v72 countByEnumeratingWithState:&v96 objects:v117 count:16];
    if (v73)
    {
      v74 = v73;
      v75 = *v97;
      v76 = &dependencyIDsForOwner__defaultOnce;
      v94 = *v97;
      do
      {
        for (j = 0; j != v74; ++j)
        {
          if (*v97 != v75)
          {
            objc_enumerationMutation(v72);
          }

          v78 = *(*(&v96 + 1) + 8 * j);
          if ([*(v6 + 384) debugEnabled])
          {
            v79 = objc_opt_class();
            v95[0] = MEMORY[0x277D85DD0];
            v95[1] = 3221225472;
            v95[2] = __36__PLAccountingRuleManager_loadRules__block_invoke_50;
            v95[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v95[4] = v79;
            if (v76[484] != -1)
            {
              dispatch_once(&loadRules_defaultOnce_48, v95);
            }

            if (loadRules_classDebugEnabled_49 == 1)
            {
              v80 = v72;
              v81 = [MEMORY[0x277CCACA8] stringWithFormat:@"ruleFromDB=%@", v78];
              v82 = MEMORY[0x277D3F178];
              v83 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Rule Managers/PLAccountingRuleManager.m"];
              lastPathComponent6 = [v83 lastPathComponent];
              v85 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingRuleManager loadRules]"];
              [v82 logMessage:v81 fromFile:lastPathComponent6 fromFunction:v85 fromLineNumber:102];

              v86 = PLLogCommon();
              if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v121 = v81;
                _os_log_debug_impl(&dword_25EDCD000, v86, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v6 = 0x277D3F000;
              v72 = v80;
              v75 = v94;
              v76 = &dependencyIDsForOwner__defaultOnce;
            }
          }

          [(PLAccountingRuleManager *)self indexRule:v78];
        }

        v74 = [v72 countByEnumeratingWithState:&v96 objects:v117 count:16];
      }

      while (v74);
    }
  }
}

void *__36__PLAccountingRuleManager_loadRules__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  loadRules_classDebugEnabled = result;
  return result;
}

void *__36__PLAccountingRuleManager_loadRules__block_invoke_25(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  loadRules_classDebugEnabled_24 = result;
  return result;
}

void *__36__PLAccountingRuleManager_loadRules__block_invoke_32(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  loadRules_classDebugEnabled_31 = result;
  return result;
}

void *__36__PLAccountingRuleManager_loadRules__block_invoke_38(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  loadRules_classDebugEnabled_37 = result;
  return result;
}

void *__36__PLAccountingRuleManager_loadRules__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  loadRules_classDebugEnabled_44 = result;
  return result;
}

void *__36__PLAccountingRuleManager_loadRules__block_invoke_50(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  loadRules_classDebugEnabled_49 = result;
  return result;
}

- (id)rulesFromFileWithForceLoad:(BOOL)load
{
  v104 = *MEMORY[0x277D85DE8];
  rulesPath = [objc_opt_class() rulesPath];
  if (rulesPath)
  {
    v6 = [objc_opt_class() firstLineWithFile:rulesPath];
    v7 = 0x277CCA000uLL;
    if ([v6 rangeOfString:@"Error"] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"*** ERROR: parsing error in file %@", rulesPath];
      v32 = MEMORY[0x277D3F178];
      v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Rule Managers/PLAccountingRuleManager.m"];
      lastPathComponent = [v33 lastPathComponent];
      v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingRuleManager rulesFromFileWithForceLoad:]"];
      [v32 logMessage:v8 fromFile:lastPathComponent fromFunction:v35 fromLineNumber:120];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }

      array = 0;
      goto LABEL_65;
    }

    v8 = [v6 substringFromIndex:3];
    v9 = MEMORY[0x277CCACA8];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v9 stringWithFormat:@"%@_storedHash", v11];

    v13 = 0x277D3F000uLL;
    v14 = [MEMORY[0x277D3F180] objectForKey:v12];
    selfCopy = self;
    v86 = v14;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v15 = objc_opt_class();
      v100[0] = MEMORY[0x277D85DD0];
      v100[1] = 3221225472;
      v100[2] = __54__PLAccountingRuleManager_rulesFromFileWithForceLoad___block_invoke;
      v100[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v100[4] = v15;
      if (rulesFromFileWithForceLoad__defaultOnce != -1)
      {
        dispatch_once(&rulesFromFileWithForceLoad__defaultOnce, v100);
      }

      if (rulesFromFileWithForceLoad__classDebugEnabled == 1)
      {
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"firstLine=%@, fileHash=%@, storedHash=%@", v6, v8, v14];
        v17 = MEMORY[0x277D3F178];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Rule Managers/PLAccountingRuleManager.m"];
        lastPathComponent2 = [v18 lastPathComponent];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingRuleManager rulesFromFileWithForceLoad:]"];
        [v17 logMessage:v16 fromFile:lastPathComponent2 fromFunction:v20 fromLineNumber:128];

        v21 = PLLogCommon();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }

        v14 = v86;
        v7 = 0x277CCA000uLL;
        self = selfCopy;
        v13 = 0x277D3F000uLL;
      }
    }

    if (!load && v14 && [v8 isEqualToString:v14])
    {
      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_69;
      }

      v22 = objc_opt_class();
      v99[0] = MEMORY[0x277D85DD0];
      v99[1] = 3221225472;
      v99[2] = __54__PLAccountingRuleManager_rulesFromFileWithForceLoad___block_invoke_71;
      v99[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v99[4] = v22;
      if (rulesFromFileWithForceLoad__defaultOnce_69 != -1)
      {
        dispatch_once(&rulesFromFileWithForceLoad__defaultOnce_69, v99);
      }

      if (rulesFromFileWithForceLoad__classDebugEnabled_70 != 1)
      {
LABEL_69:
        array = 0;
        goto LABEL_64;
      }

      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"hashes match, skipping parsing"];
      v89 = MEMORY[0x277D3F178];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Rule Managers/PLAccountingRuleManager.m"];
      lastPathComponent3 = [v24 lastPathComponent];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingRuleManager rulesFromFileWithForceLoad:]"];
      [v89 logMessage:v23 fromFile:lastPathComponent3 fromFunction:v26 fromLineNumber:132];

      v27 = PLLogCommon();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }

      array = 0;
    }

    else
    {
      [MEMORY[0x277D3F180] setObject:v8 forKey:v12 saveToDisk:1];
      v36 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:rulesPath];
      v85 = v36;
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v37 = objc_opt_class();
        v98[0] = MEMORY[0x277D85DD0];
        v98[1] = 3221225472;
        v98[2] = __54__PLAccountingRuleManager_rulesFromFileWithForceLoad___block_invoke_78;
        v98[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v98[4] = v37;
        if (rulesFromFileWithForceLoad__defaultOnce_76 != -1)
        {
          dispatch_once(&rulesFromFileWithForceLoad__defaultOnce_76, v98);
        }

        if (rulesFromFileWithForceLoad__classDebugEnabled_77 == 1)
        {
          v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"fileBytes.length=%lu", objc_msgSend(v36, "length")];
          v39 = MEMORY[0x277D3F178];
          v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Rule Managers/PLAccountingRuleManager.m"];
          lastPathComponent4 = [v40 lastPathComponent];
          v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingRuleManager rulesFromFileWithForceLoad:]"];
          [v39 logMessage:v38 fromFile:lastPathComponent4 fromFunction:v42 fromLineNumber:141];

          v43 = PLLogCommon();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
          {
            [PLAccountingDependency activate];
          }

          v7 = 0x277CCA000uLL;
          self = selfCopy;
          v13 = 0x277D3F000uLL;
          v36 = v85;
        }
      }

      v80 = [v36 subdataWithRange:{89, objc_msgSend(v36, "length") - 89}];
      v44 = [objc_opt_class() decryptData:v80 withKey:@"563e097d3dea5165"];
      v45 = MEMORY[0x277CCACA8];
      v79 = v44;
      v46 = [v45 stringWithUTF8String:{objc_msgSend(v79, "bytes")}];
      newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
      v78 = v46;
      v48 = [v46 componentsSeparatedByCharactersInSet:newlineCharacterSet];

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v49 = objc_opt_class();
        v97[0] = MEMORY[0x277D85DD0];
        v97[1] = 3221225472;
        v97[2] = __54__PLAccountingRuleManager_rulesFromFileWithForceLoad___block_invoke_88;
        v97[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v97[4] = v49;
        if (rulesFromFileWithForceLoad__defaultOnce_86 != -1)
        {
          dispatch_once(&rulesFromFileWithForceLoad__defaultOnce_86, v97);
        }

        if (rulesFromFileWithForceLoad__classDebugEnabled_87 == 1)
        {
          v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"allLines=%@", v48];
          v51 = MEMORY[0x277D3F178];
          v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Rule Managers/PLAccountingRuleManager.m"];
          lastPathComponent5 = [v52 lastPathComponent];
          v54 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingRuleManager rulesFromFileWithForceLoad:]"];
          [v51 logMessage:v50 fromFile:lastPathComponent5 fromFunction:v54 fromLineNumber:150];

          v55 = PLLogCommon();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
          {
            [PLAccountingDependency activate];
          }

          v7 = 0x277CCA000uLL;
          self = selfCopy;
          v13 = 0x277D3F000uLL;
        }
      }

      v81 = v12;
      v82 = v8;
      v83 = v6;
      v84 = rulesPath;
      array = [MEMORY[0x277CBEB18] array];
      monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
      v93 = 0u;
      v94 = 0u;
      v95 = 0u;
      v96 = 0u;
      obj = v48;
      v57 = [obj countByEnumeratingWithState:&v93 objects:v103 count:16];
      if (v57)
      {
        v58 = v57;
        v59 = *v94;
        do
        {
          v60 = 0;
          do
          {
            if (*v94 != v59)
            {
              objc_enumerationMutation(obj);
            }

            v61 = *(*(&v93 + 1) + 8 * v60);
            if ([*(v13 + 384) debugEnabled])
            {
              v62 = objc_opt_class();
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __54__PLAccountingRuleManager_rulesFromFileWithForceLoad___block_invoke_96;
              block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              block[4] = v62;
              if (rulesFromFileWithForceLoad__defaultOnce_94 != -1)
              {
                dispatch_once(&rulesFromFileWithForceLoad__defaultOnce_94, block);
              }

              if (rulesFromFileWithForceLoad__classDebugEnabled_95 == 1)
              {
                v63 = [*(v7 + 3240) stringWithFormat:@"line=%@", v61];
                v64 = MEMORY[0x277D3F178];
                v65 = [*(v7 + 3240) stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Rule Managers/PLAccountingRuleManager.m"];
                lastPathComponent6 = [v65 lastPathComponent];
                v67 = [*(v7 + 3240) stringWithUTF8String:"-[PLAccountingRuleManager rulesFromFileWithForceLoad:]"];
                [v64 logMessage:v63 fromFile:lastPathComponent6 fromFunction:v67 fromLineNumber:156];

                v68 = PLLogCommon();
                if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v102 = v63;
                  _os_log_debug_impl(&dword_25EDCD000, v68, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v7 = 0x277CCA000uLL;
                self = selfCopy;
                v13 = 0x277D3F000uLL;
              }
            }

            v69 = [(PLAccountingRuleManager *)self ruleWithString:v61 withEntryDate:monotonicDate];
            if ([*(v13 + 384) debugEnabled])
            {
              v70 = objc_opt_class();
              v91[0] = MEMORY[0x277D85DD0];
              v91[1] = 3221225472;
              v91[2] = __54__PLAccountingRuleManager_rulesFromFileWithForceLoad___block_invoke_102;
              v91[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v91[4] = v70;
              if (rulesFromFileWithForceLoad__defaultOnce_100 != -1)
              {
                dispatch_once(&rulesFromFileWithForceLoad__defaultOnce_100, v91);
              }

              if (rulesFromFileWithForceLoad__classDebugEnabled_101 == 1)
              {
                v71 = [*(v7 + 3240) stringWithFormat:@"rule=%@", v69];
                v72 = MEMORY[0x277D3F178];
                v73 = [*(v7 + 3240) stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Rule Managers/PLAccountingRuleManager.m"];
                lastPathComponent7 = [v73 lastPathComponent];
                v75 = [*(v7 + 3240) stringWithUTF8String:"-[PLAccountingRuleManager rulesFromFileWithForceLoad:]"];
                [v72 logMessage:v71 fromFile:lastPathComponent7 fromFunction:v75 fromLineNumber:160];

                v76 = PLLogCommon();
                if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v102 = v71;
                  _os_log_debug_impl(&dword_25EDCD000, v76, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v7 = 0x277CCA000;
                self = selfCopy;
                v13 = 0x277D3F000;
              }
            }

            if (v69)
            {
              [array addObject:v69];
            }

            ++v60;
          }

          while (v58 != v60);
          v58 = [obj countByEnumeratingWithState:&v93 objects:v103 count:16];
        }

        while (v58);
      }

      [(PLAccountingRuleManager *)self setRegex:0];
      v6 = v83;
      rulesPath = v84;
      v12 = v81;
      v8 = v82;
      v23 = v85;
      v14 = v86;
      v27 = v80;
    }

LABEL_64:
LABEL_65:

    goto LABEL_66;
  }

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"*** ERROR: missing rules file %@", 0];
  v28 = MEMORY[0x277D3F178];
  v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Rule Managers/PLAccountingRuleManager.m"];
  lastPathComponent8 = [v29 lastPathComponent];
  v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingRuleManager rulesFromFileWithForceLoad:]"];
  [v28 logMessage:v6 fromFile:lastPathComponent8 fromFunction:v31 fromLineNumber:111];

  v8 = PLLogCommon();
  array = 0;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PLAccountingDependency activate];
    array = 0;
  }

LABEL_66:

  return array;
}

void *__54__PLAccountingRuleManager_rulesFromFileWithForceLoad___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  rulesFromFileWithForceLoad__classDebugEnabled = result;
  return result;
}

void *__54__PLAccountingRuleManager_rulesFromFileWithForceLoad___block_invoke_71(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  rulesFromFileWithForceLoad__classDebugEnabled_70 = result;
  return result;
}

void *__54__PLAccountingRuleManager_rulesFromFileWithForceLoad___block_invoke_78(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  rulesFromFileWithForceLoad__classDebugEnabled_77 = result;
  return result;
}

void *__54__PLAccountingRuleManager_rulesFromFileWithForceLoad___block_invoke_88(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  rulesFromFileWithForceLoad__classDebugEnabled_87 = result;
  return result;
}

void *__54__PLAccountingRuleManager_rulesFromFileWithForceLoad___block_invoke_96(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  rulesFromFileWithForceLoad__classDebugEnabled_95 = result;
  return result;
}

void *__54__PLAccountingRuleManager_rulesFromFileWithForceLoad___block_invoke_102(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  rulesFromFileWithForceLoad__classDebugEnabled_101 = result;
  return result;
}

+ (id)firstLineWithFile:(id)file
{
  MEMORY[0x28223BE20](self, a2, file);
  v4 = v3;
  v20 = *MEMORY[0x277D85DE8];
  v5 = v3;
  v6 = fopen([v4 UTF8String], "r");
  if (v6)
  {
    v7 = v6;
    v18 = 0;
    v8 = fscanf(v6, "%4096[^\n]%n%*c", v19, &v18);
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v9 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __45__PLAccountingRuleManager_firstLineWithFile___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v9;
      if (firstLineWithFile__defaultOnce != -1)
      {
        dispatch_once(&firstLineWithFile__defaultOnce, block);
      }

      if (firstLineWithFile__classDebugEnabled == 1)
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"buffer=%s, bytesRead=%i", v19, v18];
        v11 = MEMORY[0x277D3F178];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Rule Managers/PLAccountingRuleManager.m"];
        lastPathComponent = [v12 lastPathComponent];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLAccountingRuleManager firstLineWithFile:]"];
        [v11 logMessage:v10 fromFile:lastPathComponent fromFunction:v14 fromLineNumber:189];

        v15 = PLLogCommon();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }
      }
    }

    fclose(v7);
    if (v8)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:v19];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

void *__45__PLAccountingRuleManager_firstLineWithFile___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  firstLineWithFile__classDebugEnabled = result;
  return result;
}

+ (id)decryptData:(id)data withKey:(id)key
{
  v30 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  key[0] = 0;
  key[1] = 0;
  v29 = 0;
  [key getCString:key maxLength:17 encoding:4];
  dataOut = malloc_type_malloc([dataCopy length] + 16, 0x63EE837BuLL);
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__PLAccountingRuleManager_decryptData_withKey___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v7;
    if (decryptData_withKey__defaultOnce != -1)
    {
      dispatch_once(&decryptData_withKey__defaultOnce, block);
    }

    if (decryptData_withKey__classDebugEnabled == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"encryptedData.length=%lu", objc_msgSend(dataCopy, "length")];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Rule Managers/PLAccountingRuleManager.m"];
      lastPathComponent = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLAccountingRuleManager decryptData:withKey:]"];
      [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:215];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  v26 = 0;
  v14 = CCCrypt(1u, 0, 3u, key, 0x10uLL, 0, [dataCopy bytes], objc_msgSend(dataCopy, "length"), dataOut, objc_msgSend(dataCopy, "length") + 16, &v26);
  v15 = 0;
  v16 = v26;
  *(dataOut + v26) = 0;
  if (!v14)
  {
    v15 = [MEMORY[0x277CBEA90] dataWithBytes:dataOut length:v16 + 1];
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v17 = objc_opt_class();
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __47__PLAccountingRuleManager_decryptData_withKey___block_invoke_113;
    v25[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v25[4] = v17;
    if (decryptData_withKey__defaultOnce_111 != -1)
    {
      dispatch_once(&decryptData_withKey__defaultOnce_111, v25);
    }

    if (decryptData_withKey__classDebugEnabled_112 == 1)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"numBytesDecrypted=%lu", v26];
      v19 = MEMORY[0x277D3F178];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Rule Managers/PLAccountingRuleManager.m"];
      lastPathComponent2 = [v20 lastPathComponent];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLAccountingRuleManager decryptData:withKey:]"];
      [v19 logMessage:v18 fromFile:lastPathComponent2 fromFunction:v22 fromLineNumber:236];

      v23 = PLLogCommon();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  free(dataOut);

  return v15;
}

void *__47__PLAccountingRuleManager_decryptData_withKey___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  decryptData_withKey__classDebugEnabled = result;
  return result;
}

void *__47__PLAccountingRuleManager_decryptData_withKey___block_invoke_113(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  decryptData_withKey__classDebugEnabled_112 = result;
  return result;
}

@end