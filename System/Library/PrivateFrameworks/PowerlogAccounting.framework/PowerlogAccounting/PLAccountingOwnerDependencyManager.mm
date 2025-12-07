@interface PLAccountingOwnerDependencyManager
- (PLAccountingOwnerDependencyManager)init;
- (id)_lastDependencyForDependencyID:(id)d;
- (id)dependenciesWithDependencyID:(id)d withRange:(id)range;
- (id)lastDependencyForDependencyID:(id)d;
- (id)lastOwnerForOwnerID:(id)d;
- (void)addDependency:(id)dependency;
- (void)addOwner:(id)owner;
- (void)canFreeDependency:(id)dependency;
- (void)canFreeOwner:(id)owner;
- (void)freeExpiredDependenciesAtNow:(id)now;
- (void)freeExpiredOwnersAtNow:(id)now;
- (void)notifyDependenciesWithOwner:(id)owner;
- (void)notifyOwnersWithDependency:(id)dependency;
- (void)startObservingDependencyID:(id)d forOwner:(id)owner;
- (void)startObservingOwnerID:(id)d forDependency:(id)dependency;
- (void)stopObservingDependencyID:(id)d forOwner:(id)owner;
- (void)stopObservingOwnerID:(id)d forDependency:(id)dependency;
- (void)updateLastDependencyID:(id)d withEndDate:(id)date;
@end

@implementation PLAccountingOwnerDependencyManager

void __42__PLAccountingOwnerDependencyManager_init__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] monotonicDate];
  [*(a1 + 32) freeExpiredOwnersAtNow:v2];
  [*(a1 + 32) freeExpiredDependenciesAtNow:v2];
}

- (PLAccountingOwnerDependencyManager)init
{
  v41.receiver = self;
  v41.super_class = PLAccountingOwnerDependencyManager;
  v2 = [(PLAccountingOwnerDependencyManager *)&v41 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D3F258] workQueueForClass:objc_opt_class()];
    workQueue = v2->_workQueue;
    v2->_workQueue = v3;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    dependencyIDToObservingOwners = v2->_dependencyIDToObservingOwners;
    v2->_dependencyIDToObservingOwners = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    dependencyIDToDependencies = v2->_dependencyIDToDependencies;
    v2->_dependencyIDToDependencies = dictionary2;

    v2->_numDependencies = 0;
    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    ownerIDToObservingDependencies = v2->_ownerIDToObservingDependencies;
    v2->_ownerIDToObservingDependencies = dictionary3;

    dictionary4 = [MEMORY[0x277CBEB38] dictionary];
    ownerIDToLastOwner = v2->_ownerIDToLastOwner;
    v2->_ownerIDToLastOwner = dictionary4;

    v13 = [MEMORY[0x277CBEB58] set];
    ownersRepository = v2->_ownersRepository;
    v2->_ownersRepository = v13;

    v15 = objc_alloc(MEMORY[0x277D3F250]);
    v16 = MEMORY[0x277CBEAA8];
    [objc_opt_class() freeTimerInterval];
    v18 = [v16 dateWithTimeIntervalSinceNow:v17 * 0.25];
    [objc_opt_class() freeTimerInterval];
    v20 = v19 * 0.25;
    workQueue = [(PLAccountingOwnerDependencyManager *)v2 workQueue];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __42__PLAccountingOwnerDependencyManager_init__block_invoke;
    v39[3] = &unk_279A56068;
    v22 = v2;
    v40 = v22;
    v23 = [v15 initWithFireDate:v18 withInterval:1 withTolerance:0 repeats:workQueue withUserInfo:v39 withQueue:v20 withBlock:0.0];
    freeTimer = v22->_freeTimer;
    v22->_freeTimer = v23;

    v25 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v34 = 3221225472;
    v35 = __42__PLAccountingOwnerDependencyManager_init__block_invoke_2;
    v36 = &unk_279A55D70;
    v37 = @"free";
    v38 = v25;
    if (init_defaultOnce != -1)
    {
      dispatch_once(&init_defaultOnce, &block);
    }

    v26 = init_classDebugEnabled;

    if (v26 == 1)
    {
      v27 = MEMORY[0x277CCACA8];
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = [v27 stringWithFormat:@"com.apple.powerlogd.%@.testFree", v29, block, v34, v35, v36];

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v22, testFree, v30, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }
  }

  return v2;
}

void *__42__PLAccountingOwnerDependencyManager_init__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  init_classDebugEnabled = result;
  return result;
}

- (void)addOwner:(id)owner
{
  ownerCopy = owner;
  workQueue = [(PLAccountingOwnerDependencyManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__PLAccountingOwnerDependencyManager_addOwner___block_invoke;
  v7[3] = &unk_279A55DC0;
  v7[4] = self;
  v8 = ownerCopy;
  v6 = ownerCopy;
  dispatch_async_and_wait(workQueue, v7);
}

void __47__PLAccountingOwnerDependencyManager_addOwner___block_invoke(uint64_t a1)
{
  v75 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__PLAccountingOwnerDependencyManager_addOwner___block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v2;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_0 != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_0, block);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_0 == 1)
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"owner=%@", *(a1 + 40)];
      v4 = MEMORY[0x277D3F178];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
      v6 = [v5 lastPathComponent];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager addOwner:]_block_invoke"];
      [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:71];

      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  if (*(a1 + 40))
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v9 = objc_opt_class();
      v72[0] = MEMORY[0x277D85DD0];
      v72[1] = 3221225472;
      v72[2] = __47__PLAccountingOwnerDependencyManager_addOwner___block_invoke_29;
      v72[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v72[4] = v9;
      if (PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_27 != -1)
      {
        dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_27, v72);
      }

      if (PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_28 == 1)
      {
        v10 = MEMORY[0x277CCACA8];
        v11 = [*(a1 + 40) ID];
        v12 = [v10 stringWithFormat:@"owner.ID=%@", v11];

        v13 = MEMORY[0x277D3F178];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
        v15 = [v14 lastPathComponent];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager addOwner:]_block_invoke_2"];
        [v13 logMessage:v12 fromFile:v15 fromFunction:v16 fromLineNumber:74];

        v17 = PLLogCommon();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }
      }
    }

    v18 = [*(a1 + 32) ownersRepository];
    [v18 addObject:*(a1 + 40)];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v19 = objc_opt_class();
      v71[0] = MEMORY[0x277D85DD0];
      v71[1] = 3221225472;
      v71[2] = __47__PLAccountingOwnerDependencyManager_addOwner___block_invoke_36;
      v71[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v71[4] = v19;
      if (PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_34 != -1)
      {
        dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_34, v71);
      }

      if (PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_35 == 1)
      {
        v20 = MEMORY[0x277CCACA8];
        v21 = [*(a1 + 32) ownersRepository];
        v22 = [v20 stringWithFormat:@"ownersRepository=%@", v21];

        v23 = MEMORY[0x277D3F178];
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
        v25 = [v24 lastPathComponent];
        v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager addOwner:]_block_invoke_2"];
        [v23 logMessage:v22 fromFile:v25 fromFunction:v26 fromLineNumber:78];

        v27 = PLLogCommon();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }
      }
    }

    v28 = *(a1 + 40);
    v29 = [*(a1 + 32) ownerIDToLastOwner];
    v30 = [*(a1 + 40) ID];
    [v29 setObject:v28 forKeyedSubscript:v30];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v31 = objc_opt_class();
      v70[0] = MEMORY[0x277D85DD0];
      v70[1] = 3221225472;
      v70[2] = __47__PLAccountingOwnerDependencyManager_addOwner___block_invoke_42;
      v70[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v70[4] = v31;
      if (PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_40 != -1)
      {
        dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_40, v70);
      }

      if (PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_41 == 1)
      {
        v32 = MEMORY[0x277CCACA8];
        v33 = [*(a1 + 32) ownerIDToLastOwner];
        v34 = [v32 stringWithFormat:@"ownerIDToLastOwner=%@", v33];

        v35 = MEMORY[0x277D3F178];
        v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
        v37 = [v36 lastPathComponent];
        v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager addOwner:]_block_invoke_2"];
        [v35 logMessage:v34 fromFile:v37 fromFunction:v38 fromLineNumber:82];

        v39 = PLLogCommon();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }
      }
    }

    [*(a1 + 40) setManager:*(a1 + 32)];
    [*(a1 + 40) activate];
    v40 = [*(a1 + 32) ownersRepository];
    v41 = [v40 count];
    v42 = [objc_opt_class() maxOwners];

    if (v41 > v42)
    {
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v43 = [*(a1 + 32) ownersRepository];
      v44 = [v43 countByEnumeratingWithState:&v66 objects:v74 count:16];
      if (v44)
      {
        v45 = v44;
        v46 = 0;
        v47 = *v67;
        do
        {
          for (i = 0; i != v45; ++i)
          {
            if (*v67 != v47)
            {
              objc_enumerationMutation(v43);
            }

            v49 = *(*(&v66 + 1) + 8 * i);
            if (v46)
            {
              v50 = [*(*(&v66 + 1) + 8 * i) activationDate];
              v51 = [v46 activationDate];
              [v50 timeIntervalSinceDate:v51];
              v53 = v52;

              if (v53 >= 0.0)
              {
                continue;
              }
            }

            v54 = v49;

            v46 = v54;
          }

          v45 = [v43 countByEnumeratingWithState:&v66 objects:v74 count:16];
        }

        while (v45);
      }

      else
      {
        v46 = 0;
      }

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v55 = objc_opt_class();
        v63[0] = MEMORY[0x277D85DD0];
        v63[1] = 3221225472;
        v63[2] = __47__PLAccountingOwnerDependencyManager_addOwner___block_invoke_48;
        v63[3] = &unk_279A55D70;
        v64 = @"free";
        v65 = v55;
        if (PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_46 != -1)
        {
          dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_46, v63);
        }

        v56 = PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_47;

        if (v56 == 1)
        {
          v57 = [MEMORY[0x277CCACA8] stringWithFormat:@"freeing owner=%@", v46];
          v58 = MEMORY[0x277D3F178];
          v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
          v60 = [v59 lastPathComponent];
          v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager addOwner:]_block_invoke_2"];
          [v58 logMessage:v57 fromFile:v60 fromFunction:v61 fromLineNumber:96];

          v62 = PLLogCommon();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
          {
            [PLAccountingDependency activate];
          }
        }
      }

      [v46 deactivate];
    }
  }
}

