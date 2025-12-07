@interface PLBackupRestoreAgent
+ (void)load;
- (PLBackupRestoreAgent)init;
- (void)didChangeEvent:(id)event toState:(BOOL)state;
- (void)handleFastPassCallback:(id)callback;
- (void)initOperatorDependancies;
- (void)logEventForwardBackupRestore;
- (void)setBackupState:(BOOL)state;
- (void)setRestoreState:(BOOL)state;
- (void)updateBackupState;
- (void)updateRestoreState;
@end

@implementation PLBackupRestoreAgent

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLBackupRestoreAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

- (PLBackupRestoreAgent)init
{
  v41 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isHomePod] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "nonUIBuild"))
  {
    selfCopy = 0;
  }

  else
  {
    v38.receiver = self;
    v38.super_class = PLBackupRestoreAgent;
    v4 = [(PLAgent *)&v38 init];
    v5 = v4;
    if (v4)
    {
      [(PLBackupRestoreAgent *)v4 logEventForwardBackupRestore];
      v6 = objc_alloc_init(MEMORY[0x277D28A48]);
      backupRestoreManager = v5->_backupRestoreManager;
      v5->_backupRestoreManager = v6;

      v5->_backupState = 0;
      v5->_restoreState = 0;
      if ([(PLOperator *)v5 isDebugEnabled])
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLBackupRestoreAgent::init: _backupState=%i, _restoreState=%i", v5->_backupState, v5->_restoreState];
        v9 = MEMORY[0x277D3F178];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLBackupRestoreAgent.m"];
        lastPathComponent = [v10 lastPathComponent];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBackupRestoreAgent init]"];
        [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:96];

        v13 = PLLogCommon();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          out_token = 138412290;
          v40 = v8;
          _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", &out_token, 0xCu);
        }
      }

      out_token = -1;
      uTF8String = [*MEMORY[0x277D28A90] UTF8String];
      workQueue = [(PLOperator *)v5 workQueue];
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __28__PLBackupRestoreAgent_init__block_invoke;
      handler[3] = &unk_278260C40;
      v16 = v5;
      v37 = v16;
      notify_register_dispatch(uTF8String, &out_token, workQueue, handler);

      v35 = -1;
      v17 = *MEMORY[0x277D28AA8];
      uTF8String2 = [*MEMORY[0x277D28AA8] UTF8String];
      workQueue2 = [(PLOperator *)v16 workQueue];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __28__PLBackupRestoreAgent_init__block_invoke_33;
      v33[3] = &unk_278260C40;
      v20 = v16;
      v34 = v20;
      notify_register_dispatch(uTF8String2, &v35, workQueue2, v33);

      v21 = objc_alloc(MEMORY[0x277D3F160]);
      workQueue3 = [(PLOperator *)v20 workQueue];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __28__PLBackupRestoreAgent_init__block_invoke_38;
      v31[3] = &unk_2782597E8;
      v23 = v20;
      v32 = v23;
      v24 = [v21 initWithWorkQueue:workQueue3 forNotification:v17 requireState:1 withBlock:v31];
      [(PLBackupRestoreAgent *)v23 setBackupRestoreNotification:v24];

      v25 = objc_alloc(MEMORY[0x277D3F1A8]);
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __28__PLBackupRestoreAgent_init__block_invoke_41;
      v29[3] = &unk_2782597E8;
      v26 = v23;
      v30 = v26;
      v27 = [v25 initWithOperator:v26 forEntryKey:@"XPCMetrics_OngoingRestore_14_2" withBlock:v29];
      [(PLBackupRestoreAgent *)v26 setFastPassCallback:v27];
    }

    self = v5;
    selfCopy = self;
  }

  return selfCopy;
}

uint64_t __28__PLBackupRestoreAgent_init__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isDebugEnabled])
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLBackupRestoreAgent::kMBManagerBackupStateChangedNotification fired"];
    v3 = MEMORY[0x277D3F178];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLBackupRestoreAgent.m"];
    v5 = [v4 lastPathComponent];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBackupRestoreAgent init]_block_invoke"];
    [v3 logMessage:v2 fromFile:v5 fromFunction:v6 fromLineNumber:101];

    v7 = PLLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138412290;
      v10 = v2;
      _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "%@", &v9, 0xCu);
    }
  }

  return [*(a1 + 32) updateBackupState];
}

