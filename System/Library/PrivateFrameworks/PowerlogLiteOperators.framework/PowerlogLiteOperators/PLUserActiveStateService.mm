@interface PLUserActiveStateService
+ (id)entryEventPointDefinitionState;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (NSDate)lastUserInactiveTime;
- (PLUserActiveStateService)init;
- (double)getUserInactiveMinIntervalCA;
- (id)getLastSystemSleepDate;
- (void)handlePluggedInStateUpdate:(BOOL)update;
- (void)handleUserActiveStateChangeCallback:(BOOL)callback;
- (void)initOperatorDependancies;
- (void)setLastUserInactiveTime:(id)time;
@end

@implementation PLUserActiveStateService

uint64_t __52__PLUserActiveStateService_initOperatorDependancies__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"entry"];
  v4 = [v3 objectForKeyedSubscript:@"ExternalConnected"];
  v5 = [v4 BOOLValue];

  v6 = *(a1 + 32);

  return [v6 handlePluggedInStateUpdate:v5];
}

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLUserActiveStateService;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"State";
  v2 = +[PLUserActiveStateService entryEventPointDefinitionState];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

+ (id)entryEventPointDefinitionState
{
  v21[2] = *MEMORY[0x277D85DE8];
  v20[0] = *MEMORY[0x277D3F4E8];
  v18 = *MEMORY[0x277D3F568];
  v19 = &unk_282C1BB18;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v21[0] = v15;
  v20[1] = *MEMORY[0x277D3F540];
  v16[0] = @"UserInactiveTime";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198] commonTypeDict_RealFormat];
  v17[0] = commonTypeDict_RealFormat;
  v16[1] = @"TimePluggedInDuringInactiveState";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_RealFormat];
  v17[1] = commonTypeDict_RealFormat2;
  v16[2] = @"TimeSinceLastUnplugDuringInactiveState";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_RealFormat];
  v17[2] = commonTypeDict_RealFormat3;
  v16[3] = @"DidSleep";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]4 commonTypeDict_BoolFormat];
  v17[3] = commonTypeDict_BoolFormat;
  v16[4] = @"BatteryTableID";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v17[4] = commonTypeDict_IntegerFormat;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:5];
  v21[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

  return v11;
}