void *__47__PLAccountingOwnerDependencyManager_addOwner___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_0 = result;
  return result;
}

void *__47__PLAccountingOwnerDependencyManager_addOwner___block_invoke_29(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_28 = result;
  return result;
}

void *__47__PLAccountingOwnerDependencyManager_addOwner___block_invoke_36(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_35 = result;
  return result;
}

void *__47__PLAccountingOwnerDependencyManager_addOwner___block_invoke_42(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_41 = result;
  return result;
}

void *__47__PLAccountingOwnerDependencyManager_addOwner___block_invoke_48(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_47 = result;
  return result;
}

- (void)notifyDependenciesWithOwner:(id)owner
{
  ownerCopy = owner;
  workQueue = [(PLAccountingOwnerDependencyManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__PLAccountingOwnerDependencyManager_notifyDependenciesWithOwner___block_invoke;
  v7[3] = &unk_279A55DC0;
  v7[4] = self;
  v8 = ownerCopy;
  v6 = ownerCopy;
  dispatch_async_and_wait(workQueue, v7);
}

void __66__PLAccountingOwnerDependencyManager_notifyDependenciesWithOwner___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__PLAccountingOwnerDependencyManager_notifyDependenciesWithOwner___block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v2;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_2_defaultOnce_0 != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_2_defaultOnce_0, block);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_2_classDebugEnabled_0 == 1)
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"owner=%@", *(a1 + 40)];
      v4 = MEMORY[0x277D3F178];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
      v6 = [v5 lastPathComponent];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager notifyDependenciesWithOwner:]_block_invoke"];
      [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:104];

      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  if (*(a1 + 40))
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v9 = objc_opt_class();
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __66__PLAccountingOwnerDependencyManager_notifyDependenciesWithOwner___block_invoke_54;
      v30[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v30[4] = v9;
      if (PLSubmissionAnalyticsStateSuccess_block_invoke_2_defaultOnce_52 != -1)
      {
        dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_2_defaultOnce_52, v30);
      }

      if (PLSubmissionAnalyticsStateSuccess_block_invoke_2_classDebugEnabled_53 == 1)
      {
        v10 = MEMORY[0x277CCACA8];
        v11 = [*(a1 + 32) ownerIDToObservingDependencies];
        v12 = [v10 stringWithFormat:@"ownerIDToObservingDependencies=%@", v11];

        v13 = MEMORY[0x277D3F178];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
        v15 = [v14 lastPathComponent];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager notifyDependenciesWithOwner:]_block_invoke_2"];
        [v13 logMessage:v12 fromFile:v15 fromFunction:v16 fromLineNumber:108];

        v17 = PLLogCommon();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }
      }
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v18 = [*(a1 + 32) ownerIDToObservingDependencies];
    v19 = [*(a1 + 40) ID];
    v20 = [v18 objectForKeyedSubscript:v19];
    v21 = [v20 copy];

    v22 = [v21 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v27;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v27 != v24)
          {
            objc_enumerationMutation(v21);
          }

          [*(*(&v26 + 1) + 8 * i) didReceiveOwner:*(a1 + 40)];
        }

        v23 = [v21 countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v23);
    }
  }
}

void *__66__PLAccountingOwnerDependencyManager_notifyDependenciesWithOwner___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_2_classDebugEnabled_0 = result;
  return result;
}

void *__66__PLAccountingOwnerDependencyManager_notifyDependenciesWithOwner___block_invoke_54(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_2_classDebugEnabled_53 = result;
  return result;
}