uint64_t __28__PLBackupRestoreAgent_init__block_invoke_33(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isDebugEnabled])
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLBackupRestoreAgent::kMBManagerRestoreStateChangedNotification fired"];
    v3 = MEMORY[0x277D3F178];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLBackupRestoreAgent.m"];
    v5 = [v4 lastPathComponent];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBackupRestoreAgent init]_block_invoke"];
    [v3 logMessage:v2 fromFile:v5 fromFunction:v6 fromLineNumber:108];

    v7 = PLLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138412290;
      v10 = v2;
      _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "%@", &v9, 0xCu);
    }
  }

  return [*(a1 + 32) updateRestoreState];
}

void __28__PLBackupRestoreAgent_init__block_invoke_38(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PLLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "Backup restore state changed. UserInfo: %@", &v5, 0xCu);
  }

  [*(a1 + 32) logEventForwardBackupRestore];
}

void __28__PLBackupRestoreAgent_init__block_invoke_41(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PLLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v6) = 0;
    _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "Fast Pass Process state changed. Notification Received", &v6, 2u);
  }

  if (v3)
  {
    v5 = PLLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Fast Pass Process state changed. User info:%@", &v6, 0xCu);
    }

    [*(a1 + 32) handleFastPassCallback:v3];
  }
}

- (void)handleFastPassCallback:(id)callback
{
  v52 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  v4 = PLLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v51 = callbackCopy;
    _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "Ongoing Restore: Fast Pass Process state changed. UserInfo: %@", buf, 0xCu);
  }

  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  v6 = [callbackCopy objectForKey:@"entry"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:@"state"];
    if (v8)
    {
      v9 = v8;
      v10 = [v7 objectForKeyedSubscript:@"processName"];

      if (v10)
      {
        v11 = [v7 objectForKeyedSubscript:@"state"];
        intValue = [v11 intValue];

        v13 = [v7 objectForKeyedSubscript:@"processName"];
        v14 = PLLogCommon();
        v15 = v14;
        if (intValue > 29)
        {
          if (intValue == 30)
          {
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "Ongoing Restore: Fast Pass Process state Stopped", buf, 2u);
            }

            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v15 = v13;
            v28 = [v15 countByEnumeratingWithState:&v39 objects:v48 count:16];
            if (!v28)
            {
              goto LABEL_45;
            }

            v29 = v28;
            v34 = v13;
            v30 = *v40;
            do
            {
              for (i = 0; i != v29; ++i)
              {
                if (*v40 != v30)
                {
                  objc_enumerationMutation(v15);
                }

                v32 = *(*(&v39 + 1) + 8 * i);
                mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
                [mEMORY[0x277D3F0C0] createQualificationEventForwardWithQualificationID:16 withRemovingChildNodeName:v32 withStartDate:monotonicDate];
              }

              v29 = [v15 countByEnumeratingWithState:&v39 objects:v48 count:16];
            }

            while (v29);
            goto LABEL_44;
          }

          if (intValue == 60)
          {
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "Ongoing Restore: Fast Pass Process state Completed", buf, 2u);
            }

            v37 = 0u;
            v38 = 0u;
            v35 = 0u;
            v36 = 0u;
            v15 = v13;
            v22 = [v15 countByEnumeratingWithState:&v35 objects:v47 count:16];
            if (!v22)
            {
              goto LABEL_45;
            }

            v23 = v22;
            v34 = v13;
            v24 = *v36;
            do
            {
              for (j = 0; j != v23; ++j)
              {
                if (*v36 != v24)
                {
                  objc_enumerationMutation(v15);
                }

                v26 = *(*(&v35 + 1) + 8 * j);
                mEMORY[0x277D3F0C0]2 = [MEMORY[0x277D3F0C0] sharedInstance];
                [mEMORY[0x277D3F0C0]2 createQualificationEventForwardWithQualificationID:16 withRemovingChildNodeName:v26 withStartDate:monotonicDate];
              }

              v23 = [v15 countByEnumeratingWithState:&v35 objects:v47 count:16];
            }

            while (v23);
            goto LABEL_44;
          }
        }

        else
        {
          if (intValue == 10)
          {
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "Ongoing Restore: Fast Pass Process state Scheduled", buf, 2u);
            }

            goto LABEL_45;
          }

          if (intValue == 20)
          {
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "Ongoing Restore: Fast Pass Process state Start", buf, 2u);
            }

            v45 = 0u;
            v46 = 0u;
            v43 = 0u;
            v44 = 0u;
            v15 = v13;
            v16 = [v15 countByEnumeratingWithState:&v43 objects:v49 count:16];
            if (!v16)
            {
              goto LABEL_45;
            }

            v17 = v16;
            v34 = v13;
            v18 = *v44;
            do
            {
              for (k = 0; k != v17; ++k)
              {
                if (*v44 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v43 + 1) + 8 * k);
                mEMORY[0x277D3F0C0]3 = [MEMORY[0x277D3F0C0] sharedInstance];
                [mEMORY[0x277D3F0C0]3 createQualificationEventForwardWithQualificationID:16 withAddingChildNodeName:v20 withStartDate:monotonicDate];
              }

              v17 = [v15 countByEnumeratingWithState:&v43 objects:v49 count:16];
            }

            while (v17);