- (PLUserActiveStateService)init
{
  if ([MEMORY[0x277D3F258] isPowerlogHelperd] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd"))
  {
    selfCopy = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PLUserActiveStateService;
    self = [(PLOperator *)&v5 init];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)initOperatorDependancies
{
  if ([MEMORY[0x277D3F258] deviceRebooted] || IOPMUserIsActive())
  {
    [(PLUserActiveStateService *)self setLastUserInactiveTime:0];
  }

  else
  {
    lastUserInactiveTime = [(PLUserActiveStateService *)self lastUserInactiveTime];

    if (lastUserInactiveTime && IOPSDrawingUnlimitedPower())
    {
      monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
      [(PLUserActiveStateService *)self setLastPluggedInTime:monotonicDate];

      [(PLUserActiveStateService *)self setPluggedInState:MEMORY[0x277CBEC38]];
    }
  }

  v3 = objc_alloc(MEMORY[0x277D3F1A8]);
  v4 = +[PLEventBackwardBatteryEntry entryKey];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__PLUserActiveStateService_initOperatorDependancies__block_invoke;
  v9[3] = &unk_2782597E8;
  v9[4] = self;
  v5 = [v3 initWithOperator:self forEntryKey:v4 withBlock:v9];
  [(PLUserActiveStateService *)self setBatteryNotification:v5];

  workQueue = [(PLOperator *)self workQueue];
  [(PLUserActiveStateService *)self setUserActiveNotificationHandle:IOPMScheduleUserActiveChangedNotification(), MEMORY[0x277D85DD0], 3221225472, __52__PLUserActiveStateService_initOperatorDependancies__block_invoke_2, &unk_278259D80, self];
}

- (void)handleUserActiveStateChangeCallback:(BOOL)callback
{
  callbackCopy = callback;
  v97 = *MEMORY[0x277D85DE8];
  v5 = PLLogUserActiveState();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:callbackCopy];
    *buf = 138412290;
    v96 = v6;
    _os_log_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEFAULT, "User active tracking: curr state %@", buf, 0xCu);
  }

  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  if (callbackCopy)
  {
    lastUserInactiveTime = [(PLUserActiveStateService *)self lastUserInactiveTime];
    [monotonicDate timeIntervalSinceDate:lastUserInactiveTime];
    v10 = v9;

    lastUserInactiveTime2 = [(PLUserActiveStateService *)self lastUserInactiveTime];
    if (lastUserInactiveTime2)
    {
      v12 = lastUserInactiveTime2;
      [MEMORY[0x277D3F180] doubleForKey:@"userInactiveMinInterval" ifNotSet:300.0];
      v14 = v13;

      if (v10 >= v14)
      {
        getLastSystemSleepDate = [(PLUserActiveStateService *)self getLastSystemSleepDate];
        v16 = +[PLEventBackwardBatteryEntry entryKey];
        v17 = objc_msgSend_storage(self);
        v74 = v16;
        v78 = [v17 lastEntryForKey:v16];

        lastUnplugTime = [(PLUserActiveStateService *)self lastUnplugTime];
        if (lastUnplugTime)
        {
          lastUnplugTime2 = [(PLUserActiveStateService *)self lastUnplugTime];
          [monotonicDate timeIntervalSinceDate:lastUnplugTime2];
          v21 = v20;
        }

        else
        {
          v21 = 0.0;
        }

        if (getLastSystemSleepDate)
        {
          lastUserInactiveTime3 = [(PLUserActiveStateService *)self lastUserInactiveTime];
          v34 = [lastUserInactiveTime3 compare:getLastSystemSleepDate] == -1;
        }

        else
        {
          v34 = 0;
        }

        lastPluggedInTime = [(PLUserActiveStateService *)self lastPluggedInTime];
        if (lastPluggedInTime)
        {
          v36 = lastPluggedInTime;
          pluggedInState = [(PLUserActiveStateService *)self pluggedInState];
          bOOLValue = [pluggedInState BOOLValue];

          if (bOOLValue)
          {
            lastPluggedInTime2 = [(PLUserActiveStateService *)self lastPluggedInTime];
            [monotonicDate timeIntervalSinceDate:lastPluggedInTime2];
            v41 = v40;

            if (v41 <= v10)
            {
              [(PLUserActiveStateService *)self pluggedInTime];
              [(PLUserActiveStateService *)self setPluggedInTime:v41 + v42];
            }
          }
        }

        v75 = getLastSystemSleepDate;
        v77 = monotonicDate;
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        v44 = round(v10);
        v45 = [MEMORY[0x277CCABB0] numberWithDouble:v44];
        [dictionary setObject:v45 forKeyedSubscript:@"UserInactiveTime"];

        v46 = MEMORY[0x277CCABB0];
        selfCopy = self;
        [(PLUserActiveStateService *)self pluggedInTime];
        v48 = [v46 numberWithDouble:round(v47)];
        [dictionary setObject:v48 forKeyedSubscript:@"TimePluggedInDuringInactiveState"];

        v73 = v34;
        v49 = [MEMORY[0x277CCABB0] numberWithBool:v34];
        [dictionary setObject:v49 forKeyedSubscript:@"DidSleep"];

        v50 = round(v21);
        v51 = [MEMORY[0x277CCABB0] numberWithDouble:v50];
        [dictionary setObject:v51 forKeyedSubscript:@"TimeSinceLastUnplugDuringInactiveState"];

        v52 = PLLogUserActiveState();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v96 = dictionary;
          _os_log_debug_impl(&dword_21A4C6000, v52, OS_LOG_TYPE_DEBUG, "User active states to send: %@", buf, 0xCu);
        }

        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v53 = [&unk_282C13FB0 countByEnumeratingWithState:&v89 objects:v94 count:16];
        if (v53)
        {
          v54 = v53;
          v55 = *v90;
          do
          {
            for (i = 0; i != v54; ++i)
            {
              if (*v90 != v55)
              {
                objc_enumerationMutation(&unk_282C13FB0);
              }

              v57 = *(*(&v89 + 1) + 8 * i);
              v58 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_Start", v57];
              v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_End", v57];
              cachedBatteryMetrics = [(PLUserActiveStateService *)selfCopy cachedBatteryMetrics];
              v61 = [cachedBatteryMetrics objectForKeyedSubscript:v57];
              [dictionary setObject:v61 forKeyedSubscript:v58];

              v62 = [v78 objectForKeyedSubscript:v57];
              [dictionary setObject:v62 forKeyedSubscript:v59];
            }

            v54 = [&unk_282C13FB0 countByEnumeratingWithState:&v89 objects:v94 count:16];
          }

          while (v54);
        }

        self = selfCopy;
        [(PLUserActiveStateService *)selfCopy getUserInactiveMinIntervalCA];
        if (v10 >= v63)
        {
          v84 = MEMORY[0x277D85DD0];
          v85 = 3221225472;
          v86 = __64__PLUserActiveStateService_handleUserActiveStateChangeCallback___block_invoke;
          v87 = &unk_278259D58;
          v88 = dictionary;
          AnalyticsSendEventLazy();
        }

        v64 = [(PLOperator *)PLUserActiveStateService entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"State"];
        v65 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v64];
        v66 = [MEMORY[0x277CCABB0] numberWithDouble:v44];
        [v65 setObject:v66 forKeyedSubscript:@"UserInactiveTime"];

        v67 = MEMORY[0x277CCABB0];
        [(PLUserActiveStateService *)selfCopy pluggedInTime];
        v69 = [v67 numberWithDouble:round(v68)];
        [v65 setObject:v69 forKeyedSubscript:@"TimePluggedInDuringInactiveState"];

        v70 = [MEMORY[0x277CCABB0] numberWithBool:v73];
        [v65 setObject:v70 forKeyedSubscript:@"DidSleep"];

        v71 = [MEMORY[0x277CCABB0] numberWithDouble:v50];
        [v65 setObject:v71 forKeyedSubscript:@"TimeSinceLastUnplugDuringInactiveState"];

        monotonicDate = v77;
        if (v78)
        {
          v72 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v78, "entryID")}];
          [v65 setObject:v72 forKeyedSubscript:@"BatteryTableID"];
        }

        [(PLOperator *)selfCopy logEntry:v65];
      }
    }

    [(PLUserActiveStateService *)self setLastUserInactiveTime:0];
    [(PLUserActiveStateService *)self setLastUnplugTime:0];
    [(PLUserActiveStateService *)self setPluggedInTime:0.0];
    [(PLUserActiveStateService *)self setCachedBatteryMetrics:0];
  }

  else
  {
    v76 = monotonicDate;
    [(PLUserActiveStateService *)self setLastUserInactiveTime:monotonicDate];
    [(PLUserActiveStateService *)self setPluggedInTime:0.0];
    [(PLUserActiveStateService *)self setLastUnplugTime:0];
    v22 = +[PLEventBackwardBatteryEntry entryKey];
    v23 = objc_msgSend_storage(self);
    v24 = [v23 lastEntryForKey:v22];

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v26 = [&unk_282C13FB0 countByEnumeratingWithState:&v80 objects:v93 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v81;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v81 != v28)
          {
            objc_enumerationMutation(&unk_282C13FB0);
          }

          v30 = *(*(&v80 + 1) + 8 * j);
          v31 = [v24 objectForKeyedSubscript:v30];
          [dictionary2 setObject:v31 forKeyedSubscript:v30];
        }

        v27 = [&unk_282C13FB0 countByEnumeratingWithState:&v80 objects:v93 count:16];
      }

      while (v27);
    }

    [(PLUserActiveStateService *)self setCachedBatteryMetrics:dictionary2];
    monotonicDate = v76;
    if (IOPSDrawingUnlimitedPower())
    {
      v32 = v76;
    }

    else
    {
      v32 = 0;
    }

    [(PLUserActiveStateService *)self setLastPluggedInTime:v32];
  }
}