- (void)addDependency:(id)dependency
{
  dependencyCopy = dependency;
  workQueue = [(PLAccountingOwnerDependencyManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__PLAccountingOwnerDependencyManager_addDependency___block_invoke;
  v7[3] = &unk_279A55DC0;
  v7[4] = self;
  v8 = dependencyCopy;
  v6 = dependencyCopy;
  dispatch_async_and_wait(workQueue, v7);
}

void __52__PLAccountingOwnerDependencyManager_addDependency___block_invoke(uint64_t a1)
{
  v94 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__PLAccountingOwnerDependencyManager_addDependency___block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v2;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_3_defaultOnce_0 != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_3_defaultOnce_0, block);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_3_classDebugEnabled_0 == 1)
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"dependency=%@", *(a1 + 40)];
      v4 = MEMORY[0x277D3F178];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
      v6 = [v5 lastPathComponent];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager addDependency:]_block_invoke"];
      [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:117];

      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  if (*(a1 + 40))
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v9 = objc_opt_class();
      v90[0] = MEMORY[0x277D85DD0];
      v90[1] = 3221225472;
      v90[2] = __52__PLAccountingOwnerDependencyManager_addDependency___block_invoke_64;
      v90[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v90[4] = v9;
      if (PLSubmissionAnalyticsStateSuccess_block_invoke_3_defaultOnce_62 != -1)
      {
        dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_3_defaultOnce_62, v90);
      }

      if (PLSubmissionAnalyticsStateSuccess_block_invoke_3_classDebugEnabled_63 == 1)
      {
        v10 = MEMORY[0x277CCACA8];
        v11 = [*(a1 + 40) ID];
        v12 = [v10 stringWithFormat:@"dependency.ID=%@", v11];

        v13 = MEMORY[0x277D3F178];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
        v15 = [v14 lastPathComponent];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager addDependency:]_block_invoke_2"];
        [v13 logMessage:v12 fromFile:v15 fromFunction:v16 fromLineNumber:120];

        v17 = PLLogCommon();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }
      }
    }

    v18 = [*(a1 + 32) dependencyIDToDependencies];
    v19 = [*(a1 + 40) ID];
    v20 = [v18 objectForKeyedSubscript:v19];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v21 = objc_opt_class();
      v89[0] = MEMORY[0x277D85DD0];
      v89[1] = 3221225472;
      v89[2] = __52__PLAccountingOwnerDependencyManager_addDependency___block_invoke_71;
      v89[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v89[4] = v21;
      if (PLSubmissionAnalyticsStateSuccess_block_invoke_3_defaultOnce_69 != -1)
      {
        dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_3_defaultOnce_69, v89);
      }

      if (PLSubmissionAnalyticsStateSuccess_block_invoke_3_classDebugEnabled_70 == 1)
      {
        v22 = v20;
        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"before dependencies=%@", v20];
        v24 = MEMORY[0x277D3F178];
        v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
        v26 = [v25 lastPathComponent];
        v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager addDependency:]_block_invoke_2"];
        [v24 logMessage:v23 fromFile:v26 fromFunction:v27 fromLineNumber:124];

        v28 = PLLogCommon();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }

        v20 = v22;
      }
    }

    if (!v20)
    {
      v20 = [MEMORY[0x277CBEB18] array];
      v29 = [*(a1 + 32) dependencyIDToDependencies];
      v30 = [*(a1 + 40) ID];
      [v29 setObject:v20 forKeyedSubscript:v30];
    }

    [v20 addObject:*(a1 + 40)];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v31 = objc_opt_class();
      v88[0] = MEMORY[0x277D85DD0];
      v88[1] = 3221225472;
      v88[2] = __52__PLAccountingOwnerDependencyManager_addDependency___block_invoke_78;
      v88[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v88[4] = v31;
      if (PLSubmissionAnalyticsStateSuccess_block_invoke_3_defaultOnce_76 != -1)
      {
        dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_3_defaultOnce_76, v88);
      }

      if (PLSubmissionAnalyticsStateSuccess_block_invoke_3_classDebugEnabled_77 == 1)
      {
        v32 = v20;
        v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"after dependencies=%@", v20];
        v34 = MEMORY[0x277D3F178];
        v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
        v36 = [v35 lastPathComponent];
        v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager addDependency:]_block_invoke_2"];
        [v34 logMessage:v33 fromFile:v36 fromFunction:v37 fromLineNumber:130];

        v38 = PLLogCommon();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }

        v20 = v32;
      }
    }

    [*(a1 + 40) setManager:*(a1 + 32)];
    [*(a1 + 40) activate];
    v39 = *(a1 + 32);
    v40 = [v39 numDependencies];
    [v39 setNumDependencies:(v40 + 1)];
    if (v40 >= [objc_opt_class() maxDependencies])
    {
      v69 = v20;
      [*(a1 + 32) dependencyIDToDependencies];
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      v72 = v87 = 0u;
      obj = [v72 allKeys];
      v73 = [obj countByEnumeratingWithState:&v84 objects:v93 count:16];
      v41 = 0;
      if (!v73)
      {
        goto LABEL_55;
      }

      v71 = *v85;
      v42 = 0x277CBE000uLL;
      while (1)
      {
        v43 = 0;
        do
        {
          if (*v85 != v71)
          {
            objc_enumerationMutation(obj);
          }

          v74 = v43;
          v44 = *(*(&v84 + 1) + 8 * v43);
          v80 = 0u;
          v81 = 0u;
          v82 = 0u;
          v83 = 0u;
          v45 = [v72 objectForKeyedSubscript:v44];
          v46 = [v45 copy];

          v76 = v46;
          v47 = [v46 countByEnumeratingWithState:&v80 objects:v92 count:16];
          if (v47)
          {
            v48 = v47;
            v49 = *v81;
            v75 = *v81;
            do
            {
              for (i = 0; i != v48; ++i)
              {
                if (*v81 != v49)
                {
                  objc_enumerationMutation(v76);
                }

                v51 = *(*(&v80 + 1) + 8 * i);
                v52 = [v51 range];
                v53 = [v52 endDate];
                v54 = [*(v42 + 2728) distantFuture];
                if ([v53 isEqualToDate:v54])
                {

                  goto LABEL_50;
                }

                if (!v41)
                {

LABEL_49:
                  v52 = v41;
                  v41 = v51;
LABEL_50:

                  continue;
                }

                v55 = [v51 activationDate];
                [v41 activationDate];
                v56 = v41;
                v58 = v57 = v42;
                [v55 timeIntervalSinceDate:v58];
                v60 = v59;

                v42 = v57;
                v41 = v56;

                v49 = v75;
                if (v60 < 0.0)
                {
                  goto LABEL_49;
                }
              }

              v48 = [v76 countByEnumeratingWithState:&v80 objects:v92 count:16];
            }

            while (v48);
          }

          v43 = v74 + 1;
        }

        while (v74 + 1 != v73);
        v73 = [obj countByEnumeratingWithState:&v84 objects:v93 count:16];
        if (!v73)
        {
LABEL_55:

          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v61 = objc_opt_class();
            v77[0] = MEMORY[0x277D85DD0];
            v77[1] = 3221225472;
            v77[2] = __52__PLAccountingOwnerDependencyManager_addDependency___block_invoke_84;
            v77[3] = &unk_279A55D70;
            v78 = @"free";
            v79 = v61;
            if (PLSubmissionAnalyticsStateSuccess_block_invoke_3_defaultOnce_82 != -1)
            {
              dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_3_defaultOnce_82, v77);
            }

            v62 = PLSubmissionAnalyticsStateSuccess_block_invoke_3_classDebugEnabled_83;

            if (v62 == 1)
            {
              v63 = [MEMORY[0x277CCACA8] stringWithFormat:@"freeing dependency=%@", v41];
              v64 = MEMORY[0x277D3F178];
              v65 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
              v66 = [v65 lastPathComponent];
              v67 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager addDependency:]_block_invoke_2"];
              [v64 logMessage:v63 fromFile:v66 fromFunction:v67 fromLineNumber:148];

              v68 = PLLogCommon();
              if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
              {
                [PLAccountingDependency activate];
              }
            }
          }

          [v41 deactivate];

          v20 = v69;
          break;
        }
      }
    }
  }
}

void *__52__PLAccountingOwnerDependencyManager_addDependency___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_3_classDebugEnabled_0 = result;
  return result;
}

void *__52__PLAccountingOwnerDependencyManager_addDependency___block_invoke_64(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_3_classDebugEnabled_63 = result;
  return result;
}

void *__52__PLAccountingOwnerDependencyManager_addDependency___block_invoke_71(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_3_classDebugEnabled_70 = result;
  return result;
}

void *__52__PLAccountingOwnerDependencyManager_addDependency___block_invoke_78(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_3_classDebugEnabled_77 = result;
  return result;
}

void *__52__PLAccountingOwnerDependencyManager_addDependency___block_invoke_84(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_3_classDebugEnabled_83 = result;
  return result;
}

- (void)notifyOwnersWithDependency:(id)dependency
{
  dependencyCopy = dependency;
  workQueue = [(PLAccountingOwnerDependencyManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__PLAccountingOwnerDependencyManager_notifyOwnersWithDependency___block_invoke;
  v7[3] = &unk_279A55DC0;
  v7[4] = self;
  v8 = dependencyCopy;
  v6 = dependencyCopy;
  dispatch_async_and_wait(workQueue, v7);
}

void __65__PLAccountingOwnerDependencyManager_notifyOwnersWithDependency___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__PLAccountingOwnerDependencyManager_notifyOwnersWithDependency___block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v2;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_4_defaultOnce_0 != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_4_defaultOnce_0, block);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_4_classDebugEnabled_0 == 1)
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"dependency=%@", *(a1 + 40)];
      v4 = MEMORY[0x277D3F178];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
      v6 = [v5 lastPathComponent];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager notifyOwnersWithDependency:]_block_invoke"];
      [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:156];

      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  if (*(a1 + 40))
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v9 = objc_opt_class();
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __65__PLAccountingOwnerDependencyManager_notifyOwnersWithDependency___block_invoke_90;
      v30[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v30[4] = v9;
      if (PLSubmissionAnalyticsStateSuccess_block_invoke_4_defaultOnce_88 != -1)
      {
        dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_4_defaultOnce_88, v30);
      }

      if (PLSubmissionAnalyticsStateSuccess_block_invoke_4_classDebugEnabled_89 == 1)
      {
        v10 = MEMORY[0x277CCACA8];
        v11 = [*(a1 + 32) dependencyIDToObservingOwners];
        v12 = [v10 stringWithFormat:@"dependencyIDToObservingOwners=%@", v11];

        v13 = MEMORY[0x277D3F178];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
        v15 = [v14 lastPathComponent];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager notifyOwnersWithDependency:]_block_invoke_2"];
        [v13 logMessage:v12 fromFile:v15 fromFunction:v16 fromLineNumber:160];

        v17 = PLLogCommon();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }
      }
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v18 = [*(a1 + 32) dependencyIDToObservingOwners];
    v19 = [*(a1 + 40) ID];
    v20 = [v18 objectForKeyedSubscript:v19];
    v21 = [v20 copy];

    v22 = [v21 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v27;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v27 != v24)
          {
            objc_enumerationMutation(v21);
          }

          [*(*(&v26 + 1) + 8 * i) didReceiveDependency:*(a1 + 40)];
        }

        v23 = [v21 countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v23);
    }
  }
}

