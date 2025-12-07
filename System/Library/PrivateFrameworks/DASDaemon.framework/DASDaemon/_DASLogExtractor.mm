@interface _DASLogExtractor
+ (id)extractorForArchive:(id)archive;
- (BOOL)didActivityRun:(id)run forActivity:(id)activity;
- (BOOL)didBARFinish:(id)finish forApplication:(id)application;
- (_DASLogExtractor)initWithArchive:(id)archive;
- (id)copyActivitySummary:(id)summary startDate:(id)date endDate:(id)endDate detail:(BOOL)detail error:(int *)error;
- (id)copyApplicationSummary:(id)summary startDate:(id)date endDate:(id)endDate detail:(BOOL)detail error:(int *)error;
- (id)descriptionOfHigherThresholds:(id)thresholds;
- (id)descriptionOfIncompatibilityDenials:(id)denials;
- (id)descriptionOfPolicyToIntervalsMap:(id)map;
- (id)getActivityStartBeforeDate:(id)date forActivity:(id)activity;
- (id)getAllBARActivityNames:(id)names;
- (id)getAllPushLaunchActivityNames:(id)names;
- (id)getBARSummaryFromLogs:(id)logs forApplication:(id)application detail:(BOOL)detail;
- (id)getDefaultFilterPredicate;
- (id)getIncompatibilityReasons:(id)reasons forActivity:(id)activity;
- (id)getInstancesOfHigherThreshold:(id)threshold forActivity:(id)activity;
- (id)getMessagesActivityFinish:(id)finish forActivity:(id)activity isCompleted:(BOOL)completed;
- (id)getMessagesAfterRunning:(id)running forActivity:(id)activity;
- (id)getMessagesBeforeRunning:(id)running forActivity:(id)activity;
- (id)getMessagesForAllBARTasks:(id)tasks;
- (id)getMessagesForBARLifecycle:(id)lifecycle forApplication:(id)application queryStatus:(id)status taskType:(id)type;
- (id)getMessagesWhenAppBackgroundSwitch:(id)switch forApplication:(id)application switchTo:(id)to;
- (id)getPolicyDenialReasonsFromMessage:(id)message;
- (id)getScheduledBlocksOfBARMessages:(id)messages forApplication:(id)application;
- (id)getScheduledBlocksOfMessages:(id)messages forActivity:(id)activity;
- (id)getSummaryFromLogs:(id)logs forActivity:(id)activity detail:(BOOL)detail;
- (id)getpolicyToIntervals:(id)intervals;
- (id)objectForTrigger:(id)trigger fromCondition:(id)condition compactRepresentation:(BOOL)representation;
- (id)summarizeAllDenialsOverMessages:(id)messages forActivity:(id)activity detail:(BOOL)detail;
- (id)summarizePolicyDenialsOverMessages:(id)messages maxDuration:(double)duration;
- (id)summarizeRuntimeOverMessages:(id)messages forActivity:(id)activity;
- (int)didActivityFinish:(id)finish forActivity:(id)activity;
- (int)didActivityFinish:(id)finish forBARActivity:(id)activity;
- (int)handleLogEventsLogEvents:(id)events sinceDate:(id)date withHandler:(id)handler;
- (int)summarizeActivity:(id)activity startDate:(id)date endDate:(id)endDate detail:(BOOL)detail;
- (int)summarizeApplication:(id)application startDate:(id)date endDate:(id)endDate detail:(BOOL)detail;
- (int)sysConditionsLog:(BOOL)log startDate:(id)date endDate:(id)endDate;
- (void)addConditionToHistory:(id)history fromMessage:(id)message atTimestamp:(id)timestamp compactRepresentation:(BOOL)representation;
@end

@implementation _DASLogExtractor

+ (id)extractorForArchive:(id)archive
{
  archiveCopy = archive;
  v4 = [[_DASLogExtractor alloc] initWithArchive:archiveCopy];

  return v4;
}

- (_DASLogExtractor)initWithArchive:(id)archive
{
  archiveCopy = archive;
  v12.receiver = self;
  v12.super_class = _DASLogExtractor;
  v5 = [(_DASLogExtractor *)&v12 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCA968]);
    dateFormatter = v5->_dateFormatter;
    v5->_dateFormatter = v6;

    subsystem = v5->_subsystem;
    v5->_subsystem = @"com.apple.duetactivityscheduler";

    [(NSDateFormatter *)v5->_dateFormatter setDateFormat:@"y-MM-dd-HH-mm-ss.SSS-z"];
    if (archiveCopy)
    {
      [MEMORY[0x277D24438] storeWithArchiveURL:archiveCopy];
    }

    else
    {
      [MEMORY[0x277D24438] localStore];
    }
    v9 = ;
    logStore = v5->_logStore;
    v5->_logStore = v9;

    [(OSLogEventStore *)v5->_logStore setUpgradeConfirmationHandler:&__block_literal_global_146];
  }

  return v5;
}

- (id)getDefaultFilterPredicate
{
  if (getDefaultFilterPredicate_onceToken != -1)
  {
    [_DASLogExtractor getDefaultFilterPredicate];
  }

  v3 = getDefaultFilterPredicate_subpredicates;

  return v3;
}

- (int)handleLogEventsLogEvents:(id)events sinceDate:(id)date withHandler:(id)handler
{
  eventsCopy = events;
  dateCopy = date;
  handlerCopy = handler;
  if (!dateCopy)
  {
    dateCopy = [MEMORY[0x277CBEAA8] distantPast];
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  logStore = self->_logStore;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __67___DASLogExtractor_handleLogEventsLogEvents_sinceDate_withHandler___block_invoke;
  v17[3] = &unk_278EE17F8;
  v17[4] = self;
  v12 = eventsCopy;
  v18 = v12;
  selfCopy = self;
  v13 = handlerCopy;
  v20 = v13;
  v14 = dateCopy;
  v19 = v14;
  v21 = &v23;
  [(OSLogEventStore *)logStore prepareWithCompletionHandler:v17];
  v15 = *(v24 + 6);

  _Block_object_dispose(&v23, 8);
  return v15;
}

- (id)getScheduledBlocksOfMessages:(id)messages forActivity:(id)activity
{
  v33 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  activityCopy = activity;
  if (![messagesCopy count])
  {
    v27 = 0;
    goto LABEL_27;
  }

  v25 = activityCopy;
  [MEMORY[0x277CBEB18] array];
  v27 = v26 = messagesCopy;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = messagesCopy;
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (!v8)
  {
    v10 = 0;
    goto LABEL_24;
  }

  v9 = v8;
  v10 = 0;
  v11 = 1;
  v12 = *v29;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v29 != v12)
      {
        objc_enumerationMutation(v7);
      }

      v14 = *(*(&v28 + 1) + 8 * i);
      if (v11)
      {
        message = [*(*(&v28 + 1) + 8 * i) message];
        if ([message containsString:@"Submitted Activity:"])
        {

LABEL_11:
          array = [MEMORY[0x277CBEB18] array];
          v11 = 0;
          goto LABEL_18;
        }

        message2 = [v14 message];
        v17 = [message2 containsString:@"SUBMITTING:"];

        if (v17)
        {
          goto LABEL_11;
        }
      }

      message3 = [v14 message];
      if ([message3 containsString:@"COMPLETED"])
      {
      }

      else
      {
        message4 = [v14 message];
        v21 = [message4 containsString:@"CANCELED"];

        if (!v21)
        {
          goto LABEL_19;
        }
      }

      [v10 addObject:v14];
      if ([v10 count])
      {
        v22 = [v10 copy];
        [v27 addObject:v22];
      }

      array = 0;
      v11 = 1;
LABEL_18:

      v10 = array;
LABEL_19:
      [v10 addObject:v14];
    }

    v9 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
  }

  while (v9);
LABEL_24:

  activityCopy = v25;
  if ([v10 count])
  {
    v23 = [v10 copy];
    [v27 addObject:v23];
  }

  messagesCopy = v26;
LABEL_27:

  return v27;
}

- (id)getScheduledBlocksOfBARMessages:(id)messages forApplication:(id)application
{
  v31 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  applicationCopy = application;
  if (![messagesCopy count])
  {
    array = 0;
    goto LABEL_21;
  }

  v23 = applicationCopy;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v24 = messagesCopy;
  v8 = messagesCopy;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9;
  v11 = *v27;
  v12 = 1;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v27 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v26 + 1) + 8 * i);
      if ((v12 & 1) != 0 && ([*(*(&v26 + 1) + 8 * i) message], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "containsString:", @"Setting process visibility to: Background"), v15, v16))
      {
        array3 = [MEMORY[0x277CBEB18] array];
        v12 = 0;
      }

      else
      {
        message = [v14 message];
        v19 = [message containsString:@"Setting process visibility to: Foreground"];

        if (!v19)
        {
          goto LABEL_15;
        }

        [array2 addObject:v14];
        if ([array2 count])
        {
          v20 = [array2 copy];
          [array addObject:v20];
        }

        array3 = 0;
        v12 = 1;
      }

      array2 = array3;
LABEL_15:
      [array2 addObject:v14];
    }

    v10 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
  }

  while (v10);
LABEL_17:

  if ([array2 count])
  {
    v21 = [array2 copy];
    [array addObject:v21];
  }

  applicationCopy = v23;
  messagesCopy = v24;
LABEL_21:

  return array;
}

- (id)getMessagesBeforeRunning:(id)running forActivity:(id)activity
{
  v35 = *MEMORY[0x277D85DE8];
  runningCopy = running;
  activityCopy = activity;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = runningCopy;
  v8 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    v29 = *v31;
LABEL_3:
    v12 = 0;
    v28 = v9;
    while (1)
    {
      if (*v31 != v29)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v30 + 1) + 8 * v12);
      message = [v13 message];
      activityCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", activityCopy];
      if (([message containsString:activityCopy] & 1) == 0)
      {
        break;
      }

      v16 = v11;
      v17 = v7;
      v18 = activityCopy;
      message2 = [v13 message];
      if ([message2 containsString:@"Submitted:"])
      {

        activityCopy = v18;
        v7 = v17;
        v11 = v16;
        v9 = v28;
      }

      else
      {
        [v13 message];
        v23 = v22 = v10;
        v27 = [v23 containsString:@"SUBMITTING:"];

        v10 = v22;
        activityCopy = v18;
        v7 = v17;
        v11 = v16;
        v9 = v28;
        if (!v27)
        {
          goto LABEL_10;
        }
      }

      array = [MEMORY[0x277CBEB18] array];

      v10 = 1;
      v11 = array;