- (void)handlePluggedInStateUpdate:(BOOL)update
{
  updateCopy = update;
  v25 = *MEMORY[0x277D85DE8];
  pluggedInState = [(PLUserActiveStateService *)self pluggedInState];
  if (!pluggedInState || (v6 = pluggedInState, -[PLUserActiveStateService pluggedInState](self, "pluggedInState"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 BOOLValue], v7, v6, v8 != updateCopy))
  {
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    if (updateCopy)
    {
      [(PLUserActiveStateService *)self setLastPluggedInTime:monotonicDate];

      [(PLUserActiveStateService *)self setLastUnplugTime:0];
      v10 = PLLogUserActiveState();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
LABEL_11:

        v18 = [MEMORY[0x277CCABB0] numberWithBool:updateCopy];
        [(PLUserActiveStateService *)self setPluggedInState:v18];

        return;
      }

      lastPluggedInTime = [(PLUserActiveStateService *)self lastPluggedInTime];
      v21 = 138412290;
      v22 = lastPluggedInTime;
      _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "Updated last plugged in time: %@", &v21, 0xCu);
    }

    else
    {
      [(PLUserActiveStateService *)self setLastUnplugTime:monotonicDate];

      lastPluggedInTime2 = [(PLUserActiveStateService *)self lastPluggedInTime];

      if (lastPluggedInTime2)
      {
        lastUnplugTime = [(PLUserActiveStateService *)self lastUnplugTime];
        lastPluggedInTime3 = [(PLUserActiveStateService *)self lastPluggedInTime];
        [lastUnplugTime timeIntervalSinceDate:lastPluggedInTime3];
        v16 = v15;

        if (v16 > 0.0)
        {
          [(PLUserActiveStateService *)self pluggedInTime];
          [(PLUserActiveStateService *)self setPluggedInTime:v16 + v17];
        }

        [(PLUserActiveStateService *)self setLastPluggedInTime:0];
      }

      v10 = PLLogUserActiveState();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_11;
      }

      lastPluggedInTime = [(PLUserActiveStateService *)self lastUnplugTime];
      v19 = MEMORY[0x277CCABB0];
      [(PLUserActiveStateService *)self pluggedInTime];
      v20 = [v19 numberWithDouble:?];
      v21 = 138412546;
      v22 = lastPluggedInTime;
      v23 = 2112;
      v24 = v20;
      _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "Updated last unplug time: %@, total plugged in time: %@", &v21, 0x16u);
    }

    goto LABEL_11;
  }
}