void *__65__PLAccountingOwnerDependencyManager_notifyOwnersWithDependency___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_4_classDebugEnabled_0 = result;
  return result;
}

void *__65__PLAccountingOwnerDependencyManager_notifyOwnersWithDependency___block_invoke_90(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_4_classDebugEnabled_89 = result;
  return result;
}

- (void)updateLastDependencyID:(id)d withEndDate:(id)date
{
  dCopy = d;
  dateCopy = date;
  workQueue = [(PLAccountingOwnerDependencyManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__PLAccountingOwnerDependencyManager_updateLastDependencyID_withEndDate___block_invoke;
  block[3] = &unk_279A55D98;
  block[4] = self;
  v12 = dCopy;
  v13 = dateCopy;
  v9 = dateCopy;
  v10 = dCopy;
  dispatch_async_and_wait(workQueue, block);
}

void __73__PLAccountingOwnerDependencyManager_updateLastDependencyID_withEndDate___block_invoke(uint64_t a1)
{
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__PLAccountingOwnerDependencyManager_updateLastDependencyID_withEndDate___block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v2;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_5_defaultOnce_0 != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_5_defaultOnce_0, block);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_5_classDebugEnabled_0 == 1)
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"dependencyID=%@, endDate=%@", *(a1 + 40), *(a1 + 48)];
      v4 = MEMORY[0x277D3F178];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
      v6 = [v5 lastPathComponent];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager updateLastDependencyID:withEndDate:]_block_invoke"];
      [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:170];

      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  if ([*(a1 + 40) intValue] >= 1 && *(a1 + 48))
  {
    v9 = [*(a1 + 32) dependencyIDToDependencies];
    v10 = [v9 objectForKeyedSubscript:*(a1 + 40)];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v11 = objc_opt_class();
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __73__PLAccountingOwnerDependencyManager_updateLastDependencyID_withEndDate___block_invoke_100;
      v39[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v39[4] = v11;
      if (PLSubmissionAnalyticsStateSuccess_block_invoke_5_defaultOnce_98 != -1)
      {
        dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_5_defaultOnce_98, v39);
      }

      if (PLSubmissionAnalyticsStateSuccess_block_invoke_5_classDebugEnabled_99 == 1)
      {
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"dependencies=%@", v10];
        v13 = MEMORY[0x277D3F178];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
        v15 = [v14 lastPathComponent];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager updateLastDependencyID:withEndDate:]_block_invoke_2"];
        [v13 logMessage:v12 fromFile:v15 fromFunction:v16 fromLineNumber:175];

        v17 = PLLogCommon();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }
      }
    }

    if (v10)
    {
      v18 = [v10 lastObject];
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v19 = objc_opt_class();
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __73__PLAccountingOwnerDependencyManager_updateLastDependencyID_withEndDate___block_invoke_107;
        v38[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v38[4] = v19;
        if (PLSubmissionAnalyticsStateSuccess_block_invoke_5_defaultOnce_105 != -1)
        {
          dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_5_defaultOnce_105, v38);
        }

        if (PLSubmissionAnalyticsStateSuccess_block_invoke_5_classDebugEnabled_106 == 1)
        {
          v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"lastDependency=%@", v18];
          v21 = MEMORY[0x277D3F178];
          v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
          v23 = [v22 lastPathComponent];
          v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager updateLastDependencyID:withEndDate:]_block_invoke_2"];
          [v21 logMessage:v20 fromFile:v23 fromFunction:v24 fromLineNumber:180];

          v25 = PLLogCommon();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            [PLAccountingDependency activate];
          }
        }
      }

      v26 = [v18 range];
      v27 = [v26 endDate];
      v28 = [MEMORY[0x277CBEAA8] distantFuture];
      v29 = [v27 isEqualToDate:v28];

      if (v29)
      {
        [v18 updateWithEndDate:*(a1 + 48)];
      }

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v30 = objc_opt_class();
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __73__PLAccountingOwnerDependencyManager_updateLastDependencyID_withEndDate___block_invoke_113;
        v37[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v37[4] = v30;
        if (PLSubmissionAnalyticsStateSuccess_block_invoke_5_defaultOnce_111 != -1)
        {
          dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_5_defaultOnce_111, v37);
        }

        if (PLSubmissionAnalyticsStateSuccess_block_invoke_5_classDebugEnabled_112 == 1)
        {
          v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"after update: lastDependency=%@", v18];
          v32 = MEMORY[0x277D3F178];
          v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
          v34 = [v33 lastPathComponent];
          v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager updateLastDependencyID:withEndDate:]_block_invoke_2"];
          [v32 logMessage:v31 fromFile:v34 fromFunction:v35 fromLineNumber:186];

          v36 = PLLogCommon();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            [PLAccountingDependency activate];
          }
        }
      }
    }
  }
}

void *__73__PLAccountingOwnerDependencyManager_updateLastDependencyID_withEndDate___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_5_classDebugEnabled_0 = result;
  return result;
}

void *__73__PLAccountingOwnerDependencyManager_updateLastDependencyID_withEndDate___block_invoke_100(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_5_classDebugEnabled_99 = result;
  return result;
}

void *__73__PLAccountingOwnerDependencyManager_updateLastDependencyID_withEndDate___block_invoke_107(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_5_classDebugEnabled_106 = result;
  return result;
}

void *__73__PLAccountingOwnerDependencyManager_updateLastDependencyID_withEndDate___block_invoke_113(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_5_classDebugEnabled_112 = result;
  return result;
}

- (id)lastDependencyForDependencyID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  workQueue = [(PLAccountingOwnerDependencyManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__PLAccountingOwnerDependencyManager_lastDependencyForDependencyID___block_invoke;
  block[3] = &unk_279A56090;
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_async_and_wait(workQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __68__PLAccountingOwnerDependencyManager_lastDependencyForDependencyID___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) _lastDependencyForDependencyID:*(a1 + 40)];

  return MEMORY[0x2821F96F8]();
}

- (id)_lastDependencyForDependencyID:(id)d
{
  dCopy = d;
  dependencyIDToDependencies = [(PLAccountingOwnerDependencyManager *)self dependencyIDToDependencies];
  v6 = [dependencyIDToDependencies objectForKeyedSubscript:dCopy];

  lastObject = [v6 lastObject];

  return lastObject;
}