LABEL_16:
      [v11 addObject:v13];
      if (v9 == ++v12)
      {
        v9 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_21;
      }
    }

LABEL_10:
    if (v10)
    {
      message3 = [v13 message];
      v21 = [message3 containsString:@"Running activities :"];

      if (v21)
      {
        [v11 addObject:v13];
        v25 = v11;

        goto LABEL_22;
      }

      v10 = 1;
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_16;
  }

  v11 = 0;
LABEL_21:

  v25 = v11;
LABEL_22:

  return v25;
}

- (id)getAllBARActivityNames:(id)names
{
  v21 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  v15 = [MEMORY[0x277CBEB58] set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = namesCopy;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        message = [v9 message];
        if ([message containsString:@"Submitted Activity: <_DASActivity: bgRefresh-"])
        {
          message2 = [v9 message];
          v12 = [message2 containsString:@"widget"];

          if (v12)
          {
            continue;
          }

          message3 = [v9 message];
          message = getSubstring(message3, @"Submitted: <_DASActivity: ", @", Background,", 0);

          if (message)
          {
            [v15 addObject:message];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  return v15;
}

- (id)getAllPushLaunchActivityNames:(id)names
{
  v22 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  v16 = [MEMORY[0x277CBEB58] set];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = namesCopy;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        message = [v9 message];
        if ([message containsString:@"Submitted: <_DASActivity: "])
        {
          message2 = [v9 message];
          if ([message2 containsString:@"widget"])
          {
          }

          else
          {
            message3 = [v9 message];
            v13 = [message3 containsString:@"pushLaunch"];

            if (!v13)
            {
              continue;
            }

            message4 = [v9 message];
            message = getSubstring(message4, @"Submitted: <_DASActivity: ", @", Maintenance,", 0);

            if (message)
            {
              [v16 addObject:message];
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  return v16;
}

- (id)getMessagesWhenAppBackgroundSwitch:(id)switch forApplication:(id)application switchTo:(id)to
{
  v26 = *MEMORY[0x277D85DE8];
  switchCopy = switch;
  toCopy = to;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = switchCopy;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        message = [v13 message];
        toCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Setting process visibility to: %@", toCopy];
        v16 = [message containsString:toCopy];

        if (v16)
        {
          array = [MEMORY[0x277CBEB18] array];
          [array addObject:v13];
          v18 = array;

          v17 = v18;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v17 = 0;
  v18 = v8;
LABEL_11:

  return v17;
}

- (id)getMessagesForAllBARTasks:(id)tasks
{
  v34 = *MEMORY[0x277D85DE8];
  tasksCopy = tasks;
  array = [MEMORY[0x277CBEB18] array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = tasksCopy;
  v5 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0x277CCA000uLL;
    v8 = *v30;
    v9 = @"bgRefresh-";
    v22 = *v30;
    do
    {
      v10 = 0;
      v23 = v6;
      do
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v29 + 1) + 8 * v10);
        message = [v11 message];
        v13 = [*(v7 + 3240) stringWithFormat:v9];
        v14 = [message containsString:v13];
        if (v14)
        {
          message2 = [v11 message];
          if (([message2 containsString:@"widget"] & 1) == 0)
          {

LABEL_17:
            [array addObject:v11];
            goto LABEL_18;
          }
        }

        v27 = message;
        v28 = message2;
        message3 = [v11 message];
        v16 = [*(v7 + 3240) stringWithFormat:@"Timeline for "];
        if ([message3 containsString:v16])
        {
          v26 = 1;
        }

        else
        {
          message4 = [v11 message];
          [*(v7 + 3240) stringWithFormat:@"pushLaunch"];
          v18 = v9;
          v20 = v19 = v7;
          v26 = [message4 containsString:v20];

          v7 = v19;
          v9 = v18;
          v6 = v23;

          v8 = v22;
        }

        if (v14)
        {
          message2 = v28;

          if (v26)
          {
            goto LABEL_17;
          }
        }

        else
        {

          message2 = v28;
          if (v26)
          {
            goto LABEL_17;
          }
        }

LABEL_18:
        ++v10;
      }

      while (v6 != v10);
      v6 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v6);
  }

  return array;
}

- (id)getMessagesForBARLifecycle:(id)lifecycle forApplication:(id)application queryStatus:(id)status taskType:(id)type
{
  v36 = *MEMORY[0x277D85DE8];
  lifecycleCopy = lifecycle;
  applicationCopy = application;
  statusCopy = status;
  typeCopy = type;
  array = [MEMORY[0x277CBEB18] array];
  v27 = statusCopy;
  if ([statusCopy isEqual:@"Submitted"])
  {
    v12 = @"Submitted: <_DASActivity: ";
  }

  else if ([statusCopy isEqual:{@"Completed", statusCopy}])
  {
    v12 = @"COMPLETED ";
  }

  else if ([statusCopy isEqual:@"Prediction"])
  {
    v12 = @"Timeline for ";
  }

  else
  {
    NSLog(&cfstr_UnsupportedInp.isa);
    v12 = 0;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v13 = lifecycleCopy;
  v14 = [v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v32;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v31 + 1) + 8 * i);
        message = [v18 message];
        if (([message containsString:applicationCopy] & 1) == 0)
        {
          goto LABEL_18;
        }

        message2 = [v18 message];
        if (([message2 containsString:v12] & 1) == 0)
        {

LABEL_18:
          continue;
        }

        [v18 message];
        v21 = v16;
        v22 = applicationCopy;
        v23 = v13;
        v25 = v24 = v12;
        v30 = [v25 containsString:typeCopy];

        v12 = v24;
        v13 = v23;
        applicationCopy = v22;
        v16 = v21;

        if (v30)
        {
          [array addObject:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v15);
  }

  return array;
}

- (id)getActivityStartBeforeDate:(id)date forActivity:(id)activity
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  dateCopy = date;
  v5 = [dateCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = *v20;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(dateCopy);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        message = [v8 message];
        v10 = [message containsString:@"Submitted:"];

        if (v10)
        {
          message2 = [v8 message];
          v12 = getSubstring(message2, @", [", @"], Group:", 0);

          v13 = [v12 componentsSeparatedByString:@" "];
          v14 = MEMORY[0x277CCACA8];
          v15 = [v13 objectAtIndexedSubscript:0];
          v16 = [v13 objectAtIndexedSubscript:1];
          v17 = [v13 objectAtIndexedSubscript:2];
          v5 = [v14 stringWithFormat:@"%@ %@ %@", v15, v16, v17];

          goto LABEL_11;
        }
      }

      v5 = [dateCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (BOOL)didActivityRun:(id)run forActivity:(id)activity
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  runCopy = run;
  v5 = [runCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(runCopy);
        }

        message = [*(*(&v13 + 1) + 8 * i) message];
        v10 = [message containsString:@"Running activities :"];

        if (v10)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v6 = [runCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (id)getMessagesAfterRunning:(id)running forActivity:(id)activity
{
  v26 = *MEMORY[0x277D85DE8];
  runningCopy = running;
  activityCopy = activity;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = runningCopy;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    array2 = 0;
    v10 = *v22;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        message = [v12 message];
        v14 = [message containsString:@"Running activities :"];

        if (v14)
        {
          array = [MEMORY[0x277CBEB18] array];

          array2 = array;
        }

        else
        {
          message2 = [v12 message];
          if ([message2 containsString:@"COMPLETED"])
          {

LABEL_15:
            if (!array2)
            {
              array2 = [MEMORY[0x277CBEB18] array];
            }

            [array2 addObject:v12];
            goto LABEL_18;
          }

          message3 = [v12 message];
          v18 = [message3 containsString:@"CANCELED"];

          if (v18)
          {
            goto LABEL_15;
          }
        }

        [array2 addObject:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    array2 = 0;
  }

LABEL_18:

  return array2;
}

- (int)didActivityFinish:(id)finish forActivity:(id)activity
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  finishCopy = finish;
  v5 = [finishCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(finishCopy);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        message = [v9 message];
        v11 = [message containsString:@"COMPLETED"];

        if (v11)
        {
          v14 = 1;
          goto LABEL_14;
        }

        message2 = [v9 message];
        v13 = [message2 containsString:@"CANCELED"];

        if (v13)
        {
          v14 = 2;
          goto LABEL_14;
        }
      }

      v6 = [finishCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
      v14 = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_14:

  return v14;
}

- (int)didActivityFinish:(id)finish forBARActivity:(id)activity
{
  v22 = *MEMORY[0x277D85DE8];
  finishCopy = finish;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [finishCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(finishCopy);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        message = [v10 message];
        v12 = [message containsString:@"COMPLETED"];

        if (v12)
        {
          v7 = 1;
        }

        else
        {
          message2 = [v10 message];
          v14 = [message2 containsString:@"CANCELED"];

          v6 |= v14;
        }
      }

      v5 = [finishCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
    if (v6)
    {
      v15 = 2;
    }

    else
    {
      v15 = 0;
    }

    if (v7)
    {
      LODWORD(v5) = 1;
    }

    else
    {
      LODWORD(v5) = v15;
    }
  }

  return v5;
}

- (id)getMessagesActivityFinish:(id)finish forActivity:(id)activity isCompleted:(BOOL)completed
{
  completedCopy = completed;
  v28 = *MEMORY[0x277D85DE8];
  finishCopy = finish;
  activityCopy = activity;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = finishCopy;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        message = [v14 message];
        v16 = [message containsString:activityCopy];

        if (v16)
        {
          message2 = [v14 message];
          v18 = message2;
          v19 = completedCopy ? @"COMPLETED" : @"CANCELED";
          v20 = [message2 containsString:v19];

          if (v20)
          {
            v21 = v14;
            goto LABEL_15;
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v21 = 0;
LABEL_15:

  return v21;
}

- (BOOL)didBARFinish:(id)finish forApplication:(id)application
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  finishCopy = finish;
  v5 = [finishCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(finishCopy);
        }

        message = [*(*(&v13 + 1) + 8 * i) message];
        v10 = [message containsString:@"COMPLETED bgRefresh-"];

        if (v10)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v6 = [finishCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (id)summarizeRuntimeOverMessages:(id)messages forActivity:(id)activity
{
  v44 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  activityCopy = activity;
  v7 = [messagesCopy count];
  if (v7)
  {
    v35 = defaultFormatter(v7);
    firstObject = [messagesCopy firstObject];
    date = [firstObject date];

    lastObject = [messagesCopy lastObject];
    date2 = [lastObject date];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v10 = messagesCopy;
    v11 = [v10 countByEnumeratingWithState:&v39 objects:v43 count:16];
    v36 = activityCopy;
    if (v11)
    {
      v12 = v11;
      v34 = messagesCopy;
      v13 = 0;
      v14 = 0;
      v15 = *v40;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v40 != v15)
          {
            objc_enumerationMutation(v10);
          }

          v17 = *(*(&v39 + 1) + 8 * i);
          message = [v17 message];
          v19 = [message containsString:@"Suspending"];

          if (v19)
          {
            date3 = [v17 date];

            v14 = 1;
            v13 = date3;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v12);

      v21 = MEMORY[0x277CCACA8];
      if (v14)
      {
        v22 = v35;
        v23 = [v35 stringFromDate:v13];
        v24 = 1;
        v25 = [v21 stringWithFormat:@"%d %@", 1, v23];

        messagesCopy = v34;
LABEL_17:
        v27 = MEMORY[0x277CCACA8];
        v28 = getIntervalString(date, date2);
        v29 = [v22 stringFromDate:date];
        v30 = [v22 stringFromDate:date2];
        v31 = [v27 stringWithFormat:@"Activity ran for %@, from %@ to %@(Was suspended = %@)\n", v28, v29, v30, v25];

        dictionary = [MEMORY[0x277CBEB38] dictionary];
        [dictionary setObject:v31 forKeyedSubscript:@"result"];
        if (v24)
        {
          v32 = [v22 stringFromDate:v13];
          [dictionary setObject:v32 forKeyedSubscript:@"suspendTime"];
        }

        else
        {
          [dictionary setObject:&stru_2859F0B50 forKeyedSubscript:@"suspendTime"];
        }

        activityCopy = v36;
        goto LABEL_21;
      }

      messagesCopy = v34;
    }

    else
    {

      v13 = 0;
      v21 = MEMORY[0x277CCACA8];
    }

    v22 = v35;
    v25 = [v21 stringWithFormat:@"%d %@", 0, &stru_2859F0B50];
    v24 = 0;
    goto LABEL_17;
  }

  dictionary = 0;
LABEL_21:

  return dictionary;
}

- (id)getPolicyDenialReasonsFromMessage:(id)message
{
  v21 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  if ([messageCopy containsString:@"Must Not Proceed}"])
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v15 = messageCopy;
    v5 = [messageCopy componentsSeparatedByString:@"\n"];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          if ([v10 containsString:{@"Not Proceed, Score:"}])
          {
            v11 = getSubstring(v10, @"\t{name: ", @",", 0);
            if (v11)
            {
              v12 = getSubstring(v10, @"Rationale: [", @"]", 1);
              [dictionary setObject:v12 forKeyedSubscript:v11];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    v13 = dictionary;

    messageCopy = v15;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)getpolicyToIntervals:(id)intervals
{
  v127 = *MEMORY[0x277D85DE8];
  intervalsCopy = intervals;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v100 = defaultFormatter(dictionary);
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  obj = intervalsCopy;
  v5 = [obj countByEnumeratingWithState:&v118 objects:v126 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v86 = *v119;
    v8 = 1;
    v99 = dictionary;
    do
    {
      v9 = 0;
      v83 = v6;
      do
      {
        if (*v119 != v86)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v118 + 1) + 8 * v9);
        message = [v10 message];
        v12 = [(_DASLogExtractor *)self getPolicyDenialReasonsFromMessage:message];

        v101 = v12;
        if (v12)
        {
          v89 = v9;
          v13 = MEMORY[0x277CBEB98];
          allKeys = [v7 allKeys];
          v15 = [v13 setWithArray:allKeys];

          v16 = MEMORY[0x277CBEB98];
          allKeys2 = [v12 allKeys];
          v18 = [v16 setWithArray:allKeys2];

          v90 = v7;
          v88 = v18;
          if (v8)
          {
            v19 = v18;

            v116 = 0u;
            v117 = 0u;
            v114 = 0u;
            v115 = 0u;
            v20 = v19;
            v21 = [v20 countByEnumeratingWithState:&v114 objects:v125 count:16];
            if (v21)
            {
              v22 = v21;
              v96 = *v115;
              v93 = v20;
              do
              {
                for (i = 0; i != v22; ++i)
                {
                  if (*v115 != v96)
                  {
                    objc_enumerationMutation(v93);
                  }

                  v24 = *(*(&v114 + 1) + 8 * i);
                  array = [MEMORY[0x277CBEB18] array];
                  [dictionary setObject:array forKeyedSubscript:v24];

                  v26 = objc_opt_new();
                  date = [v10 date];
                  [v26 setStartDate:date];

                  date2 = [v10 date];
                  [v26 setEndDate:date2];

                  v29 = [v101 objectForKeyedSubscript:v24];
                  array2 = [MEMORY[0x277CBEB18] array];
                  v31 = MEMORY[0x277CCACA8];
                  date3 = [v10 date];
                  v33 = [v100 stringFromDate:date3];
                  v34 = [v31 stringWithFormat:@"[%@] %@", v33, v29];
                  [array2 addObject:v34];

                  dictionary = v99;
                  [v26 setValue:array2];
                  v35 = [v99 objectForKeyedSubscript:v24];
                  [v35 addObject:v26];
                }

                v20 = v93;
                v22 = [v93 countByEnumeratingWithState:&v114 objects:v125 count:16];
              }

              while (v22);
              v36 = v93;
              v7 = v90;
              v6 = v83;
            }

            else
            {
              v36 = v20;
            }
          }

          else
          {
            v37 = [v15 mutableCopy];
            [v37 unionSet:v18];
            [v37 minusSet:v18];
            v84 = [v37 copy];
            [v37 unionSet:v18];
            v85 = v15;
            [v37 minusSet:v15];
            v94 = v37;
            v38 = [v37 copy];
            v110 = 0u;
            v111 = 0u;
            v112 = 0u;
            v113 = 0u;
            v92 = v38;
            v39 = [v92 countByEnumeratingWithState:&v110 objects:v124 count:16];
            if (v39)
            {
              v40 = v39;
              v97 = *v111;
              do
              {
                for (j = 0; j != v40; ++j)
                {
                  if (*v111 != v97)
                  {
                    objc_enumerationMutation(v92);
                  }

                  v42 = *(*(&v110 + 1) + 8 * j);
                  v43 = [dictionary objectForKeyedSubscript:v42];

                  if (!v43)
                  {
                    array3 = [MEMORY[0x277CBEB18] array];
                    [dictionary setObject:array3 forKeyedSubscript:v42];
                  }

                  v45 = objc_opt_new();
                  date4 = [v10 date];
                  [v45 setStartDate:date4];

                  date5 = [v10 date];
                  [v45 setEndDate:date5];

                  v48 = [v101 objectForKeyedSubscript:v42];
                  array4 = [MEMORY[0x277CBEB18] array];
                  v50 = MEMORY[0x277CCACA8];
                  date6 = [v10 date];
                  v52 = [v100 stringFromDate:date6];
                  v53 = [v50 stringWithFormat:@"[%@] %@", v52, v48];
                  [array4 addObject:v53];

                  dictionary = v99;
                  [v45 setValue:array4];
                  v54 = [v99 objectForKeyedSubscript:v42];
                  [v54 addObject:v45];
                }

                v40 = [v92 countByEnumeratingWithState:&v110 objects:v124 count:16];
              }

              while (v40);
            }

            [v94 unionSet:v85];
            [v94 minusSet:v92];
            [v94 minusSet:v84];
            v55 = [v94 copy];
            v106 = 0u;
            v107 = 0u;
            v108 = 0u;
            v109 = 0u;
            v91 = v55;
            v56 = v90;
            v57 = v101;
            v98 = [v91 countByEnumeratingWithState:&v106 objects:v123 count:16];
            if (v98)
            {
              v95 = *v107;
              do
              {
                for (k = 0; k != v98; ++k)
                {
                  if (*v107 != v95)
                  {
                    objc_enumerationMutation(v91);
                  }

                  v59 = *(*(&v106 + 1) + 8 * k);
                  v60 = [dictionary objectForKeyedSubscript:v59];
                  [v60 count];
                  lastObject = [v60 lastObject];
                  date7 = [v10 date];
                  [lastObject setEndDate:date7];

                  v63 = [v57 objectForKeyedSubscript:v59];
                  v64 = [v56 objectForKeyedSubscript:v59];
                  if (([v63 isEqualToString:v64] & 1) == 0)
                  {
                    value = [lastObject value];
                    v66 = MEMORY[0x277CCACA8];
                    date8 = [v10 date];
                    v68 = [v100 stringFromDate:date8];
                    v69 = [v66 stringWithFormat:@"[%@] %@", v68, v63];
                    [value addObject:v69];

                    dictionary = v99;
                    v57 = v101;

                    v56 = v90;
                  }
                }

                v98 = [v91 countByEnumeratingWithState:&v106 objects:v123 count:16];
              }

              while (v98);
            }

            v70 = v57;
            v7 = v70;
            v6 = v83;
            v20 = v94;
            v36 = v85;
          }

          v8 = 0;
          v9 = v89;
        }

        ++v9;
      }

      while (v9 != v6);
      v6 = [obj countByEnumeratingWithState:&v118 objects:v126 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  lastObject2 = [obj lastObject];
  date9 = [lastObject2 date];

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  allKeys3 = [v7 allKeys];
  v74 = [allKeys3 countByEnumeratingWithState:&v102 objects:v122 count:16];
  if (v74)
  {
    v75 = v74;
    v76 = *v103;
    do
    {
      for (m = 0; m != v75; ++m)
      {
        if (*v103 != v76)
        {
          objc_enumerationMutation(allKeys3);
        }

        v78 = [dictionary objectForKeyedSubscript:*(*(&v102 + 1) + 8 * m)];
        [v78 count];
        lastObject3 = [v78 lastObject];
        [lastObject3 setEndDate:date9];
      }

      v75 = [allKeys3 countByEnumeratingWithState:&v102 objects:v122 count:16];
    }

    while (v75);
  }

  v80 = dictionary;
  return dictionary;
}

- (id)descriptionOfPolicyToIntervalsMap:(id)map
{
  v60 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  allKeys = [mapCopy allKeys];
  if ([allKeys count])
  {
    string = [MEMORY[0x277CCAB68] string];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v30 = allKeys;
    obj = allKeys;
    v33 = [obj countByEnumeratingWithState:&v52 objects:v59 count:16];
    if (v33)
    {
      v32 = *v53;
      do
      {
        v5 = 0;
        do
        {
          if (*v53 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v34 = v5;
          v6 = *(*(&v52 + 1) + 8 * v5);
          [(__CFString *)string appendString:@"\n\n-------------------------------------------------------"];
          [(__CFString *)string appendString:@"-------------------------------------------------------\n"];
          v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Policy: %@", v6];
          [(__CFString *)string appendString:v7];

          v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n\nDenial Intervals:\n"];
          [(__CFString *)string appendString:v8];

          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v38 = v6;
          v9 = [mapCopy objectForKeyedSubscript:v6];
          v10 = [v9 countByEnumeratingWithState:&v48 objects:v58 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v49;
            do
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v49 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v48 + 1) + 8 * i);
                intervalString = [v14 intervalString];
                durationString = [v14 durationString];
                v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"\t%@\t%@\n", intervalString, durationString];
                [(__CFString *)string appendString:v17];
              }

              v11 = [v9 countByEnumeratingWithState:&v48 objects:v58 count:16];
            }

            while (v11);
          }

          v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n\nRationales:\n"];
          [(__CFString *)string appendString:v18];

          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v36 = [mapCopy objectForKeyedSubscript:v38];
          v39 = [v36 countByEnumeratingWithState:&v44 objects:v57 count:16];
          if (v39)
          {
            v37 = *v45;
            do
            {
              for (j = 0; j != v39; ++j)
              {
                if (*v45 != v37)
                {
                  objc_enumerationMutation(v36);
                }

                v20 = *(*(&v44 + 1) + 8 * j);
                intervalString2 = [v20 intervalString];
                v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"\t%@:\n", intervalString2];
                [(__CFString *)string appendString:v22];

                v42 = 0u;
                v43 = 0u;
                v40 = 0u;
                v41 = 0u;
                value = [v20 value];
                v24 = [value countByEnumeratingWithState:&v40 objects:v56 count:16];
                if (v24)
                {
                  v25 = v24;
                  v26 = *v41;
                  do
                  {
                    for (k = 0; k != v25; ++k)
                    {
                      if (*v41 != v26)
                      {
                        objc_enumerationMutation(value);
                      }

                      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"\t\t%@\n", *(*(&v40 + 1) + 8 * k)];
                      [(__CFString *)string appendString:v28];
                    }

                    v25 = [value countByEnumeratingWithState:&v40 objects:v56 count:16];
                  }

                  while (v25);
                }
              }

              v39 = [v36 countByEnumeratingWithState:&v44 objects:v57 count:16];
            }

            while (v39);
          }

          v5 = v34 + 1;
        }

        while (v34 + 1 != v33);
        v33 = [obj countByEnumeratingWithState:&v52 objects:v59 count:16];
      }

      while (v33);
    }

    [(__CFString *)string appendString:@"\n\n-------------------------------------------------------"];
    [(__CFString *)string appendString:@"-------------------------------------------------------"];
    allKeys = v30;
  }

  else
  {
    string = &stru_2859F0B50;
  }

  return string;
}

- (id)getIncompatibilityReasons:(id)reasons forActivity:(id)activity
{
  v45 = *MEMORY[0x277D85DE8];
  reasonsCopy = reasons;
  activityCopy = activity;
  array = [MEMORY[0x277CBEB18] array];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v7 = reasonsCopy;
  v8 = [v7 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = @"Bailing  out.";
    v12 = *v41;
    v36 = activityCopy;
    v37 = v7;
    do
    {
      v13 = 0;
      v39 = v9;
      do
      {
        if (*v41 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v40 + 1) + 8 * v13);
        message = [v14 message];
        v16 = [message containsString:v11];

        if (v16)
        {
          v17 = v11;
          message2 = [v14 message];
          v19 = getSubstring(message2, @"'", @"' has compatibility", 0);

          v20 = [v19 copy];
          v21 = getSubstring(v20, 0, @":", 0);

          if ([v21 containsString:activityCopy])
          {
            message3 = [v14 message];
            v23 = getSubstring(message3, @"with ", @". Bailing ", 0);

            message4 = [v14 message];
            v25 = getSubstring(message4, @"score of ", @" with", 0);

            if (v10)
            {
              if ([v23 isEqualToString:v10])
              {
                date = [v14 date];
                lastObject = [array lastObject];
                [lastObject setEndDate:date];
              }

              else
              {
                date = objc_opt_new();
                date2 = [v14 date];
                [date setStartDate:date2];

                date3 = [v14 date];
                [date setEndDate:date3];

                v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v23, @"activity", v25, @"score", 0}];
                [date setValue:v33];

                [array addObject:date];
                v34 = v23;

                v10 = v34;
                activityCopy = v36;
              }
            }

            else
            {
              date = objc_opt_new();
              date4 = [v14 date];
              [date setStartDate:date4];

              date5 = [v14 date];
              [date setEndDate:date5];

              v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v23, @"activity", v25, @"score", 0}];
              [date setValue:v30];

              [array addObject:date];
              v10 = v23;
            }

            v7 = v37;
          }

          v11 = v17;
          v9 = v39;
        }

        ++v13;
      }

      while (v9 != v13);
      v9 = [v7 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  return array;
}

- (id)descriptionOfIncompatibilityDenials:(id)denials
{
  v24 = *MEMORY[0x277D85DE8];
  denialsCopy = denials;
  if ([denialsCopy count])
  {
    string = [MEMORY[0x277CCAB68] string];
    [(__CFString *)string appendString:@"\n"];
    [(__CFString *)string appendString:@"Denials due to incompatibility:\n"];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = denialsCopy;
    obj = denialsCopy;
    v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v19 + 1) + 8 * i);
          value = [v9 value];
          v11 = [value objectForKeyedSubscript:@"activity"];
          v12 = MEMORY[0x277CCACA8];
          durationString = [v9 durationString];
          intervalString = [v9 intervalString];
          v15 = [v12 stringWithFormat:@"\tDuration: %@ %@ Activity: %@ \n", durationString, intervalString, v11];

          [(__CFString *)string appendString:v15];
        }

        v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v6);
    }

    [(__CFString *)string appendString:@"\n\n-------------------------------------------------------"];
    [(__CFString *)string appendString:@"-------------------------------------------------------"];
    denialsCopy = v17;
  }

  else
  {
    string = &stru_2859F0B50;
  }

  return string;
}

