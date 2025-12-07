@interface PLScheduledWakeAgent
+ (id)entryEventForwardDefinitions;
+ (void)load;
- (PLScheduledWakeAgent)init;
- (id)humanReadableScheduledWakeString:(id)string;
- (void)initOperatorDependancies;
- (void)logEventForwardScheduledEvent;
@end

@implementation PLScheduledWakeAgent

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLScheduledWakeAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventForwardDefinitions
{
  v21[1] = *MEMORY[0x277D85DE8];
  v20 = @"ScheduledEvent";
  v18[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4C8];
  v16[0] = *MEMORY[0x277D3F568];
  v16[1] = v2;
  v17[0] = &unk_2870FEF70;
  v17[1] = &unk_2870FF298;
  v16[2] = *MEMORY[0x277D3F4C0];
  v17[2] = &unk_2870FF2B0;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
  v19[0] = v3;
  v18[1] = *MEMORY[0x277D3F540];
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198] commonTypeDict_DateFormat];
  v15[0] = commonTypeDict_DateFormat;
  v14[1] = @"Type";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v15[1] = commonTypeDict_StringFormat;
  v14[2] = @"AppName";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v15[2] = commonTypeDict_StringFormat2;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v19[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v21[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];

  return v12;
}

- (PLScheduledWakeAgent)init
{
  v6.receiver = self;
  v6.super_class = PLScheduledWakeAgent;
  v2 = [(PLAgent *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    previousScheduleWakeEvents = v2->_previousScheduleWakeEvents;
    v2->_previousScheduleWakeEvents = v3;
  }

  return v2;
}

- (void)initOperatorDependancies
{
  v3 = [MEMORY[0x277D3F218] sharedSemaphoreForKey:*MEMORY[0x277D3F468]];
  [(PLScheduledWakeAgent *)self setCanSleepSemaphore:v3];

  canSleepSemaphore = [(PLScheduledWakeAgent *)self canSleepSemaphore];
  [canSleepSemaphore signalInterestByObject:self];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__PLScheduledWakeAgent_initOperatorDependancies__block_invoke;
  v6[3] = &unk_279A58F10;
  v6[4] = self;
  v5 = [MEMORY[0x277D3F1A8] canSleepEntryNotificationWithOperator:self withBlock:v6];
  [(PLScheduledWakeAgent *)self setCanSleepNotification:v5];
}

- (void)logEventForwardScheduledEvent
{
  v62 = *MEMORY[0x277D85DE8];
  v2 = [(PLOperator *)PLScheduledWakeAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ScheduledEvent"];
  v3 = IOPMCopyScheduledPowerEvents();
  v41 = v2;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __53__PLScheduledWakeAgent_logEventForwardScheduledEvent__block_invoke;
    v55[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v55[4] = v4;
    if (logEventForwardScheduledEvent_defaultOnce != -1)
    {
      dispatch_once(&logEventForwardScheduledEvent_defaultOnce, v55);
    }

    if (logEventForwardScheduledEvent_classDebugEnabled == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ signaling done", self];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLScheduledWakeAgent.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLScheduledWakeAgent logEventForwardScheduledEvent]"];
      [v6 logMessage:v5 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:120];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [(PLAWDNetworkUsage *)v5 handleNameConnectionCallback:v10];
      }

      v2 = v41;
    }
  }

  canSleepSemaphore = [(PLScheduledWakeAgent *)self canSleepSemaphore];
  [canSleepSemaphore signalDoneByObject:self];

  array = [MEMORY[0x277CBEB18] array];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v3;
  v12 = [(__CFArray *)obj countByEnumeratingWithState:&v51 objects:v61 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v52;
    do
    {
      v15 = 0;
      do
      {
        if (*v52 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v51 + 1) + 8 * v15);
        v17 = [v16 objectForKey:@"time"];
        [v17 timeIntervalSinceNow];
        if (v18 >= 0.0)
        {
          v19 = [v16 objectForKey:@"scheduledby"];
          previousScheduleWakeEvents = [(PLScheduledWakeAgent *)self previousScheduleWakeEvents];
          v21 = [previousScheduleWakeEvents valueForKey:v19];

          if (v21 && [v21 isEqualToDate:v17])
          {
            if ([MEMORY[0x277D3F180] debugEnabled])
            {
              v22 = objc_opt_class();
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __53__PLScheduledWakeAgent_logEventForwardScheduledEvent__block_invoke_48;
              block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              block[4] = v22;
              if (logEventForwardScheduledEvent_defaultOnce_46 != -1)
              {
                dispatch_once(&logEventForwardScheduledEvent_defaultOnce_46, block);
              }

              if (logEventForwardScheduledEvent_classDebugEnabled_47 == 1)
              {
                v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Skip logging event %@", v16];
                v42 = MEMORY[0x277D3F178];
                v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLScheduledWakeAgent.m"];
                lastPathComponent2 = [v24 lastPathComponent];
                v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLScheduledWakeAgent logEventForwardScheduledEvent]"];
                [v42 logMessage:v23 fromFile:lastPathComponent2 fromFunction:v26 fromLineNumber:136];

                v27 = PLLogCommon();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v60 = v23;
                  _os_log_debug_impl(&dword_25EE16000, v27, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v2 = v41;
LABEL_24:
              }
            }

            goto LABEL_26;
          }

          v23 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v2];
          v28 = [v16 objectForKey:@"eventtype"];
          v27 = [(PLScheduledWakeAgent *)self humanReadableScheduledWakeString:v28];

          [v23 setObject:v17 forKeyedSubscript:@"EventTime"];
          [v23 setObject:v27 forKeyedSubscript:@"Type"];
          [v23 setObject:v19 forKeyedSubscript:@"AppName"];
          [array addObject:v23];
          goto LABEL_24;
        }

LABEL_26:

        ++v15;
      }

      while (v13 != v15);
      v13 = [(__CFArray *)obj countByEnumeratingWithState:&v51 objects:v61 count:16];
    }

    while (v13);
  }

  previousScheduleWakeEvents2 = [(PLScheduledWakeAgent *)self previousScheduleWakeEvents];
  [previousScheduleWakeEvents2 removeAllObjects];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v30 = obj;
  v31 = [(__CFArray *)v30 countByEnumeratingWithState:&v46 objects:v58 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v47;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v47 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v46 + 1) + 8 * i);
        v36 = [v35 objectForKey:@"time"];
        [v36 timeIntervalSinceNow];
        if (v37 >= 0.0)
        {
          v38 = [v35 objectForKey:@"scheduledby"];
          previousScheduleWakeEvents3 = [(PLScheduledWakeAgent *)self previousScheduleWakeEvents];
          [previousScheduleWakeEvents3 setValue:v36 forKey:v38];
        }
      }

      v32 = [(__CFArray *)v30 countByEnumeratingWithState:&v46 objects:v58 count:16];
    }

    while (v32);
  }

  if ([array count])
  {
    v56 = v41;
    v57 = array;
    v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
    [(PLOperator *)self logEntries:v40 withGroupID:v41];
  }

  else
  {
    v40 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v41];
    [v40 setIsErrorEntry:1];
    [v40 setObject:@"No scheduled events" forKeyedSubscript:@"__PLEntryErrorString__"];
    [(PLOperator *)self logEntry:v40];
  }
}