- (id)dependenciesWithDependencyID:(id)d withRange:(id)range
{
  dCopy = d;
  rangeCopy = range;
  v8 = 0x277D3F000uLL;
  v9 = &off_25EE04000;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v10 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__PLAccountingOwnerDependencyManager_dependenciesWithDependencyID_withRange___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v10;
    if (dependenciesWithDependencyID_withRange__defaultOnce != -1)
    {
      dispatch_once(&dependenciesWithDependencyID_withRange__defaultOnce, block);
    }

    if (dependenciesWithDependencyID_withRange__classDebugEnabled == 1)
    {
      rangeCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"dependencyID=%@, range=%@", dCopy, rangeCopy];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
      lastPathComponent = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager dependenciesWithDependencyID:withRange:]"];
      [v12 logMessage:rangeCopy fromFile:lastPathComponent fromFunction:v15 fromLineNumber:217];

      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }

      v9 = &off_25EE04000;
      v8 = 0x277D3F000uLL;
    }
  }

  dependencyIDToDependencies = [(PLAccountingOwnerDependencyManager *)self dependencyIDToDependencies];
  v18 = [dependencyIDToDependencies objectForKeyedSubscript:dCopy];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v19 = objc_opt_class();
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __77__PLAccountingOwnerDependencyManager_dependenciesWithDependencyID_withRange___block_invoke_122;
    v67[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v67[4] = v19;
    if (dependenciesWithDependencyID_withRange__defaultOnce_120 != -1)
    {
      dispatch_once(&dependenciesWithDependencyID_withRange__defaultOnce_120, v67);
    }

    if (dependenciesWithDependencyID_withRange__classDebugEnabled_121 == 1)
    {
      v20 = rangeCopy;
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"dependencies=%@", v18];
      v22 = MEMORY[0x277D3F178];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
      lastPathComponent2 = [v23 lastPathComponent];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager dependenciesWithDependencyID:withRange:]"];
      [v22 logMessage:v21 fromFile:lastPathComponent2 fromFunction:v25 fromLineNumber:220];

      v26 = PLLogCommon();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }

      rangeCopy = v20;
      v9 = &off_25EE04000;
      v8 = 0x277D3F000uLL;
    }
  }

  if (v18)
  {
    startDate = [rangeCopy startDate];
    if (startDate && [v18 count])
    {
      v28 = rangeCopy;
      v29 = 0;
      do
      {
        v30 = [v18 objectAtIndexedSubscript:v29];
        range = [v30 range];
        endDate = [range endDate];
        [endDate timeIntervalSinceDate:startDate];
        v34 = v33;

        if (v34 >= 1.0)
        {
          break;
        }

        ++v29;
      }

      while ([v18 count] > v29);
      rangeCopy = v28;
      v9 = &off_25EE04000;
      v8 = 0x277D3F000;
    }

    else
    {
      v29 = 0;
    }

    if ([*(v8 + 384) debugEnabled])
    {
      v35 = objc_opt_class();
      v66[0] = MEMORY[0x277D85DD0];
      v66[1] = *(v9 + 140);
      v66[2] = __77__PLAccountingOwnerDependencyManager_dependenciesWithDependencyID_withRange___block_invoke_125;
      v66[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v66[4] = v35;
      if (dependenciesWithDependencyID_withRange__defaultOnce_123 != -1)
      {
        dispatch_once(&dependenciesWithDependencyID_withRange__defaultOnce_123, v66);
      }

      if (dependenciesWithDependencyID_withRange__classDebugEnabled_124 == 1)
      {
        v36 = rangeCopy;
        v37 = dCopy;
        v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"startIndex=%i", v29];
        v39 = MEMORY[0x277D3F178];
        v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
        lastPathComponent3 = [v40 lastPathComponent];
        v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager dependenciesWithDependencyID:withRange:]"];
        [v39 logMessage:v38 fromFile:lastPathComponent3 fromFunction:v42 fromLineNumber:237];

        v43 = PLLogCommon();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }

        dCopy = v37;
        rangeCopy = v36;
        v9 = &off_25EE04000;
      }
    }

    LODWORD(v44) = [v18 count];
    v45 = (v44 - 1);
    endDate2 = [rangeCopy endDate];
    if (endDate2 && v29 < v44)
    {
      v61 = rangeCopy;
      v63 = dCopy;
      v44 = v44;
      while (1)
      {
        v47 = [v18 objectAtIndexedSubscript:--v44];
        range2 = [v47 range];
        startDate2 = [range2 startDate];
        [endDate2 timeIntervalSinceDate:startDate2];
        v51 = v50;

        if (v51 >= 1.0)
        {
          break;
        }

        v45 = (v45 - 1);
        if (v44 <= v29)
        {
          v45 = (v29 - 1);
          break;
        }
      }

      rangeCopy = v61;
      dCopy = v63;
      v9 = &off_25EE04000;
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v52 = objc_opt_class();
      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = *(v9 + 140);
      v65[2] = __77__PLAccountingOwnerDependencyManager_dependenciesWithDependencyID_withRange___block_invoke_131;
      v65[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v65[4] = v52;
      if (dependenciesWithDependencyID_withRange__defaultOnce_129 != -1)
      {
        dispatch_once(&dependenciesWithDependencyID_withRange__defaultOnce_129, v65);
      }

      if (dependenciesWithDependencyID_withRange__classDebugEnabled_130 == 1)
      {
        v62 = rangeCopy;
        v64 = dCopy;
        v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"endIndex=%i", v45];
        v54 = MEMORY[0x277D3F178];
        v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
        lastPathComponent4 = [v55 lastPathComponent];
        v57 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager dependenciesWithDependencyID:withRange:]"];
        [v54 logMessage:v53 fromFile:lastPathComponent4 fromFunction:v57 fromLineNumber:251];

        v58 = PLLogCommon();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }

        rangeCopy = v62;
        dCopy = v64;
      }
    }

    if (v45 >= v29)
    {
      v59 = [v18 subarrayWithRange:{v29, v45 - v29 + 1}];
    }

    else
    {
      v59 = 0;
    }
  }

  else
  {
    v59 = 0;
  }

  return v59;
}

void *__77__PLAccountingOwnerDependencyManager_dependenciesWithDependencyID_withRange___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  dependenciesWithDependencyID_withRange__classDebugEnabled = result;
  return result;
}

void *__77__PLAccountingOwnerDependencyManager_dependenciesWithDependencyID_withRange___block_invoke_122(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  dependenciesWithDependencyID_withRange__classDebugEnabled_121 = result;
  return result;
}

void *__77__PLAccountingOwnerDependencyManager_dependenciesWithDependencyID_withRange___block_invoke_125(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  dependenciesWithDependencyID_withRange__classDebugEnabled_124 = result;
  return result;
}

void *__77__PLAccountingOwnerDependencyManager_dependenciesWithDependencyID_withRange___block_invoke_131(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  dependenciesWithDependencyID_withRange__classDebugEnabled_130 = result;
  return result;
}

- (void)startObservingDependencyID:(id)d forOwner:(id)owner
{
  dCopy = d;
  ownerCopy = owner;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__PLAccountingOwnerDependencyManager_startObservingDependencyID_forOwner___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (startObservingDependencyID_forOwner__defaultOnce != -1)
    {
      dispatch_once(&startObservingDependencyID_forOwner__defaultOnce, block);
    }

    if (startObservingDependencyID_forOwner__classDebugEnabled == 1)
    {
      ownerCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"dependencyID=%@, owner=%@", dCopy, ownerCopy];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager startObservingDependencyID:forOwner:]"];
      [v10 logMessage:ownerCopy fromFile:lastPathComponent fromFunction:v13 fromLineNumber:259];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  dependencyIDToObservingOwners = [(PLAccountingOwnerDependencyManager *)self dependencyIDToObservingOwners];
  v16 = [dependencyIDToObservingOwners objectForKeyedSubscript:dCopy];

  if (!v16)
  {
    v16 = [MEMORY[0x277CBEB58] set];
    dependencyIDToObservingOwners2 = [(PLAccountingOwnerDependencyManager *)self dependencyIDToObservingOwners];
    [dependencyIDToObservingOwners2 setObject:v16 forKeyedSubscript:dCopy];
  }

  [v16 addObject:ownerCopy];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v18 = objc_opt_class();
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __74__PLAccountingOwnerDependencyManager_startObservingDependencyID_forOwner___block_invoke_140;
    v27[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v27[4] = v18;
    if (startObservingDependencyID_forOwner__defaultOnce_138 != -1)
    {
      dispatch_once(&startObservingDependencyID_forOwner__defaultOnce_138, v27);
    }

    if (startObservingDependencyID_forOwner__classDebugEnabled_139 == 1)
    {
      v19 = MEMORY[0x277CCACA8];
      dependencyIDToObservingOwners3 = [(PLAccountingOwnerDependencyManager *)self dependencyIDToObservingOwners];
      v21 = [v19 stringWithFormat:@"dependencyIDToObservingOwners=%@", dependencyIDToObservingOwners3];

      v22 = MEMORY[0x277D3F178];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
      lastPathComponent2 = [v23 lastPathComponent];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager startObservingDependencyID:forOwner:]"];
      [v22 logMessage:v21 fromFile:lastPathComponent2 fromFunction:v25 fromLineNumber:267];

      v26 = PLLogCommon();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }
}