- (id)getInstancesOfHigherThreshold:(id)threshold forActivity:(id)activity
{
  v37 = *MEMORY[0x277D85DE8];
  thresholdCopy = threshold;
  activityCopy = activity;
  array = [MEMORY[0x277CBEB18] array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = thresholdCopy;
  v8 = [v7 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 1;
    v31 = *v33;
    v29 = v7;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v33 != v31)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        message = [v12 message];
        v14 = message;
        if (v10)
        {
          v15 = [message containsString:@"DecisionToRun:0"];

          if (v15)
          {
            date3 = objc_opt_new();
            date = [v12 date];
            [date3 setStartDate:date];

            date2 = [v12 date];
            [date3 setEndDate:date2];

            activityCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"'%@", activityCopy];
            message2 = [v12 message];
            v21 = getSubstring(message2, activityCopy, @" CurrentScore:", 0);

            v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", activityCopy, v21];
            message3 = [v12 message];
            getSubstring(message3, v22, @" DecisionToRun", 0);
            v24 = v9;
            v26 = v25 = array;
            [date3 setValue:v26];

            array = v25;
            v9 = v24;

            [array addObject:date3];
            v7 = v29;

LABEL_11:
            v10 ^= 1u;

            continue;
          }

          v10 = 1;
        }

        else
        {
          v27 = [message containsString:@"Must Not Proceed"];

          if (v27)
          {
            date3 = [v12 date];
            activityCopy = [array lastObject];
            [activityCopy setEndDate:date3];
            goto LABEL_11;
          }

          v10 = 0;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v9);
  }

  return array;
}