void *__53__PLScheduledWakeAgent_logEventForwardScheduledEvent__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventForwardScheduledEvent_classDebugEnabled = result;
  return result;
}

void *__53__PLScheduledWakeAgent_logEventForwardScheduledEvent__block_invoke_48(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventForwardScheduledEvent_classDebugEnabled_47 = result;
  return result;
}

- (id)humanReadableScheduledWakeString:(id)string
{
  stringCopy = string;
  if (CFStringCompare(stringCopy, @"wake", 0))
  {
    if (CFStringCompare(stringCopy, @"wakepoweron", 0))
    {
      if (CFStringCompare(stringCopy, @"poweron", 0))
      {
        if (CFStringCompare(stringCopy, @"sleep", 0))
        {
          if (CFStringCompare(stringCopy, @"shutdown", 0))
          {
            if (CFStringCompare(stringCopy, @"restart", 0))
            {
              v4 = stringCopy;
            }

            else
            {
              v4 = @"Scheduled Restart";
            }
          }

          else
          {
            v4 = @"Scheduled Shutdown";
          }
        }

        else
        {
          v4 = @"Scheduled Sleep";
        }
      }

      else
      {
        v4 = @"Power On from Off state";
      }
    }

    else
    {
      v4 = @"Scheduled Wake or Power On";
    }
  }

  else
  {
    v4 = @"Scheduled Wake";
  }

  return v4;
}

@end