- (id)getLastSystemSleepDate
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = [(PLOperator *)PLSleepWakeAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"PowerState"];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ IS NOT NULL", @"KernelSleepDate"];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ = %hd", @"Event", 4];
  v6 = objc_msgSend_storage(self);
  v11[0] = v4;
  v11[1] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v8 = [v6 lastEntryForKey:v3 withFilters:v7];

  if (v8)
  {
    entryDate = [v8 entryDate];
  }

  else
  {
    entryDate = 0;
  }

  return entryDate;
}

- (NSDate)lastUserInactiveTime
{
  [MEMORY[0x277D3F180] doubleForKey:@"PLUserActiveStateLastUserInactiveTimestamp" ifNotSet:0.0];
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:?];
  }

  return v3;
}

- (void)setLastUserInactiveTime:(id)time
{
  if (time)
  {
    [time timeIntervalSince1970];
    v4 = MEMORY[0x277D3F180];
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [v4 setObject:v6 forKey:@"PLUserActiveStateLastUserInactiveTimestamp" saveToDisk:1];
  }

  else
  {
    v5 = MEMORY[0x277D3F180];

    [v5 setObject:? forKey:? saveToDisk:?];
  }
}

- (double)getUserInactiveMinIntervalCA
{
  if (qword_2811F3DD8 != -1)
  {
    dispatch_once(&qword_2811F3DD8, &__block_literal_global_87);
  }

  return *&qword_2811F3DE0;
}

void *__56__PLUserActiveStateService_getUserInactiveMinIntervalCA__block_invoke()
{
  result = [MEMORY[0x277D3F180] doubleForKey:@"userInactiveMinIntervalCA" ifNotSet:43200.0];
  qword_2811F3DE0 = v1;
  return result;
}

@end