LABEL_44:
            v13 = v34;
LABEL_45:

            goto LABEL_46;
          }
        }

        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_ERROR, "Ongoing Restore: DAS Fast Pass State is invalid: Not one of scheduled, started, stopped or fully done", buf, 2u);
        }

        goto LABEL_45;
      }
    }
  }

LABEL_46:
}

- (void)initOperatorDependancies
{
  if (([MEMORY[0x277D3F208] nonUIBuild] & 1) == 0)
  {
    [(PLBackupRestoreAgent *)self updateBackupState];
    [(PLBackupRestoreAgent *)self updateRestoreState];
    mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    [mEMORY[0x277D3F0C0] createDistributionEventForwardWithDistributionID:39 withChildNodeNameToWeight:&unk_282C1A3F8 withStartDate:monotonicDate];
  }
}

- (void)setBackupState:(BOOL)state
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_backupState != state)
  {
    stateCopy = state;
    if (([MEMORY[0x277D3F208] nonUIBuild] & 1) == 0)
    {
      if ([(PLOperator *)self isDebugEnabled])
      {
        stateCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"PLBackupRestoreAgent::setBackupState:%i", stateCopy];
        v6 = MEMORY[0x277D3F178];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLBackupRestoreAgent.m"];
        lastPathComponent = [v7 lastPathComponent];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBackupRestoreAgent setBackupState:]"];
        [v6 logMessage:stateCopy fromFile:lastPathComponent fromFunction:v9 fromLineNumber:188];

        v10 = PLLogCommon();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v12 = stateCopy;
          _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }

      [(PLBackupRestoreAgent *)self didChangeEvent:@"Backup" toState:stateCopy];
      self->_backupState = stateCopy;
    }
  }
}

- (void)setRestoreState:(BOOL)state
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_restoreState != state)
  {
    stateCopy = state;
    if (([MEMORY[0x277D3F208] nonUIBuild] & 1) == 0)
    {
      if ([(PLOperator *)self isDebugEnabled])
      {
        stateCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"PLBackupRestoreAgent::setRestoreState:%i", stateCopy];
        v6 = MEMORY[0x277D3F178];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLBackupRestoreAgent.m"];
        lastPathComponent = [v7 lastPathComponent];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBackupRestoreAgent setRestoreState:]"];
        [v6 logMessage:stateCopy fromFile:lastPathComponent fromFunction:v9 fromLineNumber:196];

        v10 = PLLogCommon();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v12 = stateCopy;
          _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }

      [(PLBackupRestoreAgent *)self didChangeEvent:@"Restore" toState:stateCopy];
      self->_restoreState = stateCopy;
    }
  }
}