void *__74__PLAccountingOwnerDependencyManager_startObservingDependencyID_forOwner___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  startObservingDependencyID_forOwner__classDebugEnabled = result;
  return result;
}

void *__74__PLAccountingOwnerDependencyManager_startObservingDependencyID_forOwner___block_invoke_140(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  startObservingDependencyID_forOwner__classDebugEnabled_139 = result;
  return result;
}

- (void)stopObservingDependencyID:(id)d forOwner:(id)owner
{
  dCopy = d;
  ownerCopy = owner;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__PLAccountingOwnerDependencyManager_stopObservingDependencyID_forOwner___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (stopObservingDependencyID_forOwner__defaultOnce != -1)
    {
      dispatch_once(&stopObservingDependencyID_forOwner__defaultOnce, block);
    }

    if (stopObservingDependencyID_forOwner__classDebugEnabled == 1)
    {
      ownerCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"dependencyID=%@, owner=%@", dCopy, ownerCopy];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager stopObservingDependencyID:forOwner:]"];
      [v10 logMessage:ownerCopy fromFile:lastPathComponent fromFunction:v13 fromLineNumber:273];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  dependencyIDToObservingOwners = [(PLAccountingOwnerDependencyManager *)self dependencyIDToObservingOwners];
  v16 = [dependencyIDToObservingOwners objectForKeyedSubscript:dCopy];

  [v16 removeObject:ownerCopy];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v17 = objc_opt_class();
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __73__PLAccountingOwnerDependencyManager_stopObservingDependencyID_forOwner___block_invoke_143;
    v26[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v26[4] = v17;
    if (stopObservingDependencyID_forOwner__defaultOnce_141 != -1)
    {
      dispatch_once(&stopObservingDependencyID_forOwner__defaultOnce_141, v26);
    }

    if (stopObservingDependencyID_forOwner__classDebugEnabled_142 == 1)
    {
      v18 = MEMORY[0x277CCACA8];
      dependencyIDToObservingOwners2 = [(PLAccountingOwnerDependencyManager *)self dependencyIDToObservingOwners];
      v20 = [v18 stringWithFormat:@"dependencyIDToObservingOwners=%@", dependencyIDToObservingOwners2];

      v21 = MEMORY[0x277D3F178];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
      lastPathComponent2 = [v22 lastPathComponent];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager stopObservingDependencyID:forOwner:]"];
      [v21 logMessage:v20 fromFile:lastPathComponent2 fromFunction:v24 fromLineNumber:277];

      v25 = PLLogCommon();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }
}

void *__73__PLAccountingOwnerDependencyManager_stopObservingDependencyID_forOwner___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  stopObservingDependencyID_forOwner__classDebugEnabled = result;
  return result;
}

void *__73__PLAccountingOwnerDependencyManager_stopObservingDependencyID_forOwner___block_invoke_143(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  stopObservingDependencyID_forOwner__classDebugEnabled_142 = result;
  return result;
}

- (void)canFreeOwner:(id)owner
{
  ownerCopy = owner;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__PLAccountingOwnerDependencyManager_canFreeOwner___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (canFreeOwner__defaultOnce != -1)
    {
      dispatch_once(&canFreeOwner__defaultOnce, block);
    }

    if (canFreeOwner__classDebugEnabled == 1)
    {
      ownerCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"owner=%@", ownerCopy];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager canFreeOwner:]"];
      [v7 logMessage:ownerCopy fromFile:lastPathComponent fromFunction:v10 fromLineNumber:282];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  ownersRepository = [(PLAccountingOwnerDependencyManager *)self ownersRepository];
  [ownersRepository removeObject:ownerCopy];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v13 = objc_opt_class();
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __51__PLAccountingOwnerDependencyManager_canFreeOwner___block_invoke_146;
    v22[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v22[4] = v13;
    if (canFreeOwner__defaultOnce_144 != -1)
    {
      dispatch_once(&canFreeOwner__defaultOnce_144, v22);
    }

    if (canFreeOwner__classDebugEnabled_145 == 1)
    {
      v14 = MEMORY[0x277CCACA8];
      ownersRepository2 = [(PLAccountingOwnerDependencyManager *)self ownersRepository];
      v16 = [v14 stringWithFormat:@"ownersRepository=%@", ownersRepository2];

      v17 = MEMORY[0x277D3F178];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
      lastPathComponent2 = [v18 lastPathComponent];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager canFreeOwner:]"];
      [v17 logMessage:v16 fromFile:lastPathComponent2 fromFunction:v20 fromLineNumber:285];

      v21 = PLLogCommon();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }
}

void *__51__PLAccountingOwnerDependencyManager_canFreeOwner___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  canFreeOwner__classDebugEnabled = result;
  return result;
}

void *__51__PLAccountingOwnerDependencyManager_canFreeOwner___block_invoke_146(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  canFreeOwner__classDebugEnabled_145 = result;
  return result;
}

- (id)lastOwnerForOwnerID:(id)d
{
  dCopy = d;
  ownerIDToLastOwner = [(PLAccountingOwnerDependencyManager *)self ownerIDToLastOwner];
  v6 = [ownerIDToLastOwner objectForKeyedSubscript:dCopy];

  return v6;
}

- (void)startObservingOwnerID:(id)d forDependency:(id)dependency
{
  dCopy = d;
  dependencyCopy = dependency;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__PLAccountingOwnerDependencyManager_startObservingOwnerID_forDependency___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (startObservingOwnerID_forDependency__defaultOnce != -1)
    {
      dispatch_once(&startObservingOwnerID_forDependency__defaultOnce, block);
    }

    if (startObservingOwnerID_forDependency__classDebugEnabled == 1)
    {
      dependencyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"ownerID=%@, dependency=%@", dCopy, dependencyCopy];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager startObservingOwnerID:forDependency:]"];
      [v10 logMessage:dependencyCopy fromFile:lastPathComponent fromFunction:v13 fromLineNumber:303];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  ownerIDToObservingDependencies = [(PLAccountingOwnerDependencyManager *)self ownerIDToObservingDependencies];
  v16 = [ownerIDToObservingDependencies objectForKeyedSubscript:dCopy];

  if (!v16)
  {
    v16 = [MEMORY[0x277CBEB58] set];
    ownerIDToObservingDependencies2 = [(PLAccountingOwnerDependencyManager *)self ownerIDToObservingDependencies];
    [ownerIDToObservingDependencies2 setObject:v16 forKeyedSubscript:dCopy];
  }

  [v16 addObject:dependencyCopy];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v18 = objc_opt_class();
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __74__PLAccountingOwnerDependencyManager_startObservingOwnerID_forDependency___block_invoke_152;
    v27[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v27[4] = v18;
    if (startObservingOwnerID_forDependency__defaultOnce_150 != -1)
    {
      dispatch_once(&startObservingOwnerID_forDependency__defaultOnce_150, v27);
    }

    if (startObservingOwnerID_forDependency__classDebugEnabled_151 == 1)
    {
      v19 = MEMORY[0x277CCACA8];
      ownerIDToObservingDependencies3 = [(PLAccountingOwnerDependencyManager *)self ownerIDToObservingDependencies];
      v21 = [v19 stringWithFormat:@"ownerIDToObservingDependencies=%@", ownerIDToObservingDependencies3];

      v22 = MEMORY[0x277D3F178];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
      lastPathComponent2 = [v23 lastPathComponent];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager startObservingOwnerID:forDependency:]"];
      [v22 logMessage:v21 fromFile:lastPathComponent2 fromFunction:v25 fromLineNumber:311];

      v26 = PLLogCommon();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }
}

void *__74__PLAccountingOwnerDependencyManager_startObservingOwnerID_forDependency___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  startObservingOwnerID_forDependency__classDebugEnabled = result;
  return result;
}