- (id)descriptionOfHigherThresholds:(id)thresholds
{
  v22 = *MEMORY[0x277D85DE8];
  thresholdsCopy = thresholds;
  if ([thresholdsCopy count])
  {
    string = [MEMORY[0x277CCAB68] string];
    [(__CFString *)string appendString:@"\n"];
    [(__CFString *)string appendString:@"Denials due to higher Threshold scores:\n"];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    obj = thresholdsCopy;
    v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v17 + 1) + 8 * i);
          value = [v9 value];
          v11 = MEMORY[0x277CCACA8];
          durationString = [v9 durationString];
          intervalString = [v9 intervalString];
          v14 = [v11 stringWithFormat:@"\t%@   Duration: %@   Values: %@\n", durationString, intervalString, value];

          [(__CFString *)string appendString:v14];
        }

        v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);
    }

    [(__CFString *)string appendString:@"\n\n-------------------------------------------------------"];
    [(__CFString *)string appendString:@"-------------------------------------------------------"];
  }

  else
  {
    string = &stru_2859F0B50;
  }

  return string;
}

- (id)summarizePolicyDenialsOverMessages:(id)messages maxDuration:(double)duration
{
  v52 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v39 = messagesCopy;
  [messagesCopy allKeys];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v49 = 0u;
  v7 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v47;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v47 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v46 + 1) + 8 * i);
        v12 = [v39 objectForKeyedSubscript:v11];
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v13 = v12;
        v14 = [v13 countByEnumeratingWithState:&v42 objects:v50 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v43;
          durationCopy = 0.0;
          while (2)
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v43 != v16)
              {
                objc_enumerationMutation(v13);
              }

              [*(*(&v42 + 1) + 8 * j) duration];
              if (durationCopy < 0.0)
              {
                durationCopy = duration;
                goto LABEL_17;
              }

              durationCopy = durationCopy + v19;
            }

            v15 = [v13 countByEnumeratingWithState:&v42 objects:v50 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          durationCopy = 0.0;
        }