- (void)didChangeEvent:(id)event toState:(BOOL)state
{
  v15[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if (([MEMORY[0x277D3F208] nonUIBuild] & 1) == 0 && ((objc_msgSend(eventCopy, "isEqualToString:", @"Backup") & 1) != 0 || objc_msgSend(eventCopy, "isEqualToString:", @"Restore")))
  {
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    if (state)
    {
      v14 = eventCopy;
      v15[0] = &unk_282C1CE28;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
      [mEMORY[0x277D3F0C0] createDistributionEventForwardWithDistributionID:12 withChildNodeNameToWeight:v7 withStartDate:monotonicDate];

      v12 = eventCopy;
      v13 = &unk_282C1CE28;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    }

    else
    {
      mEMORY[0x277D3F0C0]2 = [MEMORY[0x277D3F0C0] sharedInstance];
      [mEMORY[0x277D3F0C0]2 createDistributionEventForwardWithDistributionID:12 withChildNodeNameToWeight:MEMORY[0x277CBEC10] withStartDate:monotonicDate];

      v9 = &unk_282C1A420;
    }

    mEMORY[0x277D3F0C0]3 = [MEMORY[0x277D3F0C0] sharedInstance];
    [mEMORY[0x277D3F0C0]3 createDistributionEventForwardWithDistributionID:39 withChildNodeNameToWeight:v9 withStartDate:monotonicDate];
  }
}

- (void)updateBackupState
{
  backupRestoreManager = [(PLBackupRestoreAgent *)self backupRestoreManager];
  backupState = [backupRestoreManager backupState];
  -[PLBackupRestoreAgent setBackupState:](self, "setBackupState:", [backupState state] == 2);
}

- (void)updateRestoreState
{
  v23 = *MEMORY[0x277D85DE8];
  backupRestoreManager = [(PLBackupRestoreAgent *)self backupRestoreManager];
  restoreState = [backupRestoreManager restoreState];
  state = [restoreState state];

  [(PLBackupRestoreAgent *)self setRestoreState:state == 2];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __42__PLBackupRestoreAgent_updateRestoreState__block_invoke;
    v19 = &__block_descriptor_40_e5_v8__0lu32l8;
    v20 = v6;
    if (qword_2811F6DF0 != -1)
    {
      dispatch_once(&qword_2811F6DF0, &block);
    }

    if (_MergedGlobals_1_67 == 1)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLBackupRestoreAgent::restoreState:%d", state, block, v17, v18, v19, v20];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLBackupRestoreAgent.m"];
      lastPathComponent = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBackupRestoreAgent updateRestoreState]"];
      [v8 logMessage:v7 fromFile:lastPathComponent fromFunction:v11 fromLineNumber:229];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v22 = v7;
        _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v13 = (state - 1) < 3;
  v14 = MEMORY[0x277D3F180];
  v15 = [MEMORY[0x277CCABB0] numberWithBool:v13];
  [v14 setObject:v15 forKey:@"ongoingRestore" forApplicationID:@"com.apple.powerlogd" saveToDisk:1];
}

void *__42__PLBackupRestoreAgent_updateRestoreState__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_67 = result;
  return result;
}

- (void)logEventForwardBackupRestore
{
  v13 = *MEMORY[0x277D85DE8];
  state64 = 0;
  backupRestoreNotification = [(PLBackupRestoreAgent *)self backupRestoreNotification];
  state = notify_get_state([backupRestoreNotification stateToken], &state64);

  v5 = PLLogCommon();
  v6 = v5;
  if (state)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_ERROR, "Restore state Unavailable", buf, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v12 = state64;
      _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "backupRestore state %llu", buf, 0xCu);
    }

    v9 = @"State";
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:state64];
    v10 = v7;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];

    [(PLOperator *)self logForSubsystem:@"BackupMetrics" category:@"RestoreState" data:v6];
  }
}

@end