void *__74__PLAccountingOwnerDependencyManager_startObservingOwnerID_forDependency___block_invoke_152(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  startObservingOwnerID_forDependency__classDebugEnabled_151 = result;
  return result;
}

- (void)stopObservingOwnerID:(id)d forDependency:(id)dependency
{
  dCopy = d;
  dependencyCopy = dependency;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__PLAccountingOwnerDependencyManager_stopObservingOwnerID_forDependency___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (stopObservingOwnerID_forDependency__defaultOnce != -1)
    {
      dispatch_once(&stopObservingOwnerID_forDependency__defaultOnce, block);
    }

    if (stopObservingOwnerID_forDependency__classDebugEnabled == 1)
    {
      dependencyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"ownerID=%@, dependency=%@", dCopy, dependencyCopy];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager stopObservingOwnerID:forDependency:]"];
      [v10 logMessage:dependencyCopy fromFile:lastPathComponent fromFunction:v13 fromLineNumber:317];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  ownerIDToObservingDependencies = [(PLAccountingOwnerDependencyManager *)self ownerIDToObservingDependencies];
  v16 = [ownerIDToObservingDependencies objectForKeyedSubscript:dCopy];
  [v16 removeObject:dependencyCopy];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v17 = objc_opt_class();
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __73__PLAccountingOwnerDependencyManager_stopObservingOwnerID_forDependency___block_invoke_155;
    v26[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v26[4] = v17;
    if (stopObservingOwnerID_forDependency__defaultOnce_153 != -1)
    {
      dispatch_once(&stopObservingOwnerID_forDependency__defaultOnce_153, v26);
    }

    if (stopObservingOwnerID_forDependency__classDebugEnabled_154 == 1)
    {
      v18 = MEMORY[0x277CCACA8];
      ownerIDToObservingDependencies2 = [(PLAccountingOwnerDependencyManager *)self ownerIDToObservingDependencies];
      v20 = [v18 stringWithFormat:@"ownerIDToObservingDependencies=%@", ownerIDToObservingDependencies2];

      v21 = MEMORY[0x277D3F178];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
      lastPathComponent2 = [v22 lastPathComponent];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager stopObservingOwnerID:forDependency:]"];
      [v21 logMessage:v20 fromFile:lastPathComponent2 fromFunction:v24 fromLineNumber:320];

      v25 = PLLogCommon();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }
}

void *__73__PLAccountingOwnerDependencyManager_stopObservingOwnerID_forDependency___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  stopObservingOwnerID_forDependency__classDebugEnabled = result;
  return result;
}

void *__73__PLAccountingOwnerDependencyManager_stopObservingOwnerID_forDependency___block_invoke_155(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  stopObservingOwnerID_forDependency__classDebugEnabled_154 = result;
  return result;
}

- (void)canFreeDependency:(id)dependency
{
  dependencyCopy = dependency;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__PLAccountingOwnerDependencyManager_canFreeDependency___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (canFreeDependency__defaultOnce != -1)
    {
      dispatch_once(&canFreeDependency__defaultOnce, block);
    }

    if (canFreeDependency__classDebugEnabled == 1)
    {
      dependencyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"dependency=%@", dependencyCopy];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager canFreeDependency:]"];
      [v7 logMessage:dependencyCopy fromFile:lastPathComponent fromFunction:v10 fromLineNumber:325];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  dependencyIDToDependencies = [(PLAccountingOwnerDependencyManager *)self dependencyIDToDependencies];
  v13 = [dependencyCopy ID];
  v14 = [dependencyIDToDependencies objectForKeyedSubscript:v13];
  [v14 removeObject:dependencyCopy];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v15 = objc_opt_class();
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __56__PLAccountingOwnerDependencyManager_canFreeDependency___block_invoke_158;
    v24[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v24[4] = v15;
    if (canFreeDependency__defaultOnce_156 != -1)
    {
      dispatch_once(&canFreeDependency__defaultOnce_156, v24);
    }

    if (canFreeDependency__classDebugEnabled_157 == 1)
    {
      v16 = MEMORY[0x277CCACA8];
      dependencyIDToDependencies2 = [(PLAccountingOwnerDependencyManager *)self dependencyIDToDependencies];
      v18 = [v16 stringWithFormat:@"dependencyIDToDependencies=%@", dependencyIDToDependencies2];

      v19 = MEMORY[0x277D3F178];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
      lastPathComponent2 = [v20 lastPathComponent];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager canFreeDependency:]"];
      [v19 logMessage:v18 fromFile:lastPathComponent2 fromFunction:v22 fromLineNumber:328];

      v23 = PLLogCommon();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  [(PLAccountingOwnerDependencyManager *)self setNumDependencies:[(PLAccountingOwnerDependencyManager *)self numDependencies]- 1];
}

void *__56__PLAccountingOwnerDependencyManager_canFreeDependency___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  canFreeDependency__classDebugEnabled = result;
  return result;
}

void *__56__PLAccountingOwnerDependencyManager_canFreeDependency___block_invoke_158(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  canFreeDependency__classDebugEnabled_157 = result;
  return result;
}

- (void)freeExpiredOwnersAtNow:(id)now
{
  v79 = *MEMORY[0x277D85DE8];
  nowCopy = now;
  v5 = 0x277D3F000uLL;
  v56 = nowCopy;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = __61__PLAccountingOwnerDependencyManager_freeExpiredOwnersAtNow___block_invoke;
    v73[3] = &unk_279A55D70;
    v74 = @"free";
    v75 = v6;
    if (freeExpiredOwnersAtNow__defaultOnce != -1)
    {
      dispatch_once(&freeExpiredOwnersAtNow__defaultOnce, v73);
    }

    v7 = freeExpiredOwnersAtNow__classDebugEnabled;

    if (v7 == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"now=%@, class=%@", nowCopy, objc_opt_class()];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
      lastPathComponent = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager freeExpiredOwnersAtNow:]"];
      [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:350];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }

      nowCopy = v56;
      v5 = 0x277D3F000uLL;
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v14 = objc_opt_class();
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __61__PLAccountingOwnerDependencyManager_freeExpiredOwnersAtNow___block_invoke_167;
    v70[3] = &unk_279A55D70;
    v71 = @"free";
    v72 = v14;
    if (freeExpiredOwnersAtNow__defaultOnce_165 != -1)
    {
      dispatch_once(&freeExpiredOwnersAtNow__defaultOnce_165, v70);
    }

    v15 = freeExpiredOwnersAtNow__classDebugEnabled_166;

    if (v15 == 1)
    {
      v16 = MEMORY[0x277CCACA8];
      ownersRepository = [(PLAccountingOwnerDependencyManager *)self ownersRepository];
      v18 = [ownersRepository copy];
      v19 = [v16 stringWithFormat:@"ownersRepositoryCopy=%@, class=%@", v18, objc_opt_class()];

      v20 = MEMORY[0x277D3F178];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
      lastPathComponent2 = [v21 lastPathComponent];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager freeExpiredOwnersAtNow:]"];
      [v20 logMessage:v19 fromFile:lastPathComponent2 fromFunction:v23 fromLineNumber:352];

      v24 = PLLogCommon();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }

      nowCopy = v56;
      v5 = 0x277D3F000uLL;
    }
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  ownersRepository2 = [(PLAccountingOwnerDependencyManager *)self ownersRepository];
  v26 = [ownersRepository2 copy];

  obj = v26;
  v27 = [v26 countByEnumeratingWithState:&v66 objects:v78 count:16];
  if (v27)
  {
    v28 = v27;
    v59 = *v67;
    do
    {
      v29 = 0;
      v57 = v28;
      do
      {
        if (*v67 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v66 + 1) + 8 * v29);
        range = [v30 range];
        endDate = [range endDate];

        activationDate = [v30 activationDate];
        if (endDate)
        {
          v34 = [endDate laterDate:activationDate];

          activationDate = v34;
        }

        if ([*(v5 + 384) debugEnabled])
        {
          v35 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __61__PLAccountingOwnerDependencyManager_freeExpiredOwnersAtNow___block_invoke_173;
          block[3] = &unk_279A55D70;
          v64 = @"free";
          v65 = v35;
          if (freeExpiredOwnersAtNow__defaultOnce_171 != -1)
          {
            dispatch_once(&freeExpiredOwnersAtNow__defaultOnce_171, block);
          }

          v36 = freeExpiredOwnersAtNow__classDebugEnabled_172;

          if (v36 == 1)
          {
            v37 = MEMORY[0x277CCACA8];
            activationDate2 = [v30 activationDate];
            v39 = [v37 stringWithFormat:@"lastValidDate=%@, endDate=%@, activationDate=%@, class=%@", activationDate, endDate, activationDate2, objc_opt_class()];

            v40 = MEMORY[0x277D3F178];
            v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
            lastPathComponent3 = [v41 lastPathComponent];
            v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager freeExpiredOwnersAtNow:]"];
            [v40 logMessage:v39 fromFile:lastPathComponent3 fromFunction:v43 fromLineNumber:356];

            v44 = PLLogCommon();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v77 = v39;
              _os_log_debug_impl(&dword_25EDCD000, v44, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            nowCopy = v56;
            v28 = v57;
            v5 = 0x277D3F000uLL;
          }
        }

        [nowCopy timeIntervalSinceDate:activationDate];
        v46 = v45;
        [objc_opt_class() freeTimerInterval];
        if (v46 > v47)
        {
          if ([*(v5 + 384) debugEnabled])
          {
            v48 = objc_opt_class();
            v60[0] = MEMORY[0x277D85DD0];
            v60[1] = 3221225472;
            v60[2] = __61__PLAccountingOwnerDependencyManager_freeExpiredOwnersAtNow___block_invoke_179;
            v60[3] = &unk_279A55D70;
            v61 = @"free";
            v62 = v48;
            if (freeExpiredOwnersAtNow__defaultOnce_177 != -1)
            {
              dispatch_once(&freeExpiredOwnersAtNow__defaultOnce_177, v60);
            }

            v49 = freeExpiredOwnersAtNow__classDebugEnabled_178;

            if (v49 == 1)
            {
              v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"freeing owner=%@, class=%@", v30, objc_opt_class()];
              v51 = MEMORY[0x277D3F178];
              v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
              lastPathComponent4 = [v52 lastPathComponent];
              v54 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager freeExpiredOwnersAtNow:]"];
              [v51 logMessage:v50 fromFile:lastPathComponent4 fromFunction:v54 fromLineNumber:360];

              v55 = PLLogCommon();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v77 = v50;
                _os_log_debug_impl(&dword_25EDCD000, v55, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              nowCopy = v56;
              v28 = v57;
              v5 = 0x277D3F000;
            }
          }

          [v30 deactivate];
        }

        ++v29;
      }

      while (v28 != v29);
      v28 = [obj countByEnumeratingWithState:&v66 objects:v78 count:16];
    }

    while (v28);
  }
}