LABEL_17:

        v20 = [MEMORY[0x277CCABB0] numberWithDouble:durationCopy];
        [dictionary setObject:v20 forKeyedSubscript:v11];
      }

      v8 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v8);
  }

  allKeys = [dictionary allKeys];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __67___DASLogExtractor_summarizePolicyDenialsOverMessages_maxDuration___block_invoke;
  v40[3] = &unk_278EE1820;
  v22 = dictionary;
  v41 = v22;
  v23 = [allKeys sortedArrayUsingComparator:v40];

  if ([v23 count])
  {
    v24 = [MEMORY[0x277CCAB68] stringWithFormat:@"\tThe top blocking policies are :\n"];
    date = [MEMORY[0x277CBEAA8] date];
    if ([v23 count])
    {
      v26 = 0;
      do
      {
        v27 = MEMORY[0x277CBEAA8];
        v28 = [v23 objectAtIndexedSubscript:v26];
        v29 = [v22 objectForKeyedSubscript:v28];
        [v29 doubleValue];
        v30 = [v27 dateWithTimeInterval:date sinceDate:?];

        v31 = MEMORY[0x277CCACA8];
        v32 = [v23 objectAtIndexedSubscript:v26];
        v33 = getIntervalString(date, v30);
        v34 = [v31 stringWithFormat:@"\t\t%@ : %@, \n", v32, v33];
        [(__CFString *)v24 appendString:v34];

        v35 = [v23 count];
        v36 = 6;
        if (v35 < 6)
        {
          v36 = v35;
        }

        ++v26;
      }

      while (v36 > v26);
    }
  }

  else
  {
    v24 = &stru_2859F0B50;
  }

  return v24;
}

- (id)summarizeAllDenialsOverMessages:(id)messages forActivity:(id)activity detail:(BOOL)detail
{
  detailCopy = detail;
  messagesCopy = messages;
  activityCopy = activity;
  if ([messagesCopy count])
  {
    string = [MEMORY[0x277CCAB68] string];
    firstObject = [messagesCopy firstObject];
    date = [firstObject date];

    lastObject = [messagesCopy lastObject];
    date2 = [lastObject date];

    v25 = date;
    [date2 timeIntervalSinceDate:date];
    v16 = v15;
    v17 = [(_DASLogExtractor *)self getpolicyToIntervals:messagesCopy];
    v18 = [(_DASLogExtractor *)self summarizePolicyDenialsOverMessages:v17 maxDuration:v16];
    [(__CFString *)string appendString:v18];
    if (detailCopy)
    {
      v19 = [(_DASLogExtractor *)self descriptionOfPolicyToIntervalsMap:v17];
      [(__CFString *)string appendString:v19];
    }

    v20 = [(_DASLogExtractor *)self getIncompatibilityReasons:messagesCopy forActivity:activityCopy];
    v21 = [(_DASLogExtractor *)self descriptionOfIncompatibilityDenials:v20];
    [(__CFString *)string appendString:v21];
    v22 = [(_DASLogExtractor *)self getInstancesOfHigherThreshold:messagesCopy forActivity:activityCopy];
    v23 = [(_DASLogExtractor *)self descriptionOfHigherThresholds:v22];
    [(__CFString *)string appendString:v23];
  }

  else
  {
    string = @"The task is not blocked";
  }

  return string;
}

- (id)getSummaryFromLogs:(id)logs forActivity:(id)activity detail:(BOOL)detail
{
  detailCopy = detail;
  v77 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  v9 = [(_DASLogExtractor *)self getScheduledBlocksOfMessages:logs forActivity:activityCopy];
  v10 = defaultFormatter(v9);
  string = [MEMORY[0x277CCAB68] string];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = v9;
  v11 = [obj countByEnumeratingWithState:&v72 objects:v76 count:16];
  if (v11)
  {
    v12 = v11;
    v62 = *v73;
    v63 = activityCopy;
    v67 = 1;
    v52 = detailCopy;
    v64 = v10;
    do
    {
      v13 = 0;
      v53 = v12;
      do
      {
        if (*v73 != v62)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v72 + 1) + 8 * v13);
        firstObject = [v14 firstObject];
        date = [firstObject date];

        lastObject = [v14 lastObject];
        date2 = [lastObject date];

        v17 = [(_DASLogExtractor *)self getMessagesBeforeRunning:v14 forActivity:activityCopy];
        v18 = [(_DASLogExtractor *)self summarizeAllDenialsOverMessages:v17 forActivity:activityCopy detail:detailCopy];
        if (([v18 isEqualToString:@"The task is not blocked"] & 1) == 0)
        {
          v61 = [(_DASLogExtractor *)self getActivityStartBeforeDate:v14 forActivity:activityCopy];
          v19 = [v10 dateFromString:?];
          v20 = v19;
          if (!v19 || ([v19 timeIntervalSinceDate:date], v70 = v20, v21 < 0.0))
          {
            v70 = date;
          }

          v60 = v20;
          v22 = [(_DASLogExtractor *)self didActivityRun:v14 forActivity:activityCopy];
          lastObject2 = [v17 lastObject];
          date3 = [lastObject2 date];

          if (v22)
          {
            v25 = [(_DASLogExtractor *)self getMessagesAfterRunning:v14 forActivity:activityCopy];
            v26 = [(_DASLogExtractor *)self summarizeRuntimeOverMessages:v25 forActivity:activityCopy];
            v59 = [v26 objectForKeyedSubscript:@"result"];
            v58 = [v26 objectForKeyedSubscript:@"suspendTime"];
            v27 = MEMORY[0x277CCACA8];
            v28 = [v64 stringFromDate:date3];
            v66 = [v27 stringWithFormat:@"%@", v28];

            v29 = &stru_2859F0B50;
          }

          else
          {
            v66 = @"-";
            v29 = &stru_2859F0B50;
            v58 = &stru_2859F0B50;
            v59 = &stru_2859F0B50;
          }

          v57 = getIntervalString(v70, date3);
          if (([v57 isEqualToString:&stru_2859F0B50] & 1) == 0)
          {
            v30 = MEMORY[0x277CCACA8];
            v31 = getIntervalString(v70, date3);
            v29 = [v30 stringWithFormat:@"Activity was blocked for %@\n\n", v31];
          }

          v56 = v29;
          v32 = [(_DASLogExtractor *)self didActivityFinish:v14 forActivity:v63];
          if (v32)
          {
            v33 = MEMORY[0x277CCACA8];
            v34 = v64;
            v35 = [v64 stringFromDate:date2];
            v65 = [v33 stringWithFormat:@"%@", v35];
          }

          else
          {
            v65 = @"-";
            v34 = v64;
          }

          v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n\n############################################# Scheduled Block %d #############################################\n\n", v67];
          [string appendString:v36];

          v37 = MEMORY[0x277CCACA8];
          v38 = [v34 stringFromDate:date];
          v39 = [v37 stringWithFormat:@"Submitted at:         %@\n", v38];
          [string appendString:v39];

          v40 = MEMORY[0x277CCACA8];
          v41 = [v34 stringFromDate:v70];
          v42 = [v40 stringWithFormat:@"Eligible from:        %@\n", v41];
          [string appendString:v42];

          v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"Activity ran at:      %@\n", v66];
          [string appendString:v43];

          if (([(__CFString *)v58 isEqualToString:&stru_2859F0B50]& 1) == 0)
          {
            v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"Suspended at:         %@\n", v58];
            [string appendString:v44];
          }

          v55 = v17;
          if (v32 == 1)
          {
            v46 = @"Completed at:        %@\n";
            v45 = v52;
LABEL_24:
            v47 = [MEMORY[0x277CCACA8] stringWithFormat:v46, v65];
            [string appendString:v47];
          }

          else
          {
            v45 = v52;
            if (v32 == 2)
            {
              v46 = @"Canceled at:         %@\n";
              goto LABEL_24;
            }
          }

          v67 = (v67 + 1);
          v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n%@\n", v59];
          [string appendString:v48];

          v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v56];
          [string appendString:v49];

          v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n", v18];
          [string appendString:v50];

          detailCopy = v45;
          activityCopy = v63;
          v10 = v64;
          v12 = v53;
          v17 = v55;
        }

        ++v13;
      }

      while (v12 != v13);
      v12 = [obj countByEnumeratingWithState:&v72 objects:v76 count:16];
    }

    while (v12);
  }

  return string;
}