void *__61__PLAccountingOwnerDependencyManager_freeExpiredOwnersAtNow___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  freeExpiredOwnersAtNow__classDebugEnabled = result;
  return result;
}

void *__61__PLAccountingOwnerDependencyManager_freeExpiredOwnersAtNow___block_invoke_167(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  freeExpiredOwnersAtNow__classDebugEnabled_166 = result;
  return result;
}

void *__61__PLAccountingOwnerDependencyManager_freeExpiredOwnersAtNow___block_invoke_173(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  freeExpiredOwnersAtNow__classDebugEnabled_172 = result;
  return result;
}

void *__61__PLAccountingOwnerDependencyManager_freeExpiredOwnersAtNow___block_invoke_179(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  freeExpiredOwnersAtNow__classDebugEnabled_178 = result;
  return result;
}

- (void)freeExpiredDependenciesAtNow:(id)now
{
  v66 = *MEMORY[0x277D85DE8];
  nowCopy = now;
  v5 = 0x277D3F000uLL;
  selfCopy = self;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __67__PLAccountingOwnerDependencyManager_freeExpiredDependenciesAtNow___block_invoke;
    v59[3] = &unk_279A55D70;
    v60 = @"free";
    v61 = v6;
    if (freeExpiredDependenciesAtNow__defaultOnce != -1)
    {
      dispatch_once(&freeExpiredDependenciesAtNow__defaultOnce, v59);
    }

    v7 = freeExpiredDependenciesAtNow__classDebugEnabled;

    if (v7 == 1)
    {
      nowCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"now=%@", nowCopy];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
      lastPathComponent = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager freeExpiredDependenciesAtNow:]"];
      [v9 logMessage:nowCopy fromFile:lastPathComponent fromFunction:v12 fromLineNumber:368];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }

      self = selfCopy;
      v5 = 0x277D3F000uLL;
    }
  }

  [(PLAccountingOwnerDependencyManager *)self dependencyIDToDependencies];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v41 = v58 = 0u;
  obj = [v41 allKeys];
  v42 = [obj countByEnumeratingWithState:&v55 objects:v65 count:16];
  if (v42)
  {
    v40 = *v56;
    v44 = nowCopy;
    do
    {
      v14 = 0;
      do
      {
        if (*v56 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v43 = v14;
        v15 = *(*(&v55 + 1) + 8 * v14);
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v16 = [v41 objectForKeyedSubscript:v15];
        v17 = [v16 copy];

        v47 = v17;
        v18 = [v17 countByEnumeratingWithState:&v51 objects:v64 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v52;
          v46 = *v52;
          do
          {
            v21 = 0;
            do
            {
              if (*v52 != v20)
              {
                objc_enumerationMutation(v47);
              }

              v22 = *(*(&v51 + 1) + 8 * v21);
              range = [v22 range];
              endDate = [range endDate];

              activationDate = [v22 activationDate];
              if (endDate)
              {
                v26 = [endDate laterDate:activationDate];

                activationDate = v26;
              }

              [nowCopy timeIntervalSinceDate:activationDate];
              v28 = v27;
              [objc_opt_class() freeTimerInterval];
              if (v28 > v29)
              {
                if ([*(v5 + 384) debugEnabled])
                {
                  v30 = objc_opt_class();
                  block[0] = MEMORY[0x277D85DD0];
                  block[1] = 3221225472;
                  block[2] = __67__PLAccountingOwnerDependencyManager_freeExpiredDependenciesAtNow___block_invoke_188;
                  block[3] = &unk_279A55D70;
                  v49 = @"free";
                  v50 = v30;
                  if (freeExpiredDependenciesAtNow__defaultOnce_186 != -1)
                  {
                    dispatch_once(&freeExpiredDependenciesAtNow__defaultOnce_186, block);
                  }

                  v31 = freeExpiredDependenciesAtNow__classDebugEnabled_187;

                  v32 = v31 == 1;
                  v20 = v46;
                  if (v32)
                  {
                    v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"freeing dependency=%@", v22];
                    v34 = MEMORY[0x277D3F178];
                    v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
                    lastPathComponent2 = [v35 lastPathComponent];
                    v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager freeExpiredDependenciesAtNow:]"];
                    [v34 logMessage:v33 fromFile:lastPathComponent2 fromFunction:v37 fromLineNumber:378];

                    v38 = PLLogCommon();
                    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v63 = v33;
                      _os_log_debug_impl(&dword_25EDCD000, v38, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                    }

                    nowCopy = v44;
                    v5 = 0x277D3F000;
                    v20 = v46;
                  }
                }

                [v22 deactivate];
              }

              ++v21;
            }

            while (v19 != v21);
            v19 = [v47 countByEnumeratingWithState:&v51 objects:v64 count:16];
          }

          while (v19);
        }

        v14 = v43 + 1;
      }

      while (v43 + 1 != v42);
      v42 = [obj countByEnumeratingWithState:&v55 objects:v65 count:16];
    }

    while (v42);
  }
}

void *__67__PLAccountingOwnerDependencyManager_freeExpiredDependenciesAtNow___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  freeExpiredDependenciesAtNow__classDebugEnabled = result;
  return result;
}

void *__67__PLAccountingOwnerDependencyManager_freeExpiredDependenciesAtNow___block_invoke_188(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  freeExpiredDependenciesAtNow__classDebugEnabled_187 = result;
  return result;
}

@end