- (id)getBARSummaryFromLogs:(id)logs forApplication:(id)application detail:(BOOL)detail
{
  detailCopy = detail;
  v175 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  v8 = [(_DASLogExtractor *)self getScheduledBlocksOfBARMessages:logs forApplication:applicationCopy];
  v150 = defaultFormatter(v8);
  string = [MEMORY[0x277CCAB68] string];
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  v171 = 0u;
  obj = v8;
  v115 = applicationCopy;
  v116 = [obj countByEnumeratingWithState:&v168 objects:v174 count:16];
  if (v116)
  {
    v10 = 0;
    v11 = 0;
    v125 = 0;
    v126 = 0;
    v114 = *v169;
    v12 = 1;
    v143 = string;
    selfCopy = self;
    while (1)
    {
      v13 = 0;
      do
      {
        if (*v169 != v114)
        {
          v14 = v13;
          objc_enumerationMutation(obj);
          v13 = v14;
        }

        v122 = v13;
        v15 = *(*(&v168 + 1) + 8 * v13);
        v135 = [(_DASLogExtractor *)self getMessagesWhenAppBackgroundSwitch:v15 forApplication:applicationCopy switchTo:@"Background"];
        v134 = [(_DASLogExtractor *)self getMessagesWhenAppBackgroundSwitch:v15 forApplication:applicationCopy switchTo:@"Foreground"];
        v159 = v15;
        v16 = [(_DASLogExtractor *)self getMessagesForAllBARTasks:v15];
        v17 = [(_DASLogExtractor *)self getMessagesForBARLifecycle:v16 forApplication:applicationCopy queryStatus:@"Submitted" taskType:@"bgRefresh"];
        v140 = v16;
        v149 = [(_DASLogExtractor *)self getMessagesForBARLifecycle:v16 forApplication:applicationCopy queryStatus:@"Completed" taskType:@"bgRefresh"];
        if ([v17 count])
        {
          v133 = [v17 count];
        }

        else
        {
          v133 = 0;
        }

        if ([v149 count])
        {
          v132 = [v149 count];
        }

        else
        {
          v132 = 0;
        }

        v18 = [(_DASLogExtractor *)self getMessagesForBARLifecycle:v16 forApplication:applicationCopy queryStatus:@"Submitted" taskType:@"pushLaunch"];
        v148 = [(_DASLogExtractor *)self getMessagesForBARLifecycle:v140 forApplication:applicationCopy queryStatus:@"Completed" taskType:@"pushLaunch"];
        if ([v18 count])
        {
          v131 = [v18 count];
        }

        else
        {
          v131 = 0;
        }

        v137 = v17;
        v138 = v12;
        v123 = v11;
        v124 = v10;
        v121 = v18;
        if ([v148 count])
        {
          v130 = [v148 count];
        }

        else
        {
          v130 = 0;
        }

        v136 = [(_DASLogExtractor *)self getMessagesForBARLifecycle:v140 forApplication:applicationCopy queryStatus:@"Prediction" taskType:&stru_2859F0B50];
        v139 = [(_DASLogExtractor *)self getAllBARActivityNames:v140];
        v128 = [(_DASLogExtractor *)self getAllPushLaunchActivityNames:v140];
        lastObject = [v135 lastObject];
        date = [lastObject date];

        lastObject2 = [v134 lastObject];
        date2 = [lastObject2 date];

        lastObject3 = [v149 lastObject];
        date3 = [lastObject3 date];

        v24 = MEMORY[0x277CCACA8];
        v120 = date;
        v25 = [v150 stringFromDate:date];
        v129 = [v24 stringWithFormat:@"%@", v25];

        v26 = MEMORY[0x277CCACA8];
        v119 = date2;
        v27 = [v150 stringFromDate:date2];
        v28 = [v26 stringWithFormat:@"%@", v27];

        v29 = [(_DASLogExtractor *)self didBARFinish:v140 forApplication:applicationCopy];
        v30 = &stru_2859F0B50;
        if (v29)
        {
          v31 = MEMORY[0x277CCACA8];
          v32 = [v150 stringFromDate:date3];
          v30 = [v31 stringWithFormat:@"%@", v32];
        }

        v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n\n######################## Scheduled Block %d ########################\n\n", v12];
        [string appendString:v33];

        v129 = [MEMORY[0x277CCACA8] stringWithFormat:@"App switch to background at:                %@\n", v129];
        [string appendString:v129];

        v118 = v28;
        v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"App switch to foreground at:                %@\n", v28];
        [string appendString:v35];

        v133 = [MEMORY[0x277CCACA8] stringWithFormat:@"Number of bgRefresh tasks submitted:        %lu\n", v133];
        [string appendString:v133];

        v132 = [MEMORY[0x277CCACA8] stringWithFormat:@"Number of bgRefresh tasks completed:        %lu\n", v132];
        [string appendString:v132];

        v131 = [MEMORY[0x277CCACA8] stringWithFormat:@"Number of pushLaunch tasks submitted:       %lu\n", v131];
        [string appendString:v131];

        v130 = [MEMORY[0x277CCACA8] stringWithFormat:@"Number of pushLaunch tasks completed:       %lu\n", v130];
        [string appendString:v130];

        v40 = v137;
        if (v29)
        {
          v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"Last Background Refresh Task Completed at:  %@\n", v30];
          [string appendString:v41];
        }

        v117 = v30;
        v42 = v136;
        if ([v136 count])
        {
          lastObject4 = [v136 lastObject];
          date4 = [lastObject4 date];

          v45 = MEMORY[0x277CCACA8];
          v46 = [v150 stringFromDate:date4];
          v47 = [v45 stringWithFormat:@"%@", v46];

          lastObject5 = [v136 lastObject];
          message = [lastObject5 message];

          v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"Last App Launch Prediction Generated at:    %@\n", v47];
          [string appendString:v50];

          v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"Last App Launch Prediction:                 %@\n", message];
          [string appendString:v51];
        }

        if ([v139 count])
        {
          [string appendString:@"--------------------------------------------------------------------\n"];
          [string appendString:@"Summary for bgRefresh tasks:\n"];
          v166 = 0u;
          v167 = 0u;
          v164 = 0u;
          v165 = 0u;
          v141 = v139;
          v146 = [v141 countByEnumeratingWithState:&v164 objects:v173 count:16];
          if (!v146)
          {
            goto LABEL_45;
          }

          v144 = *v165;
          while (1)
          {
            for (i = 0; i != v146; ++i)
            {
              if (*v165 != v144)
              {
                objc_enumerationMutation(v141);
              }

              v53 = *(*(&v164 + 1) + 8 * i);
              v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"Activity %@     \n", v53];
              [string appendString:v54];

              v55 = [(_DASLogExtractor *)self getMessagesBeforeRunning:v159 forActivity:v53];
              LODWORD(v54) = [(_DASLogExtractor *)self didActivityRun:v159 forActivity:v53];
              lastObject6 = [v55 lastObject];
              date5 = [lastObject6 date];

              v57 = &stru_2859F0B50;
              v152 = &stru_2859F0B50;
              v154 = &stru_2859F0B50;
              if (v54)
              {
                v58 = [(_DASLogExtractor *)self getMessagesAfterRunning:v159 forActivity:v53];
                v59 = [(_DASLogExtractor *)self summarizeRuntimeOverMessages:v58 forActivity:v53];
                v154 = [v59 objectForKeyedSubscript:@"result"];
                v57 = [v59 objectForKeyedSubscript:@"suspendTime"];
                v60 = MEMORY[0x277CCACA8];
                v61 = [v150 stringFromDate:date5];
                v62 = [v60 stringWithFormat:@"%@", v61];

                v152 = v62;
                v63 = [MEMORY[0x277CCACA8] stringWithFormat:@"Activity ran at:                            %@\n", v62];
                [string appendString:v63];

                if (([(__CFString *)v57 isEqualToString:&stru_2859F0B50]& 1) == 0)
                {
                  v64 = [MEMORY[0x277CCACA8] stringWithFormat:@"Suspended at:                                %@\n", v57];
                  [string appendString:v64];
                }
              }

              v65 = [(_DASLogExtractor *)self didActivityFinish:v149 forBARActivity:v53];
              if (v65 == 2)
              {
                v67 = [(_DASLogExtractor *)self getMessagesActivityFinish:v149 forActivity:v53 isCompleted:0];
                if (!v67)
                {
                  v66 = &stru_2859F0B50;
                  goto LABEL_42;
                }

                v68 = @"Canceled at:                                %@\n";
                goto LABEL_40;
              }

              v66 = &stru_2859F0B50;
              if (v65 != 1)
              {
                goto LABEL_43;
              }

              v67 = [(_DASLogExtractor *)self getMessagesActivityFinish:v149 forActivity:v53 isCompleted:1];
              if (v67)
              {
                v68 = @"Completed at:                               %@\n";
LABEL_40:
                date6 = [v67 date];
                v70 = MEMORY[0x277CCACA8];
                v71 = [v150 stringFromDate:date6];
                v66 = [v70 stringWithFormat:@"%@", v71];

                v72 = [MEMORY[0x277CCACA8] stringWithFormat:v68, v66];
                string = v143;
                [v143 appendString:v72];

                self = selfCopy;
              }

LABEL_42:

LABEL_43:
              v73 = [(_DASLogExtractor *)self summarizeAllDenialsOverMessages:v55 forActivity:v53 detail:detailCopy];
              v74 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n", v73];
              [string appendString:v74];
            }

            v146 = [v141 countByEnumeratingWithState:&v164 objects:v173 count:16];
            if (!v146)
            {
LABEL_45:

              v40 = v137;
              LODWORD(v12) = v138;
              v42 = v136;
              break;
            }
          }
        }

        v75 = v128;
        if (![v128 count])
        {
          goto LABEL_68;
        }

        [string appendString:@"--------------------------------------------------------------------\n"];
        [string appendString:@"Summary for pushLaunch tasks:\n"];
        v162 = 0u;
        v163 = 0u;
        v160 = 0u;
        v161 = 0u;
        v142 = v128;
        v147 = [v142 countByEnumeratingWithState:&v160 objects:v172 count:16];
        if (!v147)
        {
          goto LABEL_67;
        }

        v145 = *v161;
        do
        {
          for (j = 0; j != v147; ++j)
          {
            if (*v161 != v145)
            {
              objc_enumerationMutation(v142);
            }

            v77 = *(*(&v160 + 1) + 8 * j);
            v78 = [MEMORY[0x277CCACA8] stringWithFormat:@"Activity %@     \n", v77];
            [string appendString:v78];

            v79 = [(_DASLogExtractor *)self getMessagesBeforeRunning:v159 forActivity:v77];
            LODWORD(v78) = [(_DASLogExtractor *)self didActivityRun:v159 forActivity:v77];
            lastObject7 = [v79 lastObject];
            date7 = [lastObject7 date];

            v153 = &stru_2859F0B50;
            v155 = &stru_2859F0B50;
            selfCopy2 = self;
            v82 = &stru_2859F0B50;
            if (v78)
            {
              v83 = [(_DASLogExtractor *)selfCopy2 getMessagesAfterRunning:v159 forActivity:v77];
              v84 = [(_DASLogExtractor *)selfCopy2 summarizeRuntimeOverMessages:v83 forActivity:v77];
              v155 = [v84 objectForKeyedSubscript:@"result"];
              v82 = [v84 objectForKeyedSubscript:@"suspendTime"];
              v85 = MEMORY[0x277CCACA8];
              v86 = [v150 stringFromDate:date7];
              v87 = [v85 stringWithFormat:@"%@", v86];

              v153 = v87;
              v88 = [MEMORY[0x277CCACA8] stringWithFormat:@"Activity ran at:                            %@\n", v87];
              [string appendString:v88];

              if (([(__CFString *)v82 isEqualToString:&stru_2859F0B50]& 1) == 0)
              {
                v89 = [MEMORY[0x277CCACA8] stringWithFormat:@"Suspended at:                                %@\n", v82];
                [string appendString:v89];
              }

              selfCopy2 = selfCopy;
            }

            v90 = [(_DASLogExtractor *)selfCopy2 didActivityFinish:v148 forBARActivity:v77];
            if (v90 == 2)
            {
              v92 = [(_DASLogExtractor *)selfCopy getMessagesActivityFinish:v148 forActivity:v77 isCompleted:0];
              if (!v92)
              {
                v91 = &stru_2859F0B50;
                goto LABEL_64;
              }

              v93 = @"Canceled at:                                %@\n";
              goto LABEL_62;
            }

            v91 = &stru_2859F0B50;
            if (v90 != 1)
            {
              goto LABEL_65;
            }

            v92 = [(_DASLogExtractor *)selfCopy getMessagesActivityFinish:v148 forActivity:v77 isCompleted:1];
            if (v92)
            {
              v93 = @"Completed at:                               %@\n";
LABEL_62:
              date8 = [v92 date];
              v95 = MEMORY[0x277CCACA8];
              v96 = [v150 stringFromDate:date8];
              v91 = [v95 stringWithFormat:@"%@", v96];

              v97 = [MEMORY[0x277CCACA8] stringWithFormat:v93, v91];
              string = v143;
              [v143 appendString:v97];
            }

LABEL_64:

LABEL_65:
            v98 = [(_DASLogExtractor *)selfCopy summarizeAllDenialsOverMessages:v79 forActivity:v77 detail:detailCopy];
            v99 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n", v98];
            [string appendString:v99];

            self = selfCopy;
          }

          v147 = [v142 countByEnumeratingWithState:&v160 objects:v172 count:16];
        }

        while (v147);
LABEL_67:

        v40 = v137;
        LODWORD(v12) = v138;
        v42 = v136;
        v75 = v128;
LABEL_68:
        v125 += v133;
        v126 += v132;
        v11 = v131 + v123;
        v12 = (v12 + 1);
        v10 = v130 + v124;

        v13 = v122 + 1;
        applicationCopy = v115;
      }

      while (v122 + 1 != v116);
      v116 = [obj countByEnumeratingWithState:&v168 objects:v174 count:16];
      if (!v116)
      {
        v100 = v131 + v123;
        v101 = v125;
        v102 = v126;
        goto LABEL_72;
      }
    }
  }

  v10 = 0;
  v100 = 0;
  v102 = 0;
  v101 = 0;
LABEL_72:

  v103 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n\n######################### Overall Summary #########################\n\n"];
  [string appendString:v103];

  v101 = [MEMORY[0x277CCACA8] stringWithFormat:@"Total Number of bgRefresh tasks submitted:  %lu\n", v101];
  [string appendString:v101];

  v102 = [MEMORY[0x277CCACA8] stringWithFormat:@"Total Number of bgRefresh tasks completed:  %lu\n", v102];
  [string appendString:v102];

  v100 = [MEMORY[0x277CCACA8] stringWithFormat:@"Total Number of pushLaunch tasks submitted: %lu\n", v100];
  [string appendString:v100];

  v107 = [MEMORY[0x277CCACA8] stringWithFormat:@"Total Number of pushLaunch tasks completed: %lu\n", v10];
  [string appendString:v107];

  v108 = 0.0;
  v109 = ((v102 / v101) * 100.0);
  if (!v101)
  {
    v109 = 0.0;
  }

  v110 = [MEMORY[0x277CCACA8] stringWithFormat:@"Success rate of bgRefresh tasks completed: %.1f%%\n", *&v109];
  [string appendString:v110];

  if (v10)
  {
    v108 = ((v10 / v100) * 100.0);
  }

  v111 = [MEMORY[0x277CCACA8] stringWithFormat:@"Success rate of pushLaunch tasks completed: %.1f%%\n", *&v108];
  [string appendString:v111];

  return string;
}

- (int)summarizeActivity:(id)activity startDate:(id)date endDate:(id)endDate detail:(BOOL)detail
{
  v10 = 0;
  v6 = [(_DASLogExtractor *)self copyActivitySummary:activity startDate:date endDate:endDate detail:detail error:&v10];
  v7 = v6;
  v8 = v10;
  if (!v10)
  {
    NSLog(&cfstr_Summary.isa, v6);
  }

  return v8;
}

- (int)summarizeApplication:(id)application startDate:(id)date endDate:(id)endDate detail:(BOOL)detail
{
  v10 = 0;
  v6 = [(_DASLogExtractor *)self copyApplicationSummary:application startDate:date endDate:endDate detail:detail error:&v10];
  v7 = v6;
  v8 = v10;
  if (!v10)
  {
    NSLog(&cfstr_Summary_0.isa, v6);
  }

  return v8;
}

- (id)copyActivitySummary:(id)summary startDate:(id)date endDate:(id)endDate detail:(BOOL)detail error:(int *)error
{
  detailCopy = detail;
  summaryCopy = summary;
  dateCopy = date;
  endDateCopy = endDate;
  if (!dateCopy)
  {
    dateCopy = [MEMORY[0x277CBEAA8] distantPast];
  }

  array = [MEMORY[0x277CBEB18] array];
  v16 = [MEMORY[0x277CCAC30] predicateWithFormat:@"subsystem = %@", self->_subsystem];
  [array addObject:v16];

  summaryCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"eventMessage contains %@", summaryCopy];
  [array addObject:summaryCopy];

  if (endDateCopy)
  {
    endDateCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"date <= %@", endDateCopy];
    [array addObject:endDateCopy];
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  array2 = [MEMORY[0x277CBEB18] array];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __71___DASLogExtractor_copyActivitySummary_startDate_endDate_detail_error___block_invoke;
  v22[3] = &unk_278EE1848;
  v22[4] = &v23;
  v19 = [(_DASLogExtractor *)self handleLogEventsLogEvents:array sinceDate:dateCopy withHandler:v22];
  if (v19)
  {
    v20 = 0;
    if (error)
    {
      *error = v19;
    }
  }

  else
  {
    v20 = [(_DASLogExtractor *)self getSummaryFromLogs:v24[5] forActivity:summaryCopy detail:detailCopy];
  }

  _Block_object_dispose(&v23, 8);

  return v20;
}

- (id)copyApplicationSummary:(id)summary startDate:(id)date endDate:(id)endDate detail:(BOOL)detail error:(int *)error
{
  detailCopy = detail;
  summaryCopy = summary;
  dateCopy = date;
  endDateCopy = endDate;
  if (!dateCopy)
  {
    dateCopy = [MEMORY[0x277CBEAA8] distantPast];
  }

  array = [MEMORY[0x277CBEB18] array];
  summaryCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"eventMessage contains %@", summaryCopy];
  [array addObject:summaryCopy];

  if (endDateCopy)
  {
    endDateCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"date <= %@", endDateCopy];
    [array addObject:endDateCopy];
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  array2 = [MEMORY[0x277CBEB18] array];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __74___DASLogExtractor_copyApplicationSummary_startDate_endDate_detail_error___block_invoke;
  v21[3] = &unk_278EE1848;
  v21[4] = &v22;
  v18 = [(_DASLogExtractor *)self handleLogEventsLogEvents:array sinceDate:dateCopy withHandler:v21];
  if (v18)
  {
    v19 = 0;
    if (error)
    {
      *error = v18;
    }
  }

  else
  {
    v19 = [(_DASLogExtractor *)self getBARSummaryFromLogs:v23[5] forApplication:summaryCopy detail:detailCopy];
  }

  _Block_object_dispose(&v22, 8);

  return v19;
}

- (id)objectForTrigger:(id)trigger fromCondition:(id)condition compactRepresentation:(BOOL)representation
{
  representationCopy = representation;
  triggerCopy = trigger;
  conditionCopy = condition;
  if (![triggerCopy isEqualToString:@"/device/system/thermalpressure"])
  {
    if ([triggerCopy isEqualToString:@"/device/system/isPluggedIn"])
    {
      if (![conditionCopy isEqualToString:@"0"])
      {
        v9 = @"Plugged In";
        goto LABEL_15;
      }

      v10 = @"Unplugged";
      goto LABEL_56;
    }

    if ([triggerCopy isEqualToString:@"/device/system/cpuusage"])
    {
      if ([conditionCopy isEqualToString:@"0"])
      {
        goto LABEL_3;
      }

      v12 = [conditionCopy isEqualToString:@"50"];
      if (representationCopy)
      {
        if (v12)
        {
          goto LABEL_3;
        }

        v10 = @"Under CPU Load";
LABEL_56:
        v14 = [_DASLogCondition withCondition:v10];
        goto LABEL_57;
      }

      if (v12)
      {
        v9 = @"Light";
        goto LABEL_15;
      }

      if ([conditionCopy isEqualToString:@"75"])
      {
        v10 = @"Moderate";
        goto LABEL_56;
      }

      if ([conditionCopy isEqualToString:@"90"])
      {
        v10 = @"Somewhat Heavy";
        goto LABEL_56;
      }

      if ([conditionCopy isEqualToString:@"95"])
      {
        v10 = @"Really Heavy";
        goto LABEL_56;
      }
    }

    else
    {
      if (([triggerCopy isEqualToString:@"/device/system/wifi/status"] & 1) == 0 && (objc_msgSend(triggerCopy, "isEqualToString:", @"/device/system/cell/status") & 1) == 0 && !objc_msgSend(triggerCopy, "isEqualToString:", @"/device/system/wired/status"))
      {
        v11 = 0;
        if ([triggerCopy isEqualToString:@"/device/system/batteryPercentage"] && representationCopy)
        {
          intValue = [conditionCopy intValue];
          if (intValue <= 10)
          {
            v11 = [MEMORY[0x277CCABB0] numberWithInt:intValue];
            v15 = v11;
            goto LABEL_28;
          }

          v19 = [MEMORY[0x277CCABB0] numberWithInt:10 * (intValue / 0xA)];
          v14 = [_DASLogCondition withCondition:v19];

          if (intValue < 0x15)
          {
            goto LABEL_57;
          }

LABEL_60:
          v13 = v14;
          goto LABEL_16;
        }

LABEL_59:
        v14 = [_DASLogCondition withCondition:conditionCopy];

        goto LABEL_60;
      }

      if ([conditionCopy isEqualToString:@"0"])
      {
        v10 = @"None";
        goto LABEL_56;
      }

      if ([conditionCopy isEqualToString:@"20"])
      {
        v10 = @"Minimally Viable";
        goto LABEL_56;
      }

      if ([conditionCopy isEqualToString:@"50"])
      {
        v10 = @"Fair";
        goto LABEL_56;
      }

      if ([conditionCopy isEqualToString:@"100"])
      {
        v14 = [_DASLogCondition withCondition:@"Best"];
        if ([triggerCopy containsString:@"cell"])
        {
          goto LABEL_57;
        }

        goto LABEL_60;
      }
    }

    v11 = 0;
    goto LABEL_59;
  }

  if (![conditionCopy isEqualToString:@"0"])
  {
    if (representationCopy)
    {
      v11 = [_DASLogCondition withCondition:@"Under Thermal Pressure"];
    }

    else
    {
      v11 = 0;
    }

    if ([conditionCopy isEqualToString:@"10"])
    {
      v15 = @"Light";
LABEL_28:
      v14 = [_DASLogCondition withCondition:v15];

      goto LABEL_57;
    }

    if (([conditionCopy isEqualToString:@"1"] & 1) != 0 || objc_msgSend(conditionCopy, "isEqualToString:", @"20"))
    {
      v15 = @"Moderate";
      goto LABEL_28;
    }

    if (([conditionCopy isEqualToString:@"2"] & 1) != 0 || objc_msgSend(conditionCopy, "isEqualToString:", @"30"))
    {
      v15 = @"Heavy";
      goto LABEL_28;
    }

    if (([conditionCopy isEqualToString:@"3"] & 1) != 0 || objc_msgSend(conditionCopy, "isEqualToString:", @"40") || (objc_msgSend(conditionCopy, "isEqualToString:", @"4") & 1) != 0 || objc_msgSend(conditionCopy, "isEqualToString:", @"50"))
    {
      v15 = @"Trapping";
      goto LABEL_28;
    }

    goto LABEL_59;
  }

LABEL_3:
  v9 = @"Nominal";
LABEL_15:
  v13 = [_DASLogCondition withCondition:v9];
  v14 = v13;
LABEL_16:
  [v13 setIsIdeal:1];
LABEL_57:
  v17 = v14;

  return v14;
}

- (void)addConditionToHistory:(id)history fromMessage:(id)message atTimestamp:(id)timestamp compactRepresentation:(BOOL)representation
{
  representationCopy = representation;
  v39 = *MEMORY[0x277D85DE8];
  historyCopy = history;
  messageCopy = message;
  timestampCopy = timestamp;
  if ([messageCopy containsString:@"\n"])
  {
    v13 = getSubstring(messageCopy, @"[", @"]", 1);
    if ([v13 containsString:@"quality"])
    {
      [v13 componentsSeparatedByString:@"\n"];
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v14 = v37 = 0u;
      v15 = [v14 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v15)
      {
        v16 = v15;
        selfCopy = self;
        v33 = representationCopy;
        v17 = *v35;
        while (2)
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v35 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v34 + 1) + 8 * i);
            if ([v19 containsString:{@"quality", selfCopy}])
            {
              v21 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@" "];;
              v22 = [v19 componentsSeparatedByCharactersInSet:v21];
              v23 = [v22 mutableCopy];

              v24 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_656];
              [v23 filterUsingPredicate:v24];

              lastObject = [v23 lastObject];

              goto LABEL_15;
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v34 objects:v38 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }

        lastObject = 0;
LABEL_15:
        representationCopy = v33;
        self = selfCopy;
      }

      else
      {
        lastObject = 0;
      }
    }

    else
    {
      lastObject = [v13 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];
    }
  }

  else
  {
    lastObject = 0;
  }

  v25 = [messageCopy componentsSeparatedByString:@" "];
  v26 = [v25 objectAtIndexedSubscript:1];
  if (!lastObject)
  {
    lastObject2 = [v25 lastObject];
    lastObject3 = [v25 lastObject];
    lastObject = [lastObject2 substringWithRange:{1, objc_msgSend(lastObject3, "length") - 2}];
  }

  v29 = [(_DASLogExtractor *)self objectForTrigger:v26 fromCondition:lastObject compactRepresentation:representationCopy];
  v30 = [historyCopy objectForKeyedSubscript:v26];
  if (v30)
  {
    v31 = v30;
    [v30 addCondition:v29 atDate:timestampCopy];
  }

  else
  {
    v31 = [_DASLogConditionHistory condition:v29 fromDate:timestampCopy];
  }

  [historyCopy setObject:v31 forKeyedSubscript:v26];
}

- (int)sysConditionsLog:(BOOL)log startDate:(id)date endDate:(id)endDate
{
  v82 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  array = [MEMORY[0x277CBEB18] array];
  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"subsystem = %@", self->_subsystem];
  [array addObject:v12];

  v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"eventMessage contains Trigger:"];
  [array addObject:v13];

  if (endDateCopy)
  {
    endDateCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"date <= %@", endDateCopy];
    [array addObject:endDateCopy];
  }

  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = __55___DASLogExtractor_sysConditionsLog_startDate_endDate___block_invoke;
  v78[3] = &unk_278EE1890;
  v78[4] = self;
  v15 = dictionary;
  v79 = v15;
  logCopy = log;
  v16 = [(_DASLogExtractor *)self handleLogEventsLogEvents:array sinceDate:dateCopy withHandler:v78];
  if (!v16)
  {
    v62 = dateCopy;
    array2 = [MEMORY[0x277CBEB18] array];
    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3221225472;
    v76[2] = __55___DASLogExtractor_sysConditionsLog_startDate_endDate___block_invoke_2;
    v76[3] = &unk_278EE18B8;
    v18 = array2;
    v77 = v18;
    [v15 enumerateKeysAndObjectsUsingBlock:v76];
    v65 = array;
    v66 = endDateCopy;
    v63 = v18;
    v64 = v15;
    if ([v18 count] >= 2)
    {
      do
      {
        v19 = [v18 objectAtIndexedSubscript:0];
        v20 = [v18 objectAtIndexedSubscript:1];
        v21 = v19;
        v22 = v20;
        if ([v21 count] && objc_msgSend(v22, "count"))
        {
          array3 = [MEMORY[0x277CBEB18] array];
          if ([v21 count])
          {
            v23 = 0;
            v24 = 0;
            v25 = 0;
            do
            {
              if ([v22 count] <= v24)
              {
                break;
              }

              v26 = [v21 objectAtIndexedSubscript:v23];
              v27 = [v22 objectAtIndexedSubscript:v24];
              v28 = [v26 intersectionWithDateInterval:v27];

              if (v28)
              {
                [array3 addObject:v28];
              }

              v29 = [v21 objectAtIndexedSubscript:v23];
              endDate = [v29 endDate];
              v31 = [v22 objectAtIndexedSubscript:v24];
              endDate2 = [v31 endDate];
              v33 = [endDate compare:endDate2];

              if (v33 == 1)
              {
                v23 = v25;
              }

              else
              {
                v23 = v25 + 1;
              }

              if (v33 == 1)
              {
                ++v24;
              }

              v25 = v23;
            }

            while ([v21 count] > v23);
          }

          v34 = [array3 copy];

          array = v65;
          endDateCopy = v66;
          v18 = v63;
          v15 = v64;
        }

        else
        {
          v34 = MEMORY[0x277CBEBF8];
        }

        [v18 addObject:v34];
        [v18 removeObjectAtIndex:0];
        [v18 removeObjectAtIndex:0];
      }

      while ([v18 count] > 1);
    }

    v35 = fwrite("Ideal Conditions:-----------\n", 0x1DuLL, 1uLL, *MEMORY[0x277D85E08]);
    v36 = defaultFormatter(v35);
    if (timeOnlyFormatter_onceToken != -1)
    {
      [_DASLogExtractor sysConditionsLog:startDate:endDate:];
    }

    v69 = timeOnlyFormatter_timeOnlyFormatter;
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    firstObject = [v18 firstObject];
    v71 = [firstObject countByEnumeratingWithState:&v72 objects:v81 count:16];
    if (v71)
    {
      obj = firstObject;
      v68 = *v73;
      v39 = 0.0;
      do
      {
        for (i = 0; i != v71; ++i)
        {
          if (*v73 != v68)
          {
            objc_enumerationMutation(obj);
          }

          v41 = *(*(&v72 + 1) + 8 * i);
          startDate = [v41 startDate];
          v43 = [currentCalendar components:24 fromDate:startDate];
          endDate3 = [v41 endDate];
          v45 = [currentCalendar components:24 fromDate:endDate3];
          v46 = [v43 isEqual:v45];

          v47 = *MEMORY[0x277D85E08];
          startDate2 = [v41 startDate];
          v49 = [v36 stringFromDate:startDate2];
          uTF8String = [v49 UTF8String];
          endDate4 = [v41 endDate];
          if (v46)
          {
            v52 = v69;
          }

          else
          {
            v52 = v36;
          }

          v53 = [v52 stringFromDate:endDate4];
          fprintf(v47, "  %s - %s\n", uTF8String, [v53 UTF8String]);

          endDate5 = [v41 endDate];
          distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
          v56 = [endDate5 isEqual:distantFuture];

          if ((v56 & 1) == 0)
          {
            [v41 duration];
            v39 = v39 + v57;
          }
        }

        v71 = [obj countByEnumeratingWithState:&v72 objects:v81 count:16];
      }

      while (v71);

      v58 = *MEMORY[0x277D85E08];
      if (v39 >= 3600.0)
      {
        v59 = "hours";
        v60 = v39 / 3600.0;
        array = v65;
        endDateCopy = v66;
        v18 = v63;
        v15 = v64;
        goto LABEL_40;
      }

      array = v65;
      endDateCopy = v66;
      v18 = v63;
      v15 = v64;
    }

    else
    {

      v58 = *MEMORY[0x277D85E08];
      v39 = 0.0;
    }

    v59 = "minutes";
    v60 = v39 / 60.0;
LABEL_40:
    fprintf(v58, "Over the course of the log, there was %5.2f %s of ideal conditions.\n", v60, v59);

    v16 = 0;
    dateCopy = v62;
  }

  return v16;
}

@end